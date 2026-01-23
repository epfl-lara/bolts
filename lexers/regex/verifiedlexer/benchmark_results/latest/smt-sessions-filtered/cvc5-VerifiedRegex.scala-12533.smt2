; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696294 () Bool)

(assert start!696294)

(declare-fun b!7142402 () Bool)

(declare-fun e!4292343 () Bool)

(declare-fun tp!1969932 () Bool)

(assert (=> b!7142402 (= e!4292343 tp!1969932)))

(declare-fun b!7142403 () Bool)

(declare-fun e!4292340 () Bool)

(declare-datatypes ((C!36622 0))(
  ( (C!36623 (val!28259 Int)) )
))
(declare-datatypes ((Regex!18174 0))(
  ( (ElementMatch!18174 (c!1331963 C!36622)) (Concat!27019 (regOne!36860 Regex!18174) (regTwo!36860 Regex!18174)) (EmptyExpr!18174) (Star!18174 (reg!18503 Regex!18174)) (EmptyLang!18174) (Union!18174 (regOne!36861 Regex!18174) (regTwo!36861 Regex!18174)) )
))
(declare-datatypes ((List!69426 0))(
  ( (Nil!69302) (Cons!69302 (h!75750 Regex!18174) (t!383443 List!69426)) )
))
(declare-datatypes ((Context!14336 0))(
  ( (Context!14337 (exprs!7668 List!69426)) )
))
(declare-fun lt!2567738 () Context!14336)

(declare-fun nullableContext!152 (Context!14336) Bool)

(assert (=> b!7142403 (= e!4292340 (nullableContext!152 lt!2567738))))

(declare-fun b!7142404 () Bool)

(declare-fun e!4292342 () Bool)

(declare-fun tp_is_empty!45985 () Bool)

(assert (=> b!7142404 (= e!4292342 tp_is_empty!45985)))

(declare-fun b!7142405 () Bool)

(declare-fun res!2914203 () Bool)

(declare-fun e!4292345 () Bool)

(assert (=> b!7142405 (=> res!2914203 e!4292345)))

(declare-fun z!3189 () (Set Context!14336))

(declare-fun lambda!434992 () Int)

(declare-fun exists!3973 ((Set Context!14336) Int) Bool)

(assert (=> b!7142405 (= res!2914203 (not (exists!3973 z!3189 lambda!434992)))))

(declare-fun b!7142406 () Bool)

(declare-fun e!4292341 () Bool)

(assert (=> b!7142406 (= e!4292341 (not e!4292345))))

(declare-fun res!2914202 () Bool)

(assert (=> b!7142406 (=> res!2914202 e!4292345)))

(declare-fun lt!2567736 () List!69426)

(declare-fun lambda!434991 () Int)

(declare-fun lt!2567737 () Bool)

(declare-fun exists!3974 (List!69426 Int) Bool)

(assert (=> b!7142406 (= res!2914202 (not (= lt!2567737 (exists!3974 lt!2567736 lambda!434991))))))

(assert (=> b!7142406 (= lt!2567737 (exists!3974 lt!2567736 lambda!434991))))

(declare-fun lt!2567739 () Regex!18174)

(declare-fun nullable!7693 (Regex!18174) Bool)

(assert (=> b!7142406 (= lt!2567737 (nullable!7693 lt!2567739))))

(declare-datatypes ((Unit!163217 0))(
  ( (Unit!163218) )
))
(declare-fun lt!2567735 () Unit!163217)

(declare-fun nullableGenUnionSpec!61 (Regex!18174 List!69426) Unit!163217)

(assert (=> b!7142406 (= lt!2567735 (nullableGenUnionSpec!61 lt!2567739 lt!2567736))))

(declare-fun b!7142407 () Bool)

(declare-fun tp!1969934 () Bool)

(assert (=> b!7142407 (= e!4292342 tp!1969934)))

(declare-fun b!7142408 () Bool)

(declare-fun tp!1969930 () Bool)

(declare-fun tp!1969933 () Bool)

(assert (=> b!7142408 (= e!4292342 (and tp!1969930 tp!1969933))))

(declare-fun b!7142409 () Bool)

(declare-fun res!2914205 () Bool)

(assert (=> b!7142409 (=> res!2914205 e!4292345)))

(assert (=> b!7142409 (= res!2914205 (exists!3974 lt!2567736 lambda!434991))))

(declare-fun res!2914206 () Bool)

(declare-fun e!4292344 () Bool)

(assert (=> start!696294 (=> (not res!2914206) (not e!4292344))))

(declare-fun r!11483 () Regex!18174)

(declare-fun validRegex!9341 (Regex!18174) Bool)

(assert (=> start!696294 (= res!2914206 (validRegex!9341 r!11483))))

(assert (=> start!696294 e!4292344))

(assert (=> start!696294 e!4292342))

(declare-fun condSetEmpty!52594 () Bool)

(assert (=> start!696294 (= condSetEmpty!52594 (= z!3189 (as set.empty (Set Context!14336))))))

(declare-fun setRes!52594 () Bool)

(assert (=> start!696294 setRes!52594))

(declare-fun b!7142410 () Bool)

(declare-fun res!2914207 () Bool)

(assert (=> b!7142410 (=> res!2914207 e!4292345)))

(assert (=> b!7142410 (= res!2914207 lt!2567737)))

(declare-fun b!7142411 () Bool)

(declare-fun e!4292339 () Bool)

(assert (=> b!7142411 (= e!4292339 e!4292341)))

(declare-fun res!2914208 () Bool)

(assert (=> b!7142411 (=> (not res!2914208) (not e!4292341))))

(assert (=> b!7142411 (= res!2914208 (= r!11483 lt!2567739))))

(declare-fun generalisedUnion!2679 (List!69426) Regex!18174)

