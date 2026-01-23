; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13858 () Bool)

(assert start!13858)

(declare-fun b!133350 () Bool)

(declare-fun e!77169 () Bool)

(declare-datatypes ((B!781 0))(
  ( (B!782 (val!876 Int)) )
))
(declare-datatypes ((List!2194 0))(
  ( (Nil!2188) (Cons!2188 (h!7585 B!781) (t!22780 List!2194)) )
))
(declare-fun baseList!9 () List!2194)

(declare-fun newList!20 () List!2194)

(declare-fun contains!368 (List!2194 B!781) Bool)

(assert (=> b!133350 (= e!77169 (not (contains!368 baseList!9 (h!7585 newList!20))))))

(declare-fun b!133351 () Bool)

(declare-fun e!77171 () Bool)

(assert (=> b!133351 (= e!77171 (contains!368 baseList!9 (h!7585 newList!20)))))

(declare-fun b!133352 () Bool)

(declare-fun e!77167 () Bool)

(declare-fun e!77168 () Bool)

(assert (=> b!133352 (= e!77167 (not e!77168))))

(declare-fun res!62258 () Bool)

(assert (=> b!133352 (=> (not res!62258) (not e!77168))))

(declare-fun lt!40286 () List!2194)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!301 (List!2194) (InoxSet B!781))

(assert (=> b!133352 (= res!62258 (= (content!301 lt!40286) (content!301 baseList!9)))))

(declare-fun ++!464 (List!2194 List!2194) List!2194)

(assert (=> b!133352 (= lt!40286 (++!464 baseList!9 newList!20))))

(declare-fun isPrefix!183 (List!2194 List!2194) Bool)

(assert (=> b!133352 (isPrefix!183 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1756 0))(
  ( (Unit!1757) )
))
(declare-fun lt!40288 () Unit!1756)

(declare-fun lemmaIsPrefixRefl!109 (List!2194 List!2194) Unit!1756)

(assert (=> b!133352 (= lt!40288 (lemmaIsPrefixRefl!109 baseList!9 baseList!9))))

(declare-fun subseq!55 (List!2194 List!2194) Bool)

(assert (=> b!133352 (subseq!55 baseList!9 baseList!9)))

(declare-fun lt!40287 () Unit!1756)

(declare-fun lemmaSubseqRefl!38 (List!2194) Unit!1756)

(assert (=> b!133352 (= lt!40287 (lemmaSubseqRefl!38 baseList!9))))

(declare-fun res!62262 () Bool)

(assert (=> start!13858 (=> (not res!62262) (not e!77167))))

(declare-fun noDuplicate!84 (List!2194) Bool)

(assert (=> start!13858 (= res!62262 (noDuplicate!84 baseList!9))))

(assert (=> start!13858 e!77167))

(declare-fun e!77166 () Bool)

(assert (=> start!13858 e!77166))

(declare-fun e!77170 () Bool)

(assert (=> start!13858 e!77170))

(declare-fun b!133353 () Bool)

(declare-fun res!62261 () Bool)

(assert (=> b!133353 (=> (not res!62261) (not e!77167))))

(get-info :version)

(assert (=> b!133353 (= res!62261 ((_ is Nil!2188) newList!20))))

(declare-fun b!133354 () Bool)

(declare-fun tp_is_empty!1425 () Bool)

(declare-fun tp!70513 () Bool)

(assert (=> b!133354 (= e!77166 (and tp_is_empty!1425 tp!70513))))

(declare-fun b!133355 () Bool)

(declare-fun res!62257 () Bool)

(assert (=> b!133355 (=> (not res!62257) (not e!77167))))

(assert (=> b!133355 (= res!62257 e!77169)))

(declare-fun res!62259 () Bool)

(assert (=> b!133355 (=> res!62259 e!77169)))

(assert (=> b!133355 (= res!62259 (not ((_ is Cons!2188) newList!20)))))

