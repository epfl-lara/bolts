; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695676 () Bool)

(assert start!695676)

(declare-fun bs!1887916 () Bool)

(declare-fun b!7138456 () Bool)

(declare-fun b!7138453 () Bool)

(assert (= bs!1887916 (and b!7138456 b!7138453)))

(declare-fun lambda!434166 () Int)

(declare-fun lambda!434164 () Int)

(assert (=> bs!1887916 (not (= lambda!434166 lambda!434164))))

(declare-fun b!7138447 () Bool)

(declare-fun e!4290076 () Bool)

(declare-fun e!4290078 () Bool)

(assert (=> b!7138447 (= e!4290076 e!4290078)))

(declare-fun res!2912762 () Bool)

(assert (=> b!7138447 (=> res!2912762 e!4290078)))

(declare-datatypes ((C!36564 0))(
  ( (C!36565 (val!28230 Int)) )
))
(declare-datatypes ((Regex!18145 0))(
  ( (ElementMatch!18145 (c!1331214 C!36564)) (Concat!26990 (regOne!36802 Regex!18145) (regTwo!36802 Regex!18145)) (EmptyExpr!18145) (Star!18145 (reg!18474 Regex!18145)) (EmptyLang!18145) (Union!18145 (regOne!36803 Regex!18145) (regTwo!36803 Regex!18145)) )
))
(declare-datatypes ((List!69368 0))(
  ( (Nil!69244) (Cons!69244 (h!75692 Regex!18145) (t!383385 List!69368)) )
))
(declare-datatypes ((Context!14278 0))(
  ( (Context!14279 (exprs!7639 List!69368)) )
))
(declare-fun lt!2566580 () Context!14278)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14278))

(assert (=> b!7138447 (= res!2912762 (not (select z!3189 lt!2566580)))))

(declare-fun lambda!434165 () Int)

(declare-fun getWitness!1909 ((InoxSet Context!14278) Int) Context!14278)

(assert (=> b!7138447 (= lt!2566580 (getWitness!1909 z!3189 lambda!434165))))

(declare-fun b!7138448 () Bool)

(declare-fun e!4290077 () Bool)

(declare-fun tp!1968384 () Bool)

(declare-fun tp!1968380 () Bool)

(assert (=> b!7138448 (= e!4290077 (and tp!1968384 tp!1968380))))

(declare-fun b!7138449 () Bool)

(declare-fun e!4290075 () Bool)

(declare-fun tp!1968381 () Bool)

(assert (=> b!7138449 (= e!4290075 tp!1968381)))

(declare-fun b!7138450 () Bool)

(declare-fun tp!1968383 () Bool)

(assert (=> b!7138450 (= e!4290077 tp!1968383)))

(declare-fun setIsEmpty!52447 () Bool)

(declare-fun setRes!52447 () Bool)

(assert (=> setIsEmpty!52447 setRes!52447))

(declare-fun b!7138451 () Bool)

(declare-fun tp_is_empty!45927 () Bool)

(assert (=> b!7138451 (= e!4290077 tp_is_empty!45927)))

(declare-fun b!7138452 () Bool)

(declare-fun res!2912767 () Bool)

(assert (=> b!7138452 (=> res!2912767 e!4290078)))

(declare-fun nullableContext!144 (Context!14278) Bool)

(assert (=> b!7138452 (= res!2912767 (not (nullableContext!144 lt!2566580)))))

(declare-fun e!4290071 () Bool)

(assert (=> b!7138453 (= e!4290071 (not e!4290076))))

(declare-fun res!2912763 () Bool)

(assert (=> b!7138453 (=> res!2912763 e!4290076)))

(declare-fun lt!2566576 () List!69368)

(declare-fun lt!2566572 () Bool)

(declare-fun exists!3914 (List!69368 Int) Bool)

(assert (=> b!7138453 (= res!2912763 (not (= lt!2566572 (exists!3914 lt!2566576 lambda!434164))))))

(assert (=> b!7138453 (= lt!2566572 (exists!3914 lt!2566576 lambda!434164))))

(declare-fun lt!2566574 () Regex!18145)

(declare-fun nullable!7665 (Regex!18145) Bool)

(assert (=> b!7138453 (= lt!2566572 (nullable!7665 lt!2566574))))

(declare-datatypes ((Unit!163149 0))(
  ( (Unit!163150) )
))
(declare-fun lt!2566573 () Unit!163149)

(declare-fun nullableGenUnionSpec!34 (Regex!18145 List!69368) Unit!163149)

(assert (=> b!7138453 (= lt!2566573 (nullableGenUnionSpec!34 lt!2566574 lt!2566576))))

(declare-fun b!7138454 () Bool)

(declare-fun e!4290074 () Bool)

(assert (=> b!7138454 (= e!4290078 e!4290074)))

(declare-fun res!2912768 () Bool)

(assert (=> b!7138454 (=> res!2912768 e!4290074)))

(declare-fun lt!2566578 () Bool)

(assert (=> b!7138454 (= res!2912768 (not lt!2566578))))

(declare-fun forall!16983 (List!69368 Int) Bool)

(assert (=> b!7138454 (= lt!2566578 (forall!16983 (exprs!7639 lt!2566580) lambda!434164))))

(declare-fun lt!2566579 () Regex!18145)

(assert (=> b!7138454 (= lt!2566578 (nullable!7665 lt!2566579))))

(declare-fun lt!2566575 () Unit!163149)

(declare-fun nullableGenConcatSpec!6 (Regex!18145 List!69368) Unit!163149)

(assert (=> b!7138454 (= lt!2566575 (nullableGenConcatSpec!6 lt!2566579 (exprs!7639 lt!2566580)))))

(declare-fun contains!20589 (List!69368 Regex!18145) Bool)

(assert (=> b!7138454 (contains!20589 lt!2566576 lt!2566579)))

(declare-fun generalisedConcat!2336 (List!69368) Regex!18145)

(assert (=> b!7138454 (= lt!2566579 (generalisedConcat!2336 (exprs!7639 lt!2566580)))))

(declare-fun lt!2566577 () Unit!163149)

(declare-datatypes ((List!69369 0))(
  ( (Nil!69245) (Cons!69245 (h!75693 Context!14278) (t!383386 List!69369)) )
))
(declare-fun lt!2566571 () List!69369)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!10 (List!69369 Context!14278) Unit!163149)

(assert (=> b!7138454 (= lt!2566577 (lemmaZipperContainsContextThenUnfocusZipperListContains!10 lt!2566571 lt!2566580))))

(declare-fun setElem!52447 () Context!14278)

(declare-fun setNonEmpty!52447 () Bool)

(declare-fun tp!1968385 () Bool)

(declare-fun inv!88426 (Context!14278) Bool)

(assert (=> setNonEmpty!52447 (= setRes!52447 (and tp!1968385 (inv!88426 setElem!52447) e!4290075))))

(declare-fun setRest!52447 () (InoxSet Context!14278))

(assert (=> setNonEmpty!52447 (= z!3189 ((_ map or) (store ((as const (Array Context!14278 Bool)) false) setElem!52447 true) setRest!52447))))

(declare-fun b!7138455 () Bool)

(declare-fun e!4290072 () Bool)

(declare-fun e!4290073 () Bool)

(assert (=> b!7138455 (= e!4290072 e!4290073)))

(declare-fun res!2912770 () Bool)

(assert (=> b!7138455 (=> (not res!2912770) (not e!4290073))))

(declare-fun r!11483 () Regex!18145)

(declare-fun unfocusZipper!2493 (List!69369) Regex!18145)

(assert (=> b!7138455 (= res!2912770 (= r!11483 (unfocusZipper!2493 lt!2566571)))))

(declare-fun toList!11176 ((InoxSet Context!14278)) List!69369)

(assert (=> b!7138455 (= lt!2566571 (toList!11176 z!3189))))

(assert (=> b!7138456 (= e!4290074 (forall!16983 (exprs!7639 lt!2566580) lambda!434166))))

(declare-fun b!7138457 () Bool)

(declare-fun res!2912766 () Bool)

(assert (=> b!7138457 (=> res!2912766 e!4290076)))

(assert (=> b!7138457 (= res!2912766 lt!2566572)))

(declare-fun b!7138458 () Bool)

(declare-fun res!2912771 () Bool)

(assert (=> b!7138458 (=> res!2912771 e!4290076)))

(assert (=> b!7138458 (= res!2912771 (exists!3914 lt!2566576 lambda!434164))))

(declare-fun b!7138459 () Bool)

(assert (=> b!7138459 (= e!4290073 e!4290071)))

(declare-fun res!2912765 () Bool)

