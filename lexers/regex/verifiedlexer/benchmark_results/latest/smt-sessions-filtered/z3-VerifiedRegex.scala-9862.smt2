; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516660 () Bool)

(assert start!516660)

(declare-fun b!4921130 () Bool)

(declare-fun e!3075221 () Bool)

(declare-fun lt!2022054 () Int)

(declare-datatypes ((C!26932 0))(
  ( (C!26933 (val!22800 Int)) )
))
(declare-datatypes ((List!56785 0))(
  ( (Nil!56661) (Cons!56661 (h!63109 C!26932) (t!367223 List!56785)) )
))
(declare-fun lt!2022056 () List!56785)

(declare-fun size!37441 (List!56785) Int)

(assert (=> b!4921130 (= e!3075221 (not (= lt!2022054 (size!37441 lt!2022056))))))

(declare-fun res!2101185 () Bool)

(assert (=> start!516660 (=> (not res!2101185) (not e!3075221))))

(declare-fun ++!12310 (List!56785 List!56785) List!56785)

(assert (=> start!516660 (= res!2101185 (= (++!12310 Nil!56661 lt!2022056) lt!2022056))))

(declare-fun lt!2022055 () List!56785)

(declare-datatypes ((IArray!29781 0))(
  ( (IArray!29782 (innerList!14948 List!56785)) )
))
(declare-datatypes ((Conc!14860 0))(
  ( (Node!14860 (left!41312 Conc!14860) (right!41642 Conc!14860) (csize!29950 Int) (cheight!15071 Int)) (Leaf!24723 (xs!18180 IArray!29781) (csize!29951 Int)) (Empty!14860) )
))
(declare-datatypes ((BalanceConc!29150 0))(
  ( (BalanceConc!29151 (c!837391 Conc!14860)) )
))
(declare-datatypes ((tuple2!61098 0))(
  ( (tuple2!61099 (_1!33852 BalanceConc!29150) (_2!33852 BalanceConc!29150)) )
))
(declare-fun lt!2022057 () tuple2!61098)

(declare-fun list!17925 (BalanceConc!29150) List!56785)

(assert (=> start!516660 (= lt!2022055 (list!17925 (_2!33852 lt!2022057)))))

(declare-fun lt!2022053 () List!56785)

(assert (=> start!516660 (= lt!2022053 (list!17925 (_1!33852 lt!2022057)))))

(declare-fun input!5492 () BalanceConc!29150)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13361 0))(
  ( (ElementMatch!13361 (c!837392 C!26932)) (Concat!21934 (regOne!27234 Regex!13361) (regTwo!27234 Regex!13361)) (EmptyExpr!13361) (Star!13361 (reg!13690 Regex!13361)) (EmptyLang!13361) (Union!13361 (regOne!27235 Regex!13361) (regTwo!27235 Regex!13361)) )
))
(declare-datatypes ((List!56786 0))(
  ( (Nil!56662) (Cons!56662 (h!63110 Regex!13361) (t!367224 List!56786)) )
))
(declare-datatypes ((Context!6006 0))(
  ( (Context!6007 (exprs!3503 List!56786)) )
))
(declare-fun z!3559 () (InoxSet Context!6006))

(declare-fun splitAt!247 (BalanceConc!29150 Int) tuple2!61098)

(declare-fun findLongestMatchInnerZipperFast!73 ((InoxSet Context!6006) List!56785 Int List!56785 BalanceConc!29150 Int) Int)

(assert (=> start!516660 (= lt!2022057 (splitAt!247 input!5492 (findLongestMatchInnerZipperFast!73 z!3559 Nil!56661 0 lt!2022056 input!5492 lt!2022054)))))

(declare-fun size!37442 (BalanceConc!29150) Int)

(assert (=> start!516660 (= lt!2022054 (size!37442 input!5492))))

(assert (=> start!516660 (= lt!2022056 (list!17925 input!5492))))

(assert (=> start!516660 e!3075221))

(declare-fun e!3075222 () Bool)

(declare-fun inv!73379 (BalanceConc!29150) Bool)

(assert (=> start!516660 (and (inv!73379 input!5492) e!3075222)))

(declare-fun condSetEmpty!27454 () Bool)

(assert (=> start!516660 (= condSetEmpty!27454 (= z!3559 ((as const (Array Context!6006 Bool)) false)))))

(declare-fun setRes!27454 () Bool)

(assert (=> start!516660 setRes!27454))

(declare-fun b!4921131 () Bool)

(declare-fun tp!1382917 () Bool)

(declare-fun inv!73380 (Conc!14860) Bool)

(assert (=> b!4921131 (= e!3075222 (and (inv!73380 (c!837391 input!5492)) tp!1382917))))

(declare-fun e!3075220 () Bool)

(declare-fun setNonEmpty!27454 () Bool)

(declare-fun setElem!27454 () Context!6006)

(declare-fun tp!1382918 () Bool)

(declare-fun inv!73381 (Context!6006) Bool)

(assert (=> setNonEmpty!27454 (= setRes!27454 (and tp!1382918 (inv!73381 setElem!27454) e!3075220))))

(declare-fun setRest!27454 () (InoxSet Context!6006))

(assert (=> setNonEmpty!27454 (= z!3559 ((_ map or) (store ((as const (Array Context!6006 Bool)) false) setElem!27454 true) setRest!27454))))

(declare-fun setIsEmpty!27454 () Bool)

(assert (=> setIsEmpty!27454 setRes!27454))

(declare-fun b!4921132 () Bool)

(declare-fun res!2101186 () Bool)

(assert (=> b!4921132 (=> (not res!2101186) (not e!3075221))))

(assert (=> b!4921132 (= res!2101186 (= 0 (size!37441 Nil!56661)))))

