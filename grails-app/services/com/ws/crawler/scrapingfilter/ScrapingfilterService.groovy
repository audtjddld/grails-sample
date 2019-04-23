package com.ws.crawler.scrapingfilter

import grails.gorm.transactions.Transactional


@Transactional
class ScrapingfilterService {

    def get(id) {
        Scrapingfilter.get(id)
    }

    def list() {
        Scrapingfilter.list()
    }

    def save(Scrapingfilter scrapfilter) {
        println "service " + scrapfilter
        scrapfilter.save(flush: true, failOnError: true)
    }

    def delete(id) {
        Scrapingfilter.get(id).delete()
    }

    def serviceMethod() {

    }
}
