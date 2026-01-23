; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696246 () Bool)

(assert start!696246)

(declare-fun b!7142106 () Bool)

(declare-fun e!4292180 () Bool)

(declare-fun e!4292183 () Bool)

(assert (=> b!7142106 (= e!4292180 e!4292183)))

(declare-fun res!2914108 () Bool)

(assert (=> b!7142106 (=> (not res!2914108) (not e!4292183))))

(declare-datatypes ((C!36618 0))(
  ( (C!36619 (val!28257 Int)) )
))
(declare-datatypes ((Regex!18172 0))(
  ( (ElementMatch!18172 (c!1331911 C!36618)) (Concat!27017 (regOne!36856 Regex!18172) (regTwo!36856 Regex!18172)) (EmptyExpr!18172) (Star!18172 (reg!18501 Regex!18172)) (EmptyLang!18172) (Union!18172 (regOne!36857 Regex!18172) (regTwo!36857 Regex!18172)) )
))
(declare-fun r!11483 () Regex!18172)

(declare-datatypes ((List!69422 0))(
  ( (Nil!69298) (Cons!69298 (h!75746 Regex!18172) (t!383439 List!69422)) )
))
(declare-datatypes ((Context!14332 0))(
  ( (Context!14333 (exprs!7666 List!69422)) )
))
(declare-datatypes ((List!69423 0))(
  ( (Nil!69299) (Cons!69299 (h!75747 Context!14332) (t!383440 List!69423)) )
))
(declare-fun lt!2567661 () List!69423)

(declare-fun unfocusZipper!2520 (List!69423) Regex!18172)

(assert (=> b!7142106 (= res!2914108 (= r!11483 (unfocusZipper!2520 lt!2567661)))))

(declare-fun z!3189 () (Set Context!14332))

(declare-fun toList!11203 ((Set Context!14332)) List!69423)

(assert (=> b!7142106 (= lt!2567661 (toList!11203 z!3189))))

(declare-fun b!7142107 () Bool)

(declare-fun res!2914104 () Bool)

(declare-fun e!4292181 () Bool)

(assert (=> b!7142107 (=> res!2914104 e!4292181)))

(declare-fun lt!2567662 () List!69422)

(declare-fun lambda!434931 () Int)

(declare-fun exists!3968 (List!69422 Int) Bool)

(assert (=> b!7142107 (= res!2914104 (exists!3968 lt!2567662 lambda!434931))))

(declare-fun b!7142108 () Bool)

(declare-fun res!2914105 () Bool)

(assert (=> b!7142108 (=> res!2914105 e!4292181)))

(declare-fun lambda!434932 () Int)

(declare-fun exists!3969 ((Set Context!14332) Int) Bool)

(assert (=> b!7142108 (= res!2914105 (not (exists!3969 z!3189 lambda!434932)))))

(declare-fun b!7142109 () Bool)

(declare-fun getWitness!1947 ((Set Context!14332) Int) Context!14332)

(assert (=> b!7142109 (= e!4292181 (set.member (getWitness!1947 z!3189 lambda!434932) z!3189))))

(declare-fun b!7142110 () Bool)

(declare-fun res!2914106 () Bool)

(assert (=> b!7142110 (=> res!2914106 e!4292181)))

(declare-fun lt!2567665 () Bool)

(assert (=> b!7142110 (= res!2914106 lt!2567665)))

(declare-fun b!7142111 () Bool)

(declare-fun e!4292179 () Bool)

(assert (=> b!7142111 (= e!4292183 e!4292179)))

(declare-fun res!2914110 () Bool)

(assert (=> b!7142111 (=> (not res!2914110) (not e!4292179))))

(declare-fun lt!2567664 () Regex!18172)

(assert (=> b!7142111 (= res!2914110 (= r!11483 lt!2567664))))

(declare-fun generalisedUnion!2677 (List!69422) Regex!18172)

(assert (=> b!7142111 (= lt!2567664 (generalisedUnion!2677 lt!2567662))))

(declare-fun unfocusZipperList!2213 (List!69423) List!69422)

(assert (=> b!7142111 (= lt!2567662 (unfocusZipperList!2213 lt!2567661))))

(declare-fun b!7142112 () Bool)

(declare-fun e!4292184 () Bool)

(declare-fun tp!1969792 () Bool)

(assert (=> b!7142112 (= e!4292184 tp!1969792)))

(declare-fun res!2914109 () Bool)

(assert (=> start!696246 (=> (not res!2914109) (not e!4292180))))

(declare-fun validRegex!9339 (Regex!18172) Bool)

(assert (=> start!696246 (= res!2914109 (validRegex!9339 r!11483))))

(assert (=> start!696246 e!4292180))

(assert (=> start!696246 e!4292184))

(declare-fun condSetEmpty!52582 () Bool)

(assert (=> start!696246 (= condSetEmpty!52582 (= z!3189 (as set.empty (Set Context!14332))))))

(declare-fun setRes!52582 () Bool)

(assert (=> start!696246 setRes!52582))

(declare-fun b!7142113 () Bool)

(assert (=> b!7142113 (= e!4292179 (not e!4292181))))

(declare-fun res!2914107 () Bool)

(assert (=> b!7142113 (=> res!2914107 e!4292181)))

(assert (=> b!7142113 (= res!2914107 (not (= lt!2567665 (exists!3968 lt!2567662 lambda!434931))))))

(assert (=> b!7142113 (= lt!2567665 (exists!3968 lt!2567662 lambda!434931))))

