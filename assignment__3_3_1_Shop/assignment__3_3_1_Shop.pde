int currentGold = 100; 
int healthPotionPrice = 50;
int manaPotionPrice = 50;
boolean shopIsClosed = true;
boolean shopHasManaPotions = true;
boolean shopHasHealthPotions = true;

boolean iShouldReallyVisitThePotionShopToday = !shopIsClosed && ((shopHasHealthPotions && healthPotionPrice <= currentGold) || (shopHasManaPotions && manaPotionPrice <= currentGold));