(assert (=> b!7138459 (=> (not res!2912765) (not e!4290071))))

(assert (=> b!7138459 (= res!2912765 (= r!11483 lt!2566574))))

(declare-fun generalisedUnion!2650 (List!69368) Regex!18145)

(assert (=> b!7138459 (= lt!2566574 (generalisedUnion!2650 lt!2566576))))

(declare-fun unfocusZipperList!2186 (List!69369) List!69368)

(assert (=> b!7138459 (= lt!2566576 (unfocusZipperList!2186 lt!2566571))))

(declare-fun b!7138460 () Bool)

(declare-fun res!2912764 () Bool)

(assert (=> b!7138460 (=> res!2912764 e!4290076)))

(declare-fun exists!3915 ((InoxSet Context!14278) Int) Bool)

(assert (=> b!7138460 (= res!2912764 (not (exists!3915 z!3189 lambda!434165)))))

(declare-fun b!7138461 () Bool)

(declare-fun tp!1968379 () Bool)

(declare-fun tp!1968382 () Bool)

(assert (=> b!7138461 (= e!4290077 (and tp!1968379 tp!1968382))))

(declare-fun res!2912769 () Bool)

(assert (=> start!695676 (=> (not res!2912769) (not e!4290072))))

(declare-fun validRegex!9312 (Regex!18145) Bool)

(assert (=> start!695676 (= res!2912769 (validRegex!9312 r!11483))))

(assert (=> start!695676 e!4290072))

(assert (=> start!695676 e!4290077))

(declare-fun condSetEmpty!52447 () Bool)

(assert (=> start!695676 (= condSetEmpty!52447 (= z!3189 ((as const (Array Context!14278 Bool)) false)))))

(assert (=> start!695676 setRes!52447))

(assert (= (and start!695676 res!2912769) b!7138455))

(assert (= (and b!7138455 res!2912770) b!7138459))

(assert (= (and b!7138459 res!2912765) b!7138453))

(assert (= (and b!7138453 (not res!2912763)) b!7138457))

(assert (= (and b!7138457 (not res!2912766)) b!7138458))

(assert (= (and b!7138458 (not res!2912771)) b!7138460))

(assert (= (and b!7138460 (not res!2912764)) b!7138447))

(assert (= (and b!7138447 (not res!2912762)) b!7138452))

(assert (= (and b!7138452 (not res!2912767)) b!7138454))

(assert (= (and b!7138454 (not res!2912768)) b!7138456))

(get-info :version)

(assert (= (and start!695676 ((_ is ElementMatch!18145) r!11483)) b!7138451))

(assert (= (and start!695676 ((_ is Concat!26990) r!11483)) b!7138448))

(assert (= (and start!695676 ((_ is Star!18145) r!11483)) b!7138450))

(assert (= (and start!695676 ((_ is Union!18145) r!11483)) b!7138461))

(assert (= (and start!695676 condSetEmpty!52447) setIsEmpty!52447))

(assert (= (and start!695676 (not condSetEmpty!52447)) setNonEmpty!52447))

(assert (= setNonEmpty!52447 b!7138449))

(declare-fun m!7854002 () Bool)

(assert (=> b!7138454 m!7854002))

(declare-fun m!7854004 () Bool)

(assert (=> b!7138454 m!7854004))

(declare-fun m!7854006 () Bool)

(assert (=> b!7138454 m!7854006))

(declare-fun m!7854008 () Bool)

(assert (=> b!7138454 m!7854008))

(declare-fun m!7854010 () Bool)

(assert (=> b!7138454 m!7854010))

(declare-fun m!7854012 () Bool)

(assert (=> b!7138454 m!7854012))

(declare-fun m!7854014 () Bool)

(assert (=> b!7138452 m!7854014))

(declare-fun m!7854016 () Bool)

(assert (=> b!7138456 m!7854016))

(declare-fun m!7854018 () Bool)

(assert (=> b!7138459 m!7854018))

(declare-fun m!7854020 () Bool)

(assert (=> b!7138459 m!7854020))

(declare-fun m!7854022 () Bool)

(assert (=> b!7138447 m!7854022))

(declare-fun m!7854024 () Bool)

(assert (=> b!7138447 m!7854024))

(declare-fun m!7854026 () Bool)

(assert (=> start!695676 m!7854026))

(declare-fun m!7854028 () Bool)

(assert (=> b!7138455 m!7854028))

(declare-fun m!7854030 () Bool)

(assert (=> b!7138455 m!7854030))

(declare-fun m!7854032 () Bool)

(assert (=> setNonEmpty!52447 m!7854032))

(declare-fun m!7854034 () Bool)

(assert (=> b!7138458 m!7854034))

(assert (=> b!7138453 m!7854034))

(assert (=> b!7138453 m!7854034))

(declare-fun m!7854036 () Bool)

(assert (=> b!7138453 m!7854036))

(declare-fun m!7854038 () Bool)

(assert (=> b!7138453 m!7854038))

(declare-fun m!7854040 () Bool)

(assert (=> b!7138460 m!7854040))

(check-sat (not b!7138456) (not b!7138447) tp_is_empty!45927 (not b!7138452) (not b!7138454) (not b!7138450) (not b!7138460) (not b!7138453) (not b!7138455) (not b!7138448) (not b!7138461) (not b!7138459) (not b!7138458) (not start!695676) (not setNonEmpty!52447) (not b!7138449))
(check-sat)
(get-model)

(declare-fun bs!1887924 () Bool)

(declare-fun d!2226889 () Bool)

(assert (= bs!1887924 (and d!2226889 b!7138453)))

(declare-fun lambda!434175 () Int)

(assert (=> bs!1887924 (not (= lambda!434175 lambda!434164))))

(declare-fun bs!1887925 () Bool)

(assert (= bs!1887925 (and d!2226889 b!7138456)))

(assert (=> bs!1887925 (not (= lambda!434175 lambda!434166))))

(assert (=> d!2226889 true))

(declare-fun order!28529 () Int)

(declare-fun dynLambda!28168 (Int Int) Int)

(assert (=> d!2226889 (< (dynLambda!28168 order!28529 lambda!434164) (dynLambda!28168 order!28529 lambda!434175))))

(assert (=> d!2226889 (= (exists!3914 lt!2566576 lambda!434164) (not (forall!16983 lt!2566576 lambda!434175)))))

(declare-fun bs!1887926 () Bool)

(assert (= bs!1887926 d!2226889))

(declare-fun m!7854046 () Bool)

(assert (=> bs!1887926 m!7854046))

(assert (=> b!7138453 d!2226889))

(declare-fun d!2226895 () Bool)

(declare-fun nullableFct!2977 (Regex!18145) Bool)

(assert (=> d!2226895 (= (nullable!7665 lt!2566574) (nullableFct!2977 lt!2566574))))

(declare-fun bs!1887927 () Bool)

(assert (= bs!1887927 d!2226895))

(declare-fun m!7854048 () Bool)

(assert (=> bs!1887927 m!7854048))

(assert (=> b!7138453 d!2226895))

(declare-fun bs!1887928 () Bool)

(declare-fun d!2226897 () Bool)

(assert (= bs!1887928 (and d!2226897 b!7138453)))

(declare-fun lambda!434180 () Int)

(assert (=> bs!1887928 (not (= lambda!434180 lambda!434164))))

(declare-fun bs!1887929 () Bool)

(assert (= bs!1887929 (and d!2226897 b!7138456)))

(assert (=> bs!1887929 (= lambda!434180 lambda!434166)))

(declare-fun bs!1887930 () Bool)

(assert (= bs!1887930 (and d!2226897 d!2226889)))

(assert (=> bs!1887930 (not (= lambda!434180 lambda!434175))))

(declare-fun lambda!434181 () Int)

(assert (=> bs!1887928 (= lambda!434181 lambda!434164)))

(assert (=> bs!1887929 (not (= lambda!434181 lambda!434166))))

(assert (=> bs!1887930 (not (= lambda!434181 lambda!434175))))

(declare-fun bs!1887931 () Bool)

(assert (= bs!1887931 d!2226897))

(assert (=> bs!1887931 (not (= lambda!434181 lambda!434180))))

(assert (=> d!2226897 (= (nullable!7665 lt!2566574) (exists!3914 lt!2566576 lambda!434181))))

(declare-fun lt!2566583 () Unit!163149)

(declare-fun choose!55185 (Regex!18145 List!69368) Unit!163149)

(assert (=> d!2226897 (= lt!2566583 (choose!55185 lt!2566574 lt!2566576))))

(assert (=> d!2226897 (forall!16983 lt!2566576 lambda!434180)))

