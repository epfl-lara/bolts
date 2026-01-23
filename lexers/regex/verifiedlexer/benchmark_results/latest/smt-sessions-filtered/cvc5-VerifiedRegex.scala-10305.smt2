; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536024 () Bool)

(assert start!536024)

(declare-fun b!5087978 () Bool)

(declare-fun e!3173243 () Bool)

(declare-fun e!3173244 () Bool)

(assert (=> b!5087978 (= e!3173243 e!3173244)))

(declare-fun res!2165996 () Bool)

(assert (=> b!5087978 (=> (not res!2165996) (not e!3173244))))

(declare-fun totalInputSize!236 () Int)

(declare-fun from!978 () Int)

(declare-fun lt!2091937 () Int)

(assert (=> b!5087978 (= res!2165996 (and (<= from!978 lt!2091937) (= totalInputSize!236 lt!2091937) (not (= from!978 totalInputSize!236))))))

(declare-datatypes ((C!28154 0))(
  ( (C!28155 (val!23685 Int)) )
))
(declare-datatypes ((List!58603 0))(
  ( (Nil!58479) (Cons!58479 (h!64927 C!28154) (t!371466 List!58603)) )
))
(declare-datatypes ((IArray!31263 0))(
  ( (IArray!31264 (innerList!15689 List!58603)) )
))
(declare-datatypes ((Conc!15601 0))(
  ( (Node!15601 (left!42872 Conc!15601) (right!43202 Conc!15601) (csize!31432 Int) (cheight!15812 Int)) (Leaf!25907 (xs!18983 IArray!31263) (csize!31433 Int)) (Empty!15601) )
))
(declare-datatypes ((BalanceConc!30392 0))(
  ( (BalanceConc!30393 (c!874224 Conc!15601)) )
))
(declare-fun totalInput!789 () BalanceConc!30392)

(declare-fun size!39140 (BalanceConc!30392) Int)

(assert (=> b!5087978 (= lt!2091937 (size!39140 totalInput!789))))

(declare-fun lt!2091936 () Int)

(declare-fun b!5087979 () Bool)

(assert (=> b!5087979 (= e!3173244 (and (> lt!2091936 0) (let ((bdg!208816 (+ 1 lt!2091936))) (or (< bdg!208816 0) (> bdg!208816 (- totalInputSize!236 from!978))))))))

(declare-datatypes ((Regex!13952 0))(
  ( (ElementMatch!13952 (c!874225 C!28154)) (Concat!22745 (regOne!28416 Regex!13952) (regTwo!28416 Regex!13952)) (EmptyExpr!13952) (Star!13952 (reg!14281 Regex!13952)) (EmptyLang!13952) (Union!13952 (regOne!28417 Regex!13952) (regTwo!28417 Regex!13952)) )
))
(declare-datatypes ((List!58604 0))(
  ( (Nil!58480) (Cons!58480 (h!64928 Regex!13952) (t!371467 List!58604)) )
))
(declare-datatypes ((Context!6754 0))(
  ( (Context!6755 (exprs!3877 List!58604)) )
))
(declare-fun z!3736 () (Set Context!6754))

(declare-fun findLongestMatchInnerZipperFastV2!258 ((Set Context!6754) Int BalanceConc!30392 Int) Int)

(declare-fun derivationStepZipper!737 ((Set Context!6754) C!28154) (Set Context!6754))

(declare-fun apply!14227 (BalanceConc!30392 Int) C!28154)

(assert (=> b!5087979 (= lt!2091936 (findLongestMatchInnerZipperFastV2!258 (derivationStepZipper!737 z!3736 (apply!14227 totalInput!789 from!978)) (+ 1 from!978) totalInput!789 totalInputSize!236))))

(declare-fun b!5087980 () Bool)

(declare-fun e!3173245 () Bool)

(declare-fun tp!1418426 () Bool)

(declare-fun inv!77754 (Conc!15601) Bool)

