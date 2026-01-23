; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45896 () Bool)

(assert start!45896)

(declare-fun b!490139 () Bool)

(declare-fun e!296690 () Bool)

(declare-datatypes ((C!3276 0))(
  ( (C!3277 (val!1624 Int)) )
))
(declare-datatypes ((Regex!1177 0))(
  ( (ElementMatch!1177 (c!97084 C!3276)) (Concat!2077 (regOne!2866 Regex!1177) (regTwo!2866 Regex!1177)) (EmptyExpr!1177) (Star!1177 (reg!1506 Regex!1177)) (EmptyLang!1177) (Union!1177 (regOne!2867 Regex!1177) (regTwo!2867 Regex!1177)) )
))
(declare-fun r!20230 () Regex!1177)

(declare-fun regexDepth!10 (Regex!1177) Int)

(assert (=> b!490139 (= e!296690 (>= (regexDepth!10 (regOne!2866 r!20230)) (regexDepth!10 r!20230)))))

(declare-fun b!490140 () Bool)

(declare-fun res!213559 () Bool)

(assert (=> b!490140 (=> (not res!213559) (not e!296690))))

(declare-fun lt!211206 () Bool)

(assert (=> b!490140 (= res!213559 lt!211206)))

(declare-fun b!490141 () Bool)

(declare-fun e!296692 () Bool)

(declare-fun tp!142747 () Bool)

(declare-fun tp!142750 () Bool)

(assert (=> b!490141 (= e!296692 (and tp!142747 tp!142750))))

(declare-fun b!490142 () Bool)

(declare-fun tp_is_empty!2351 () Bool)

(assert (=> b!490142 (= e!296692 tp_is_empty!2351)))

(declare-fun b!490143 () Bool)

(declare-fun res!213560 () Bool)

(assert (=> b!490143 (=> (not res!213560) (not e!296690))))

(declare-fun validRegex!405 (Regex!1177) Bool)

(assert (=> b!490143 (= res!213560 (validRegex!405 (regOne!2866 r!20230)))))

(declare-fun b!490144 () Bool)

(declare-fun tp!142751 () Bool)

(assert (=> b!490144 (= e!296692 tp!142751)))

(declare-fun b!490146 () Bool)

(declare-fun tp!142749 () Bool)

(declare-fun tp!142748 () Bool)

(assert (=> b!490146 (= e!296692 (and tp!142749 tp!142748))))

(declare-fun b!490147 () Bool)

(declare-fun res!213563 () Bool)

(declare-fun e!296691 () Bool)

(assert (=> b!490147 (=> (not res!213563) (not e!296691))))

(declare-fun lostCause!171 (Regex!1177) Bool)

(assert (=> b!490147 (= res!213563 (lostCause!171 r!20230))))

(declare-fun b!490148 () Bool)

(declare-fun e!296693 () Bool)

(assert (=> b!490148 (= e!296693 (lostCause!171 (regTwo!2866 r!20230)))))

(declare-fun b!490149 () Bool)

(assert (=> b!490149 (= e!296691 e!296690)))

(declare-fun res!213558 () Bool)

(assert (=> b!490149 (=> (not res!213558) (not e!296690))))

(assert (=> b!490149 (= res!213558 e!296693)))

(declare-fun res!213557 () Bool)

(assert (=> b!490149 (=> res!213557 e!296693)))

(assert (=> b!490149 (= res!213557 lt!211206)))

(assert (=> b!490149 (= lt!211206 (lostCause!171 (regOne!2866 r!20230)))))

(declare-fun b!490150 () Bool)

(declare-fun res!213561 () Bool)

(assert (=> b!490150 (=> (not res!213561) (not e!296691))))

(get-info :version)

(assert (=> b!490150 (= res!213561 (and (not ((_ is EmptyLang!1177) r!20230)) (not ((_ is EmptyExpr!1177) r!20230)) (not ((_ is ElementMatch!1177) r!20230)) (not ((_ is Union!1177) r!20230)) (not ((_ is Star!1177) r!20230))))))

(declare-fun res!213556 () Bool)

(assert (=> start!45896 (=> (not res!213556) (not e!296691))))

(assert (=> start!45896 (= res!213556 (validRegex!405 r!20230))))

(assert (=> start!45896 e!296691))

(assert (=> start!45896 e!296692))

(declare-fun b!490145 () Bool)

(declare-fun res!213562 () Bool)

(assert (=> b!490145 (=> (not res!213562) (not e!296690))))

(declare-fun nullable!312 (Regex!1177) Bool)

(assert (=> b!490145 (= res!213562 (not (nullable!312 (regOne!2866 r!20230))))))

(assert (= (and start!45896 res!213556) b!490147))

(assert (= (and b!490147 res!213563) b!490150))

(assert (= (and b!490150 res!213561) b!490149))

(assert (= (and b!490149 (not res!213557)) b!490148))

(assert (= (and b!490149 res!213558) b!490145))

(assert (= (and b!490145 res!213562) b!490140))

(assert (= (and b!490140 res!213559) b!490143))