(declare-fun b!133356 () Bool)

(declare-fun tp!70514 () Bool)

(assert (=> b!133356 (= e!77170 (and tp_is_empty!1425 tp!70514))))

(declare-fun b!133357 () Bool)

(declare-fun res!62256 () Bool)

(assert (=> b!133357 (=> (not res!62256) (not e!77167))))

(assert (=> b!133357 (= res!62256 e!77171)))

(declare-fun res!62260 () Bool)

(assert (=> b!133357 (=> res!62260 e!77171)))

(assert (=> b!133357 (= res!62260 (not ((_ is Cons!2188) newList!20)))))

(declare-fun b!133358 () Bool)

(assert (=> b!133358 (= e!77168 (subseq!55 baseList!9 lt!40286))))

(assert (= (and start!13858 res!62262) b!133355))

(assert (= (and b!133355 (not res!62259)) b!133350))

(assert (= (and b!133355 res!62257) b!133357))

(assert (= (and b!133357 (not res!62260)) b!133351))

(assert (= (and b!133357 res!62256) b!133353))

(assert (= (and b!133353 res!62261) b!133352))

(assert (= (and b!133352 res!62258) b!133358))

(assert (= (and start!13858 ((_ is Cons!2188) baseList!9)) b!133354))

(assert (= (and start!13858 ((_ is Cons!2188) newList!20)) b!133356))

(declare-fun m!118469 () Bool)

(assert (=> b!133358 m!118469))

(declare-fun m!118471 () Bool)

(assert (=> b!133350 m!118471))

(assert (=> b!133351 m!118471))

(declare-fun m!118473 () Bool)

(assert (=> start!13858 m!118473))

(declare-fun m!118475 () Bool)

(assert (=> b!133352 m!118475))

(declare-fun m!118477 () Bool)

(assert (=> b!133352 m!118477))

(declare-fun m!118479 () Bool)

(assert (=> b!133352 m!118479))

(declare-fun m!118481 () Bool)

(assert (=> b!133352 m!118481))

(declare-fun m!118483 () Bool)

(assert (=> b!133352 m!118483))

(declare-fun m!118485 () Bool)

(assert (=> b!133352 m!118485))

(declare-fun m!118487 () Bool)

(assert (=> b!133352 m!118487))

(check-sat tp_is_empty!1425 (not b!133358) (not b!133350) (not b!133354) (not b!133351) (not b!133352) (not start!13858) (not b!133356))
(check-sat)
(get-model)

(declare-fun b!133371 () Bool)

(declare-fun e!77184 () Bool)

(declare-fun e!77186 () Bool)

(assert (=> b!133371 (= e!77184 e!77186)))

(declare-fun res!62278 () Bool)

(assert (=> b!133371 (=> (not res!62278) (not e!77186))))

(assert (=> b!133371 (= res!62278 ((_ is Cons!2188) lt!40286))))

(declare-fun b!133373 () Bool)

(declare-fun e!77185 () Bool)

(assert (=> b!133373 (= e!77185 (subseq!55 (t!22780 baseList!9) (t!22780 lt!40286)))))

(declare-fun b!133372 () Bool)

(declare-fun e!77187 () Bool)

(assert (=> b!133372 (= e!77186 e!77187)))

(declare-fun res!62276 () Bool)

(assert (=> b!133372 (=> res!62276 e!77187)))

(assert (=> b!133372 (= res!62276 e!77185)))

(declare-fun res!62275 () Bool)

(assert (=> b!133372 (=> (not res!62275) (not e!77185))))

(assert (=> b!133372 (= res!62275 (= (h!7585 baseList!9) (h!7585 lt!40286)))))

(declare-fun b!133374 () Bool)

(assert (=> b!133374 (= e!77187 (subseq!55 baseList!9 (t!22780 lt!40286)))))

(declare-fun d!31935 () Bool)

(declare-fun res!62277 () Bool)

