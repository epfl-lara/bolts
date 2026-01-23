; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663484 () Bool)

(assert start!663484)

(declare-fun res!2803656 () Bool)

(declare-fun e!4143957 () Bool)

(assert (=> start!663484 (=> (not res!2803656) (not e!4143957))))

(declare-datatypes ((C!33712 0))(
  ( (C!33713 (val!26558 Int)) )
))
(declare-datatypes ((Regex!16721 0))(
  ( (ElementMatch!16721 (c!1279373 C!33712)) (Concat!25566 (regOne!33954 Regex!16721) (regTwo!33954 Regex!16721)) (EmptyExpr!16721) (Star!16721 (reg!17050 Regex!16721)) (EmptyLang!16721) (Union!16721 (regOne!33955 Regex!16721) (regTwo!33955 Regex!16721)) )
))
(declare-datatypes ((List!66453 0))(
  ( (Nil!66329) (Cons!66329 (h!72777 Regex!16721) (t!380196 List!66453)) )
))
(declare-datatypes ((Context!12210 0))(
  ( (Context!12211 (exprs!6605 List!66453)) )
))
(declare-datatypes ((List!66454 0))(
  ( (Nil!66330) (Cons!66330 (h!72778 Context!12210) (t!380197 List!66454)) )
))
(declare-fun zl!1520 () List!66454)

(declare-fun r!11177 () Regex!16721)

(declare-fun contains!20377 (List!66453 Regex!16721) Bool)

(declare-fun unfocusZipperList!2138 (List!66454) List!66453)

(assert (=> start!663484 (= res!2803656 (contains!20377 (unfocusZipperList!2138 zl!1520) r!11177))))

(assert (=> start!663484 e!4143957))

(declare-fun e!4143955 () Bool)

(assert (=> start!663484 e!4143955))

(declare-fun e!4143956 () Bool)

(assert (=> start!663484 e!4143956))

(declare-fun b!6875345 () Bool)

(declare-fun tp_is_empty!42695 () Bool)

(assert (=> b!6875345 (= e!4143956 tp_is_empty!42695)))

(declare-fun b!6875346 () Bool)

(declare-fun tp!1888781 () Bool)

(declare-fun tp!1888780 () Bool)

(assert (=> b!6875346 (= e!4143956 (and tp!1888781 tp!1888780))))

(declare-fun b!6875347 () Bool)

(declare-fun e!4143958 () Bool)

(declare-fun tp!1888777 () Bool)

(assert (=> b!6875347 (= e!4143958 tp!1888777)))

(declare-fun b!6875348 () Bool)

(declare-fun tp!1888776 () Bool)

(assert (=> b!6875348 (= e!4143956 tp!1888776)))

(declare-fun b!6875349 () Bool)

(declare-fun tp!1888775 () Bool)

(declare-fun inv!85049 (Context!12210) Bool)

(assert (=> b!6875349 (= e!4143955 (and (inv!85049 (h!72778 zl!1520)) e!4143958 tp!1888775))))

(declare-fun b!6875350 () Bool)

(declare-fun size!40717 (List!66454) Int)

(assert (=> b!6875350 (= e!4143957 (< (size!40717 zl!1520) 0))))

(declare-fun b!6875351 () Bool)

(declare-fun tp!1888779 () Bool)

(declare-fun tp!1888778 () Bool)

(assert (=> b!6875351 (= e!4143956 (and tp!1888779 tp!1888778))))

(assert (= (and start!663484 res!2803656) b!6875350))

(assert (= b!6875349 b!6875347))

(get-info :version)

(assert (= (and start!663484 ((_ is Cons!66330) zl!1520)) b!6875349))

(assert (= (and start!663484 ((_ is ElementMatch!16721) r!11177)) b!6875345))

(assert (= (and start!663484 ((_ is Concat!25566) r!11177)) b!6875346))

(assert (= (and start!663484 ((_ is Star!16721) r!11177)) b!6875348))

(assert (= (and start!663484 ((_ is Union!16721) r!11177)) b!6875351))

(declare-fun m!7603916 () Bool)

(assert (=> start!663484 m!7603916))

(assert (=> start!663484 m!7603916))

(declare-fun m!7603918 () Bool)

(assert (=> start!663484 m!7603918))

(declare-fun m!7603920 () Bool)

(assert (=> b!6875349 m!7603920))

(declare-fun m!7603922 () Bool)

(assert (=> b!6875350 m!7603922))

(check-sat (not b!6875347) (not b!6875349) (not b!6875346) (not start!663484) (not b!6875351) (not b!6875348) (not b!6875350) tp_is_empty!42695)
(check-sat)
(get-model)