(assert (=> d!2226897 (= (nullableGenUnionSpec!34 lt!2566574 lt!2566576) lt!2566583)))

(assert (=> bs!1887931 m!7854036))

(declare-fun m!7854050 () Bool)

(assert (=> bs!1887931 m!7854050))

(declare-fun m!7854052 () Bool)

(assert (=> bs!1887931 m!7854052))

(declare-fun m!7854054 () Bool)

(assert (=> bs!1887931 m!7854054))

(assert (=> b!7138453 d!2226897))

(declare-fun b!7138511 () Bool)

(declare-fun e!4290119 () Bool)

(declare-fun call!651080 () Bool)

(assert (=> b!7138511 (= e!4290119 call!651080)))

(declare-fun d!2226899 () Bool)

(declare-fun res!2912800 () Bool)

(declare-fun e!4290116 () Bool)

(assert (=> d!2226899 (=> res!2912800 e!4290116)))

(assert (=> d!2226899 (= res!2912800 ((_ is ElementMatch!18145) r!11483))))

(assert (=> d!2226899 (= (validRegex!9312 r!11483) e!4290116)))

(declare-fun b!7138512 () Bool)

(declare-fun e!4290120 () Bool)

(declare-fun e!4290115 () Bool)

(assert (=> b!7138512 (= e!4290120 e!4290115)))

(declare-fun res!2912798 () Bool)

(assert (=> b!7138512 (=> (not res!2912798) (not e!4290115))))

(declare-fun call!651081 () Bool)

(assert (=> b!7138512 (= res!2912798 call!651081)))

(declare-fun b!7138513 () Bool)

(declare-fun e!4290118 () Bool)

(declare-fun call!651082 () Bool)

(assert (=> b!7138513 (= e!4290118 call!651082)))

(declare-fun b!7138514 () Bool)

(declare-fun res!2912799 () Bool)

(assert (=> b!7138514 (=> (not res!2912799) (not e!4290119))))

(assert (=> b!7138514 (= res!2912799 call!651081)))

(declare-fun e!4290117 () Bool)

(assert (=> b!7138514 (= e!4290117 e!4290119)))

(declare-fun b!7138515 () Bool)

(declare-fun e!4290114 () Bool)

(assert (=> b!7138515 (= e!4290114 e!4290117)))

(declare-fun c!1331227 () Bool)

(assert (=> b!7138515 (= c!1331227 ((_ is Union!18145) r!11483))))

(declare-fun bm!651075 () Bool)

(declare-fun c!1331226 () Bool)

(assert (=> bm!651075 (= call!651082 (validRegex!9312 (ite c!1331226 (reg!18474 r!11483) (ite c!1331227 (regOne!36803 r!11483) (regOne!36802 r!11483)))))))

(declare-fun b!7138516 () Bool)

(assert (=> b!7138516 (= e!4290115 call!651080)))

(declare-fun b!7138517 () Bool)

(assert (=> b!7138517 (= e!4290116 e!4290114)))

(assert (=> b!7138517 (= c!1331226 ((_ is Star!18145) r!11483))))

(declare-fun b!7138518 () Bool)

(assert (=> b!7138518 (= e!4290114 e!4290118)))

(declare-fun res!2912797 () Bool)

(assert (=> b!7138518 (= res!2912797 (not (nullable!7665 (reg!18474 r!11483))))))

(assert (=> b!7138518 (=> (not res!2912797) (not e!4290118))))

(declare-fun bm!651076 () Bool)

(assert (=> bm!651076 (= call!651081 call!651082)))

(declare-fun bm!651077 () Bool)

(assert (=> bm!651077 (= call!651080 (validRegex!9312 (ite c!1331227 (regTwo!36803 r!11483) (regTwo!36802 r!11483))))))

(declare-fun b!7138519 () Bool)

(declare-fun res!2912801 () Bool)

(assert (=> b!7138519 (=> res!2912801 e!4290120)))

(assert (=> b!7138519 (= res!2912801 (not ((_ is Concat!26990) r!11483)))))

(assert (=> b!7138519 (= e!4290117 e!4290120)))

(assert (= (and d!2226899 (not res!2912800)) b!7138517))

(assert (= (and b!7138517 c!1331226) b!7138518))

(assert (= (and b!7138517 (not c!1331226)) b!7138515))

(assert (= (and b!7138518 res!2912797) b!7138513))

(assert (= (and b!7138515 c!1331227) b!7138514))

(assert (= (and b!7138515 (not c!1331227)) b!7138519))

(assert (= (and b!7138514 res!2912799) b!7138511))

(assert (= (and b!7138519 (not res!2912801)) b!7138512))

(assert (= (and b!7138512 res!2912798) b!7138516))

(assert (= (or b!7138511 b!7138516) bm!651077))

(assert (= (or b!7138514 b!7138512) bm!651076))

(assert (= (or b!7138513 bm!651076) bm!651075))

(declare-fun m!7854068 () Bool)

(assert (=> bm!651075 m!7854068))

(declare-fun m!7854070 () Bool)

(assert (=> b!7138518 m!7854070))

(declare-fun m!7854072 () Bool)

(assert (=> bm!651077 m!7854072))

(assert (=> start!695676 d!2226899))

(assert (=> b!7138458 d!2226889))

(declare-fun d!2226907 () Bool)

(declare-fun e!4290123 () Bool)

(assert (=> d!2226907 e!4290123))

(declare-fun res!2912804 () Bool)

(assert (=> d!2226907 (=> (not res!2912804) (not e!4290123))))

(declare-fun lt!2566595 () Context!14278)

(declare-fun dynLambda!28169 (Int Context!14278) Bool)

(assert (=> d!2226907 (= res!2912804 (dynLambda!28169 lambda!434165 lt!2566595))))

(declare-fun getWitness!1910 (List!69369 Int) Context!14278)

(assert (=> d!2226907 (= lt!2566595 (getWitness!1910 (toList!11176 z!3189) lambda!434165))))

(assert (=> d!2226907 (exists!3915 z!3189 lambda!434165)))

(assert (=> d!2226907 (= (getWitness!1909 z!3189 lambda!434165) lt!2566595)))

(declare-fun b!7138522 () Bool)

(assert (=> b!7138522 (= e!4290123 (select z!3189 lt!2566595))))

(assert (= (and d!2226907 res!2912804) b!7138522))

(declare-fun b_lambda!272453 () Bool)

(assert (=> (not b_lambda!272453) (not d!2226907)))

(declare-fun m!7854084 () Bool)

(assert (=> d!2226907 m!7854084))

(assert (=> d!2226907 m!7854030))

(assert (=> d!2226907 m!7854030))

(declare-fun m!7854086 () Bool)

(assert (=> d!2226907 m!7854086))

(assert (=> d!2226907 m!7854040))

(declare-fun m!7854088 () Bool)

(assert (=> b!7138522 m!7854088))

(assert (=> b!7138447 d!2226907))

(declare-fun d!2226913 () Bool)

(declare-fun res!2912812 () Bool)

(declare-fun e!4290131 () Bool)

(assert (=> d!2226913 (=> res!2912812 e!4290131)))

(assert (=> d!2226913 (= res!2912812 ((_ is Nil!69244) (exprs!7639 lt!2566580)))))

(assert (=> d!2226913 (= (forall!16983 (exprs!7639 lt!2566580) lambda!434166) e!4290131)))

(declare-fun b!7138530 () Bool)

(declare-fun e!4290132 () Bool)

(assert (=> b!7138530 (= e!4290131 e!4290132)))

(declare-fun res!2912813 () Bool)

(assert (=> b!7138530 (=> (not res!2912813) (not e!4290132))))

(declare-fun dynLambda!28170 (Int Regex!18145) Bool)

(assert (=> b!7138530 (= res!2912813 (dynLambda!28170 lambda!434166 (h!75692 (exprs!7639 lt!2566580))))))

(declare-fun b!7138531 () Bool)

(assert (=> b!7138531 (= e!4290132 (forall!16983 (t!383385 (exprs!7639 lt!2566580)) lambda!434166))))

(assert (= (and d!2226913 (not res!2912812)) b!7138530))

(assert (= (and b!7138530 res!2912813) b!7138531))

(declare-fun b_lambda!272455 () Bool)

(assert (=> (not b_lambda!272455) (not b!7138530)))

(declare-fun m!7854096 () Bool)

(assert (=> b!7138530 m!7854096))

(declare-fun m!7854098 () Bool)

(assert (=> b!7138531 m!7854098))

(assert (=> b!7138456 d!2226913))

(declare-fun bs!1887946 () Bool)

(declare-fun d!2226917 () Bool)

(assert (= bs!1887946 (and d!2226917 b!7138453)))

