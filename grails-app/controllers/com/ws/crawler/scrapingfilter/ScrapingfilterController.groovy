package com.ws.crawler.scrapingfilter

import org.springframework.validation.BindingResult

class ScrapingfilterController {

    def scrapingfilterService

    def index() {
        respond scrapingfilterService.list()
    }

    def show(Integer id) {
        respond scrapingfilterService.get(id)
    }

    def update(Scrapingfilter scrapfilter) {

        def prevScrapingfilter = scrapingfilterService.get(scrapfilter.id)

        prevScrapingfilter.properties = params as BindingResult

        println prevScrapingfilter.save(flush: true, failOnError: true)

        redirect(action: "show", id: prevScrapingfilter.id)

    }

    def create() {
        respond new Scrapingfilter(params)
    }

    def save(Scrapingfilter scrapfilter) {
        scrapingfilterService.save(scrapfilter)
        redirect action: "index", method: "GET"
    }

    def delete(Integer id) {
        scrapingfilterService.delete(id)
        redirect action: "index", method: "GET"
    }
}
