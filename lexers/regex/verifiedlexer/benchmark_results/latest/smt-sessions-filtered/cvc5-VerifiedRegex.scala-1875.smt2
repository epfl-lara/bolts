; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92544 () Bool)

(assert start!92544)

(declare-fun bs!256715 () Bool)

(declare-fun b!1086170 () Bool)

(declare-fun b!1086172 () Bool)

(assert (= bs!256715 (and b!1086170 b!1086172)))

(declare-fun lambda!40100 () Int)

(declare-fun lambda!40099 () Int)

(assert (=> bs!256715 (not (= lambda!40100 lambda!40099))))

(assert (=> b!1086170 true))

(declare-fun e!686970 () Bool)

(declare-fun e!686969 () Bool)

(assert (=> b!1086170 (= e!686970 (not e!686969))))

(declare-fun res!483042 () Bool)

(assert (=> b!1086170 (=> res!483042 e!686969)))

(declare-datatypes ((C!6586 0))(
  ( (C!6587 (val!3541 Int)) )
))
(declare-datatypes ((Regex!3008 0))(
  ( (ElementMatch!3008 (c!183664 C!6586)) (Concat!4841 (regOne!6528 Regex!3008) (regTwo!6528 Regex!3008)) (EmptyExpr!3008) (Star!3008 (reg!3337 Regex!3008)) (EmptyLang!3008) (Union!3008 (regOne!6529 Regex!3008) (regTwo!6529 Regex!3008)) )
))
(declare-datatypes ((List!10327 0))(
  ( (Nil!10311) (Cons!10311 (h!15712 Regex!3008) (t!101373 List!10327)) )
))
(declare-datatypes ((Context!976 0))(
  ( (Context!977 (exprs!988 List!10327)) )
))
(declare-fun z!1122 () (Set Context!976))

(declare-fun exists!159 ((Set Context!976) Int) Bool)

(declare-fun filter!170 ((Set Context!976) Int) (Set Context!976))

(assert (=> b!1086170 (= res!483042 (not (exists!159 (filter!170 z!1122 lambda!40099) lambda!40100)))))

(declare-datatypes ((List!10328 0))(
  ( (Nil!10312) (Cons!10312 (h!15713 Context!976) (t!101374 List!10328)) )
))
(declare-fun lt!363371 () List!10328)

(declare-fun exists!160 (List!10328 Int) Bool)

(assert (=> b!1086170 (exists!160 lt!363371 lambda!40100)))

(declare-datatypes ((Unit!15707 0))(
  ( (Unit!15708) )
))
(declare-fun lt!363370 () Unit!15707)

(declare-datatypes ((List!10329 0))(
  ( (Nil!10313) (Cons!10313 (h!15714 C!6586) (t!101375 List!10329)) )
))
(declare-fun s!2287 () List!10329)

(declare-fun lemmaZipperMatchesExistsMatchingContext!35 (List!10328 List!10329) Unit!15707)

(assert (=> b!1086170 (= lt!363370 (lemmaZipperMatchesExistsMatchingContext!35 lt!363371 s!2287))))

(declare-fun toList!626 ((Set Context!976)) List!10328)

(assert (=> b!1086170 (= lt!363371 (toList!626 (filter!170 z!1122 lambda!40099)))))

(declare-fun setIsEmpty!7587 () Bool)

(declare-fun setRes!7587 () Bool)

(assert (=> setIsEmpty!7587 setRes!7587))

(declare-fun b!1086171 () Bool)

(declare-fun e!686968 () Bool)

(declare-fun tp!325272 () Bool)

(assert (=> b!1086171 (= e!686968 tp!325272)))

(declare-fun res!483041 () Bool)

(assert (=> b!1086172 (=> (not res!483041) (not e!686970))))

(declare-fun matchZipper!56 ((Set Context!976) List!10329) Bool)

(assert (=> b!1086172 (= res!483041 (matchZipper!56 (filter!170 z!1122 lambda!40099) s!2287))))

(declare-fun setNonEmpty!7587 () Bool)

(declare-fun tp!325271 () Bool)

(declare-fun setElem!7587 () Context!976)

(declare-fun inv!13234 (Context!976) Bool)