(declare-fun nullable!7691 (Regex!18172) Bool)

(assert (=> b!7142113 (= lt!2567665 (nullable!7691 lt!2567664))))

(declare-datatypes ((Unit!163213 0))(
  ( (Unit!163214) )
))
(declare-fun lt!2567663 () Unit!163213)

(declare-fun nullableGenUnionSpec!59 (Regex!18172 List!69422) Unit!163213)

(assert (=> b!7142113 (= lt!2567663 (nullableGenUnionSpec!59 lt!2567664 lt!2567662))))

(declare-fun setIsEmpty!52582 () Bool)

(assert (=> setIsEmpty!52582 setRes!52582))

(declare-fun b!7142114 () Bool)

(declare-fun tp_is_empty!45981 () Bool)

(assert (=> b!7142114 (= e!4292184 tp_is_empty!45981)))

(declare-fun b!7142115 () Bool)

(declare-fun tp!1969797 () Bool)

(declare-fun tp!1969798 () Bool)

(assert (=> b!7142115 (= e!4292184 (and tp!1969797 tp!1969798))))

(declare-fun b!7142116 () Bool)

(declare-fun tp!1969795 () Bool)

(declare-fun tp!1969796 () Bool)

(assert (=> b!7142116 (= e!4292184 (and tp!1969795 tp!1969796))))

(declare-fun e!4292182 () Bool)

(declare-fun tp!1969793 () Bool)

(declare-fun setElem!52582 () Context!14332)

(declare-fun setNonEmpty!52582 () Bool)

(declare-fun inv!88495 (Context!14332) Bool)

(assert (=> setNonEmpty!52582 (= setRes!52582 (and tp!1969793 (inv!88495 setElem!52582) e!4292182))))

(declare-fun setRest!52582 () (Set Context!14332))

(assert (=> setNonEmpty!52582 (= z!3189 (set.union (set.insert setElem!52582 (as set.empty (Set Context!14332))) setRest!52582))))

(declare-fun b!7142117 () Bool)

(declare-fun tp!1969794 () Bool)

(assert (=> b!7142117 (= e!4292182 tp!1969794)))

(assert (= (and start!696246 res!2914109) b!7142106))

(assert (= (and b!7142106 res!2914108) b!7142111))

(assert (= (and b!7142111 res!2914110) b!7142113))

(assert (= (and b!7142113 (not res!2914107)) b!7142110))

(assert (= (and b!7142110 (not res!2914106)) b!7142107))

(assert (= (and b!7142107 (not res!2914104)) b!7142108))

(assert (= (and b!7142108 (not res!2914105)) b!7142109))

(assert (= (and start!696246 (is-ElementMatch!18172 r!11483)) b!7142114))

(assert (= (and start!696246 (is-Concat!27017 r!11483)) b!7142115))

(assert (= (and start!696246 (is-Star!18172 r!11483)) b!7142112))

(assert (= (and start!696246 (is-Union!18172 r!11483)) b!7142116))

(assert (= (and start!696246 condSetEmpty!52582) setIsEmpty!52582))

(assert (= (and start!696246 (not condSetEmpty!52582)) setNonEmpty!52582))

(assert (= setNonEmpty!52582 b!7142117))

(declare-fun m!7856574 () Bool)

(assert (=> setNonEmpty!52582 m!7856574))

(declare-fun m!7856576 () Bool)

(assert (=> start!696246 m!7856576))

(declare-fun m!7856578 () Bool)

(assert (=> b!7142109 m!7856578))

(assert (=> b!7142109 m!7856578))

(declare-fun m!7856580 () Bool)

(assert (=> b!7142109 m!7856580))

(declare-fun m!7856582 () Bool)

(assert (=> b!7142111 m!7856582))

(declare-fun m!7856584 () Bool)

(assert (=> b!7142111 m!7856584))

(declare-fun m!7856586 () Bool)

(assert (=> b!7142113 m!7856586))

(assert (=> b!7142113 m!7856586))

(declare-fun m!7856588 () Bool)

(assert (=> b!7142113 m!7856588))

(declare-fun m!7856590 () Bool)

(assert (=> b!7142113 m!7856590))

(assert (=> b!7142107 m!7856586))

(declare-fun m!7856592 () Bool)

(assert (=> b!7142106 m!7856592))

(declare-fun m!7856594 () Bool)

(assert (=> b!7142106 m!7856594))

(declare-fun m!7856596 () Bool)

(assert (=> b!7142108 m!7856596))

(push 1)

(assert (not b!7142107))

(assert (not b!7142116))

(assert tp_is_empty!45981)

(assert (not b!7142115))

(assert (not b!7142112))

(assert (not start!696246))

(assert (not b!7142111))

(assert (not b!7142108))

(assert (not setNonEmpty!52582))

(assert (not b!7142109))

(assert (not b!7142113))

(assert (not b!7142117))

