; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291660 () Bool)

(assert start!291660)

(declare-fun b!3052181 () Bool)

(assert (=> b!3052181 true))

(assert (=> b!3052181 true))

(assert (=> b!3052181 true))

(declare-fun lambda!113700 () Int)

(declare-fun lambda!113699 () Int)

(assert (=> b!3052181 (not (= lambda!113700 lambda!113699))))

(assert (=> b!3052181 true))

(assert (=> b!3052181 true))

(assert (=> b!3052181 true))

(declare-fun b!3052170 () Bool)

(declare-fun e!1912048 () Bool)

(declare-fun tp!965871 () Bool)

(declare-fun tp!965872 () Bool)

(assert (=> b!3052170 (= e!1912048 (and tp!965871 tp!965872))))

(declare-fun b!3052171 () Bool)

(declare-fun res!1253773 () Bool)

(declare-fun e!1912049 () Bool)

(assert (=> b!3052171 (=> res!1253773 e!1912049)))

(declare-datatypes ((C!19108 0))(
  ( (C!19109 (val!11590 Int)) )
))
(declare-datatypes ((Regex!9461 0))(
  ( (ElementMatch!9461 (c!505859 C!19108)) (Concat!14782 (regOne!19434 Regex!9461) (regTwo!19434 Regex!9461)) (EmptyExpr!9461) (Star!9461 (reg!9790 Regex!9461)) (EmptyLang!9461) (Union!9461 (regOne!19435 Regex!9461) (regTwo!19435 Regex!9461)) )
))
(declare-fun lt!1048506 () Regex!9461)

(declare-datatypes ((List!35326 0))(
  ( (Nil!35202) (Cons!35202 (h!40622 C!19108) (t!234391 List!35326)) )
))
(declare-datatypes ((tuple2!34148 0))(
  ( (tuple2!34149 (_1!20206 List!35326) (_2!20206 List!35326)) )
))
(declare-fun lt!1048505 () tuple2!34148)

(declare-fun matchR!4343 (Regex!9461 List!35326) Bool)

(assert (=> b!3052171 (= res!1253773 (not (matchR!4343 lt!1048506 (_2!20206 lt!1048505))))))

(declare-fun b!3052173 () Bool)

(declare-fun res!1253776 () Bool)

(declare-fun e!1912050 () Bool)

(assert (=> b!3052173 (=> res!1253776 e!1912050)))

(declare-fun lt!1048508 () Regex!9461)

(declare-fun validRegex!4194 (Regex!9461) Bool)

(assert (=> b!3052173 (= res!1253776 (not (validRegex!4194 lt!1048508)))))

(declare-fun b!3052174 () Bool)

(declare-datatypes ((Unit!49359 0))(
  ( (Unit!49360) )
))
(declare-fun e!1912046 () Unit!49359)

(declare-fun Unit!49361 () Unit!49359)

(assert (=> b!3052174 (= e!1912046 Unit!49361)))

(declare-fun b!3052175 () Bool)

(declare-fun tp!965869 () Bool)

(declare-fun tp!965870 () Bool)

(assert (=> b!3052175 (= e!1912048 (and tp!965869 tp!965870))))

(declare-fun b!3052176 () Bool)

(declare-fun res!1253772 () Bool)

(declare-fun e!1912044 () Bool)

(assert (=> b!3052176 (=> res!1253772 e!1912044)))

(declare-fun s!11993 () List!35326)

(declare-fun isEmpty!19515 (List!35326) Bool)

(assert (=> b!3052176 (= res!1253772 (isEmpty!19515 s!11993))))

(declare-fun b!3052177 () Bool)

(declare-fun Unit!49362 () Unit!49359)

(assert (=> b!3052177 (= e!1912046 Unit!49362)))

(declare-fun lt!1048497 () Unit!49359)

(declare-fun r!17423 () Regex!9461)

(declare-fun mainMatchTheorem!1598 (Regex!9461 List!35326) Unit!49359)

(assert (=> b!3052177 (= lt!1048497 (mainMatchTheorem!1598 (reg!9790 r!17423) (_1!20206 lt!1048505)))))

(assert (=> b!3052177 false))

(declare-fun b!3052178 () Bool)

(declare-fun tp_is_empty!16485 () Bool)

(assert (=> b!3052178 (= e!1912048 tp_is_empty!16485)))

(declare-fun b!3052179 () Bool)

(declare-fun e!1912047 () Bool)

(assert (=> b!3052179 (= e!1912047 (not e!1912044))))

(declare-fun res!1253771 () Bool)

(assert (=> b!3052179 (=> res!1253771 e!1912044)))

(declare-fun lt!1048511 () Bool)

(get-info :version)

(assert (=> b!3052179 (= res!1253771 (or (not lt!1048511) ((_ is Concat!14782) r!17423) ((_ is Union!9461) r!17423) (not ((_ is Star!9461) r!17423))))))

(declare-fun matchRSpec!1598 (Regex!9461 List!35326) Bool)

(assert (=> b!3052179 (= lt!1048511 (matchRSpec!1598 r!17423 s!11993))))

(assert (=> b!3052179 (= lt!1048511 (matchR!4343 r!17423 s!11993))))

(declare-fun lt!1048504 () Unit!49359)

(assert (=> b!3052179 (= lt!1048504 (mainMatchTheorem!1598 r!17423 s!11993))))

(declare-fun b!3052180 () Bool)

(declare-fun res!1253768 () Bool)

(assert (=> b!3052180 (=> res!1253768 e!1912050)))

(assert (=> b!3052180 (= res!1253768 (not (matchR!4343 lt!1048508 (_2!20206 lt!1048505))))))

(declare-fun e!1912051 () Bool)

(assert (=> b!3052181 (= e!1912044 e!1912051)))

(declare-fun res!1253775 () Bool)

(assert (=> b!3052181 (=> res!1253775 e!1912051)))

(declare-fun lt!1048507 () Bool)

(assert (=> b!3052181 (= res!1253775 (not lt!1048507))))

(declare-fun Exists!1725 (Int) Bool)

(assert (=> b!3052181 (= (Exists!1725 lambda!113699) (Exists!1725 lambda!113700))))

(declare-fun lt!1048498 () Unit!49359)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!342 (Regex!9461 List!35326) Unit!49359)

(assert (=> b!3052181 (= lt!1048498 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!342 (reg!9790 r!17423) s!11993))))

(assert (=> b!3052181 (= lt!1048507 (Exists!1725 lambda!113699))))

(declare-datatypes ((Option!6806 0))(
  ( (None!6805) (Some!6805 (v!34939 tuple2!34148)) )
))
(declare-fun lt!1048501 () Option!6806)

(declare-fun isDefined!5357 (Option!6806) Bool)

(assert (=> b!3052181 (= lt!1048507 (isDefined!5357 lt!1048501))))

(declare-fun findConcatSeparation!1200 (Regex!9461 Regex!9461 List!35326 List!35326 List!35326) Option!6806)

(assert (=> b!3052181 (= lt!1048501 (findConcatSeparation!1200 (reg!9790 r!17423) lt!1048506 Nil!35202 s!11993 s!11993))))

(declare-fun lt!1048499 () Unit!49359)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!978 (Regex!9461 Regex!9461 List!35326) Unit!49359)

(assert (=> b!3052181 (= lt!1048499 (lemmaFindConcatSeparationEquivalentToExists!978 (reg!9790 r!17423) lt!1048506 s!11993))))

(assert (=> b!3052181 (= lt!1048506 (Star!9461 (reg!9790 r!17423)))))

(declare-fun b!3052172 () Bool)

(declare-fun simplify!416 (Regex!9461) Regex!9461)

(assert (=> b!3052172 (= e!1912050 (matchR!4343 (simplify!416 r!17423) s!11993))))

(declare-fun ++!8450 (List!35326 List!35326) List!35326)

(assert (=> b!3052172 (matchR!4343 lt!1048508 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))

(declare-fun lt!1048512 () Unit!49359)

(declare-fun lt!1048500 () Regex!9461)

(declare-fun lemmaStarApp!24 (Regex!9461 List!35326 List!35326) Unit!49359)

(assert (=> b!3052172 (= lt!1048512 (lemmaStarApp!24 lt!1048500 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))

(declare-fun res!1253770 () Bool)

(assert (=> start!291660 (=> (not res!1253770) (not e!1912047))))

(assert (=> start!291660 (= res!1253770 (validRegex!4194 r!17423))))

(assert (=> start!291660 e!1912047))

(assert (=> start!291660 e!1912048))

(declare-fun e!1912045 () Bool)

(assert (=> start!291660 e!1912045))

(declare-fun b!3052182 () Bool)

(declare-fun tp!965873 () Bool)

(assert (=> b!3052182 (= e!1912045 (and tp_is_empty!16485 tp!965873))))

(declare-fun b!3052183 () Bool)

(assert (=> b!3052183 (= e!1912049 e!1912050)))

(declare-fun res!1253774 () Bool)

(assert (=> b!3052183 (=> res!1253774 e!1912050)))

(declare-fun lt!1048510 () Regex!9461)

(assert (=> b!3052183 (= res!1253774 (not (= lt!1048510 lt!1048508)))))

(assert (=> b!3052183 (= lt!1048508 (Star!9461 lt!1048500))))

(assert (=> b!3052183 (matchR!4343 lt!1048510 (_2!20206 lt!1048505))))

(assert (=> b!3052183 (= lt!1048510 (simplify!416 lt!1048506))))

(declare-fun lt!1048503 () Unit!49359)

(declare-fun lemmaSimplifySound!262 (Regex!9461 List!35326) Unit!49359)

(assert (=> b!3052183 (= lt!1048503 (lemmaSimplifySound!262 lt!1048506 (_2!20206 lt!1048505)))))

(declare-fun lt!1048502 () Unit!49359)

(assert (=> b!3052183 (= lt!1048502 e!1912046)))

(declare-fun c!505858 () Bool)

(declare-fun size!26545 (List!35326) Int)

(assert (=> b!3052183 (= c!505858 (= (size!26545 (_2!20206 lt!1048505)) (size!26545 s!11993)))))

(assert (=> b!3052183 (matchR!4343 lt!1048500 (_1!20206 lt!1048505))))

(assert (=> b!3052183 (= lt!1048500 (simplify!416 (reg!9790 r!17423)))))

(declare-fun lt!1048509 () Unit!49359)

(assert (=> b!3052183 (= lt!1048509 (lemmaSimplifySound!262 (reg!9790 r!17423) (_1!20206 lt!1048505)))))

(declare-fun b!3052184 () Bool)

(declare-fun tp!965868 () Bool)

(assert (=> b!3052184 (= e!1912048 tp!965868)))

(declare-fun b!3052185 () Bool)

(assert (=> b!3052185 (= e!1912051 e!1912049)))

(declare-fun res!1253769 () Bool)

(assert (=> b!3052185 (=> res!1253769 e!1912049)))

(assert (=> b!3052185 (= res!1253769 (not (matchR!4343 (reg!9790 r!17423) (_1!20206 lt!1048505))))))

(declare-fun get!11003 (Option!6806) tuple2!34148)

(assert (=> b!3052185 (= lt!1048505 (get!11003 lt!1048501))))

(assert (= (and start!291660 res!1253770) b!3052179))

(assert (= (and b!3052179 (not res!1253771)) b!3052176))

(assert (= (and b!3052176 (not res!1253772)) b!3052181))

(assert (= (and b!3052181 (not res!1253775)) b!3052185))

(assert (= (and b!3052185 (not res!1253769)) b!3052171))

(assert (= (and b!3052171 (not res!1253773)) b!3052183))

(assert (= (and b!3052183 c!505858) b!3052177))

(assert (= (and b!3052183 (not c!505858)) b!3052174))

(assert (= (and b!3052183 (not res!1253774)) b!3052180))

(assert (= (and b!3052180 (not res!1253768)) b!3052173))

(assert (= (and b!3052173 (not res!1253776)) b!3052172))

(assert (= (and start!291660 ((_ is ElementMatch!9461) r!17423)) b!3052178))

(assert (= (and start!291660 ((_ is Concat!14782) r!17423)) b!3052170))

(assert (= (and start!291660 ((_ is Star!9461) r!17423)) b!3052184))

(assert (= (and start!291660 ((_ is Union!9461) r!17423)) b!3052175))

(assert (= (and start!291660 ((_ is Cons!35202) s!11993)) b!3052182))

(declare-fun m!3378437 () Bool)

(assert (=> b!3052171 m!3378437))

(declare-fun m!3378439 () Bool)

(assert (=> b!3052176 m!3378439))

(declare-fun m!3378441 () Bool)

(assert (=> b!3052183 m!3378441))

(declare-fun m!3378443 () Bool)

(assert (=> b!3052183 m!3378443))

(declare-fun m!3378445 () Bool)

(assert (=> b!3052183 m!3378445))

(declare-fun m!3378447 () Bool)

(assert (=> b!3052183 m!3378447))

(declare-fun m!3378449 () Bool)

(assert (=> b!3052183 m!3378449))

(declare-fun m!3378451 () Bool)

(assert (=> b!3052183 m!3378451))

(declare-fun m!3378453 () Bool)

(assert (=> b!3052183 m!3378453))

(declare-fun m!3378455 () Bool)

(assert (=> b!3052183 m!3378455))

(declare-fun m!3378457 () Bool)

(assert (=> b!3052181 m!3378457))

(declare-fun m!3378459 () Bool)

(assert (=> b!3052181 m!3378459))

(declare-fun m!3378461 () Bool)

(assert (=> b!3052181 m!3378461))

(declare-fun m!3378463 () Bool)

(assert (=> b!3052181 m!3378463))

(declare-fun m!3378465 () Bool)

(assert (=> b!3052181 m!3378465))

(declare-fun m!3378467 () Bool)

(assert (=> b!3052181 m!3378467))

(assert (=> b!3052181 m!3378457))

(declare-fun m!3378469 () Bool)

(assert (=> b!3052173 m!3378469))

(declare-fun m!3378471 () Bool)

(assert (=> b!3052180 m!3378471))

(declare-fun m!3378473 () Bool)

(assert (=> b!3052177 m!3378473))

(declare-fun m!3378475 () Bool)

(assert (=> start!291660 m!3378475))

(declare-fun m!3378477 () Bool)

(assert (=> b!3052185 m!3378477))

(declare-fun m!3378479 () Bool)

(assert (=> b!3052185 m!3378479))

(declare-fun m!3378481 () Bool)

(assert (=> b!3052179 m!3378481))

(declare-fun m!3378483 () Bool)

(assert (=> b!3052179 m!3378483))

(declare-fun m!3378485 () Bool)

(assert (=> b!3052179 m!3378485))

(declare-fun m!3378487 () Bool)

(assert (=> b!3052172 m!3378487))

(declare-fun m!3378489 () Bool)

(assert (=> b!3052172 m!3378489))

(declare-fun m!3378491 () Bool)

(assert (=> b!3052172 m!3378491))

(declare-fun m!3378493 () Bool)

(assert (=> b!3052172 m!3378493))

(assert (=> b!3052172 m!3378487))

(assert (=> b!3052172 m!3378493))

(declare-fun m!3378495 () Bool)

(assert (=> b!3052172 m!3378495))

(check-sat (not b!3052183) (not b!3052182) (not b!3052175) (not b!3052171) (not b!3052170) (not b!3052185) (not b!3052181) (not b!3052173) (not b!3052177) (not b!3052179) (not b!3052180) tp_is_empty!16485 (not b!3052176) (not start!291660) (not b!3052184) (not b!3052172))
(check-sat)
(get-model)

(declare-fun b!3052289 () Bool)

(declare-fun res!1253835 () Bool)

(declare-fun e!1912110 () Bool)

(assert (=> b!3052289 (=> res!1253835 e!1912110)))

(assert (=> b!3052289 (= res!1253835 (not ((_ is ElementMatch!9461) lt!1048506)))))

(declare-fun e!1912109 () Bool)

(assert (=> b!3052289 (= e!1912109 e!1912110)))

(declare-fun b!3052290 () Bool)

(declare-fun res!1253831 () Bool)

(assert (=> b!3052290 (=> res!1253831 e!1912110)))

(declare-fun e!1912105 () Bool)

(assert (=> b!3052290 (= res!1253831 e!1912105)))

(declare-fun res!1253832 () Bool)

(assert (=> b!3052290 (=> (not res!1253832) (not e!1912105))))

(declare-fun lt!1048517 () Bool)

(assert (=> b!3052290 (= res!1253832 lt!1048517)))

(declare-fun bm!210232 () Bool)

(declare-fun call!210237 () Bool)

(assert (=> bm!210232 (= call!210237 (isEmpty!19515 (_2!20206 lt!1048505)))))

(declare-fun b!3052291 () Bool)

(declare-fun e!1912111 () Bool)

(assert (=> b!3052291 (= e!1912111 e!1912109)))

(declare-fun c!505885 () Bool)

(assert (=> b!3052291 (= c!505885 ((_ is EmptyLang!9461) lt!1048506))))

(declare-fun b!3052292 () Bool)

(declare-fun head!6763 (List!35326) C!19108)

(assert (=> b!3052292 (= e!1912105 (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048506)))))

(declare-fun b!3052293 () Bool)

(declare-fun res!1253829 () Bool)

(declare-fun e!1912106 () Bool)

(assert (=> b!3052293 (=> res!1253829 e!1912106)))

(declare-fun tail!4989 (List!35326) List!35326)

(assert (=> b!3052293 (= res!1253829 (not (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505)))))))

(declare-fun d!854532 () Bool)

(assert (=> d!854532 e!1912111))

(declare-fun c!505884 () Bool)

(assert (=> d!854532 (= c!505884 ((_ is EmptyExpr!9461) lt!1048506))))

(declare-fun e!1912108 () Bool)

(assert (=> d!854532 (= lt!1048517 e!1912108)))

(declare-fun c!505886 () Bool)

(assert (=> d!854532 (= c!505886 (isEmpty!19515 (_2!20206 lt!1048505)))))

(assert (=> d!854532 (validRegex!4194 lt!1048506)))

(assert (=> d!854532 (= (matchR!4343 lt!1048506 (_2!20206 lt!1048505)) lt!1048517)))

(declare-fun b!3052294 () Bool)

(declare-fun e!1912107 () Bool)

(assert (=> b!3052294 (= e!1912107 e!1912106)))

(declare-fun res!1253833 () Bool)

(assert (=> b!3052294 (=> res!1253833 e!1912106)))

(assert (=> b!3052294 (= res!1253833 call!210237)))

(declare-fun b!3052295 () Bool)

(declare-fun nullable!3107 (Regex!9461) Bool)

(assert (=> b!3052295 (= e!1912108 (nullable!3107 lt!1048506))))

(declare-fun b!3052296 () Bool)

(declare-fun res!1253828 () Bool)