(assert (=> b!5087980 (= e!3173245 (and (inv!77754 (c!874224 totalInput!789)) tp!1418426))))

(declare-fun setIsEmpty!29071 () Bool)

(declare-fun setRes!29071 () Bool)

(assert (=> setIsEmpty!29071 setRes!29071))

(declare-fun setNonEmpty!29071 () Bool)

(declare-fun tp!1418424 () Bool)

(declare-fun setElem!29071 () Context!6754)

(declare-fun e!3173246 () Bool)

(declare-fun inv!77755 (Context!6754) Bool)

(assert (=> setNonEmpty!29071 (= setRes!29071 (and tp!1418424 (inv!77755 setElem!29071) e!3173246))))

(declare-fun setRest!29071 () (Set Context!6754))

(assert (=> setNonEmpty!29071 (= z!3736 (set.union (set.insert setElem!29071 (as set.empty (Set Context!6754))) setRest!29071))))

(declare-fun res!2165994 () Bool)

(assert (=> start!536024 (=> (not res!2165994) (not e!3173243))))

(assert (=> start!536024 (= res!2165994 (>= from!978 0))))

(assert (=> start!536024 e!3173243))

(assert (=> start!536024 true))

(declare-fun condSetEmpty!29071 () Bool)

(assert (=> start!536024 (= condSetEmpty!29071 (= z!3736 (as set.empty (Set Context!6754))))))

(assert (=> start!536024 setRes!29071))

(declare-fun inv!77756 (BalanceConc!30392) Bool)

(assert (=> start!536024 (and (inv!77756 totalInput!789) e!3173245)))

(declare-fun b!5087981 () Bool)

(declare-fun tp!1418425 () Bool)

(assert (=> b!5087981 (= e!3173246 tp!1418425)))

(declare-fun b!5087982 () Bool)

(declare-fun res!2165995 () Bool)

(assert (=> b!5087982 (=> (not res!2165995) (not e!3173244))))

(declare-fun lostCauseZipper!964 ((Set Context!6754)) Bool)

(assert (=> b!5087982 (= res!2165995 (not (lostCauseZipper!964 z!3736)))))

(assert (= (and start!536024 res!2165994) b!5087978))

(assert (= (and b!5087978 res!2165996) b!5087982))

(assert (= (and b!5087982 res!2165995) b!5087979))

(assert (= (and start!536024 condSetEmpty!29071) setIsEmpty!29071))

(assert (= (and start!536024 (not condSetEmpty!29071)) setNonEmpty!29071))

(assert (= setNonEmpty!29071 b!5087981))

(assert (= start!536024 b!5087980))

(declare-fun m!6145958 () Bool)

(assert (=> start!536024 m!6145958))

(declare-fun m!6145960 () Bool)

(assert (=> b!5087980 m!6145960))

(declare-fun m!6145962 () Bool)

(assert (=> b!5087979 m!6145962))

(assert (=> b!5087979 m!6145962))

(declare-fun m!6145964 () Bool)

(assert (=> b!5087979 m!6145964))

(assert (=> b!5087979 m!6145964))

(declare-fun m!6145966 () Bool)

(assert (=> b!5087979 m!6145966))

(declare-fun m!6145968 () Bool)

(assert (=> b!5087978 m!6145968))

(declare-fun m!6145970 () Bool)

(assert (=> setNonEmpty!29071 m!6145970))

(declare-fun m!6145972 () Bool)

(assert (=> b!5087982 m!6145972))

(push 1)

(assert (not start!536024))

(assert (not b!5087981))

(assert (not b!5087980))

(assert (not setNonEmpty!29071))

(assert (not b!5087978))

(assert (not b!5087982))

