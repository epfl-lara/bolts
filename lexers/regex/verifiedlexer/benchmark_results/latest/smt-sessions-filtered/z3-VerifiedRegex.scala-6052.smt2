; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295856 () Bool)

(assert start!295856)

(declare-fun res!1282361 () Bool)

(declare-fun e!1958047 () Bool)

(assert (=> start!295856 (=> (not res!1282361) (not e!1958047))))

(declare-datatypes ((C!19496 0))(
  ( (C!19497 (val!11784 Int)) )
))
(declare-datatypes ((Regex!9655 0))(
  ( (ElementMatch!9655 (c!527503 C!19496)) (Concat!14976 (regOne!19822 Regex!9655) (regTwo!19822 Regex!9655)) (EmptyExpr!9655) (Star!9655 (reg!9984 Regex!9655)) (EmptyLang!9655) (Union!9655 (regOne!19823 Regex!9655) (regTwo!19823 Regex!9655)) )
))
(declare-fun r!17345 () Regex!9655)

(declare-fun validRegex!4388 (Regex!9655) Bool)

(assert (=> start!295856 (= res!1282361 (validRegex!4388 r!17345))))

(assert (=> start!295856 e!1958047))

(declare-fun e!1958046 () Bool)

(assert (=> start!295856 e!1958046))

(declare-fun b!3138538 () Bool)

(declare-fun res!1282362 () Bool)

(assert (=> b!3138538 (=> (not res!1282362) (not e!1958047))))

(get-info :version)

(assert (=> b!3138538 (= res!1282362 (and (not ((_ is EmptyLang!9655) r!17345)) (not ((_ is ElementMatch!9655) r!17345)) (not ((_ is EmptyExpr!9655) r!17345)) (not ((_ is Star!9655) r!17345)) (not ((_ is Union!9655) r!17345))))))

(declare-fun b!3138539 () Bool)

(declare-fun tp!982495 () Bool)

(declare-fun tp!982492 () Bool)

(assert (=> b!3138539 (= e!1958046 (and tp!982495 tp!982492))))

(declare-fun b!3138540 () Bool)

(declare-fun tp_is_empty!16873 () Bool)

(assert (=> b!3138540 (= e!1958046 tp_is_empty!16873)))

(declare-fun b!3138541 () Bool)

(declare-fun tp!982491 () Bool)

(assert (=> b!3138541 (= e!1958046 tp!982491)))

(declare-fun b!3138542 () Bool)

(declare-fun tp!982494 () Bool)

(declare-fun tp!982493 () Bool)

(assert (=> b!3138542 (= e!1958046 (and tp!982494 tp!982493))))

(declare-fun b!3138543 () Bool)

(assert (=> b!3138543 (= e!1958047 (not (validRegex!4388 (regTwo!19822 r!17345))))))

(declare-fun lt!1061052 () Regex!9655)

(declare-fun simplify!604 (Regex!9655) Regex!9655)

(assert (=> b!3138543 (= lt!1061052 (simplify!604 (regOne!19822 r!17345)))))

(assert (= (and start!295856 res!1282361) b!3138538))

(assert (= (and b!3138538 res!1282362) b!3138543))

(assert (= (and start!295856 ((_ is ElementMatch!9655) r!17345)) b!3138540))

(assert (= (and start!295856 ((_ is Concat!14976) r!17345)) b!3138539))

(assert (= (and start!295856 ((_ is Star!9655) r!17345)) b!3138541))

(assert (= (and start!295856 ((_ is Union!9655) r!17345)) b!3138542))

(declare-fun m!3417407 () Bool)

(assert (=> start!295856 m!3417407))

(declare-fun m!3417409 () Bool)

(assert (=> b!3138543 m!3417409))

(declare-fun m!3417411 () Bool)

(assert (=> b!3138543 m!3417411))

(check-sat (not b!3138539) tp_is_empty!16873 (not start!295856) (not b!3138541) (not b!3138542) (not b!3138543))
(check-sat)
(get-model)

(declare-fun b!3138598 () Bool)

(declare-fun e!1958094 () Bool)

(declare-fun e!1958092 () Bool)