(assert (=> d!31935 (=> res!62277 e!77184)))

(assert (=> d!31935 (= res!62277 ((_ is Nil!2188) baseList!9))))

(assert (=> d!31935 (= (subseq!55 baseList!9 lt!40286) e!77184)))

(assert (= (and d!31935 (not res!62277)) b!133371))

(assert (= (and b!133371 res!62278) b!133372))

(assert (= (and b!133372 res!62275) b!133373))

(assert (= (and b!133372 (not res!62276)) b!133374))

(declare-fun m!118491 () Bool)

(assert (=> b!133373 m!118491))

(declare-fun m!118495 () Bool)

(assert (=> b!133374 m!118495))

(assert (=> b!133358 d!31935))

(declare-fun d!31941 () Bool)

(declare-fun c!28629 () Bool)

(assert (=> d!31941 (= c!28629 ((_ is Nil!2188) baseList!9))))

(declare-fun e!77196 () (InoxSet B!781))

(assert (=> d!31941 (= (content!301 baseList!9) e!77196)))

(declare-fun b!133385 () Bool)

(assert (=> b!133385 (= e!77196 ((as const (Array B!781 Bool)) false))))

(declare-fun b!133386 () Bool)

(assert (=> b!133386 (= e!77196 ((_ map or) (store ((as const (Array B!781 Bool)) false) (h!7585 baseList!9) true) (content!301 (t!22780 baseList!9))))))

(assert (= (and d!31941 c!28629) b!133385))

(assert (= (and d!31941 (not c!28629)) b!133386))

(declare-fun m!118497 () Bool)

(assert (=> b!133386 m!118497))

(declare-fun m!118499 () Bool)

(assert (=> b!133386 m!118499))

(assert (=> b!133352 d!31941))

(declare-fun d!31943 () Bool)

(declare-fun c!28630 () Bool)

(assert (=> d!31943 (= c!28630 ((_ is Nil!2188) lt!40286))))

(declare-fun e!77197 () (InoxSet B!781))

(assert (=> d!31943 (= (content!301 lt!40286) e!77197)))

(declare-fun b!133387 () Bool)

(assert (=> b!133387 (= e!77197 ((as const (Array B!781 Bool)) false))))

(declare-fun b!133388 () Bool)

(assert (=> b!133388 (= e!77197 ((_ map or) (store ((as const (Array B!781 Bool)) false) (h!7585 lt!40286) true) (content!301 (t!22780 lt!40286))))))

(assert (= (and d!31943 c!28630) b!133387))

(assert (= (and d!31943 (not c!28630)) b!133388))

(declare-fun m!118501 () Bool)

(assert (=> b!133388 m!118501))

(declare-fun m!118503 () Bool)

(assert (=> b!133388 m!118503))

(assert (=> b!133352 d!31943))

(declare-fun d!31945 () Bool)

(assert (=> d!31945 (subseq!55 baseList!9 baseList!9)))

(declare-fun lt!40294 () Unit!1756)

(declare-fun choose!1698 (List!2194) Unit!1756)

(assert (=> d!31945 (= lt!40294 (choose!1698 baseList!9))))

(assert (=> d!31945 (= (lemmaSubseqRefl!38 baseList!9) lt!40294)))

(declare-fun bs!12678 () Bool)

(assert (= bs!12678 d!31945))

(assert (=> bs!12678 m!118483))

(declare-fun m!118509 () Bool)

(assert (=> bs!12678 m!118509))

(assert (=> b!133352 d!31945))

(declare-fun b!133408 () Bool)

(declare-fun res!62297 () Bool)

(declare-fun e!77212 () Bool)

(assert (=> b!133408 (=> (not res!62297) (not e!77212))))

(declare-fun head!529 (List!2194) B!781)

(assert (=> b!133408 (= res!62297 (= (head!529 baseList!9) (head!529 baseList!9)))))

(declare-fun b!133410 () Bool)

(declare-fun e!77210 () Bool)