(declare-fun d!2159190 () Bool)

(declare-fun lt!2459071 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13026 (List!66453) (InoxSet Regex!16721))

(assert (=> d!2159190 (= lt!2459071 (select (content!13026 (unfocusZipperList!2138 zl!1520)) r!11177))))

(declare-fun e!4143965 () Bool)

(assert (=> d!2159190 (= lt!2459071 e!4143965)))

(declare-fun res!2803662 () Bool)

(assert (=> d!2159190 (=> (not res!2803662) (not e!4143965))))

(assert (=> d!2159190 (= res!2803662 ((_ is Cons!66329) (unfocusZipperList!2138 zl!1520)))))

(assert (=> d!2159190 (= (contains!20377 (unfocusZipperList!2138 zl!1520) r!11177) lt!2459071)))

(declare-fun b!6875360 () Bool)

(declare-fun e!4143966 () Bool)

(assert (=> b!6875360 (= e!4143965 e!4143966)))

(declare-fun res!2803661 () Bool)

(assert (=> b!6875360 (=> res!2803661 e!4143966)))

(assert (=> b!6875360 (= res!2803661 (= (h!72777 (unfocusZipperList!2138 zl!1520)) r!11177))))

(declare-fun b!6875361 () Bool)

(assert (=> b!6875361 (= e!4143966 (contains!20377 (t!380196 (unfocusZipperList!2138 zl!1520)) r!11177))))

(assert (= (and d!2159190 res!2803662) b!6875360))

(assert (= (and b!6875360 (not res!2803661)) b!6875361))

(assert (=> d!2159190 m!7603916))

(declare-fun m!7603924 () Bool)

(assert (=> d!2159190 m!7603924))

(declare-fun m!7603926 () Bool)

(assert (=> d!2159190 m!7603926))

(declare-fun m!7603928 () Bool)

(assert (=> b!6875361 m!7603928))

(assert (=> start!663484 d!2159190))

(declare-fun d!2159194 () Bool)

(declare-fun lt!2459081 () List!66453)

(declare-fun lambda!389206 () Int)

(declare-fun forall!15918 (List!66453 Int) Bool)

(assert (=> d!2159194 (forall!15918 lt!2459081 lambda!389206)))

(declare-fun e!4143995 () List!66453)

(assert (=> d!2159194 (= lt!2459081 e!4143995)))

(declare-fun c!1279382 () Bool)

(assert (=> d!2159194 (= c!1279382 ((_ is Cons!66330) zl!1520))))

(assert (=> d!2159194 (= (unfocusZipperList!2138 zl!1520) lt!2459081)))

(declare-fun b!6875423 () Bool)

(declare-fun generalisedConcat!2303 (List!66453) Regex!16721)

(assert (=> b!6875423 (= e!4143995 (Cons!66329 (generalisedConcat!2303 (exprs!6605 (h!72778 zl!1520))) (unfocusZipperList!2138 (t!380197 zl!1520))))))

(declare-fun b!6875424 () Bool)

(assert (=> b!6875424 (= e!4143995 Nil!66329)))

(assert (= (and d!2159194 c!1279382) b!6875423))

(assert (= (and d!2159194 (not c!1279382)) b!6875424))

(declare-fun m!7603948 () Bool)

(assert (=> d!2159194 m!7603948))

(declare-fun m!7603950 () Bool)

(assert (=> b!6875423 m!7603950))

(declare-fun m!7603952 () Bool)

(assert (=> b!6875423 m!7603952))

(assert (=> start!663484 d!2159194))

(declare-fun d!2159202 () Bool)

(declare-fun lt!2459084 () Int)

(assert (=> d!2159202 (>= lt!2459084 0)))

(declare-fun e!4143998 () Int)

(assert (=> d!2159202 (= lt!2459084 e!4143998)))

(declare-fun c!1279385 () Bool)

(assert (=> d!2159202 (= c!1279385 ((_ is Nil!66330) zl!1520))))

(assert (=> d!2159202 (= (size!40717 zl!1520) lt!2459084)))

(declare-fun b!6875429 () Bool)

(assert (=> b!6875429 (= e!4143998 0)))

(declare-fun b!6875430 () Bool)

(assert (=> b!6875430 (= e!4143998 (+ 1 (size!40717 (t!380197 zl!1520))))))

(assert (= (and d!2159202 c!1279385) b!6875429))

(assert (= (and d!2159202 (not c!1279385)) b!6875430))

(declare-fun m!7603954 () Bool)

(assert (=> b!6875430 m!7603954))

(assert (=> b!6875350 d!2159202))

(declare-fun bs!1837698 () Bool)