(assert (=> b!3138598 (= e!1958094 e!1958092)))

(declare-fun res!1282396 () Bool)

(declare-fun nullable!3288 (Regex!9655) Bool)

(assert (=> b!3138598 (= res!1282396 (not (nullable!3288 (reg!9984 (regTwo!19822 r!17345)))))))

(assert (=> b!3138598 (=> (not res!1282396) (not e!1958092))))

(declare-fun bm!225176 () Bool)

(declare-fun call!225181 () Bool)

(declare-fun call!225183 () Bool)

(assert (=> bm!225176 (= call!225181 call!225183)))

(declare-fun b!3138599 () Bool)

(declare-fun res!1282395 () Bool)

(declare-fun e!1958090 () Bool)

(assert (=> b!3138599 (=> (not res!1282395) (not e!1958090))))

(assert (=> b!3138599 (= res!1282395 call!225181)))

(declare-fun e!1958091 () Bool)

(assert (=> b!3138599 (= e!1958091 e!1958090)))

(declare-fun c!527517 () Bool)

(declare-fun c!527516 () Bool)

(declare-fun bm!225177 () Bool)

(assert (=> bm!225177 (= call!225183 (validRegex!4388 (ite c!527516 (reg!9984 (regTwo!19822 r!17345)) (ite c!527517 (regOne!19823 (regTwo!19822 r!17345)) (regTwo!19822 (regTwo!19822 r!17345))))))))

(declare-fun b!3138601 () Bool)

(declare-fun call!225182 () Bool)

(assert (=> b!3138601 (= e!1958090 call!225182)))

(declare-fun bm!225178 () Bool)

(assert (=> bm!225178 (= call!225182 (validRegex!4388 (ite c!527517 (regTwo!19823 (regTwo!19822 r!17345)) (regOne!19822 (regTwo!19822 r!17345)))))))

(declare-fun b!3138602 () Bool)

(assert (=> b!3138602 (= e!1958094 e!1958091)))

(assert (=> b!3138602 (= c!527517 ((_ is Union!9655) (regTwo!19822 r!17345)))))

(declare-fun b!3138603 () Bool)

(declare-fun res!1282393 () Bool)

(declare-fun e!1958096 () Bool)

(assert (=> b!3138603 (=> res!1282393 e!1958096)))

(assert (=> b!3138603 (= res!1282393 (not ((_ is Concat!14976) (regTwo!19822 r!17345))))))

(assert (=> b!3138603 (= e!1958091 e!1958096)))

(declare-fun b!3138604 () Bool)

(declare-fun e!1958095 () Bool)

(assert (=> b!3138604 (= e!1958095 e!1958094)))

(assert (=> b!3138604 (= c!527516 ((_ is Star!9655) (regTwo!19822 r!17345)))))

(declare-fun b!3138605 () Bool)

(declare-fun e!1958093 () Bool)

(assert (=> b!3138605 (= e!1958096 e!1958093)))

(declare-fun res!1282394 () Bool)

(assert (=> b!3138605 (=> (not res!1282394) (not e!1958093))))

(assert (=> b!3138605 (= res!1282394 call!225182)))

(declare-fun b!3138606 () Bool)

(assert (=> b!3138606 (= e!1958092 call!225183)))

(declare-fun d!865549 () Bool)

(declare-fun res!1282397 () Bool)

(assert (=> d!865549 (=> res!1282397 e!1958095)))

(assert (=> d!865549 (= res!1282397 ((_ is ElementMatch!9655) (regTwo!19822 r!17345)))))

(assert (=> d!865549 (= (validRegex!4388 (regTwo!19822 r!17345)) e!1958095)))

(declare-fun b!3138600 () Bool)

(assert (=> b!3138600 (= e!1958093 call!225181)))

(assert (= (and d!865549 (not res!1282397)) b!3138604))

(assert (= (and b!3138604 c!527516) b!3138598))

(assert (= (and b!3138604 (not c!527516)) b!3138602))

(assert (= (and b!3138598 res!1282396) b!3138606))

(assert (= (and b!3138602 c!527517) b!3138599))