(declare-fun b!4921133 () Bool)

(declare-fun tp!1382919 () Bool)

(assert (=> b!4921133 (= e!3075220 tp!1382919)))

(assert (= (and start!516660 res!2101185) b!4921132))

(assert (= (and b!4921132 res!2101186) b!4921130))

(assert (= start!516660 b!4921131))

(assert (= (and start!516660 condSetEmpty!27454) setIsEmpty!27454))

(assert (= (and start!516660 (not condSetEmpty!27454)) setNonEmpty!27454))

(assert (= setNonEmpty!27454 b!4921133))

(declare-fun m!5935696 () Bool)

(assert (=> b!4921132 m!5935696))

(declare-fun m!5935698 () Bool)

(assert (=> setNonEmpty!27454 m!5935698))

(declare-fun m!5935700 () Bool)

(assert (=> b!4921131 m!5935700))

(declare-fun m!5935702 () Bool)

(assert (=> start!516660 m!5935702))

(declare-fun m!5935704 () Bool)

(assert (=> start!516660 m!5935704))

(declare-fun m!5935706 () Bool)

(assert (=> start!516660 m!5935706))

(declare-fun m!5935708 () Bool)

(assert (=> start!516660 m!5935708))

(declare-fun m!5935710 () Bool)

(assert (=> start!516660 m!5935710))

(declare-fun m!5935712 () Bool)

(assert (=> start!516660 m!5935712))

(declare-fun m!5935714 () Bool)

(assert (=> start!516660 m!5935714))

(declare-fun m!5935716 () Bool)

(assert (=> start!516660 m!5935716))

(assert (=> start!516660 m!5935710))

(declare-fun m!5935718 () Bool)

(assert (=> b!4921130 m!5935718))

(check-sat (not b!4921133) (not b!4921132) (not setNonEmpty!27454) (not b!4921130) (not b!4921131) (not start!516660))
(check-sat)
(get-model)

(declare-fun d!1583097 () Bool)

(declare-fun c!837398 () Bool)

(get-info :version)

(assert (=> d!1583097 (= c!837398 ((_ is Node!14860) (c!837391 input!5492)))))

(declare-fun e!3075230 () Bool)

(assert (=> d!1583097 (= (inv!73380 (c!837391 input!5492)) e!3075230)))

(declare-fun b!4921146 () Bool)

(declare-fun inv!73382 (Conc!14860) Bool)

(assert (=> b!4921146 (= e!3075230 (inv!73382 (c!837391 input!5492)))))

(declare-fun b!4921147 () Bool)

(declare-fun e!3075231 () Bool)

(assert (=> b!4921147 (= e!3075230 e!3075231)))

(declare-fun res!2101189 () Bool)

(assert (=> b!4921147 (= res!2101189 (not ((_ is Leaf!24723) (c!837391 input!5492))))))

(assert (=> b!4921147 (=> res!2101189 e!3075231)))

(declare-fun b!4921148 () Bool)

(declare-fun inv!73383 (Conc!14860) Bool)

(assert (=> b!4921148 (= e!3075231 (inv!73383 (c!837391 input!5492)))))

(assert (= (and d!1583097 c!837398) b!4921146))

(assert (= (and d!1583097 (not c!837398)) b!4921147))

(assert (= (and b!4921147 (not res!2101189)) b!4921148))

(declare-fun m!5935722 () Bool)

(assert (=> b!4921146 m!5935722))

(declare-fun m!5935724 () Bool)

(assert (=> b!4921148 m!5935724))

(assert (=> b!4921131 d!1583097))

(declare-fun d!1583101 () Bool)

(declare-fun lambda!245091 () Int)

(declare-fun forall!13121 (List!56786 Int) Bool)

(assert (=> d!1583101 (= (inv!73381 setElem!27454) (forall!13121 (exprs!3503 setElem!27454) lambda!245091))))

(declare-fun bs!1179152 () Bool)

(assert (= bs!1179152 d!1583101))

(declare-fun m!5935834 () Bool)

(assert (=> bs!1179152 m!5935834))

(assert (=> setNonEmpty!27454 d!1583101))

(declare-fun d!1583123 () Bool)

(declare-fun lt!2022202 () Int)

(assert (=> d!1583123 (>= lt!2022202 0)))

(declare-fun e!3075268 () Int)

(assert (=> d!1583123 (= lt!2022202 e!3075268)))

(declare-fun c!837426 () Bool)

(assert (=> d!1583123 (= c!837426 ((_ is Nil!56661) Nil!56661))))

(assert (=> d!1583123 (= (size!37441 Nil!56661) lt!2022202)))

(declare-fun b!4921218 () Bool)

(assert (=> b!4921218 (= e!3075268 0)))

(declare-fun b!4921219 () Bool)

(assert (=> b!4921219 (= e!3075268 (+ 1 (size!37441 (t!367223 Nil!56661))))))

(assert (= (and d!1583123 c!837426) b!4921218))

(assert (= (and d!1583123 (not c!837426)) b!4921219))

(declare-fun m!5935836 () Bool)

(assert (=> b!4921219 m!5935836))

(assert (=> b!4921132 d!1583123))

(declare-fun d!1583125 () Bool)

(declare-fun lt!2022203 () Int)

(assert (=> d!1583125 (>= lt!2022203 0)))

(declare-fun e!3075269 () Int)

(assert (=> d!1583125 (= lt!2022203 e!3075269)))

(declare-fun c!837427 () Bool)

(assert (=> d!1583125 (= c!837427 ((_ is Nil!56661) lt!2022056))))

(assert (=> d!1583125 (= (size!37441 lt!2022056) lt!2022203)))