(assert (=> b!3052296 (=> (not res!1253828) (not e!1912105))))

(assert (=> b!3052296 (= res!1253828 (not call!210237))))

(declare-fun b!3052297 () Bool)

(assert (=> b!3052297 (= e!1912111 (= lt!1048517 call!210237))))

(declare-fun b!3052298 () Bool)

(declare-fun res!1253830 () Bool)

(assert (=> b!3052298 (=> (not res!1253830) (not e!1912105))))

(assert (=> b!3052298 (= res!1253830 (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3052299 () Bool)

(assert (=> b!3052299 (= e!1912106 (not (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048506))))))

(declare-fun b!3052300 () Bool)

(declare-fun derivativeStep!2704 (Regex!9461 C!19108) Regex!9461)

(assert (=> b!3052300 (= e!1912108 (matchR!4343 (derivativeStep!2704 lt!1048506 (head!6763 (_2!20206 lt!1048505))) (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3052301 () Bool)

(assert (=> b!3052301 (= e!1912109 (not lt!1048517))))

(declare-fun b!3052302 () Bool)

(assert (=> b!3052302 (= e!1912110 e!1912107)))

(declare-fun res!1253834 () Bool)

(assert (=> b!3052302 (=> (not res!1253834) (not e!1912107))))

(assert (=> b!3052302 (= res!1253834 (not lt!1048517))))

(assert (= (and d!854532 c!505886) b!3052295))

(assert (= (and d!854532 (not c!505886)) b!3052300))

(assert (= (and d!854532 c!505884) b!3052297))

(assert (= (and d!854532 (not c!505884)) b!3052291))

(assert (= (and b!3052291 c!505885) b!3052301))

(assert (= (and b!3052291 (not c!505885)) b!3052289))

(assert (= (and b!3052289 (not res!1253835)) b!3052290))

(assert (= (and b!3052290 res!1253832) b!3052296))

(assert (= (and b!3052296 res!1253828) b!3052298))

(assert (= (and b!3052298 res!1253830) b!3052292))

(assert (= (and b!3052290 (not res!1253831)) b!3052302))

(assert (= (and b!3052302 res!1253834) b!3052294))

(assert (= (and b!3052294 (not res!1253833)) b!3052293))

(assert (= (and b!3052293 (not res!1253829)) b!3052299))

(assert (= (or b!3052297 b!3052294 b!3052296) bm!210232))

(declare-fun m!3378515 () Bool)

(assert (=> b!3052292 m!3378515))

(declare-fun m!3378517 () Bool)

(assert (=> b!3052293 m!3378517))

(assert (=> b!3052293 m!3378517))

(declare-fun m!3378519 () Bool)

(assert (=> b!3052293 m!3378519))

(declare-fun m!3378521 () Bool)

(assert (=> d!854532 m!3378521))

(declare-fun m!3378523 () Bool)

(assert (=> d!854532 m!3378523))

(assert (=> b!3052300 m!3378515))

(assert (=> b!3052300 m!3378515))

(declare-fun m!3378525 () Bool)

(assert (=> b!3052300 m!3378525))

(assert (=> b!3052300 m!3378517))

(assert (=> b!3052300 m!3378525))

(assert (=> b!3052300 m!3378517))

(declare-fun m!3378527 () Bool)

(assert (=> b!3052300 m!3378527))

(declare-fun m!3378529 () Bool)

(assert (=> b!3052295 m!3378529))

(assert (=> b!3052299 m!3378515))

(assert (=> b!3052298 m!3378517))

(assert (=> b!3052298 m!3378517))

(assert (=> b!3052298 m!3378519))

(assert (=> bm!210232 m!3378521))

(assert (=> b!3052171 d!854532))

(declare-fun d!854538 () Bool)

(assert (=> d!854538 (= (isEmpty!19515 s!11993) ((_ is Nil!35202) s!11993))))

(assert (=> b!3052176 d!854538))

(declare-fun bs!532333 () Bool)

(declare-fun d!854540 () Bool)

(assert (= bs!532333 (and d!854540 b!3052181)))

(declare-fun lambda!113709 () Int)

(assert (=> bs!532333 (= lambda!113709 lambda!113699)))

(assert (=> bs!532333 (not (= lambda!113709 lambda!113700))))

(assert (=> d!854540 true))

(assert (=> d!854540 true))

(assert (=> d!854540 true))

(assert (=> d!854540 (= (isDefined!5357 (findConcatSeparation!1200 (reg!9790 r!17423) lt!1048506 Nil!35202 s!11993 s!11993)) (Exists!1725 lambda!113709))))

(declare-fun lt!1048532 () Unit!49359)

(declare-fun choose!18083 (Regex!9461 Regex!9461 List!35326) Unit!49359)

(assert (=> d!854540 (= lt!1048532 (choose!18083 (reg!9790 r!17423) lt!1048506 s!11993))))

(assert (=> d!854540 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854540 (= (lemmaFindConcatSeparationEquivalentToExists!978 (reg!9790 r!17423) lt!1048506 s!11993) lt!1048532)))

(declare-fun bs!532334 () Bool)

(assert (= bs!532334 d!854540))

(assert (=> bs!532334 m!3378467))

(declare-fun m!3378581 () Bool)

(assert (=> bs!532334 m!3378581))

(declare-fun m!3378583 () Bool)

(assert (=> bs!532334 m!3378583))

(assert (=> bs!532334 m!3378467))

(declare-fun m!3378585 () Bool)

(assert (=> bs!532334 m!3378585))

(declare-fun m!3378587 () Bool)

(assert (=> bs!532334 m!3378587))

(assert (=> b!3052181 d!854540))

(declare-fun d!854552 () Bool)

(declare-fun isEmpty!19516 (Option!6806) Bool)

(assert (=> d!854552 (= (isDefined!5357 lt!1048501) (not (isEmpty!19516 lt!1048501)))))

(declare-fun bs!532335 () Bool)

(assert (= bs!532335 d!854552))

(declare-fun m!3378589 () Bool)

(assert (=> bs!532335 m!3378589))

(assert (=> b!3052181 d!854552))

(declare-fun bs!532337 () Bool)

(declare-fun d!854554 () Bool)

(assert (= bs!532337 (and d!854554 b!3052181)))

(declare-fun lambda!113714 () Int)

(assert (=> bs!532337 (= (= (Star!9461 (reg!9790 r!17423)) lt!1048506) (= lambda!113714 lambda!113699))))

(assert (=> bs!532337 (not (= lambda!113714 lambda!113700))))

(declare-fun bs!532338 () Bool)

(assert (= bs!532338 (and d!854554 d!854540)))

(assert (=> bs!532338 (= (= (Star!9461 (reg!9790 r!17423)) lt!1048506) (= lambda!113714 lambda!113709))))

(assert (=> d!854554 true))

(assert (=> d!854554 true))

(declare-fun lambda!113715 () Int)

(assert (=> bs!532337 (not (= lambda!113715 lambda!113699))))

(assert (=> bs!532337 (= (= (Star!9461 (reg!9790 r!17423)) lt!1048506) (= lambda!113715 lambda!113700))))

(assert (=> bs!532338 (not (= lambda!113715 lambda!113709))))

(declare-fun bs!532341 () Bool)

(assert (= bs!532341 d!854554))

(assert (=> bs!532341 (not (= lambda!113715 lambda!113714))))

(assert (=> d!854554 true))

(assert (=> d!854554 true))

(assert (=> d!854554 (= (Exists!1725 lambda!113714) (Exists!1725 lambda!113715))))

(declare-fun lt!1048574 () Unit!49359)

(declare-fun choose!18084 (Regex!9461 List!35326) Unit!49359)

(assert (=> d!854554 (= lt!1048574 (choose!18084 (reg!9790 r!17423) s!11993))))

(assert (=> d!854554 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854554 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!342 (reg!9790 r!17423) s!11993) lt!1048574)))

(declare-fun m!3378695 () Bool)

(assert (=> bs!532341 m!3378695))

(declare-fun m!3378697 () Bool)

(assert (=> bs!532341 m!3378697))

(declare-fun m!3378699 () Bool)

(assert (=> bs!532341 m!3378699))

(assert (=> bs!532341 m!3378583))

(assert (=> b!3052181 d!854554))

(declare-fun d!854582 () Bool)

(declare-fun choose!18085 (Int) Bool)

(assert (=> d!854582 (= (Exists!1725 lambda!113699) (choose!18085 lambda!113699))))

(declare-fun bs!532342 () Bool)

(assert (= bs!532342 d!854582))

(declare-fun m!3378701 () Bool)

(assert (=> bs!532342 m!3378701))

(assert (=> b!3052181 d!854582))

(declare-fun b!3052615 () Bool)

(declare-fun res!1253964 () Bool)

(declare-fun e!1912278 () Bool)

(assert (=> b!3052615 (=> (not res!1253964) (not e!1912278))))

(declare-fun lt!1048597 () Option!6806)

(assert (=> b!3052615 (= res!1253964 (matchR!4343 (reg!9790 r!17423) (_1!20206 (get!11003 lt!1048597))))))

(declare-fun b!3052616 () Bool)

(declare-fun e!1912277 () Option!6806)

(assert (=> b!3052616 (= e!1912277 None!6805)))

(declare-fun b!3052617 () Bool)

(assert (=> b!3052617 (= e!1912278 (= (++!8450 (_1!20206 (get!11003 lt!1048597)) (_2!20206 (get!11003 lt!1048597))) s!11993))))

(declare-fun d!854584 () Bool)

(declare-fun e!1912276 () Bool)

(assert (=> d!854584 e!1912276))

(declare-fun res!1253962 () Bool)

(assert (=> d!854584 (=> res!1253962 e!1912276)))

(assert (=> d!854584 (= res!1253962 e!1912278)))

(declare-fun res!1253965 () Bool)

(assert (=> d!854584 (=> (not res!1253965) (not e!1912278))))

(assert (=> d!854584 (= res!1253965 (isDefined!5357 lt!1048597))))

(declare-fun e!1912279 () Option!6806)

(assert (=> d!854584 (= lt!1048597 e!1912279)))

(declare-fun c!505981 () Bool)

(declare-fun e!1912280 () Bool)

(assert (=> d!854584 (= c!505981 e!1912280)))

(declare-fun res!1253966 () Bool)

(assert (=> d!854584 (=> (not res!1253966) (not e!1912280))))

(assert (=> d!854584 (= res!1253966 (matchR!4343 (reg!9790 r!17423) Nil!35202))))

(assert (=> d!854584 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854584 (= (findConcatSeparation!1200 (reg!9790 r!17423) lt!1048506 Nil!35202 s!11993 s!11993) lt!1048597)))

(declare-fun b!3052618 () Bool)

(assert (=> b!3052618 (= e!1912279 e!1912277)))

(declare-fun c!505980 () Bool)

(assert (=> b!3052618 (= c!505980 ((_ is Nil!35202) s!11993))))

(declare-fun b!3052619 () Bool)

(assert (=> b!3052619 (= e!1912280 (matchR!4343 lt!1048506 s!11993))))

(declare-fun b!3052620 () Bool)

(assert (=> b!3052620 (= e!1912279 (Some!6805 (tuple2!34149 Nil!35202 s!11993)))))

(declare-fun b!3052621 () Bool)

(declare-fun res!1253963 () Bool)

(assert (=> b!3052621 (=> (not res!1253963) (not e!1912278))))

(assert (=> b!3052621 (= res!1253963 (matchR!4343 lt!1048506 (_2!20206 (get!11003 lt!1048597))))))

(declare-fun b!3052622 () Bool)

(assert (=> b!3052622 (= e!1912276 (not (isDefined!5357 lt!1048597)))))

(declare-fun b!3052623 () Bool)

(declare-fun lt!1048598 () Unit!49359)

(declare-fun lt!1048599 () Unit!49359)

(assert (=> b!3052623 (= lt!1048598 lt!1048599)))

(assert (=> b!3052623 (= (++!8450 (++!8450 Nil!35202 (Cons!35202 (h!40622 s!11993) Nil!35202)) (t!234391 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1056 (List!35326 C!19108 List!35326 List!35326) Unit!49359)

(assert (=> b!3052623 (= lt!1048599 (lemmaMoveElementToOtherListKeepsConcatEq!1056 Nil!35202 (h!40622 s!11993) (t!234391 s!11993) s!11993))))

(assert (=> b!3052623 (= e!1912277 (findConcatSeparation!1200 (reg!9790 r!17423) lt!1048506 (++!8450 Nil!35202 (Cons!35202 (h!40622 s!11993) Nil!35202)) (t!234391 s!11993) s!11993))))

(assert (= (and d!854584 res!1253966) b!3052619))

(assert (= (and d!854584 c!505981) b!3052620))

(assert (= (and d!854584 (not c!505981)) b!3052618))

(assert (= (and b!3052618 c!505980) b!3052616))

(assert (= (and b!3052618 (not c!505980)) b!3052623))

(assert (= (and d!854584 res!1253965) b!3052615))

(assert (= (and b!3052615 res!1253964) b!3052621))

(assert (= (and b!3052621 res!1253963) b!3052617))

(assert (= (and d!854584 (not res!1253962)) b!3052622))

(declare-fun m!3378731 () Bool)

(assert (=> b!3052619 m!3378731))

(declare-fun m!3378733 () Bool)

(assert (=> d!854584 m!3378733))

(declare-fun m!3378735 () Bool)

(assert (=> d!854584 m!3378735))

(assert (=> d!854584 m!3378583))

(assert (=> b!3052622 m!3378733))

(declare-fun m!3378737 () Bool)

(assert (=> b!3052617 m!3378737))

(declare-fun m!3378739 () Bool)

(assert (=> b!3052617 m!3378739))

(assert (=> b!3052621 m!3378737))

(declare-fun m!3378741 () Bool)

(assert (=> b!3052621 m!3378741))

(assert (=> b!3052615 m!3378737))

(declare-fun m!3378743 () Bool)

(assert (=> b!3052615 m!3378743))

(declare-fun m!3378745 () Bool)

(assert (=> b!3052623 m!3378745))

(assert (=> b!3052623 m!3378745))

(declare-fun m!3378747 () Bool)

(assert (=> b!3052623 m!3378747))

(declare-fun m!3378749 () Bool)

(assert (=> b!3052623 m!3378749))

(assert (=> b!3052623 m!3378745))

(declare-fun m!3378751 () Bool)

(assert (=> b!3052623 m!3378751))

(assert (=> b!3052181 d!854584))

(declare-fun d!854590 () Bool)

(assert (=> d!854590 (= (Exists!1725 lambda!113700) (choose!18085 lambda!113700))))

(declare-fun bs!532347 () Bool)

(assert (= bs!532347 d!854590))

(declare-fun m!3378753 () Bool)

(assert (=> bs!532347 m!3378753))

(assert (=> b!3052181 d!854590))

(declare-fun d!854592 () Bool)

(assert (=> d!854592 (= (matchR!4343 lt!1048506 (_2!20206 lt!1048505)) (matchR!4343 (simplify!416 lt!1048506) (_2!20206 lt!1048505)))))

(declare-fun lt!1048605 () Unit!49359)

(declare-fun choose!18086 (Regex!9461 List!35326) Unit!49359)

(assert (=> d!854592 (= lt!1048605 (choose!18086 lt!1048506 (_2!20206 lt!1048505)))))

(assert (=> d!854592 (validRegex!4194 lt!1048506)))

(assert (=> d!854592 (= (lemmaSimplifySound!262 lt!1048506 (_2!20206 lt!1048505)) lt!1048605)))

(declare-fun bs!532352 () Bool)

(assert (= bs!532352 d!854592))

(assert (=> bs!532352 m!3378447))

(declare-fun m!3378755 () Bool)

(assert (=> bs!532352 m!3378755))

(assert (=> bs!532352 m!3378523))

(assert (=> bs!532352 m!3378437))

(declare-fun m!3378759 () Bool)

(assert (=> bs!532352 m!3378759))

(assert (=> bs!532352 m!3378447))

(assert (=> b!3052183 d!854592))

(declare-fun b!3052763 () Bool)

(declare-fun e!1912365 () Regex!9461)

(declare-fun lt!1048624 () Regex!9461)

(assert (=> b!3052763 (= e!1912365 lt!1048624)))

(declare-fun b!3052764 () Bool)

(declare-fun c!506023 () Bool)

(declare-fun call!210312 () Bool)

(assert (=> b!3052764 (= c!506023 call!210312)))

(declare-fun e!1912357 () Regex!9461)

(assert (=> b!3052764 (= e!1912357 e!1912365)))

(declare-fun b!3052765 () Bool)

(declare-fun lt!1048621 () Regex!9461)

(assert (=> b!3052765 (= e!1912357 lt!1048621)))

(declare-fun b!3052766 () Bool)

(declare-fun c!506021 () Bool)

(assert (=> b!3052766 (= c!506021 ((_ is EmptyExpr!9461) (reg!9790 r!17423)))))

(declare-fun e!1912368 () Regex!9461)

(declare-fun e!1912369 () Regex!9461)

(assert (=> b!3052766 (= e!1912368 e!1912369)))

(declare-fun lt!1048620 () Regex!9461)

(declare-fun bm!210302 () Bool)

(declare-fun c!506022 () Bool)

(declare-fun call!210310 () Bool)

(declare-fun lt!1048619 () Regex!9461)

(declare-fun isEmptyExpr!518 (Regex!9461) Bool)

(assert (=> bm!210302 (= call!210310 (isEmptyExpr!518 (ite c!506022 lt!1048620 lt!1048619)))))

(declare-fun b!3052767 () Bool)

(declare-fun c!506019 () Bool)

(assert (=> b!3052767 (= c!506019 ((_ is Union!9461) (reg!9790 r!17423)))))

(declare-fun e!1912366 () Regex!9461)

(declare-fun e!1912359 () Regex!9461)

(assert (=> b!3052767 (= e!1912366 e!1912359)))

(declare-fun b!3052768 () Bool)

(declare-fun c!506016 () Bool)

(declare-fun lt!1048623 () Regex!9461)

(assert (=> b!3052768 (= c!506016 (isEmptyExpr!518 lt!1048623))))

(declare-fun e!1912358 () Regex!9461)

(declare-fun e!1912360 () Regex!9461)

(assert (=> b!3052768 (= e!1912358 e!1912360)))

(declare-fun b!3052769 () Bool)

(declare-fun e!1912356 () Regex!9461)

(assert (=> b!3052769 (= e!1912356 lt!1048623)))

(declare-fun b!3052770 () Bool)

(declare-fun e!1912367 () Bool)

(declare-fun lt!1048622 () Regex!9461)

(assert (=> b!3052770 (= e!1912367 (= (nullable!3107 lt!1048622) (nullable!3107 (reg!9790 r!17423))))))

(declare-fun b!3052771 () Bool)

(assert (=> b!3052771 (= e!1912360 e!1912356)))

(declare-fun c!506015 () Bool)

(assert (=> b!3052771 (= c!506015 call!210310)))

(declare-fun bm!210303 () Bool)

(declare-fun call!210313 () Regex!9461)

(assert (=> bm!210303 (= call!210313 (simplify!416 (ite c!506022 (reg!9790 (reg!9790 r!17423)) (ite c!506019 (regTwo!19435 (reg!9790 r!17423)) (regOne!19434 (reg!9790 r!17423))))))))

(declare-fun b!3052772 () Bool)

(assert (=> b!3052772 (= e!1912359 e!1912357)))

(declare-fun call!210308 () Regex!9461)

(assert (=> b!3052772 (= lt!1048624 call!210308)))

(declare-fun call!210309 () Regex!9461)

(assert (=> b!3052772 (= lt!1048621 call!210309)))

(declare-fun c!506017 () Bool)

(declare-fun call!210307 () Bool)

(assert (=> b!3052772 (= c!506017 call!210307)))

(declare-fun bm!210304 () Bool)

(declare-fun call!210311 () Bool)

(assert (=> bm!210304 (= call!210307 call!210311)))

(declare-fun b!3052774 () Bool)

(declare-fun e!1912363 () Regex!9461)

(assert (=> b!3052774 (= e!1912363 e!1912368)))

(declare-fun c!506020 () Bool)

(assert (=> b!3052774 (= c!506020 ((_ is ElementMatch!9461) (reg!9790 r!17423)))))

(declare-fun b!3052775 () Bool)

(assert (=> b!3052775 (= e!1912363 EmptyLang!9461)))

(declare-fun b!3052776 () Bool)

(assert (=> b!3052776 (= e!1912369 e!1912366)))

(assert (=> b!3052776 (= c!506022 ((_ is Star!9461) (reg!9790 r!17423)))))

(declare-fun b!3052777 () Bool)

(assert (=> b!3052777 (= e!1912369 EmptyExpr!9461)))

(declare-fun b!3052778 () Bool)

(assert (=> b!3052778 (= e!1912368 (reg!9790 r!17423))))

(declare-fun b!3052779 () Bool)

(assert (=> b!3052779 (= e!1912359 e!1912358)))

(assert (=> b!3052779 (= lt!1048623 call!210309)))

(assert (=> b!3052779 (= lt!1048619 call!210308)))

(declare-fun res!1254006 () Bool)

(assert (=> b!3052779 (= res!1254006 call!210307)))

(declare-fun e!1912364 () Bool)

(assert (=> b!3052779 (=> res!1254006 e!1912364)))

(declare-fun c!506024 () Bool)

(assert (=> b!3052779 (= c!506024 e!1912364)))

(declare-fun b!3052780 () Bool)

(declare-fun e!1912361 () Regex!9461)

(assert (=> b!3052780 (= e!1912361 EmptyExpr!9461)))

(declare-fun b!3052781 () Bool)

(assert (=> b!3052781 (= e!1912358 EmptyLang!9461)))

(declare-fun bm!210305 () Bool)

(assert (=> bm!210305 (= call!210308 (simplify!416 (ite c!506019 (regOne!19435 (reg!9790 r!17423)) (regTwo!19434 (reg!9790 r!17423)))))))

(declare-fun b!3052782 () Bool)

(assert (=> b!3052782 (= e!1912356 (Concat!14782 lt!1048623 lt!1048619))))

(declare-fun b!3052783 () Bool)

(declare-fun e!1912362 () Bool)

(assert (=> b!3052783 (= e!1912362 call!210310)))

(declare-fun b!3052784 () Bool)

(assert (=> b!3052784 (= e!1912365 (Union!9461 lt!1048624 lt!1048621))))

(declare-fun b!3052785 () Bool)

(assert (=> b!3052785 (= e!1912364 call!210312)))

(declare-fun b!3052786 () Bool)

(declare-fun c!506018 () Bool)

(assert (=> b!3052786 (= c!506018 e!1912362)))

(declare-fun res!1254007 () Bool)

(assert (=> b!3052786 (=> res!1254007 e!1912362)))

(assert (=> b!3052786 (= res!1254007 call!210311)))

(assert (=> b!3052786 (= lt!1048620 call!210313)))

(assert (=> b!3052786 (= e!1912366 e!1912361)))

(declare-fun bm!210306 () Bool)

(assert (=> bm!210306 (= call!210309 call!210313)))

(declare-fun b!3052787 () Bool)

(assert (=> b!3052787 (= e!1912360 lt!1048619)))

(declare-fun bm!210307 () Bool)

(declare-fun isEmptyLang!512 (Regex!9461) Bool)

(assert (=> bm!210307 (= call!210312 (isEmptyLang!512 (ite c!506019 lt!1048621 lt!1048619)))))

(declare-fun bm!210308 () Bool)

(assert (=> bm!210308 (= call!210311 (isEmptyLang!512 (ite c!506022 lt!1048620 (ite c!506019 lt!1048624 lt!1048623))))))

(declare-fun b!3052773 () Bool)

(assert (=> b!3052773 (= e!1912361 (Star!9461 lt!1048620))))

(declare-fun d!854594 () Bool)

(assert (=> d!854594 e!1912367))

(declare-fun res!1254005 () Bool)

(assert (=> d!854594 (=> (not res!1254005) (not e!1912367))))

(assert (=> d!854594 (= res!1254005 (validRegex!4194 lt!1048622))))

(assert (=> d!854594 (= lt!1048622 e!1912363)))

(declare-fun c!506025 () Bool)

(assert (=> d!854594 (= c!506025 ((_ is EmptyLang!9461) (reg!9790 r!17423)))))

(assert (=> d!854594 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854594 (= (simplify!416 (reg!9790 r!17423)) lt!1048622)))

(assert (= (and d!854594 c!506025) b!3052775))

(assert (= (and d!854594 (not c!506025)) b!3052774))

(assert (= (and b!3052774 c!506020) b!3052778))

(assert (= (and b!3052774 (not c!506020)) b!3052766))

(assert (= (and b!3052766 c!506021) b!3052777))

(assert (= (and b!3052766 (not c!506021)) b!3052776))

(assert (= (and b!3052776 c!506022) b!3052786))

(assert (= (and b!3052776 (not c!506022)) b!3052767))

(assert (= (and b!3052786 (not res!1254007)) b!3052783))

(assert (= (and b!3052786 c!506018) b!3052780))

(assert (= (and b!3052786 (not c!506018)) b!3052773))

(assert (= (and b!3052767 c!506019) b!3052772))

(assert (= (and b!3052767 (not c!506019)) b!3052779))

(assert (= (and b!3052772 c!506017) b!3052765))

(assert (= (and b!3052772 (not c!506017)) b!3052764))

(assert (= (and b!3052764 c!506023) b!3052763))

(assert (= (and b!3052764 (not c!506023)) b!3052784))

(assert (= (and b!3052779 (not res!1254006)) b!3052785))

(assert (= (and b!3052779 c!506024) b!3052781))

(assert (= (and b!3052779 (not c!506024)) b!3052768))

(assert (= (and b!3052768 c!506016) b!3052787))

(assert (= (and b!3052768 (not c!506016)) b!3052771))

(assert (= (and b!3052771 c!506015) b!3052769))

(assert (= (and b!3052771 (not c!506015)) b!3052782))

(assert (= (or b!3052772 b!3052779) bm!210305))

(assert (= (or b!3052772 b!3052779) bm!210306))

(assert (= (or b!3052772 b!3052779) bm!210304))

(assert (= (or b!3052764 b!3052785) bm!210307))

(assert (= (or b!3052783 b!3052771) bm!210302))

(assert (= (or b!3052786 bm!210306) bm!210303))

(assert (= (or b!3052786 bm!210304) bm!210308))

(assert (= (and d!854594 res!1254005) b!3052770))

(declare-fun m!3378785 () Bool)

(assert (=> d!854594 m!3378785))

(assert (=> d!854594 m!3378583))

(declare-fun m!3378787 () Bool)

(assert (=> bm!210303 m!3378787))

(declare-fun m!3378789 () Bool)

(assert (=> bm!210307 m!3378789))

(declare-fun m!3378791 () Bool)

(assert (=> b!3052768 m!3378791))

(declare-fun m!3378793 () Bool)

(assert (=> b!3052770 m!3378793))

(declare-fun m!3378795 () Bool)

(assert (=> b!3052770 m!3378795))

(declare-fun m!3378797 () Bool)

(assert (=> bm!210302 m!3378797))

(declare-fun m!3378799 () Bool)

(assert (=> bm!210305 m!3378799))

(declare-fun m!3378801 () Bool)

(assert (=> bm!210308 m!3378801))

(assert (=> b!3052183 d!854594))

(declare-fun b!3052788 () Bool)

(declare-fun e!1912379 () Regex!9461)

(declare-fun lt!1048630 () Regex!9461)

(assert (=> b!3052788 (= e!1912379 lt!1048630)))

(declare-fun b!3052789 () Bool)

(declare-fun c!506034 () Bool)

(declare-fun call!210319 () Bool)

(assert (=> b!3052789 (= c!506034 call!210319)))

(declare-fun e!1912371 () Regex!9461)

(assert (=> b!3052789 (= e!1912371 e!1912379)))

(declare-fun b!3052790 () Bool)

(declare-fun lt!1048627 () Regex!9461)

(assert (=> b!3052790 (= e!1912371 lt!1048627)))

(declare-fun b!3052791 () Bool)

(declare-fun c!506032 () Bool)

(assert (=> b!3052791 (= c!506032 ((_ is EmptyExpr!9461) lt!1048506))))

(declare-fun e!1912382 () Regex!9461)

(declare-fun e!1912383 () Regex!9461)

(assert (=> b!3052791 (= e!1912382 e!1912383)))

(declare-fun call!210317 () Bool)

(declare-fun lt!1048625 () Regex!9461)

(declare-fun c!506033 () Bool)

(declare-fun lt!1048626 () Regex!9461)

(declare-fun bm!210309 () Bool)

(assert (=> bm!210309 (= call!210317 (isEmptyExpr!518 (ite c!506033 lt!1048626 lt!1048625)))))

(declare-fun b!3052792 () Bool)

(declare-fun c!506030 () Bool)

(assert (=> b!3052792 (= c!506030 ((_ is Union!9461) lt!1048506))))

(declare-fun e!1912380 () Regex!9461)

(declare-fun e!1912373 () Regex!9461)

(assert (=> b!3052792 (= e!1912380 e!1912373)))

(declare-fun b!3052793 () Bool)

(declare-fun c!506027 () Bool)

(declare-fun lt!1048629 () Regex!9461)

(assert (=> b!3052793 (= c!506027 (isEmptyExpr!518 lt!1048629))))

(declare-fun e!1912372 () Regex!9461)

(declare-fun e!1912374 () Regex!9461)

(assert (=> b!3052793 (= e!1912372 e!1912374)))

(declare-fun b!3052794 () Bool)

(declare-fun e!1912370 () Regex!9461)

(assert (=> b!3052794 (= e!1912370 lt!1048629)))

(declare-fun b!3052795 () Bool)

(declare-fun e!1912381 () Bool)

(declare-fun lt!1048628 () Regex!9461)

(assert (=> b!3052795 (= e!1912381 (= (nullable!3107 lt!1048628) (nullable!3107 lt!1048506)))))

(declare-fun b!3052796 () Bool)

(assert (=> b!3052796 (= e!1912374 e!1912370)))

(declare-fun c!506026 () Bool)

(assert (=> b!3052796 (= c!506026 call!210317)))

(declare-fun bm!210310 () Bool)

(declare-fun call!210320 () Regex!9461)

(assert (=> bm!210310 (= call!210320 (simplify!416 (ite c!506033 (reg!9790 lt!1048506) (ite c!506030 (regTwo!19435 lt!1048506) (regOne!19434 lt!1048506)))))))

(declare-fun b!3052797 () Bool)

(assert (=> b!3052797 (= e!1912373 e!1912371)))

(declare-fun call!210315 () Regex!9461)

(assert (=> b!3052797 (= lt!1048630 call!210315)))

(declare-fun call!210316 () Regex!9461)

(assert (=> b!3052797 (= lt!1048627 call!210316)))

(declare-fun c!506028 () Bool)

(declare-fun call!210314 () Bool)

(assert (=> b!3052797 (= c!506028 call!210314)))

(declare-fun bm!210311 () Bool)

(declare-fun call!210318 () Bool)

(assert (=> bm!210311 (= call!210314 call!210318)))

(declare-fun b!3052799 () Bool)

(declare-fun e!1912377 () Regex!9461)

(assert (=> b!3052799 (= e!1912377 e!1912382)))

(declare-fun c!506031 () Bool)

(assert (=> b!3052799 (= c!506031 ((_ is ElementMatch!9461) lt!1048506))))

(declare-fun b!3052800 () Bool)

(assert (=> b!3052800 (= e!1912377 EmptyLang!9461)))

(declare-fun b!3052801 () Bool)

(assert (=> b!3052801 (= e!1912383 e!1912380)))

(assert (=> b!3052801 (= c!506033 ((_ is Star!9461) lt!1048506))))

(declare-fun b!3052802 () Bool)

(assert (=> b!3052802 (= e!1912383 EmptyExpr!9461)))

(declare-fun b!3052803 () Bool)

(assert (=> b!3052803 (= e!1912382 lt!1048506)))

(declare-fun b!3052804 () Bool)

(assert (=> b!3052804 (= e!1912373 e!1912372)))

(assert (=> b!3052804 (= lt!1048629 call!210316)))

(assert (=> b!3052804 (= lt!1048625 call!210315)))

(declare-fun res!1254009 () Bool)

(assert (=> b!3052804 (= res!1254009 call!210314)))

(declare-fun e!1912378 () Bool)

(assert (=> b!3052804 (=> res!1254009 e!1912378)))

(declare-fun c!506035 () Bool)

(assert (=> b!3052804 (= c!506035 e!1912378)))

(declare-fun b!3052805 () Bool)

(declare-fun e!1912375 () Regex!9461)

(assert (=> b!3052805 (= e!1912375 EmptyExpr!9461)))

(declare-fun b!3052806 () Bool)

(assert (=> b!3052806 (= e!1912372 EmptyLang!9461)))

(declare-fun bm!210312 () Bool)

(assert (=> bm!210312 (= call!210315 (simplify!416 (ite c!506030 (regOne!19435 lt!1048506) (regTwo!19434 lt!1048506))))))

(declare-fun b!3052807 () Bool)

(assert (=> b!3052807 (= e!1912370 (Concat!14782 lt!1048629 lt!1048625))))

(declare-fun b!3052808 () Bool)

(declare-fun e!1912376 () Bool)

(assert (=> b!3052808 (= e!1912376 call!210317)))

(declare-fun b!3052809 () Bool)

(assert (=> b!3052809 (= e!1912379 (Union!9461 lt!1048630 lt!1048627))))

(declare-fun b!3052810 () Bool)

(assert (=> b!3052810 (= e!1912378 call!210319)))

(declare-fun b!3052811 () Bool)

(declare-fun c!506029 () Bool)

(assert (=> b!3052811 (= c!506029 e!1912376)))

(declare-fun res!1254010 () Bool)

(assert (=> b!3052811 (=> res!1254010 e!1912376)))

(assert (=> b!3052811 (= res!1254010 call!210318)))

(assert (=> b!3052811 (= lt!1048626 call!210320)))

(assert (=> b!3052811 (= e!1912380 e!1912375)))

(declare-fun bm!210313 () Bool)

(assert (=> bm!210313 (= call!210316 call!210320)))

(declare-fun b!3052812 () Bool)

(assert (=> b!3052812 (= e!1912374 lt!1048625)))

(declare-fun bm!210314 () Bool)

(assert (=> bm!210314 (= call!210319 (isEmptyLang!512 (ite c!506030 lt!1048627 lt!1048625)))))

(declare-fun bm!210315 () Bool)

(assert (=> bm!210315 (= call!210318 (isEmptyLang!512 (ite c!506033 lt!1048626 (ite c!506030 lt!1048630 lt!1048629))))))

(declare-fun b!3052798 () Bool)

(assert (=> b!3052798 (= e!1912375 (Star!9461 lt!1048626))))

(declare-fun d!854610 () Bool)

(assert (=> d!854610 e!1912381))

(declare-fun res!1254008 () Bool)

(assert (=> d!854610 (=> (not res!1254008) (not e!1912381))))

(assert (=> d!854610 (= res!1254008 (validRegex!4194 lt!1048628))))

(assert (=> d!854610 (= lt!1048628 e!1912377)))

(declare-fun c!506036 () Bool)

(assert (=> d!854610 (= c!506036 ((_ is EmptyLang!9461) lt!1048506))))

(assert (=> d!854610 (validRegex!4194 lt!1048506)))

(assert (=> d!854610 (= (simplify!416 lt!1048506) lt!1048628)))

(assert (= (and d!854610 c!506036) b!3052800))

(assert (= (and d!854610 (not c!506036)) b!3052799))

(assert (= (and b!3052799 c!506031) b!3052803))

(assert (= (and b!3052799 (not c!506031)) b!3052791))

(assert (= (and b!3052791 c!506032) b!3052802))

(assert (= (and b!3052791 (not c!506032)) b!3052801))

(assert (= (and b!3052801 c!506033) b!3052811))

(assert (= (and b!3052801 (not c!506033)) b!3052792))

(assert (= (and b!3052811 (not res!1254010)) b!3052808))

(assert (= (and b!3052811 c!506029) b!3052805))

(assert (= (and b!3052811 (not c!506029)) b!3052798))

(assert (= (and b!3052792 c!506030) b!3052797))

(assert (= (and b!3052792 (not c!506030)) b!3052804))

(assert (= (and b!3052797 c!506028) b!3052790))

(assert (= (and b!3052797 (not c!506028)) b!3052789))

(assert (= (and b!3052789 c!506034) b!3052788))

(assert (= (and b!3052789 (not c!506034)) b!3052809))

(assert (= (and b!3052804 (not res!1254009)) b!3052810))

(assert (= (and b!3052804 c!506035) b!3052806))

(assert (= (and b!3052804 (not c!506035)) b!3052793))

(assert (= (and b!3052793 c!506027) b!3052812))

(assert (= (and b!3052793 (not c!506027)) b!3052796))

(assert (= (and b!3052796 c!506026) b!3052794))

(assert (= (and b!3052796 (not c!506026)) b!3052807))

(assert (= (or b!3052797 b!3052804) bm!210312))

(assert (= (or b!3052797 b!3052804) bm!210313))

(assert (= (or b!3052797 b!3052804) bm!210311))

(assert (= (or b!3052789 b!3052810) bm!210314))

(assert (= (or b!3052808 b!3052796) bm!210309))

(assert (= (or b!3052811 bm!210313) bm!210310))

(assert (= (or b!3052811 bm!210311) bm!210315))

(assert (= (and d!854610 res!1254008) b!3052795))

(declare-fun m!3378803 () Bool)

(assert (=> d!854610 m!3378803))

(assert (=> d!854610 m!3378523))

(declare-fun m!3378805 () Bool)

(assert (=> bm!210310 m!3378805))

(declare-fun m!3378807 () Bool)

(assert (=> bm!210314 m!3378807))

(declare-fun m!3378809 () Bool)

(assert (=> b!3052793 m!3378809))

(declare-fun m!3378811 () Bool)

(assert (=> b!3052795 m!3378811))

(assert (=> b!3052795 m!3378529))

(declare-fun m!3378813 () Bool)

(assert (=> bm!210309 m!3378813))

(declare-fun m!3378815 () Bool)

(assert (=> bm!210312 m!3378815))

(declare-fun m!3378817 () Bool)

(assert (=> bm!210315 m!3378817))

(assert (=> b!3052183 d!854610))

(declare-fun d!854612 () Bool)

(declare-fun lt!1048633 () Int)

(assert (=> d!854612 (>= lt!1048633 0)))

(declare-fun e!1912386 () Int)

(assert (=> d!854612 (= lt!1048633 e!1912386)))

(declare-fun c!506039 () Bool)

(assert (=> d!854612 (= c!506039 ((_ is Nil!35202) s!11993))))

(assert (=> d!854612 (= (size!26545 s!11993) lt!1048633)))

(declare-fun b!3052817 () Bool)

(assert (=> b!3052817 (= e!1912386 0)))

(declare-fun b!3052818 () Bool)

(assert (=> b!3052818 (= e!1912386 (+ 1 (size!26545 (t!234391 s!11993))))))

(assert (= (and d!854612 c!506039) b!3052817))

(assert (= (and d!854612 (not c!506039)) b!3052818))

(declare-fun m!3378819 () Bool)

(assert (=> b!3052818 m!3378819))

(assert (=> b!3052183 d!854612))

(declare-fun b!3052819 () Bool)

(declare-fun res!1254018 () Bool)

(declare-fun e!1912392 () Bool)

(assert (=> b!3052819 (=> res!1254018 e!1912392)))

(assert (=> b!3052819 (= res!1254018 (not ((_ is ElementMatch!9461) lt!1048510)))))

(declare-fun e!1912391 () Bool)

(assert (=> b!3052819 (= e!1912391 e!1912392)))

(declare-fun b!3052820 () Bool)

(declare-fun res!1254014 () Bool)

(assert (=> b!3052820 (=> res!1254014 e!1912392)))

(declare-fun e!1912387 () Bool)

(assert (=> b!3052820 (= res!1254014 e!1912387)))

(declare-fun res!1254015 () Bool)

(assert (=> b!3052820 (=> (not res!1254015) (not e!1912387))))

(declare-fun lt!1048634 () Bool)

(assert (=> b!3052820 (= res!1254015 lt!1048634)))

(declare-fun bm!210316 () Bool)

(declare-fun call!210321 () Bool)

(assert (=> bm!210316 (= call!210321 (isEmpty!19515 (_2!20206 lt!1048505)))))

(declare-fun b!3052821 () Bool)

(declare-fun e!1912393 () Bool)

(assert (=> b!3052821 (= e!1912393 e!1912391)))

(declare-fun c!506041 () Bool)

(assert (=> b!3052821 (= c!506041 ((_ is EmptyLang!9461) lt!1048510))))

(declare-fun b!3052822 () Bool)

(assert (=> b!3052822 (= e!1912387 (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048510)))))

(declare-fun b!3052823 () Bool)

(declare-fun res!1254012 () Bool)

(declare-fun e!1912388 () Bool)

(assert (=> b!3052823 (=> res!1254012 e!1912388)))

(assert (=> b!3052823 (= res!1254012 (not (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505)))))))

(declare-fun d!854614 () Bool)

(assert (=> d!854614 e!1912393))

(declare-fun c!506040 () Bool)

(assert (=> d!854614 (= c!506040 ((_ is EmptyExpr!9461) lt!1048510))))

(declare-fun e!1912390 () Bool)

(assert (=> d!854614 (= lt!1048634 e!1912390)))

(declare-fun c!506042 () Bool)

(assert (=> d!854614 (= c!506042 (isEmpty!19515 (_2!20206 lt!1048505)))))

(assert (=> d!854614 (validRegex!4194 lt!1048510)))

(assert (=> d!854614 (= (matchR!4343 lt!1048510 (_2!20206 lt!1048505)) lt!1048634)))

(declare-fun b!3052824 () Bool)

(declare-fun e!1912389 () Bool)

(assert (=> b!3052824 (= e!1912389 e!1912388)))

(declare-fun res!1254016 () Bool)

(assert (=> b!3052824 (=> res!1254016 e!1912388)))

(assert (=> b!3052824 (= res!1254016 call!210321)))

(declare-fun b!3052825 () Bool)

(assert (=> b!3052825 (= e!1912390 (nullable!3107 lt!1048510))))

(declare-fun b!3052826 () Bool)

(declare-fun res!1254011 () Bool)

(assert (=> b!3052826 (=> (not res!1254011) (not e!1912387))))

(assert (=> b!3052826 (= res!1254011 (not call!210321))))

(declare-fun b!3052827 () Bool)

(assert (=> b!3052827 (= e!1912393 (= lt!1048634 call!210321))))

(declare-fun b!3052828 () Bool)

(declare-fun res!1254013 () Bool)

(assert (=> b!3052828 (=> (not res!1254013) (not e!1912387))))

(assert (=> b!3052828 (= res!1254013 (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3052829 () Bool)

(assert (=> b!3052829 (= e!1912388 (not (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048510))))))

(declare-fun b!3052830 () Bool)

(assert (=> b!3052830 (= e!1912390 (matchR!4343 (derivativeStep!2704 lt!1048510 (head!6763 (_2!20206 lt!1048505))) (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3052831 () Bool)

(assert (=> b!3052831 (= e!1912391 (not lt!1048634))))

(declare-fun b!3052832 () Bool)

(assert (=> b!3052832 (= e!1912392 e!1912389)))

(declare-fun res!1254017 () Bool)

(assert (=> b!3052832 (=> (not res!1254017) (not e!1912389))))

(assert (=> b!3052832 (= res!1254017 (not lt!1048634))))

(assert (= (and d!854614 c!506042) b!3052825))

(assert (= (and d!854614 (not c!506042)) b!3052830))

(assert (= (and d!854614 c!506040) b!3052827))

(assert (= (and d!854614 (not c!506040)) b!3052821))

(assert (= (and b!3052821 c!506041) b!3052831))

(assert (= (and b!3052821 (not c!506041)) b!3052819))

(assert (= (and b!3052819 (not res!1254018)) b!3052820))

(assert (= (and b!3052820 res!1254015) b!3052826))

(assert (= (and b!3052826 res!1254011) b!3052828))

(assert (= (and b!3052828 res!1254013) b!3052822))

(assert (= (and b!3052820 (not res!1254014)) b!3052832))

(assert (= (and b!3052832 res!1254017) b!3052824))

(assert (= (and b!3052824 (not res!1254016)) b!3052823))

(assert (= (and b!3052823 (not res!1254012)) b!3052829))

(assert (= (or b!3052827 b!3052824 b!3052826) bm!210316))

(assert (=> b!3052822 m!3378515))

(assert (=> b!3052823 m!3378517))

(assert (=> b!3052823 m!3378517))

(assert (=> b!3052823 m!3378519))

(assert (=> d!854614 m!3378521))

(declare-fun m!3378821 () Bool)

(assert (=> d!854614 m!3378821))

(assert (=> b!3052830 m!3378515))

(assert (=> b!3052830 m!3378515))

(declare-fun m!3378823 () Bool)

(assert (=> b!3052830 m!3378823))

(assert (=> b!3052830 m!3378517))

(assert (=> b!3052830 m!3378823))

(assert (=> b!3052830 m!3378517))

(declare-fun m!3378825 () Bool)

(assert (=> b!3052830 m!3378825))

(declare-fun m!3378827 () Bool)

(assert (=> b!3052825 m!3378827))

(assert (=> b!3052829 m!3378515))

(assert (=> b!3052828 m!3378517))

(assert (=> b!3052828 m!3378517))

(assert (=> b!3052828 m!3378519))

(assert (=> bm!210316 m!3378521))

(assert (=> b!3052183 d!854614))

(declare-fun d!854616 () Bool)

(declare-fun lt!1048635 () Int)

(assert (=> d!854616 (>= lt!1048635 0)))

(declare-fun e!1912394 () Int)

(assert (=> d!854616 (= lt!1048635 e!1912394)))

(declare-fun c!506043 () Bool)

(assert (=> d!854616 (= c!506043 ((_ is Nil!35202) (_2!20206 lt!1048505)))))

(assert (=> d!854616 (= (size!26545 (_2!20206 lt!1048505)) lt!1048635)))

(declare-fun b!3052833 () Bool)

(assert (=> b!3052833 (= e!1912394 0)))

(declare-fun b!3052834 () Bool)

(assert (=> b!3052834 (= e!1912394 (+ 1 (size!26545 (t!234391 (_2!20206 lt!1048505)))))))

(assert (= (and d!854616 c!506043) b!3052833))

(assert (= (and d!854616 (not c!506043)) b!3052834))

(declare-fun m!3378829 () Bool)

(assert (=> b!3052834 m!3378829))

(assert (=> b!3052183 d!854616))

(declare-fun b!3052835 () Bool)

(declare-fun res!1254026 () Bool)

(declare-fun e!1912400 () Bool)

(assert (=> b!3052835 (=> res!1254026 e!1912400)))

(assert (=> b!3052835 (= res!1254026 (not ((_ is ElementMatch!9461) lt!1048500)))))

(declare-fun e!1912399 () Bool)

(assert (=> b!3052835 (= e!1912399 e!1912400)))

(declare-fun b!3052836 () Bool)

(declare-fun res!1254022 () Bool)

(assert (=> b!3052836 (=> res!1254022 e!1912400)))

(declare-fun e!1912395 () Bool)

(assert (=> b!3052836 (= res!1254022 e!1912395)))

(declare-fun res!1254023 () Bool)

(assert (=> b!3052836 (=> (not res!1254023) (not e!1912395))))

(declare-fun lt!1048636 () Bool)

(assert (=> b!3052836 (= res!1254023 lt!1048636)))

(declare-fun bm!210317 () Bool)

(declare-fun call!210322 () Bool)

(assert (=> bm!210317 (= call!210322 (isEmpty!19515 (_1!20206 lt!1048505)))))

(declare-fun b!3052837 () Bool)

(declare-fun e!1912401 () Bool)

(assert (=> b!3052837 (= e!1912401 e!1912399)))

(declare-fun c!506045 () Bool)

(assert (=> b!3052837 (= c!506045 ((_ is EmptyLang!9461) lt!1048500))))

(declare-fun b!3052838 () Bool)

(assert (=> b!3052838 (= e!1912395 (= (head!6763 (_1!20206 lt!1048505)) (c!505859 lt!1048500)))))

(declare-fun b!3052839 () Bool)

(declare-fun res!1254020 () Bool)

(declare-fun e!1912396 () Bool)

(assert (=> b!3052839 (=> res!1254020 e!1912396)))

(assert (=> b!3052839 (= res!1254020 (not (isEmpty!19515 (tail!4989 (_1!20206 lt!1048505)))))))

(declare-fun d!854618 () Bool)

(assert (=> d!854618 e!1912401))

(declare-fun c!506044 () Bool)

(assert (=> d!854618 (= c!506044 ((_ is EmptyExpr!9461) lt!1048500))))

(declare-fun e!1912398 () Bool)

(assert (=> d!854618 (= lt!1048636 e!1912398)))

(declare-fun c!506046 () Bool)

(assert (=> d!854618 (= c!506046 (isEmpty!19515 (_1!20206 lt!1048505)))))

(assert (=> d!854618 (validRegex!4194 lt!1048500)))

(assert (=> d!854618 (= (matchR!4343 lt!1048500 (_1!20206 lt!1048505)) lt!1048636)))

(declare-fun b!3052840 () Bool)

(declare-fun e!1912397 () Bool)

(assert (=> b!3052840 (= e!1912397 e!1912396)))

(declare-fun res!1254024 () Bool)

(assert (=> b!3052840 (=> res!1254024 e!1912396)))

(assert (=> b!3052840 (= res!1254024 call!210322)))

(declare-fun b!3052841 () Bool)

(assert (=> b!3052841 (= e!1912398 (nullable!3107 lt!1048500))))

(declare-fun b!3052842 () Bool)

(declare-fun res!1254019 () Bool)

(assert (=> b!3052842 (=> (not res!1254019) (not e!1912395))))

(assert (=> b!3052842 (= res!1254019 (not call!210322))))

(declare-fun b!3052843 () Bool)

(assert (=> b!3052843 (= e!1912401 (= lt!1048636 call!210322))))

(declare-fun b!3052844 () Bool)

(declare-fun res!1254021 () Bool)

(assert (=> b!3052844 (=> (not res!1254021) (not e!1912395))))

(assert (=> b!3052844 (= res!1254021 (isEmpty!19515 (tail!4989 (_1!20206 lt!1048505))))))

(declare-fun b!3052845 () Bool)

(assert (=> b!3052845 (= e!1912396 (not (= (head!6763 (_1!20206 lt!1048505)) (c!505859 lt!1048500))))))

(declare-fun b!3052846 () Bool)

(assert (=> b!3052846 (= e!1912398 (matchR!4343 (derivativeStep!2704 lt!1048500 (head!6763 (_1!20206 lt!1048505))) (tail!4989 (_1!20206 lt!1048505))))))

(declare-fun b!3052847 () Bool)

(assert (=> b!3052847 (= e!1912399 (not lt!1048636))))

(declare-fun b!3052848 () Bool)

(assert (=> b!3052848 (= e!1912400 e!1912397)))

(declare-fun res!1254025 () Bool)

(assert (=> b!3052848 (=> (not res!1254025) (not e!1912397))))

(assert (=> b!3052848 (= res!1254025 (not lt!1048636))))

(assert (= (and d!854618 c!506046) b!3052841))

(assert (= (and d!854618 (not c!506046)) b!3052846))

(assert (= (and d!854618 c!506044) b!3052843))

(assert (= (and d!854618 (not c!506044)) b!3052837))

(assert (= (and b!3052837 c!506045) b!3052847))

(assert (= (and b!3052837 (not c!506045)) b!3052835))

(assert (= (and b!3052835 (not res!1254026)) b!3052836))

(assert (= (and b!3052836 res!1254023) b!3052842))

(assert (= (and b!3052842 res!1254019) b!3052844))

(assert (= (and b!3052844 res!1254021) b!3052838))

(assert (= (and b!3052836 (not res!1254022)) b!3052848))

(assert (= (and b!3052848 res!1254025) b!3052840))

(assert (= (and b!3052840 (not res!1254024)) b!3052839))

(assert (= (and b!3052839 (not res!1254020)) b!3052845))

(assert (= (or b!3052843 b!3052840 b!3052842) bm!210317))

(declare-fun m!3378831 () Bool)

(assert (=> b!3052838 m!3378831))

(declare-fun m!3378833 () Bool)

(assert (=> b!3052839 m!3378833))

(assert (=> b!3052839 m!3378833))

(declare-fun m!3378835 () Bool)

(assert (=> b!3052839 m!3378835))

(declare-fun m!3378837 () Bool)

(assert (=> d!854618 m!3378837))

(declare-fun m!3378839 () Bool)

(assert (=> d!854618 m!3378839))

(assert (=> b!3052846 m!3378831))

(assert (=> b!3052846 m!3378831))

(declare-fun m!3378841 () Bool)

(assert (=> b!3052846 m!3378841))

(assert (=> b!3052846 m!3378833))

(assert (=> b!3052846 m!3378841))

(assert (=> b!3052846 m!3378833))

(declare-fun m!3378843 () Bool)

(assert (=> b!3052846 m!3378843))

(declare-fun m!3378845 () Bool)

(assert (=> b!3052841 m!3378845))

(assert (=> b!3052845 m!3378831))

(assert (=> b!3052844 m!3378833))

(assert (=> b!3052844 m!3378833))

(assert (=> b!3052844 m!3378835))

(assert (=> bm!210317 m!3378837))

(assert (=> b!3052183 d!854618))

(declare-fun d!854620 () Bool)

(assert (=> d!854620 (= (matchR!4343 (reg!9790 r!17423) (_1!20206 lt!1048505)) (matchR!4343 (simplify!416 (reg!9790 r!17423)) (_1!20206 lt!1048505)))))

(declare-fun lt!1048637 () Unit!49359)

(assert (=> d!854620 (= lt!1048637 (choose!18086 (reg!9790 r!17423) (_1!20206 lt!1048505)))))

(assert (=> d!854620 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854620 (= (lemmaSimplifySound!262 (reg!9790 r!17423) (_1!20206 lt!1048505)) lt!1048637)))

(declare-fun bs!532357 () Bool)

(assert (= bs!532357 d!854620))

(assert (=> bs!532357 m!3378441))

(declare-fun m!3378847 () Bool)

(assert (=> bs!532357 m!3378847))

(assert (=> bs!532357 m!3378583))

(assert (=> bs!532357 m!3378477))

(declare-fun m!3378849 () Bool)

(assert (=> bs!532357 m!3378849))

(assert (=> bs!532357 m!3378441))

(assert (=> b!3052183 d!854620))

(declare-fun b!3052849 () Bool)

(declare-fun res!1254034 () Bool)

(declare-fun e!1912407 () Bool)

(assert (=> b!3052849 (=> res!1254034 e!1912407)))

(assert (=> b!3052849 (= res!1254034 (not ((_ is ElementMatch!9461) lt!1048508)))))

(declare-fun e!1912406 () Bool)

(assert (=> b!3052849 (= e!1912406 e!1912407)))

(declare-fun b!3052850 () Bool)

(declare-fun res!1254030 () Bool)

(assert (=> b!3052850 (=> res!1254030 e!1912407)))

(declare-fun e!1912402 () Bool)

(assert (=> b!3052850 (= res!1254030 e!1912402)))

(declare-fun res!1254031 () Bool)

(assert (=> b!3052850 (=> (not res!1254031) (not e!1912402))))

(declare-fun lt!1048638 () Bool)

(assert (=> b!3052850 (= res!1254031 lt!1048638)))

(declare-fun bm!210318 () Bool)

(declare-fun call!210323 () Bool)

(assert (=> bm!210318 (= call!210323 (isEmpty!19515 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))))))

(declare-fun b!3052851 () Bool)

(declare-fun e!1912408 () Bool)

(assert (=> b!3052851 (= e!1912408 e!1912406)))

(declare-fun c!506048 () Bool)

(assert (=> b!3052851 (= c!506048 ((_ is EmptyLang!9461) lt!1048508))))

(declare-fun b!3052852 () Bool)

(assert (=> b!3052852 (= e!1912402 (= (head!6763 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))) (c!505859 lt!1048508)))))

(declare-fun b!3052853 () Bool)

(declare-fun res!1254028 () Bool)

(declare-fun e!1912403 () Bool)

(assert (=> b!3052853 (=> res!1254028 e!1912403)))

(assert (=> b!3052853 (= res!1254028 (not (isEmpty!19515 (tail!4989 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))))))))

(declare-fun d!854622 () Bool)

(assert (=> d!854622 e!1912408))

(declare-fun c!506047 () Bool)

(assert (=> d!854622 (= c!506047 ((_ is EmptyExpr!9461) lt!1048508))))

(declare-fun e!1912405 () Bool)

(assert (=> d!854622 (= lt!1048638 e!1912405)))

(declare-fun c!506049 () Bool)

(assert (=> d!854622 (= c!506049 (isEmpty!19515 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))))))

(assert (=> d!854622 (validRegex!4194 lt!1048508)))

(assert (=> d!854622 (= (matchR!4343 lt!1048508 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))) lt!1048638)))

(declare-fun b!3052854 () Bool)

(declare-fun e!1912404 () Bool)

(assert (=> b!3052854 (= e!1912404 e!1912403)))

(declare-fun res!1254032 () Bool)

(assert (=> b!3052854 (=> res!1254032 e!1912403)))

(assert (=> b!3052854 (= res!1254032 call!210323)))

(declare-fun b!3052855 () Bool)

(assert (=> b!3052855 (= e!1912405 (nullable!3107 lt!1048508))))

(declare-fun b!3052856 () Bool)

(declare-fun res!1254027 () Bool)

(assert (=> b!3052856 (=> (not res!1254027) (not e!1912402))))

(assert (=> b!3052856 (= res!1254027 (not call!210323))))

(declare-fun b!3052857 () Bool)

(assert (=> b!3052857 (= e!1912408 (= lt!1048638 call!210323))))

(declare-fun b!3052858 () Bool)

(declare-fun res!1254029 () Bool)

(assert (=> b!3052858 (=> (not res!1254029) (not e!1912402))))

(assert (=> b!3052858 (= res!1254029 (isEmpty!19515 (tail!4989 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))))

(declare-fun b!3052859 () Bool)

(assert (=> b!3052859 (= e!1912403 (not (= (head!6763 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505))) (c!505859 lt!1048508))))))