(assert (= (and b!3138602 (not c!527517)) b!3138603))

(assert (= (and b!3138599 res!1282395) b!3138601))

(assert (= (and b!3138603 (not res!1282393)) b!3138605))

(assert (= (and b!3138605 res!1282394) b!3138600))

(assert (= (or b!3138601 b!3138605) bm!225178))

(assert (= (or b!3138599 b!3138600) bm!225176))

(assert (= (or b!3138606 bm!225176) bm!225177))

(declare-fun m!3417425 () Bool)

(assert (=> b!3138598 m!3417425))

(declare-fun m!3417427 () Bool)

(assert (=> bm!225177 m!3417427))

(declare-fun m!3417429 () Bool)

(assert (=> bm!225178 m!3417429))

(assert (=> b!3138543 d!865549))

(declare-fun b!3138732 () Bool)

(declare-fun e!1958175 () Regex!9655)

(declare-fun e!1958173 () Regex!9655)

(assert (=> b!3138732 (= e!1958175 e!1958173)))

(declare-fun c!527580 () Bool)

(assert (=> b!3138732 (= c!527580 ((_ is ElementMatch!9655) (regOne!19822 r!17345)))))

(declare-fun b!3138733 () Bool)

(declare-fun e!1958168 () Regex!9655)

(declare-fun e!1958176 () Regex!9655)

(assert (=> b!3138733 (= e!1958168 e!1958176)))

(declare-fun lt!1061087 () Regex!9655)

(declare-fun call!225220 () Regex!9655)

(assert (=> b!3138733 (= lt!1061087 call!225220)))

(declare-fun lt!1061084 () Regex!9655)

(declare-fun call!225223 () Regex!9655)

(assert (=> b!3138733 (= lt!1061084 call!225223)))

(declare-fun res!1282414 () Bool)

(declare-fun call!225219 () Bool)

(assert (=> b!3138733 (= res!1282414 call!225219)))

(declare-fun e!1958177 () Bool)

(assert (=> b!3138733 (=> res!1282414 e!1958177)))

(declare-fun c!527575 () Bool)

(assert (=> b!3138733 (= c!527575 e!1958177)))

(declare-fun b!3138734 () Bool)

(assert (=> b!3138734 (= e!1958175 EmptyLang!9655)))

(declare-fun bm!225214 () Bool)

(declare-fun call!225221 () Regex!9655)

(assert (=> bm!225214 (= call!225220 call!225221)))

(declare-fun b!3138735 () Bool)

(declare-fun c!527578 () Bool)

(declare-fun e!1958179 () Bool)

(assert (=> b!3138735 (= c!527578 e!1958179)))

(declare-fun res!1282415 () Bool)

(assert (=> b!3138735 (=> res!1282415 e!1958179)))

(declare-fun call!225224 () Bool)

(assert (=> b!3138735 (= res!1282415 call!225224)))

(declare-fun lt!1061083 () Regex!9655)

(assert (=> b!3138735 (= lt!1061083 call!225221)))

(declare-fun e!1958167 () Regex!9655)

(declare-fun e!1958172 () Regex!9655)

(assert (=> b!3138735 (= e!1958167 e!1958172)))

(declare-fun b!3138736 () Bool)

(declare-fun e!1958169 () Regex!9655)

(declare-fun lt!1061088 () Regex!9655)

(assert (=> b!3138736 (= e!1958169 lt!1061088)))

(declare-fun b!3138737 () Bool)

(declare-fun e!1958180 () Regex!9655)

(assert (=> b!3138737 (= e!1958180 (Concat!14976 lt!1061087 lt!1061084))))

(declare-fun b!3138738 () Bool)

(declare-fun c!527577 () Bool)

(assert (=> b!3138738 (= c!527577 ((_ is EmptyExpr!9655) (regOne!19822 r!17345)))))

(declare-fun e!1958170 () Regex!9655)

(assert (=> b!3138738 (= e!1958173 e!1958170)))

(declare-fun d!865555 () Bool)

(declare-fun e!1958178 () Bool)

(assert (=> d!865555 e!1958178))

(declare-fun res!1282413 () Bool)