(declare-fun d!2159204 () Bool)

(assert (= bs!1837698 (and d!2159204 d!2159194)))

(declare-fun lambda!389209 () Int)

(assert (=> bs!1837698 (= lambda!389209 lambda!389206)))

(assert (=> d!2159204 (= (inv!85049 (h!72778 zl!1520)) (forall!15918 (exprs!6605 (h!72778 zl!1520)) lambda!389209))))

(declare-fun bs!1837699 () Bool)

(assert (= bs!1837699 d!2159204))

(declare-fun m!7603956 () Bool)

(assert (=> bs!1837699 m!7603956))

(assert (=> b!6875349 d!2159204))

(declare-fun e!4144001 () Bool)

(assert (=> b!6875348 (= tp!1888776 e!4144001)))

(declare-fun b!6875443 () Bool)

(declare-fun tp!1888843 () Bool)

(assert (=> b!6875443 (= e!4144001 tp!1888843)))

(declare-fun b!6875444 () Bool)

(declare-fun tp!1888841 () Bool)

(declare-fun tp!1888842 () Bool)

(assert (=> b!6875444 (= e!4144001 (and tp!1888841 tp!1888842))))

(declare-fun b!6875441 () Bool)

(assert (=> b!6875441 (= e!4144001 tp_is_empty!42695)))

(declare-fun b!6875442 () Bool)

(declare-fun tp!1888839 () Bool)

(declare-fun tp!1888840 () Bool)

(assert (=> b!6875442 (= e!4144001 (and tp!1888839 tp!1888840))))

(assert (= (and b!6875348 ((_ is ElementMatch!16721) (reg!17050 r!11177))) b!6875441))

(assert (= (and b!6875348 ((_ is Concat!25566) (reg!17050 r!11177))) b!6875442))

(assert (= (and b!6875348 ((_ is Star!16721) (reg!17050 r!11177))) b!6875443))

(assert (= (and b!6875348 ((_ is Union!16721) (reg!17050 r!11177))) b!6875444))

(declare-fun b!6875449 () Bool)

(declare-fun e!4144004 () Bool)

(declare-fun tp!1888848 () Bool)

(declare-fun tp!1888849 () Bool)

(assert (=> b!6875449 (= e!4144004 (and tp!1888848 tp!1888849))))

(assert (=> b!6875347 (= tp!1888777 e!4144004)))

(assert (= (and b!6875347 ((_ is Cons!66329) (exprs!6605 (h!72778 zl!1520)))) b!6875449))

(declare-fun e!4144005 () Bool)

(assert (=> b!6875351 (= tp!1888779 e!4144005)))

(declare-fun b!6875452 () Bool)

(declare-fun tp!1888854 () Bool)

(assert (=> b!6875452 (= e!4144005 tp!1888854)))

(declare-fun b!6875453 () Bool)

(declare-fun tp!1888852 () Bool)

(declare-fun tp!1888853 () Bool)

(assert (=> b!6875453 (= e!4144005 (and tp!1888852 tp!1888853))))

(declare-fun b!6875450 () Bool)

(assert (=> b!6875450 (= e!4144005 tp_is_empty!42695)))

(declare-fun b!6875451 () Bool)

(declare-fun tp!1888850 () Bool)

(declare-fun tp!1888851 () Bool)

(assert (=> b!6875451 (= e!4144005 (and tp!1888850 tp!1888851))))

(assert (= (and b!6875351 ((_ is ElementMatch!16721) (regOne!33955 r!11177))) b!6875450))

(assert (= (and b!6875351 ((_ is Concat!25566) (regOne!33955 r!11177))) b!6875451))

(assert (= (and b!6875351 ((_ is Star!16721) (regOne!33955 r!11177))) b!6875452))

(assert (= (and b!6875351 ((_ is Union!16721) (regOne!33955 r!11177))) b!6875453))

(declare-fun e!4144006 () Bool)

(assert (=> b!6875351 (= tp!1888778 e!4144006)))

(declare-fun b!6875456 () Bool)

(declare-fun tp!1888859 () Bool)

(assert (=> b!6875456 (= e!4144006 tp!1888859)))

(declare-fun b!6875457 () Bool)

(declare-fun tp!1888857 () Bool)

(declare-fun tp!1888858 () Bool)

(assert (=> b!6875457 (= e!4144006 (and tp!1888857 tp!1888858))))

(declare-fun b!6875454 () Bool)

(assert (=> b!6875454 (= e!4144006 tp_is_empty!42695)))

(declare-fun b!6875455 () Bool)

(declare-fun tp!1888855 () Bool)

(declare-fun tp!1888856 () Bool)