(assert (= (and b!490143 res!213560) b!490139))

(assert (= (and start!45896 ((_ is ElementMatch!1177) r!20230)) b!490142))

(assert (= (and start!45896 ((_ is Concat!2077) r!20230)) b!490141))

(assert (= (and start!45896 ((_ is Star!1177) r!20230)) b!490144))

(assert (= (and start!45896 ((_ is Union!1177) r!20230)) b!490146))

(declare-fun m!751723 () Bool)

(assert (=> b!490143 m!751723))

(declare-fun m!751725 () Bool)

(assert (=> b!490145 m!751725))

(declare-fun m!751727 () Bool)

(assert (=> b!490139 m!751727))

(declare-fun m!751729 () Bool)

(assert (=> b!490139 m!751729))

(declare-fun m!751731 () Bool)

(assert (=> b!490147 m!751731))

(declare-fun m!751733 () Bool)

(assert (=> b!490148 m!751733))

(declare-fun m!751735 () Bool)

(assert (=> b!490149 m!751735))

(declare-fun m!751737 () Bool)

(assert (=> start!45896 m!751737))

(check-sat (not b!490146) tp_is_empty!2351 (not b!490148) (not b!490147) (not b!490144) (not b!490143) (not b!490145) (not b!490139) (not b!490149) (not b!490141) (not start!45896))
(check-sat)
(get-model)

(declare-fun d!181477 () Bool)

(declare-fun lostCauseFct!78 (Regex!1177) Bool)

(assert (=> d!181477 (= (lostCause!171 (regOne!2866 r!20230)) (lostCauseFct!78 (regOne!2866 r!20230)))))

(declare-fun bs!58988 () Bool)

(assert (= bs!58988 d!181477))

(declare-fun m!751739 () Bool)

(assert (=> bs!58988 m!751739))

(assert (=> b!490149 d!181477))

(declare-fun bm!35053 () Bool)

(declare-fun call!35059 () Bool)

(declare-fun call!35058 () Bool)

(assert (=> bm!35053 (= call!35059 call!35058)))

(declare-fun bm!35054 () Bool)

(declare-fun call!35060 () Bool)

(declare-fun c!97090 () Bool)

(assert (=> bm!35054 (= call!35060 (validRegex!405 (ite c!97090 (regOne!2867 r!20230) (regTwo!2866 r!20230))))))

(declare-fun b!490169 () Bool)

(declare-fun e!296714 () Bool)

(assert (=> b!490169 (= e!296714 call!35060)))

(declare-fun b!490170 () Bool)

(declare-fun e!296711 () Bool)

(assert (=> b!490170 (= e!296711 call!35059)))

(declare-fun b!490171 () Bool)

(declare-fun e!296710 () Bool)

(assert (=> b!490171 (= e!296710 e!296714)))

(declare-fun res!213577 () Bool)

(assert (=> b!490171 (=> (not res!213577) (not e!296714))))

(assert (=> b!490171 (= res!213577 call!35059)))

(declare-fun b!490172 () Bool)

(declare-fun e!296713 () Bool)

(declare-fun e!296708 () Bool)

(assert (=> b!490172 (= e!296713 e!296708)))

(assert (=> b!490172 (= c!97090 ((_ is Union!1177) r!20230))))

(declare-fun b!490173 () Bool)

(declare-fun e!296709 () Bool)

(assert (=> b!490173 (= e!296709 call!35058)))

(declare-fun d!181479 () Bool)

(declare-fun res!213576 () Bool)

(declare-fun e!296712 () Bool)

(assert (=> d!181479 (=> res!213576 e!296712)))

(assert (=> d!181479 (= res!213576 ((_ is ElementMatch!1177) r!20230))))

(assert (=> d!181479 (= (validRegex!405 r!20230) e!296712)))

(declare-fun b!490174 () Bool)

(declare-fun res!213574 () Bool)

(assert (=> b!490174 (=> res!213574 e!296710)))

(assert (=> b!490174 (= res!213574 (not ((_ is Concat!2077) r!20230)))))

(assert (=> b!490174 (= e!296708 e!296710)))

(declare-fun b!490175 () Bool)

(assert (=> b!490175 (= e!296713 e!296709)))

(declare-fun res!213575 () Bool)

(assert (=> b!490175 (= res!213575 (not (nullable!312 (reg!1506 r!20230))))))

(assert (=> b!490175 (=> (not res!213575) (not e!296709))))

(declare-fun b!490176 () Bool)

(assert (=> b!490176 (= e!296712 e!296713)))

(declare-fun c!97089 () Bool)

(assert (=> b!490176 (= c!97089 ((_ is Star!1177) r!20230))))

(declare-fun b!490177 () Bool)

(declare-fun res!213578 () Bool)

(assert (=> b!490177 (=> (not res!213578) (not e!296711))))

(assert (=> b!490177 (= res!213578 call!35060)))

(assert (=> b!490177 (= e!296708 e!296711)))

(declare-fun bm!35055 () Bool)