(assert (=> d!865555 (=> (not res!1282413) (not e!1958178))))

(declare-fun lt!1061086 () Regex!9655)

(assert (=> d!865555 (= res!1282413 (validRegex!4388 lt!1061086))))

(assert (=> d!865555 (= lt!1061086 e!1958175)))

(declare-fun c!527583 () Bool)

(assert (=> d!865555 (= c!527583 ((_ is EmptyLang!9655) (regOne!19822 r!17345)))))

(assert (=> d!865555 (validRegex!4388 (regOne!19822 r!17345))))

(assert (=> d!865555 (= (simplify!604 (regOne!19822 r!17345)) lt!1061086)))

(declare-fun bm!225215 () Bool)

(assert (=> bm!225215 (= call!225219 call!225224)))

(declare-fun b!3138739 () Bool)

(assert (=> b!3138739 (= e!1958176 EmptyLang!9655)))

(declare-fun bm!225216 () Bool)

(declare-fun c!527576 () Bool)

(assert (=> bm!225216 (= call!225223 (simplify!604 (ite c!527576 (regTwo!19823 (regOne!19822 r!17345)) (regTwo!19822 (regOne!19822 r!17345)))))))

(declare-fun b!3138740 () Bool)

(assert (=> b!3138740 (= e!1958180 lt!1061087)))

(declare-fun c!527574 () Bool)

(declare-fun bm!225217 () Bool)

(assert (=> bm!225217 (= call!225221 (simplify!604 (ite c!527574 (reg!9984 (regOne!19822 r!17345)) (ite c!527576 (regOne!19823 (regOne!19822 r!17345)) (regOne!19822 (regOne!19822 r!17345))))))))

(declare-fun b!3138741 () Bool)

(declare-fun lt!1061085 () Regex!9655)

(assert (=> b!3138741 (= e!1958169 (Union!9655 lt!1061088 lt!1061085))))

(declare-fun b!3138742 () Bool)

(declare-fun c!527579 () Bool)

(declare-fun call!225222 () Bool)

(assert (=> b!3138742 (= c!527579 call!225222)))

(declare-fun e!1958174 () Regex!9655)

(assert (=> b!3138742 (= e!1958176 e!1958174)))

(declare-fun b!3138743 () Bool)

(declare-fun e!1958171 () Regex!9655)

(assert (=> b!3138743 (= e!1958171 lt!1061085)))

(declare-fun bm!225218 () Bool)

(declare-fun isEmptyExpr!693 (Regex!9655) Bool)

(assert (=> bm!225218 (= call!225222 (isEmptyExpr!693 (ite c!527574 lt!1061083 lt!1061087)))))

(declare-fun b!3138744 () Bool)

(assert (=> b!3138744 (= e!1958173 (regOne!19822 r!17345))))

(declare-fun b!3138745 () Bool)

(assert (=> b!3138745 (= e!1958170 EmptyExpr!9655)))

(declare-fun b!3138746 () Bool)

(declare-fun c!527582 () Bool)

(declare-fun call!225225 () Bool)

(assert (=> b!3138746 (= c!527582 call!225225)))

(assert (=> b!3138746 (= e!1958171 e!1958169)))

(declare-fun b!3138747 () Bool)

(assert (=> b!3138747 (= e!1958168 e!1958171)))

(assert (=> b!3138747 (= lt!1061088 call!225220)))

(assert (=> b!3138747 (= lt!1061085 call!225223)))

(declare-fun c!527581 () Bool)

(assert (=> b!3138747 (= c!527581 call!225219)))

(declare-fun b!3138748 () Bool)

(assert (=> b!3138748 (= e!1958170 e!1958167)))

(assert (=> b!3138748 (= c!527574 ((_ is Star!9655) (regOne!19822 r!17345)))))

(declare-fun b!3138749 () Bool)

(assert (=> b!3138749 (= e!1958174 e!1958180)))

(declare-fun c!527573 () Bool)

(assert (=> b!3138749 (= c!527573 (isEmptyExpr!693 lt!1061084))))

(declare-fun b!3138750 () Bool)

(assert (=> b!3138750 (= c!527576 ((_ is Union!9655) (regOne!19822 r!17345)))))

