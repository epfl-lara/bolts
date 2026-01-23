; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530496 () Bool)

(assert start!530496)

(declare-fun res!2140639 () Bool)

(declare-fun e!3136234 () Bool)

(assert (=> start!530496 (=> (not res!2140639) (not e!3136234))))

(declare-fun from!1212 () Int)

(assert (=> start!530496 (= res!2140639 (>= from!1212 0))))

(assert (=> start!530496 e!3136234))

(assert (=> start!530496 true))

(declare-datatypes ((C!27962 0))(
  ( (C!27963 (val!23347 Int)) )
))
(declare-datatypes ((List!58142 0))(
  ( (Nil!58018) (Cons!58018 (h!64466 C!27962) (t!370518 List!58142)) )
))
(declare-datatypes ((IArray!30811 0))(
  ( (IArray!30812 (innerList!15463 List!58142)) )
))
(declare-datatypes ((Conc!15375 0))(
  ( (Node!15375 (left!42421 Conc!15375) (right!42751 Conc!15375) (csize!30980 Int) (cheight!15586 Int)) (Leaf!25512 (xs!18701 IArray!30811) (csize!30981 Int)) (Empty!15375) )
))
(declare-datatypes ((BalanceConc!30180 0))(
  ( (BalanceConc!30181 (c!857983 Conc!15375)) )
))
(declare-fun totalInput!1125 () BalanceConc!30180)

(declare-fun e!3136236 () Bool)

(declare-fun inv!76368 (BalanceConc!30180) Bool)

(assert (=> start!530496 (and (inv!76368 totalInput!1125) e!3136236)))

(declare-fun condSetEmpty!28669 () Bool)

(declare-datatypes ((Regex!13856 0))(
  ( (ElementMatch!13856 (c!857984 C!27962)) (Concat!22649 (regOne!28224 Regex!13856) (regTwo!28224 Regex!13856)) (EmptyExpr!13856) (Star!13856 (reg!14185 Regex!13856)) (EmptyLang!13856) (Union!13856 (regOne!28225 Regex!13856) (regTwo!28225 Regex!13856)) )
))
(declare-datatypes ((List!58143 0))(
  ( (Nil!58019) (Cons!58019 (h!64467 Regex!13856) (t!370519 List!58143)) )
))
(declare-datatypes ((Context!6562 0))(
  ( (Context!6563 (exprs!3781 List!58143)) )
))
(declare-fun z!4710 () (Set Context!6562))

(assert (=> start!530496 (= condSetEmpty!28669 (= z!4710 (as set.empty (Set Context!6562))))))

(declare-fun setRes!28669 () Bool)

(assert (=> start!530496 setRes!28669))

(declare-fun b!5020301 () Bool)

(declare-fun tp!1407753 () Bool)

(declare-fun inv!76369 (Conc!15375) Bool)

(assert (=> b!5020301 (= e!3136236 (and (inv!76369 (c!857983 totalInput!1125)) tp!1407753))))

(declare-fun setNonEmpty!28669 () Bool)

(declare-fun setElem!28669 () Context!6562)

(declare-fun tp!1407755 () Bool)

(declare-fun e!3136235 () Bool)

(declare-fun inv!76370 (Context!6562) Bool)

(assert (=> setNonEmpty!28669 (= setRes!28669 (and tp!1407755 (inv!76370 setElem!28669) e!3136235))))

(declare-fun setRest!28669 () (Set Context!6562))

(assert (=> setNonEmpty!28669 (= z!4710 (set.union (set.insert setElem!28669 (as set.empty (Set Context!6562))) setRest!28669))))

(declare-fun b!5020302 () Bool)

(declare-fun res!2140644 () Bool)

(declare-fun e!3136232 () Bool)