(assert (=> b!7142411 (= lt!2567739 (generalisedUnion!2679 lt!2567736))))

(declare-datatypes ((List!69427 0))(
  ( (Nil!69303) (Cons!69303 (h!75751 Context!14336) (t!383444 List!69427)) )
))
(declare-fun lt!2567740 () List!69427)

(declare-fun unfocusZipperList!2215 (List!69427) List!69426)

(assert (=> b!7142411 (= lt!2567736 (unfocusZipperList!2215 lt!2567740))))

(declare-fun b!7142412 () Bool)

(assert (=> b!7142412 (= e!4292345 e!4292340)))

(declare-fun res!2914209 () Bool)

(assert (=> b!7142412 (=> res!2914209 e!4292340)))

(assert (=> b!7142412 (= res!2914209 (not (set.member lt!2567738 z!3189)))))

(declare-fun getWitness!1951 ((Set Context!14336) Int) Context!14336)

(assert (=> b!7142412 (= lt!2567738 (getWitness!1951 z!3189 lambda!434992))))

(declare-fun setIsEmpty!52594 () Bool)

(assert (=> setIsEmpty!52594 setRes!52594))

(declare-fun b!7142413 () Bool)

(declare-fun tp!1969928 () Bool)

(declare-fun tp!1969931 () Bool)

(assert (=> b!7142413 (= e!4292342 (and tp!1969928 tp!1969931))))

(declare-fun b!7142414 () Bool)

(assert (=> b!7142414 (= e!4292344 e!4292339)))

(declare-fun res!2914204 () Bool)

(assert (=> b!7142414 (=> (not res!2914204) (not e!4292339))))

(declare-fun unfocusZipper!2522 (List!69427) Regex!18174)

(assert (=> b!7142414 (= res!2914204 (= r!11483 (unfocusZipper!2522 lt!2567740)))))

(declare-fun toList!11205 ((Set Context!14336)) List!69427)

(assert (=> b!7142414 (= lt!2567740 (toList!11205 z!3189))))

(declare-fun setNonEmpty!52594 () Bool)

(declare-fun setElem!52594 () Context!14336)

(declare-fun tp!1969929 () Bool)

(declare-fun inv!88500 (Context!14336) Bool)

(assert (=> setNonEmpty!52594 (= setRes!52594 (and tp!1969929 (inv!88500 setElem!52594) e!4292343))))

(declare-fun setRest!52594 () (Set Context!14336))

(assert (=> setNonEmpty!52594 (= z!3189 (set.union (set.insert setElem!52594 (as set.empty (Set Context!14336))) setRest!52594))))

(assert (= (and start!696294 res!2914206) b!7142414))

(assert (= (and b!7142414 res!2914204) b!7142411))

(assert (= (and b!7142411 res!2914208) b!7142406))

(assert (= (and b!7142406 (not res!2914202)) b!7142410))

(assert (= (and b!7142410 (not res!2914207)) b!7142409))

(assert (= (and b!7142409 (not res!2914205)) b!7142405))

(assert (= (and b!7142405 (not res!2914203)) b!7142412))

(assert (= (and b!7142412 (not res!2914209)) b!7142403))

(assert (= (and start!696294 (is-ElementMatch!18174 r!11483)) b!7142404))

(assert (= (and start!696294 (is-Concat!27019 r!11483)) b!7142413))

(assert (= (and start!696294 (is-Star!18174 r!11483)) b!7142407))

(assert (= (and start!696294 (is-Union!18174 r!11483)) b!7142408))

(assert (= (and start!696294 condSetEmpty!52594) setIsEmpty!52594))

(assert (= (and start!696294 (not condSetEmpty!52594)) setNonEmpty!52594))

(assert (= setNonEmpty!52594 b!7142402))

(declare-fun m!7856758 () Bool)

(assert (=> setNonEmpty!52594 m!7856758))

(declare-fun m!7856760 () Bool)

(assert (=> b!7142406 m!7856760))

(assert (=> b!7142406 m!7856760))

(declare-fun m!7856762 () Bool)

(assert (=> b!7142406 m!7856762))

(declare-fun m!7856764 () Bool)

(assert (=> b!7142406 m!7856764))

(declare-fun m!7856766 () Bool)

(assert (=> b!7142414 m!7856766))

(declare-fun m!7856768 () Bool)

(assert (=> b!7142414 m!7856768))

(declare-fun m!7856770 () Bool)

(assert (=> b!7142412 m!7856770))

(declare-fun m!7856772 () Bool)

(assert (=> b!7142412 m!7856772))

(declare-fun m!7856774 () Bool)

(assert (=> start!696294 m!7856774))

(assert (=> b!7142409 m!7856760))

(declare-fun m!7856776 () Bool)

(assert (=> b!7142405 m!7856776))

(declare-fun m!7856778 () Bool)

(assert (=> b!7142411 m!7856778))

(declare-fun m!7856780 () Bool)

(assert (=> b!7142411 m!7856780))

(declare-fun m!7856782 () Bool)

(assert (=> b!7142403 m!7856782))

(push 1)

(assert (not b!7142413))

(assert (not b!7142412))

(assert (not setNonEmpty!52594))

(assert (not start!696294))

(assert (not b!7142403))

(assert (not b!7142408))

(assert tp_is_empty!45985)

(assert (not b!7142407))

(assert (not b!7142402))

(assert (not b!7142411))

(assert (not b!7142409))

(assert (not b!7142406))

(assert (not b!7142414))