(declare-fun b!3052860 () Bool)

(assert (=> b!3052860 (= e!1912405 (matchR!4343 (derivativeStep!2704 lt!1048508 (head!6763 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))) (tail!4989 (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))))

(declare-fun b!3052861 () Bool)

(assert (=> b!3052861 (= e!1912406 (not lt!1048638))))

(declare-fun b!3052862 () Bool)

(assert (=> b!3052862 (= e!1912407 e!1912404)))

(declare-fun res!1254033 () Bool)

(assert (=> b!3052862 (=> (not res!1254033) (not e!1912404))))

(assert (=> b!3052862 (= res!1254033 (not lt!1048638))))

(assert (= (and d!854622 c!506049) b!3052855))

(assert (= (and d!854622 (not c!506049)) b!3052860))

(assert (= (and d!854622 c!506047) b!3052857))

(assert (= (and d!854622 (not c!506047)) b!3052851))

(assert (= (and b!3052851 c!506048) b!3052861))

(assert (= (and b!3052851 (not c!506048)) b!3052849))

(assert (= (and b!3052849 (not res!1254034)) b!3052850))

(assert (= (and b!3052850 res!1254031) b!3052856))

(assert (= (and b!3052856 res!1254027) b!3052858))

(assert (= (and b!3052858 res!1254029) b!3052852))

(assert (= (and b!3052850 (not res!1254030)) b!3052862))

(assert (= (and b!3052862 res!1254033) b!3052854))

(assert (= (and b!3052854 (not res!1254032)) b!3052853))

(assert (= (and b!3052853 (not res!1254028)) b!3052859))

(assert (= (or b!3052857 b!3052854 b!3052856) bm!210318))

(assert (=> b!3052852 m!3378493))

(declare-fun m!3378851 () Bool)

(assert (=> b!3052852 m!3378851))

(assert (=> b!3052853 m!3378493))

(declare-fun m!3378853 () Bool)

(assert (=> b!3052853 m!3378853))

(assert (=> b!3052853 m!3378853))

(declare-fun m!3378855 () Bool)

(assert (=> b!3052853 m!3378855))

(assert (=> d!854622 m!3378493))

(declare-fun m!3378857 () Bool)

(assert (=> d!854622 m!3378857))

(assert (=> d!854622 m!3378469))

(assert (=> b!3052860 m!3378493))

(assert (=> b!3052860 m!3378851))

(assert (=> b!3052860 m!3378851))

(declare-fun m!3378859 () Bool)

(assert (=> b!3052860 m!3378859))

(assert (=> b!3052860 m!3378493))

(assert (=> b!3052860 m!3378853))

(assert (=> b!3052860 m!3378859))

(assert (=> b!3052860 m!3378853))

(declare-fun m!3378861 () Bool)

(assert (=> b!3052860 m!3378861))

(declare-fun m!3378863 () Bool)

(assert (=> b!3052855 m!3378863))

(assert (=> b!3052859 m!3378493))

(assert (=> b!3052859 m!3378851))

(assert (=> b!3052858 m!3378493))

(assert (=> b!3052858 m!3378853))

(assert (=> b!3052858 m!3378853))

(assert (=> b!3052858 m!3378855))

(assert (=> bm!210318 m!3378493))

(assert (=> bm!210318 m!3378857))

(assert (=> b!3052172 d!854622))

(declare-fun b!3052871 () Bool)

(declare-fun e!1912413 () List!35326)

(assert (=> b!3052871 (= e!1912413 (_2!20206 lt!1048505))))

(declare-fun d!854624 () Bool)

(declare-fun e!1912414 () Bool)

(assert (=> d!854624 e!1912414))

(declare-fun res!1254039 () Bool)

(assert (=> d!854624 (=> (not res!1254039) (not e!1912414))))

(declare-fun lt!1048641 () List!35326)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4800 (List!35326) (InoxSet C!19108))