(assert (=> b!5020302 (=> (not res!2140644) (not e!3136232))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5020302 (= res!2140644 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5020303 () Bool)

(declare-fun lt!2077727 () Int)

(assert (=> b!5020303 (= e!3136232 (not (or (>= from!1212 lt!2077727) (and (>= (- knownSize!24 1) 0) (<= (- knownSize!24 1) (- (- lt!2077727 from!1212) 1))))))))

(declare-fun lt!2077729 () List!58142)

(declare-fun size!38603 (List!58142) Int)

(assert (=> b!5020303 (= lt!2077727 (size!38603 lt!2077729))))

(declare-fun lt!2077728 () List!58142)

(declare-fun lt!2077730 () Int)

(declare-fun apply!14050 (List!58142 Int) C!27962)

(declare-fun take!715 (List!58142 Int) List!58142)

(declare-fun drop!2519 (List!58142 Int) List!58142)

(assert (=> b!5020303 (= (Cons!58018 (apply!14050 lt!2077729 from!1212) (take!715 (drop!2519 lt!2077729 (+ 1 from!1212)) lt!2077730)) (take!715 lt!2077728 (+ 1 lt!2077730)))))

(declare-datatypes ((Unit!149221 0))(
  ( (Unit!149222) )
))
(declare-fun lt!2077725 () Unit!149221)

(declare-fun lemmaDropTakeAddOneLeft!61 (List!58142 Int Int) Unit!149221)

(assert (=> b!5020303 (= lt!2077725 (lemmaDropTakeAddOneLeft!61 lt!2077729 from!1212 lt!2077730))))

(declare-fun lt!2077731 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!178 ((Set Context!6562) Int BalanceConc!30180 Int) Int)

(declare-fun derivationStepZipper!662 ((Set Context!6562) C!27962) (Set Context!6562))

(declare-fun apply!14051 (BalanceConc!30180 Int) C!27962)

(assert (=> b!5020303 (= lt!2077730 (findLongestMatchInnerZipperFastV2!178 (derivationStepZipper!662 z!4710 (apply!14051 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077731))))

(declare-fun b!5020304 () Bool)

(declare-fun e!3136233 () Bool)

(assert (=> b!5020304 (= e!3136233 e!3136232)))

(declare-fun res!2140642 () Bool)

(assert (=> b!5020304 (=> (not res!2140642) (not e!3136232))))

(declare-fun lt!2077726 () List!58142)

(declare-fun matchZipper!624 ((Set Context!6562) List!58142) Bool)

(assert (=> b!5020304 (= res!2140642 (matchZipper!624 z!4710 lt!2077726))))

(assert (=> b!5020304 (= lt!2077726 (take!715 lt!2077728 knownSize!24))))

(assert (=> b!5020304 (= lt!2077728 (drop!2519 lt!2077729 from!1212))))

(declare-fun list!18711 (BalanceConc!30180) List!58142)

(assert (=> b!5020304 (= lt!2077729 (list!18711 totalInput!1125))))

(declare-fun b!5020305 () Bool)

(declare-fun res!2140643 () Bool)

(assert (=> b!5020305 (=> (not res!2140643) (not e!3136232))))

(assert (=> b!5020305 (= res!2140643 (= (size!38603 lt!2077726) knownSize!24))))

(declare-fun b!5020306 () Bool)

(declare-fun res!2140641 () Bool)

(assert (=> b!5020306 (=> (not res!2140641) (not e!3136232))))

(assert (=> b!5020306 (= res!2140641 (not (= from!1212 lt!2077731)))))

(declare-fun b!5020307 () Bool)

(declare-fun tp!1407754 () Bool)

(assert (=> b!5020307 (= e!3136235 tp!1407754)))

(declare-fun b!5020308 () Bool)

(assert (=> b!5020308 (= e!3136234 e!3136233)))

(declare-fun res!2140638 () Bool)

(assert (=> b!5020308 (=> (not res!2140638) (not e!3136233))))

(assert (=> b!5020308 (= res!2140638 (and (<= from!1212 lt!2077731) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077731 from!1212))))))

(declare-fun size!38604 (BalanceConc!30180) Int)

(assert (=> b!5020308 (= lt!2077731 (size!38604 totalInput!1125))))

(declare-fun setIsEmpty!28669 () Bool)

(assert (=> setIsEmpty!28669 setRes!28669))

(declare-fun b!5020309 () Bool)

(declare-fun res!2140640 () Bool)

(assert (=> b!5020309 (=> (not res!2140640) (not e!3136232))))

(declare-fun lostCauseZipper!870 ((Set Context!6562)) Bool)

(assert (=> b!5020309 (= res!2140640 (not (lostCauseZipper!870 z!4710)))))

(assert (= (and start!530496 res!2140639) b!5020308))

(assert (= (and b!5020308 res!2140638) b!5020304))

(assert (= (and b!5020304 res!2140642) b!5020302))

(assert (= (and b!5020302 res!2140644) b!5020305))

(assert (= (and b!5020305 res!2140643) b!5020309))

(assert (= (and b!5020309 res!2140640) b!5020306))

(assert (= (and b!5020306 res!2140641) b!5020303))

(assert (= start!530496 b!5020301))

(assert (= (and start!530496 condSetEmpty!28669) setIsEmpty!28669))

(assert (= (and start!530496 (not condSetEmpty!28669)) setNonEmpty!28669))

(assert (= setNonEmpty!28669 b!5020307))

(declare-fun m!6055238 () Bool)

(assert (=> start!530496 m!6055238))

(declare-fun m!6055240 () Bool)

(assert (=> b!5020309 m!6055240))

(declare-fun m!6055242 () Bool)

(assert (=> b!5020308 m!6055242))

(declare-fun m!6055244 () Bool)

(assert (=> b!5020305 m!6055244))

(declare-fun m!6055246 () Bool)

(assert (=> setNonEmpty!28669 m!6055246))

(declare-fun m!6055248 () Bool)

(assert (=> b!5020301 m!6055248))

(declare-fun m!6055250 () Bool)

(assert (=> b!5020303 m!6055250))

(declare-fun m!6055252 () Bool)

(assert (=> b!5020303 m!6055252))

(assert (=> b!5020303 m!6055250))

(assert (=> b!5020303 m!6055252))

(declare-fun m!6055254 () Bool)

(assert (=> b!5020303 m!6055254))

(declare-fun m!6055256 () Bool)

(assert (=> b!5020303 m!6055256))

(declare-fun m!6055258 () Bool)

(assert (=> b!5020303 m!6055258))

(assert (=> b!5020303 m!6055256))

(declare-fun m!6055260 () Bool)

(assert (=> b!5020303 m!6055260))

(declare-fun m!6055262 () Bool)

(assert (=> b!5020303 m!6055262))

(declare-fun m!6055264 () Bool)

(assert (=> b!5020303 m!6055264))

(declare-fun m!6055266 () Bool)

(assert (=> b!5020303 m!6055266))

(declare-fun m!6055268 () Bool)

(assert (=> b!5020304 m!6055268))

(declare-fun m!6055270 () Bool)

(assert (=> b!5020304 m!6055270))

(declare-fun m!6055272 () Bool)

(assert (=> b!5020304 m!6055272))

(declare-fun m!6055274 () Bool)

(assert (=> b!5020304 m!6055274))

(push 1)

(assert (not b!5020305))

(assert (not b!5020303))

(assert (not b!5020301))

(assert (not setNonEmpty!28669))

(assert (not start!530496))

(assert (not b!5020307))

(assert (not b!5020304))

(assert (not b!5020309))

(assert (not b!5020308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615949 () Bool)

(declare-fun lt!2077755 () Int)

(assert (=> d!1615949 (= lt!2077755 (size!38603 (list!18711 totalInput!1125)))))

(declare-fun size!38607 (Conc!15375) Int)

(assert (=> d!1615949 (= lt!2077755 (size!38607 (c!857983 totalInput!1125)))))

(assert (=> d!1615949 (= (size!38604 totalInput!1125) lt!2077755)))

(declare-fun bs!1187175 () Bool)

(assert (= bs!1187175 d!1615949))

(assert (=> bs!1187175 m!6055274))

(assert (=> bs!1187175 m!6055274))

(declare-fun m!6055314 () Bool)

(assert (=> bs!1187175 m!6055314))

(declare-fun m!6055316 () Bool)

(assert (=> bs!1187175 m!6055316))

(assert (=> b!5020308 d!1615949))

(declare-fun d!1615953 () Bool)

(declare-fun lt!2077758 () C!27962)

(assert (=> d!1615953 (= lt!2077758 (apply!14050 (list!18711 totalInput!1125) from!1212))))

(declare-fun apply!14054 (Conc!15375 Int) C!27962)

(assert (=> d!1615953 (= lt!2077758 (apply!14054 (c!857983 totalInput!1125) from!1212))))

(declare-fun e!3136254 () Bool)

(assert (=> d!1615953 e!3136254))

(declare-fun res!2140668 () Bool)

(assert (=> d!1615953 (=> (not res!2140668) (not e!3136254))))

(assert (=> d!1615953 (= res!2140668 (<= 0 from!1212))))

(assert (=> d!1615953 (= (apply!14051 totalInput!1125 from!1212) lt!2077758)))

(declare-fun b!5020339 () Bool)

(assert (=> b!5020339 (= e!3136254 (< from!1212 (size!38604 totalInput!1125)))))

(assert (= (and d!1615953 res!2140668) b!5020339))

(assert (=> d!1615953 m!6055274))

(assert (=> d!1615953 m!6055274))

(declare-fun m!6055318 () Bool)

(assert (=> d!1615953 m!6055318))

(declare-fun m!6055320 () Bool)

(assert (=> d!1615953 m!6055320))

(assert (=> b!5020339 m!6055242))

(assert (=> b!5020303 d!1615953))

(declare-fun b!5020368 () Bool)

(declare-fun e!3136273 () List!58142)

(assert (=> b!5020368 (= e!3136273 Nil!58018)))

(declare-fun b!5020369 () Bool)

(declare-fun e!3136271 () Int)

(assert (=> b!5020369 (= e!3136271 (size!38603 (drop!2519 lt!2077729 (+ 1 from!1212))))))

(declare-fun d!1615955 () Bool)

(declare-fun e!3136274 () Bool)

(assert (=> d!1615955 e!3136274))

(declare-fun res!2140673 () Bool)

(assert (=> d!1615955 (=> (not res!2140673) (not e!3136274))))

(declare-fun lt!2077763 () List!58142)

(declare-fun content!10282 (List!58142) (Set C!27962))

(assert (=> d!1615955 (= res!2140673 (set.subset (content!10282 lt!2077763) (content!10282 (drop!2519 lt!2077729 (+ 1 from!1212)))))))

(assert (=> d!1615955 (= lt!2077763 e!3136273)))

(declare-fun c!858000 () Bool)

(assert (=> d!1615955 (= c!858000 (or (is-Nil!58018 (drop!2519 lt!2077729 (+ 1 from!1212))) (<= lt!2077730 0)))))

(assert (=> d!1615955 (= (take!715 (drop!2519 lt!2077729 (+ 1 from!1212)) lt!2077730) lt!2077763)))

(declare-fun b!5020370 () Bool)

(declare-fun e!3136272 () Int)

(assert (=> b!5020370 (= e!3136272 e!3136271)))

(declare-fun c!857999 () Bool)

(assert (=> b!5020370 (= c!857999 (>= lt!2077730 (size!38603 (drop!2519 lt!2077729 (+ 1 from!1212)))))))

(declare-fun b!5020371 () Bool)

(assert (=> b!5020371 (= e!3136274 (= (size!38603 lt!2077763) e!3136272))))

(declare-fun c!858001 () Bool)

(assert (=> b!5020371 (= c!858001 (<= lt!2077730 0))))

(declare-fun b!5020372 () Bool)

(assert (=> b!5020372 (= e!3136273 (Cons!58018 (h!64466 (drop!2519 lt!2077729 (+ 1 from!1212))) (take!715 (t!370518 (drop!2519 lt!2077729 (+ 1 from!1212))) (- lt!2077730 1))))))

(declare-fun b!5020373 () Bool)

(assert (=> b!5020373 (= e!3136272 0)))

(declare-fun b!5020374 () Bool)

(assert (=> b!5020374 (= e!3136271 lt!2077730)))

(assert (= (and d!1615955 c!858000) b!5020368))

(assert (= (and d!1615955 (not c!858000)) b!5020372))

(assert (= (and d!1615955 res!2140673) b!5020371))

(assert (= (and b!5020371 c!858001) b!5020373))

(assert (= (and b!5020371 (not c!858001)) b!5020370))

(assert (= (and b!5020370 c!857999) b!5020369))

(assert (= (and b!5020370 (not c!857999)) b!5020374))

(declare-fun m!6055322 () Bool)

(assert (=> b!5020371 m!6055322))

(assert (=> b!5020370 m!6055256))

(declare-fun m!6055324 () Bool)

(assert (=> b!5020370 m!6055324))

(declare-fun m!6055326 () Bool)

(assert (=> b!5020372 m!6055326))

(declare-fun m!6055328 () Bool)

(assert (=> d!1615955 m!6055328))

(assert (=> d!1615955 m!6055256))

(declare-fun m!6055330 () Bool)

(assert (=> d!1615955 m!6055330))

(assert (=> b!5020369 m!6055256))

(assert (=> b!5020369 m!6055324))

(assert (=> b!5020303 d!1615955))

(declare-fun d!1615957 () Bool)

(assert (=> d!1615957 (= (Cons!58018 (apply!14050 lt!2077729 from!1212) (take!715 (drop!2519 lt!2077729 (+ from!1212 1)) lt!2077730)) (take!715 (drop!2519 lt!2077729 from!1212) (+ lt!2077730 1)))))

(declare-fun lt!2077767 () Unit!149221)

(declare-fun choose!37135 (List!58142 Int Int) Unit!149221)

(assert (=> d!1615957 (= lt!2077767 (choose!37135 lt!2077729 from!1212 lt!2077730))))

(declare-fun e!3136281 () Bool)

(assert (=> d!1615957 e!3136281))

(declare-fun res!2140677 () Bool)

(assert (=> d!1615957 (=> (not res!2140677) (not e!3136281))))

(assert (=> d!1615957 (= res!2140677 (>= from!1212 0))))

(assert (=> d!1615957 (= (lemmaDropTakeAddOneLeft!61 lt!2077729 from!1212 lt!2077730) lt!2077767)))

(declare-fun b!5020384 () Bool)

(assert (=> b!5020384 (= e!3136281 (< from!1212 (size!38603 lt!2077729)))))

(assert (= (and d!1615957 res!2140677) b!5020384))

(assert (=> d!1615957 m!6055272))

(declare-fun m!6055342 () Bool)

(assert (=> d!1615957 m!6055342))

(assert (=> d!1615957 m!6055264))

(assert (=> d!1615957 m!6055272))

(declare-fun m!6055344 () Bool)

(assert (=> d!1615957 m!6055344))

(declare-fun m!6055346 () Bool)

(assert (=> d!1615957 m!6055346))

(assert (=> d!1615957 m!6055342))

(declare-fun m!6055348 () Bool)

(assert (=> d!1615957 m!6055348))

(assert (=> b!5020384 m!6055262))

(assert (=> b!5020303 d!1615957))

(declare-fun b!5020404 () Bool)

(declare-fun e!3136296 () Int)

(assert (=> b!5020404 (= e!3136296 0)))

(declare-fun b!5020405 () Bool)

(declare-fun e!3136299 () Int)

(declare-fun lt!2077778 () Int)

(assert (=> b!5020405 (= e!3136299 (+ 1 lt!2077778))))

(declare-fun b!5020406 () Bool)

(declare-fun c!858011 () Bool)

(declare-fun lt!2077779 () (Set Context!6562))

(declare-fun nullableZipper!905 ((Set Context!6562)) Bool)

(assert (=> b!5020406 (= c!858011 (nullableZipper!905 lt!2077779))))

(assert (=> b!5020406 (= e!3136299 e!3136296)))

(declare-fun b!5020407 () Bool)

(declare-fun e!3136295 () Int)

(assert (=> b!5020407 (= e!3136295 0)))

(declare-fun d!1615961 () Bool)

(declare-fun lt!2077777 () Int)

(assert (=> d!1615961 (and (>= lt!2077777 0) (<= lt!2077777 (- lt!2077731 (+ 1 from!1212))))))

(assert (=> d!1615961 (= lt!2077777 e!3136295)))

(declare-fun c!858012 () Bool)

(declare-fun e!3136298 () Bool)

(assert (=> d!1615961 (= c!858012 e!3136298)))

(declare-fun res!2140686 () Bool)

(assert (=> d!1615961 (=> res!2140686 e!3136298)))

(assert (=> d!1615961 (= res!2140686 (= (+ 1 from!1212) lt!2077731))))

(declare-fun e!3136297 () Bool)

(assert (=> d!1615961 e!3136297))

(declare-fun res!2140685 () Bool)

(assert (=> d!1615961 (=> (not res!2140685) (not e!3136297))))

(assert (=> d!1615961 (= res!2140685 (>= (+ 1 from!1212) 0))))

(assert (=> d!1615961 (= (findLongestMatchInnerZipperFastV2!178 (derivationStepZipper!662 z!4710 (apply!14051 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077731) lt!2077777)))

(declare-fun b!5020408 () Bool)

(assert (=> b!5020408 (= e!3136295 e!3136299)))

(assert (=> b!5020408 (= lt!2077779 (derivationStepZipper!662 (derivationStepZipper!662 z!4710 (apply!14051 totalInput!1125 from!1212)) (apply!14051 totalInput!1125 (+ 1 from!1212))))))

(assert (=> b!5020408 (= lt!2077778 (findLongestMatchInnerZipperFastV2!178 lt!2077779 (+ 1 from!1212 1) totalInput!1125 lt!2077731))))

(declare-fun c!858013 () Bool)

(assert (=> b!5020408 (= c!858013 (> lt!2077778 0))))

(declare-fun b!5020409 () Bool)

(assert (=> b!5020409 (= e!3136296 1)))

(declare-fun b!5020410 () Bool)

(assert (=> b!5020410 (= e!3136298 (lostCauseZipper!870 (derivationStepZipper!662 z!4710 (apply!14051 totalInput!1125 from!1212))))))

(declare-fun b!5020411 () Bool)

(assert (=> b!5020411 (= e!3136297 (<= (+ 1 from!1212) (size!38604 totalInput!1125)))))

(assert (= (and d!1615961 res!2140685) b!5020411))

(assert (= (and d!1615961 (not res!2140686)) b!5020410))

(assert (= (and d!1615961 c!858012) b!5020407))

(assert (= (and d!1615961 (not c!858012)) b!5020408))

(assert (= (and b!5020408 c!858013) b!5020405))

(assert (= (and b!5020408 (not c!858013)) b!5020406))

(assert (= (and b!5020406 c!858011) b!5020409))

(assert (= (and b!5020406 (not c!858011)) b!5020404))

(declare-fun m!6055358 () Bool)

(assert (=> b!5020406 m!6055358))

(declare-fun m!6055360 () Bool)

(assert (=> b!5020408 m!6055360))

(assert (=> b!5020408 m!6055252))

(assert (=> b!5020408 m!6055360))

(declare-fun m!6055362 () Bool)

(assert (=> b!5020408 m!6055362))

(declare-fun m!6055364 () Bool)

(assert (=> b!5020408 m!6055364))

(assert (=> b!5020410 m!6055252))

(declare-fun m!6055366 () Bool)

(assert (=> b!5020410 m!6055366))

(assert (=> b!5020411 m!6055242))

(assert (=> b!5020303 d!1615961))

(declare-fun bm!350573 () Bool)

(declare-fun call!350578 () Int)

(assert (=> bm!350573 (= call!350578 (size!38603 lt!2077729))))

(declare-fun b!5020430 () Bool)

(declare-fun e!3136311 () List!58142)

(declare-fun e!3136314 () List!58142)

(assert (=> b!5020430 (= e!3136311 e!3136314)))

(declare-fun c!858023 () Bool)

(assert (=> b!5020430 (= c!858023 (<= (+ 1 from!1212) 0))))

(declare-fun b!5020431 () Bool)

(declare-fun e!3136310 () Bool)

(declare-fun lt!2077782 () List!58142)

(declare-fun e!3136313 () Int)

(assert (=> b!5020431 (= e!3136310 (= (size!38603 lt!2077782) e!3136313))))

(declare-fun c!858024 () Bool)

(assert (=> b!5020431 (= c!858024 (<= (+ 1 from!1212) 0))))

(declare-fun b!5020432 () Bool)

(assert (=> b!5020432 (= e!3136311 Nil!58018)))

(declare-fun b!5020433 () Bool)

(assert (=> b!5020433 (= e!3136313 call!350578)))

(declare-fun b!5020434 () Bool)

(declare-fun e!3136312 () Int)

(assert (=> b!5020434 (= e!3136312 (- call!350578 (+ 1 from!1212)))))

(declare-fun b!5020435 () Bool)

(assert (=> b!5020435 (= e!3136313 e!3136312)))

(declare-fun c!858022 () Bool)

(assert (=> b!5020435 (= c!858022 (>= (+ 1 from!1212) call!350578))))

(declare-fun b!5020436 () Bool)

(assert (=> b!5020436 (= e!3136314 lt!2077729)))

(declare-fun b!5020437 () Bool)

(assert (=> b!5020437 (= e!3136314 (drop!2519 (t!370518 lt!2077729) (- (+ 1 from!1212) 1)))))

(declare-fun b!5020438 () Bool)

(assert (=> b!5020438 (= e!3136312 0)))

(declare-fun d!1615965 () Bool)

(assert (=> d!1615965 e!3136310))

(declare-fun res!2140689 () Bool)

(assert (=> d!1615965 (=> (not res!2140689) (not e!3136310))))

(assert (=> d!1615965 (= res!2140689 (set.subset (content!10282 lt!2077782) (content!10282 lt!2077729)))))

(assert (=> d!1615965 (= lt!2077782 e!3136311)))

(declare-fun c!858025 () Bool)

(assert (=> d!1615965 (= c!858025 (is-Nil!58018 lt!2077729))))

(assert (=> d!1615965 (= (drop!2519 lt!2077729 (+ 1 from!1212)) lt!2077782)))

(assert (= (and d!1615965 c!858025) b!5020432))

(assert (= (and d!1615965 (not c!858025)) b!5020430))

(assert (= (and b!5020430 c!858023) b!5020436))

(assert (= (and b!5020430 (not c!858023)) b!5020437))

(assert (= (and d!1615965 res!2140689) b!5020431))

(assert (= (and b!5020431 c!858024) b!5020433))

(assert (= (and b!5020431 (not c!858024)) b!5020435))

(assert (= (and b!5020435 c!858022) b!5020438))

(assert (= (and b!5020435 (not c!858022)) b!5020434))

(assert (= (or b!5020433 b!5020435 b!5020434) bm!350573))

(assert (=> bm!350573 m!6055262))

(declare-fun m!6055368 () Bool)

(assert (=> b!5020431 m!6055368))

(declare-fun m!6055370 () Bool)

(assert (=> b!5020437 m!6055370))

(declare-fun m!6055372 () Bool)

(assert (=> d!1615965 m!6055372))

(declare-fun m!6055374 () Bool)

(assert (=> d!1615965 m!6055374))

(assert (=> b!5020303 d!1615965))

(declare-fun b!5020439 () Bool)

(declare-fun e!3136317 () List!58142)

(assert (=> b!5020439 (= e!3136317 Nil!58018)))

(declare-fun b!5020440 () Bool)

(declare-fun e!3136315 () Int)

(assert (=> b!5020440 (= e!3136315 (size!38603 lt!2077728))))

(declare-fun d!1615967 () Bool)

(declare-fun e!3136318 () Bool)

(assert (=> d!1615967 e!3136318))

(declare-fun res!2140690 () Bool)

(assert (=> d!1615967 (=> (not res!2140690) (not e!3136318))))

(declare-fun lt!2077783 () List!58142)

(assert (=> d!1615967 (= res!2140690 (set.subset (content!10282 lt!2077783) (content!10282 lt!2077728)))))

(assert (=> d!1615967 (= lt!2077783 e!3136317)))

(declare-fun c!858027 () Bool)

(assert (=> d!1615967 (= c!858027 (or (is-Nil!58018 lt!2077728) (<= (+ 1 lt!2077730) 0)))))

(assert (=> d!1615967 (= (take!715 lt!2077728 (+ 1 lt!2077730)) lt!2077783)))

(declare-fun b!5020441 () Bool)

(declare-fun e!3136316 () Int)

(assert (=> b!5020441 (= e!3136316 e!3136315)))

(declare-fun c!858026 () Bool)

(assert (=> b!5020441 (= c!858026 (>= (+ 1 lt!2077730) (size!38603 lt!2077728)))))

(declare-fun b!5020442 () Bool)

(assert (=> b!5020442 (= e!3136318 (= (size!38603 lt!2077783) e!3136316))))

(declare-fun c!858028 () Bool)

(assert (=> b!5020442 (= c!858028 (<= (+ 1 lt!2077730) 0))))

(declare-fun b!5020443 () Bool)

(assert (=> b!5020443 (= e!3136317 (Cons!58018 (h!64466 lt!2077728) (take!715 (t!370518 lt!2077728) (- (+ 1 lt!2077730) 1))))))

(declare-fun b!5020444 () Bool)

(assert (=> b!5020444 (= e!3136316 0)))

(declare-fun b!5020445 () Bool)

(assert (=> b!5020445 (= e!3136315 (+ 1 lt!2077730))))

(assert (= (and d!1615967 c!858027) b!5020439))

(assert (= (and d!1615967 (not c!858027)) b!5020443))

(assert (= (and d!1615967 res!2140690) b!5020442))

(assert (= (and b!5020442 c!858028) b!5020444))

(assert (= (and b!5020442 (not c!858028)) b!5020441))

(assert (= (and b!5020441 c!858026) b!5020440))

(assert (= (and b!5020441 (not c!858026)) b!5020445))

(declare-fun m!6055376 () Bool)

(assert (=> b!5020442 m!6055376))

(declare-fun m!6055378 () Bool)

(assert (=> b!5020441 m!6055378))

(declare-fun m!6055380 () Bool)

(assert (=> b!5020443 m!6055380))

(declare-fun m!6055382 () Bool)

(assert (=> d!1615967 m!6055382))

(declare-fun m!6055384 () Bool)

(assert (=> d!1615967 m!6055384))

(assert (=> b!5020440 m!6055378))

(assert (=> b!5020303 d!1615967))

(declare-fun d!1615969 () Bool)

(declare-fun lt!2077786 () C!27962)

(declare-fun contains!19563 (List!58142 C!27962) Bool)

(assert (=> d!1615969 (contains!19563 lt!2077729 lt!2077786)))

(declare-fun e!3136323 () C!27962)

(assert (=> d!1615969 (= lt!2077786 e!3136323)))

(declare-fun c!858031 () Bool)

(assert (=> d!1615969 (= c!858031 (= from!1212 0))))

(declare-fun e!3136324 () Bool)

(assert (=> d!1615969 e!3136324))

(declare-fun res!2140693 () Bool)

(assert (=> d!1615969 (=> (not res!2140693) (not e!3136324))))

(assert (=> d!1615969 (= res!2140693 (<= 0 from!1212))))

(assert (=> d!1615969 (= (apply!14050 lt!2077729 from!1212) lt!2077786)))

(declare-fun b!5020452 () Bool)

(assert (=> b!5020452 (= e!3136324 (< from!1212 (size!38603 lt!2077729)))))

(declare-fun b!5020453 () Bool)

(declare-fun head!10759 (List!58142) C!27962)

(assert (=> b!5020453 (= e!3136323 (head!10759 lt!2077729))))

(declare-fun b!5020454 () Bool)

(declare-fun tail!9892 (List!58142) List!58142)

(assert (=> b!5020454 (= e!3136323 (apply!14050 (tail!9892 lt!2077729) (- from!1212 1)))))

(assert (= (and d!1615969 res!2140693) b!5020452))

(assert (= (and d!1615969 c!858031) b!5020453))

(assert (= (and d!1615969 (not c!858031)) b!5020454))

(declare-fun m!6055386 () Bool)

(assert (=> d!1615969 m!6055386))

(assert (=> b!5020452 m!6055262))

(declare-fun m!6055388 () Bool)

(assert (=> b!5020453 m!6055388))

(declare-fun m!6055390 () Bool)

(assert (=> b!5020454 m!6055390))

(assert (=> b!5020454 m!6055390))

(declare-fun m!6055392 () Bool)

(assert (=> b!5020454 m!6055392))

(assert (=> b!5020303 d!1615969))

(declare-fun d!1615971 () Bool)

(assert (=> d!1615971 true))

(declare-fun lambda!248813 () Int)

(declare-fun flatMap!291 ((Set Context!6562) Int) (Set Context!6562))

(assert (=> d!1615971 (= (derivationStepZipper!662 z!4710 (apply!14051 totalInput!1125 from!1212)) (flatMap!291 z!4710 lambda!248813))))

(declare-fun bs!1187176 () Bool)

(assert (= bs!1187176 d!1615971))

(declare-fun m!6055416 () Bool)

(assert (=> bs!1187176 m!6055416))

(assert (=> b!5020303 d!1615971))

(declare-fun d!1615979 () Bool)

(declare-fun lt!2077804 () Int)

(assert (=> d!1615979 (>= lt!2077804 0)))

(declare-fun e!3136351 () Int)

(assert (=> d!1615979 (= lt!2077804 e!3136351)))

(declare-fun c!858050 () Bool)

(assert (=> d!1615979 (= c!858050 (is-Nil!58018 lt!2077729))))

(assert (=> d!1615979 (= (size!38603 lt!2077729) lt!2077804)))

(declare-fun b!5020497 () Bool)

(assert (=> b!5020497 (= e!3136351 0)))

(declare-fun b!5020498 () Bool)

(assert (=> b!5020498 (= e!3136351 (+ 1 (size!38603 (t!370518 lt!2077729))))))

(assert (= (and d!1615979 c!858050) b!5020497))

(assert (= (and d!1615979 (not c!858050)) b!5020498))

(declare-fun m!6055418 () Bool)

(assert (=> b!5020498 m!6055418))

(assert (=> b!5020303 d!1615979))

(declare-fun d!1615981 () Bool)

(declare-fun c!858053 () Bool)

(declare-fun isEmpty!31421 (List!58142) Bool)

(assert (=> d!1615981 (= c!858053 (isEmpty!31421 lt!2077726))))

(declare-fun e!3136354 () Bool)

(assert (=> d!1615981 (= (matchZipper!624 z!4710 lt!2077726) e!3136354)))

(declare-fun b!5020503 () Bool)

(assert (=> b!5020503 (= e!3136354 (nullableZipper!905 z!4710))))

(declare-fun b!5020504 () Bool)

(assert (=> b!5020504 (= e!3136354 (matchZipper!624 (derivationStepZipper!662 z!4710 (head!10759 lt!2077726)) (tail!9892 lt!2077726)))))

(assert (= (and d!1615981 c!858053) b!5020503))

(assert (= (and d!1615981 (not c!858053)) b!5020504))

(declare-fun m!6055420 () Bool)

(assert (=> d!1615981 m!6055420))

(declare-fun m!6055422 () Bool)

(assert (=> b!5020503 m!6055422))

(declare-fun m!6055424 () Bool)

(assert (=> b!5020504 m!6055424))

(assert (=> b!5020504 m!6055424))

(declare-fun m!6055426 () Bool)

(assert (=> b!5020504 m!6055426))

(declare-fun m!6055428 () Bool)

(assert (=> b!5020504 m!6055428))

(assert (=> b!5020504 m!6055426))

(assert (=> b!5020504 m!6055428))

(declare-fun m!6055430 () Bool)

(assert (=> b!5020504 m!6055430))

(assert (=> b!5020304 d!1615981))

(declare-fun b!5020505 () Bool)

(declare-fun e!3136357 () List!58142)

(assert (=> b!5020505 (= e!3136357 Nil!58018)))

(declare-fun b!5020506 () Bool)

(declare-fun e!3136355 () Int)

(assert (=> b!5020506 (= e!3136355 (size!38603 lt!2077728))))

(declare-fun d!1615983 () Bool)

(declare-fun e!3136358 () Bool)

(assert (=> d!1615983 e!3136358))

(declare-fun res!2140706 () Bool)

(assert (=> d!1615983 (=> (not res!2140706) (not e!3136358))))

(declare-fun lt!2077805 () List!58142)

(assert (=> d!1615983 (= res!2140706 (set.subset (content!10282 lt!2077805) (content!10282 lt!2077728)))))

(assert (=> d!1615983 (= lt!2077805 e!3136357)))

(declare-fun c!858055 () Bool)

(assert (=> d!1615983 (= c!858055 (or (is-Nil!58018 lt!2077728) (<= knownSize!24 0)))))

(assert (=> d!1615983 (= (take!715 lt!2077728 knownSize!24) lt!2077805)))

(declare-fun b!5020507 () Bool)

(declare-fun e!3136356 () Int)

(assert (=> b!5020507 (= e!3136356 e!3136355)))

(declare-fun c!858054 () Bool)

(assert (=> b!5020507 (= c!858054 (>= knownSize!24 (size!38603 lt!2077728)))))

(declare-fun b!5020508 () Bool)

(assert (=> b!5020508 (= e!3136358 (= (size!38603 lt!2077805) e!3136356))))

(declare-fun c!858056 () Bool)

(assert (=> b!5020508 (= c!858056 (<= knownSize!24 0))))

(declare-fun b!5020509 () Bool)

(assert (=> b!5020509 (= e!3136357 (Cons!58018 (h!64466 lt!2077728) (take!715 (t!370518 lt!2077728) (- knownSize!24 1))))))

(declare-fun b!5020510 () Bool)

(assert (=> b!5020510 (= e!3136356 0)))

(declare-fun b!5020511 () Bool)

(assert (=> b!5020511 (= e!3136355 knownSize!24)))

(assert (= (and d!1615983 c!858055) b!5020505))

(assert (= (and d!1615983 (not c!858055)) b!5020509))

(assert (= (and d!1615983 res!2140706) b!5020508))

(assert (= (and b!5020508 c!858056) b!5020510))

(assert (= (and b!5020508 (not c!858056)) b!5020507))

(assert (= (and b!5020507 c!858054) b!5020506))

(assert (= (and b!5020507 (not c!858054)) b!5020511))

(declare-fun m!6055432 () Bool)

(assert (=> b!5020508 m!6055432))

(assert (=> b!5020507 m!6055378))

(declare-fun m!6055434 () Bool)

(assert (=> b!5020509 m!6055434))

(declare-fun m!6055436 () Bool)

(assert (=> d!1615983 m!6055436))

(assert (=> d!1615983 m!6055384))

(assert (=> b!5020506 m!6055378))

(assert (=> b!5020304 d!1615983))

(declare-fun bm!350574 () Bool)

(declare-fun call!350579 () Int)

(assert (=> bm!350574 (= call!350579 (size!38603 lt!2077729))))

(declare-fun b!5020512 () Bool)

(declare-fun e!3136360 () List!58142)

(declare-fun e!3136363 () List!58142)

(assert (=> b!5020512 (= e!3136360 e!3136363)))

(declare-fun c!858058 () Bool)

(assert (=> b!5020512 (= c!858058 (<= from!1212 0))))

(declare-fun b!5020513 () Bool)

(declare-fun e!3136359 () Bool)

(declare-fun lt!2077806 () List!58142)

(declare-fun e!3136362 () Int)

(assert (=> b!5020513 (= e!3136359 (= (size!38603 lt!2077806) e!3136362))))

(declare-fun c!858059 () Bool)

(assert (=> b!5020513 (= c!858059 (<= from!1212 0))))

(declare-fun b!5020514 () Bool)

(assert (=> b!5020514 (= e!3136360 Nil!58018)))

(declare-fun b!5020515 () Bool)

(assert (=> b!5020515 (= e!3136362 call!350579)))

(declare-fun b!5020516 () Bool)

(declare-fun e!3136361 () Int)

(assert (=> b!5020516 (= e!3136361 (- call!350579 from!1212))))

(declare-fun b!5020517 () Bool)

(assert (=> b!5020517 (= e!3136362 e!3136361)))

(declare-fun c!858057 () Bool)

(assert (=> b!5020517 (= c!858057 (>= from!1212 call!350579))))

(declare-fun b!5020518 () Bool)

(assert (=> b!5020518 (= e!3136363 lt!2077729)))

(declare-fun b!5020519 () Bool)

(assert (=> b!5020519 (= e!3136363 (drop!2519 (t!370518 lt!2077729) (- from!1212 1)))))

(declare-fun b!5020520 () Bool)

(assert (=> b!5020520 (= e!3136361 0)))

(declare-fun d!1615985 () Bool)

(assert (=> d!1615985 e!3136359))

(declare-fun res!2140707 () Bool)

(assert (=> d!1615985 (=> (not res!2140707) (not e!3136359))))

(assert (=> d!1615985 (= res!2140707 (set.subset (content!10282 lt!2077806) (content!10282 lt!2077729)))))

(assert (=> d!1615985 (= lt!2077806 e!3136360)))

(declare-fun c!858060 () Bool)

(assert (=> d!1615985 (= c!858060 (is-Nil!58018 lt!2077729))))

(assert (=> d!1615985 (= (drop!2519 lt!2077729 from!1212) lt!2077806)))

(assert (= (and d!1615985 c!858060) b!5020514))

(assert (= (and d!1615985 (not c!858060)) b!5020512))

(assert (= (and b!5020512 c!858058) b!5020518))

(assert (= (and b!5020512 (not c!858058)) b!5020519))

(assert (= (and d!1615985 res!2140707) b!5020513))

(assert (= (and b!5020513 c!858059) b!5020515))

(assert (= (and b!5020513 (not c!858059)) b!5020517))

(assert (= (and b!5020517 c!858057) b!5020520))

(assert (= (and b!5020517 (not c!858057)) b!5020516))

(assert (= (or b!5020515 b!5020517 b!5020516) bm!350574))

(assert (=> bm!350574 m!6055262))

(declare-fun m!6055438 () Bool)

(assert (=> b!5020513 m!6055438))

(declare-fun m!6055440 () Bool)

(assert (=> b!5020519 m!6055440))

(declare-fun m!6055442 () Bool)

(assert (=> d!1615985 m!6055442))

(assert (=> d!1615985 m!6055374))

(assert (=> b!5020304 d!1615985))

(declare-fun d!1615987 () Bool)

(declare-fun list!18713 (Conc!15375) List!58142)

(assert (=> d!1615987 (= (list!18711 totalInput!1125) (list!18713 (c!857983 totalInput!1125)))))

(declare-fun bs!1187177 () Bool)

(assert (= bs!1187177 d!1615987))

(declare-fun m!6055444 () Bool)

(assert (=> bs!1187177 m!6055444))

(assert (=> b!5020304 d!1615987))

(declare-fun bs!1187178 () Bool)

(declare-fun b!5020525 () Bool)

(declare-fun d!1615989 () Bool)

(assert (= bs!1187178 (and b!5020525 d!1615989)))

(declare-fun lambda!248827 () Int)

(declare-fun lambda!248826 () Int)

(assert (=> bs!1187178 (not (= lambda!248827 lambda!248826))))

(declare-fun bs!1187179 () Bool)

(declare-fun b!5020526 () Bool)

(assert (= bs!1187179 (and b!5020526 d!1615989)))

(declare-fun lambda!248828 () Int)

(assert (=> bs!1187179 (not (= lambda!248828 lambda!248826))))

(declare-fun bs!1187180 () Bool)

(assert (= bs!1187180 (and b!5020526 b!5020525)))

(assert (=> bs!1187180 (= lambda!248828 lambda!248827)))

(declare-fun e!3136370 () Unit!149221)

(declare-fun Unit!149225 () Unit!149221)

(assert (=> b!5020526 (= e!3136370 Unit!149225)))

(declare-datatypes ((List!58146 0))(
  ( (Nil!58022) (Cons!58022 (h!64470 Context!6562) (t!370522 List!58146)) )
))
(declare-fun lt!2077830 () List!58146)

(declare-fun call!350585 () List!58146)

(assert (=> b!5020526 (= lt!2077830 call!350585)))

(declare-fun lt!2077827 () Unit!149221)

(declare-fun lemmaForallThenNotExists!243 (List!58146 Int) Unit!149221)

(assert (=> b!5020526 (= lt!2077827 (lemmaForallThenNotExists!243 lt!2077830 lambda!248826))))

(declare-fun call!350584 () Bool)

(assert (=> b!5020526 (not call!350584)))

(declare-fun lt!2077828 () Unit!149221)

(assert (=> b!5020526 (= lt!2077828 lt!2077827)))

(declare-fun bm!350579 () Bool)

(declare-fun toList!8111 ((Set Context!6562)) List!58146)

(assert (=> bm!350579 (= call!350585 (toList!8111 z!4710))))

(declare-fun lt!2077823 () Bool)

(declare-datatypes ((Option!14590 0))(
  ( (None!14589) (Some!14589 (v!50590 List!58142)) )
))
(declare-fun isEmpty!31422 (Option!14590) Bool)

(declare-fun getLanguageWitness!723 ((Set Context!6562)) Option!14590)

(assert (=> d!1615989 (= lt!2077823 (isEmpty!31422 (getLanguageWitness!723 z!4710)))))

(declare-fun forall!13398 ((Set Context!6562) Int) Bool)

(assert (=> d!1615989 (= lt!2077823 (forall!13398 z!4710 lambda!248826))))

(declare-fun lt!2077829 () Unit!149221)

(assert (=> d!1615989 (= lt!2077829 e!3136370)))

(declare-fun c!858071 () Bool)

(assert (=> d!1615989 (= c!858071 (not (forall!13398 z!4710 lambda!248826)))))

(assert (=> d!1615989 (= (lostCauseZipper!870 z!4710) lt!2077823)))

(declare-fun Unit!149226 () Unit!149221)

(assert (=> b!5020525 (= e!3136370 Unit!149226)))

(declare-fun lt!2077825 () List!58146)

(assert (=> b!5020525 (= lt!2077825 call!350585)))

(declare-fun lt!2077824 () Unit!149221)

(declare-fun lemmaNotForallThenExists!260 (List!58146 Int) Unit!149221)

(assert (=> b!5020525 (= lt!2077824 (lemmaNotForallThenExists!260 lt!2077825 lambda!248826))))

(assert (=> b!5020525 call!350584))

(declare-fun lt!2077826 () Unit!149221)

(assert (=> b!5020525 (= lt!2077826 lt!2077824)))

(declare-fun bm!350580 () Bool)

(declare-fun exists!1376 (List!58146 Int) Bool)

(assert (=> bm!350580 (= call!350584 (exists!1376 (ite c!858071 lt!2077825 lt!2077830) (ite c!858071 lambda!248827 lambda!248828)))))

(assert (= (and d!1615989 c!858071) b!5020525))

(assert (= (and d!1615989 (not c!858071)) b!5020526))

(assert (= (or b!5020525 b!5020526) bm!350579))

(assert (= (or b!5020525 b!5020526) bm!350580))

(declare-fun m!6055446 () Bool)

(assert (=> d!1615989 m!6055446))

(assert (=> d!1615989 m!6055446))

(declare-fun m!6055448 () Bool)

(assert (=> d!1615989 m!6055448))

(declare-fun m!6055450 () Bool)

(assert (=> d!1615989 m!6055450))

(assert (=> d!1615989 m!6055450))

(declare-fun m!6055452 () Bool)

(assert (=> b!5020525 m!6055452))

(declare-fun m!6055454 () Bool)

(assert (=> b!5020526 m!6055454))

(declare-fun m!6055456 () Bool)

(assert (=> bm!350579 m!6055456))

(declare-fun m!6055458 () Bool)

(assert (=> bm!350580 m!6055458))

(assert (=> b!5020309 d!1615989))

(declare-fun d!1615991 () Bool)

(declare-fun lt!2077831 () Int)

(assert (=> d!1615991 (>= lt!2077831 0)))

(declare-fun e!3136371 () Int)

(assert (=> d!1615991 (= lt!2077831 e!3136371)))

(declare-fun c!858072 () Bool)

(assert (=> d!1615991 (= c!858072 (is-Nil!58018 lt!2077726))))

(assert (=> d!1615991 (= (size!38603 lt!2077726) lt!2077831)))

(declare-fun b!5020527 () Bool)

(assert (=> b!5020527 (= e!3136371 0)))

(declare-fun b!5020528 () Bool)

(assert (=> b!5020528 (= e!3136371 (+ 1 (size!38603 (t!370518 lt!2077726))))))

(assert (= (and d!1615991 c!858072) b!5020527))

(assert (= (and d!1615991 (not c!858072)) b!5020528))

(declare-fun m!6055460 () Bool)

(assert (=> b!5020528 m!6055460))

(assert (=> b!5020305 d!1615991))

(declare-fun d!1615993 () Bool)

(declare-fun c!858075 () Bool)

(assert (=> d!1615993 (= c!858075 (is-Node!15375 (c!857983 totalInput!1125)))))

(declare-fun e!3136376 () Bool)

(assert (=> d!1615993 (= (inv!76369 (c!857983 totalInput!1125)) e!3136376)))

(declare-fun b!5020535 () Bool)

(declare-fun inv!76374 (Conc!15375) Bool)

(assert (=> b!5020535 (= e!3136376 (inv!76374 (c!857983 totalInput!1125)))))

(declare-fun b!5020536 () Bool)

(declare-fun e!3136377 () Bool)

(assert (=> b!5020536 (= e!3136376 e!3136377)))

(declare-fun res!2140710 () Bool)

(assert (=> b!5020536 (= res!2140710 (not (is-Leaf!25512 (c!857983 totalInput!1125))))))

(assert (=> b!5020536 (=> res!2140710 e!3136377)))

(declare-fun b!5020537 () Bool)

(declare-fun inv!76375 (Conc!15375) Bool)

(assert (=> b!5020537 (= e!3136377 (inv!76375 (c!857983 totalInput!1125)))))

(assert (= (and d!1615993 c!858075) b!5020535))

(assert (= (and d!1615993 (not c!858075)) b!5020536))

(assert (= (and b!5020536 (not res!2140710)) b!5020537))

(declare-fun m!6055462 () Bool)

(assert (=> b!5020535 m!6055462))

(declare-fun m!6055464 () Bool)

(assert (=> b!5020537 m!6055464))

(assert (=> b!5020301 d!1615993))

(declare-fun d!1615995 () Bool)

(declare-fun isBalanced!4293 (Conc!15375) Bool)

(assert (=> d!1615995 (= (inv!76368 totalInput!1125) (isBalanced!4293 (c!857983 totalInput!1125)))))

(declare-fun bs!1187181 () Bool)

(assert (= bs!1187181 d!1615995))

(declare-fun m!6055466 () Bool)

(assert (=> bs!1187181 m!6055466))

(assert (=> start!530496 d!1615995))

(declare-fun d!1615997 () Bool)

(declare-fun lambda!248831 () Int)

(declare-fun forall!13399 (List!58143 Int) Bool)

(assert (=> d!1615997 (= (inv!76370 setElem!28669) (forall!13399 (exprs!3781 setElem!28669) lambda!248831))))

(declare-fun bs!1187182 () Bool)

(assert (= bs!1187182 d!1615997))

(declare-fun m!6055468 () Bool)

(assert (=> bs!1187182 m!6055468))

(assert (=> setNonEmpty!28669 d!1615997))

(declare-fun e!3136383 () Bool)

(declare-fun tp!1407773 () Bool)

(declare-fun tp!1407771 () Bool)

(declare-fun b!5020546 () Bool)

(assert (=> b!5020546 (= e!3136383 (and (inv!76369 (left!42421 (c!857983 totalInput!1125))) tp!1407773 (inv!76369 (right!42751 (c!857983 totalInput!1125))) tp!1407771))))

(declare-fun b!5020548 () Bool)

(declare-fun e!3136382 () Bool)

(declare-fun tp!1407772 () Bool)

(assert (=> b!5020548 (= e!3136382 tp!1407772)))

(declare-fun b!5020547 () Bool)

(declare-fun inv!76376 (IArray!30811) Bool)

(assert (=> b!5020547 (= e!3136383 (and (inv!76376 (xs!18701 (c!857983 totalInput!1125))) e!3136382))))

(assert (=> b!5020301 (= tp!1407753 (and (inv!76369 (c!857983 totalInput!1125)) e!3136383))))

(assert (= (and b!5020301 (is-Node!15375 (c!857983 totalInput!1125))) b!5020546))

(assert (= b!5020547 b!5020548))

(assert (= (and b!5020301 (is-Leaf!25512 (c!857983 totalInput!1125))) b!5020547))

(declare-fun m!6055470 () Bool)

(assert (=> b!5020546 m!6055470))

(declare-fun m!6055472 () Bool)

(assert (=> b!5020546 m!6055472))

(declare-fun m!6055474 () Bool)

(assert (=> b!5020547 m!6055474))

(assert (=> b!5020301 m!6055248))

(declare-fun condSetEmpty!28675 () Bool)

(assert (=> setNonEmpty!28669 (= condSetEmpty!28675 (= setRest!28669 (as set.empty (Set Context!6562))))))

(declare-fun setRes!28675 () Bool)

(assert (=> setNonEmpty!28669 (= tp!1407755 setRes!28675)))

(declare-fun setIsEmpty!28675 () Bool)

(assert (=> setIsEmpty!28675 setRes!28675))

(declare-fun tp!1407779 () Bool)

(declare-fun e!3136386 () Bool)

(declare-fun setElem!28675 () Context!6562)

(declare-fun setNonEmpty!28675 () Bool)

(assert (=> setNonEmpty!28675 (= setRes!28675 (and tp!1407779 (inv!76370 setElem!28675) e!3136386))))

(declare-fun setRest!28675 () (Set Context!6562))

(assert (=> setNonEmpty!28675 (= setRest!28669 (set.union (set.insert setElem!28675 (as set.empty (Set Context!6562))) setRest!28675))))

(declare-fun b!5020553 () Bool)

(declare-fun tp!1407778 () Bool)

(assert (=> b!5020553 (= e!3136386 tp!1407778)))

(assert (= (and setNonEmpty!28669 condSetEmpty!28675) setIsEmpty!28675))

(assert (= (and setNonEmpty!28669 (not condSetEmpty!28675)) setNonEmpty!28675))

(assert (= setNonEmpty!28675 b!5020553))

(declare-fun m!6055476 () Bool)

(assert (=> setNonEmpty!28675 m!6055476))

(declare-fun b!5020558 () Bool)

(declare-fun e!3136389 () Bool)

(declare-fun tp!1407784 () Bool)

(declare-fun tp!1407785 () Bool)

(assert (=> b!5020558 (= e!3136389 (and tp!1407784 tp!1407785))))

(assert (=> b!5020307 (= tp!1407754 e!3136389)))

(assert (= (and b!5020307 (is-Cons!58019 (exprs!3781 setElem!28669))) b!5020558))

(push 1)

(assert (not b!5020548))

(assert (not b!5020371))

(assert (not b!5020301))

(assert (not d!1615949))

(assert (not b!5020558))

(assert (not b!5020519))

(assert (not d!1615957))

(assert (not b!5020406))

(assert (not b!5020441))

(assert (not d!1615971))

(assert (not d!1615969))

(assert (not d!1615987))

(assert (not b!5020440))

(assert (not d!1615997))

(assert (not b!5020506))

(assert (not b!5020370))

(assert (not b!5020369))

(assert (not bm!350574))

(assert (not b!5020526))

(assert (not b!5020546))

(assert (not b!5020547))

(assert (not b!5020372))

(assert (not b!5020408))

(assert (not b!5020454))

(assert (not d!1615965))

(assert (not d!1615983))

(assert (not b!5020535))

(assert (not b!5020437))

(assert (not d!1615955))

(assert (not bm!350573))

(assert (not b!5020509))

(assert (not b!5020411))

(assert (not d!1615981))

(assert (not b!5020503))

(assert (not b!5020384))

(assert (not b!5020442))

(assert (not b!5020452))

(assert (not d!1615985))

(assert (not b!5020453))

(assert (not b!5020537))

(assert (not b!5020513))

(assert (not b!5020504))

(assert (not d!1615989))

(assert (not b!5020553))

(assert (not b!5020410))

(assert (not bm!350579))

(assert (not b!5020498))

(assert (not bm!350580))

(assert (not b!5020443))

(assert (not b!5020508))

(assert (not b!5020339))

(assert (not d!1615967))

(assert (not d!1615995))

(assert (not b!5020528))

(assert (not b!5020525))

(assert (not b!5020507))

(assert (not setNonEmpty!28675))

(assert (not d!1615953))

(assert (not b!5020431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