(assert (not b!7142405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1888637 () Bool)

(declare-fun d!2227606 () Bool)

(assert (= bs!1888637 (and d!2227606 b!7142406)))

(declare-fun lambda!435007 () Int)

(assert (=> bs!1888637 (= lambda!435007 lambda!434991)))

(declare-fun forall!17014 (List!69426 Int) Bool)

(assert (=> d!2227606 (= (nullableContext!152 lt!2567738) (forall!17014 (exprs!7668 lt!2567738) lambda!435007))))

(declare-fun bs!1888638 () Bool)

(assert (= bs!1888638 d!2227606))

(declare-fun m!7856810 () Bool)

(assert (=> bs!1888638 m!7856810))

(assert (=> b!7142403 d!2227606))

(declare-fun d!2227608 () Bool)

(declare-fun e!4292369 () Bool)

(assert (=> d!2227608 e!4292369))

(declare-fun res!2914236 () Bool)

(assert (=> d!2227608 (=> (not res!2914236) (not e!4292369))))

(declare-fun lt!2567761 () Context!14336)

(declare-fun dynLambda!28222 (Int Context!14336) Bool)

(assert (=> d!2227608 (= res!2914236 (dynLambda!28222 lambda!434992 lt!2567761))))

(declare-fun getWitness!1953 (List!69427 Int) Context!14336)

(assert (=> d!2227608 (= lt!2567761 (getWitness!1953 (toList!11205 z!3189) lambda!434992))))

(assert (=> d!2227608 (exists!3973 z!3189 lambda!434992)))

(assert (=> d!2227608 (= (getWitness!1951 z!3189 lambda!434992) lt!2567761)))

(declare-fun b!7142456 () Bool)

(assert (=> b!7142456 (= e!4292369 (set.member lt!2567761 z!3189))))

(assert (= (and d!2227608 res!2914236) b!7142456))

(declare-fun b_lambda!272645 () Bool)

(assert (=> (not b_lambda!272645) (not d!2227608)))

(declare-fun m!7856812 () Bool)

(assert (=> d!2227608 m!7856812))

(assert (=> d!2227608 m!7856768))

(assert (=> d!2227608 m!7856768))

(declare-fun m!7856814 () Bool)

(assert (=> d!2227608 m!7856814))

(assert (=> d!2227608 m!7856776))

(declare-fun m!7856816 () Bool)

(assert (=> b!7142456 m!7856816))

(assert (=> b!7142412 d!2227608))

(declare-fun bs!1888639 () Bool)

(declare-fun d!2227610 () Bool)

(assert (= bs!1888639 (and d!2227610 b!7142406)))

(declare-fun lambda!435010 () Int)

(assert (=> bs!1888639 (not (= lambda!435010 lambda!434991))))

(declare-fun bs!1888640 () Bool)

(assert (= bs!1888640 (and d!2227610 d!2227606)))

(assert (=> bs!1888640 (not (= lambda!435010 lambda!435007))))

(assert (=> d!2227610 true))

(declare-fun order!28583 () Int)

(declare-fun dynLambda!28223 (Int Int) Int)

(assert (=> d!2227610 (< (dynLambda!28223 order!28583 lambda!434991) (dynLambda!28223 order!28583 lambda!435010))))

(assert (=> d!2227610 (= (exists!3974 lt!2567736 lambda!434991) (not (forall!17014 lt!2567736 lambda!435010)))))

(declare-fun bs!1888641 () Bool)

(assert (= bs!1888641 d!2227610))

(declare-fun m!7856818 () Bool)

(assert (=> bs!1888641 m!7856818))

(assert (=> b!7142406 d!2227610))

(declare-fun d!2227612 () Bool)

(declare-fun nullableFct!2995 (Regex!18174) Bool)

(assert (=> d!2227612 (= (nullable!7693 lt!2567739) (nullableFct!2995 lt!2567739))))

(declare-fun bs!1888642 () Bool)

(assert (= bs!1888642 d!2227612))

(declare-fun m!7856820 () Bool)

(assert (=> bs!1888642 m!7856820))

(assert (=> b!7142406 d!2227612))

(declare-fun bs!1888643 () Bool)

(declare-fun d!2227614 () Bool)

(assert (= bs!1888643 (and d!2227614 b!7142406)))

(declare-fun lambda!435015 () Int)

(assert (=> bs!1888643 (not (= lambda!435015 lambda!434991))))

(declare-fun bs!1888644 () Bool)

(assert (= bs!1888644 (and d!2227614 d!2227606)))

(assert (=> bs!1888644 (not (= lambda!435015 lambda!435007))))

(declare-fun bs!1888645 () Bool)

(assert (= bs!1888645 (and d!2227614 d!2227610)))

(assert (=> bs!1888645 (not (= lambda!435015 lambda!435010))))

(declare-fun lambda!435016 () Int)

(assert (=> bs!1888643 (= lambda!435016 lambda!434991)))

(assert (=> bs!1888644 (= lambda!435016 lambda!435007)))

(assert (=> bs!1888645 (not (= lambda!435016 lambda!435010))))

(declare-fun bs!1888646 () Bool)

(assert (= bs!1888646 d!2227614))

(assert (=> bs!1888646 (not (= lambda!435016 lambda!435015))))

(assert (=> d!2227614 (= (nullable!7693 lt!2567739) (exists!3974 lt!2567736 lambda!435016))))

(declare-fun lt!2567764 () Unit!163217)

(declare-fun choose!55255 (Regex!18174 List!69426) Unit!163217)

(assert (=> d!2227614 (= lt!2567764 (choose!55255 lt!2567739 lt!2567736))))

(assert (=> d!2227614 (forall!17014 lt!2567736 lambda!435015)))

(assert (=> d!2227614 (= (nullableGenUnionSpec!61 lt!2567739 lt!2567736) lt!2567764)))

(assert (=> bs!1888646 m!7856762))

(declare-fun m!7856822 () Bool)

(assert (=> bs!1888646 m!7856822))

(declare-fun m!7856824 () Bool)

(assert (=> bs!1888646 m!7856824))

(declare-fun m!7856826 () Bool)

(assert (=> bs!1888646 m!7856826))

(assert (=> b!7142406 d!2227614))

(declare-fun bs!1888648 () Bool)

(declare-fun d!2227616 () Bool)

(assert (= bs!1888648 (and d!2227616 d!2227610)))

(declare-fun lambda!435019 () Int)

(assert (=> bs!1888648 (not (= lambda!435019 lambda!435010))))

(declare-fun bs!1888649 () Bool)

(assert (= bs!1888649 (and d!2227616 d!2227606)))

(assert (=> bs!1888649 (not (= lambda!435019 lambda!435007))))

(declare-fun bs!1888650 () Bool)

(assert (= bs!1888650 (and d!2227616 b!7142406)))

(assert (=> bs!1888650 (not (= lambda!435019 lambda!434991))))

(declare-fun bs!1888651 () Bool)

(assert (= bs!1888651 (and d!2227616 d!2227614)))

(assert (=> bs!1888651 (not (= lambda!435019 lambda!435016))))

(assert (=> bs!1888651 (= lambda!435019 lambda!435015)))

(declare-fun b!7142479 () Bool)

(declare-fun e!4292382 () Bool)

(declare-fun isEmpty!40073 (List!69426) Bool)

(assert (=> b!7142479 (= e!4292382 (isEmpty!40073 (t!383443 lt!2567736)))))

(declare-fun b!7142480 () Bool)

(declare-fun e!4292385 () Bool)

(declare-fun lt!2567770 () Regex!18174)

(declare-fun isUnion!1532 (Regex!18174) Bool)

(assert (=> b!7142480 (= e!4292385 (isUnion!1532 lt!2567770))))

(declare-fun b!7142481 () Bool)

(declare-fun e!4292386 () Regex!18174)

(assert (=> b!7142481 (= e!4292386 (Union!18174 (h!75750 lt!2567736) (generalisedUnion!2679 (t!383443 lt!2567736))))))

(declare-fun b!7142482 () Bool)

(declare-fun e!4292383 () Regex!18174)

(assert (=> b!7142482 (= e!4292383 (h!75750 lt!2567736))))

(declare-fun b!7142483 () Bool)

(assert (=> b!7142483 (= e!4292386 EmptyLang!18174)))

(declare-fun b!7142484 () Bool)

(declare-fun head!14514 (List!69426) Regex!18174)

(assert (=> b!7142484 (= e!4292385 (= lt!2567770 (head!14514 lt!2567736)))))

(declare-fun b!7142485 () Bool)

(declare-fun e!4292387 () Bool)

(assert (=> b!7142485 (= e!4292387 e!4292385)))

(declare-fun c!1331979 () Bool)

(declare-fun tail!13984 (List!69426) List!69426)

(assert (=> b!7142485 (= c!1331979 (isEmpty!40073 (tail!13984 lt!2567736)))))

(declare-fun b!7142486 () Bool)

(declare-fun e!4292384 () Bool)

(assert (=> b!7142486 (= e!4292384 e!4292387)))

(declare-fun c!1331980 () Bool)

(assert (=> b!7142486 (= c!1331980 (isEmpty!40073 lt!2567736))))

(assert (=> d!2227616 e!4292384))

(declare-fun res!2914242 () Bool)

(assert (=> d!2227616 (=> (not res!2914242) (not e!4292384))))

(assert (=> d!2227616 (= res!2914242 (validRegex!9341 lt!2567770))))

(assert (=> d!2227616 (= lt!2567770 e!4292383)))

(declare-fun c!1331981 () Bool)

(assert (=> d!2227616 (= c!1331981 e!4292382)))

(declare-fun res!2914241 () Bool)

(assert (=> d!2227616 (=> (not res!2914241) (not e!4292382))))

(assert (=> d!2227616 (= res!2914241 (is-Cons!69302 lt!2567736))))

(assert (=> d!2227616 (forall!17014 lt!2567736 lambda!435019)))

(assert (=> d!2227616 (= (generalisedUnion!2679 lt!2567736) lt!2567770)))

(declare-fun b!7142487 () Bool)

(declare-fun isEmptyLang!2105 (Regex!18174) Bool)

(assert (=> b!7142487 (= e!4292387 (isEmptyLang!2105 lt!2567770))))

(declare-fun b!7142488 () Bool)

(assert (=> b!7142488 (= e!4292383 e!4292386)))

(declare-fun c!1331978 () Bool)

(assert (=> b!7142488 (= c!1331978 (is-Cons!69302 lt!2567736))))

(assert (= (and d!2227616 res!2914241) b!7142479))

(assert (= (and d!2227616 c!1331981) b!7142482))

(assert (= (and d!2227616 (not c!1331981)) b!7142488))

(assert (= (and b!7142488 c!1331978) b!7142481))

(assert (= (and b!7142488 (not c!1331978)) b!7142483))

(assert (= (and d!2227616 res!2914242) b!7142486))

(assert (= (and b!7142486 c!1331980) b!7142487))

(assert (= (and b!7142486 (not c!1331980)) b!7142485))

(assert (= (and b!7142485 c!1331979) b!7142484))

(assert (= (and b!7142485 (not c!1331979)) b!7142480))

(declare-fun m!7856832 () Bool)

(assert (=> d!2227616 m!7856832))

(declare-fun m!7856834 () Bool)

(assert (=> d!2227616 m!7856834))

(declare-fun m!7856836 () Bool)

(assert (=> b!7142484 m!7856836))

(declare-fun m!7856838 () Bool)

(assert (=> b!7142487 m!7856838))

(declare-fun m!7856840 () Bool)

(assert (=> b!7142486 m!7856840))

(declare-fun m!7856842 () Bool)

(assert (=> b!7142485 m!7856842))

(assert (=> b!7142485 m!7856842))

(declare-fun m!7856844 () Bool)

(assert (=> b!7142485 m!7856844))

(declare-fun m!7856846 () Bool)

(assert (=> b!7142481 m!7856846))

(declare-fun m!7856848 () Bool)

(assert (=> b!7142479 m!7856848))

(declare-fun m!7856850 () Bool)

(assert (=> b!7142480 m!7856850))

(assert (=> b!7142411 d!2227616))

(declare-fun bs!1888652 () Bool)

(declare-fun d!2227622 () Bool)

(assert (= bs!1888652 (and d!2227622 d!2227610)))

(declare-fun lambda!435022 () Int)

(assert (=> bs!1888652 (not (= lambda!435022 lambda!435010))))

(declare-fun bs!1888653 () Bool)

(assert (= bs!1888653 (and d!2227622 d!2227616)))

(assert (=> bs!1888653 (= lambda!435022 lambda!435019)))

(declare-fun bs!1888654 () Bool)

(assert (= bs!1888654 (and d!2227622 d!2227606)))

(assert (=> bs!1888654 (not (= lambda!435022 lambda!435007))))

(declare-fun bs!1888655 () Bool)

(assert (= bs!1888655 (and d!2227622 b!7142406)))

(assert (=> bs!1888655 (not (= lambda!435022 lambda!434991))))

(declare-fun bs!1888656 () Bool)

(assert (= bs!1888656 (and d!2227622 d!2227614)))

(assert (=> bs!1888656 (not (= lambda!435022 lambda!435016))))

(assert (=> bs!1888656 (= lambda!435022 lambda!435015)))

(declare-fun lt!2567776 () List!69426)

(assert (=> d!2227622 (forall!17014 lt!2567776 lambda!435022)))

(declare-fun e!4292393 () List!69426)

(assert (=> d!2227622 (= lt!2567776 e!4292393)))

(declare-fun c!1331984 () Bool)

(assert (=> d!2227622 (= c!1331984 (is-Cons!69303 lt!2567740))))

(assert (=> d!2227622 (= (unfocusZipperList!2215 lt!2567740) lt!2567776)))

(declare-fun b!7142496 () Bool)

(declare-fun generalisedConcat!2356 (List!69426) Regex!18174)

(assert (=> b!7142496 (= e!4292393 (Cons!69302 (generalisedConcat!2356 (exprs!7668 (h!75751 lt!2567740))) (unfocusZipperList!2215 (t!383444 lt!2567740))))))

(declare-fun b!7142497 () Bool)

(assert (=> b!7142497 (= e!4292393 Nil!69302)))

(assert (= (and d!2227622 c!1331984) b!7142496))

(assert (= (and d!2227622 (not c!1331984)) b!7142497))

(declare-fun m!7856858 () Bool)

(assert (=> d!2227622 m!7856858))

(declare-fun m!7856860 () Bool)

(assert (=> b!7142496 m!7856860))

(declare-fun m!7856862 () Bool)

(assert (=> b!7142496 m!7856862))

(assert (=> b!7142411 d!2227622))

(declare-fun bs!1888657 () Bool)

(declare-fun d!2227626 () Bool)

(assert (= bs!1888657 (and d!2227626 d!2227610)))

(declare-fun lambda!435025 () Int)

(assert (=> bs!1888657 (not (= lambda!435025 lambda!435010))))

(declare-fun bs!1888658 () Bool)

(assert (= bs!1888658 (and d!2227626 d!2227616)))

(assert (=> bs!1888658 (= lambda!435025 lambda!435019)))

(declare-fun bs!1888659 () Bool)

(assert (= bs!1888659 (and d!2227626 d!2227606)))

(assert (=> bs!1888659 (not (= lambda!435025 lambda!435007))))

(declare-fun bs!1888660 () Bool)

(assert (= bs!1888660 (and d!2227626 b!7142406)))

(assert (=> bs!1888660 (not (= lambda!435025 lambda!434991))))

(declare-fun bs!1888661 () Bool)

(assert (= bs!1888661 (and d!2227626 d!2227614)))

(assert (=> bs!1888661 (= lambda!435025 lambda!435015)))

(declare-fun bs!1888662 () Bool)

(assert (= bs!1888662 (and d!2227626 d!2227622)))

(assert (=> bs!1888662 (= lambda!435025 lambda!435022)))

(assert (=> bs!1888661 (not (= lambda!435025 lambda!435016))))

(assert (=> d!2227626 (= (inv!88500 setElem!52594) (forall!17014 (exprs!7668 setElem!52594) lambda!435025))))

(declare-fun bs!1888663 () Bool)

(assert (= bs!1888663 d!2227626))

(declare-fun m!7856864 () Bool)

(assert (=> bs!1888663 m!7856864))

(assert (=> setNonEmpty!52594 d!2227626))

(declare-fun b!7142516 () Bool)

(declare-fun e!4292411 () Bool)

(declare-fun e!4292414 () Bool)

(assert (=> b!7142516 (= e!4292411 e!4292414)))

(declare-fun res!2914260 () Bool)

(assert (=> b!7142516 (=> (not res!2914260) (not e!4292414))))

(declare-fun call!651251 () Bool)

(assert (=> b!7142516 (= res!2914260 call!651251)))

(declare-fun b!7142517 () Bool)

(declare-fun e!4292410 () Bool)

(declare-fun call!651252 () Bool)

(assert (=> b!7142517 (= e!4292410 call!651252)))

(declare-fun b!7142518 () Bool)

(declare-fun res!2914258 () Bool)

(assert (=> b!7142518 (=> res!2914258 e!4292411)))

(assert (=> b!7142518 (= res!2914258 (not (is-Concat!27019 r!11483)))))

(declare-fun e!4292408 () Bool)

(assert (=> b!7142518 (= e!4292408 e!4292411)))

(declare-fun b!7142519 () Bool)

(assert (=> b!7142519 (= e!4292414 call!651252)))

(declare-fun bm!651246 () Bool)

(declare-fun call!651253 () Bool)

(assert (=> bm!651246 (= call!651251 call!651253)))

(declare-fun c!1331989 () Bool)

(declare-fun bm!651247 () Bool)

(declare-fun c!1331990 () Bool)

(assert (=> bm!651247 (= call!651253 (validRegex!9341 (ite c!1331989 (reg!18503 r!11483) (ite c!1331990 (regOne!36861 r!11483) (regOne!36860 r!11483)))))))

(declare-fun b!7142520 () Bool)

(declare-fun res!2914259 () Bool)

(assert (=> b!7142520 (=> (not res!2914259) (not e!4292410))))

(assert (=> b!7142520 (= res!2914259 call!651251)))

(assert (=> b!7142520 (= e!4292408 e!4292410)))

(declare-fun b!7142521 () Bool)

(declare-fun e!4292413 () Bool)

(assert (=> b!7142521 (= e!4292413 call!651253)))

(declare-fun b!7142522 () Bool)

(declare-fun e!4292409 () Bool)

(assert (=> b!7142522 (= e!4292409 e!4292408)))

(assert (=> b!7142522 (= c!1331990 (is-Union!18174 r!11483))))

(declare-fun d!2227628 () Bool)

(declare-fun res!2914256 () Bool)

(declare-fun e!4292412 () Bool)

(assert (=> d!2227628 (=> res!2914256 e!4292412)))

(assert (=> d!2227628 (= res!2914256 (is-ElementMatch!18174 r!11483))))

(assert (=> d!2227628 (= (validRegex!9341 r!11483) e!4292412)))

(declare-fun b!7142523 () Bool)

(assert (=> b!7142523 (= e!4292409 e!4292413)))

(declare-fun res!2914257 () Bool)

(assert (=> b!7142523 (= res!2914257 (not (nullable!7693 (reg!18503 r!11483))))))

(assert (=> b!7142523 (=> (not res!2914257) (not e!4292413))))

(declare-fun b!7142524 () Bool)

(assert (=> b!7142524 (= e!4292412 e!4292409)))

(assert (=> b!7142524 (= c!1331989 (is-Star!18174 r!11483))))

(declare-fun bm!651248 () Bool)

(assert (=> bm!651248 (= call!651252 (validRegex!9341 (ite c!1331990 (regTwo!36861 r!11483) (regTwo!36860 r!11483))))))

(assert (= (and d!2227628 (not res!2914256)) b!7142524))

(assert (= (and b!7142524 c!1331989) b!7142523))

(assert (= (and b!7142524 (not c!1331989)) b!7142522))

(assert (= (and b!7142523 res!2914257) b!7142521))

(assert (= (and b!7142522 c!1331990) b!7142520))

(assert (= (and b!7142522 (not c!1331990)) b!7142518))

(assert (= (and b!7142520 res!2914259) b!7142517))

(assert (= (and b!7142518 (not res!2914258)) b!7142516))

(assert (= (and b!7142516 res!2914260) b!7142519))

(assert (= (or b!7142517 b!7142519) bm!651248))

(assert (= (or b!7142520 b!7142516) bm!651246))

(assert (= (or b!7142521 bm!651246) bm!651247))

(declare-fun m!7856872 () Bool)

(assert (=> bm!651247 m!7856872))

(declare-fun m!7856874 () Bool)

(assert (=> b!7142523 m!7856874))

(declare-fun m!7856876 () Bool)

(assert (=> bm!651248 m!7856876))

(assert (=> start!696294 d!2227628))

(declare-fun d!2227634 () Bool)

(declare-fun lt!2567782 () Bool)

(declare-fun exists!3977 (List!69427 Int) Bool)

(assert (=> d!2227634 (= lt!2567782 (exists!3977 (toList!11205 z!3189) lambda!434992))))

(declare-fun choose!55256 ((Set Context!14336) Int) Bool)

(assert (=> d!2227634 (= lt!2567782 (choose!55256 z!3189 lambda!434992))))

(assert (=> d!2227634 (= (exists!3973 z!3189 lambda!434992) lt!2567782)))

(declare-fun bs!1888667 () Bool)

(assert (= bs!1888667 d!2227634))

(assert (=> bs!1888667 m!7856768))

(assert (=> bs!1888667 m!7856768))

(declare-fun m!7856878 () Bool)

(assert (=> bs!1888667 m!7856878))

(declare-fun m!7856880 () Bool)

(assert (=> bs!1888667 m!7856880))

(assert (=> b!7142405 d!2227634))

(declare-fun d!2227636 () Bool)

(declare-fun lt!2567785 () Regex!18174)

(assert (=> d!2227636 (validRegex!9341 lt!2567785)))

(assert (=> d!2227636 (= lt!2567785 (generalisedUnion!2679 (unfocusZipperList!2215 lt!2567740)))))

(assert (=> d!2227636 (= (unfocusZipper!2522 lt!2567740) lt!2567785)))

(declare-fun bs!1888671 () Bool)

(assert (= bs!1888671 d!2227636))

(declare-fun m!7856884 () Bool)

(assert (=> bs!1888671 m!7856884))

(assert (=> bs!1888671 m!7856780))

(assert (=> bs!1888671 m!7856780))

(declare-fun m!7856886 () Bool)

(assert (=> bs!1888671 m!7856886))

(assert (=> b!7142414 d!2227636))

(declare-fun d!2227640 () Bool)

(declare-fun e!4292417 () Bool)

(assert (=> d!2227640 e!4292417))

(declare-fun res!2914263 () Bool)

(assert (=> d!2227640 (=> (not res!2914263) (not e!4292417))))

(declare-fun lt!2567788 () List!69427)

(declare-fun noDuplicate!2835 (List!69427) Bool)

(assert (=> d!2227640 (= res!2914263 (noDuplicate!2835 lt!2567788))))

(declare-fun choose!55257 ((Set Context!14336)) List!69427)

(assert (=> d!2227640 (= lt!2567788 (choose!55257 z!3189))))

(assert (=> d!2227640 (= (toList!11205 z!3189) lt!2567788)))

(declare-fun b!7142529 () Bool)

(declare-fun content!14211 (List!69427) (Set Context!14336))

(assert (=> b!7142529 (= e!4292417 (= (content!14211 lt!2567788) z!3189))))

(assert (= (and d!2227640 res!2914263) b!7142529))

(declare-fun m!7856890 () Bool)

(assert (=> d!2227640 m!7856890))

(declare-fun m!7856892 () Bool)

(assert (=> d!2227640 m!7856892))

(declare-fun m!7856894 () Bool)

(assert (=> b!7142529 m!7856894))

(assert (=> b!7142414 d!2227640))

(assert (=> b!7142409 d!2227610))

(declare-fun e!4292420 () Bool)

(assert (=> b!7142413 (= tp!1969928 e!4292420)))

(declare-fun b!7142540 () Bool)

(assert (=> b!7142540 (= e!4292420 tp_is_empty!45985)))

(declare-fun b!7142542 () Bool)

(declare-fun tp!1969968 () Bool)

(assert (=> b!7142542 (= e!4292420 tp!1969968)))

(declare-fun b!7142541 () Bool)

(declare-fun tp!1969970 () Bool)

(declare-fun tp!1969969 () Bool)

(assert (=> b!7142541 (= e!4292420 (and tp!1969970 tp!1969969))))

(declare-fun b!7142543 () Bool)

(declare-fun tp!1969967 () Bool)

(declare-fun tp!1969966 () Bool)

(assert (=> b!7142543 (= e!4292420 (and tp!1969967 tp!1969966))))

(assert (= (and b!7142413 (is-ElementMatch!18174 (regOne!36860 r!11483))) b!7142540))

(assert (= (and b!7142413 (is-Concat!27019 (regOne!36860 r!11483))) b!7142541))

(assert (= (and b!7142413 (is-Star!18174 (regOne!36860 r!11483))) b!7142542))

(assert (= (and b!7142413 (is-Union!18174 (regOne!36860 r!11483))) b!7142543))

(declare-fun e!4292421 () Bool)

(assert (=> b!7142413 (= tp!1969931 e!4292421)))

(declare-fun b!7142544 () Bool)

(assert (=> b!7142544 (= e!4292421 tp_is_empty!45985)))

(declare-fun b!7142546 () Bool)

(declare-fun tp!1969973 () Bool)

(assert (=> b!7142546 (= e!4292421 tp!1969973)))

(declare-fun b!7142545 () Bool)

(declare-fun tp!1969975 () Bool)

(declare-fun tp!1969974 () Bool)

(assert (=> b!7142545 (= e!4292421 (and tp!1969975 tp!1969974))))

(declare-fun b!7142547 () Bool)

(declare-fun tp!1969972 () Bool)

(declare-fun tp!1969971 () Bool)

(assert (=> b!7142547 (= e!4292421 (and tp!1969972 tp!1969971))))

(assert (= (and b!7142413 (is-ElementMatch!18174 (regTwo!36860 r!11483))) b!7142544))

(assert (= (and b!7142413 (is-Concat!27019 (regTwo!36860 r!11483))) b!7142545))

(assert (= (and b!7142413 (is-Star!18174 (regTwo!36860 r!11483))) b!7142546))

(assert (= (and b!7142413 (is-Union!18174 (regTwo!36860 r!11483))) b!7142547))

(declare-fun e!4292422 () Bool)

(assert (=> b!7142408 (= tp!1969930 e!4292422)))

(declare-fun b!7142548 () Bool)

(assert (=> b!7142548 (= e!4292422 tp_is_empty!45985)))

(declare-fun b!7142550 () Bool)

(declare-fun tp!1969978 () Bool)

(assert (=> b!7142550 (= e!4292422 tp!1969978)))

(declare-fun b!7142549 () Bool)

(declare-fun tp!1969980 () Bool)

(declare-fun tp!1969979 () Bool)

(assert (=> b!7142549 (= e!4292422 (and tp!1969980 tp!1969979))))

(declare-fun b!7142551 () Bool)

(declare-fun tp!1969977 () Bool)

(declare-fun tp!1969976 () Bool)

(assert (=> b!7142551 (= e!4292422 (and tp!1969977 tp!1969976))))

(assert (= (and b!7142408 (is-ElementMatch!18174 (regOne!36861 r!11483))) b!7142548))

(assert (= (and b!7142408 (is-Concat!27019 (regOne!36861 r!11483))) b!7142549))

(assert (= (and b!7142408 (is-Star!18174 (regOne!36861 r!11483))) b!7142550))

(assert (= (and b!7142408 (is-Union!18174 (regOne!36861 r!11483))) b!7142551))

(declare-fun e!4292423 () Bool)

(assert (=> b!7142408 (= tp!1969933 e!4292423)))

(declare-fun b!7142552 () Bool)

(assert (=> b!7142552 (= e!4292423 tp_is_empty!45985)))

(declare-fun b!7142554 () Bool)

(declare-fun tp!1969983 () Bool)

(assert (=> b!7142554 (= e!4292423 tp!1969983)))

(declare-fun b!7142553 () Bool)

(declare-fun tp!1969985 () Bool)

(declare-fun tp!1969984 () Bool)

(assert (=> b!7142553 (= e!4292423 (and tp!1969985 tp!1969984))))

(declare-fun b!7142555 () Bool)

(declare-fun tp!1969982 () Bool)

(declare-fun tp!1969981 () Bool)

(assert (=> b!7142555 (= e!4292423 (and tp!1969982 tp!1969981))))

(assert (= (and b!7142408 (is-ElementMatch!18174 (regTwo!36861 r!11483))) b!7142552))

(assert (= (and b!7142408 (is-Concat!27019 (regTwo!36861 r!11483))) b!7142553))

(assert (= (and b!7142408 (is-Star!18174 (regTwo!36861 r!11483))) b!7142554))

(assert (= (and b!7142408 (is-Union!18174 (regTwo!36861 r!11483))) b!7142555))

(declare-fun b!7142560 () Bool)

(declare-fun e!4292426 () Bool)

(declare-fun tp!1969990 () Bool)

(declare-fun tp!1969991 () Bool)

(assert (=> b!7142560 (= e!4292426 (and tp!1969990 tp!1969991))))

(assert (=> b!7142402 (= tp!1969932 e!4292426)))

(assert (= (and b!7142402 (is-Cons!69302 (exprs!7668 setElem!52594))) b!7142560))

(declare-fun e!4292427 () Bool)

(assert (=> b!7142407 (= tp!1969934 e!4292427)))

(declare-fun b!7142561 () Bool)

(assert (=> b!7142561 (= e!4292427 tp_is_empty!45985)))

(declare-fun b!7142563 () Bool)

(declare-fun tp!1969994 () Bool)

(assert (=> b!7142563 (= e!4292427 tp!1969994)))

(declare-fun b!7142562 () Bool)

(declare-fun tp!1969996 () Bool)

(declare-fun tp!1969995 () Bool)

(assert (=> b!7142562 (= e!4292427 (and tp!1969996 tp!1969995))))

(declare-fun b!7142564 () Bool)

(declare-fun tp!1969993 () Bool)

(declare-fun tp!1969992 () Bool)

(assert (=> b!7142564 (= e!4292427 (and tp!1969993 tp!1969992))))

(assert (= (and b!7142407 (is-ElementMatch!18174 (reg!18503 r!11483))) b!7142561))

(assert (= (and b!7142407 (is-Concat!27019 (reg!18503 r!11483))) b!7142562))

(assert (= (and b!7142407 (is-Star!18174 (reg!18503 r!11483))) b!7142563))

(assert (= (and b!7142407 (is-Union!18174 (reg!18503 r!11483))) b!7142564))

(declare-fun condSetEmpty!52600 () Bool)

(assert (=> setNonEmpty!52594 (= condSetEmpty!52600 (= setRest!52594 (as set.empty (Set Context!14336))))))

(declare-fun setRes!52600 () Bool)

(assert (=> setNonEmpty!52594 (= tp!1969929 setRes!52600)))

(declare-fun setIsEmpty!52600 () Bool)

(assert (=> setIsEmpty!52600 setRes!52600))

(declare-fun tp!1970002 () Bool)

(declare-fun setNonEmpty!52600 () Bool)

(declare-fun setElem!52600 () Context!14336)

(declare-fun e!4292430 () Bool)

(assert (=> setNonEmpty!52600 (= setRes!52600 (and tp!1970002 (inv!88500 setElem!52600) e!4292430))))

(declare-fun setRest!52600 () (Set Context!14336))

(assert (=> setNonEmpty!52600 (= setRest!52594 (set.union (set.insert setElem!52600 (as set.empty (Set Context!14336))) setRest!52600))))

(declare-fun b!7142569 () Bool)

(declare-fun tp!1970001 () Bool)

(assert (=> b!7142569 (= e!4292430 tp!1970001)))

(assert (= (and setNonEmpty!52594 condSetEmpty!52600) setIsEmpty!52600))

(assert (= (and setNonEmpty!52594 (not condSetEmpty!52600)) setNonEmpty!52600))

(assert (= setNonEmpty!52600 b!7142569))

(declare-fun m!7856896 () Bool)

(assert (=> setNonEmpty!52600 m!7856896))

(declare-fun b_lambda!272647 () Bool)

(assert (= b_lambda!272645 (or b!7142405 b_lambda!272647)))

(declare-fun bs!1888673 () Bool)

(declare-fun d!2227644 () Bool)

(assert (= bs!1888673 (and d!2227644 b!7142405)))

(assert (=> bs!1888673 (= (dynLambda!28222 lambda!434992 lt!2567761) (nullableContext!152 lt!2567761))))

(declare-fun m!7856898 () Bool)

(assert (=> bs!1888673 m!7856898))

(assert (=> d!2227608 d!2227644))

(push 1)

(assert (not bs!1888673))

(assert (not b!7142496))

(assert (not b!7142479))

(assert (not bm!651247))

(assert (not b!7142560))

(assert (not b!7142541))

(assert (not b!7142545))

(assert (not d!2227622))

(assert (not b!7142480))

(assert (not b!7142547))

(assert (not b!7142549))

(assert (not b!7142553))

(assert (not b!7142487))

(assert (not b!7142485))

(assert (not b!7142555))

(assert (not d!2227616))

(assert (not b!7142486))

(assert (not b!7142562))

(assert (not b!7142542))

(assert (not b!7142563))

(assert (not d!2227606))

(assert (not b!7142554))

(assert (not d!2227634))

(assert (not d!2227636))

(assert (not bm!651248))

(assert (not b!7142564))

(assert (not b!7142550))

(assert (not b_lambda!272647))

(assert (not d!2227626))

(assert (not b!7142481))

(assert (not b!7142484))

(assert (not b!7142546))

(assert (not d!2227614))

(assert (not setNonEmpty!52600))

(assert (not d!2227612))

(assert (not b!7142569))

(assert (not d!2227640))

(assert tp_is_empty!45985)

(assert (not b!7142551))

(assert (not d!2227608))

(assert (not d!2227610))

(assert (not b!7142529))

(assert (not b!7142543))

(assert (not b!7142523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