(declare-fun lambda!434193 () Int)

(assert (=> bs!1887946 (= lambda!434193 lambda!434164)))

(declare-fun bs!1887948 () Bool)

(assert (= bs!1887948 (and d!2226917 d!2226889)))

(assert (=> bs!1887948 (not (= lambda!434193 lambda!434175))))

(declare-fun bs!1887949 () Bool)

(assert (= bs!1887949 (and d!2226917 d!2226897)))

(assert (=> bs!1887949 (= lambda!434193 lambda!434181)))

(assert (=> bs!1887949 (not (= lambda!434193 lambda!434180))))

(declare-fun bs!1887950 () Bool)

(assert (= bs!1887950 (and d!2226917 b!7138456)))

(assert (=> bs!1887950 (not (= lambda!434193 lambda!434166))))

(assert (=> d!2226917 (= (nullableContext!144 lt!2566580) (forall!16983 (exprs!7639 lt!2566580) lambda!434193))))

(declare-fun bs!1887951 () Bool)

(assert (= bs!1887951 d!2226917))

(declare-fun m!7854104 () Bool)

(assert (=> bs!1887951 m!7854104))

(assert (=> b!7138452 d!2226917))

(declare-fun d!2226923 () Bool)

(declare-fun lt!2566603 () Bool)

(declare-fun exists!3917 (List!69369 Int) Bool)

(assert (=> d!2226923 (= lt!2566603 (exists!3917 (toList!11176 z!3189) lambda!434165))))

(declare-fun choose!55189 ((InoxSet Context!14278) Int) Bool)

(assert (=> d!2226923 (= lt!2566603 (choose!55189 z!3189 lambda!434165))))

(assert (=> d!2226923 (= (exists!3915 z!3189 lambda!434165) lt!2566603)))

(declare-fun bs!1887952 () Bool)

(assert (= bs!1887952 d!2226923))

(assert (=> bs!1887952 m!7854030))

(assert (=> bs!1887952 m!7854030))

(declare-fun m!7854106 () Bool)

(assert (=> bs!1887952 m!7854106))

(declare-fun m!7854108 () Bool)

(assert (=> bs!1887952 m!7854108))

(assert (=> b!7138460 d!2226923))

(declare-fun d!2226925 () Bool)

(declare-fun lt!2566607 () Regex!18145)

(assert (=> d!2226925 (validRegex!9312 lt!2566607)))

(assert (=> d!2226925 (= lt!2566607 (generalisedUnion!2650 (unfocusZipperList!2186 lt!2566571)))))

(assert (=> d!2226925 (= (unfocusZipper!2493 lt!2566571) lt!2566607)))

(declare-fun bs!1887960 () Bool)

(assert (= bs!1887960 d!2226925))

(declare-fun m!7854112 () Bool)

(assert (=> bs!1887960 m!7854112))

(assert (=> bs!1887960 m!7854020))

(assert (=> bs!1887960 m!7854020))

(declare-fun m!7854118 () Bool)

(assert (=> bs!1887960 m!7854118))

(assert (=> b!7138455 d!2226925))

(declare-fun d!2226929 () Bool)

(declare-fun e!4290139 () Bool)

(assert (=> d!2226929 e!4290139))

(declare-fun res!2912820 () Bool)

(assert (=> d!2226929 (=> (not res!2912820) (not e!4290139))))

(declare-fun lt!2566612 () List!69369)

(declare-fun noDuplicate!2817 (List!69369) Bool)

(assert (=> d!2226929 (= res!2912820 (noDuplicate!2817 lt!2566612))))

(declare-fun choose!55190 ((InoxSet Context!14278)) List!69369)

(assert (=> d!2226929 (= lt!2566612 (choose!55190 z!3189))))

(assert (=> d!2226929 (= (toList!11176 z!3189) lt!2566612)))

(declare-fun b!7138538 () Bool)

(declare-fun content!14179 (List!69369) (InoxSet Context!14278))

(assert (=> b!7138538 (= e!4290139 (= (content!14179 lt!2566612) z!3189))))

(assert (= (and d!2226929 res!2912820) b!7138538))

(declare-fun m!7854120 () Bool)

(assert (=> d!2226929 m!7854120))

(declare-fun m!7854122 () Bool)

(assert (=> d!2226929 m!7854122))

(declare-fun m!7854124 () Bool)

(assert (=> b!7138538 m!7854124))

(assert (=> b!7138455 d!2226929))

(declare-fun d!2226931 () Bool)

(assert (=> d!2226931 (contains!20589 (unfocusZipperList!2186 lt!2566571) (generalisedConcat!2336 (exprs!7639 lt!2566580)))))

(declare-fun lt!2566616 () Unit!163149)

(declare-fun choose!55192 (List!69369 Context!14278) Unit!163149)

(assert (=> d!2226931 (= lt!2566616 (choose!55192 lt!2566571 lt!2566580))))

(declare-fun contains!20590 (List!69369 Context!14278) Bool)

(assert (=> d!2226931 (contains!20590 lt!2566571 lt!2566580)))

(assert (=> d!2226931 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!10 lt!2566571 lt!2566580) lt!2566616)))

(declare-fun bs!1887961 () Bool)

(assert (= bs!1887961 d!2226931))

(declare-fun m!7854132 () Bool)

(assert (=> bs!1887961 m!7854132))

(declare-fun m!7854134 () Bool)

(assert (=> bs!1887961 m!7854134))

(assert (=> bs!1887961 m!7854010))

(assert (=> bs!1887961 m!7854020))

(assert (=> bs!1887961 m!7854020))

(assert (=> bs!1887961 m!7854010))

(declare-fun m!7854136 () Bool)

(assert (=> bs!1887961 m!7854136))

(assert (=> b!7138454 d!2226931))

(declare-fun bs!1887963 () Bool)

(declare-fun d!2226935 () Bool)

(assert (= bs!1887963 (and d!2226935 b!7138453)))

(declare-fun lambda!434204 () Int)

(assert (=> bs!1887963 (not (= lambda!434204 lambda!434164))))

(declare-fun bs!1887964 () Bool)

(assert (= bs!1887964 (and d!2226935 d!2226917)))

(assert (=> bs!1887964 (not (= lambda!434204 lambda!434193))))

(declare-fun bs!1887965 () Bool)

(assert (= bs!1887965 (and d!2226935 d!2226889)))

(assert (=> bs!1887965 (not (= lambda!434204 lambda!434175))))

(declare-fun bs!1887966 () Bool)

(assert (= bs!1887966 (and d!2226935 d!2226897)))

(assert (=> bs!1887966 (not (= lambda!434204 lambda!434181))))

(assert (=> bs!1887966 (= lambda!434204 lambda!434180)))

(declare-fun bs!1887967 () Bool)

(assert (= bs!1887967 (and d!2226935 b!7138456)))

(assert (=> bs!1887967 (= lambda!434204 lambda!434166)))

(declare-fun lambda!434205 () Int)

(assert (=> bs!1887963 (= lambda!434205 lambda!434164)))

(assert (=> bs!1887964 (= lambda!434205 lambda!434193)))

(assert (=> bs!1887965 (not (= lambda!434205 lambda!434175))))

(assert (=> bs!1887966 (= lambda!434205 lambda!434181)))

(assert (=> bs!1887966 (not (= lambda!434205 lambda!434180))))

(declare-fun bs!1887968 () Bool)

(assert (= bs!1887968 d!2226935))

(assert (=> bs!1887968 (not (= lambda!434205 lambda!434204))))

(assert (=> bs!1887967 (not (= lambda!434205 lambda!434166))))

(assert (=> d!2226935 (= (nullable!7665 lt!2566579) (forall!16983 (exprs!7639 lt!2566580) lambda!434205))))

(declare-fun lt!2566622 () Unit!163149)

(declare-fun choose!55194 (Regex!18145 List!69368) Unit!163149)

(assert (=> d!2226935 (= lt!2566622 (choose!55194 lt!2566579 (exprs!7639 lt!2566580)))))

(assert (=> d!2226935 (forall!16983 (exprs!7639 lt!2566580) lambda!434204)))

(assert (=> d!2226935 (= (nullableGenConcatSpec!6 lt!2566579 (exprs!7639 lt!2566580)) lt!2566622)))

(assert (=> bs!1887968 m!7854008))

(declare-fun m!7854144 () Bool)

(assert (=> bs!1887968 m!7854144))

(declare-fun m!7854146 () Bool)

(assert (=> bs!1887968 m!7854146))

(declare-fun m!7854148 () Bool)

(assert (=> bs!1887968 m!7854148))

(assert (=> b!7138454 d!2226935))