(assert (=> d!854624 (= res!1254039 (= (content!4800 lt!1048641) ((_ map or) (content!4800 (_1!20206 lt!1048505)) (content!4800 (_2!20206 lt!1048505)))))))

(assert (=> d!854624 (= lt!1048641 e!1912413)))

(declare-fun c!506052 () Bool)

(assert (=> d!854624 (= c!506052 ((_ is Nil!35202) (_1!20206 lt!1048505)))))

(assert (=> d!854624 (= (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)) lt!1048641)))

(declare-fun b!3052872 () Bool)

(assert (=> b!3052872 (= e!1912413 (Cons!35202 (h!40622 (_1!20206 lt!1048505)) (++!8450 (t!234391 (_1!20206 lt!1048505)) (_2!20206 lt!1048505))))))

(declare-fun b!3052874 () Bool)

(assert (=> b!3052874 (= e!1912414 (or (not (= (_2!20206 lt!1048505) Nil!35202)) (= lt!1048641 (_1!20206 lt!1048505))))))

(declare-fun b!3052873 () Bool)

(declare-fun res!1254040 () Bool)

(assert (=> b!3052873 (=> (not res!1254040) (not e!1912414))))

(assert (=> b!3052873 (= res!1254040 (= (size!26545 lt!1048641) (+ (size!26545 (_1!20206 lt!1048505)) (size!26545 (_2!20206 lt!1048505)))))))