(assert (=> bm!35055 (= call!35058 (validRegex!405 (ite c!97089 (reg!1506 r!20230) (ite c!97090 (regTwo!2867 r!20230) (regOne!2866 r!20230)))))))

(assert (= (and d!181479 (not res!213576)) b!490176))

(assert (= (and b!490176 c!97089) b!490175))

(assert (= (and b!490176 (not c!97089)) b!490172))

(assert (= (and b!490175 res!213575) b!490173))

(assert (= (and b!490172 c!97090) b!490177))

(assert (= (and b!490172 (not c!97090)) b!490174))

(assert (= (and b!490177 res!213578) b!490170))

(assert (= (and b!490174 (not res!213574)) b!490171))

(assert (= (and b!490171 res!213577) b!490169))

(assert (= (or b!490170 b!490171) bm!35053))

(assert (= (or b!490177 b!490169) bm!35054))

(assert (= (or b!490173 bm!35053) bm!35055))

(declare-fun m!751743 () Bool)

(assert (=> bm!35054 m!751743))

(declare-fun m!751745 () Bool)

(assert (=> b!490175 m!751745))

(declare-fun m!751747 () Bool)

(assert (=> bm!35055 m!751747))

(assert (=> start!45896 d!181479))

(declare-fun bm!35056 () Bool)

(declare-fun call!35064 () Bool)

(declare-fun call!35063 () Bool)

(assert (=> bm!35056 (= call!35064 call!35063)))

(declare-fun bm!35057 () Bool)

(declare-fun call!35065 () Bool)

(declare-fun c!97100 () Bool)

(assert (=> bm!35057 (= call!35065 (validRegex!405 (ite c!97100 (regOne!2867 (regOne!2866 r!20230)) (regTwo!2866 (regOne!2866 r!20230)))))))

(declare-fun b!490194 () Bool)

(declare-fun e!296729 () Bool)

(assert (=> b!490194 (= e!296729 call!35065)))

(declare-fun b!490195 () Bool)

(declare-fun e!296726 () Bool)

(assert (=> b!490195 (= e!296726 call!35064)))

(declare-fun b!490196 () Bool)

(declare-fun e!296725 () Bool)

(assert (=> b!490196 (= e!296725 e!296729)))

(declare-fun res!213582 () Bool)

(assert (=> b!490196 (=> (not res!213582) (not e!296729))))

(assert (=> b!490196 (= res!213582 call!35064)))

(declare-fun b!490197 () Bool)

(declare-fun e!296728 () Bool)

(declare-fun e!296723 () Bool)

(assert (=> b!490197 (= e!296728 e!296723)))

(assert (=> b!490197 (= c!97100 ((_ is Union!1177) (regOne!2866 r!20230)))))

(declare-fun b!490198 () Bool)

(declare-fun e!296724 () Bool)

(assert (=> b!490198 (= e!296724 call!35063)))

(declare-fun d!181485 () Bool)

(declare-fun res!213581 () Bool)

(declare-fun e!296727 () Bool)

(assert (=> d!181485 (=> res!213581 e!296727)))

(assert (=> d!181485 (= res!213581 ((_ is ElementMatch!1177) (regOne!2866 r!20230)))))

(assert (=> d!181485 (= (validRegex!405 (regOne!2866 r!20230)) e!296727)))

(declare-fun b!490199 () Bool)

(declare-fun res!213579 () Bool)

(assert (=> b!490199 (=> res!213579 e!296725)))

(assert (=> b!490199 (= res!213579 (not ((_ is Concat!2077) (regOne!2866 r!20230))))))

(assert (=> b!490199 (= e!296723 e!296725)))

(declare-fun b!490200 () Bool)

(assert (=> b!490200 (= e!296728 e!296724)))

(declare-fun res!213580 () Bool)

(assert (=> b!490200 (= res!213580 (not (nullable!312 (reg!1506 (regOne!2866 r!20230)))))))

(assert (=> b!490200 (=> (not res!213580) (not e!296724))))

(declare-fun b!490201 () Bool)

(assert (=> b!490201 (= e!296727 e!296728)))

(declare-fun c!97099 () Bool)

(assert (=> b!490201 (= c!97099 ((_ is Star!1177) (regOne!2866 r!20230)))))

(declare-fun b!490202 () Bool)

(declare-fun res!213583 () Bool)

(assert (=> b!490202 (=> (not res!213583) (not e!296726))))

(assert (=> b!490202 (= res!213583 call!35065)))

(assert (=> b!490202 (= e!296723 e!296726)))

(declare-fun bm!35058 () Bool)

(assert (=> bm!35058 (= call!35063 (validRegex!405 (ite c!97099 (reg!1506 (regOne!2866 r!20230)) (ite c!97100 (regTwo!2867 (regOne!2866 r!20230)) (regOne!2866 (regOne!2866 r!20230))))))))

(assert (= (and d!181485 (not res!213581)) b!490201))

(assert (= (and b!490201 c!97099) b!490200))

(assert (= (and b!490201 (not c!97099)) b!490197))