(assert (=> setNonEmpty!7587 (= setRes!7587 (and tp!325271 (inv!13234 setElem!7587) e!686968))))

(declare-fun setRest!7587 () (Set Context!976))

(assert (=> setNonEmpty!7587 (= z!1122 (set.union (set.insert setElem!7587 (as set.empty (Set Context!976))) setRest!7587))))

(declare-fun res!483038 () Bool)

(assert (=> start!92544 (=> (not res!483038) (not e!686970))))

(declare-fun zl!316 () List!10328)

(assert (=> start!92544 (= res!483038 (= (toList!626 z!1122) zl!316))))

(assert (=> start!92544 e!686970))

(declare-fun condSetEmpty!7587 () Bool)

(assert (=> start!92544 (= condSetEmpty!7587 (= z!1122 (as set.empty (Set Context!976))))))

(assert (=> start!92544 setRes!7587))

(declare-fun e!686971 () Bool)

(assert (=> start!92544 e!686971))

(declare-fun e!686967 () Bool)

(assert (=> start!92544 e!686967))

(declare-fun b!1086173 () Bool)

(declare-fun e!686965 () Bool)

(assert (=> b!1086173 (= e!686969 e!686965)))

(declare-fun res!483043 () Bool)

(assert (=> b!1086173 (=> res!483043 e!686965)))

(declare-fun lt!363369 () Context!976)

(assert (=> b!1086173 (= res!483043 (not (set.member lt!363369 (filter!170 z!1122 lambda!40099))))))

(declare-fun getWitness!78 ((Set Context!976) Int) Context!976)

(assert (=> b!1086173 (= lt!363369 (getWitness!78 (filter!170 z!1122 lambda!40099) lambda!40100))))

(declare-fun b!1086174 () Bool)

(declare-fun res!483040 () Bool)

(assert (=> b!1086174 (=> res!483040 e!686965)))

(assert (=> b!1086174 (= res!483040 (not (matchZipper!56 (set.insert lt!363369 (as set.empty (Set Context!976))) s!2287)))))

(declare-fun b!1086175 () Bool)

(declare-fun tp_is_empty!5647 () Bool)

(declare-fun tp!325269 () Bool)

(assert (=> b!1086175 (= e!686967 (and tp_is_empty!5647 tp!325269))))

(declare-fun b!1086176 () Bool)

(declare-fun e!686966 () Bool)

(declare-fun tp!325273 () Bool)

(assert (=> b!1086176 (= e!686971 (and (inv!13234 (h!15713 zl!316)) e!686966 tp!325273))))

(declare-fun b!1086177 () Bool)

(declare-fun tp!325270 () Bool)

(assert (=> b!1086177 (= e!686966 tp!325270)))

(declare-fun b!1086178 () Bool)

(assert (=> b!1086178 (= e!686965 (set.member lt!363369 z!1122))))

(declare-fun lt!363368 () Unit!15707)

(declare-fun filterPost!15 ((Set Context!976) Int Context!976) Unit!15707)

(assert (=> b!1086178 (= lt!363368 (filterPost!15 z!1122 lambda!40099 lt!363369))))

(declare-fun b!1086179 () Bool)

(declare-fun res!483039 () Bool)

(assert (=> b!1086179 (=> (not res!483039) (not e!686970))))

(assert (=> b!1086179 (= res!483039 (not (matchZipper!56 z!1122 s!2287)))))

(assert (= (and start!92544 res!483038) b!1086179))

(assert (= (and b!1086179 res!483039) b!1086172))

(assert (= (and b!1086172 res!483041) b!1086170))

(assert (= (and b!1086170 (not res!483042)) b!1086173))

(assert (= (and b!1086173 (not res!483043)) b!1086174))

(assert (= (and b!1086174 (not res!483040)) b!1086178))

(assert (= (and start!92544 condSetEmpty!7587) setIsEmpty!7587))

(assert (= (and start!92544 (not condSetEmpty!7587)) setNonEmpty!7587))

(assert (= setNonEmpty!7587 b!1086171))

(assert (= b!1086176 b!1086177))

(assert (= (and start!92544 (is-Cons!10312 zl!316)) b!1086176))

(assert (= (and start!92544 (is-Cons!10313 s!2287)) b!1086175))