(declare-fun bs!1887976 () Bool)

(declare-fun d!2226939 () Bool)

(assert (= bs!1887976 (and d!2226939 d!2226935)))

(declare-fun lambda!434211 () Int)

(assert (=> bs!1887976 (not (= lambda!434211 lambda!434205))))

(declare-fun bs!1887977 () Bool)

(assert (= bs!1887977 (and d!2226939 b!7138453)))

(assert (=> bs!1887977 (not (= lambda!434211 lambda!434164))))

(declare-fun bs!1887978 () Bool)

(assert (= bs!1887978 (and d!2226939 d!2226917)))

(assert (=> bs!1887978 (not (= lambda!434211 lambda!434193))))

(declare-fun bs!1887979 () Bool)

(assert (= bs!1887979 (and d!2226939 d!2226889)))

(assert (=> bs!1887979 (not (= lambda!434211 lambda!434175))))

(declare-fun bs!1887980 () Bool)

(assert (= bs!1887980 (and d!2226939 d!2226897)))

(assert (=> bs!1887980 (not (= lambda!434211 lambda!434181))))

(assert (=> bs!1887980 (= lambda!434211 lambda!434180)))

(assert (=> bs!1887976 (= lambda!434211 lambda!434204)))

(declare-fun bs!1887981 () Bool)

(assert (= bs!1887981 (and d!2226939 b!7138456)))

(assert (=> bs!1887981 (= lambda!434211 lambda!434166)))

(declare-fun e!4290183 () Bool)

(assert (=> d!2226939 e!4290183))

(declare-fun res!2912839 () Bool)

(assert (=> d!2226939 (=> (not res!2912839) (not e!4290183))))

(declare-fun lt!2566628 () Regex!18145)

(assert (=> d!2226939 (= res!2912839 (validRegex!9312 lt!2566628))))

(declare-fun e!4290178 () Regex!18145)

(assert (=> d!2226939 (= lt!2566628 e!4290178)))

(declare-fun c!1331251 () Bool)

(declare-fun e!4290180 () Bool)

(assert (=> d!2226939 (= c!1331251 e!4290180)))

(declare-fun res!2912840 () Bool)

(assert (=> d!2226939 (=> (not res!2912840) (not e!4290180))))

(assert (=> d!2226939 (= res!2912840 ((_ is Cons!69244) (exprs!7639 lt!2566580)))))

(assert (=> d!2226939 (forall!16983 (exprs!7639 lt!2566580) lambda!434211)))

(assert (=> d!2226939 (= (generalisedConcat!2336 (exprs!7639 lt!2566580)) lt!2566628)))

(declare-fun b!7138597 () Bool)

(declare-fun e!4290181 () Regex!18145)

(assert (=> b!7138597 (= e!4290181 EmptyExpr!18145)))

(declare-fun b!7138598 () Bool)

(assert (=> b!7138598 (= e!4290181 (Concat!26990 (h!75692 (exprs!7639 lt!2566580)) (generalisedConcat!2336 (t!383385 (exprs!7639 lt!2566580)))))))

(declare-fun b!7138599 () Bool)

(declare-fun e!4290179 () Bool)

(assert (=> b!7138599 (= e!4290183 e!4290179)))

(declare-fun c!1331254 () Bool)

(declare-fun isEmpty!40055 (List!69368) Bool)

(assert (=> b!7138599 (= c!1331254 (isEmpty!40055 (exprs!7639 lt!2566580)))))

(declare-fun b!7138600 () Bool)

(declare-fun e!4290182 () Bool)

(assert (=> b!7138600 (= e!4290179 e!4290182)))

(declare-fun c!1331253 () Bool)

(declare-fun tail!13966 (List!69368) List!69368)

(assert (=> b!7138600 (= c!1331253 (isEmpty!40055 (tail!13966 (exprs!7639 lt!2566580))))))

(declare-fun b!7138601 () Bool)

(declare-fun isConcat!1555 (Regex!18145) Bool)

(assert (=> b!7138601 (= e!4290182 (isConcat!1555 lt!2566628))))

(declare-fun b!7138602 () Bool)

(assert (=> b!7138602 (= e!4290178 e!4290181)))

(declare-fun c!1331252 () Bool)

(assert (=> b!7138602 (= c!1331252 ((_ is Cons!69244) (exprs!7639 lt!2566580)))))

(declare-fun b!7138603 () Bool)

(assert (=> b!7138603 (= e!4290178 (h!75692 (exprs!7639 lt!2566580)))))

(declare-fun b!7138604 () Bool)

(declare-fun head!14496 (List!69368) Regex!18145)

(assert (=> b!7138604 (= e!4290182 (= lt!2566628 (head!14496 (exprs!7639 lt!2566580))))))

(declare-fun b!7138605 () Bool)

(assert (=> b!7138605 (= e!4290180 (isEmpty!40055 (t!383385 (exprs!7639 lt!2566580))))))

(declare-fun b!7138606 () Bool)

(declare-fun isEmptyExpr!2033 (Regex!18145) Bool)

(assert (=> b!7138606 (= e!4290179 (isEmptyExpr!2033 lt!2566628))))

(assert (= (and d!2226939 res!2912840) b!7138605))

(assert (= (and d!2226939 c!1331251) b!7138603))

(assert (= (and d!2226939 (not c!1331251)) b!7138602))

(assert (= (and b!7138602 c!1331252) b!7138598))

(assert (= (and b!7138602 (not c!1331252)) b!7138597))

(assert (= (and d!2226939 res!2912839) b!7138599))

(assert (= (and b!7138599 c!1331254) b!7138606))

(assert (= (and b!7138599 (not c!1331254)) b!7138600))

(assert (= (and b!7138600 c!1331253) b!7138604))

(assert (= (and b!7138600 (not c!1331253)) b!7138601))

(declare-fun m!7854174 () Bool)

(assert (=> b!7138599 m!7854174))

(declare-fun m!7854176 () Bool)

(assert (=> b!7138598 m!7854176))

(declare-fun m!7854178 () Bool)

(assert (=> b!7138606 m!7854178))

(declare-fun m!7854180 () Bool)

(assert (=> b!7138605 m!7854180))

(declare-fun m!7854182 () Bool)

(assert (=> b!7138604 m!7854182))

(declare-fun m!7854184 () Bool)

(assert (=> b!7138601 m!7854184))

(declare-fun m!7854186 () Bool)

(assert (=> d!2226939 m!7854186))

(declare-fun m!7854188 () Bool)

(assert (=> d!2226939 m!7854188))

(declare-fun m!7854190 () Bool)

(assert (=> b!7138600 m!7854190))

(assert (=> b!7138600 m!7854190))

(declare-fun m!7854192 () Bool)

(assert (=> b!7138600 m!7854192))

(assert (=> b!7138454 d!2226939))

(declare-fun d!2226945 () Bool)

(assert (=> d!2226945 (= (nullable!7665 lt!2566579) (nullableFct!2977 lt!2566579))))

(declare-fun bs!1887982 () Bool)

(assert (= bs!1887982 d!2226945))

(declare-fun m!7854194 () Bool)

(assert (=> bs!1887982 m!7854194))

(assert (=> b!7138454 d!2226945))

(declare-fun d!2226947 () Bool)

(declare-fun res!2912841 () Bool)

(declare-fun e!4290184 () Bool)

(assert (=> d!2226947 (=> res!2912841 e!4290184)))

(assert (=> d!2226947 (= res!2912841 ((_ is Nil!69244) (exprs!7639 lt!2566580)))))

(assert (=> d!2226947 (= (forall!16983 (exprs!7639 lt!2566580) lambda!434164) e!4290184)))

(declare-fun b!7138607 () Bool)

(declare-fun e!4290185 () Bool)

(assert (=> b!7138607 (= e!4290184 e!4290185)))

(declare-fun res!2912842 () Bool)

(assert (=> b!7138607 (=> (not res!2912842) (not e!4290185))))

(assert (=> b!7138607 (= res!2912842 (dynLambda!28170 lambda!434164 (h!75692 (exprs!7639 lt!2566580))))))

(declare-fun b!7138608 () Bool)

(assert (=> b!7138608 (= e!4290185 (forall!16983 (t!383385 (exprs!7639 lt!2566580)) lambda!434164))))

(assert (= (and d!2226947 (not res!2912841)) b!7138607))

(assert (= (and b!7138607 res!2912842) b!7138608))

(declare-fun b_lambda!272459 () Bool)

(assert (=> (not b_lambda!272459) (not b!7138607)))

(declare-fun m!7854196 () Bool)

(assert (=> b!7138607 m!7854196))

(declare-fun m!7854198 () Bool)

