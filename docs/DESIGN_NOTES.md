# Design Notes

## Purpose

This database models the core data requirements of a cruise-planning and review platform. The original project was based on Cruise Critic-style functionality: cruise searching, filtering, comparison, pricing, bonus offers, ship information, itinerary details, and user reviews.

## Normalization Strategy

The schema separates major business concepts into independent tables:

- Ships are stored separately from cruises.
- Departure dates are separated from cruises through `CRUISE_DATE`.
- Bonus offers are separated from cruises through `CRUISE_OFFER`.
- Deals are separated from price tiers through `DEAL_TIER`.
- Itineraries are separated from ports through `ITINERARY_PORT`.
- Reviews are separated from rating categories through `RATING`.

This reduces repeated data and allows the same entity, such as a port, bonus offer, or price tier, to be reused across multiple cruises.

## Important Relationships

| Relationship | Implementation |
|---|---|
| One ship can support many cruises | `CRUISE.SHIP_ID` foreign key |
| One cruise can have many departure dates | `CRUISE_DATE` junction table |
| One cruise can have many bonus offers | `CRUISE_OFFER` junction table |
| One cruise can have many deals | `DEAL.CRUISE_ID` foreign key |
| Deals can have price tiers | `DEAL_TIER` junction table |
| One cruise can have many reviews | `REVIEW.CRUISE_ID` foreign key |
| Reviews can have category scores | `RATING` junction table |
| One itinerary can include many ports | `ITINERARY_PORT` junction table |

## Data Integrity

The schema uses:

- Primary keys for entity identity
- Foreign keys for referential integrity
- Junction tables for many-to-many relationships
- `CHECK` constraints for valid numeric values
- A unique constraint on customer email

## Query Design

The analytical queries demonstrate practical reporting patterns:

- Average rating by cruise
- Departure-port filtering
- Bonus-offer counts
- Ship capacity and departure-date filtering
- Price-range reporting
- Rating summaries by cruise line
- Itinerary stop counts