(declare-fun size!1990 (List!2194) Int)

(assert (=> b!133410 (= e!77210 (>= (size!1990 baseList!9) (size!1990 baseList!9)))))

(declare-fun b!133407 () Bool)

(declare-fun e!77211 () Bool)

(assert (=> b!133407 (= e!77211 e!77212)))

(declare-fun res!62298 () Bool)

(assert (=> b!133407 (=> (not res!62298) (not e!77212))))

(assert (=> b!133407 (= res!62298 (not ((_ is Nil!2188) baseList!9)))))

(declare-fun d!31949 () Bool)

(assert (=> d!31949 e!77210))

(declare-fun res!62296 () Bool)

(assert (=> d!31949 (=> res!62296 e!77210)))

(declare-fun lt!40300 () Bool)

(assert (=> d!31949 (= res!62296 (not lt!40300))))

(assert (=> d!31949 (= lt!40300 e!77211)))

(declare-fun res!62295 () Bool)

(assert (=> d!31949 (=> res!62295 e!77211)))

(assert (=> d!31949 (= res!62295 ((_ is Nil!2188) baseList!9))))

(assert (=> d!31949 (= (isPrefix!183 baseList!9 baseList!9) lt!40300)))

(declare-fun b!133409 () Bool)

(declare-fun tail!275 (List!2194) List!2194)

(assert (=> b!133409 (= e!77212 (isPrefix!183 (tail!275 baseList!9) (tail!275 baseList!9)))))

(assert (= (and d!31949 (not res!62295)) b!133407))

(assert (= (and b!133407 res!62298) b!133408))

(assert (= (and b!133408 res!62297) b!133409))

(assert (= (and d!31949 (not res!62296)) b!133410))

(declare-fun m!118521 () Bool)

(assert (=> b!133408 m!118521))

(assert (=> b!133408 m!118521))

(declare-fun m!118523 () Bool)

(assert (=> b!133410 m!118523))

(assert (=> b!133410 m!118523))

(declare-fun m!118525 () Bool)

(assert (=> b!133409 m!118525))

(assert (=> b!133409 m!118525))

(assert (=> b!133409 m!118525))

(assert (=> b!133409 m!118525))

(declare-fun m!118527 () Bool)

(assert (=> b!133409 m!118527))

(assert (=> b!133352 d!31949))

(declare-fun d!31957 () Bool)

(assert (=> d!31957 (isPrefix!183 baseList!9 baseList!9)))

(declare-fun lt!40305 () Unit!1756)

(declare-fun choose!1700 (List!2194 List!2194) Unit!1756)

(assert (=> d!31957 (= lt!40305 (choose!1700 baseList!9 baseList!9))))

(assert (=> d!31957 (= (lemmaIsPrefixRefl!109 baseList!9 baseList!9) lt!40305)))

(declare-fun bs!12680 () Bool)

(assert (= bs!12680 d!31957))

(assert (=> bs!12680 m!118477))

(declare-fun m!118529 () Bool)

(assert (=> bs!12680 m!118529))

(assert (=> b!133352 d!31957))

(declare-fun b!133434 () Bool)

(declare-fun lt!40312 () List!2194)

(declare-fun e!77226 () Bool)

(assert (=> b!133434 (= e!77226 (or (not (= newList!20 Nil!2188)) (= lt!40312 baseList!9)))))

(declare-fun d!31959 () Bool)

(assert (=> d!31959 e!77226))

(declare-fun res!62315 () Bool)

(assert (=> d!31959 (=> (not res!62315) (not e!77226))))

(assert (=> d!31959 (= res!62315 (= (content!301 lt!40312) ((_ map or) (content!301 baseList!9) (content!301 newList!20))))))

(declare-fun e!77227 () List!2194)

(assert (=> d!31959 (= lt!40312 e!77227)))

(declare-fun c!28637 () Bool)