(assert (=> b!7138608 m!7854198))

(assert (=> b!7138454 d!2226947))

(declare-fun d!2226949 () Bool)

(declare-fun lt!2566634 () Bool)

(declare-fun content!14181 (List!69368) (InoxSet Regex!18145))

(assert (=> d!2226949 (= lt!2566634 (select (content!14181 lt!2566576) lt!2566579))))

(declare-fun e!4290196 () Bool)

(assert (=> d!2226949 (= lt!2566634 e!4290196)))

(declare-fun res!2912853 () Bool)

(assert (=> d!2226949 (=> (not res!2912853) (not e!4290196))))

(assert (=> d!2226949 (= res!2912853 ((_ is Cons!69244) lt!2566576))))

(assert (=> d!2226949 (= (contains!20589 lt!2566576 lt!2566579) lt!2566634)))

(declare-fun b!7138618 () Bool)

(declare-fun e!4290195 () Bool)

(assert (=> b!7138618 (= e!4290196 e!4290195)))

(declare-fun res!2912852 () Bool)

(assert (=> b!7138618 (=> res!2912852 e!4290195)))

(assert (=> b!7138618 (= res!2912852 (= (h!75692 lt!2566576) lt!2566579))))

(declare-fun b!7138619 () Bool)

(assert (=> b!7138619 (= e!4290195 (contains!20589 (t!383385 lt!2566576) lt!2566579))))

(assert (= (and d!2226949 res!2912853) b!7138618))

(assert (= (and b!7138618 (not res!2912852)) b!7138619))

(declare-fun m!7854210 () Bool)

(assert (=> d!2226949 m!7854210))

(declare-fun m!7854212 () Bool)

(assert (=> d!2226949 m!7854212))

(declare-fun m!7854214 () Bool)

(assert (=> b!7138619 m!7854214))

(assert (=> b!7138454 d!2226949))

(declare-fun bs!1887991 () Bool)

(declare-fun d!2226955 () Bool)

(assert (= bs!1887991 (and d!2226955 d!2226935)))

(declare-fun lambda!434217 () Int)

(assert (=> bs!1887991 (not (= lambda!434217 lambda!434205))))

(declare-fun bs!1887992 () Bool)

(assert (= bs!1887992 (and d!2226955 b!7138453)))

(assert (=> bs!1887992 (not (= lambda!434217 lambda!434164))))

(declare-fun bs!1887993 () Bool)

(assert (= bs!1887993 (and d!2226955 d!2226917)))

(assert (=> bs!1887993 (not (= lambda!434217 lambda!434193))))

(declare-fun bs!1887994 () Bool)

(assert (= bs!1887994 (and d!2226955 d!2226889)))

(assert (=> bs!1887994 (not (= lambda!434217 lambda!434175))))

(declare-fun bs!1887995 () Bool)

(assert (= bs!1887995 (and d!2226955 d!2226939)))

(assert (=> bs!1887995 (= lambda!434217 lambda!434211)))

(declare-fun bs!1887996 () Bool)

(assert (= bs!1887996 (and d!2226955 d!2226897)))

(assert (=> bs!1887996 (not (= lambda!434217 lambda!434181))))

(assert (=> bs!1887996 (= lambda!434217 lambda!434180)))

(assert (=> bs!1887991 (= lambda!434217 lambda!434204)))

(declare-fun bs!1887997 () Bool)

(assert (= bs!1887997 (and d!2226955 b!7138456)))

(assert (=> bs!1887997 (= lambda!434217 lambda!434166)))

(declare-fun b!7138670 () Bool)

(declare-fun e!4290228 () Bool)

(declare-fun e!4290229 () Bool)

(assert (=> b!7138670 (= e!4290228 e!4290229)))

(declare-fun c!1331278 () Bool)

(assert (=> b!7138670 (= c!1331278 (isEmpty!40055 (tail!13966 lt!2566576)))))

(declare-fun b!7138671 () Bool)

(declare-fun e!4290232 () Regex!18145)

(declare-fun e!4290230 () Regex!18145)

(assert (=> b!7138671 (= e!4290232 e!4290230)))

(declare-fun c!1331276 () Bool)

(assert (=> b!7138671 (= c!1331276 ((_ is Cons!69244) lt!2566576))))

(declare-fun b!7138672 () Bool)

(declare-fun e!4290231 () Bool)

(assert (=> b!7138672 (= e!4290231 (isEmpty!40055 (t!383385 lt!2566576)))))

(declare-fun b!7138673 () Bool)

(declare-fun e!4290227 () Bool)

(assert (=> b!7138673 (= e!4290227 e!4290228)))

(declare-fun c!1331277 () Bool)

(assert (=> b!7138673 (= c!1331277 (isEmpty!40055 lt!2566576))))

(declare-fun b!7138674 () Bool)

(declare-fun lt!2566640 () Regex!18145)

(assert (=> b!7138674 (= e!4290229 (= lt!2566640 (head!14496 lt!2566576)))))

(declare-fun b!7138675 () Bool)

(declare-fun isUnion!1515 (Regex!18145) Bool)

(assert (=> b!7138675 (= e!4290229 (isUnion!1515 lt!2566640))))

(declare-fun b!7138676 () Bool)

(assert (=> b!7138676 (= e!4290230 EmptyLang!18145)))

(declare-fun b!7138677 () Bool)

(assert (=> b!7138677 (= e!4290232 (h!75692 lt!2566576))))

(assert (=> d!2226955 e!4290227))

(declare-fun res!2912865 () Bool)

(assert (=> d!2226955 (=> (not res!2912865) (not e!4290227))))

(assert (=> d!2226955 (= res!2912865 (validRegex!9312 lt!2566640))))

(assert (=> d!2226955 (= lt!2566640 e!4290232)))

(declare-fun c!1331275 () Bool)

(assert (=> d!2226955 (= c!1331275 e!4290231)))

(declare-fun res!2912864 () Bool)

(assert (=> d!2226955 (=> (not res!2912864) (not e!4290231))))

(assert (=> d!2226955 (= res!2912864 ((_ is Cons!69244) lt!2566576))))

(assert (=> d!2226955 (forall!16983 lt!2566576 lambda!434217)))

(assert (=> d!2226955 (= (generalisedUnion!2650 lt!2566576) lt!2566640)))

(declare-fun b!7138678 () Bool)

(assert (=> b!7138678 (= e!4290230 (Union!18145 (h!75692 lt!2566576) (generalisedUnion!2650 (t!383385 lt!2566576))))))

(declare-fun b!7138679 () Bool)

(declare-fun isEmptyLang!2087 (Regex!18145) Bool)

(assert (=> b!7138679 (= e!4290228 (isEmptyLang!2087 lt!2566640))))

(assert (= (and d!2226955 res!2912864) b!7138672))

(assert (= (and d!2226955 c!1331275) b!7138677))

(assert (= (and d!2226955 (not c!1331275)) b!7138671))

(assert (= (and b!7138671 c!1331276) b!7138678))

(assert (= (and b!7138671 (not c!1331276)) b!7138676))

(assert (= (and d!2226955 res!2912865) b!7138673))

(assert (= (and b!7138673 c!1331277) b!7138679))

(assert (= (and b!7138673 (not c!1331277)) b!7138670))

(assert (= (and b!7138670 c!1331278) b!7138674))

(assert (= (and b!7138670 (not c!1331278)) b!7138675))

(declare-fun m!7854236 () Bool)

(assert (=> b!7138672 m!7854236))

(declare-fun m!7854238 () Bool)

(assert (=> b!7138674 m!7854238))

(declare-fun m!7854240 () Bool)

(assert (=> b!7138678 m!7854240))

(declare-fun m!7854242 () Bool)

(assert (=> b!7138670 m!7854242))

(assert (=> b!7138670 m!7854242))

(declare-fun m!7854244 () Bool)

(assert (=> b!7138670 m!7854244))

(declare-fun m!7854246 () Bool)

(assert (=> b!7138673 m!7854246))

(declare-fun m!7854248 () Bool)

(assert (=> d!2226955 m!7854248))

(declare-fun m!7854250 () Bool)

(assert (=> d!2226955 m!7854250))

(declare-fun m!7854252 () Bool)

(assert (=> b!7138675 m!7854252))

(declare-fun m!7854254 () Bool)

(assert (=> b!7138679 m!7854254))

(assert (=> b!7138459 d!2226955))

(declare-fun bs!1888007 () Bool)

(declare-fun d!2226959 () Bool)

(assert (= bs!1888007 (and d!2226959 d!2226935)))

(declare-fun lambda!434223 () Int)

(assert (=> bs!1888007 (not (= lambda!434223 lambda!434205))))