(assert (=> b!3138750 (= e!1958167 e!1958168)))

(declare-fun b!3138751 () Bool)

(assert (=> b!3138751 (= e!1958174 lt!1061084)))

(declare-fun b!3138752 () Bool)

(assert (=> b!3138752 (= e!1958172 (Star!9655 lt!1061083))))

(declare-fun b!3138753 () Bool)

(assert (=> b!3138753 (= e!1958178 (= (nullable!3288 lt!1061086) (nullable!3288 (regOne!19822 r!17345))))))

(declare-fun bm!225219 () Bool)

(declare-fun isEmptyLang!699 (Regex!9655) Bool)

(assert (=> bm!225219 (= call!225225 (isEmptyLang!699 (ite c!527576 lt!1061085 lt!1061084)))))

(declare-fun b!3138754 () Bool)

(assert (=> b!3138754 (= e!1958177 call!225225)))

(declare-fun bm!225220 () Bool)

(assert (=> bm!225220 (= call!225224 (isEmptyLang!699 (ite c!527574 lt!1061083 (ite c!527576 lt!1061088 lt!1061087))))))

(declare-fun b!3138755 () Bool)

(assert (=> b!3138755 (= e!1958172 EmptyExpr!9655)))

(declare-fun b!3138756 () Bool)

(assert (=> b!3138756 (= e!1958179 call!225222)))

(assert (= (and d!865555 c!527583) b!3138734))

(assert (= (and d!865555 (not c!527583)) b!3138732))

(assert (= (and b!3138732 c!527580) b!3138744))

(assert (= (and b!3138732 (not c!527580)) b!3138738))

(assert (= (and b!3138738 c!527577) b!3138745))

(assert (= (and b!3138738 (not c!527577)) b!3138748))

(assert (= (and b!3138748 c!527574) b!3138735))

(assert (= (and b!3138748 (not c!527574)) b!3138750))

(assert (= (and b!3138735 (not res!1282415)) b!3138756))

(assert (= (and b!3138735 c!527578) b!3138755))

(assert (= (and b!3138735 (not c!527578)) b!3138752))

(assert (= (and b!3138750 c!527576) b!3138747))

(assert (= (and b!3138750 (not c!527576)) b!3138733))

(assert (= (and b!3138747 c!527581) b!3138743))

(assert (= (and b!3138747 (not c!527581)) b!3138746))

(assert (= (and b!3138746 c!527582) b!3138736))

(assert (= (and b!3138746 (not c!527582)) b!3138741))

(assert (= (and b!3138733 (not res!1282414)) b!3138754))

(assert (= (and b!3138733 c!527575) b!3138739))

(assert (= (and b!3138733 (not c!527575)) b!3138742))

(assert (= (and b!3138742 c!527579) b!3138751))

(assert (= (and b!3138742 (not c!527579)) b!3138749))

(assert (= (and b!3138749 c!527573) b!3138740))

(assert (= (and b!3138749 (not c!527573)) b!3138737))

(assert (= (or b!3138746 b!3138754) bm!225219))

(assert (= (or b!3138747 b!3138733) bm!225215))

(assert (= (or b!3138747 b!3138733) bm!225214))

(assert (= (or b!3138747 b!3138733) bm!225216))

(assert (= (or b!3138756 b!3138742) bm!225218))

(assert (= (or b!3138735 bm!225215) bm!225220))

(assert (= (or b!3138735 bm!225214) bm!225217))

(assert (= (and d!865555 res!1282413) b!3138753))

(declare-fun m!3417451 () Bool)

(assert (=> bm!225218 m!3417451))

(declare-fun m!3417453 () Bool)

(assert (=> b!3138753 m!3417453))

(declare-fun m!3417455 () Bool)

(assert (=> b!3138753 m!3417455))

(declare-fun m!3417457 () Bool)

(assert (=> b!3138749 m!3417457))

(declare-fun m!3417459 () Bool)

(assert (=> bm!225216 m!3417459))

(declare-fun m!3417461 () Bool)

(assert (=> bm!225219 m!3417461))