(assert (= (and b!490200 res!213580) b!490198))

(assert (= (and b!490197 c!97100) b!490202))

(assert (= (and b!490197 (not c!97100)) b!490199))

(assert (= (and b!490202 res!213583) b!490195))

(assert (= (and b!490199 (not res!213579)) b!490196))

(assert (= (and b!490196 res!213582) b!490194))

(assert (= (or b!490195 b!490196) bm!35056))

(assert (= (or b!490202 b!490194) bm!35057))

(assert (= (or b!490198 bm!35056) bm!35058))

(declare-fun m!751749 () Bool)

(assert (=> bm!35057 m!751749))

(declare-fun m!751751 () Bool)

(assert (=> b!490200 m!751751))

(declare-fun m!751753 () Bool)

(assert (=> bm!35058 m!751753))

(assert (=> b!490143 d!181485))

(declare-fun d!181487 () Bool)

(assert (=> d!181487 (= (lostCause!171 (regTwo!2866 r!20230)) (lostCauseFct!78 (regTwo!2866 r!20230)))))

(declare-fun bs!58990 () Bool)

(assert (= bs!58990 d!181487))

(declare-fun m!751755 () Bool)

(assert (=> bs!58990 m!751755))

(assert (=> b!490148 d!181487))

(declare-fun d!181489 () Bool)

(declare-fun nullableFct!117 (Regex!1177) Bool)

(assert (=> d!181489 (= (nullable!312 (regOne!2866 r!20230)) (nullableFct!117 (regOne!2866 r!20230)))))

(declare-fun bs!58991 () Bool)

(assert (= bs!58991 d!181489))

(declare-fun m!751757 () Bool)

(assert (=> bs!58991 m!751757))

(assert (=> b!490145 d!181489))

(declare-fun d!181491 () Bool)

(declare-fun e!296788 () Bool)

(assert (=> d!181491 e!296788))

(declare-fun res!213604 () Bool)

(assert (=> d!181491 (=> (not res!213604) (not e!296788))))

(declare-fun lt!211213 () Int)

(assert (=> d!181491 (= res!213604 (> lt!211213 0))))

(declare-fun e!296791 () Int)

(assert (=> d!181491 (= lt!211213 e!296791)))

(declare-fun c!97139 () Bool)

(assert (=> d!181491 (= c!97139 ((_ is ElementMatch!1177) (regOne!2866 r!20230)))))

(assert (=> d!181491 (= (regexDepth!10 (regOne!2866 r!20230)) lt!211213)))

(declare-fun b!490295 () Bool)

(declare-fun e!296789 () Int)

(declare-fun call!35111 () Int)

(assert (=> b!490295 (= e!296789 (+ 1 call!35111))))

(declare-fun bm!35101 () Bool)

(declare-fun call!35108 () Int)

(declare-fun c!97140 () Bool)

(assert (=> bm!35101 (= call!35108 (regexDepth!10 (ite c!97140 (regTwo!2867 (regOne!2866 r!20230)) (regOne!2866 (regOne!2866 r!20230)))))))

(declare-fun b!490296 () Bool)

(declare-fun res!213605 () Bool)

(declare-fun e!296794 () Bool)

(assert (=> b!490296 (=> (not res!213605) (not e!296794))))

(declare-fun call!35112 () Int)

(assert (=> b!490296 (= res!213605 (> lt!211213 call!35112))))

(declare-fun e!296790 () Bool)

(assert (=> b!490296 (= e!296790 e!296794)))

(declare-fun bm!35102 () Bool)

(declare-fun call!35107 () Int)

(assert (=> bm!35102 (= call!35112 call!35107)))

(declare-fun b!490297 () Bool)

(assert (=> b!490297 (= e!296791 1)))

(declare-fun b!490298 () Bool)

(declare-fun e!296787 () Int)

(assert (=> b!490298 (= e!296791 e!296787)))

(declare-fun c!97137 () Bool)

(assert (=> b!490298 (= c!97137 ((_ is Star!1177) (regOne!2866 r!20230)))))

(declare-fun b!490299 () Bool)

(declare-fun e!296792 () Int)

(assert (=> b!490299 (= e!296792 1)))

(declare-fun b!490300 () Bool)

(declare-fun e!296793 () Bool)

(declare-fun e!296786 () Bool)

(assert (=> b!490300 (= e!296793 e!296786)))

(declare-fun res!213606 () Bool)

(assert (=> b!490300 (= res!213606 (> lt!211213 call!35107))))

(assert (=> b!490300 (=> (not res!213606) (not e!296786))))

(declare-fun b!490301 () Bool)

(assert (=> b!490301 (= e!296789 e!296792)))

(declare-fun c!97135 () Bool)

(assert (=> b!490301 (= c!97135 ((_ is Concat!2077) (regOne!2866 r!20230)))))

(declare-fun b!490302 () Bool)

(assert (=> b!490302 (= e!296793 e!296790)))

(declare-fun c!97143 () Bool)