(assert (= (and d!854624 c!506052) b!3052871))

(assert (= (and d!854624 (not c!506052)) b!3052872))

(assert (= (and d!854624 res!1254039) b!3052873))

(assert (= (and b!3052873 res!1254040) b!3052874))

(declare-fun m!3378865 () Bool)

(assert (=> d!854624 m!3378865))

(declare-fun m!3378867 () Bool)

(assert (=> d!854624 m!3378867))

(declare-fun m!3378869 () Bool)

(assert (=> d!854624 m!3378869))

(declare-fun m!3378871 () Bool)

(assert (=> b!3052872 m!3378871))

(declare-fun m!3378873 () Bool)

(assert (=> b!3052873 m!3378873))

(declare-fun m!3378875 () Bool)

(assert (=> b!3052873 m!3378875))

(assert (=> b!3052873 m!3378449))

(assert (=> b!3052172 d!854624))

(declare-fun b!3052875 () Bool)

(declare-fun e!1912424 () Regex!9461)

(declare-fun lt!1048647 () Regex!9461)

(assert (=> b!3052875 (= e!1912424 lt!1048647)))

(declare-fun b!3052876 () Bool)

(declare-fun c!506061 () Bool)

(declare-fun call!210329 () Bool)

(assert (=> b!3052876 (= c!506061 call!210329)))

(declare-fun e!1912416 () Regex!9461)

(assert (=> b!3052876 (= e!1912416 e!1912424)))

(declare-fun b!3052877 () Bool)

(declare-fun lt!1048644 () Regex!9461)

(assert (=> b!3052877 (= e!1912416 lt!1048644)))

(declare-fun b!3052878 () Bool)

(declare-fun c!506059 () Bool)

(assert (=> b!3052878 (= c!506059 ((_ is EmptyExpr!9461) r!17423))))

(declare-fun e!1912427 () Regex!9461)

(declare-fun e!1912428 () Regex!9461)

(assert (=> b!3052878 (= e!1912427 e!1912428)))

(declare-fun lt!1048642 () Regex!9461)

(declare-fun bm!210319 () Bool)

(declare-fun call!210327 () Bool)

(declare-fun lt!1048643 () Regex!9461)

(declare-fun c!506060 () Bool)

(assert (=> bm!210319 (= call!210327 (isEmptyExpr!518 (ite c!506060 lt!1048643 lt!1048642)))))

(declare-fun b!3052879 () Bool)

(declare-fun c!506057 () Bool)

(assert (=> b!3052879 (= c!506057 ((_ is Union!9461) r!17423))))

(declare-fun e!1912425 () Regex!9461)

(declare-fun e!1912418 () Regex!9461)

(assert (=> b!3052879 (= e!1912425 e!1912418)))

(declare-fun b!3052880 () Bool)

(declare-fun c!506054 () Bool)

(declare-fun lt!1048646 () Regex!9461)

(assert (=> b!3052880 (= c!506054 (isEmptyExpr!518 lt!1048646))))

(declare-fun e!1912417 () Regex!9461)

(declare-fun e!1912419 () Regex!9461)

(assert (=> b!3052880 (= e!1912417 e!1912419)))

(declare-fun b!3052881 () Bool)

(declare-fun e!1912415 () Regex!9461)

(assert (=> b!3052881 (= e!1912415 lt!1048646)))

(declare-fun b!3052882 () Bool)

(declare-fun e!1912426 () Bool)

(declare-fun lt!1048645 () Regex!9461)

(assert (=> b!3052882 (= e!1912426 (= (nullable!3107 lt!1048645) (nullable!3107 r!17423)))))

(declare-fun b!3052883 () Bool)

(assert (=> b!3052883 (= e!1912419 e!1912415)))

(declare-fun c!506053 () Bool)

(assert (=> b!3052883 (= c!506053 call!210327)))

(declare-fun call!210330 () Regex!9461)

(declare-fun bm!210320 () Bool)

(assert (=> bm!210320 (= call!210330 (simplify!416 (ite c!506060 (reg!9790 r!17423) (ite c!506057 (regTwo!19435 r!17423) (regOne!19434 r!17423)))))))

(declare-fun b!3052884 () Bool)

(assert (=> b!3052884 (= e!1912418 e!1912416)))

(declare-fun call!210325 () Regex!9461)

(assert (=> b!3052884 (= lt!1048647 call!210325)))

(declare-fun call!210326 () Regex!9461)

(assert (=> b!3052884 (= lt!1048644 call!210326)))

(declare-fun c!506055 () Bool)

(declare-fun call!210324 () Bool)

(assert (=> b!3052884 (= c!506055 call!210324)))

(declare-fun bm!210321 () Bool)

(declare-fun call!210328 () Bool)

(assert (=> bm!210321 (= call!210324 call!210328)))

(declare-fun b!3052886 () Bool)

(declare-fun e!1912422 () Regex!9461)

(assert (=> b!3052886 (= e!1912422 e!1912427)))

(declare-fun c!506058 () Bool)

(assert (=> b!3052886 (= c!506058 ((_ is ElementMatch!9461) r!17423))))

(declare-fun b!3052887 () Bool)

(assert (=> b!3052887 (= e!1912422 EmptyLang!9461)))

(declare-fun b!3052888 () Bool)

(assert (=> b!3052888 (= e!1912428 e!1912425)))

(assert (=> b!3052888 (= c!506060 ((_ is Star!9461) r!17423))))

(declare-fun b!3052889 () Bool)

(assert (=> b!3052889 (= e!1912428 EmptyExpr!9461)))

(declare-fun b!3052890 () Bool)

(assert (=> b!3052890 (= e!1912427 r!17423)))

(declare-fun b!3052891 () Bool)

(assert (=> b!3052891 (= e!1912418 e!1912417)))

(assert (=> b!3052891 (= lt!1048646 call!210326)))

(assert (=> b!3052891 (= lt!1048642 call!210325)))

(declare-fun res!1254042 () Bool)

(assert (=> b!3052891 (= res!1254042 call!210324)))

(declare-fun e!1912423 () Bool)

(assert (=> b!3052891 (=> res!1254042 e!1912423)))

(declare-fun c!506062 () Bool)

(assert (=> b!3052891 (= c!506062 e!1912423)))

(declare-fun b!3052892 () Bool)

(declare-fun e!1912420 () Regex!9461)

(assert (=> b!3052892 (= e!1912420 EmptyExpr!9461)))

(declare-fun b!3052893 () Bool)

(assert (=> b!3052893 (= e!1912417 EmptyLang!9461)))

(declare-fun bm!210322 () Bool)

(assert (=> bm!210322 (= call!210325 (simplify!416 (ite c!506057 (regOne!19435 r!17423) (regTwo!19434 r!17423))))))

(declare-fun b!3052894 () Bool)

(assert (=> b!3052894 (= e!1912415 (Concat!14782 lt!1048646 lt!1048642))))

(declare-fun b!3052895 () Bool)

(declare-fun e!1912421 () Bool)

(assert (=> b!3052895 (= e!1912421 call!210327)))

(declare-fun b!3052896 () Bool)

(assert (=> b!3052896 (= e!1912424 (Union!9461 lt!1048647 lt!1048644))))

(declare-fun b!3052897 () Bool)

(assert (=> b!3052897 (= e!1912423 call!210329)))

(declare-fun b!3052898 () Bool)

(declare-fun c!506056 () Bool)

(assert (=> b!3052898 (= c!506056 e!1912421)))

(declare-fun res!1254043 () Bool)

(assert (=> b!3052898 (=> res!1254043 e!1912421)))

(assert (=> b!3052898 (= res!1254043 call!210328)))

(assert (=> b!3052898 (= lt!1048643 call!210330)))

(assert (=> b!3052898 (= e!1912425 e!1912420)))

(declare-fun bm!210323 () Bool)

(assert (=> bm!210323 (= call!210326 call!210330)))

(declare-fun b!3052899 () Bool)

(assert (=> b!3052899 (= e!1912419 lt!1048642)))

(declare-fun bm!210324 () Bool)

(assert (=> bm!210324 (= call!210329 (isEmptyLang!512 (ite c!506057 lt!1048644 lt!1048642)))))

(declare-fun bm!210325 () Bool)

(assert (=> bm!210325 (= call!210328 (isEmptyLang!512 (ite c!506060 lt!1048643 (ite c!506057 lt!1048647 lt!1048646))))))

(declare-fun b!3052885 () Bool)

(assert (=> b!3052885 (= e!1912420 (Star!9461 lt!1048643))))

(declare-fun d!854626 () Bool)

(assert (=> d!854626 e!1912426))

(declare-fun res!1254041 () Bool)

(assert (=> d!854626 (=> (not res!1254041) (not e!1912426))))

(assert (=> d!854626 (= res!1254041 (validRegex!4194 lt!1048645))))

(assert (=> d!854626 (= lt!1048645 e!1912422)))

(declare-fun c!506063 () Bool)

(assert (=> d!854626 (= c!506063 ((_ is EmptyLang!9461) r!17423))))

(assert (=> d!854626 (validRegex!4194 r!17423)))

(assert (=> d!854626 (= (simplify!416 r!17423) lt!1048645)))

(assert (= (and d!854626 c!506063) b!3052887))

(assert (= (and d!854626 (not c!506063)) b!3052886))

(assert (= (and b!3052886 c!506058) b!3052890))

(assert (= (and b!3052886 (not c!506058)) b!3052878))

(assert (= (and b!3052878 c!506059) b!3052889))

(assert (= (and b!3052878 (not c!506059)) b!3052888))

(assert (= (and b!3052888 c!506060) b!3052898))

(assert (= (and b!3052888 (not c!506060)) b!3052879))

(assert (= (and b!3052898 (not res!1254043)) b!3052895))

(assert (= (and b!3052898 c!506056) b!3052892))

(assert (= (and b!3052898 (not c!506056)) b!3052885))

(assert (= (and b!3052879 c!506057) b!3052884))

(assert (= (and b!3052879 (not c!506057)) b!3052891))

(assert (= (and b!3052884 c!506055) b!3052877))

(assert (= (and b!3052884 (not c!506055)) b!3052876))

(assert (= (and b!3052876 c!506061) b!3052875))

(assert (= (and b!3052876 (not c!506061)) b!3052896))

(assert (= (and b!3052891 (not res!1254042)) b!3052897))

(assert (= (and b!3052891 c!506062) b!3052893))

(assert (= (and b!3052891 (not c!506062)) b!3052880))

(assert (= (and b!3052880 c!506054) b!3052899))

(assert (= (and b!3052880 (not c!506054)) b!3052883))

(assert (= (and b!3052883 c!506053) b!3052881))

(assert (= (and b!3052883 (not c!506053)) b!3052894))

(assert (= (or b!3052884 b!3052891) bm!210322))

(assert (= (or b!3052884 b!3052891) bm!210323))

(assert (= (or b!3052884 b!3052891) bm!210321))

(assert (= (or b!3052876 b!3052897) bm!210324))

(assert (= (or b!3052895 b!3052883) bm!210319))

(assert (= (or b!3052898 bm!210323) bm!210320))