(declare-fun m!3417463 () Bool)

(assert (=> bm!225217 m!3417463))

(declare-fun m!3417465 () Bool)

(assert (=> d!865555 m!3417465))

(declare-fun m!3417467 () Bool)

(assert (=> d!865555 m!3417467))

(declare-fun m!3417469 () Bool)

(assert (=> bm!225220 m!3417469))

(assert (=> b!3138543 d!865555))

(declare-fun b!3138767 () Bool)

(declare-fun e!1958187 () Bool)

(declare-fun e!1958185 () Bool)

(assert (=> b!3138767 (= e!1958187 e!1958185)))

(declare-fun res!1282419 () Bool)

(assert (=> b!3138767 (= res!1282419 (not (nullable!3288 (reg!9984 r!17345))))))

(assert (=> b!3138767 (=> (not res!1282419) (not e!1958185))))

(declare-fun bm!225221 () Bool)

(declare-fun call!225226 () Bool)

(declare-fun call!225228 () Bool)

(assert (=> bm!225221 (= call!225226 call!225228)))

(declare-fun b!3138768 () Bool)

(declare-fun res!1282418 () Bool)

(declare-fun e!1958183 () Bool)

(assert (=> b!3138768 (=> (not res!1282418) (not e!1958183))))

(assert (=> b!3138768 (= res!1282418 call!225226)))

(declare-fun e!1958184 () Bool)

(assert (=> b!3138768 (= e!1958184 e!1958183)))

(declare-fun bm!225222 () Bool)

(declare-fun c!527585 () Bool)

(declare-fun c!527584 () Bool)

(assert (=> bm!225222 (= call!225228 (validRegex!4388 (ite c!527584 (reg!9984 r!17345) (ite c!527585 (regOne!19823 r!17345) (regTwo!19822 r!17345)))))))

(declare-fun b!3138770 () Bool)

(declare-fun call!225227 () Bool)

(assert (=> b!3138770 (= e!1958183 call!225227)))

(declare-fun bm!225223 () Bool)

(assert (=> bm!225223 (= call!225227 (validRegex!4388 (ite c!527585 (regTwo!19823 r!17345) (regOne!19822 r!17345))))))

(declare-fun b!3138771 () Bool)

(assert (=> b!3138771 (= e!1958187 e!1958184)))

(assert (=> b!3138771 (= c!527585 ((_ is Union!9655) r!17345))))

(declare-fun b!3138772 () Bool)

(declare-fun res!1282416 () Bool)

(declare-fun e!1958189 () Bool)

(assert (=> b!3138772 (=> res!1282416 e!1958189)))

(assert (=> b!3138772 (= res!1282416 (not ((_ is Concat!14976) r!17345)))))

(assert (=> b!3138772 (= e!1958184 e!1958189)))

(declare-fun b!3138773 () Bool)

(declare-fun e!1958188 () Bool)

(assert (=> b!3138773 (= e!1958188 e!1958187)))

(assert (=> b!3138773 (= c!527584 ((_ is Star!9655) r!17345))))

(declare-fun b!3138774 () Bool)

(declare-fun e!1958186 () Bool)

(assert (=> b!3138774 (= e!1958189 e!1958186)))

(declare-fun res!1282417 () Bool)

(assert (=> b!3138774 (=> (not res!1282417) (not e!1958186))))

(assert (=> b!3138774 (= res!1282417 call!225227)))

(declare-fun b!3138775 () Bool)

(assert (=> b!3138775 (= e!1958185 call!225228)))

(declare-fun d!865557 () Bool)

(declare-fun res!1282420 () Bool)

(assert (=> d!865557 (=> res!1282420 e!1958188)))

(assert (=> d!865557 (= res!1282420 ((_ is ElementMatch!9655) r!17345))))

(assert (=> d!865557 (= (validRegex!4388 r!17345) e!1958188)))

(declare-fun b!3138769 () Bool)

(assert (=> b!3138769 (= e!1958186 call!225226)))

(assert (= (and d!865557 (not res!1282420)) b!3138773))

(assert (= (and b!3138773 c!527584) b!3138767))

(assert (= (and b!3138773 (not c!527584)) b!3138771))