(declare-fun b!4921220 () Bool)

(assert (=> b!4921220 (= e!3075269 0)))

(declare-fun b!4921221 () Bool)

(assert (=> b!4921221 (= e!3075269 (+ 1 (size!37441 (t!367223 lt!2022056))))))

(assert (= (and d!1583125 c!837427) b!4921220))

(assert (= (and d!1583125 (not c!837427)) b!4921221))

(declare-fun m!5935838 () Bool)

(assert (=> b!4921221 m!5935838))

(assert (=> b!4921130 d!1583125))

(declare-fun d!1583127 () Bool)

(declare-fun list!17927 (Conc!14860) List!56785)

(assert (=> d!1583127 (= (list!17925 (_1!33852 lt!2022057)) (list!17927 (c!837391 (_1!33852 lt!2022057))))))

(declare-fun bs!1179153 () Bool)

(assert (= bs!1179153 d!1583127))

(declare-fun m!5935840 () Bool)

(assert (=> bs!1179153 m!5935840))

(assert (=> start!516660 d!1583127))

(declare-fun b!4921233 () Bool)

(declare-fun e!3075275 () Bool)

(declare-fun lt!2022206 () List!56785)

(assert (=> b!4921233 (= e!3075275 (or (not (= lt!2022056 Nil!56661)) (= lt!2022206 Nil!56661)))))

(declare-fun b!4921232 () Bool)

(declare-fun res!2101209 () Bool)

(assert (=> b!4921232 (=> (not res!2101209) (not e!3075275))))

(assert (=> b!4921232 (= res!2101209 (= (size!37441 lt!2022206) (+ (size!37441 Nil!56661) (size!37441 lt!2022056))))))

(declare-fun b!4921231 () Bool)

(declare-fun e!3075274 () List!56785)

(assert (=> b!4921231 (= e!3075274 (Cons!56661 (h!63109 Nil!56661) (++!12310 (t!367223 Nil!56661) lt!2022056)))))

(declare-fun b!4921230 () Bool)

(assert (=> b!4921230 (= e!3075274 lt!2022056)))

(declare-fun d!1583129 () Bool)

(assert (=> d!1583129 e!3075275))

(declare-fun res!2101210 () Bool)

(assert (=> d!1583129 (=> (not res!2101210) (not e!3075275))))

(declare-fun content!10059 (List!56785) (InoxSet C!26932))

(assert (=> d!1583129 (= res!2101210 (= (content!10059 lt!2022206) ((_ map or) (content!10059 Nil!56661) (content!10059 lt!2022056))))))

(assert (=> d!1583129 (= lt!2022206 e!3075274)))

(declare-fun c!837430 () Bool)

(assert (=> d!1583129 (= c!837430 ((_ is Nil!56661) Nil!56661))))

(assert (=> d!1583129 (= (++!12310 Nil!56661 lt!2022056) lt!2022206)))

(assert (= (and d!1583129 c!837430) b!4921230))

(assert (= (and d!1583129 (not c!837430)) b!4921231))

(assert (= (and d!1583129 res!2101210) b!4921232))

(assert (= (and b!4921232 res!2101209) b!4921233))

(declare-fun m!5935842 () Bool)

(assert (=> b!4921232 m!5935842))

(assert (=> b!4921232 m!5935696))

(assert (=> b!4921232 m!5935718))

(declare-fun m!5935844 () Bool)

(assert (=> b!4921231 m!5935844))

(declare-fun m!5935846 () Bool)

(assert (=> d!1583129 m!5935846))

(declare-fun m!5935848 () Bool)

(assert (=> d!1583129 m!5935848))

(declare-fun m!5935850 () Bool)

(assert (=> d!1583129 m!5935850))

(assert (=> start!516660 d!1583129))

(declare-fun d!1583131 () Bool)

(declare-fun e!3075278 () Bool)

(assert (=> d!1583131 e!3075278))

(declare-fun res!2101216 () Bool)

(assert (=> d!1583131 (=> (not res!2101216) (not e!3075278))))

(declare-fun lt!2022212 () tuple2!61098)

(declare-fun isBalanced!4075 (Conc!14860) Bool)

(assert (=> d!1583131 (= res!2101216 (isBalanced!4075 (c!837391 (_1!33852 lt!2022212))))))

(declare-datatypes ((tuple2!61104 0))(
  ( (tuple2!61105 (_1!33855 Conc!14860) (_2!33855 Conc!14860)) )
))
(declare-fun lt!2022211 () tuple2!61104)

(assert (=> d!1583131 (= lt!2022212 (tuple2!61099 (BalanceConc!29151 (_1!33855 lt!2022211)) (BalanceConc!29151 (_2!33855 lt!2022211))))))

(declare-fun splitAt!249 (Conc!14860 Int) tuple2!61104)

(assert (=> d!1583131 (= lt!2022211 (splitAt!249 (c!837391 input!5492) (findLongestMatchInnerZipperFast!73 z!3559 Nil!56661 0 lt!2022056 input!5492 lt!2022054)))))

(assert (=> d!1583131 (isBalanced!4075 (c!837391 input!5492))))

(assert (=> d!1583131 (= (splitAt!247 input!5492 (findLongestMatchInnerZipperFast!73 z!3559 Nil!56661 0 lt!2022056 input!5492 lt!2022054)) lt!2022212)))

(declare-fun b!4921238 () Bool)

(declare-fun res!2101215 () Bool)

(assert (=> b!4921238 (=> (not res!2101215) (not e!3075278))))

(assert (=> b!4921238 (= res!2101215 (isBalanced!4075 (c!837391 (_2!33852 lt!2022212))))))

(declare-fun b!4921239 () Bool)