(assert (=> b!6875455 (= e!4144006 (and tp!1888855 tp!1888856))))

(assert (= (and b!6875351 ((_ is ElementMatch!16721) (regTwo!33955 r!11177))) b!6875454))

(assert (= (and b!6875351 ((_ is Concat!25566) (regTwo!33955 r!11177))) b!6875455))

(assert (= (and b!6875351 ((_ is Star!16721) (regTwo!33955 r!11177))) b!6875456))

(assert (= (and b!6875351 ((_ is Union!16721) (regTwo!33955 r!11177))) b!6875457))

(declare-fun e!4144007 () Bool)

(assert (=> b!6875346 (= tp!1888781 e!4144007)))

(declare-fun b!6875460 () Bool)

(declare-fun tp!1888864 () Bool)

(assert (=> b!6875460 (= e!4144007 tp!1888864)))

(declare-fun b!6875461 () Bool)

(declare-fun tp!1888862 () Bool)

(declare-fun tp!1888863 () Bool)

(assert (=> b!6875461 (= e!4144007 (and tp!1888862 tp!1888863))))

(declare-fun b!6875458 () Bool)

(assert (=> b!6875458 (= e!4144007 tp_is_empty!42695)))

(declare-fun b!6875459 () Bool)

(declare-fun tp!1888860 () Bool)

(declare-fun tp!1888861 () Bool)

(assert (=> b!6875459 (= e!4144007 (and tp!1888860 tp!1888861))))

(assert (= (and b!6875346 ((_ is ElementMatch!16721) (regOne!33954 r!11177))) b!6875458))

(assert (= (and b!6875346 ((_ is Concat!25566) (regOne!33954 r!11177))) b!6875459))

(assert (= (and b!6875346 ((_ is Star!16721) (regOne!33954 r!11177))) b!6875460))

(assert (= (and b!6875346 ((_ is Union!16721) (regOne!33954 r!11177))) b!6875461))

(declare-fun e!4144008 () Bool)

(assert (=> b!6875346 (= tp!1888780 e!4144008)))

(declare-fun b!6875464 () Bool)

(declare-fun tp!1888869 () Bool)

(assert (=> b!6875464 (= e!4144008 tp!1888869)))

(declare-fun b!6875465 () Bool)

(declare-fun tp!1888867 () Bool)

(declare-fun tp!1888868 () Bool)

(assert (=> b!6875465 (= e!4144008 (and tp!1888867 tp!1888868))))

(declare-fun b!6875462 () Bool)

(assert (=> b!6875462 (= e!4144008 tp_is_empty!42695)))

(declare-fun b!6875463 () Bool)

(declare-fun tp!1888865 () Bool)

(declare-fun tp!1888866 () Bool)

(assert (=> b!6875463 (= e!4144008 (and tp!1888865 tp!1888866))))

(assert (= (and b!6875346 ((_ is ElementMatch!16721) (regTwo!33954 r!11177))) b!6875462))

(assert (= (and b!6875346 ((_ is Concat!25566) (regTwo!33954 r!11177))) b!6875463))

(assert (= (and b!6875346 ((_ is Star!16721) (regTwo!33954 r!11177))) b!6875464))

(assert (= (and b!6875346 ((_ is Union!16721) (regTwo!33954 r!11177))) b!6875465))

(declare-fun b!6875473 () Bool)

(declare-fun e!4144014 () Bool)

(declare-fun tp!1888874 () Bool)

(assert (=> b!6875473 (= e!4144014 tp!1888874)))

(declare-fun b!6875472 () Bool)

(declare-fun e!4144013 () Bool)

(declare-fun tp!1888875 () Bool)

(assert (=> b!6875472 (= e!4144013 (and (inv!85049 (h!72778 (t!380197 zl!1520))) e!4144014 tp!1888875))))

(assert (=> b!6875349 (= tp!1888775 e!4144013)))

(assert (= b!6875472 b!6875473))

(assert (= (and b!6875349 ((_ is Cons!66330) (t!380197 zl!1520))) b!6875472))

(declare-fun m!7603958 () Bool)

(assert (=> b!6875472 m!7603958))

(check-sat (not b!6875456) (not d!2159204) (not b!6875442) (not b!6875449) (not b!6875472) (not b!6875361) (not d!2159190) (not b!6875457) (not b!6875453) (not b!6875443) (not d!2159194) (not b!6875473) (not b!6875463) (not b!6875461) (not b!6875423) (not b!6875459) (not b!6875455) (not b!6875444) (not b!6875452) tp_is_empty!42695 (not b!6875430) (not b!6875460) (not b!6875465) (not b!6875464) (not b!6875451))
(check-sat)