(declare-fun bs!1888008 () Bool)

(assert (= bs!1888008 (and d!2226959 b!7138453)))

(assert (=> bs!1888008 (not (= lambda!434223 lambda!434164))))

(declare-fun bs!1888009 () Bool)

(assert (= bs!1888009 (and d!2226959 d!2226917)))

(assert (=> bs!1888009 (not (= lambda!434223 lambda!434193))))

(declare-fun bs!1888010 () Bool)

(assert (= bs!1888010 (and d!2226959 d!2226889)))

(assert (=> bs!1888010 (not (= lambda!434223 lambda!434175))))

(declare-fun bs!1888011 () Bool)

(assert (= bs!1888011 (and d!2226959 d!2226939)))

(assert (=> bs!1888011 (= lambda!434223 lambda!434211)))

(declare-fun bs!1888012 () Bool)

(assert (= bs!1888012 (and d!2226959 d!2226897)))

(assert (=> bs!1888012 (not (= lambda!434223 lambda!434181))))

(assert (=> bs!1888012 (= lambda!434223 lambda!434180)))

(assert (=> bs!1888007 (= lambda!434223 lambda!434204)))

(declare-fun bs!1888013 () Bool)

(assert (= bs!1888013 (and d!2226959 d!2226955)))

(assert (=> bs!1888013 (= lambda!434223 lambda!434217)))

(declare-fun bs!1888014 () Bool)

(assert (= bs!1888014 (and d!2226959 b!7138456)))

(assert (=> bs!1888014 (= lambda!434223 lambda!434166)))

(declare-fun lt!2566646 () List!69368)

(assert (=> d!2226959 (forall!16983 lt!2566646 lambda!434223)))

(declare-fun e!4290240 () List!69368)

(assert (=> d!2226959 (= lt!2566646 e!4290240)))

(declare-fun c!1331284 () Bool)

(assert (=> d!2226959 (= c!1331284 ((_ is Cons!69245) lt!2566571))))

(assert (=> d!2226959 (= (unfocusZipperList!2186 lt!2566571) lt!2566646)))

(declare-fun b!7138696 () Bool)

(assert (=> b!7138696 (= e!4290240 (Cons!69244 (generalisedConcat!2336 (exprs!7639 (h!75693 lt!2566571))) (unfocusZipperList!2186 (t!383386 lt!2566571))))))

(declare-fun b!7138697 () Bool)

(assert (=> b!7138697 (= e!4290240 Nil!69244)))

(assert (= (and d!2226959 c!1331284) b!7138696))

(assert (= (and d!2226959 (not c!1331284)) b!7138697))

(declare-fun m!7854262 () Bool)

(assert (=> d!2226959 m!7854262))

(declare-fun m!7854264 () Bool)

(assert (=> b!7138696 m!7854264))

(declare-fun m!7854266 () Bool)

(assert (=> b!7138696 m!7854266))

(assert (=> b!7138459 d!2226959))

(declare-fun bs!1888015 () Bool)

(declare-fun d!2226961 () Bool)

(assert (= bs!1888015 (and d!2226961 d!2226935)))

(declare-fun lambda!434226 () Int)

(assert (=> bs!1888015 (not (= lambda!434226 lambda!434205))))

(declare-fun bs!1888016 () Bool)

(assert (= bs!1888016 (and d!2226961 b!7138453)))

(assert (=> bs!1888016 (not (= lambda!434226 lambda!434164))))

(declare-fun bs!1888017 () Bool)

(assert (= bs!1888017 (and d!2226961 d!2226917)))

(assert (=> bs!1888017 (not (= lambda!434226 lambda!434193))))

(declare-fun bs!1888018 () Bool)

(assert (= bs!1888018 (and d!2226961 d!2226889)))

(assert (=> bs!1888018 (not (= lambda!434226 lambda!434175))))

(declare-fun bs!1888019 () Bool)

(assert (= bs!1888019 (and d!2226961 d!2226939)))

(assert (=> bs!1888019 (= lambda!434226 lambda!434211)))

(declare-fun bs!1888020 () Bool)

(assert (= bs!1888020 (and d!2226961 d!2226959)))

(assert (=> bs!1888020 (= lambda!434226 lambda!434223)))

(declare-fun bs!1888021 () Bool)

(assert (= bs!1888021 (and d!2226961 d!2226897)))

(assert (=> bs!1888021 (not (= lambda!434226 lambda!434181))))

(assert (=> bs!1888021 (= lambda!434226 lambda!434180)))

(assert (=> bs!1888015 (= lambda!434226 lambda!434204)))

(declare-fun bs!1888022 () Bool)

(assert (= bs!1888022 (and d!2226961 d!2226955)))

(assert (=> bs!1888022 (= lambda!434226 lambda!434217)))

(declare-fun bs!1888023 () Bool)

(assert (= bs!1888023 (and d!2226961 b!7138456)))

(assert (=> bs!1888023 (= lambda!434226 lambda!434166)))

(assert (=> d!2226961 (= (inv!88426 setElem!52447) (forall!16983 (exprs!7639 setElem!52447) lambda!434226))))

(declare-fun bs!1888024 () Bool)

(assert (= bs!1888024 d!2226961))

(declare-fun m!7854270 () Bool)

(assert (=> bs!1888024 m!7854270))

(assert (=> setNonEmpty!52447 d!2226961))

(declare-fun b!7138736 () Bool)

(declare-fun e!4290254 () Bool)

(declare-fun tp!1968437 () Bool)

(declare-fun tp!1968438 () Bool)

(assert (=> b!7138736 (= e!4290254 (and tp!1968437 tp!1968438))))

(assert (=> b!7138449 (= tp!1968381 e!4290254)))

(assert (= (and b!7138449 ((_ is Cons!69244) (exprs!7639 setElem!52447))) b!7138736))

(declare-fun b!7138749 () Bool)

(declare-fun e!4290257 () Bool)

(declare-fun tp!1968453 () Bool)

(assert (=> b!7138749 (= e!4290257 tp!1968453)))

(declare-fun b!7138748 () Bool)

(declare-fun tp!1968450 () Bool)

(declare-fun tp!1968452 () Bool)

(assert (=> b!7138748 (= e!4290257 (and tp!1968450 tp!1968452))))

(assert (=> b!7138461 (= tp!1968379 e!4290257)))

(declare-fun b!7138750 () Bool)

(declare-fun tp!1968449 () Bool)

(declare-fun tp!1968451 () Bool)

(assert (=> b!7138750 (= e!4290257 (and tp!1968449 tp!1968451))))

(declare-fun b!7138747 () Bool)

(assert (=> b!7138747 (= e!4290257 tp_is_empty!45927)))

(assert (= (and b!7138461 ((_ is ElementMatch!18145) (regOne!36803 r!11483))) b!7138747))

(assert (= (and b!7138461 ((_ is Concat!26990) (regOne!36803 r!11483))) b!7138748))

(assert (= (and b!7138461 ((_ is Star!18145) (regOne!36803 r!11483))) b!7138749))

(assert (= (and b!7138461 ((_ is Union!18145) (regOne!36803 r!11483))) b!7138750))

(declare-fun b!7138753 () Bool)

(declare-fun e!4290258 () Bool)

(declare-fun tp!1968458 () Bool)

(assert (=> b!7138753 (= e!4290258 tp!1968458)))

(declare-fun b!7138752 () Bool)

(declare-fun tp!1968455 () Bool)

(declare-fun tp!1968457 () Bool)

(assert (=> b!7138752 (= e!4290258 (and tp!1968455 tp!1968457))))

(assert (=> b!7138461 (= tp!1968382 e!4290258)))

(declare-fun b!7138754 () Bool)

(declare-fun tp!1968454 () Bool)

(declare-fun tp!1968456 () Bool)

(assert (=> b!7138754 (= e!4290258 (and tp!1968454 tp!1968456))))

(declare-fun b!7138751 () Bool)

(assert (=> b!7138751 (= e!4290258 tp_is_empty!45927)))

(assert (= (and b!7138461 ((_ is ElementMatch!18145) (regTwo!36803 r!11483))) b!7138751))

(assert (= (and b!7138461 ((_ is Concat!26990) (regTwo!36803 r!11483))) b!7138752))

(assert (= (and b!7138461 ((_ is Star!18145) (regTwo!36803 r!11483))) b!7138753))

(assert (= (and b!7138461 ((_ is Union!18145) (regTwo!36803 r!11483))) b!7138754))

(declare-fun b!7138757 () Bool)

(declare-fun e!4290259 () Bool)

(declare-fun tp!1968463 () Bool)

(assert (=> b!7138757 (= e!4290259 tp!1968463)))