(declare-datatypes ((tuple2!61106 0))(
  ( (tuple2!61107 (_1!33856 List!56785) (_2!33856 List!56785)) )
))
(declare-fun splitAtIndex!91 (List!56785 Int) tuple2!61106)

(assert (=> b!4921239 (= e!3075278 (= (tuple2!61107 (list!17925 (_1!33852 lt!2022212)) (list!17925 (_2!33852 lt!2022212))) (splitAtIndex!91 (list!17925 input!5492) (findLongestMatchInnerZipperFast!73 z!3559 Nil!56661 0 lt!2022056 input!5492 lt!2022054))))))

(assert (= (and d!1583131 res!2101216) b!4921238))

(assert (= (and b!4921238 res!2101215) b!4921239))

(declare-fun m!5935852 () Bool)

(assert (=> d!1583131 m!5935852))

(assert (=> d!1583131 m!5935710))

(declare-fun m!5935854 () Bool)

(assert (=> d!1583131 m!5935854))

(declare-fun m!5935856 () Bool)

(assert (=> d!1583131 m!5935856))

(declare-fun m!5935858 () Bool)

(assert (=> b!4921238 m!5935858))

(declare-fun m!5935860 () Bool)

(assert (=> b!4921239 m!5935860))

(declare-fun m!5935862 () Bool)

(assert (=> b!4921239 m!5935862))

(assert (=> b!4921239 m!5935704))

(assert (=> b!4921239 m!5935704))

(assert (=> b!4921239 m!5935710))

(declare-fun m!5935864 () Bool)

(assert (=> b!4921239 m!5935864))

(assert (=> start!516660 d!1583131))

(declare-fun bm!342436 () Bool)

(declare-fun call!342450 () C!26932)

(declare-fun apply!13635 (BalanceConc!29150 Int) C!26932)

(assert (=> bm!342436 (= call!342450 (apply!13635 input!5492 0))))

(declare-fun lt!2022304 () Int)

(declare-fun d!1583133 () Bool)

(declare-fun findLongestMatchInnerZipper!46 ((InoxSet Context!6006) List!56785 Int List!56785 List!56785 Int) tuple2!61106)

(assert (=> d!1583133 (= (size!37441 (_1!33856 (findLongestMatchInnerZipper!46 z!3559 Nil!56661 0 lt!2022056 (list!17925 input!5492) lt!2022054))) lt!2022304)))

(declare-fun e!3075304 () Int)

(assert (=> d!1583133 (= lt!2022304 e!3075304)))

(declare-fun c!837444 () Bool)

(declare-fun lostCauseZipper!681 ((InoxSet Context!6006)) Bool)

(assert (=> d!1583133 (= c!837444 (lostCauseZipper!681 z!3559))))

(declare-datatypes ((Unit!147060 0))(
  ( (Unit!147061) )
))
(declare-fun lt!2022314 () Unit!147060)

(declare-fun Unit!147062 () Unit!147060)

(assert (=> d!1583133 (= lt!2022314 Unit!147062)))

(declare-fun getSuffix!2939 (List!56785 List!56785) List!56785)

(assert (=> d!1583133 (= (getSuffix!2939 (list!17925 input!5492) Nil!56661) lt!2022056)))

(declare-fun lt!2022316 () Unit!147060)

(declare-fun lt!2022309 () Unit!147060)

(assert (=> d!1583133 (= lt!2022316 lt!2022309)))

(declare-fun lt!2022332 () List!56785)

(assert (=> d!1583133 (= lt!2022056 lt!2022332)))

(declare-fun lemmaSamePrefixThenSameSuffix!2355 (List!56785 List!56785 List!56785 List!56785 List!56785) Unit!147060)

(assert (=> d!1583133 (= lt!2022309 (lemmaSamePrefixThenSameSuffix!2355 Nil!56661 lt!2022056 Nil!56661 lt!2022332 (list!17925 input!5492)))))

(assert (=> d!1583133 (= lt!2022332 (getSuffix!2939 (list!17925 input!5492) Nil!56661))))

(declare-fun lt!2022323 () Unit!147060)

(declare-fun lt!2022299 () Unit!147060)

(assert (=> d!1583133 (= lt!2022323 lt!2022299)))

(declare-fun isPrefix!4951 (List!56785 List!56785) Bool)