(assert (=> b!490302 (= c!97143 ((_ is Concat!2077) (regOne!2866 r!20230)))))

(declare-fun b!490303 () Bool)

(assert (=> b!490303 (= e!296788 e!296793)))

(declare-fun c!97142 () Bool)

(assert (=> b!490303 (= c!97142 ((_ is Union!1177) (regOne!2866 r!20230)))))

(declare-fun b!490304 () Bool)

(declare-fun call!35109 () Int)

(assert (=> b!490304 (= e!296786 (> lt!211213 call!35109))))

(declare-fun bm!35103 () Bool)

(assert (=> bm!35103 (= call!35107 (regexDepth!10 (ite c!97142 (regOne!2867 (regOne!2866 r!20230)) (ite c!97143 (regOne!2866 (regOne!2866 r!20230)) (reg!1506 (regOne!2866 r!20230))))))))

(declare-fun b!490305 () Bool)

(declare-fun e!296795 () Bool)

(assert (=> b!490305 (= e!296795 (> lt!211213 call!35112))))

(declare-fun bm!35104 () Bool)

(declare-fun call!35110 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!35104 (= call!35111 (maxBigInt!0 (ite c!97140 call!35110 call!35108) (ite c!97140 call!35108 call!35110)))))

(declare-fun b!490306 () Bool)

(assert (=> b!490306 (= e!296795 (= lt!211213 1))))

(declare-fun call!35106 () Int)

(declare-fun bm!35105 () Bool)

(assert (=> bm!35105 (= call!35106 (regexDepth!10 (ite c!97137 (reg!1506 (regOne!2866 r!20230)) (ite c!97140 (regOne!2867 (regOne!2866 r!20230)) (regTwo!2866 (regOne!2866 r!20230))))))))

(declare-fun b!490307 () Bool)

(assert (=> b!490307 (= c!97140 ((_ is Union!1177) (regOne!2866 r!20230)))))

(assert (=> b!490307 (= e!296787 e!296789)))

(declare-fun b!490308 () Bool)

(assert (=> b!490308 (= e!296792 (+ 1 call!35111))))

(declare-fun bm!35106 () Bool)

(assert (=> bm!35106 (= call!35110 call!35106)))

(declare-fun b!490309 () Bool)

(declare-fun c!97141 () Bool)

(assert (=> b!490309 (= c!97141 ((_ is Star!1177) (regOne!2866 r!20230)))))

(assert (=> b!490309 (= e!296790 e!296795)))

(declare-fun b!490310 () Bool)

(assert (=> b!490310 (= e!296787 (+ 1 call!35106))))

(declare-fun b!490311 () Bool)

(assert (=> b!490311 (= e!296794 (> lt!211213 call!35109))))

(declare-fun bm!35107 () Bool)

(assert (=> bm!35107 (= call!35109 (regexDepth!10 (ite c!97142 (regTwo!2867 (regOne!2866 r!20230)) (regTwo!2866 (regOne!2866 r!20230)))))))

(assert (= (and d!181491 c!97139) b!490297))

(assert (= (and d!181491 (not c!97139)) b!490298))

(assert (= (and b!490298 c!97137) b!490310))

(assert (= (and b!490298 (not c!97137)) b!490307))

(assert (= (and b!490307 c!97140) b!490295))

(assert (= (and b!490307 (not c!97140)) b!490301))

(assert (= (and b!490301 c!97135) b!490308))

(assert (= (and b!490301 (not c!97135)) b!490299))

(assert (= (or b!490295 b!490308) bm!35101))

(assert (= (or b!490295 b!490308) bm!35106))

(assert (= (or b!490295 b!490308) bm!35104))

(assert (= (or b!490310 bm!35106) bm!35105))

(assert (= (and d!181491 res!213604) b!490303))

(assert (= (and b!490303 c!97142) b!490300))

(assert (= (and b!490303 (not c!97142)) b!490302))

(assert (= (and b!490300 res!213606) b!490304))

(assert (= (and b!490302 c!97143) b!490296))

(assert (= (and b!490302 (not c!97143)) b!490309))

(assert (= (and b!490296 res!213605) b!490311))

(assert (= (and b!490309 c!97141) b!490305))

(assert (= (and b!490309 (not c!97141)) b!490306))

(assert (= (or b!490296 b!490305) bm!35102))

(assert (= (or b!490304 b!490311) bm!35107))

(assert (= (or b!490300 bm!35102) bm!35103))

(declare-fun m!751781 () Bool)

(assert (=> bm!35101 m!751781))

(declare-fun m!751783 () Bool)

(assert (=> bm!35107 m!751783))

(declare-fun m!751785 () Bool)

(assert (=> bm!35103 m!751785))

(declare-fun m!751787 () Bool)

(assert (=> bm!35105 m!751787))

(declare-fun m!751789 () Bool)

(assert (=> bm!35104 m!751789))

(assert (=> b!490139 d!181491))

(declare-fun d!181499 () Bool)

(declare-fun e!296808 () Bool)

(assert (=> d!181499 e!296808))