(assert (= (and b!3138767 res!1282419) b!3138775))

(assert (= (and b!3138771 c!527585) b!3138768))

(assert (= (and b!3138771 (not c!527585)) b!3138772))

(assert (= (and b!3138768 res!1282418) b!3138770))

(assert (= (and b!3138772 (not res!1282416)) b!3138774))

(assert (= (and b!3138774 res!1282417) b!3138769))

(assert (= (or b!3138770 b!3138774) bm!225223))

(assert (= (or b!3138768 b!3138769) bm!225221))

(assert (= (or b!3138775 bm!225221) bm!225222))

(declare-fun m!3417471 () Bool)

(assert (=> b!3138767 m!3417471))

(declare-fun m!3417473 () Bool)

(assert (=> bm!225222 m!3417473))

(declare-fun m!3417475 () Bool)

(assert (=> bm!225223 m!3417475))

(assert (=> start!295856 d!865557))

(declare-fun e!1958197 () Bool)

(assert (=> b!3138539 (= tp!982495 e!1958197)))

(declare-fun b!3138809 () Bool)

(declare-fun tp!982541 () Bool)

(declare-fun tp!982545 () Bool)

(assert (=> b!3138809 (= e!1958197 (and tp!982541 tp!982545))))

(declare-fun b!3138807 () Bool)

(declare-fun tp!982542 () Bool)

(declare-fun tp!982543 () Bool)

(assert (=> b!3138807 (= e!1958197 (and tp!982542 tp!982543))))

(declare-fun b!3138808 () Bool)

(declare-fun tp!982544 () Bool)

(assert (=> b!3138808 (= e!1958197 tp!982544)))

(declare-fun b!3138806 () Bool)

(assert (=> b!3138806 (= e!1958197 tp_is_empty!16873)))

(assert (= (and b!3138539 ((_ is ElementMatch!9655) (regOne!19822 r!17345))) b!3138806))

(assert (= (and b!3138539 ((_ is Concat!14976) (regOne!19822 r!17345))) b!3138807))

(assert (= (and b!3138539 ((_ is Star!9655) (regOne!19822 r!17345))) b!3138808))

(assert (= (and b!3138539 ((_ is Union!9655) (regOne!19822 r!17345))) b!3138809))

(declare-fun e!1958198 () Bool)

(assert (=> b!3138539 (= tp!982492 e!1958198)))

(declare-fun b!3138813 () Bool)

(declare-fun tp!982546 () Bool)

(declare-fun tp!982550 () Bool)

(assert (=> b!3138813 (= e!1958198 (and tp!982546 tp!982550))))

(declare-fun b!3138811 () Bool)

(declare-fun tp!982547 () Bool)

(declare-fun tp!982548 () Bool)

(assert (=> b!3138811 (= e!1958198 (and tp!982547 tp!982548))))

(declare-fun b!3138812 () Bool)

(declare-fun tp!982549 () Bool)

(assert (=> b!3138812 (= e!1958198 tp!982549)))

(declare-fun b!3138810 () Bool)

(assert (=> b!3138810 (= e!1958198 tp_is_empty!16873)))

(assert (= (and b!3138539 ((_ is ElementMatch!9655) (regTwo!19822 r!17345))) b!3138810))

(assert (= (and b!3138539 ((_ is Concat!14976) (regTwo!19822 r!17345))) b!3138811))

(assert (= (and b!3138539 ((_ is Star!9655) (regTwo!19822 r!17345))) b!3138812))

(assert (= (and b!3138539 ((_ is Union!9655) (regTwo!19822 r!17345))) b!3138813))

(declare-fun e!1958199 () Bool)

(assert (=> b!3138542 (= tp!982494 e!1958199)))

(declare-fun b!3138817 () Bool)

(declare-fun tp!982551 () Bool)

(declare-fun tp!982555 () Bool)

(assert (=> b!3138817 (= e!1958199 (and tp!982551 tp!982555))))

(declare-fun b!3138815 () Bool)

(declare-fun tp!982552 () Bool)

(declare-fun tp!982553 () Bool)