(assert (=> d!1583133 (isPrefix!4951 Nil!56661 (++!12310 Nil!56661 lt!2022056))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3175 (List!56785 List!56785) Unit!147060)

(assert (=> d!1583133 (= lt!2022299 (lemmaConcatTwoListThenFirstIsPrefix!3175 Nil!56661 lt!2022056))))

(assert (=> d!1583133 (= (++!12310 Nil!56661 lt!2022056) (list!17925 input!5492))))

(assert (=> d!1583133 (= (findLongestMatchInnerZipperFast!73 z!3559 Nil!56661 0 lt!2022056 input!5492 lt!2022054) lt!2022304)))

(declare-fun b!4921285 () Bool)

(declare-fun e!3075306 () List!56785)

(declare-fun call!342449 () List!56785)

(assert (=> b!4921285 (= e!3075306 call!342449)))

(declare-fun bm!342437 () Bool)

(declare-fun call!342441 () List!56785)

(assert (=> bm!342437 (= call!342441 (++!12310 Nil!56661 (Cons!56661 call!342450 Nil!56661)))))

(declare-fun call!342447 () (InoxSet Context!6006))

(declare-fun call!342446 () List!56785)

(declare-fun call!342443 () Int)

(declare-fun bm!342438 () Bool)

(assert (=> bm!342438 (= call!342443 (findLongestMatchInnerZipperFast!73 call!342447 call!342441 (+ 0 1) call!342446 input!5492 lt!2022054))))

(declare-fun b!4921286 () Bool)

(declare-fun e!3075305 () Int)

(assert (=> b!4921286 (= e!3075305 0)))

(declare-fun b!4921287 () Bool)

(assert (=> b!4921287 (= e!3075305 0)))

(declare-fun b!4921288 () Bool)

(declare-fun c!837445 () Bool)

(declare-fun call!342442 () Bool)

(assert (=> b!4921288 (= c!837445 call!342442)))

(declare-fun lt!2022337 () Unit!147060)

(declare-fun lt!2022310 () Unit!147060)

(assert (=> b!4921288 (= lt!2022337 lt!2022310)))

(declare-fun lt!2022319 () C!26932)

(declare-fun lt!2022335 () List!56785)

(declare-fun lt!2022338 () List!56785)

(assert (=> b!4921288 (= (++!12310 (++!12310 Nil!56661 (Cons!56661 lt!2022319 Nil!56661)) lt!2022335) lt!2022338)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1381 (List!56785 C!26932 List!56785 List!56785) Unit!147060)

(assert (=> b!4921288 (= lt!2022310 (lemmaMoveElementToOtherListKeepsConcatEq!1381 Nil!56661 lt!2022319 lt!2022335 lt!2022338))))

(assert (=> b!4921288 (= lt!2022338 (list!17925 input!5492))))

(declare-fun tail!9657 (List!56785) List!56785)

(assert (=> b!4921288 (= lt!2022335 (tail!9657 lt!2022056))))

(assert (=> b!4921288 (= lt!2022319 (apply!13635 input!5492 0))))

(declare-fun lt!2022331 () Unit!147060)

(declare-fun lt!2022325 () Unit!147060)

(assert (=> b!4921288 (= lt!2022331 lt!2022325)))

(declare-fun lt!2022318 () List!56785)

(declare-fun head!10510 (List!56785) C!26932)

(assert (=> b!4921288 (isPrefix!4951 (++!12310 Nil!56661 (Cons!56661 (head!10510 (getSuffix!2939 lt!2022318 Nil!56661)) Nil!56661)) lt!2022318)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!763 (List!56785 List!56785) Unit!147060)

(assert (=> b!4921288 (= lt!2022325 (lemmaAddHeadSuffixToPrefixStillPrefix!763 Nil!56661 lt!2022318))))

(assert (=> b!4921288 (= lt!2022318 (list!17925 input!5492))))

(declare-fun lt!2022326 () Unit!147060)

(declare-fun e!3075308 () Unit!147060)

(assert (=> b!4921288 (= lt!2022326 e!3075308)))

(declare-fun c!837448 () Bool)

(assert (=> b!4921288 (= c!837448 (= (size!37441 Nil!56661) (size!37442 input!5492)))))

(declare-fun lt!2022306 () Unit!147060)

(declare-fun lt!2022301 () Unit!147060)

(assert (=> b!4921288 (= lt!2022306 lt!2022301)))

(declare-fun lt!2022334 () List!56785)

(assert (=> b!4921288 (<= (size!37441 Nil!56661) (size!37441 lt!2022334))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!675 (List!56785 List!56785) Unit!147060)

(assert (=> b!4921288 (= lt!2022301 (lemmaIsPrefixThenSmallerEqSize!675 Nil!56661 lt!2022334))))

(assert (=> b!4921288 (= lt!2022334 (list!17925 input!5492))))

(declare-fun lt!2022322 () Unit!147060)

(declare-fun lt!2022315 () Unit!147060)

(assert (=> b!4921288 (= lt!2022322 lt!2022315)))

(declare-fun lt!2022311 () List!56785)

(declare-fun drop!2214 (List!56785 Int) List!56785)

(declare-fun apply!13636 (List!56785 Int) C!26932)

(assert (=> b!4921288 (= (head!10510 (drop!2214 lt!2022311 0)) (apply!13636 lt!2022311 0))))

(declare-fun lemmaDropApply!1272 (List!56785 Int) Unit!147060)

(assert (=> b!4921288 (= lt!2022315 (lemmaDropApply!1272 lt!2022311 0))))

(assert (=> b!4921288 (= lt!2022311 (list!17925 input!5492))))

(declare-fun lt!2022303 () Unit!147060)

(declare-fun lt!2022305 () Unit!147060)

(assert (=> b!4921288 (= lt!2022303 lt!2022305)))

(declare-fun lt!2022327 () List!56785)

(declare-fun lt!2022313 () List!56785)

(assert (=> b!4921288 (and (= lt!2022327 Nil!56661) (= lt!2022313 lt!2022056))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!647 (List!56785 List!56785 List!56785 List!56785) Unit!147060)

(assert (=> b!4921288 (= lt!2022305 (lemmaConcatSameAndSameSizesThenSameLists!647 lt!2022327 lt!2022313 Nil!56661 lt!2022056))))

(declare-fun lt!2022308 () tuple2!61098)

(assert (=> b!4921288 (= lt!2022313 (list!17925 (_2!33852 lt!2022308)))))

(assert (=> b!4921288 (= lt!2022327 call!342449)))

(assert (=> b!4921288 (= lt!2022308 (splitAt!247 input!5492 0))))

(declare-fun e!3075303 () Int)

(declare-fun e!3075307 () Int)

(assert (=> b!4921288 (= e!3075303 e!3075307)))

(declare-fun bm!342439 () Bool)

(declare-fun nullableZipper!800 ((InoxSet Context!6006)) Bool)

(assert (=> bm!342439 (= call!342442 (nullableZipper!800 z!3559))))

(declare-fun b!4921289 () Bool)

(assert (=> b!4921289 (= e!3075306 (list!17925 input!5492))))

(declare-fun bm!342440 () Bool)

(declare-fun c!837446 () Bool)

(declare-fun lt!2022312 () List!56785)

(declare-fun lt!2022297 () List!56785)

(declare-fun lt!2022317 () List!56785)

(declare-fun call!342444 () Unit!147060)

(declare-fun lt!2022330 () List!56785)

(declare-fun lemmaIsPrefixRefl!3347 (List!56785 List!56785) Unit!147060)

(assert (=> bm!342440 (= call!342444 (lemmaIsPrefixRefl!3347 (ite c!837446 lt!2022312 lt!2022330) (ite c!837446 lt!2022317 lt!2022297)))))

(declare-fun b!4921290 () Bool)

(assert (=> b!4921290 (= e!3075307 call!342443)))

(declare-fun b!4921291 () Bool)

(declare-fun Unit!147063 () Unit!147060)

(assert (=> b!4921291 (= e!3075308 Unit!147063)))

(assert (=> b!4921291 (= lt!2022330 (list!17925 input!5492))))

(assert (=> b!4921291 (= lt!2022297 (list!17925 input!5492))))

(declare-fun lt!2022328 () Unit!147060)

(assert (=> b!4921291 (= lt!2022328 call!342444)))

(declare-fun call!342448 () Bool)

(assert (=> b!4921291 call!342448))

(declare-fun lt!2022300 () Unit!147060)

(assert (=> b!4921291 (= lt!2022300 lt!2022328)))

(declare-fun lt!2022329 () List!56785)

(assert (=> b!4921291 (= lt!2022329 (list!17925 input!5492))))

(declare-fun lt!2022324 () Unit!147060)

(declare-fun call!342445 () Unit!147060)

(assert (=> b!4921291 (= lt!2022324 call!342445)))

(assert (=> b!4921291 (= lt!2022329 Nil!56661)))

(declare-fun lt!2022333 () Unit!147060)

(assert (=> b!4921291 (= lt!2022333 lt!2022324)))

(assert (=> b!4921291 false))

(declare-fun bm!342441 () Bool)

(declare-fun c!837447 () Bool)

(assert (=> bm!342441 (= c!837447 c!837446)))

(declare-fun lt!2022321 () List!56785)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1109 (List!56785 List!56785 List!56785) Unit!147060)

(assert (=> bm!342441 (= call!342445 (lemmaIsPrefixSameLengthThenSameList!1109 (ite c!837446 lt!2022321 lt!2022329) Nil!56661 e!3075306))))

(declare-fun b!4921292 () Bool)

(assert (=> b!4921292 (= e!3075304 e!3075303)))

(assert (=> b!4921292 (= c!837446 (= 0 lt!2022054))))

(declare-fun b!4921293 () Bool)

(declare-fun c!837443 () Bool)

(assert (=> b!4921293 (= c!837443 call!342442)))

(declare-fun lt!2022302 () Unit!147060)

(declare-fun lt!2022320 () Unit!147060)

(assert (=> b!4921293 (= lt!2022302 lt!2022320)))

(assert (=> b!4921293 (= lt!2022321 Nil!56661)))

(assert (=> b!4921293 (= lt!2022320 call!342445)))

(assert (=> b!4921293 (= lt!2022321 call!342449)))

(declare-fun lt!2022298 () Unit!147060)

(declare-fun lt!2022307 () Unit!147060)

(assert (=> b!4921293 (= lt!2022298 lt!2022307)))

(assert (=> b!4921293 call!342448))

(assert (=> b!4921293 (= lt!2022307 call!342444)))

(assert (=> b!4921293 (= lt!2022317 call!342449)))

(assert (=> b!4921293 (= lt!2022312 call!342449)))

(assert (=> b!4921293 (= e!3075303 e!3075305)))

(declare-fun b!4921294 () Bool)

(declare-fun lt!2022336 () Int)

(assert (=> b!4921294 (= e!3075307 (ite (= lt!2022336 0) 0 lt!2022336))))

(assert (=> b!4921294 (= lt!2022336 call!342443)))

(declare-fun bm!342442 () Bool)

(assert (=> bm!342442 (= call!342448 (isPrefix!4951 (ite c!837446 lt!2022312 lt!2022330) (ite c!837446 lt!2022317 lt!2022297)))))

(declare-fun b!4921295 () Bool)

(declare-fun Unit!147064 () Unit!147060)

(assert (=> b!4921295 (= e!3075308 Unit!147064)))

(declare-fun bm!342443 () Bool)

(assert (=> bm!342443 (= call!342449 (list!17925 (ite c!837446 input!5492 (_1!33852 lt!2022308))))))

(declare-fun b!4921296 () Bool)

(assert (=> b!4921296 (= e!3075304 0)))

(declare-fun bm!342444 () Bool)

(assert (=> bm!342444 (= call!342446 (tail!9657 lt!2022056))))

(declare-fun bm!342445 () Bool)

(declare-fun derivationStepZipper!578 ((InoxSet Context!6006) C!26932) (InoxSet Context!6006))

(assert (=> bm!342445 (= call!342447 (derivationStepZipper!578 z!3559 call!342450))))

(assert (= (and d!1583133 c!837444) b!4921296))

(assert (= (and d!1583133 (not c!837444)) b!4921292))

(assert (= (and b!4921292 c!837446) b!4921293))

(assert (= (and b!4921292 (not c!837446)) b!4921288))

(assert (= (and b!4921293 c!837443) b!4921287))

(assert (= (and b!4921293 (not c!837443)) b!4921286))

(assert (= (and b!4921288 c!837448) b!4921291))

(assert (= (and b!4921288 (not c!837448)) b!4921295))

(assert (= (and b!4921288 c!837445) b!4921294))

(assert (= (and b!4921288 (not c!837445)) b!4921290))

(assert (= (or b!4921294 b!4921290) bm!342444))

(assert (= (or b!4921294 b!4921290) bm!342436))

(assert (= (or b!4921294 b!4921290) bm!342445))

(assert (= (or b!4921294 b!4921290) bm!342437))

(assert (= (or b!4921294 b!4921290) bm!342438))

(assert (= (or b!4921293 b!4921288) bm!342439))

(assert (= (or b!4921293 b!4921288) bm!342443))

(assert (= (or b!4921293 b!4921291) bm!342440))

(assert (= (or b!4921293 b!4921291) bm!342442))

(assert (= (or b!4921293 b!4921291) bm!342441))

(assert (= (and bm!342441 c!837447) b!4921285))

(assert (= (and bm!342441 (not c!837447)) b!4921289))

(assert (=> b!4921289 m!5935704))

(assert (=> b!4921288 m!5935708))

(declare-fun m!5935876 () Bool)

(assert (=> b!4921288 m!5935876))

(declare-fun m!5935878 () Bool)

(assert (=> b!4921288 m!5935878))

(declare-fun m!5935880 () Bool)

(assert (=> b!4921288 m!5935880))

(declare-fun m!5935882 () Bool)

(assert (=> b!4921288 m!5935882))

(declare-fun m!5935884 () Bool)

(assert (=> b!4921288 m!5935884))

(assert (=> b!4921288 m!5935704))

(declare-fun m!5935886 () Bool)

(assert (=> b!4921288 m!5935886))

(declare-fun m!5935888 () Bool)

(assert (=> b!4921288 m!5935888))

(declare-fun m!5935890 () Bool)

(assert (=> b!4921288 m!5935890))

(declare-fun m!5935892 () Bool)

(assert (=> b!4921288 m!5935892))

(declare-fun m!5935894 () Bool)

(assert (=> b!4921288 m!5935894))

(declare-fun m!5935896 () Bool)

(assert (=> b!4921288 m!5935896))

(declare-fun m!5935898 () Bool)

(assert (=> b!4921288 m!5935898))

(assert (=> b!4921288 m!5935878))

(declare-fun m!5935900 () Bool)

(assert (=> b!4921288 m!5935900))

(assert (=> b!4921288 m!5935696))

(declare-fun m!5935902 () Bool)

(assert (=> b!4921288 m!5935902))

(declare-fun m!5935904 () Bool)

(assert (=> b!4921288 m!5935904))

(declare-fun m!5935906 () Bool)

(assert (=> b!4921288 m!5935906))

(declare-fun m!5935908 () Bool)

(assert (=> b!4921288 m!5935908))

(assert (=> b!4921288 m!5935896))

(assert (=> b!4921288 m!5935876))

(declare-fun m!5935910 () Bool)

(assert (=> b!4921288 m!5935910))

(assert (=> b!4921288 m!5935902))

(declare-fun m!5935912 () Bool)

(assert (=> b!4921288 m!5935912))

(assert (=> d!1583133 m!5935704))

(declare-fun m!5935914 () Bool)

(assert (=> d!1583133 m!5935914))

(assert (=> d!1583133 m!5935704))

(declare-fun m!5935916 () Bool)

(assert (=> d!1583133 m!5935916))

(assert (=> d!1583133 m!5935706))

(assert (=> d!1583133 m!5935704))

(declare-fun m!5935918 () Bool)

(assert (=> d!1583133 m!5935918))

(assert (=> d!1583133 m!5935706))

(declare-fun m!5935920 () Bool)

(assert (=> d!1583133 m!5935920))

(declare-fun m!5935922 () Bool)

(assert (=> d!1583133 m!5935922))

(assert (=> d!1583133 m!5935704))

(declare-fun m!5935924 () Bool)

(assert (=> d!1583133 m!5935924))

(declare-fun m!5935926 () Bool)

(assert (=> d!1583133 m!5935926))

(assert (=> bm!342436 m!5935882))

(declare-fun m!5935928 () Bool)

(assert (=> bm!342437 m!5935928))

(assert (=> b!4921291 m!5935704))

(declare-fun m!5935930 () Bool)

(assert (=> bm!342445 m!5935930))

(declare-fun m!5935932 () Bool)

(assert (=> bm!342439 m!5935932))

(declare-fun m!5935934 () Bool)

(assert (=> bm!342443 m!5935934))

(declare-fun m!5935936 () Bool)

(assert (=> bm!342442 m!5935936))

(declare-fun m!5935938 () Bool)

(assert (=> bm!342440 m!5935938))

(assert (=> bm!342444 m!5935892))

(declare-fun m!5935940 () Bool)

(assert (=> bm!342441 m!5935940))

(declare-fun m!5935942 () Bool)

(assert (=> bm!342438 m!5935942))

(assert (=> start!516660 d!1583133))

(declare-fun d!1583135 () Bool)

(declare-fun lt!2022341 () Int)

(assert (=> d!1583135 (= lt!2022341 (size!37441 (list!17925 input!5492)))))

(declare-fun size!37444 (Conc!14860) Int)

(assert (=> d!1583135 (= lt!2022341 (size!37444 (c!837391 input!5492)))))

(assert (=> d!1583135 (= (size!37442 input!5492) lt!2022341)))

(declare-fun bs!1179155 () Bool)

(assert (= bs!1179155 d!1583135))

(assert (=> bs!1179155 m!5935704))

(assert (=> bs!1179155 m!5935704))

(declare-fun m!5935944 () Bool)

(assert (=> bs!1179155 m!5935944))

(declare-fun m!5935946 () Bool)

(assert (=> bs!1179155 m!5935946))

(assert (=> start!516660 d!1583135))

(declare-fun d!1583137 () Bool)

(assert (=> d!1583137 (= (list!17925 (_2!33852 lt!2022057)) (list!17927 (c!837391 (_2!33852 lt!2022057))))))

(declare-fun bs!1179156 () Bool)

(assert (= bs!1179156 d!1583137))

(declare-fun m!5935948 () Bool)

(assert (=> bs!1179156 m!5935948))

(assert (=> start!516660 d!1583137))

(declare-fun d!1583139 () Bool)

(assert (=> d!1583139 (= (list!17925 input!5492) (list!17927 (c!837391 input!5492)))))

(declare-fun bs!1179157 () Bool)

(assert (= bs!1179157 d!1583139))

(declare-fun m!5935950 () Bool)

(assert (=> bs!1179157 m!5935950))

(assert (=> start!516660 d!1583139))

(declare-fun d!1583141 () Bool)

(assert (=> d!1583141 (= (inv!73379 input!5492) (isBalanced!4075 (c!837391 input!5492)))))

(declare-fun bs!1179158 () Bool)

(assert (= bs!1179158 d!1583141))

(assert (=> bs!1179158 m!5935856))

(assert (=> start!516660 d!1583141))

(declare-fun tp!1382947 () Bool)

(declare-fun tp!1382949 () Bool)

(declare-fun e!3075314 () Bool)

(declare-fun b!4921305 () Bool)

(assert (=> b!4921305 (= e!3075314 (and (inv!73380 (left!41312 (c!837391 input!5492))) tp!1382947 (inv!73380 (right!41642 (c!837391 input!5492))) tp!1382949))))

(declare-fun b!4921307 () Bool)

(declare-fun e!3075313 () Bool)

(declare-fun tp!1382948 () Bool)

(assert (=> b!4921307 (= e!3075313 tp!1382948)))

(declare-fun b!4921306 () Bool)

(declare-fun inv!73387 (IArray!29781) Bool)

(assert (=> b!4921306 (= e!3075314 (and (inv!73387 (xs!18180 (c!837391 input!5492))) e!3075313))))

(assert (=> b!4921131 (= tp!1382917 (and (inv!73380 (c!837391 input!5492)) e!3075314))))

(assert (= (and b!4921131 ((_ is Node!14860) (c!837391 input!5492))) b!4921305))

(assert (= b!4921306 b!4921307))

(assert (= (and b!4921131 ((_ is Leaf!24723) (c!837391 input!5492))) b!4921306))

(declare-fun m!5935952 () Bool)

(assert (=> b!4921305 m!5935952))

(declare-fun m!5935954 () Bool)

(assert (=> b!4921305 m!5935954))

(declare-fun m!5935956 () Bool)

(assert (=> b!4921306 m!5935956))

(assert (=> b!4921131 m!5935700))

(declare-fun condSetEmpty!27460 () Bool)

(assert (=> setNonEmpty!27454 (= condSetEmpty!27460 (= setRest!27454 ((as const (Array Context!6006 Bool)) false)))))

(declare-fun setRes!27460 () Bool)

(assert (=> setNonEmpty!27454 (= tp!1382918 setRes!27460)))

(declare-fun setIsEmpty!27460 () Bool)

(assert (=> setIsEmpty!27460 setRes!27460))

(declare-fun setElem!27460 () Context!6006)

(declare-fun tp!1382954 () Bool)

(declare-fun setNonEmpty!27460 () Bool)

(declare-fun e!3075317 () Bool)

(assert (=> setNonEmpty!27460 (= setRes!27460 (and tp!1382954 (inv!73381 setElem!27460) e!3075317))))

(declare-fun setRest!27460 () (InoxSet Context!6006))

(assert (=> setNonEmpty!27460 (= setRest!27454 ((_ map or) (store ((as const (Array Context!6006 Bool)) false) setElem!27460 true) setRest!27460))))

(declare-fun b!4921312 () Bool)

(declare-fun tp!1382955 () Bool)

(assert (=> b!4921312 (= e!3075317 tp!1382955)))

(assert (= (and setNonEmpty!27454 condSetEmpty!27460) setIsEmpty!27460))

(assert (= (and setNonEmpty!27454 (not condSetEmpty!27460)) setNonEmpty!27460))

(assert (= setNonEmpty!27460 b!4921312))

(declare-fun m!5935958 () Bool)

(assert (=> setNonEmpty!27460 m!5935958))

(declare-fun b!4921317 () Bool)

(declare-fun e!3075320 () Bool)

(declare-fun tp!1382960 () Bool)

(declare-fun tp!1382961 () Bool)

(assert (=> b!4921317 (= e!3075320 (and tp!1382960 tp!1382961))))

(assert (=> b!4921133 (= tp!1382919 e!3075320)))

(assert (= (and b!4921133 ((_ is Cons!56662) (exprs!3503 setElem!27454))) b!4921317))

(check-sat (not d!1583135) (not d!1583129) (not d!1583131) (not b!4921231) (not b!4921148) (not b!4921238) (not setNonEmpty!27460) (not bm!342442) (not d!1583141) (not b!4921221) (not b!4921307) (not bm!342438) (not b!4921288) (not b!4921239) (not b!4921305) (not b!4921219) (not b!4921291) (not b!4921306) (not b!4921146) (not bm!342443) (not b!4921312) (not d!1583133) (not d!1583137) (not d!1583127) (not bm!342439) (not b!4921317) (not bm!342440) (not bm!342437) (not d!1583139) (not b!4921232) (not bm!342444) (not b!4921131) (not bm!342436) (not bm!342441) (not d!1583101) (not bm!342445) (not b!4921289))
(check-sat)