(declare-fun res!213615 () Bool)

(assert (=> d!181499 (=> (not res!213615) (not e!296808))))

(declare-fun lt!211214 () Int)

(assert (=> d!181499 (= res!213615 (> lt!211214 0))))

(declare-fun e!296811 () Int)

(assert (=> d!181499 (= lt!211214 e!296811)))

(declare-fun c!97148 () Bool)

(assert (=> d!181499 (= c!97148 ((_ is ElementMatch!1177) r!20230))))

(assert (=> d!181499 (= (regexDepth!10 r!20230) lt!211214)))

(declare-fun b!490324 () Bool)

(declare-fun e!296809 () Int)

(declare-fun call!35124 () Int)

(assert (=> b!490324 (= e!296809 (+ 1 call!35124))))

(declare-fun bm!35114 () Bool)

(declare-fun call!35121 () Int)

(declare-fun c!97149 () Bool)

(assert (=> bm!35114 (= call!35121 (regexDepth!10 (ite c!97149 (regTwo!2867 r!20230) (regOne!2866 r!20230))))))

(declare-fun b!490325 () Bool)

(declare-fun res!213616 () Bool)

(declare-fun e!296814 () Bool)

(assert (=> b!490325 (=> (not res!213616) (not e!296814))))

(declare-fun call!35125 () Int)

(assert (=> b!490325 (= res!213616 (> lt!211214 call!35125))))

(declare-fun e!296810 () Bool)

(assert (=> b!490325 (= e!296810 e!296814)))

(declare-fun bm!35115 () Bool)

(declare-fun call!35120 () Int)

(assert (=> bm!35115 (= call!35125 call!35120)))

(declare-fun b!490326 () Bool)

(assert (=> b!490326 (= e!296811 1)))

(declare-fun b!490327 () Bool)

(declare-fun e!296807 () Int)

(assert (=> b!490327 (= e!296811 e!296807)))

(declare-fun c!97147 () Bool)

(assert (=> b!490327 (= c!97147 ((_ is Star!1177) r!20230))))

(declare-fun b!490328 () Bool)

(declare-fun e!296812 () Int)

(assert (=> b!490328 (= e!296812 1)))

(declare-fun b!490329 () Bool)

(declare-fun e!296813 () Bool)

(declare-fun e!296806 () Bool)

(assert (=> b!490329 (= e!296813 e!296806)))

(declare-fun res!213617 () Bool)

(assert (=> b!490329 (= res!213617 (> lt!211214 call!35120))))

(assert (=> b!490329 (=> (not res!213617) (not e!296806))))

(declare-fun b!490330 () Bool)

(assert (=> b!490330 (= e!296809 e!296812)))

(declare-fun c!97146 () Bool)

(assert (=> b!490330 (= c!97146 ((_ is Concat!2077) r!20230))))

(declare-fun b!490331 () Bool)

(assert (=> b!490331 (= e!296813 e!296810)))

(declare-fun c!97152 () Bool)

(assert (=> b!490331 (= c!97152 ((_ is Concat!2077) r!20230))))

(declare-fun b!490332 () Bool)

(assert (=> b!490332 (= e!296808 e!296813)))

(declare-fun c!97151 () Bool)

(assert (=> b!490332 (= c!97151 ((_ is Union!1177) r!20230))))

(declare-fun b!490333 () Bool)

(declare-fun call!35122 () Int)

(assert (=> b!490333 (= e!296806 (> lt!211214 call!35122))))

(declare-fun bm!35116 () Bool)

(assert (=> bm!35116 (= call!35120 (regexDepth!10 (ite c!97151 (regOne!2867 r!20230) (ite c!97152 (regOne!2866 r!20230) (reg!1506 r!20230)))))))

(declare-fun b!490334 () Bool)

(declare-fun e!296815 () Bool)

(assert (=> b!490334 (= e!296815 (> lt!211214 call!35125))))

(declare-fun bm!35117 () Bool)

(declare-fun call!35123 () Int)

(assert (=> bm!35117 (= call!35124 (maxBigInt!0 (ite c!97149 call!35123 call!35121) (ite c!97149 call!35121 call!35123)))))

(declare-fun b!490335 () Bool)

(assert (=> b!490335 (= e!296815 (= lt!211214 1))))

(declare-fun bm!35118 () Bool)

(declare-fun call!35119 () Int)

(assert (=> bm!35118 (= call!35119 (regexDepth!10 (ite c!97147 (reg!1506 r!20230) (ite c!97149 (regOne!2867 r!20230) (regTwo!2866 r!20230)))))))

(declare-fun b!490336 () Bool)

(assert (=> b!490336 (= c!97149 ((_ is Union!1177) r!20230))))

(assert (=> b!490336 (= e!296807 e!296809)))

(declare-fun b!490337 () Bool)

(assert (=> b!490337 (= e!296812 (+ 1 call!35124))))

(declare-fun bm!35119 () Bool)

(assert (=> bm!35119 (= call!35123 call!35119)))

(declare-fun b!490338 () Bool)