(declare-fun m!1236039 () Bool)

(assert (=> b!1086179 m!1236039))

(declare-fun m!1236041 () Bool)

(assert (=> setNonEmpty!7587 m!1236041))

(declare-fun m!1236043 () Bool)

(assert (=> b!1086170 m!1236043))

(declare-fun m!1236045 () Bool)

(assert (=> b!1086170 m!1236045))

(assert (=> b!1086170 m!1236043))

(declare-fun m!1236047 () Bool)

(assert (=> b!1086170 m!1236047))

(assert (=> b!1086170 m!1236043))

(declare-fun m!1236049 () Bool)

(assert (=> b!1086170 m!1236049))

(assert (=> b!1086170 m!1236043))

(declare-fun m!1236051 () Bool)

(assert (=> b!1086170 m!1236051))

(assert (=> b!1086172 m!1236043))

(assert (=> b!1086172 m!1236043))

(declare-fun m!1236053 () Bool)

(assert (=> b!1086172 m!1236053))

(declare-fun m!1236055 () Bool)

(assert (=> b!1086178 m!1236055))

(declare-fun m!1236057 () Bool)

(assert (=> b!1086178 m!1236057))

(declare-fun m!1236059 () Bool)

(assert (=> start!92544 m!1236059))

(declare-fun m!1236061 () Bool)

(assert (=> b!1086174 m!1236061))

(assert (=> b!1086174 m!1236061))

(declare-fun m!1236063 () Bool)

(assert (=> b!1086174 m!1236063))

(assert (=> b!1086173 m!1236043))

(declare-fun m!1236065 () Bool)

(assert (=> b!1086173 m!1236065))

(assert (=> b!1086173 m!1236043))

(assert (=> b!1086173 m!1236043))

(declare-fun m!1236067 () Bool)

(assert (=> b!1086173 m!1236067))

(declare-fun m!1236069 () Bool)

(assert (=> b!1086176 m!1236069))

(push 1)

(assert (not start!92544))

(assert tp_is_empty!5647)

(assert (not setNonEmpty!7587))

(assert (not b!1086172))

(assert (not b!1086175))

(assert (not b!1086178))

(assert (not b!1086173))

(assert (not b!1086174))

(assert (not b!1086179))

(assert (not b!1086170))

(assert (not b!1086171))

(assert (not b!1086176))