(assert (=> d!31959 (= c!28637 ((_ is Nil!2188) baseList!9))))

(assert (=> d!31959 (= (++!464 baseList!9 newList!20) lt!40312)))

(declare-fun b!133433 () Bool)

(declare-fun res!62316 () Bool)

(assert (=> b!133433 (=> (not res!62316) (not e!77226))))

(assert (=> b!133433 (= res!62316 (= (size!1990 lt!40312) (+ (size!1990 baseList!9) (size!1990 newList!20))))))

(declare-fun b!133431 () Bool)

(assert (=> b!133431 (= e!77227 newList!20)))

(declare-fun b!133432 () Bool)

(assert (=> b!133432 (= e!77227 (Cons!2188 (h!7585 baseList!9) (++!464 (t!22780 baseList!9) newList!20)))))

(assert (= (and d!31959 c!28637) b!133431))

(assert (= (and d!31959 (not c!28637)) b!133432))

(assert (= (and d!31959 res!62315) b!133433))

(assert (= (and b!133433 res!62316) b!133434))

(declare-fun m!118541 () Bool)

(assert (=> d!31959 m!118541))

(assert (=> d!31959 m!118487))

(declare-fun m!118543 () Bool)

(assert (=> d!31959 m!118543))

(declare-fun m!118545 () Bool)

(assert (=> b!133433 m!118545))

(assert (=> b!133433 m!118523))

(declare-fun m!118547 () Bool)

(assert (=> b!133433 m!118547))

(declare-fun m!118549 () Bool)

(assert (=> b!133432 m!118549))

(assert (=> b!133352 d!31959))

(declare-fun b!133435 () Bool)

(declare-fun e!77228 () Bool)

(declare-fun e!77230 () Bool)

(assert (=> b!133435 (= e!77228 e!77230)))

(declare-fun res!62320 () Bool)

(assert (=> b!133435 (=> (not res!62320) (not e!77230))))

(assert (=> b!133435 (= res!62320 ((_ is Cons!2188) baseList!9))))

(declare-fun b!133437 () Bool)

(declare-fun e!77229 () Bool)

(assert (=> b!133437 (= e!77229 (subseq!55 (t!22780 baseList!9) (t!22780 baseList!9)))))

(declare-fun b!133436 () Bool)

(declare-fun e!77231 () Bool)

(assert (=> b!133436 (= e!77230 e!77231)))

(declare-fun res!62318 () Bool)

(assert (=> b!133436 (=> res!62318 e!77231)))

(assert (=> b!133436 (= res!62318 e!77229)))

(declare-fun res!62317 () Bool)

(assert (=> b!133436 (=> (not res!62317) (not e!77229))))

(assert (=> b!133436 (= res!62317 (= (h!7585 baseList!9) (h!7585 baseList!9)))))

(declare-fun b!133438 () Bool)

(assert (=> b!133438 (= e!77231 (subseq!55 baseList!9 (t!22780 baseList!9)))))

(declare-fun d!31965 () Bool)

(declare-fun res!62319 () Bool)

(assert (=> d!31965 (=> res!62319 e!77228)))

(assert (=> d!31965 (= res!62319 ((_ is Nil!2188) baseList!9))))

(assert (=> d!31965 (= (subseq!55 baseList!9 baseList!9) e!77228)))

(assert (= (and d!31965 (not res!62319)) b!133435))

(assert (= (and b!133435 res!62320) b!133436))

(assert (= (and b!133436 res!62317) b!133437))

(assert (= (and b!133436 (not res!62318)) b!133438))

(declare-fun m!118551 () Bool)

(assert (=> b!133437 m!118551))

(declare-fun m!118553 () Bool)

(assert (=> b!133438 m!118553))

(assert (=> b!133352 d!31965))

(declare-fun d!31967 () Bool)

(declare-fun lt!40318 () Bool)

(assert (=> d!31967 (= lt!40318 (select (content!301 baseList!9) (h!7585 newList!20)))))