(assert (=> b!3138815 (= e!1958199 (and tp!982552 tp!982553))))

(declare-fun b!3138816 () Bool)

(declare-fun tp!982554 () Bool)

(assert (=> b!3138816 (= e!1958199 tp!982554)))

(declare-fun b!3138814 () Bool)

(assert (=> b!3138814 (= e!1958199 tp_is_empty!16873)))

(assert (= (and b!3138542 ((_ is ElementMatch!9655) (regOne!19823 r!17345))) b!3138814))

(assert (= (and b!3138542 ((_ is Concat!14976) (regOne!19823 r!17345))) b!3138815))

(assert (= (and b!3138542 ((_ is Star!9655) (regOne!19823 r!17345))) b!3138816))

(assert (= (and b!3138542 ((_ is Union!9655) (regOne!19823 r!17345))) b!3138817))

(declare-fun e!1958200 () Bool)

(assert (=> b!3138542 (= tp!982493 e!1958200)))

(declare-fun b!3138821 () Bool)

(declare-fun tp!982556 () Bool)

(declare-fun tp!982560 () Bool)

(assert (=> b!3138821 (= e!1958200 (and tp!982556 tp!982560))))

(declare-fun b!3138819 () Bool)

(declare-fun tp!982557 () Bool)

(declare-fun tp!982558 () Bool)

(assert (=> b!3138819 (= e!1958200 (and tp!982557 tp!982558))))

(declare-fun b!3138820 () Bool)

(declare-fun tp!982559 () Bool)

(assert (=> b!3138820 (= e!1958200 tp!982559)))

(declare-fun b!3138818 () Bool)

(assert (=> b!3138818 (= e!1958200 tp_is_empty!16873)))

(assert (= (and b!3138542 ((_ is ElementMatch!9655) (regTwo!19823 r!17345))) b!3138818))

(assert (= (and b!3138542 ((_ is Concat!14976) (regTwo!19823 r!17345))) b!3138819))

(assert (= (and b!3138542 ((_ is Star!9655) (regTwo!19823 r!17345))) b!3138820))

(assert (= (and b!3138542 ((_ is Union!9655) (regTwo!19823 r!17345))) b!3138821))

(declare-fun e!1958201 () Bool)

(assert (=> b!3138541 (= tp!982491 e!1958201)))

(declare-fun b!3138825 () Bool)

(declare-fun tp!982561 () Bool)

(declare-fun tp!982565 () Bool)

(assert (=> b!3138825 (= e!1958201 (and tp!982561 tp!982565))))

(declare-fun b!3138823 () Bool)

(declare-fun tp!982562 () Bool)

(declare-fun tp!982563 () Bool)

(assert (=> b!3138823 (= e!1958201 (and tp!982562 tp!982563))))

(declare-fun b!3138824 () Bool)

(declare-fun tp!982564 () Bool)

(assert (=> b!3138824 (= e!1958201 tp!982564)))

(declare-fun b!3138822 () Bool)

(assert (=> b!3138822 (= e!1958201 tp_is_empty!16873)))

(assert (= (and b!3138541 ((_ is ElementMatch!9655) (reg!9984 r!17345))) b!3138822))

(assert (= (and b!3138541 ((_ is Concat!14976) (reg!9984 r!17345))) b!3138823))

(assert (= (and b!3138541 ((_ is Star!9655) (reg!9984 r!17345))) b!3138824))

(assert (= (and b!3138541 ((_ is Union!9655) (reg!9984 r!17345))) b!3138825))

(check-sat (not b!3138815) (not b!3138753) (not bm!225218) (not b!3138813) (not b!3138812) (not bm!225177) (not b!3138811) (not b!3138820) (not b!3138808) (not bm!225220) (not b!3138767) tp_is_empty!16873 (not b!3138817) (not bm!225219) (not b!3138749) (not b!3138807) (not b!3138819) (not b!3138816) (not bm!225178) (not b!3138598) (not b!3138824) (not b!3138825) (not b!3138821) (not bm!225223) (not b!3138809) (not d!865555) (not bm!225222) (not bm!225217) (not b!3138823) (not bm!225216))
(check-sat)