(assert (not b!1086177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305170 () Bool)

(declare-fun c!183686 () Bool)

(declare-fun isEmpty!6626 (List!10329) Bool)

(assert (=> d!305170 (= c!183686 (isEmpty!6626 s!2287))))

(declare-fun e!686995 () Bool)

(assert (=> d!305170 (= (matchZipper!56 (filter!170 z!1122 lambda!40099) s!2287) e!686995)))

(declare-fun b!1086218 () Bool)

(declare-fun nullableZipper!25 ((Set Context!976)) Bool)

(assert (=> b!1086218 (= e!686995 (nullableZipper!25 (filter!170 z!1122 lambda!40099)))))

(declare-fun b!1086219 () Bool)

(declare-fun derivationStepZipper!23 ((Set Context!976) C!6586) (Set Context!976))

(declare-fun head!2011 (List!10329) C!6586)

(declare-fun tail!1573 (List!10329) List!10329)

(assert (=> b!1086219 (= e!686995 (matchZipper!56 (derivationStepZipper!23 (filter!170 z!1122 lambda!40099) (head!2011 s!2287)) (tail!1573 s!2287)))))

(assert (= (and d!305170 c!183686) b!1086218))

(assert (= (and d!305170 (not c!183686)) b!1086219))

(declare-fun m!1236103 () Bool)

(assert (=> d!305170 m!1236103))

(assert (=> b!1086218 m!1236043))

(declare-fun m!1236105 () Bool)

(assert (=> b!1086218 m!1236105))

(declare-fun m!1236107 () Bool)

(assert (=> b!1086219 m!1236107))

(assert (=> b!1086219 m!1236043))

(assert (=> b!1086219 m!1236107))

(declare-fun m!1236109 () Bool)

(assert (=> b!1086219 m!1236109))

(declare-fun m!1236111 () Bool)

(assert (=> b!1086219 m!1236111))

(assert (=> b!1086219 m!1236109))

(assert (=> b!1086219 m!1236111))

(declare-fun m!1236113 () Bool)

(assert (=> b!1086219 m!1236113))

(assert (=> b!1086172 d!305170))

(declare-fun d!305172 () Bool)

(declare-fun choose!6929 ((Set Context!976) Int) (Set Context!976))

(assert (=> d!305172 (= (filter!170 z!1122 lambda!40099) (choose!6929 z!1122 lambda!40099))))

(declare-fun bs!256717 () Bool)

(assert (= bs!256717 d!305172))

(declare-fun m!1236115 () Bool)

(assert (=> bs!256717 m!1236115))

(assert (=> b!1086172 d!305172))

(declare-fun d!305174 () Bool)

(declare-fun lambda!40123 () Int)

(declare-fun forall!2267 (List!10327 Int) Bool)

(assert (=> d!305174 (= (inv!13234 (h!15713 zl!316)) (forall!2267 (exprs!988 (h!15713 zl!316)) lambda!40123))))

(declare-fun bs!256718 () Bool)

(assert (= bs!256718 d!305174))

(declare-fun m!1236117 () Bool)

(assert (=> bs!256718 m!1236117))

(assert (=> b!1086176 d!305174))

(declare-fun d!305178 () Bool)

(declare-fun c!183687 () Bool)

(assert (=> d!305178 (= c!183687 (isEmpty!6626 s!2287))))

(declare-fun e!686996 () Bool)

(assert (=> d!305178 (= (matchZipper!56 (set.insert lt!363369 (as set.empty (Set Context!976))) s!2287) e!686996)))

(declare-fun b!1086220 () Bool)

(assert (=> b!1086220 (= e!686996 (nullableZipper!25 (set.insert lt!363369 (as set.empty (Set Context!976)))))))

(declare-fun b!1086221 () Bool)

(assert (=> b!1086221 (= e!686996 (matchZipper!56 (derivationStepZipper!23 (set.insert lt!363369 (as set.empty (Set Context!976))) (head!2011 s!2287)) (tail!1573 s!2287)))))

(assert (= (and d!305178 c!183687) b!1086220))

(assert (= (and d!305178 (not c!183687)) b!1086221))

(assert (=> d!305178 m!1236103))

(assert (=> b!1086220 m!1236061))

(declare-fun m!1236119 () Bool)

(assert (=> b!1086220 m!1236119))

(assert (=> b!1086221 m!1236107))

(assert (=> b!1086221 m!1236061))

(assert (=> b!1086221 m!1236107))

(declare-fun m!1236121 () Bool)

(assert (=> b!1086221 m!1236121))

(assert (=> b!1086221 m!1236111))

(assert (=> b!1086221 m!1236121))

(assert (=> b!1086221 m!1236111))

(declare-fun m!1236123 () Bool)

(assert (=> b!1086221 m!1236123))

(assert (=> b!1086174 d!305178))

(declare-fun d!305180 () Bool)

(declare-fun c!183688 () Bool)

(assert (=> d!305180 (= c!183688 (isEmpty!6626 s!2287))))

(declare-fun e!686997 () Bool)

(assert (=> d!305180 (= (matchZipper!56 z!1122 s!2287) e!686997)))

(declare-fun b!1086222 () Bool)

(assert (=> b!1086222 (= e!686997 (nullableZipper!25 z!1122))))

(declare-fun b!1086223 () Bool)

(assert (=> b!1086223 (= e!686997 (matchZipper!56 (derivationStepZipper!23 z!1122 (head!2011 s!2287)) (tail!1573 s!2287)))))

(assert (= (and d!305180 c!183688) b!1086222))

(assert (= (and d!305180 (not c!183688)) b!1086223))

(assert (=> d!305180 m!1236103))

(declare-fun m!1236125 () Bool)

(assert (=> b!1086222 m!1236125))

(assert (=> b!1086223 m!1236107))

(assert (=> b!1086223 m!1236107))

(declare-fun m!1236127 () Bool)

(assert (=> b!1086223 m!1236127))

(assert (=> b!1086223 m!1236111))

(assert (=> b!1086223 m!1236127))

(assert (=> b!1086223 m!1236111))

(declare-fun m!1236129 () Bool)

(assert (=> b!1086223 m!1236129))

(assert (=> b!1086179 d!305180))

(declare-fun d!305182 () Bool)

(declare-fun e!687000 () Bool)

(assert (=> d!305182 e!687000))

(declare-fun res!483064 () Bool)

(assert (=> d!305182 (=> (not res!483064) (not e!687000))))

(declare-fun lt!363386 () List!10328)

(declare-fun noDuplicate!187 (List!10328) Bool)

(assert (=> d!305182 (= res!483064 (noDuplicate!187 lt!363386))))

(declare-fun choose!6930 ((Set Context!976)) List!10328)

(assert (=> d!305182 (= lt!363386 (choose!6930 (filter!170 z!1122 lambda!40099)))))

(assert (=> d!305182 (= (toList!626 (filter!170 z!1122 lambda!40099)) lt!363386)))

(declare-fun b!1086226 () Bool)

(declare-fun content!1479 (List!10328) (Set Context!976))

(assert (=> b!1086226 (= e!687000 (= (content!1479 lt!363386) (filter!170 z!1122 lambda!40099)))))

(assert (= (and d!305182 res!483064) b!1086226))

(declare-fun m!1236131 () Bool)

(assert (=> d!305182 m!1236131))

(assert (=> d!305182 m!1236043))

(declare-fun m!1236133 () Bool)

(assert (=> d!305182 m!1236133))

(declare-fun m!1236135 () Bool)

(assert (=> b!1086226 m!1236135))

(assert (=> b!1086170 d!305182))

(declare-fun lt!363389 () Bool)

(declare-fun d!305184 () Bool)

(assert (=> d!305184 (= lt!363389 (exists!160 (toList!626 (filter!170 z!1122 lambda!40099)) lambda!40100))))

(declare-fun choose!6931 ((Set Context!976) Int) Bool)

(assert (=> d!305184 (= lt!363389 (choose!6931 (filter!170 z!1122 lambda!40099) lambda!40100))))

(assert (=> d!305184 (= (exists!159 (filter!170 z!1122 lambda!40099) lambda!40100) lt!363389)))

(declare-fun bs!256719 () Bool)

(assert (= bs!256719 d!305184))

(assert (=> bs!256719 m!1236043))

(assert (=> bs!256719 m!1236049))

(assert (=> bs!256719 m!1236049))

(declare-fun m!1236137 () Bool)

(assert (=> bs!256719 m!1236137))

(assert (=> bs!256719 m!1236043))

(declare-fun m!1236139 () Bool)

(assert (=> bs!256719 m!1236139))

(assert (=> b!1086170 d!305184))

(assert (=> b!1086170 d!305172))

(declare-fun bs!256721 () Bool)

(declare-fun d!305186 () Bool)

(assert (= bs!256721 (and d!305186 b!1086172)))

(declare-fun lambda!40126 () Int)

(assert (=> bs!256721 (not (= lambda!40126 lambda!40099))))

(declare-fun bs!256722 () Bool)

(assert (= bs!256722 (and d!305186 b!1086170)))

(assert (=> bs!256722 (= lambda!40126 lambda!40100)))

(assert (=> d!305186 true))

(assert (=> d!305186 (exists!160 lt!363371 lambda!40126)))

(declare-fun lt!363392 () Unit!15707)

(declare-fun choose!6932 (List!10328 List!10329) Unit!15707)

(assert (=> d!305186 (= lt!363392 (choose!6932 lt!363371 s!2287))))

(assert (=> d!305186 (matchZipper!56 (content!1479 lt!363371) s!2287)))

(assert (=> d!305186 (= (lemmaZipperMatchesExistsMatchingContext!35 lt!363371 s!2287) lt!363392)))

(declare-fun bs!256723 () Bool)

(assert (= bs!256723 d!305186))

(declare-fun m!1236161 () Bool)

(assert (=> bs!256723 m!1236161))

(declare-fun m!1236163 () Bool)

(assert (=> bs!256723 m!1236163))

(declare-fun m!1236165 () Bool)

(assert (=> bs!256723 m!1236165))

(assert (=> bs!256723 m!1236165))

(declare-fun m!1236167 () Bool)

(assert (=> bs!256723 m!1236167))

(assert (=> b!1086170 d!305186))

(declare-fun bs!256724 () Bool)

(declare-fun d!305194 () Bool)

(assert (= bs!256724 (and d!305194 b!1086172)))

(declare-fun lambda!40129 () Int)

(assert (=> bs!256724 (not (= lambda!40129 lambda!40099))))

(declare-fun bs!256725 () Bool)

(assert (= bs!256725 (and d!305194 b!1086170)))

(assert (=> bs!256725 (not (= lambda!40129 lambda!40100))))

(declare-fun bs!256726 () Bool)

(assert (= bs!256726 (and d!305194 d!305186)))

(assert (=> bs!256726 (not (= lambda!40129 lambda!40126))))

(assert (=> d!305194 true))

(declare-fun order!6213 () Int)

(declare-fun dynLambda!4519 (Int Int) Int)

(assert (=> d!305194 (< (dynLambda!4519 order!6213 lambda!40100) (dynLambda!4519 order!6213 lambda!40129))))

(declare-fun forall!2268 (List!10328 Int) Bool)

(assert (=> d!305194 (= (exists!160 lt!363371 lambda!40100) (not (forall!2268 lt!363371 lambda!40129)))))

(declare-fun bs!256727 () Bool)

(assert (= bs!256727 d!305194))

(declare-fun m!1236169 () Bool)

(assert (=> bs!256727 m!1236169))

(assert (=> b!1086170 d!305194))

(assert (=> b!1086173 d!305172))

(declare-fun d!305196 () Bool)

(declare-fun e!687010 () Bool)

(assert (=> d!305196 e!687010))

(declare-fun res!483070 () Bool)

(assert (=> d!305196 (=> (not res!483070) (not e!687010))))

(declare-fun lt!363398 () Context!976)

(declare-fun dynLambda!4520 (Int Context!976) Bool)

(assert (=> d!305196 (= res!483070 (dynLambda!4520 lambda!40100 lt!363398))))

(declare-fun getWitness!80 (List!10328 Int) Context!976)

(assert (=> d!305196 (= lt!363398 (getWitness!80 (toList!626 (filter!170 z!1122 lambda!40099)) lambda!40100))))

(assert (=> d!305196 (exists!159 (filter!170 z!1122 lambda!40099) lambda!40100)))

(assert (=> d!305196 (= (getWitness!78 (filter!170 z!1122 lambda!40099) lambda!40100) lt!363398)))

(declare-fun b!1086242 () Bool)

(assert (=> b!1086242 (= e!687010 (set.member lt!363398 (filter!170 z!1122 lambda!40099)))))

(assert (= (and d!305196 res!483070) b!1086242))

(declare-fun b_lambda!30047 () Bool)

(assert (=> (not b_lambda!30047) (not d!305196)))

(declare-fun m!1236177 () Bool)

(assert (=> d!305196 m!1236177))

(assert (=> d!305196 m!1236043))

(assert (=> d!305196 m!1236049))

(assert (=> d!305196 m!1236049))

(declare-fun m!1236179 () Bool)

(assert (=> d!305196 m!1236179))

(assert (=> d!305196 m!1236043))

(assert (=> d!305196 m!1236051))

(declare-fun m!1236181 () Bool)

(assert (=> b!1086242 m!1236181))

(assert (=> b!1086173 d!305196))

(declare-fun d!305200 () Bool)

(declare-fun e!687015 () Bool)

(assert (=> d!305200 (= (set.member lt!363369 (filter!170 z!1122 lambda!40099)) e!687015)))

(declare-fun res!483075 () Bool)

(assert (=> d!305200 (=> (not res!483075) (not e!687015))))

(assert (=> d!305200 (= res!483075 (dynLambda!4520 lambda!40099 lt!363369))))

(declare-fun lt!363403 () Unit!15707)

(declare-fun choose!6933 ((Set Context!976) Int Context!976) Unit!15707)

(assert (=> d!305200 (= lt!363403 (choose!6933 z!1122 lambda!40099 lt!363369))))

(assert (=> d!305200 (= (filterPost!15 z!1122 lambda!40099 lt!363369) lt!363403)))

(declare-fun b!1086247 () Bool)

(assert (=> b!1086247 (= e!687015 (set.member lt!363369 z!1122))))

(assert (= (and d!305200 res!483075) b!1086247))

(declare-fun b_lambda!30049 () Bool)

(assert (=> (not b_lambda!30049) (not d!305200)))

(assert (=> d!305200 m!1236043))

(assert (=> d!305200 m!1236065))

(declare-fun m!1236183 () Bool)

(assert (=> d!305200 m!1236183))

(declare-fun m!1236185 () Bool)

(assert (=> d!305200 m!1236185))

(assert (=> b!1086247 m!1236055))

(assert (=> b!1086178 d!305200))

(declare-fun bs!256728 () Bool)

(declare-fun d!305202 () Bool)

(assert (= bs!256728 (and d!305202 d!305174)))

(declare-fun lambda!40130 () Int)

(assert (=> bs!256728 (= lambda!40130 lambda!40123)))

(assert (=> d!305202 (= (inv!13234 setElem!7587) (forall!2267 (exprs!988 setElem!7587) lambda!40130))))

(declare-fun bs!256729 () Bool)

(assert (= bs!256729 d!305202))

(declare-fun m!1236187 () Bool)

(assert (=> bs!256729 m!1236187))

(assert (=> setNonEmpty!7587 d!305202))

(declare-fun d!305204 () Bool)

(declare-fun e!687016 () Bool)

(assert (=> d!305204 e!687016))

(declare-fun res!483076 () Bool)

(assert (=> d!305204 (=> (not res!483076) (not e!687016))))

(declare-fun lt!363404 () List!10328)

(assert (=> d!305204 (= res!483076 (noDuplicate!187 lt!363404))))

(assert (=> d!305204 (= lt!363404 (choose!6930 z!1122))))

(assert (=> d!305204 (= (toList!626 z!1122) lt!363404)))

(declare-fun b!1086248 () Bool)

(assert (=> b!1086248 (= e!687016 (= (content!1479 lt!363404) z!1122))))

(assert (= (and d!305204 res!483076) b!1086248))

(declare-fun m!1236189 () Bool)

(assert (=> d!305204 m!1236189))

(declare-fun m!1236191 () Bool)

(assert (=> d!305204 m!1236191))

(declare-fun m!1236193 () Bool)

(assert (=> b!1086248 m!1236193))

(assert (=> start!92544 d!305204))

(declare-fun b!1086257 () Bool)

(declare-fun e!687023 () Bool)

(declare-fun tp!325293 () Bool)

(assert (=> b!1086257 (= e!687023 tp!325293)))

(declare-fun tp!325294 () Bool)

(declare-fun e!687022 () Bool)

(declare-fun b!1086256 () Bool)

(assert (=> b!1086256 (= e!687022 (and (inv!13234 (h!15713 (t!101374 zl!316))) e!687023 tp!325294))))

(assert (=> b!1086176 (= tp!325273 e!687022)))

(assert (= b!1086256 b!1086257))

(assert (= (and b!1086176 (is-Cons!10312 (t!101374 zl!316))) b!1086256))

(declare-fun m!1236199 () Bool)

(assert (=> b!1086256 m!1236199))

(declare-fun b!1086262 () Bool)

(declare-fun e!687026 () Bool)

(declare-fun tp!325299 () Bool)

(declare-fun tp!325300 () Bool)

(assert (=> b!1086262 (= e!687026 (and tp!325299 tp!325300))))

(assert (=> b!1086171 (= tp!325272 e!687026)))

(assert (= (and b!1086171 (is-Cons!10311 (exprs!988 setElem!7587))) b!1086262))

(declare-fun b!1086267 () Bool)

(declare-fun e!687029 () Bool)

(declare-fun tp!325303 () Bool)

(assert (=> b!1086267 (= e!687029 (and tp_is_empty!5647 tp!325303))))

(assert (=> b!1086175 (= tp!325269 e!687029)))

(assert (= (and b!1086175 (is-Cons!10313 (t!101375 s!2287))) b!1086267))

(declare-fun condSetEmpty!7593 () Bool)

(assert (=> setNonEmpty!7587 (= condSetEmpty!7593 (= setRest!7587 (as set.empty (Set Context!976))))))

(declare-fun setRes!7593 () Bool)

(assert (=> setNonEmpty!7587 (= tp!325271 setRes!7593)))

(declare-fun setIsEmpty!7593 () Bool)

(assert (=> setIsEmpty!7593 setRes!7593))

(declare-fun e!687032 () Bool)

(declare-fun tp!325308 () Bool)

(declare-fun setElem!7593 () Context!976)

(declare-fun setNonEmpty!7593 () Bool)

(assert (=> setNonEmpty!7593 (= setRes!7593 (and tp!325308 (inv!13234 setElem!7593) e!687032))))

(declare-fun setRest!7593 () (Set Context!976))

(assert (=> setNonEmpty!7593 (= setRest!7587 (set.union (set.insert setElem!7593 (as set.empty (Set Context!976))) setRest!7593))))

(declare-fun b!1086272 () Bool)

(declare-fun tp!325309 () Bool)

(assert (=> b!1086272 (= e!687032 tp!325309)))

(assert (= (and setNonEmpty!7587 condSetEmpty!7593) setIsEmpty!7593))

(assert (= (and setNonEmpty!7587 (not condSetEmpty!7593)) setNonEmpty!7593))

(assert (= setNonEmpty!7593 b!1086272))

(declare-fun m!1236201 () Bool)

(assert (=> setNonEmpty!7593 m!1236201))

(declare-fun b!1086273 () Bool)

(declare-fun e!687033 () Bool)

(declare-fun tp!325310 () Bool)

(declare-fun tp!325311 () Bool)

(assert (=> b!1086273 (= e!687033 (and tp!325310 tp!325311))))

(assert (=> b!1086177 (= tp!325270 e!687033)))

(assert (= (and b!1086177 (is-Cons!10311 (exprs!988 (h!15713 zl!316)))) b!1086273))

(declare-fun b_lambda!30053 () Bool)

(assert (= b_lambda!30047 (or b!1086170 b_lambda!30053)))

(declare-fun bs!256730 () Bool)

(declare-fun d!305208 () Bool)

(assert (= bs!256730 (and d!305208 b!1086170)))

(assert (=> bs!256730 (= (dynLambda!4520 lambda!40100 lt!363398) (matchZipper!56 (set.insert lt!363398 (as set.empty (Set Context!976))) s!2287))))

(declare-fun m!1236203 () Bool)

(assert (=> bs!256730 m!1236203))

(assert (=> bs!256730 m!1236203))

(declare-fun m!1236205 () Bool)

(assert (=> bs!256730 m!1236205))

(assert (=> d!305196 d!305208))

(declare-fun b_lambda!30055 () Bool)

(assert (= b_lambda!30049 (or b!1086172 b_lambda!30055)))

(declare-fun bs!256731 () Bool)

(declare-fun d!305210 () Bool)

(assert (= bs!256731 (and d!305210 b!1086172)))

(declare-fun lostCause!225 (Context!976) Bool)

(assert (=> bs!256731 (= (dynLambda!4520 lambda!40099 lt!363369) (not (lostCause!225 lt!363369)))))

(declare-fun m!1236207 () Bool)

(assert (=> bs!256731 m!1236207))

(assert (=> d!305200 d!305210))

(push 1)

(assert (not d!305204))

(assert (not b!1086219))

(assert (not d!305184))

(assert (not b!1086221))

(assert (not d!305186))

(assert (not bs!256730))

(assert (not b!1086256))

(assert (not d!305174))

(assert (not b!1086226))

(assert (not b!1086222))

(assert (not d!305170))

(assert (not d!305182))

(assert (not b!1086272))

(assert (not b!1086267))

(assert (not b!1086273))

(assert (not setNonEmpty!7593))

(assert (not d!305178))

(assert tp_is_empty!5647)

(assert (not bs!256731))

(assert (not d!305200))

(assert (not b!1086218))

(assert (not d!305196))

(assert (not b!1086262))

(assert (not b_lambda!30055))

(assert (not b!1086257))

(assert (not d!305194))

(assert (not d!305202))

(assert (not b!1086248))

(assert (not b!1086223))

(assert (not d!305180))

(assert (not d!305172))

(assert (not b_lambda!30053))

(assert (not b!1086220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