(assert (not b!7142106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1888591 () Bool)

(declare-fun d!2227557 () Bool)

(assert (= bs!1888591 (and d!2227557 b!7142113)))

(declare-fun lambda!434947 () Int)

(assert (=> bs!1888591 (not (= lambda!434947 lambda!434931))))

(declare-fun b!7142175 () Bool)

(declare-fun e!4292216 () Bool)

(declare-fun lt!2567683 () Regex!18172)

(declare-fun isEmptyLang!2103 (Regex!18172) Bool)

(assert (=> b!7142175 (= e!4292216 (isEmptyLang!2103 lt!2567683))))

(declare-fun b!7142176 () Bool)

(declare-fun e!4292220 () Bool)

(assert (=> b!7142176 (= e!4292216 e!4292220)))

(declare-fun c!1331927 () Bool)

(declare-fun isEmpty!40071 (List!69422) Bool)

(declare-fun tail!13982 (List!69422) List!69422)

(assert (=> b!7142176 (= c!1331927 (isEmpty!40071 (tail!13982 lt!2567662)))))

(declare-fun b!7142177 () Bool)

(declare-fun head!14512 (List!69422) Regex!18172)

(assert (=> b!7142177 (= e!4292220 (= lt!2567683 (head!14512 lt!2567662)))))

(declare-fun b!7142178 () Bool)

(declare-fun e!4292217 () Regex!18172)

(assert (=> b!7142178 (= e!4292217 (Union!18172 (h!75746 lt!2567662) (generalisedUnion!2677 (t!383439 lt!2567662))))))

(declare-fun b!7142179 () Bool)

(declare-fun e!4292218 () Bool)

(assert (=> b!7142179 (= e!4292218 (isEmpty!40071 (t!383439 lt!2567662)))))

(declare-fun b!7142174 () Bool)

(declare-fun isUnion!1530 (Regex!18172) Bool)

(assert (=> b!7142174 (= e!4292220 (isUnion!1530 lt!2567683))))

(declare-fun e!4292219 () Bool)

(assert (=> d!2227557 e!4292219))

(declare-fun res!2914137 () Bool)

(assert (=> d!2227557 (=> (not res!2914137) (not e!4292219))))

(assert (=> d!2227557 (= res!2914137 (validRegex!9339 lt!2567683))))

(declare-fun e!4292215 () Regex!18172)

(assert (=> d!2227557 (= lt!2567683 e!4292215)))

(declare-fun c!1331926 () Bool)

(assert (=> d!2227557 (= c!1331926 e!4292218)))

(declare-fun res!2914136 () Bool)

(assert (=> d!2227557 (=> (not res!2914136) (not e!4292218))))

(assert (=> d!2227557 (= res!2914136 (is-Cons!69298 lt!2567662))))

(declare-fun forall!17012 (List!69422 Int) Bool)

(assert (=> d!2227557 (forall!17012 lt!2567662 lambda!434947)))

(assert (=> d!2227557 (= (generalisedUnion!2677 lt!2567662) lt!2567683)))

(declare-fun b!7142180 () Bool)

(assert (=> b!7142180 (= e!4292217 EmptyLang!18172)))

(declare-fun b!7142181 () Bool)

(assert (=> b!7142181 (= e!4292215 (h!75746 lt!2567662))))

(declare-fun b!7142182 () Bool)

(assert (=> b!7142182 (= e!4292219 e!4292216)))

(declare-fun c!1331925 () Bool)

(assert (=> b!7142182 (= c!1331925 (isEmpty!40071 lt!2567662))))

(declare-fun b!7142183 () Bool)

(assert (=> b!7142183 (= e!4292215 e!4292217)))

(declare-fun c!1331928 () Bool)

(assert (=> b!7142183 (= c!1331928 (is-Cons!69298 lt!2567662))))

(assert (= (and d!2227557 res!2914136) b!7142179))

(assert (= (and d!2227557 c!1331926) b!7142181))

(assert (= (and d!2227557 (not c!1331926)) b!7142183))

(assert (= (and b!7142183 c!1331928) b!7142178))

(assert (= (and b!7142183 (not c!1331928)) b!7142180))

(assert (= (and d!2227557 res!2914137) b!7142182))

(assert (= (and b!7142182 c!1331925) b!7142175))

(assert (= (and b!7142182 (not c!1331925)) b!7142176))

(assert (= (and b!7142176 c!1331927) b!7142177))

(assert (= (and b!7142176 (not c!1331927)) b!7142174))

(declare-fun m!7856622 () Bool)

(assert (=> b!7142174 m!7856622))

(declare-fun m!7856624 () Bool)

(assert (=> b!7142177 m!7856624))

(declare-fun m!7856626 () Bool)

(assert (=> b!7142178 m!7856626))

(declare-fun m!7856628 () Bool)

(assert (=> b!7142176 m!7856628))

(assert (=> b!7142176 m!7856628))

(declare-fun m!7856630 () Bool)

(assert (=> b!7142176 m!7856630))

(declare-fun m!7856632 () Bool)

(assert (=> d!2227557 m!7856632))

(declare-fun m!7856634 () Bool)

(assert (=> d!2227557 m!7856634))

(declare-fun m!7856636 () Bool)

(assert (=> b!7142179 m!7856636))

(declare-fun m!7856638 () Bool)

(assert (=> b!7142182 m!7856638))

(declare-fun m!7856640 () Bool)

(assert (=> b!7142175 m!7856640))

(assert (=> b!7142111 d!2227557))

(declare-fun bs!1888592 () Bool)

(declare-fun d!2227559 () Bool)

(assert (= bs!1888592 (and d!2227559 b!7142113)))

(declare-fun lambda!434950 () Int)

(assert (=> bs!1888592 (not (= lambda!434950 lambda!434931))))

(declare-fun bs!1888593 () Bool)

(assert (= bs!1888593 (and d!2227559 d!2227557)))

(assert (=> bs!1888593 (= lambda!434950 lambda!434947)))

(declare-fun lt!2567686 () List!69422)

(assert (=> d!2227559 (forall!17012 lt!2567686 lambda!434950)))

(declare-fun e!4292223 () List!69422)

(assert (=> d!2227559 (= lt!2567686 e!4292223)))

(declare-fun c!1331931 () Bool)

(assert (=> d!2227559 (= c!1331931 (is-Cons!69299 lt!2567661))))

(assert (=> d!2227559 (= (unfocusZipperList!2213 lt!2567661) lt!2567686)))

(declare-fun b!7142188 () Bool)

(declare-fun generalisedConcat!2354 (List!69422) Regex!18172)

(assert (=> b!7142188 (= e!4292223 (Cons!69298 (generalisedConcat!2354 (exprs!7666 (h!75747 lt!2567661))) (unfocusZipperList!2213 (t!383440 lt!2567661))))))

(declare-fun b!7142189 () Bool)

(assert (=> b!7142189 (= e!4292223 Nil!69298)))

(assert (= (and d!2227559 c!1331931) b!7142188))

(assert (= (and d!2227559 (not c!1331931)) b!7142189))

(declare-fun m!7856642 () Bool)

(assert (=> d!2227559 m!7856642))

(declare-fun m!7856644 () Bool)

(assert (=> b!7142188 m!7856644))

(declare-fun m!7856646 () Bool)

(assert (=> b!7142188 m!7856646))

(assert (=> b!7142111 d!2227559))

(declare-fun d!2227563 () Bool)

(declare-fun lt!2567689 () Regex!18172)

(assert (=> d!2227563 (validRegex!9339 lt!2567689)))

(assert (=> d!2227563 (= lt!2567689 (generalisedUnion!2677 (unfocusZipperList!2213 lt!2567661)))))

(assert (=> d!2227563 (= (unfocusZipper!2520 lt!2567661) lt!2567689)))

(declare-fun bs!1888594 () Bool)

(assert (= bs!1888594 d!2227563))

(declare-fun m!7856648 () Bool)

(assert (=> bs!1888594 m!7856648))

(assert (=> bs!1888594 m!7856584))

(assert (=> bs!1888594 m!7856584))

(declare-fun m!7856650 () Bool)

(assert (=> bs!1888594 m!7856650))

(assert (=> b!7142106 d!2227563))

(declare-fun d!2227565 () Bool)

(declare-fun e!4292226 () Bool)

(assert (=> d!2227565 e!4292226))

(declare-fun res!2914140 () Bool)

(assert (=> d!2227565 (=> (not res!2914140) (not e!4292226))))

(declare-fun lt!2567692 () List!69423)

(declare-fun noDuplicate!2833 (List!69423) Bool)

(assert (=> d!2227565 (= res!2914140 (noDuplicate!2833 lt!2567692))))

(declare-fun choose!55250 ((Set Context!14332)) List!69423)

(assert (=> d!2227565 (= lt!2567692 (choose!55250 z!3189))))

(assert (=> d!2227565 (= (toList!11203 z!3189) lt!2567692)))

(declare-fun b!7142192 () Bool)

(declare-fun content!14209 (List!69423) (Set Context!14332))

(assert (=> b!7142192 (= e!4292226 (= (content!14209 lt!2567692) z!3189))))

(assert (= (and d!2227565 res!2914140) b!7142192))

(declare-fun m!7856652 () Bool)

(assert (=> d!2227565 m!7856652))

(declare-fun m!7856654 () Bool)

(assert (=> d!2227565 m!7856654))

(declare-fun m!7856656 () Bool)

(assert (=> b!7142192 m!7856656))

(assert (=> b!7142106 d!2227565))

(declare-fun bs!1888597 () Bool)

(declare-fun d!2227567 () Bool)

(assert (= bs!1888597 (and d!2227567 b!7142113)))

(declare-fun lambda!434956 () Int)

(assert (=> bs!1888597 (not (= lambda!434956 lambda!434931))))

(declare-fun bs!1888598 () Bool)

(assert (= bs!1888598 (and d!2227567 d!2227557)))

(assert (=> bs!1888598 (not (= lambda!434956 lambda!434947))))

(declare-fun bs!1888599 () Bool)

(assert (= bs!1888599 (and d!2227567 d!2227559)))

(assert (=> bs!1888599 (not (= lambda!434956 lambda!434950))))

(assert (=> d!2227567 true))

(declare-fun order!28579 () Int)

(declare-fun dynLambda!28218 (Int Int) Int)

(assert (=> d!2227567 (< (dynLambda!28218 order!28579 lambda!434931) (dynLambda!28218 order!28579 lambda!434956))))

(assert (=> d!2227567 (= (exists!3968 lt!2567662 lambda!434931) (not (forall!17012 lt!2567662 lambda!434956)))))

(declare-fun bs!1888600 () Bool)

(assert (= bs!1888600 d!2227567))

(declare-fun m!7856660 () Bool)

(assert (=> bs!1888600 m!7856660))

(assert (=> b!7142107 d!2227567))

(declare-fun bs!1888601 () Bool)

(declare-fun d!2227571 () Bool)

(assert (= bs!1888601 (and d!2227571 b!7142113)))

(declare-fun lambda!434959 () Int)

(assert (=> bs!1888601 (not (= lambda!434959 lambda!434931))))

(declare-fun bs!1888602 () Bool)

(assert (= bs!1888602 (and d!2227571 d!2227557)))

(assert (=> bs!1888602 (= lambda!434959 lambda!434947)))

(declare-fun bs!1888603 () Bool)

(assert (= bs!1888603 (and d!2227571 d!2227559)))

(assert (=> bs!1888603 (= lambda!434959 lambda!434950)))

(declare-fun bs!1888604 () Bool)

(assert (= bs!1888604 (and d!2227571 d!2227567)))

(assert (=> bs!1888604 (not (= lambda!434959 lambda!434956))))

(assert (=> d!2227571 (= (inv!88495 setElem!52582) (forall!17012 (exprs!7666 setElem!52582) lambda!434959))))

(declare-fun bs!1888605 () Bool)

(assert (= bs!1888605 d!2227571))

(declare-fun m!7856662 () Bool)

(assert (=> bs!1888605 m!7856662))

(assert (=> setNonEmpty!52582 d!2227571))

(assert (=> b!7142113 d!2227567))

(declare-fun d!2227573 () Bool)

(declare-fun nullableFct!2993 (Regex!18172) Bool)

(assert (=> d!2227573 (= (nullable!7691 lt!2567664) (nullableFct!2993 lt!2567664))))

(declare-fun bs!1888606 () Bool)

(assert (= bs!1888606 d!2227573))

(declare-fun m!7856664 () Bool)

(assert (=> bs!1888606 m!7856664))

(assert (=> b!7142113 d!2227573))

(declare-fun bs!1888607 () Bool)

(declare-fun d!2227575 () Bool)

(assert (= bs!1888607 (and d!2227575 d!2227567)))

(declare-fun lambda!434964 () Int)

(assert (=> bs!1888607 (not (= lambda!434964 lambda!434956))))

(declare-fun bs!1888608 () Bool)

(assert (= bs!1888608 (and d!2227575 d!2227571)))

(assert (=> bs!1888608 (= lambda!434964 lambda!434959)))

(declare-fun bs!1888609 () Bool)

(assert (= bs!1888609 (and d!2227575 d!2227557)))

(assert (=> bs!1888609 (= lambda!434964 lambda!434947)))

(declare-fun bs!1888610 () Bool)

(assert (= bs!1888610 (and d!2227575 b!7142113)))

(assert (=> bs!1888610 (not (= lambda!434964 lambda!434931))))

(declare-fun bs!1888611 () Bool)

(assert (= bs!1888611 (and d!2227575 d!2227559)))

(assert (=> bs!1888611 (= lambda!434964 lambda!434950)))

(declare-fun lambda!434965 () Int)

(assert (=> bs!1888607 (not (= lambda!434965 lambda!434956))))

(assert (=> bs!1888608 (not (= lambda!434965 lambda!434959))))

(assert (=> bs!1888609 (not (= lambda!434965 lambda!434947))))

(assert (=> bs!1888611 (not (= lambda!434965 lambda!434950))))

(assert (=> bs!1888610 (= lambda!434965 lambda!434931)))

(declare-fun bs!1888612 () Bool)

(assert (= bs!1888612 d!2227575))

(assert (=> bs!1888612 (not (= lambda!434965 lambda!434964))))

(assert (=> d!2227575 (= (nullable!7691 lt!2567664) (exists!3968 lt!2567662 lambda!434965))))

(declare-fun lt!2567695 () Unit!163213)

(declare-fun choose!55251 (Regex!18172 List!69422) Unit!163213)

(assert (=> d!2227575 (= lt!2567695 (choose!55251 lt!2567664 lt!2567662))))

(assert (=> d!2227575 (forall!17012 lt!2567662 lambda!434964)))

(assert (=> d!2227575 (= (nullableGenUnionSpec!59 lt!2567664 lt!2567662) lt!2567695)))

(assert (=> bs!1888612 m!7856588))

(declare-fun m!7856666 () Bool)

(assert (=> bs!1888612 m!7856666))

(declare-fun m!7856668 () Bool)

(assert (=> bs!1888612 m!7856668))

(declare-fun m!7856670 () Bool)

(assert (=> bs!1888612 m!7856670))

(assert (=> b!7142113 d!2227575))

(declare-fun d!2227577 () Bool)

(declare-fun lt!2567698 () Bool)

(declare-fun exists!3972 (List!69423 Int) Bool)

(assert (=> d!2227577 (= lt!2567698 (exists!3972 (toList!11203 z!3189) lambda!434932))))

(declare-fun choose!55252 ((Set Context!14332) Int) Bool)

(assert (=> d!2227577 (= lt!2567698 (choose!55252 z!3189 lambda!434932))))

(assert (=> d!2227577 (= (exists!3969 z!3189 lambda!434932) lt!2567698)))

(declare-fun bs!1888613 () Bool)

(assert (= bs!1888613 d!2227577))

(assert (=> bs!1888613 m!7856594))

(assert (=> bs!1888613 m!7856594))

(declare-fun m!7856672 () Bool)

(assert (=> bs!1888613 m!7856672))

(declare-fun m!7856674 () Bool)

(assert (=> bs!1888613 m!7856674))

(assert (=> b!7142108 d!2227577))

(declare-fun d!2227579 () Bool)

(declare-fun e!4292241 () Bool)

(assert (=> d!2227579 e!4292241))

(declare-fun res!2914147 () Bool)

(assert (=> d!2227579 (=> (not res!2914147) (not e!4292241))))

(declare-fun lt!2567703 () Context!14332)

(declare-fun dynLambda!28219 (Int Context!14332) Bool)

(assert (=> d!2227579 (= res!2914147 (dynLambda!28219 lambda!434932 lt!2567703))))

(declare-fun getWitness!1949 (List!69423 Int) Context!14332)

(assert (=> d!2227579 (= lt!2567703 (getWitness!1949 (toList!11203 z!3189) lambda!434932))))

(assert (=> d!2227579 (exists!3969 z!3189 lambda!434932)))

(assert (=> d!2227579 (= (getWitness!1947 z!3189 lambda!434932) lt!2567703)))

(declare-fun b!7142217 () Bool)

(assert (=> b!7142217 (= e!4292241 (set.member lt!2567703 z!3189))))

(assert (= (and d!2227579 res!2914147) b!7142217))

(declare-fun b_lambda!272637 () Bool)

(assert (=> (not b_lambda!272637) (not d!2227579)))

(declare-fun m!7856676 () Bool)

(assert (=> d!2227579 m!7856676))

(assert (=> d!2227579 m!7856594))

(assert (=> d!2227579 m!7856594))

(declare-fun m!7856678 () Bool)

(assert (=> d!2227579 m!7856678))

(assert (=> d!2227579 m!7856596))

(declare-fun m!7856680 () Bool)

(assert (=> b!7142217 m!7856680))

(assert (=> b!7142109 d!2227579))

(declare-fun b!7142236 () Bool)

(declare-fun e!4292260 () Bool)

(declare-fun call!651235 () Bool)

(assert (=> b!7142236 (= e!4292260 call!651235)))

(declare-fun b!7142237 () Bool)

(declare-fun e!4292261 () Bool)

(declare-fun call!651234 () Bool)

(assert (=> b!7142237 (= e!4292261 call!651234)))

(declare-fun b!7142238 () Bool)

(declare-fun res!2914162 () Bool)

(declare-fun e!4292256 () Bool)

(assert (=> b!7142238 (=> res!2914162 e!4292256)))

(assert (=> b!7142238 (= res!2914162 (not (is-Concat!27017 r!11483)))))

(declare-fun e!4292258 () Bool)

(assert (=> b!7142238 (= e!4292258 e!4292256)))

(declare-fun d!2227581 () Bool)

(declare-fun res!2914159 () Bool)

(declare-fun e!4292257 () Bool)

(assert (=> d!2227581 (=> res!2914159 e!4292257)))

(assert (=> d!2227581 (= res!2914159 (is-ElementMatch!18172 r!11483))))

(assert (=> d!2227581 (= (validRegex!9339 r!11483) e!4292257)))

(declare-fun b!7142239 () Bool)

(declare-fun e!4292262 () Bool)

(assert (=> b!7142239 (= e!4292262 call!651234)))

(declare-fun b!7142240 () Bool)

(declare-fun e!4292259 () Bool)

(assert (=> b!7142240 (= e!4292259 e!4292258)))

(declare-fun c!1331944 () Bool)

(assert (=> b!7142240 (= c!1331944 (is-Union!18172 r!11483))))

(declare-fun bm!651228 () Bool)

(assert (=> bm!651228 (= call!651234 call!651235)))

(declare-fun b!7142241 () Bool)

(assert (=> b!7142241 (= e!4292257 e!4292259)))

(declare-fun c!1331945 () Bool)

(assert (=> b!7142241 (= c!1331945 (is-Star!18172 r!11483))))

(declare-fun bm!651229 () Bool)

(declare-fun call!651233 () Bool)

(assert (=> bm!651229 (= call!651233 (validRegex!9339 (ite c!1331944 (regOne!36857 r!11483) (regOne!36856 r!11483))))))

(declare-fun b!7142242 () Bool)

(assert (=> b!7142242 (= e!4292256 e!4292261)))

(declare-fun res!2914158 () Bool)

(assert (=> b!7142242 (=> (not res!2914158) (not e!4292261))))

(assert (=> b!7142242 (= res!2914158 call!651233)))

(declare-fun bm!651230 () Bool)

(assert (=> bm!651230 (= call!651235 (validRegex!9339 (ite c!1331945 (reg!18501 r!11483) (ite c!1331944 (regTwo!36857 r!11483) (regTwo!36856 r!11483)))))))

(declare-fun b!7142243 () Bool)

(declare-fun res!2914160 () Bool)

(assert (=> b!7142243 (=> (not res!2914160) (not e!4292262))))

(assert (=> b!7142243 (= res!2914160 call!651233)))

(assert (=> b!7142243 (= e!4292258 e!4292262)))

(declare-fun b!7142244 () Bool)

(assert (=> b!7142244 (= e!4292259 e!4292260)))

(declare-fun res!2914161 () Bool)

(assert (=> b!7142244 (= res!2914161 (not (nullable!7691 (reg!18501 r!11483))))))

(assert (=> b!7142244 (=> (not res!2914161) (not e!4292260))))

(assert (= (and d!2227581 (not res!2914159)) b!7142241))

(assert (= (and b!7142241 c!1331945) b!7142244))

(assert (= (and b!7142241 (not c!1331945)) b!7142240))

(assert (= (and b!7142244 res!2914161) b!7142236))

(assert (= (and b!7142240 c!1331944) b!7142243))

(assert (= (and b!7142240 (not c!1331944)) b!7142238))

(assert (= (and b!7142243 res!2914160) b!7142239))

(assert (= (and b!7142238 (not res!2914162)) b!7142242))

(assert (= (and b!7142242 res!2914158) b!7142237))

(assert (= (or b!7142239 b!7142237) bm!651228))

(assert (= (or b!7142243 b!7142242) bm!651229))

(assert (= (or b!7142236 bm!651228) bm!651230))

(declare-fun m!7856682 () Bool)

(assert (=> bm!651229 m!7856682))

(declare-fun m!7856684 () Bool)

(assert (=> bm!651230 m!7856684))

(declare-fun m!7856686 () Bool)

(assert (=> b!7142244 m!7856686))

(assert (=> start!696246 d!2227581))

(declare-fun b!7142268 () Bool)

(declare-fun e!4292271 () Bool)

(declare-fun tp!1969834 () Bool)

(declare-fun tp!1969833 () Bool)

(assert (=> b!7142268 (= e!4292271 (and tp!1969834 tp!1969833))))

(declare-fun b!7142266 () Bool)

(declare-fun tp!1969830 () Bool)

(declare-fun tp!1969832 () Bool)

(assert (=> b!7142266 (= e!4292271 (and tp!1969830 tp!1969832))))

(declare-fun b!7142267 () Bool)

(declare-fun tp!1969831 () Bool)

(assert (=> b!7142267 (= e!4292271 tp!1969831)))

(assert (=> b!7142115 (= tp!1969797 e!4292271)))

(declare-fun b!7142265 () Bool)

(assert (=> b!7142265 (= e!4292271 tp_is_empty!45981)))

(assert (= (and b!7142115 (is-ElementMatch!18172 (regOne!36856 r!11483))) b!7142265))

(assert (= (and b!7142115 (is-Concat!27017 (regOne!36856 r!11483))) b!7142266))

(assert (= (and b!7142115 (is-Star!18172 (regOne!36856 r!11483))) b!7142267))

(assert (= (and b!7142115 (is-Union!18172 (regOne!36856 r!11483))) b!7142268))

(declare-fun b!7142272 () Bool)

(declare-fun e!4292272 () Bool)

(declare-fun tp!1969839 () Bool)

(declare-fun tp!1969838 () Bool)

(assert (=> b!7142272 (= e!4292272 (and tp!1969839 tp!1969838))))

(declare-fun b!7142270 () Bool)

(declare-fun tp!1969835 () Bool)

(declare-fun tp!1969837 () Bool)

(assert (=> b!7142270 (= e!4292272 (and tp!1969835 tp!1969837))))

(declare-fun b!7142271 () Bool)

(declare-fun tp!1969836 () Bool)

(assert (=> b!7142271 (= e!4292272 tp!1969836)))

(assert (=> b!7142115 (= tp!1969798 e!4292272)))

(declare-fun b!7142269 () Bool)

(assert (=> b!7142269 (= e!4292272 tp_is_empty!45981)))

(assert (= (and b!7142115 (is-ElementMatch!18172 (regTwo!36856 r!11483))) b!7142269))

(assert (= (and b!7142115 (is-Concat!27017 (regTwo!36856 r!11483))) b!7142270))

(assert (= (and b!7142115 (is-Star!18172 (regTwo!36856 r!11483))) b!7142271))

(assert (= (and b!7142115 (is-Union!18172 (regTwo!36856 r!11483))) b!7142272))

(declare-fun b!7142276 () Bool)

(declare-fun e!4292273 () Bool)

(declare-fun tp!1969844 () Bool)

(declare-fun tp!1969843 () Bool)

(assert (=> b!7142276 (= e!4292273 (and tp!1969844 tp!1969843))))

(declare-fun b!7142274 () Bool)

(declare-fun tp!1969840 () Bool)

(declare-fun tp!1969842 () Bool)

(assert (=> b!7142274 (= e!4292273 (and tp!1969840 tp!1969842))))

(declare-fun b!7142275 () Bool)

(declare-fun tp!1969841 () Bool)

(assert (=> b!7142275 (= e!4292273 tp!1969841)))

(assert (=> b!7142116 (= tp!1969795 e!4292273)))

(declare-fun b!7142273 () Bool)

(assert (=> b!7142273 (= e!4292273 tp_is_empty!45981)))

(assert (= (and b!7142116 (is-ElementMatch!18172 (regOne!36857 r!11483))) b!7142273))

(assert (= (and b!7142116 (is-Concat!27017 (regOne!36857 r!11483))) b!7142274))

(assert (= (and b!7142116 (is-Star!18172 (regOne!36857 r!11483))) b!7142275))

(assert (= (and b!7142116 (is-Union!18172 (regOne!36857 r!11483))) b!7142276))

(declare-fun b!7142280 () Bool)

(declare-fun e!4292274 () Bool)

(declare-fun tp!1969849 () Bool)

(declare-fun tp!1969848 () Bool)

(assert (=> b!7142280 (= e!4292274 (and tp!1969849 tp!1969848))))

(declare-fun b!7142278 () Bool)

(declare-fun tp!1969845 () Bool)

(declare-fun tp!1969847 () Bool)

(assert (=> b!7142278 (= e!4292274 (and tp!1969845 tp!1969847))))

(declare-fun b!7142279 () Bool)

(declare-fun tp!1969846 () Bool)

(assert (=> b!7142279 (= e!4292274 tp!1969846)))

(assert (=> b!7142116 (= tp!1969796 e!4292274)))

(declare-fun b!7142277 () Bool)

(assert (=> b!7142277 (= e!4292274 tp_is_empty!45981)))

(assert (= (and b!7142116 (is-ElementMatch!18172 (regTwo!36857 r!11483))) b!7142277))

(assert (= (and b!7142116 (is-Concat!27017 (regTwo!36857 r!11483))) b!7142278))

(assert (= (and b!7142116 (is-Star!18172 (regTwo!36857 r!11483))) b!7142279))

(assert (= (and b!7142116 (is-Union!18172 (regTwo!36857 r!11483))) b!7142280))

(declare-fun b!7142284 () Bool)

(declare-fun e!4292275 () Bool)

(declare-fun tp!1969854 () Bool)

(declare-fun tp!1969853 () Bool)

(assert (=> b!7142284 (= e!4292275 (and tp!1969854 tp!1969853))))

(declare-fun b!7142282 () Bool)

(declare-fun tp!1969850 () Bool)

(declare-fun tp!1969852 () Bool)

(assert (=> b!7142282 (= e!4292275 (and tp!1969850 tp!1969852))))

(declare-fun b!7142283 () Bool)

(declare-fun tp!1969851 () Bool)

(assert (=> b!7142283 (= e!4292275 tp!1969851)))

(assert (=> b!7142112 (= tp!1969792 e!4292275)))

(declare-fun b!7142281 () Bool)

(assert (=> b!7142281 (= e!4292275 tp_is_empty!45981)))

(assert (= (and b!7142112 (is-ElementMatch!18172 (reg!18501 r!11483))) b!7142281))

(assert (= (and b!7142112 (is-Concat!27017 (reg!18501 r!11483))) b!7142282))

(assert (= (and b!7142112 (is-Star!18172 (reg!18501 r!11483))) b!7142283))

(assert (= (and b!7142112 (is-Union!18172 (reg!18501 r!11483))) b!7142284))

(declare-fun condSetEmpty!52588 () Bool)

(assert (=> setNonEmpty!52582 (= condSetEmpty!52588 (= setRest!52582 (as set.empty (Set Context!14332))))))

(declare-fun setRes!52588 () Bool)

(assert (=> setNonEmpty!52582 (= tp!1969793 setRes!52588)))

(declare-fun setIsEmpty!52588 () Bool)

(assert (=> setIsEmpty!52588 setRes!52588))

(declare-fun setElem!52588 () Context!14332)

(declare-fun e!4292278 () Bool)

(declare-fun setNonEmpty!52588 () Bool)

(declare-fun tp!1969859 () Bool)

(assert (=> setNonEmpty!52588 (= setRes!52588 (and tp!1969859 (inv!88495 setElem!52588) e!4292278))))

(declare-fun setRest!52588 () (Set Context!14332))

(assert (=> setNonEmpty!52588 (= setRest!52582 (set.union (set.insert setElem!52588 (as set.empty (Set Context!14332))) setRest!52588))))

(declare-fun b!7142289 () Bool)

(declare-fun tp!1969860 () Bool)

(assert (=> b!7142289 (= e!4292278 tp!1969860)))

(assert (= (and setNonEmpty!52582 condSetEmpty!52588) setIsEmpty!52588))

(assert (= (and setNonEmpty!52582 (not condSetEmpty!52588)) setNonEmpty!52588))

(assert (= setNonEmpty!52588 b!7142289))

(declare-fun m!7856708 () Bool)

(assert (=> setNonEmpty!52588 m!7856708))

(declare-fun b!7142294 () Bool)

(declare-fun e!4292281 () Bool)

(declare-fun tp!1969865 () Bool)

(declare-fun tp!1969866 () Bool)

(assert (=> b!7142294 (= e!4292281 (and tp!1969865 tp!1969866))))

(assert (=> b!7142117 (= tp!1969794 e!4292281)))

(assert (= (and b!7142117 (is-Cons!69298 (exprs!7666 setElem!52582))) b!7142294))

(declare-fun b_lambda!272639 () Bool)

(assert (= b_lambda!272637 (or b!7142108 b_lambda!272639)))

(declare-fun bs!1888616 () Bool)

(declare-fun d!2227585 () Bool)

(assert (= bs!1888616 (and d!2227585 b!7142108)))

(declare-fun nullableContext!151 (Context!14332) Bool)

(assert (=> bs!1888616 (= (dynLambda!28219 lambda!434932 lt!2567703) (nullableContext!151 lt!2567703))))

(declare-fun m!7856710 () Bool)

(assert (=> bs!1888616 m!7856710))

(assert (=> d!2227579 d!2227585))

(push 1)

(assert (not d!2227579))

(assert (not b!7142276))

(assert (not d!2227575))

(assert (not d!2227567))

(assert (not d!2227571))

(assert (not b!7142289))

(assert (not b!7142176))

(assert (not b!7142174))

(assert (not d!2227573))

(assert (not b!7142284))

(assert (not b!7142177))

(assert (not setNonEmpty!52588))

(assert (not b!7142244))

(assert (not bm!651230))

(assert (not b!7142275))

(assert (not b!7142268))

(assert (not d!2227563))

(assert (not b!7142266))

(assert tp_is_empty!45981)

(assert (not d!2227557))

(assert (not bm!651229))

(assert (not b!7142283))

(assert (not b!7142272))

(assert (not b_lambda!272639))

(assert (not b!7142188))

(assert (not b!7142271))

(assert (not d!2227559))

(assert (not d!2227565))

(assert (not b!7142294))

(assert (not b!7142179))

(assert (not b!7142278))

(assert (not b!7142270))

(assert (not b!7142182))

(assert (not b!7142282))

(assert (not b!7142192))

(assert (not b!7142280))

(assert (not b!7142267))

(assert (not b!7142274))

(assert (not b!7142279))

(assert (not b!7142175))

(assert (not b!7142178))

(assert (not d!2227577))

(assert (not bs!1888616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