(declare-fun b!7138756 () Bool)

(declare-fun tp!1968460 () Bool)

(declare-fun tp!1968462 () Bool)

(assert (=> b!7138756 (= e!4290259 (and tp!1968460 tp!1968462))))

(assert (=> b!7138448 (= tp!1968384 e!4290259)))

(declare-fun b!7138758 () Bool)

(declare-fun tp!1968459 () Bool)

(declare-fun tp!1968461 () Bool)

(assert (=> b!7138758 (= e!4290259 (and tp!1968459 tp!1968461))))

(declare-fun b!7138755 () Bool)

(assert (=> b!7138755 (= e!4290259 tp_is_empty!45927)))

(assert (= (and b!7138448 ((_ is ElementMatch!18145) (regOne!36802 r!11483))) b!7138755))

(assert (= (and b!7138448 ((_ is Concat!26990) (regOne!36802 r!11483))) b!7138756))

(assert (= (and b!7138448 ((_ is Star!18145) (regOne!36802 r!11483))) b!7138757))

(assert (= (and b!7138448 ((_ is Union!18145) (regOne!36802 r!11483))) b!7138758))

(declare-fun b!7138761 () Bool)

(declare-fun e!4290260 () Bool)

(declare-fun tp!1968468 () Bool)

(assert (=> b!7138761 (= e!4290260 tp!1968468)))

(declare-fun b!7138760 () Bool)

(declare-fun tp!1968465 () Bool)

(declare-fun tp!1968467 () Bool)

(assert (=> b!7138760 (= e!4290260 (and tp!1968465 tp!1968467))))

(assert (=> b!7138448 (= tp!1968380 e!4290260)))

(declare-fun b!7138762 () Bool)

(declare-fun tp!1968464 () Bool)

(declare-fun tp!1968466 () Bool)

(assert (=> b!7138762 (= e!4290260 (and tp!1968464 tp!1968466))))

(declare-fun b!7138759 () Bool)

(assert (=> b!7138759 (= e!4290260 tp_is_empty!45927)))

(assert (= (and b!7138448 ((_ is ElementMatch!18145) (regTwo!36802 r!11483))) b!7138759))

(assert (= (and b!7138448 ((_ is Concat!26990) (regTwo!36802 r!11483))) b!7138760))

(assert (= (and b!7138448 ((_ is Star!18145) (regTwo!36802 r!11483))) b!7138761))

(assert (= (and b!7138448 ((_ is Union!18145) (regTwo!36802 r!11483))) b!7138762))

(declare-fun b!7138765 () Bool)

(declare-fun e!4290261 () Bool)

(declare-fun tp!1968473 () Bool)

(assert (=> b!7138765 (= e!4290261 tp!1968473)))

(declare-fun b!7138764 () Bool)

(declare-fun tp!1968470 () Bool)

(declare-fun tp!1968472 () Bool)

(assert (=> b!7138764 (= e!4290261 (and tp!1968470 tp!1968472))))

(assert (=> b!7138450 (= tp!1968383 e!4290261)))

(declare-fun b!7138766 () Bool)

(declare-fun tp!1968469 () Bool)

(declare-fun tp!1968471 () Bool)

(assert (=> b!7138766 (= e!4290261 (and tp!1968469 tp!1968471))))

(declare-fun b!7138763 () Bool)

(assert (=> b!7138763 (= e!4290261 tp_is_empty!45927)))

(assert (= (and b!7138450 ((_ is ElementMatch!18145) (reg!18474 r!11483))) b!7138763))

(assert (= (and b!7138450 ((_ is Concat!26990) (reg!18474 r!11483))) b!7138764))

(assert (= (and b!7138450 ((_ is Star!18145) (reg!18474 r!11483))) b!7138765))

(assert (= (and b!7138450 ((_ is Union!18145) (reg!18474 r!11483))) b!7138766))

(declare-fun condSetEmpty!52453 () Bool)

(assert (=> setNonEmpty!52447 (= condSetEmpty!52453 (= setRest!52447 ((as const (Array Context!14278 Bool)) false)))))

(declare-fun setRes!52453 () Bool)

(assert (=> setNonEmpty!52447 (= tp!1968385 setRes!52453)))

(declare-fun setIsEmpty!52453 () Bool)

(assert (=> setIsEmpty!52453 setRes!52453))

(declare-fun tp!1968478 () Bool)

(declare-fun setNonEmpty!52453 () Bool)

(declare-fun e!4290264 () Bool)

(declare-fun setElem!52453 () Context!14278)

(assert (=> setNonEmpty!52453 (= setRes!52453 (and tp!1968478 (inv!88426 setElem!52453) e!4290264))))

(declare-fun setRest!52453 () (InoxSet Context!14278))

(assert (=> setNonEmpty!52453 (= setRest!52447 ((_ map or) (store ((as const (Array Context!14278 Bool)) false) setElem!52453 true) setRest!52453))))

(declare-fun b!7138771 () Bool)

(declare-fun tp!1968479 () Bool)

(assert (=> b!7138771 (= e!4290264 tp!1968479)))

(assert (= (and setNonEmpty!52447 condSetEmpty!52453) setIsEmpty!52453))

(assert (= (and setNonEmpty!52447 (not condSetEmpty!52453)) setNonEmpty!52453))

(assert (= setNonEmpty!52453 b!7138771))

(declare-fun m!7854278 () Bool)

(assert (=> setNonEmpty!52453 m!7854278))

(declare-fun b_lambda!272471 () Bool)

(assert (= b_lambda!272455 (or b!7138456 b_lambda!272471)))

(declare-fun bs!1888028 () Bool)

(declare-fun d!2226969 () Bool)

(assert (= bs!1888028 (and d!2226969 b!7138456)))

(assert (=> bs!1888028 (= (dynLambda!28170 lambda!434166 (h!75692 (exprs!7639 lt!2566580))) (validRegex!9312 (h!75692 (exprs!7639 lt!2566580))))))

(declare-fun m!7854280 () Bool)

(assert (=> bs!1888028 m!7854280))

(assert (=> b!7138530 d!2226969))

(declare-fun b_lambda!272473 () Bool)

(assert (= b_lambda!272459 (or b!7138453 b_lambda!272473)))

(declare-fun bs!1888029 () Bool)

(declare-fun d!2226971 () Bool)

(assert (= bs!1888029 (and d!2226971 b!7138453)))

(assert (=> bs!1888029 (= (dynLambda!28170 lambda!434164 (h!75692 (exprs!7639 lt!2566580))) (nullable!7665 (h!75692 (exprs!7639 lt!2566580))))))

(declare-fun m!7854282 () Bool)

(assert (=> bs!1888029 m!7854282))

(assert (=> b!7138607 d!2226971))

(declare-fun b_lambda!272475 () Bool)

(assert (= b_lambda!272453 (or b!7138460 b_lambda!272475)))

(declare-fun bs!1888030 () Bool)

(declare-fun d!2226973 () Bool)

(assert (= bs!1888030 (and d!2226973 b!7138460)))

(assert (=> bs!1888030 (= (dynLambda!28169 lambda!434165 lt!2566595) (nullableContext!144 lt!2566595))))

(declare-fun m!7854284 () Bool)

(assert (=> bs!1888030 m!7854284))

(assert (=> d!2226907 d!2226973))

(check-sat (not b!7138675) (not b!7138762) (not d!2226907) (not b_lambda!272475) (not d!2226955) (not d!2226925) (not b!7138765) (not d!2226889) (not d!2226959) (not b!7138752) (not d!2226961) (not b_lambda!272473) (not b!7138760) (not b!7138605) (not d!2226949) (not d!2226931) (not setNonEmpty!52453) (not b!7138672) (not b!7138679) (not bm!651077) (not b!7138696) (not d!2226895) (not b!7138678) (not d!2226923) tp_is_empty!45927 (not b!7138601) (not b!7138758) (not b!7138674) (not b!7138518) (not bs!1888029) (not b!7138599) (not d!2226935) (not b!7138606) (not b!7138619) (not b!7138750) (not d!2226897) (not b_lambda!272471) (not d!2226945) (not b!7138757) (not b!7138748) (not b!7138764) (not b!7138761) (not b!7138753) (not d!2226929) (not b!7138736) (not b!7138604) (not b!7138538) (not b!7138756) (not d!2226939) (not b!7138608) (not bs!1888028) (not b!7138766) (not bm!651075) (not b!7138749) (not b!7138531) (not b!7138771) (not b!7138754) (not b!7138600) (not bs!1888030) (not b!7138670) (not d!2226917) (not b!7138598) (not b!7138673))
(check-sat)
