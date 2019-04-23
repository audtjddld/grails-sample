package com.ws.crawler.scrapingfilter

class Scrapingfilter {

    String titleSelector

    String imageSelector

    String stockSelector

    String priceSelector

    Integer solutionId

    static mapping = {
        table name: "scraping_filter"
        titleSelector column: "title_selector"
        imageSelector column: "image_selector"
        stockSelector column: "stock_selector"
        priceSelector column: "price_selector"
        solutionId column: "solution_id"
    }

    static constraints = {
        titleSelector(blank: true, nullable: true)
        imageSelector(blank: true, nullable: true)
        stockSelector(blank: true, nullable: true)
        priceSelector(blank: true, nullable: true)
        solutionId(blank: false, nullable: false)
    }

    @Override
    public String toString() {
        return "Scrapingfilter{" +
                "id=" + id +
                ", version=" + version +
                ", titleSelector='" + titleSelector + '\'' +
                ", imageSelector='" + imageSelector + '\'' +
                ", stockSelector='" + stockSelector + '\'' +
                ", priceSelector='" + priceSelector + '\'' +
                ", solutionId=" + solutionId +
                '}';
    }
}