(assert (not b!5087979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1191010 () Bool)

(declare-fun b!5088015 () Bool)

(declare-fun d!1646942 () Bool)

(assert (= bs!1191010 (and b!5088015 d!1646942)))

(declare-fun lambda!249770 () Int)

(declare-fun lambda!249769 () Int)

(assert (=> bs!1191010 (not (= lambda!249770 lambda!249769))))

(declare-fun bs!1191011 () Bool)

(declare-fun b!5088016 () Bool)

(assert (= bs!1191011 (and b!5088016 d!1646942)))

(declare-fun lambda!249771 () Int)

(assert (=> bs!1191011 (not (= lambda!249771 lambda!249769))))

(declare-fun bs!1191012 () Bool)

(assert (= bs!1191012 (and b!5088016 b!5088015)))

(assert (=> bs!1191012 (= lambda!249771 lambda!249770)))

(declare-fun call!354603 () Bool)

(declare-datatypes ((List!58607 0))(
  ( (Nil!58483) (Cons!58483 (h!64931 Context!6754) (t!371470 List!58607)) )
))
(declare-fun lt!2091971 () List!58607)

(declare-fun c!874245 () Bool)

(declare-fun bm!354598 () Bool)

(declare-fun lt!2091968 () List!58607)

(declare-fun exists!1420 (List!58607 Int) Bool)

(assert (=> bm!354598 (= call!354603 (exists!1420 (ite c!874245 lt!2091971 lt!2091968) (ite c!874245 lambda!249770 lambda!249771)))))

(declare-fun lt!2091966 () Bool)

(declare-datatypes ((Option!14617 0))(
  ( (None!14616) (Some!14616 (v!50629 List!58603)) )
))
(declare-fun isEmpty!31686 (Option!14617) Bool)

(declare-fun getLanguageWitness!760 ((Set Context!6754)) Option!14617)

(assert (=> d!1646942 (= lt!2091966 (isEmpty!31686 (getLanguageWitness!760 z!3736)))))

(declare-fun forall!13465 ((Set Context!6754) Int) Bool)

(assert (=> d!1646942 (= lt!2091966 (forall!13465 z!3736 lambda!249769))))

(declare-datatypes ((Unit!149573 0))(
  ( (Unit!149574) )
))
(declare-fun lt!2091967 () Unit!149573)

(declare-fun e!3173273 () Unit!149573)

(assert (=> d!1646942 (= lt!2091967 e!3173273)))

(assert (=> d!1646942 (= c!874245 (not (forall!13465 z!3736 lambda!249769)))))

(assert (=> d!1646942 (= (lostCauseZipper!964 z!3736) lt!2091966)))

(declare-fun Unit!149575 () Unit!149573)

(assert (=> b!5088015 (= e!3173273 Unit!149575)))

(declare-fun call!354602 () List!58607)

(assert (=> b!5088015 (= lt!2091971 call!354602)))

(declare-fun lt!2091969 () Unit!149573)

(declare-fun lemmaNotForallThenExists!287 (List!58607 Int) Unit!149573)

(assert (=> b!5088015 (= lt!2091969 (lemmaNotForallThenExists!287 lt!2091971 lambda!249769))))

(assert (=> b!5088015 call!354603))

(declare-fun lt!2091964 () Unit!149573)

(assert (=> b!5088015 (= lt!2091964 lt!2091969)))

(declare-fun bm!354597 () Bool)

(declare-fun toList!8138 ((Set Context!6754)) List!58607)

(assert (=> bm!354597 (= call!354602 (toList!8138 z!3736))))

(declare-fun Unit!149576 () Unit!149573)

(assert (=> b!5088016 (= e!3173273 Unit!149576)))

(assert (=> b!5088016 (= lt!2091968 call!354602)))

(declare-fun lt!2091965 () Unit!149573)

(declare-fun lemmaForallThenNotExists!270 (List!58607 Int) Unit!149573)

(assert (=> b!5088016 (= lt!2091965 (lemmaForallThenNotExists!270 lt!2091968 lambda!249769))))

(assert (=> b!5088016 (not call!354603)))

(declare-fun lt!2091970 () Unit!149573)

(assert (=> b!5088016 (= lt!2091970 lt!2091965)))

(assert (= (and d!1646942 c!874245) b!5088015))

(assert (= (and d!1646942 (not c!874245)) b!5088016))

(assert (= (or b!5088015 b!5088016) bm!354597))

(assert (= (or b!5088015 b!5088016) bm!354598))

(declare-fun m!6145994 () Bool)

(assert (=> bm!354597 m!6145994))

(declare-fun m!6145996 () Bool)

(assert (=> bm!354598 m!6145996))

(declare-fun m!6145998 () Bool)

(assert (=> d!1646942 m!6145998))

(assert (=> d!1646942 m!6145998))

(declare-fun m!6146000 () Bool)

(assert (=> d!1646942 m!6146000))

(declare-fun m!6146002 () Bool)

(assert (=> d!1646942 m!6146002))

(assert (=> d!1646942 m!6146002))

(declare-fun m!6146004 () Bool)

(assert (=> b!5088015 m!6146004))

(declare-fun m!6146006 () Bool)

(assert (=> b!5088016 m!6146006))

(assert (=> b!5087982 d!1646942))

(declare-fun d!1646948 () Bool)

(declare-fun lt!2091974 () Int)

(declare-fun size!39142 (List!58603) Int)

(declare-fun list!19048 (BalanceConc!30392) List!58603)

(assert (=> d!1646948 (= lt!2091974 (size!39142 (list!19048 totalInput!789)))))

(declare-fun size!39143 (Conc!15601) Int)

(assert (=> d!1646948 (= lt!2091974 (size!39143 (c!874224 totalInput!789)))))

(assert (=> d!1646948 (= (size!39140 totalInput!789) lt!2091974)))

(declare-fun bs!1191013 () Bool)

(assert (= bs!1191013 d!1646948))

(declare-fun m!6146008 () Bool)

(assert (=> bs!1191013 m!6146008))

(assert (=> bs!1191013 m!6146008))

(declare-fun m!6146010 () Bool)

(assert (=> bs!1191013 m!6146010))

(declare-fun m!6146012 () Bool)

(assert (=> bs!1191013 m!6146012))

(assert (=> b!5087978 d!1646948))

(declare-fun d!1646950 () Bool)

(declare-fun lambda!249774 () Int)

(declare-fun forall!13466 (List!58604 Int) Bool)

(assert (=> d!1646950 (= (inv!77755 setElem!29071) (forall!13466 (exprs!3877 setElem!29071) lambda!249774))))

(declare-fun bs!1191014 () Bool)

(assert (= bs!1191014 d!1646950))

(declare-fun m!6146014 () Bool)

(assert (=> bs!1191014 m!6146014))

(assert (=> setNonEmpty!29071 d!1646950))

(declare-fun d!1646952 () Bool)

(declare-fun c!874248 () Bool)

(assert (=> d!1646952 (= c!874248 (is-Node!15601 (c!874224 totalInput!789)))))

(declare-fun e!3173278 () Bool)

(assert (=> d!1646952 (= (inv!77754 (c!874224 totalInput!789)) e!3173278)))

(declare-fun b!5088023 () Bool)

(declare-fun inv!77760 (Conc!15601) Bool)

(assert (=> b!5088023 (= e!3173278 (inv!77760 (c!874224 totalInput!789)))))

(declare-fun b!5088024 () Bool)

(declare-fun e!3173279 () Bool)

(assert (=> b!5088024 (= e!3173278 e!3173279)))

(declare-fun res!2166011 () Bool)

(assert (=> b!5088024 (= res!2166011 (not (is-Leaf!25907 (c!874224 totalInput!789))))))

(assert (=> b!5088024 (=> res!2166011 e!3173279)))

(declare-fun b!5088025 () Bool)

(declare-fun inv!77761 (Conc!15601) Bool)

(assert (=> b!5088025 (= e!3173279 (inv!77761 (c!874224 totalInput!789)))))

(assert (= (and d!1646952 c!874248) b!5088023))

(assert (= (and d!1646952 (not c!874248)) b!5088024))

(assert (= (and b!5088024 (not res!2166011)) b!5088025))

(declare-fun m!6146016 () Bool)

(assert (=> b!5088023 m!6146016))

(declare-fun m!6146018 () Bool)

(assert (=> b!5088025 m!6146018))

(assert (=> b!5087980 d!1646952))

(declare-fun d!1646954 () Bool)

(declare-fun lt!2091982 () Int)

(assert (=> d!1646954 (and (>= lt!2091982 0) (<= lt!2091982 (- totalInputSize!236 (+ 1 from!978))))))

(declare-fun e!3173292 () Int)

(assert (=> d!1646954 (= lt!2091982 e!3173292)))

(declare-fun c!874256 () Bool)

(declare-fun e!3173291 () Bool)

(assert (=> d!1646954 (= c!874256 e!3173291)))

(declare-fun res!2166017 () Bool)

(assert (=> d!1646954 (=> res!2166017 e!3173291)))

(assert (=> d!1646954 (= res!2166017 (= (+ 1 from!978) totalInputSize!236))))

(declare-fun e!3173294 () Bool)

(assert (=> d!1646954 e!3173294))

(declare-fun res!2166016 () Bool)

(assert (=> d!1646954 (=> (not res!2166016) (not e!3173294))))

(assert (=> d!1646954 (= res!2166016 (>= (+ 1 from!978) 0))))

(assert (=> d!1646954 (= (findLongestMatchInnerZipperFastV2!258 (derivationStepZipper!737 z!3736 (apply!14227 totalInput!789 from!978)) (+ 1 from!978) totalInput!789 totalInputSize!236) lt!2091982)))

(declare-fun b!5088042 () Bool)

(declare-fun e!3173290 () Int)

(assert (=> b!5088042 (= e!3173290 1)))

(declare-fun b!5088043 () Bool)

(assert (=> b!5088043 (= e!3173290 0)))

(declare-fun b!5088044 () Bool)

(assert (=> b!5088044 (= e!3173291 (lostCauseZipper!964 (derivationStepZipper!737 z!3736 (apply!14227 totalInput!789 from!978))))))

(declare-fun b!5088045 () Bool)

(declare-fun e!3173293 () Int)

(assert (=> b!5088045 (= e!3173292 e!3173293)))

(declare-fun lt!2091981 () (Set Context!6754))

(assert (=> b!5088045 (= lt!2091981 (derivationStepZipper!737 (derivationStepZipper!737 z!3736 (apply!14227 totalInput!789 from!978)) (apply!14227 totalInput!789 (+ 1 from!978))))))

(declare-fun lt!2091983 () Int)

(assert (=> b!5088045 (= lt!2091983 (findLongestMatchInnerZipperFastV2!258 lt!2091981 (+ 1 from!978 1) totalInput!789 totalInputSize!236))))

(declare-fun c!874255 () Bool)

(assert (=> b!5088045 (= c!874255 (> lt!2091983 0))))

(declare-fun b!5088046 () Bool)

(declare-fun c!874257 () Bool)

(declare-fun nullableZipper!950 ((Set Context!6754)) Bool)

(assert (=> b!5088046 (= c!874257 (nullableZipper!950 lt!2091981))))

(assert (=> b!5088046 (= e!3173293 e!3173290)))

(declare-fun b!5088047 () Bool)

(assert (=> b!5088047 (= e!3173293 (+ 1 lt!2091983))))

(declare-fun b!5088048 () Bool)

(assert (=> b!5088048 (= e!3173294 (<= (+ 1 from!978) (size!39140 totalInput!789)))))

(declare-fun b!5088049 () Bool)

(assert (=> b!5088049 (= e!3173292 0)))

(assert (= (and d!1646954 res!2166016) b!5088048))

(assert (= (and d!1646954 (not res!2166017)) b!5088044))

(assert (= (and d!1646954 c!874256) b!5088049))

(assert (= (and d!1646954 (not c!874256)) b!5088045))

(assert (= (and b!5088045 c!874255) b!5088047))

(assert (= (and b!5088045 (not c!874255)) b!5088046))

(assert (= (and b!5088046 c!874257) b!5088042))

(assert (= (and b!5088046 (not c!874257)) b!5088043))

(assert (=> b!5088044 m!6145964))

(declare-fun m!6146020 () Bool)

(assert (=> b!5088044 m!6146020))

(declare-fun m!6146022 () Bool)

(assert (=> b!5088045 m!6146022))

(assert (=> b!5088045 m!6145964))

(assert (=> b!5088045 m!6146022))

(declare-fun m!6146024 () Bool)

(assert (=> b!5088045 m!6146024))

(declare-fun m!6146026 () Bool)

(assert (=> b!5088045 m!6146026))

(declare-fun m!6146028 () Bool)

(assert (=> b!5088046 m!6146028))

(assert (=> b!5088048 m!6145968))

(assert (=> b!5087979 d!1646954))

(declare-fun d!1646956 () Bool)

(assert (=> d!1646956 true))

(declare-fun lambda!249777 () Int)

(declare-fun flatMap!318 ((Set Context!6754) Int) (Set Context!6754))

(assert (=> d!1646956 (= (derivationStepZipper!737 z!3736 (apply!14227 totalInput!789 from!978)) (flatMap!318 z!3736 lambda!249777))))

(declare-fun bs!1191015 () Bool)

(assert (= bs!1191015 d!1646956))

(declare-fun m!6146030 () Bool)

(assert (=> bs!1191015 m!6146030))

(assert (=> b!5087979 d!1646956))

(declare-fun d!1646958 () Bool)

(declare-fun lt!2091986 () C!28154)

(declare-fun apply!14229 (List!58603 Int) C!28154)

(assert (=> d!1646958 (= lt!2091986 (apply!14229 (list!19048 totalInput!789) from!978))))

(declare-fun apply!14230 (Conc!15601 Int) C!28154)

(assert (=> d!1646958 (= lt!2091986 (apply!14230 (c!874224 totalInput!789) from!978))))

(declare-fun e!3173297 () Bool)

(assert (=> d!1646958 e!3173297))

(declare-fun res!2166020 () Bool)

(assert (=> d!1646958 (=> (not res!2166020) (not e!3173297))))

(assert (=> d!1646958 (= res!2166020 (<= 0 from!978))))

(assert (=> d!1646958 (= (apply!14227 totalInput!789 from!978) lt!2091986)))

(declare-fun b!5088054 () Bool)

(assert (=> b!5088054 (= e!3173297 (< from!978 (size!39140 totalInput!789)))))

(assert (= (and d!1646958 res!2166020) b!5088054))

(assert (=> d!1646958 m!6146008))

(assert (=> d!1646958 m!6146008))

(declare-fun m!6146032 () Bool)

(assert (=> d!1646958 m!6146032))

(declare-fun m!6146034 () Bool)

(assert (=> d!1646958 m!6146034))

(assert (=> b!5088054 m!6145968))

(assert (=> b!5087979 d!1646958))

(declare-fun d!1646960 () Bool)

(declare-fun isBalanced!4453 (Conc!15601) Bool)

(assert (=> d!1646960 (= (inv!77756 totalInput!789) (isBalanced!4453 (c!874224 totalInput!789)))))

(declare-fun bs!1191016 () Bool)

(assert (= bs!1191016 d!1646960))

(declare-fun m!6146036 () Bool)

(assert (=> bs!1191016 m!6146036))

(assert (=> start!536024 d!1646960))

(declare-fun b!5088059 () Bool)

(declare-fun e!3173300 () Bool)

(declare-fun tp!1418440 () Bool)

(declare-fun tp!1418441 () Bool)

(assert (=> b!5088059 (= e!3173300 (and tp!1418440 tp!1418441))))

(assert (=> b!5087981 (= tp!1418425 e!3173300)))

(assert (= (and b!5087981 (is-Cons!58480 (exprs!3877 setElem!29071))) b!5088059))

(declare-fun condSetEmpty!29077 () Bool)

(assert (=> setNonEmpty!29071 (= condSetEmpty!29077 (= setRest!29071 (as set.empty (Set Context!6754))))))

(declare-fun setRes!29077 () Bool)

(assert (=> setNonEmpty!29071 (= tp!1418424 setRes!29077)))

(declare-fun setIsEmpty!29077 () Bool)

(assert (=> setIsEmpty!29077 setRes!29077))

(declare-fun e!3173303 () Bool)

(declare-fun setElem!29077 () Context!6754)

(declare-fun tp!1418446 () Bool)

(declare-fun setNonEmpty!29077 () Bool)

(assert (=> setNonEmpty!29077 (= setRes!29077 (and tp!1418446 (inv!77755 setElem!29077) e!3173303))))

(declare-fun setRest!29077 () (Set Context!6754))

(assert (=> setNonEmpty!29077 (= setRest!29071 (set.union (set.insert setElem!29077 (as set.empty (Set Context!6754))) setRest!29077))))

(declare-fun b!5088064 () Bool)

(declare-fun tp!1418447 () Bool)

(assert (=> b!5088064 (= e!3173303 tp!1418447)))

(assert (= (and setNonEmpty!29071 condSetEmpty!29077) setIsEmpty!29077))

(assert (= (and setNonEmpty!29071 (not condSetEmpty!29077)) setNonEmpty!29077))

(assert (= setNonEmpty!29077 b!5088064))

(declare-fun m!6146038 () Bool)

(assert (=> setNonEmpty!29077 m!6146038))

(declare-fun b!5088073 () Bool)

(declare-fun tp!1418456 () Bool)

(declare-fun tp!1418454 () Bool)

(declare-fun e!3173308 () Bool)

(assert (=> b!5088073 (= e!3173308 (and (inv!77754 (left!42872 (c!874224 totalInput!789))) tp!1418456 (inv!77754 (right!43202 (c!874224 totalInput!789))) tp!1418454))))

(declare-fun b!5088075 () Bool)

(declare-fun e!3173309 () Bool)

(declare-fun tp!1418455 () Bool)

(assert (=> b!5088075 (= e!3173309 tp!1418455)))

(declare-fun b!5088074 () Bool)

(declare-fun inv!77762 (IArray!31263) Bool)

(assert (=> b!5088074 (= e!3173308 (and (inv!77762 (xs!18983 (c!874224 totalInput!789))) e!3173309))))

(assert (=> b!5087980 (= tp!1418426 (and (inv!77754 (c!874224 totalInput!789)) e!3173308))))

(assert (= (and b!5087980 (is-Node!15601 (c!874224 totalInput!789))) b!5088073))

(assert (= b!5088074 b!5088075))

(assert (= (and b!5087980 (is-Leaf!25907 (c!874224 totalInput!789))) b!5088074))

(declare-fun m!6146040 () Bool)

(assert (=> b!5088073 m!6146040))

(declare-fun m!6146042 () Bool)

(assert (=> b!5088073 m!6146042))

(declare-fun m!6146044 () Bool)

(assert (=> b!5088074 m!6146044))

(assert (=> b!5087980 m!6145960))

(push 1)

(assert (not d!1646958))

(assert (not b!5088044))

(assert (not d!1646942))

(assert (not b!5088075))

(assert (not b!5088074))

(assert (not b!5088054))

(assert (not b!5088048))

(assert (not bm!354598))

(assert (not b!5088016))

(assert (not d!1646960))

(assert (not b!5088073))

(assert (not setNonEmpty!29077))

(assert (not b!5087980))

(assert (not b!5088064))

(assert (not b!5088023))

(assert (not d!1646956))

(assert (not b!5088059))

(assert (not d!1646948))

(assert (not b!5088015))

(assert (not bm!354597))

(assert (not b!5088045))

(assert (not d!1646950))

(assert (not b!5088046))

(assert (not b!5088025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