(declare-fun e!77243 () Bool)

(assert (=> d!31967 (= lt!40318 e!77243)))

(declare-fun res!62332 () Bool)

(assert (=> d!31967 (=> (not res!62332) (not e!77243))))

(assert (=> d!31967 (= res!62332 ((_ is Cons!2188) baseList!9))))

(assert (=> d!31967 (= (contains!368 baseList!9 (h!7585 newList!20)) lt!40318)))

(declare-fun b!133455 () Bool)

(declare-fun e!77242 () Bool)

(assert (=> b!133455 (= e!77243 e!77242)))

(declare-fun res!62331 () Bool)

(assert (=> b!133455 (=> res!62331 e!77242)))

(assert (=> b!133455 (= res!62331 (= (h!7585 baseList!9) (h!7585 newList!20)))))

(declare-fun b!133456 () Bool)

(assert (=> b!133456 (= e!77242 (contains!368 (t!22780 baseList!9) (h!7585 newList!20)))))

(assert (= (and d!31967 res!62332) b!133455))

(assert (= (and b!133455 (not res!62331)) b!133456))

(assert (=> d!31967 m!118487))

(declare-fun m!118565 () Bool)

(assert (=> d!31967 m!118565))

(declare-fun m!118567 () Bool)

(assert (=> b!133456 m!118567))

(assert (=> b!133351 d!31967))

(assert (=> b!133350 d!31967))

(declare-fun d!31971 () Bool)

(declare-fun res!62345 () Bool)

(declare-fun e!77256 () Bool)

(assert (=> d!31971 (=> res!62345 e!77256)))

(assert (=> d!31971 (= res!62345 ((_ is Nil!2188) baseList!9))))

(assert (=> d!31971 (= (noDuplicate!84 baseList!9) e!77256)))

(declare-fun b!133469 () Bool)

(declare-fun e!77257 () Bool)

(assert (=> b!133469 (= e!77256 e!77257)))

(declare-fun res!62346 () Bool)

(assert (=> b!133469 (=> (not res!62346) (not e!77257))))

(assert (=> b!133469 (= res!62346 (not (contains!368 (t!22780 baseList!9) (h!7585 baseList!9))))))

(declare-fun b!133470 () Bool)

(assert (=> b!133470 (= e!77257 (noDuplicate!84 (t!22780 baseList!9)))))

(assert (= (and d!31971 (not res!62345)) b!133469))

(assert (= (and b!133469 res!62346) b!133470))

(declare-fun m!118569 () Bool)

(assert (=> b!133469 m!118569))

(declare-fun m!118571 () Bool)

(assert (=> b!133470 m!118571))

(assert (=> start!13858 d!31971))

(declare-fun b!133475 () Bool)

(declare-fun e!77260 () Bool)

(declare-fun tp!70517 () Bool)

(assert (=> b!133475 (= e!77260 (and tp_is_empty!1425 tp!70517))))

(assert (=> b!133354 (= tp!70513 e!77260)))

(assert (= (and b!133354 ((_ is Cons!2188) (t!22780 baseList!9))) b!133475))

(declare-fun b!133476 () Bool)

(declare-fun e!77261 () Bool)

(declare-fun tp!70518 () Bool)

(assert (=> b!133476 (= e!77261 (and tp_is_empty!1425 tp!70518))))

(assert (=> b!133356 (= tp!70514 e!77261)))

(assert (= (and b!133356 ((_ is Cons!2188) (t!22780 newList!20))) b!133476))

(check-sat (not b!133373) (not d!31957) (not b!133470) tp_is_empty!1425 (not b!133410) (not b!133408) (not d!31959) (not d!31945) (not b!133456) (not b!133438) (not b!133409) (not b!133475) (not b!133469) (not b!133476) (not b!133432) (not b!133386) (not d!31967) (not b!133388) (not b!133433) (not b!133374) (not b!133437))
(check-sat)