(declare-fun c!97150 () Bool)

(assert (=> b!490338 (= c!97150 ((_ is Star!1177) r!20230))))

(assert (=> b!490338 (= e!296810 e!296815)))

(declare-fun b!490339 () Bool)

(assert (=> b!490339 (= e!296807 (+ 1 call!35119))))

(declare-fun b!490340 () Bool)

(assert (=> b!490340 (= e!296814 (> lt!211214 call!35122))))

(declare-fun bm!35120 () Bool)

(assert (=> bm!35120 (= call!35122 (regexDepth!10 (ite c!97151 (regTwo!2867 r!20230) (regTwo!2866 r!20230))))))

(assert (= (and d!181499 c!97148) b!490326))

(assert (= (and d!181499 (not c!97148)) b!490327))

(assert (= (and b!490327 c!97147) b!490339))

(assert (= (and b!490327 (not c!97147)) b!490336))

(assert (= (and b!490336 c!97149) b!490324))

(assert (= (and b!490336 (not c!97149)) b!490330))

(assert (= (and b!490330 c!97146) b!490337))

(assert (= (and b!490330 (not c!97146)) b!490328))

(assert (= (or b!490324 b!490337) bm!35114))

(assert (= (or b!490324 b!490337) bm!35119))

(assert (= (or b!490324 b!490337) bm!35117))

(assert (= (or b!490339 bm!35119) bm!35118))

(assert (= (and d!181499 res!213615) b!490332))

(assert (= (and b!490332 c!97151) b!490329))

(assert (= (and b!490332 (not c!97151)) b!490331))

(assert (= (and b!490329 res!213617) b!490333))

(assert (= (and b!490331 c!97152) b!490325))

(assert (= (and b!490331 (not c!97152)) b!490338))

(assert (= (and b!490325 res!213616) b!490340))

(assert (= (and b!490338 c!97150) b!490334))

(assert (= (and b!490338 (not c!97150)) b!490335))

(assert (= (or b!490325 b!490334) bm!35115))

(assert (= (or b!490333 b!490340) bm!35120))

(assert (= (or b!490329 bm!35115) bm!35116))

(declare-fun m!751791 () Bool)

(assert (=> bm!35114 m!751791))

(declare-fun m!751793 () Bool)

(assert (=> bm!35120 m!751793))

(declare-fun m!751795 () Bool)

(assert (=> bm!35116 m!751795))

(declare-fun m!751797 () Bool)

(assert (=> bm!35118 m!751797))

(declare-fun m!751799 () Bool)

(assert (=> bm!35117 m!751799))

(assert (=> b!490139 d!181499))

(declare-fun d!181501 () Bool)

(assert (=> d!181501 (= (lostCause!171 r!20230) (lostCauseFct!78 r!20230))))

(declare-fun bs!58993 () Bool)

(assert (= bs!58993 d!181501))

(declare-fun m!751801 () Bool)

(assert (=> bs!58993 m!751801))

(assert (=> b!490147 d!181501))

(declare-fun b!490352 () Bool)

(declare-fun e!296818 () Bool)

(declare-fun tp!142766 () Bool)

(declare-fun tp!142765 () Bool)

(assert (=> b!490352 (= e!296818 (and tp!142766 tp!142765))))

(declare-fun b!490354 () Bool)

(declare-fun tp!142762 () Bool)

(declare-fun tp!142764 () Bool)

(assert (=> b!490354 (= e!296818 (and tp!142762 tp!142764))))

(declare-fun b!490353 () Bool)

(declare-fun tp!142763 () Bool)

(assert (=> b!490353 (= e!296818 tp!142763)))

(assert (=> b!490144 (= tp!142751 e!296818)))

(declare-fun b!490351 () Bool)

(assert (=> b!490351 (= e!296818 tp_is_empty!2351)))

(assert (= (and b!490144 ((_ is ElementMatch!1177) (reg!1506 r!20230))) b!490351))

(assert (= (and b!490144 ((_ is Concat!2077) (reg!1506 r!20230))) b!490352))

(assert (= (and b!490144 ((_ is Star!1177) (reg!1506 r!20230))) b!490353))

(assert (= (and b!490144 ((_ is Union!1177) (reg!1506 r!20230))) b!490354))

(declare-fun b!490365 () Bool)

(declare-fun e!296826 () Bool)

(declare-fun tp!142771 () Bool)

(declare-fun tp!142770 () Bool)

(assert (=> b!490365 (= e!296826 (and tp!142771 tp!142770))))

(declare-fun b!490367 () Bool)

(declare-fun tp!142767 () Bool)

(declare-fun tp!142769 () Bool)

(assert (=> b!490367 (= e!296826 (and tp!142767 tp!142769))))

(declare-fun b!490366 () Bool)

(declare-fun tp!142768 () Bool)

(assert (=> b!490366 (= e!296826 tp!142768)))

(assert (=> b!490141 (= tp!142747 e!296826)))

(declare-fun b!490364 () Bool)