(assert (= (or b!3052898 bm!210321) bm!210325))

(assert (= (and d!854626 res!1254041) b!3052882))

(declare-fun m!3378877 () Bool)

(assert (=> d!854626 m!3378877))

(assert (=> d!854626 m!3378475))

(declare-fun m!3378879 () Bool)

(assert (=> bm!210320 m!3378879))

(declare-fun m!3378881 () Bool)

(assert (=> bm!210324 m!3378881))

(declare-fun m!3378883 () Bool)

(assert (=> b!3052880 m!3378883))

(declare-fun m!3378885 () Bool)

(assert (=> b!3052882 m!3378885))

(declare-fun m!3378887 () Bool)

(assert (=> b!3052882 m!3378887))

(declare-fun m!3378889 () Bool)

(assert (=> bm!210319 m!3378889))

(declare-fun m!3378891 () Bool)

(assert (=> bm!210322 m!3378891))

(declare-fun m!3378893 () Bool)

(assert (=> bm!210325 m!3378893))

(assert (=> b!3052172 d!854626))

(declare-fun d!854628 () Bool)

(assert (=> d!854628 (matchR!4343 (Star!9461 lt!1048500) (++!8450 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))

(declare-fun lt!1048650 () Unit!49359)

(declare-fun choose!18091 (Regex!9461 List!35326 List!35326) Unit!49359)

(assert (=> d!854628 (= lt!1048650 (choose!18091 lt!1048500 (_1!20206 lt!1048505) (_2!20206 lt!1048505)))))

(assert (=> d!854628 (validRegex!4194 (Star!9461 lt!1048500))))

(assert (=> d!854628 (= (lemmaStarApp!24 lt!1048500 (_1!20206 lt!1048505) (_2!20206 lt!1048505)) lt!1048650)))

(declare-fun bs!532358 () Bool)

(assert (= bs!532358 d!854628))

(assert (=> bs!532358 m!3378493))

(assert (=> bs!532358 m!3378493))

(declare-fun m!3378895 () Bool)

(assert (=> bs!532358 m!3378895))

(declare-fun m!3378897 () Bool)

(assert (=> bs!532358 m!3378897))

(declare-fun m!3378899 () Bool)

(assert (=> bs!532358 m!3378899))

(assert (=> b!3052172 d!854628))

(declare-fun b!3052900 () Bool)

(declare-fun res!1254051 () Bool)

(declare-fun e!1912434 () Bool)

(assert (=> b!3052900 (=> res!1254051 e!1912434)))

(assert (=> b!3052900 (= res!1254051 (not ((_ is ElementMatch!9461) (simplify!416 r!17423))))))

(declare-fun e!1912433 () Bool)

(assert (=> b!3052900 (= e!1912433 e!1912434)))

(declare-fun b!3052901 () Bool)

(declare-fun res!1254047 () Bool)

(assert (=> b!3052901 (=> res!1254047 e!1912434)))

(declare-fun e!1912429 () Bool)

(assert (=> b!3052901 (= res!1254047 e!1912429)))

(declare-fun res!1254048 () Bool)

(assert (=> b!3052901 (=> (not res!1254048) (not e!1912429))))

(declare-fun lt!1048651 () Bool)

(assert (=> b!3052901 (= res!1254048 lt!1048651)))

(declare-fun bm!210326 () Bool)

(declare-fun call!210331 () Bool)

(assert (=> bm!210326 (= call!210331 (isEmpty!19515 s!11993))))

(declare-fun b!3052902 () Bool)

(declare-fun e!1912435 () Bool)

(assert (=> b!3052902 (= e!1912435 e!1912433)))

(declare-fun c!506065 () Bool)

(assert (=> b!3052902 (= c!506065 ((_ is EmptyLang!9461) (simplify!416 r!17423)))))

(declare-fun b!3052903 () Bool)

(assert (=> b!3052903 (= e!1912429 (= (head!6763 s!11993) (c!505859 (simplify!416 r!17423))))))

(declare-fun b!3052904 () Bool)

(declare-fun res!1254045 () Bool)

(declare-fun e!1912430 () Bool)

(assert (=> b!3052904 (=> res!1254045 e!1912430)))

(assert (=> b!3052904 (= res!1254045 (not (isEmpty!19515 (tail!4989 s!11993))))))

(declare-fun d!854630 () Bool)

(assert (=> d!854630 e!1912435))

(declare-fun c!506064 () Bool)

(assert (=> d!854630 (= c!506064 ((_ is EmptyExpr!9461) (simplify!416 r!17423)))))

(declare-fun e!1912432 () Bool)

(assert (=> d!854630 (= lt!1048651 e!1912432)))

(declare-fun c!506066 () Bool)

(assert (=> d!854630 (= c!506066 (isEmpty!19515 s!11993))))

(assert (=> d!854630 (validRegex!4194 (simplify!416 r!17423))))

(assert (=> d!854630 (= (matchR!4343 (simplify!416 r!17423) s!11993) lt!1048651)))

(declare-fun b!3052905 () Bool)

(declare-fun e!1912431 () Bool)

(assert (=> b!3052905 (= e!1912431 e!1912430)))

(declare-fun res!1254049 () Bool)

(assert (=> b!3052905 (=> res!1254049 e!1912430)))

(assert (=> b!3052905 (= res!1254049 call!210331)))

(declare-fun b!3052906 () Bool)

(assert (=> b!3052906 (= e!1912432 (nullable!3107 (simplify!416 r!17423)))))

(declare-fun b!3052907 () Bool)

(declare-fun res!1254044 () Bool)

(assert (=> b!3052907 (=> (not res!1254044) (not e!1912429))))

(assert (=> b!3052907 (= res!1254044 (not call!210331))))

(declare-fun b!3052908 () Bool)

(assert (=> b!3052908 (= e!1912435 (= lt!1048651 call!210331))))

(declare-fun b!3052909 () Bool)

(declare-fun res!1254046 () Bool)

(assert (=> b!3052909 (=> (not res!1254046) (not e!1912429))))

(assert (=> b!3052909 (= res!1254046 (isEmpty!19515 (tail!4989 s!11993)))))

(declare-fun b!3052910 () Bool)

(assert (=> b!3052910 (= e!1912430 (not (= (head!6763 s!11993) (c!505859 (simplify!416 r!17423)))))))

(declare-fun b!3052911 () Bool)

(assert (=> b!3052911 (= e!1912432 (matchR!4343 (derivativeStep!2704 (simplify!416 r!17423) (head!6763 s!11993)) (tail!4989 s!11993)))))

(declare-fun b!3052912 () Bool)

(assert (=> b!3052912 (= e!1912433 (not lt!1048651))))

(declare-fun b!3052913 () Bool)

(assert (=> b!3052913 (= e!1912434 e!1912431)))

(declare-fun res!1254050 () Bool)

(assert (=> b!3052913 (=> (not res!1254050) (not e!1912431))))

(assert (=> b!3052913 (= res!1254050 (not lt!1048651))))

(assert (= (and d!854630 c!506066) b!3052906))

(assert (= (and d!854630 (not c!506066)) b!3052911))

(assert (= (and d!854630 c!506064) b!3052908))

(assert (= (and d!854630 (not c!506064)) b!3052902))

(assert (= (and b!3052902 c!506065) b!3052912))

(assert (= (and b!3052902 (not c!506065)) b!3052900))

(assert (= (and b!3052900 (not res!1254051)) b!3052901))

(assert (= (and b!3052901 res!1254048) b!3052907))

(assert (= (and b!3052907 res!1254044) b!3052909))

(assert (= (and b!3052909 res!1254046) b!3052903))

(assert (= (and b!3052901 (not res!1254047)) b!3052913))

(assert (= (and b!3052913 res!1254050) b!3052905))

(assert (= (and b!3052905 (not res!1254049)) b!3052904))

(assert (= (and b!3052904 (not res!1254045)) b!3052910))

(assert (= (or b!3052908 b!3052905 b!3052907) bm!210326))

(declare-fun m!3378901 () Bool)

(assert (=> b!3052903 m!3378901))

(declare-fun m!3378903 () Bool)

(assert (=> b!3052904 m!3378903))

(assert (=> b!3052904 m!3378903))

(declare-fun m!3378905 () Bool)

(assert (=> b!3052904 m!3378905))

(assert (=> d!854630 m!3378439))

(assert (=> d!854630 m!3378487))

(declare-fun m!3378907 () Bool)

(assert (=> d!854630 m!3378907))

(assert (=> b!3052911 m!3378901))

(assert (=> b!3052911 m!3378487))

(assert (=> b!3052911 m!3378901))

(declare-fun m!3378909 () Bool)

(assert (=> b!3052911 m!3378909))

(assert (=> b!3052911 m!3378903))

(assert (=> b!3052911 m!3378909))

(assert (=> b!3052911 m!3378903))

(declare-fun m!3378911 () Bool)

(assert (=> b!3052911 m!3378911))

(assert (=> b!3052906 m!3378487))

(declare-fun m!3378913 () Bool)

(assert (=> b!3052906 m!3378913))

(assert (=> b!3052910 m!3378901))

(assert (=> b!3052909 m!3378903))

(assert (=> b!3052909 m!3378903))

(assert (=> b!3052909 m!3378905))

(assert (=> bm!210326 m!3378439))

(assert (=> b!3052172 d!854630))

(declare-fun d!854632 () Bool)

(assert (=> d!854632 (= (matchR!4343 (reg!9790 r!17423) (_1!20206 lt!1048505)) (matchRSpec!1598 (reg!9790 r!17423) (_1!20206 lt!1048505)))))

(declare-fun lt!1048654 () Unit!49359)

(declare-fun choose!18092 (Regex!9461 List!35326) Unit!49359)

(assert (=> d!854632 (= lt!1048654 (choose!18092 (reg!9790 r!17423) (_1!20206 lt!1048505)))))

(assert (=> d!854632 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854632 (= (mainMatchTheorem!1598 (reg!9790 r!17423) (_1!20206 lt!1048505)) lt!1048654)))

(declare-fun bs!532359 () Bool)

(assert (= bs!532359 d!854632))

(assert (=> bs!532359 m!3378477))

(declare-fun m!3378915 () Bool)

(assert (=> bs!532359 m!3378915))

(declare-fun m!3378917 () Bool)

(assert (=> bs!532359 m!3378917))

(assert (=> bs!532359 m!3378583))

(assert (=> b!3052177 d!854632))

(declare-fun bm!210333 () Bool)

(declare-fun call!210340 () Bool)

(declare-fun call!210338 () Bool)

(assert (=> bm!210333 (= call!210340 call!210338)))

(declare-fun d!854634 () Bool)

(declare-fun res!1254063 () Bool)

(declare-fun e!1912455 () Bool)

(assert (=> d!854634 (=> res!1254063 e!1912455)))

(assert (=> d!854634 (= res!1254063 ((_ is ElementMatch!9461) r!17423))))

(assert (=> d!854634 (= (validRegex!4194 r!17423) e!1912455)))

(declare-fun b!3052932 () Bool)

(declare-fun e!1912454 () Bool)

(assert (=> b!3052932 (= e!1912454 call!210340)))

(declare-fun b!3052933 () Bool)

(declare-fun e!1912450 () Bool)

(assert (=> b!3052933 (= e!1912455 e!1912450)))

(declare-fun c!506071 () Bool)

(assert (=> b!3052933 (= c!506071 ((_ is Star!9461) r!17423))))

(declare-fun b!3052934 () Bool)

(declare-fun e!1912456 () Bool)

(assert (=> b!3052934 (= e!1912456 e!1912454)))

(declare-fun res!1254064 () Bool)

(assert (=> b!3052934 (=> (not res!1254064) (not e!1912454))))

(declare-fun call!210339 () Bool)

(assert (=> b!3052934 (= res!1254064 call!210339)))

(declare-fun b!3052935 () Bool)

(declare-fun res!1254062 () Bool)

(assert (=> b!3052935 (=> res!1254062 e!1912456)))

(assert (=> b!3052935 (= res!1254062 (not ((_ is Concat!14782) r!17423)))))

(declare-fun e!1912453 () Bool)

(assert (=> b!3052935 (= e!1912453 e!1912456)))

(declare-fun b!3052936 () Bool)

(declare-fun res!1254066 () Bool)

(declare-fun e!1912451 () Bool)

(assert (=> b!3052936 (=> (not res!1254066) (not e!1912451))))

(assert (=> b!3052936 (= res!1254066 call!210340)))

(assert (=> b!3052936 (= e!1912453 e!1912451)))

(declare-fun b!3052937 () Bool)

(assert (=> b!3052937 (= e!1912450 e!1912453)))

(declare-fun c!506072 () Bool)

(assert (=> b!3052937 (= c!506072 ((_ is Union!9461) r!17423))))

(declare-fun b!3052938 () Bool)

(declare-fun e!1912452 () Bool)

(assert (=> b!3052938 (= e!1912450 e!1912452)))

(declare-fun res!1254065 () Bool)

(assert (=> b!3052938 (= res!1254065 (not (nullable!3107 (reg!9790 r!17423))))))

(assert (=> b!3052938 (=> (not res!1254065) (not e!1912452))))

(declare-fun b!3052939 () Bool)

(assert (=> b!3052939 (= e!1912451 call!210339)))

(declare-fun b!3052940 () Bool)

(assert (=> b!3052940 (= e!1912452 call!210338)))

(declare-fun bm!210334 () Bool)

(assert (=> bm!210334 (= call!210338 (validRegex!4194 (ite c!506071 (reg!9790 r!17423) (ite c!506072 (regOne!19435 r!17423) (regTwo!19434 r!17423)))))))

(declare-fun bm!210335 () Bool)

(assert (=> bm!210335 (= call!210339 (validRegex!4194 (ite c!506072 (regTwo!19435 r!17423) (regOne!19434 r!17423))))))

(assert (= (and d!854634 (not res!1254063)) b!3052933))

(assert (= (and b!3052933 c!506071) b!3052938))

(assert (= (and b!3052933 (not c!506071)) b!3052937))

(assert (= (and b!3052938 res!1254065) b!3052940))

(assert (= (and b!3052937 c!506072) b!3052936))

(assert (= (and b!3052937 (not c!506072)) b!3052935))

(assert (= (and b!3052936 res!1254066) b!3052939))

(assert (= (and b!3052935 (not res!1254062)) b!3052934))

(assert (= (and b!3052934 res!1254064) b!3052932))

(assert (= (or b!3052936 b!3052932) bm!210333))

(assert (= (or b!3052939 b!3052934) bm!210335))

(assert (= (or b!3052940 bm!210333) bm!210334))

(assert (=> b!3052938 m!3378795))

(declare-fun m!3378919 () Bool)

(assert (=> bm!210334 m!3378919))

(declare-fun m!3378921 () Bool)

(assert (=> bm!210335 m!3378921))

(assert (=> start!291660 d!854634))

(declare-fun bs!532360 () Bool)

(declare-fun b!3052974 () Bool)

(assert (= bs!532360 (and b!3052974 d!854554)))

(declare-fun lambda!113729 () Int)

(assert (=> bs!532360 (not (= lambda!113729 lambda!113714))))

(assert (=> bs!532360 (= (= r!17423 (Star!9461 (reg!9790 r!17423))) (= lambda!113729 lambda!113715))))

(declare-fun bs!532361 () Bool)

(assert (= bs!532361 (and b!3052974 b!3052181)))

(assert (=> bs!532361 (= (= r!17423 lt!1048506) (= lambda!113729 lambda!113700))))

(assert (=> bs!532361 (not (= lambda!113729 lambda!113699))))

(declare-fun bs!532362 () Bool)

(assert (= bs!532362 (and b!3052974 d!854540)))

(assert (=> bs!532362 (not (= lambda!113729 lambda!113709))))

(assert (=> b!3052974 true))

(assert (=> b!3052974 true))

(declare-fun bs!532363 () Bool)

(declare-fun b!3052976 () Bool)

(assert (= bs!532363 (and b!3052976 d!854554)))

(declare-fun lambda!113730 () Int)

(assert (=> bs!532363 (not (= lambda!113730 lambda!113714))))

(assert (=> bs!532363 (not (= lambda!113730 lambda!113715))))

(declare-fun bs!532364 () Bool)

(assert (= bs!532364 (and b!3052976 b!3052181)))

(assert (=> bs!532364 (not (= lambda!113730 lambda!113700))))

(assert (=> bs!532364 (not (= lambda!113730 lambda!113699))))

(declare-fun bs!532365 () Bool)

(assert (= bs!532365 (and b!3052976 d!854540)))

(assert (=> bs!532365 (not (= lambda!113730 lambda!113709))))

(declare-fun bs!532366 () Bool)

(assert (= bs!532366 (and b!3052976 b!3052974)))

(assert (=> bs!532366 (not (= lambda!113730 lambda!113729))))

(assert (=> b!3052976 true))

(assert (=> b!3052976 true))

(declare-fun b!3052973 () Bool)

(declare-fun e!1912475 () Bool)

(declare-fun e!1912477 () Bool)

(assert (=> b!3052973 (= e!1912475 e!1912477)))

(declare-fun res!1254085 () Bool)

(assert (=> b!3052973 (= res!1254085 (matchRSpec!1598 (regOne!19435 r!17423) s!11993))))

(assert (=> b!3052973 (=> res!1254085 e!1912477)))

(declare-fun e!1912478 () Bool)

(declare-fun call!210345 () Bool)

(assert (=> b!3052974 (= e!1912478 call!210345)))

(declare-fun bm!210340 () Bool)

(declare-fun c!506082 () Bool)

(assert (=> bm!210340 (= call!210345 (Exists!1725 (ite c!506082 lambda!113729 lambda!113730)))))

(declare-fun b!3052975 () Bool)

(declare-fun res!1254083 () Bool)

(assert (=> b!3052975 (=> res!1254083 e!1912478)))

(declare-fun call!210346 () Bool)

(assert (=> b!3052975 (= res!1254083 call!210346)))

(declare-fun e!1912476 () Bool)

(assert (=> b!3052975 (= e!1912476 e!1912478)))

(assert (=> b!3052976 (= e!1912476 call!210345)))

(declare-fun b!3052977 () Bool)

(declare-fun c!506084 () Bool)

(assert (=> b!3052977 (= c!506084 ((_ is ElementMatch!9461) r!17423))))

(declare-fun e!1912480 () Bool)

(declare-fun e!1912479 () Bool)

(assert (=> b!3052977 (= e!1912480 e!1912479)))

(declare-fun b!3052978 () Bool)

(assert (=> b!3052978 (= e!1912477 (matchRSpec!1598 (regTwo!19435 r!17423) s!11993))))

(declare-fun b!3052979 () Bool)

(declare-fun e!1912481 () Bool)

(assert (=> b!3052979 (= e!1912481 call!210346)))

(declare-fun d!854636 () Bool)

(declare-fun c!506081 () Bool)

(assert (=> d!854636 (= c!506081 ((_ is EmptyExpr!9461) r!17423))))

(assert (=> d!854636 (= (matchRSpec!1598 r!17423 s!11993) e!1912481)))

(declare-fun b!3052980 () Bool)

(assert (=> b!3052980 (= e!1912479 (= s!11993 (Cons!35202 (c!505859 r!17423) Nil!35202)))))

(declare-fun b!3052981 () Bool)

(declare-fun c!506083 () Bool)

(assert (=> b!3052981 (= c!506083 ((_ is Union!9461) r!17423))))

(assert (=> b!3052981 (= e!1912479 e!1912475)))

(declare-fun b!3052982 () Bool)

(assert (=> b!3052982 (= e!1912481 e!1912480)))

(declare-fun res!1254084 () Bool)

(assert (=> b!3052982 (= res!1254084 (not ((_ is EmptyLang!9461) r!17423)))))

(assert (=> b!3052982 (=> (not res!1254084) (not e!1912480))))

(declare-fun bm!210341 () Bool)

(assert (=> bm!210341 (= call!210346 (isEmpty!19515 s!11993))))

(declare-fun b!3052983 () Bool)

(assert (=> b!3052983 (= e!1912475 e!1912476)))

(assert (=> b!3052983 (= c!506082 ((_ is Star!9461) r!17423))))

(assert (= (and d!854636 c!506081) b!3052979))

(assert (= (and d!854636 (not c!506081)) b!3052982))

(assert (= (and b!3052982 res!1254084) b!3052977))

(assert (= (and b!3052977 c!506084) b!3052980))

(assert (= (and b!3052977 (not c!506084)) b!3052981))

(assert (= (and b!3052981 c!506083) b!3052973))

(assert (= (and b!3052981 (not c!506083)) b!3052983))

(assert (= (and b!3052973 (not res!1254085)) b!3052978))

(assert (= (and b!3052983 c!506082) b!3052975))

(assert (= (and b!3052983 (not c!506082)) b!3052976))

(assert (= (and b!3052975 (not res!1254083)) b!3052974))

(assert (= (or b!3052974 b!3052976) bm!210340))

(assert (= (or b!3052979 b!3052975) bm!210341))

(declare-fun m!3378923 () Bool)

(assert (=> b!3052973 m!3378923))

(declare-fun m!3378925 () Bool)

(assert (=> bm!210340 m!3378925))

(declare-fun m!3378927 () Bool)

(assert (=> b!3052978 m!3378927))

(assert (=> bm!210341 m!3378439))

(assert (=> b!3052179 d!854636))

(declare-fun b!3052984 () Bool)

(declare-fun res!1254093 () Bool)

(declare-fun e!1912487 () Bool)

(assert (=> b!3052984 (=> res!1254093 e!1912487)))

(assert (=> b!3052984 (= res!1254093 (not ((_ is ElementMatch!9461) r!17423)))))

(declare-fun e!1912486 () Bool)

(assert (=> b!3052984 (= e!1912486 e!1912487)))

(declare-fun b!3052985 () Bool)

(declare-fun res!1254089 () Bool)

(assert (=> b!3052985 (=> res!1254089 e!1912487)))

(declare-fun e!1912482 () Bool)

(assert (=> b!3052985 (= res!1254089 e!1912482)))

(declare-fun res!1254090 () Bool)

(assert (=> b!3052985 (=> (not res!1254090) (not e!1912482))))

(declare-fun lt!1048655 () Bool)

(assert (=> b!3052985 (= res!1254090 lt!1048655)))

(declare-fun bm!210342 () Bool)

(declare-fun call!210347 () Bool)

(assert (=> bm!210342 (= call!210347 (isEmpty!19515 s!11993))))

(declare-fun b!3052986 () Bool)

(declare-fun e!1912488 () Bool)

(assert (=> b!3052986 (= e!1912488 e!1912486)))

(declare-fun c!506086 () Bool)

(assert (=> b!3052986 (= c!506086 ((_ is EmptyLang!9461) r!17423))))

(declare-fun b!3052987 () Bool)

(assert (=> b!3052987 (= e!1912482 (= (head!6763 s!11993) (c!505859 r!17423)))))

(declare-fun b!3052988 () Bool)

(declare-fun res!1254087 () Bool)

(declare-fun e!1912483 () Bool)

(assert (=> b!3052988 (=> res!1254087 e!1912483)))

(assert (=> b!3052988 (= res!1254087 (not (isEmpty!19515 (tail!4989 s!11993))))))

(declare-fun d!854638 () Bool)

(assert (=> d!854638 e!1912488))

(declare-fun c!506085 () Bool)

(assert (=> d!854638 (= c!506085 ((_ is EmptyExpr!9461) r!17423))))

(declare-fun e!1912485 () Bool)

(assert (=> d!854638 (= lt!1048655 e!1912485)))

(declare-fun c!506087 () Bool)

(assert (=> d!854638 (= c!506087 (isEmpty!19515 s!11993))))

(assert (=> d!854638 (validRegex!4194 r!17423)))

(assert (=> d!854638 (= (matchR!4343 r!17423 s!11993) lt!1048655)))

(declare-fun b!3052989 () Bool)

(declare-fun e!1912484 () Bool)

(assert (=> b!3052989 (= e!1912484 e!1912483)))

(declare-fun res!1254091 () Bool)

(assert (=> b!3052989 (=> res!1254091 e!1912483)))

(assert (=> b!3052989 (= res!1254091 call!210347)))

(declare-fun b!3052990 () Bool)

(assert (=> b!3052990 (= e!1912485 (nullable!3107 r!17423))))

(declare-fun b!3052991 () Bool)

(declare-fun res!1254086 () Bool)

(assert (=> b!3052991 (=> (not res!1254086) (not e!1912482))))

(assert (=> b!3052991 (= res!1254086 (not call!210347))))

(declare-fun b!3052992 () Bool)

(assert (=> b!3052992 (= e!1912488 (= lt!1048655 call!210347))))

(declare-fun b!3052993 () Bool)

(declare-fun res!1254088 () Bool)

(assert (=> b!3052993 (=> (not res!1254088) (not e!1912482))))

(assert (=> b!3052993 (= res!1254088 (isEmpty!19515 (tail!4989 s!11993)))))

(declare-fun b!3052994 () Bool)

(assert (=> b!3052994 (= e!1912483 (not (= (head!6763 s!11993) (c!505859 r!17423))))))

(declare-fun b!3052995 () Bool)

(assert (=> b!3052995 (= e!1912485 (matchR!4343 (derivativeStep!2704 r!17423 (head!6763 s!11993)) (tail!4989 s!11993)))))

(declare-fun b!3052996 () Bool)

(assert (=> b!3052996 (= e!1912486 (not lt!1048655))))

(declare-fun b!3052997 () Bool)

(assert (=> b!3052997 (= e!1912487 e!1912484)))

(declare-fun res!1254092 () Bool)

(assert (=> b!3052997 (=> (not res!1254092) (not e!1912484))))

(assert (=> b!3052997 (= res!1254092 (not lt!1048655))))

(assert (= (and d!854638 c!506087) b!3052990))

(assert (= (and d!854638 (not c!506087)) b!3052995))

(assert (= (and d!854638 c!506085) b!3052992))

(assert (= (and d!854638 (not c!506085)) b!3052986))

(assert (= (and b!3052986 c!506086) b!3052996))

(assert (= (and b!3052986 (not c!506086)) b!3052984))

(assert (= (and b!3052984 (not res!1254093)) b!3052985))

(assert (= (and b!3052985 res!1254090) b!3052991))

(assert (= (and b!3052991 res!1254086) b!3052993))

(assert (= (and b!3052993 res!1254088) b!3052987))

(assert (= (and b!3052985 (not res!1254089)) b!3052997))

(assert (= (and b!3052997 res!1254092) b!3052989))

(assert (= (and b!3052989 (not res!1254091)) b!3052988))

(assert (= (and b!3052988 (not res!1254087)) b!3052994))

(assert (= (or b!3052992 b!3052989 b!3052991) bm!210342))

(assert (=> b!3052987 m!3378901))

(assert (=> b!3052988 m!3378903))

(assert (=> b!3052988 m!3378903))

(assert (=> b!3052988 m!3378905))

(assert (=> d!854638 m!3378439))

(assert (=> d!854638 m!3378475))

(assert (=> b!3052995 m!3378901))

(assert (=> b!3052995 m!3378901))

(declare-fun m!3378929 () Bool)

(assert (=> b!3052995 m!3378929))

(assert (=> b!3052995 m!3378903))

(assert (=> b!3052995 m!3378929))

(assert (=> b!3052995 m!3378903))

(declare-fun m!3378931 () Bool)

(assert (=> b!3052995 m!3378931))

(assert (=> b!3052990 m!3378887))

(assert (=> b!3052994 m!3378901))

(assert (=> b!3052993 m!3378903))

(assert (=> b!3052993 m!3378903))

(assert (=> b!3052993 m!3378905))

(assert (=> bm!210342 m!3378439))

(assert (=> b!3052179 d!854638))

(declare-fun d!854640 () Bool)

(assert (=> d!854640 (= (matchR!4343 r!17423 s!11993) (matchRSpec!1598 r!17423 s!11993))))

(declare-fun lt!1048656 () Unit!49359)

(assert (=> d!854640 (= lt!1048656 (choose!18092 r!17423 s!11993))))

(assert (=> d!854640 (validRegex!4194 r!17423)))

(assert (=> d!854640 (= (mainMatchTheorem!1598 r!17423 s!11993) lt!1048656)))

(declare-fun bs!532367 () Bool)

(assert (= bs!532367 d!854640))

(assert (=> bs!532367 m!3378483))

(assert (=> bs!532367 m!3378481))

(declare-fun m!3378933 () Bool)

(assert (=> bs!532367 m!3378933))

(assert (=> bs!532367 m!3378475))

(assert (=> b!3052179 d!854640))

(declare-fun bm!210343 () Bool)

(declare-fun call!210350 () Bool)

(declare-fun call!210348 () Bool)

(assert (=> bm!210343 (= call!210350 call!210348)))

(declare-fun d!854642 () Bool)

(declare-fun res!1254095 () Bool)

(declare-fun e!1912494 () Bool)

(assert (=> d!854642 (=> res!1254095 e!1912494)))

(assert (=> d!854642 (= res!1254095 ((_ is ElementMatch!9461) lt!1048508))))

(assert (=> d!854642 (= (validRegex!4194 lt!1048508) e!1912494)))

(declare-fun b!3052998 () Bool)

(declare-fun e!1912493 () Bool)

(assert (=> b!3052998 (= e!1912493 call!210350)))

(declare-fun b!3052999 () Bool)

(declare-fun e!1912489 () Bool)

(assert (=> b!3052999 (= e!1912494 e!1912489)))

(declare-fun c!506088 () Bool)

(assert (=> b!3052999 (= c!506088 ((_ is Star!9461) lt!1048508))))

(declare-fun b!3053000 () Bool)

(declare-fun e!1912495 () Bool)

(assert (=> b!3053000 (= e!1912495 e!1912493)))

(declare-fun res!1254096 () Bool)

(assert (=> b!3053000 (=> (not res!1254096) (not e!1912493))))

(declare-fun call!210349 () Bool)

(assert (=> b!3053000 (= res!1254096 call!210349)))

(declare-fun b!3053001 () Bool)

(declare-fun res!1254094 () Bool)

(assert (=> b!3053001 (=> res!1254094 e!1912495)))

(assert (=> b!3053001 (= res!1254094 (not ((_ is Concat!14782) lt!1048508)))))

(declare-fun e!1912492 () Bool)

(assert (=> b!3053001 (= e!1912492 e!1912495)))

(declare-fun b!3053002 () Bool)

(declare-fun res!1254098 () Bool)

(declare-fun e!1912490 () Bool)

(assert (=> b!3053002 (=> (not res!1254098) (not e!1912490))))

(assert (=> b!3053002 (= res!1254098 call!210350)))

(assert (=> b!3053002 (= e!1912492 e!1912490)))

(declare-fun b!3053003 () Bool)

(assert (=> b!3053003 (= e!1912489 e!1912492)))

(declare-fun c!506089 () Bool)

(assert (=> b!3053003 (= c!506089 ((_ is Union!9461) lt!1048508))))

(declare-fun b!3053004 () Bool)

(declare-fun e!1912491 () Bool)

(assert (=> b!3053004 (= e!1912489 e!1912491)))

(declare-fun res!1254097 () Bool)

(assert (=> b!3053004 (= res!1254097 (not (nullable!3107 (reg!9790 lt!1048508))))))

(assert (=> b!3053004 (=> (not res!1254097) (not e!1912491))))

(declare-fun b!3053005 () Bool)

(assert (=> b!3053005 (= e!1912490 call!210349)))

(declare-fun b!3053006 () Bool)

(assert (=> b!3053006 (= e!1912491 call!210348)))

(declare-fun bm!210344 () Bool)

(assert (=> bm!210344 (= call!210348 (validRegex!4194 (ite c!506088 (reg!9790 lt!1048508) (ite c!506089 (regOne!19435 lt!1048508) (regTwo!19434 lt!1048508)))))))

(declare-fun bm!210345 () Bool)

(assert (=> bm!210345 (= call!210349 (validRegex!4194 (ite c!506089 (regTwo!19435 lt!1048508) (regOne!19434 lt!1048508))))))

(assert (= (and d!854642 (not res!1254095)) b!3052999))

(assert (= (and b!3052999 c!506088) b!3053004))

(assert (= (and b!3052999 (not c!506088)) b!3053003))

(assert (= (and b!3053004 res!1254097) b!3053006))

(assert (= (and b!3053003 c!506089) b!3053002))

(assert (= (and b!3053003 (not c!506089)) b!3053001))

(assert (= (and b!3053002 res!1254098) b!3053005))

(assert (= (and b!3053001 (not res!1254094)) b!3053000))

(assert (= (and b!3053000 res!1254096) b!3052998))

(assert (= (or b!3053002 b!3052998) bm!210343))

(assert (= (or b!3053005 b!3053000) bm!210345))

(assert (= (or b!3053006 bm!210343) bm!210344))

(declare-fun m!3378935 () Bool)

(assert (=> b!3053004 m!3378935))

(declare-fun m!3378937 () Bool)

(assert (=> bm!210344 m!3378937))

(declare-fun m!3378939 () Bool)

(assert (=> bm!210345 m!3378939))

(assert (=> b!3052173 d!854642))

(declare-fun b!3053007 () Bool)

(declare-fun res!1254106 () Bool)

(declare-fun e!1912501 () Bool)

(assert (=> b!3053007 (=> res!1254106 e!1912501)))

(assert (=> b!3053007 (= res!1254106 (not ((_ is ElementMatch!9461) lt!1048508)))))

(declare-fun e!1912500 () Bool)

(assert (=> b!3053007 (= e!1912500 e!1912501)))

(declare-fun b!3053008 () Bool)

(declare-fun res!1254102 () Bool)

(assert (=> b!3053008 (=> res!1254102 e!1912501)))

(declare-fun e!1912496 () Bool)

(assert (=> b!3053008 (= res!1254102 e!1912496)))

(declare-fun res!1254103 () Bool)

(assert (=> b!3053008 (=> (not res!1254103) (not e!1912496))))

(declare-fun lt!1048657 () Bool)

(assert (=> b!3053008 (= res!1254103 lt!1048657)))

(declare-fun bm!210346 () Bool)

(declare-fun call!210351 () Bool)

(assert (=> bm!210346 (= call!210351 (isEmpty!19515 (_2!20206 lt!1048505)))))

(declare-fun b!3053009 () Bool)

(declare-fun e!1912502 () Bool)

(assert (=> b!3053009 (= e!1912502 e!1912500)))

(declare-fun c!506091 () Bool)

(assert (=> b!3053009 (= c!506091 ((_ is EmptyLang!9461) lt!1048508))))

(declare-fun b!3053010 () Bool)

(assert (=> b!3053010 (= e!1912496 (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048508)))))

(declare-fun b!3053011 () Bool)

(declare-fun res!1254100 () Bool)

(declare-fun e!1912497 () Bool)

(assert (=> b!3053011 (=> res!1254100 e!1912497)))

(assert (=> b!3053011 (= res!1254100 (not (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505)))))))