(assert (=> b!490364 (= e!296826 tp_is_empty!2351)))

(assert (= (and b!490141 ((_ is ElementMatch!1177) (regOne!2866 r!20230))) b!490364))

(assert (= (and b!490141 ((_ is Concat!2077) (regOne!2866 r!20230))) b!490365))

(assert (= (and b!490141 ((_ is Star!1177) (regOne!2866 r!20230))) b!490366))

(assert (= (and b!490141 ((_ is Union!1177) (regOne!2866 r!20230))) b!490367))

(declare-fun b!490369 () Bool)

(declare-fun e!296827 () Bool)

(declare-fun tp!142776 () Bool)

(declare-fun tp!142775 () Bool)

(assert (=> b!490369 (= e!296827 (and tp!142776 tp!142775))))

(declare-fun b!490371 () Bool)

(declare-fun tp!142772 () Bool)

(declare-fun tp!142774 () Bool)

(assert (=> b!490371 (= e!296827 (and tp!142772 tp!142774))))

(declare-fun b!490370 () Bool)

(declare-fun tp!142773 () Bool)

(assert (=> b!490370 (= e!296827 tp!142773)))

(assert (=> b!490141 (= tp!142750 e!296827)))

(declare-fun b!490368 () Bool)

(assert (=> b!490368 (= e!296827 tp_is_empty!2351)))

(assert (= (and b!490141 ((_ is ElementMatch!1177) (regTwo!2866 r!20230))) b!490368))

(assert (= (and b!490141 ((_ is Concat!2077) (regTwo!2866 r!20230))) b!490369))

(assert (= (and b!490141 ((_ is Star!1177) (regTwo!2866 r!20230))) b!490370))

(assert (= (and b!490141 ((_ is Union!1177) (regTwo!2866 r!20230))) b!490371))

(declare-fun b!490373 () Bool)

(declare-fun e!296828 () Bool)

(declare-fun tp!142781 () Bool)

(declare-fun tp!142780 () Bool)

(assert (=> b!490373 (= e!296828 (and tp!142781 tp!142780))))

(declare-fun b!490375 () Bool)

(declare-fun tp!142777 () Bool)

(declare-fun tp!142779 () Bool)

(assert (=> b!490375 (= e!296828 (and tp!142777 tp!142779))))

(declare-fun b!490374 () Bool)

(declare-fun tp!142778 () Bool)

(assert (=> b!490374 (= e!296828 tp!142778)))

(assert (=> b!490146 (= tp!142749 e!296828)))

(declare-fun b!490372 () Bool)

(assert (=> b!490372 (= e!296828 tp_is_empty!2351)))

(assert (= (and b!490146 ((_ is ElementMatch!1177) (regOne!2867 r!20230))) b!490372))

(assert (= (and b!490146 ((_ is Concat!2077) (regOne!2867 r!20230))) b!490373))

(assert (= (and b!490146 ((_ is Star!1177) (regOne!2867 r!20230))) b!490374))

(assert (= (and b!490146 ((_ is Union!1177) (regOne!2867 r!20230))) b!490375))

(declare-fun b!490377 () Bool)

(declare-fun e!296829 () Bool)

(declare-fun tp!142786 () Bool)

(declare-fun tp!142785 () Bool)

(assert (=> b!490377 (= e!296829 (and tp!142786 tp!142785))))

(declare-fun b!490379 () Bool)

(declare-fun tp!142782 () Bool)

(declare-fun tp!142784 () Bool)

(assert (=> b!490379 (= e!296829 (and tp!142782 tp!142784))))

(declare-fun b!490378 () Bool)

(declare-fun tp!142783 () Bool)

(assert (=> b!490378 (= e!296829 tp!142783)))

(assert (=> b!490146 (= tp!142748 e!296829)))

(declare-fun b!490376 () Bool)

(assert (=> b!490376 (= e!296829 tp_is_empty!2351)))

(assert (= (and b!490146 ((_ is ElementMatch!1177) (regTwo!2867 r!20230))) b!490376))

(assert (= (and b!490146 ((_ is Concat!2077) (regTwo!2867 r!20230))) b!490377))

(assert (= (and b!490146 ((_ is Star!1177) (regTwo!2867 r!20230))) b!490378))

(assert (= (and b!490146 ((_ is Union!1177) (regTwo!2867 r!20230))) b!490379))

(check-sat (not b!490370) (not d!181489) (not bm!35103) (not b!490366) (not b!490369) (not bm!35055) (not bm!35114) (not b!490377) (not b!490375) (not b!490354) (not b!490353) (not b!490365) (not bm!35101) (not bm!35054) tp_is_empty!2351 (not bm!35058) (not d!181501) (not d!181487) (not b!490367) (not bm!35117) (not bm!35057) (not bm!35105) (not b!490373) (not b!490371) (not b!490379) (not b!490175) (not b!490374) (not bm!35116) (not bm!35104) (not bm!35118) (not bm!35120) (not b!490378) (not bm!35107) (not b!490200) (not d!181477) (not b!490352))
(check-sat)