(declare-fun d!854644 () Bool)

(assert (=> d!854644 e!1912502))

(declare-fun c!506090 () Bool)

(assert (=> d!854644 (= c!506090 ((_ is EmptyExpr!9461) lt!1048508))))

(declare-fun e!1912499 () Bool)

(assert (=> d!854644 (= lt!1048657 e!1912499)))

(declare-fun c!506092 () Bool)

(assert (=> d!854644 (= c!506092 (isEmpty!19515 (_2!20206 lt!1048505)))))

(assert (=> d!854644 (validRegex!4194 lt!1048508)))

(assert (=> d!854644 (= (matchR!4343 lt!1048508 (_2!20206 lt!1048505)) lt!1048657)))

(declare-fun b!3053012 () Bool)

(declare-fun e!1912498 () Bool)

(assert (=> b!3053012 (= e!1912498 e!1912497)))

(declare-fun res!1254104 () Bool)

(assert (=> b!3053012 (=> res!1254104 e!1912497)))

(assert (=> b!3053012 (= res!1254104 call!210351)))

(declare-fun b!3053013 () Bool)

(assert (=> b!3053013 (= e!1912499 (nullable!3107 lt!1048508))))

(declare-fun b!3053014 () Bool)

(declare-fun res!1254099 () Bool)

(assert (=> b!3053014 (=> (not res!1254099) (not e!1912496))))

(assert (=> b!3053014 (= res!1254099 (not call!210351))))

(declare-fun b!3053015 () Bool)

(assert (=> b!3053015 (= e!1912502 (= lt!1048657 call!210351))))

(declare-fun b!3053016 () Bool)

(declare-fun res!1254101 () Bool)

(assert (=> b!3053016 (=> (not res!1254101) (not e!1912496))))

(assert (=> b!3053016 (= res!1254101 (isEmpty!19515 (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3053017 () Bool)

(assert (=> b!3053017 (= e!1912497 (not (= (head!6763 (_2!20206 lt!1048505)) (c!505859 lt!1048508))))))

(declare-fun b!3053018 () Bool)

(assert (=> b!3053018 (= e!1912499 (matchR!4343 (derivativeStep!2704 lt!1048508 (head!6763 (_2!20206 lt!1048505))) (tail!4989 (_2!20206 lt!1048505))))))

(declare-fun b!3053019 () Bool)

(assert (=> b!3053019 (= e!1912500 (not lt!1048657))))

(declare-fun b!3053020 () Bool)

(assert (=> b!3053020 (= e!1912501 e!1912498)))

(declare-fun res!1254105 () Bool)

(assert (=> b!3053020 (=> (not res!1254105) (not e!1912498))))

(assert (=> b!3053020 (= res!1254105 (not lt!1048657))))

(assert (= (and d!854644 c!506092) b!3053013))

(assert (= (and d!854644 (not c!506092)) b!3053018))

(assert (= (and d!854644 c!506090) b!3053015))

(assert (= (and d!854644 (not c!506090)) b!3053009))

(assert (= (and b!3053009 c!506091) b!3053019))

(assert (= (and b!3053009 (not c!506091)) b!3053007))

(assert (= (and b!3053007 (not res!1254106)) b!3053008))

(assert (= (and b!3053008 res!1254103) b!3053014))

(assert (= (and b!3053014 res!1254099) b!3053016))

(assert (= (and b!3053016 res!1254101) b!3053010))

(assert (= (and b!3053008 (not res!1254102)) b!3053020))

(assert (= (and b!3053020 res!1254105) b!3053012))

(assert (= (and b!3053012 (not res!1254104)) b!3053011))

(assert (= (and b!3053011 (not res!1254100)) b!3053017))

(assert (= (or b!3053015 b!3053012 b!3053014) bm!210346))

(assert (=> b!3053010 m!3378515))

(assert (=> b!3053011 m!3378517))

(assert (=> b!3053011 m!3378517))

(assert (=> b!3053011 m!3378519))

(assert (=> d!854644 m!3378521))

(assert (=> d!854644 m!3378469))

(assert (=> b!3053018 m!3378515))

(assert (=> b!3053018 m!3378515))

(declare-fun m!3378941 () Bool)

(assert (=> b!3053018 m!3378941))

(assert (=> b!3053018 m!3378517))

(assert (=> b!3053018 m!3378941))

(assert (=> b!3053018 m!3378517))

(declare-fun m!3378943 () Bool)

(assert (=> b!3053018 m!3378943))

(assert (=> b!3053013 m!3378863))

(assert (=> b!3053017 m!3378515))

(assert (=> b!3053016 m!3378517))

(assert (=> b!3053016 m!3378517))

(assert (=> b!3053016 m!3378519))

(assert (=> bm!210346 m!3378521))

(assert (=> b!3052180 d!854644))

(declare-fun b!3053021 () Bool)

(declare-fun res!1254114 () Bool)

(declare-fun e!1912508 () Bool)

(assert (=> b!3053021 (=> res!1254114 e!1912508)))

(assert (=> b!3053021 (= res!1254114 (not ((_ is ElementMatch!9461) (reg!9790 r!17423))))))

(declare-fun e!1912507 () Bool)

(assert (=> b!3053021 (= e!1912507 e!1912508)))

(declare-fun b!3053022 () Bool)

(declare-fun res!1254110 () Bool)

(assert (=> b!3053022 (=> res!1254110 e!1912508)))

(declare-fun e!1912503 () Bool)

(assert (=> b!3053022 (= res!1254110 e!1912503)))

(declare-fun res!1254111 () Bool)

(assert (=> b!3053022 (=> (not res!1254111) (not e!1912503))))

(declare-fun lt!1048658 () Bool)

(assert (=> b!3053022 (= res!1254111 lt!1048658)))

(declare-fun bm!210347 () Bool)

(declare-fun call!210352 () Bool)

(assert (=> bm!210347 (= call!210352 (isEmpty!19515 (_1!20206 lt!1048505)))))

(declare-fun b!3053023 () Bool)

(declare-fun e!1912509 () Bool)

(assert (=> b!3053023 (= e!1912509 e!1912507)))

(declare-fun c!506094 () Bool)

(assert (=> b!3053023 (= c!506094 ((_ is EmptyLang!9461) (reg!9790 r!17423)))))

(declare-fun b!3053024 () Bool)

(assert (=> b!3053024 (= e!1912503 (= (head!6763 (_1!20206 lt!1048505)) (c!505859 (reg!9790 r!17423))))))

(declare-fun b!3053025 () Bool)

(declare-fun res!1254108 () Bool)

(declare-fun e!1912504 () Bool)

(assert (=> b!3053025 (=> res!1254108 e!1912504)))

(assert (=> b!3053025 (= res!1254108 (not (isEmpty!19515 (tail!4989 (_1!20206 lt!1048505)))))))

(declare-fun d!854646 () Bool)

(assert (=> d!854646 e!1912509))

(declare-fun c!506093 () Bool)

(assert (=> d!854646 (= c!506093 ((_ is EmptyExpr!9461) (reg!9790 r!17423)))))

(declare-fun e!1912506 () Bool)

(assert (=> d!854646 (= lt!1048658 e!1912506)))

(declare-fun c!506095 () Bool)

(assert (=> d!854646 (= c!506095 (isEmpty!19515 (_1!20206 lt!1048505)))))

(assert (=> d!854646 (validRegex!4194 (reg!9790 r!17423))))

(assert (=> d!854646 (= (matchR!4343 (reg!9790 r!17423) (_1!20206 lt!1048505)) lt!1048658)))

(declare-fun b!3053026 () Bool)

(declare-fun e!1912505 () Bool)

(assert (=> b!3053026 (= e!1912505 e!1912504)))

(declare-fun res!1254112 () Bool)

(assert (=> b!3053026 (=> res!1254112 e!1912504)))

(assert (=> b!3053026 (= res!1254112 call!210352)))

(declare-fun b!3053027 () Bool)

(assert (=> b!3053027 (= e!1912506 (nullable!3107 (reg!9790 r!17423)))))

(declare-fun b!3053028 () Bool)

(declare-fun res!1254107 () Bool)

(assert (=> b!3053028 (=> (not res!1254107) (not e!1912503))))

(assert (=> b!3053028 (= res!1254107 (not call!210352))))

(declare-fun b!3053029 () Bool)

(assert (=> b!3053029 (= e!1912509 (= lt!1048658 call!210352))))

(declare-fun b!3053030 () Bool)

(declare-fun res!1254109 () Bool)

(assert (=> b!3053030 (=> (not res!1254109) (not e!1912503))))

(assert (=> b!3053030 (= res!1254109 (isEmpty!19515 (tail!4989 (_1!20206 lt!1048505))))))

(declare-fun b!3053031 () Bool)

(assert (=> b!3053031 (= e!1912504 (not (= (head!6763 (_1!20206 lt!1048505)) (c!505859 (reg!9790 r!17423)))))))

(declare-fun b!3053032 () Bool)

(assert (=> b!3053032 (= e!1912506 (matchR!4343 (derivativeStep!2704 (reg!9790 r!17423) (head!6763 (_1!20206 lt!1048505))) (tail!4989 (_1!20206 lt!1048505))))))

(declare-fun b!3053033 () Bool)

(assert (=> b!3053033 (= e!1912507 (not lt!1048658))))

(declare-fun b!3053034 () Bool)

(assert (=> b!3053034 (= e!1912508 e!1912505)))

(declare-fun res!1254113 () Bool)

(assert (=> b!3053034 (=> (not res!1254113) (not e!1912505))))

(assert (=> b!3053034 (= res!1254113 (not lt!1048658))))

(assert (= (and d!854646 c!506095) b!3053027))

(assert (= (and d!854646 (not c!506095)) b!3053032))

(assert (= (and d!854646 c!506093) b!3053029))

(assert (= (and d!854646 (not c!506093)) b!3053023))

(assert (= (and b!3053023 c!506094) b!3053033))

(assert (= (and b!3053023 (not c!506094)) b!3053021))

(assert (= (and b!3053021 (not res!1254114)) b!3053022))

(assert (= (and b!3053022 res!1254111) b!3053028))

(assert (= (and b!3053028 res!1254107) b!3053030))

(assert (= (and b!3053030 res!1254109) b!3053024))

(assert (= (and b!3053022 (not res!1254110)) b!3053034))

(assert (= (and b!3053034 res!1254113) b!3053026))

(assert (= (and b!3053026 (not res!1254112)) b!3053025))

(assert (= (and b!3053025 (not res!1254108)) b!3053031))

(assert (= (or b!3053029 b!3053026 b!3053028) bm!210347))

(assert (=> b!3053024 m!3378831))

(assert (=> b!3053025 m!3378833))

(assert (=> b!3053025 m!3378833))

(assert (=> b!3053025 m!3378835))

(assert (=> d!854646 m!3378837))

(assert (=> d!854646 m!3378583))

(assert (=> b!3053032 m!3378831))

(assert (=> b!3053032 m!3378831))

(declare-fun m!3378945 () Bool)

(assert (=> b!3053032 m!3378945))

(assert (=> b!3053032 m!3378833))

(assert (=> b!3053032 m!3378945))

(assert (=> b!3053032 m!3378833))

(declare-fun m!3378947 () Bool)

(assert (=> b!3053032 m!3378947))

(assert (=> b!3053027 m!3378795))

(assert (=> b!3053031 m!3378831))

(assert (=> b!3053030 m!3378833))

(assert (=> b!3053030 m!3378833))

(assert (=> b!3053030 m!3378835))

(assert (=> bm!210347 m!3378837))

(assert (=> b!3052185 d!854646))

(declare-fun d!854648 () Bool)

(assert (=> d!854648 (= (get!11003 lt!1048501) (v!34939 lt!1048501))))

(assert (=> b!3052185 d!854648))

(declare-fun b!3053039 () Bool)

(declare-fun e!1912512 () Bool)

(declare-fun tp!965914 () Bool)

(assert (=> b!3053039 (= e!1912512 (and tp_is_empty!16485 tp!965914))))

(assert (=> b!3052182 (= tp!965873 e!1912512)))

(assert (= (and b!3052182 ((_ is Cons!35202) (t!234391 s!11993))) b!3053039))

(declare-fun b!3053051 () Bool)

(declare-fun e!1912515 () Bool)

(declare-fun tp!965925 () Bool)

(declare-fun tp!965926 () Bool)

(assert (=> b!3053051 (= e!1912515 (and tp!965925 tp!965926))))

(declare-fun b!3053050 () Bool)

(assert (=> b!3053050 (= e!1912515 tp_is_empty!16485)))

(assert (=> b!3052184 (= tp!965868 e!1912515)))

(declare-fun b!3053052 () Bool)

(declare-fun tp!965928 () Bool)

(assert (=> b!3053052 (= e!1912515 tp!965928)))

(declare-fun b!3053053 () Bool)

(declare-fun tp!965929 () Bool)

(declare-fun tp!965927 () Bool)

(assert (=> b!3053053 (= e!1912515 (and tp!965929 tp!965927))))

(assert (= (and b!3052184 ((_ is ElementMatch!9461) (reg!9790 r!17423))) b!3053050))

(assert (= (and b!3052184 ((_ is Concat!14782) (reg!9790 r!17423))) b!3053051))

(assert (= (and b!3052184 ((_ is Star!9461) (reg!9790 r!17423))) b!3053052))

(assert (= (and b!3052184 ((_ is Union!9461) (reg!9790 r!17423))) b!3053053))

(declare-fun b!3053055 () Bool)

(declare-fun e!1912516 () Bool)

(declare-fun tp!965930 () Bool)

(declare-fun tp!965931 () Bool)

(assert (=> b!3053055 (= e!1912516 (and tp!965930 tp!965931))))

(declare-fun b!3053054 () Bool)

(assert (=> b!3053054 (= e!1912516 tp_is_empty!16485)))

(assert (=> b!3052170 (= tp!965871 e!1912516)))

(declare-fun b!3053056 () Bool)

(declare-fun tp!965933 () Bool)

(assert (=> b!3053056 (= e!1912516 tp!965933)))

(declare-fun b!3053057 () Bool)

(declare-fun tp!965934 () Bool)

(declare-fun tp!965932 () Bool)

(assert (=> b!3053057 (= e!1912516 (and tp!965934 tp!965932))))

(assert (= (and b!3052170 ((_ is ElementMatch!9461) (regOne!19434 r!17423))) b!3053054))

(assert (= (and b!3052170 ((_ is Concat!14782) (regOne!19434 r!17423))) b!3053055))

(assert (= (and b!3052170 ((_ is Star!9461) (regOne!19434 r!17423))) b!3053056))

(assert (= (and b!3052170 ((_ is Union!9461) (regOne!19434 r!17423))) b!3053057))

(declare-fun b!3053059 () Bool)

(declare-fun e!1912517 () Bool)

(declare-fun tp!965935 () Bool)

(declare-fun tp!965936 () Bool)

(assert (=> b!3053059 (= e!1912517 (and tp!965935 tp!965936))))

(declare-fun b!3053058 () Bool)

(assert (=> b!3053058 (= e!1912517 tp_is_empty!16485)))

(assert (=> b!3052170 (= tp!965872 e!1912517)))

(declare-fun b!3053060 () Bool)

(declare-fun tp!965938 () Bool)

(assert (=> b!3053060 (= e!1912517 tp!965938)))

(declare-fun b!3053061 () Bool)

(declare-fun tp!965939 () Bool)

(declare-fun tp!965937 () Bool)

(assert (=> b!3053061 (= e!1912517 (and tp!965939 tp!965937))))

(assert (= (and b!3052170 ((_ is ElementMatch!9461) (regTwo!19434 r!17423))) b!3053058))

(assert (= (and b!3052170 ((_ is Concat!14782) (regTwo!19434 r!17423))) b!3053059))

(assert (= (and b!3052170 ((_ is Star!9461) (regTwo!19434 r!17423))) b!3053060))

(assert (= (and b!3052170 ((_ is Union!9461) (regTwo!19434 r!17423))) b!3053061))

(declare-fun b!3053063 () Bool)

(declare-fun e!1912518 () Bool)

(declare-fun tp!965940 () Bool)

(declare-fun tp!965941 () Bool)

(assert (=> b!3053063 (= e!1912518 (and tp!965940 tp!965941))))

(declare-fun b!3053062 () Bool)

(assert (=> b!3053062 (= e!1912518 tp_is_empty!16485)))

(assert (=> b!3052175 (= tp!965869 e!1912518)))

(declare-fun b!3053064 () Bool)

(declare-fun tp!965943 () Bool)

(assert (=> b!3053064 (= e!1912518 tp!965943)))

(declare-fun b!3053065 () Bool)

(declare-fun tp!965944 () Bool)

(declare-fun tp!965942 () Bool)

(assert (=> b!3053065 (= e!1912518 (and tp!965944 tp!965942))))

(assert (= (and b!3052175 ((_ is ElementMatch!9461) (regOne!19435 r!17423))) b!3053062))

(assert (= (and b!3052175 ((_ is Concat!14782) (regOne!19435 r!17423))) b!3053063))

(assert (= (and b!3052175 ((_ is Star!9461) (regOne!19435 r!17423))) b!3053064))

(assert (= (and b!3052175 ((_ is Union!9461) (regOne!19435 r!17423))) b!3053065))

(declare-fun b!3053067 () Bool)

(declare-fun e!1912519 () Bool)

(declare-fun tp!965945 () Bool)

(declare-fun tp!965946 () Bool)

(assert (=> b!3053067 (= e!1912519 (and tp!965945 tp!965946))))

(declare-fun b!3053066 () Bool)

(assert (=> b!3053066 (= e!1912519 tp_is_empty!16485)))

(assert (=> b!3052175 (= tp!965870 e!1912519)))

(declare-fun b!3053068 () Bool)

(declare-fun tp!965948 () Bool)

(assert (=> b!3053068 (= e!1912519 tp!965948)))

(declare-fun b!3053069 () Bool)

(declare-fun tp!965949 () Bool)

(declare-fun tp!965947 () Bool)

(assert (=> b!3053069 (= e!1912519 (and tp!965949 tp!965947))))

(assert (= (and b!3052175 ((_ is ElementMatch!9461) (regTwo!19435 r!17423))) b!3053066))

(assert (= (and b!3052175 ((_ is Concat!14782) (regTwo!19435 r!17423))) b!3053067))

(assert (= (and b!3052175 ((_ is Star!9461) (regTwo!19435 r!17423))) b!3053068))

(assert (= (and b!3052175 ((_ is Union!9461) (regTwo!19435 r!17423))) b!3053069))

(check-sat (not d!854592) (not bm!210319) (not d!854532) (not b!3053032) (not bm!210310) (not d!854638) (not b!3053060) (not b!3053068) (not d!854554) (not b!3052873) (not b!3053063) (not b!3052993) (not d!854646) (not b!3052828) (not bm!210325) (not b!3053057) (not b!3052911) (not b!3052906) (not b!3052823) (not bm!210307) (not bm!210340) (not b!3052622) (not b!3052844) (not d!854620) (not b!3053056) (not b!3052770) (not bm!210309) (not b!3052615) (not b!3052818) (not bm!210342) (not b!3052623) (not b!3052829) (not b!3052938) (not bm!210314) (not b!3052978) (not bm!210317) (not b!3053069) (not b!3053052) (not bm!210326) (not b!3053013) (not b!3053027) (not d!854630) (not b!3053030) (not bm!210334) (not b!3052904) (not b!3052768) (not b!3052299) (not bm!210305) (not d!854640) (not b!3052795) (not d!854610) (not bm!210324) (not b!3052295) (not d!854628) (not bm!210341) (not b!3053059) (not b!3052859) (not b!3052872) (not d!854552) (not b!3053065) (not bm!210302) (not b!3052853) (not b!3052300) (not b!3052882) (not b!3053025) (not b!3053031) (not d!854590) (not b!3052910) (not b!3052617) (not b!3052822) (not d!854584) (not bm!210308) (not b!3052841) (not d!854582) (not b!3052995) (not b!3052621) (not d!854626) (not bm!210303) (not b!3052830) (not b!3053039) (not b!3052860) (not d!854624) (not bm!210232) (not d!854540) (not b!3053064) (not bm!210344) (not b!3053061) (not b!3052839) (not b!3052858) (not bm!210322) (not bm!210316) (not b!3052990) (not b!3053053) (not bm!210347) (not b!3052845) (not b!3053010) (not b!3052994) (not b!3052619) (not b!3052793) (not d!854618) (not b!3052846) (not b!3053051) (not bm!210318) (not b!3052987) (not b!3052292) (not b!3052852) (not b!3053011) (not b!3053024) (not b!3052825) (not b!3052298) (not b!3052855) (not d!854632) (not bm!210315) (not b!3053004) (not bm!210346) (not b!3053016) (not d!854622) (not b!3052973) (not b!3052909) (not b!3053017) (not bm!210345) (not bm!210312) tp_is_empty!16485 (not d!854614) (not b!3052834) (not b!3052903) (not d!854594) (not b!3052880) (not b!3053067) (not b!3052988) (not b!3052293) (not b!3053018) (not d!854644) (not bm!210335) (not bm!210320) (not b!3052838) (not b!3053055))
(check-sat)
