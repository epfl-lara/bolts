; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689038 () Bool)

(assert start!689038)

(declare-fun b!7081963 () Bool)

(assert (=> b!7081963 true))

(declare-fun b!7081966 () Bool)

(assert (=> b!7081966 true))

(declare-fun b!7081967 () Bool)

(assert (=> b!7081967 true))

(declare-fun bs!1882303 () Bool)

(declare-fun b!7081959 () Bool)

(assert (= bs!1882303 (and b!7081959 b!7081963)))

(declare-datatypes ((C!35670 0))(
  ( (C!35671 (val!27537 Int)) )
))
(declare-datatypes ((List!68626 0))(
  ( (Nil!68502) (Cons!68502 (h!74950 C!35670) (t!382411 List!68626)) )
))
(declare-fun s!7408 () List!68626)

(declare-fun lambda!428178 () Int)

(declare-fun lambda!428174 () Int)

(assert (=> bs!1882303 (= (= Nil!68502 s!7408) (= lambda!428178 lambda!428174))))

(declare-fun e!4257636 () Bool)

(declare-datatypes ((Regex!17700 0))(
  ( (ElementMatch!17700 (c!1321851 C!35670)) (Concat!26545 (regOne!35912 Regex!17700) (regTwo!35912 Regex!17700)) (EmptyExpr!17700) (Star!17700 (reg!18029 Regex!17700)) (EmptyLang!17700) (Union!17700 (regOne!35913 Regex!17700) (regTwo!35913 Regex!17700)) )
))
(declare-datatypes ((List!68627 0))(
  ( (Nil!68503) (Cons!68503 (h!74951 Regex!17700) (t!382412 List!68627)) )
))
(declare-datatypes ((Context!13392 0))(
  ( (Context!13393 (exprs!7196 List!68627)) )
))
(declare-fun z1!570 () (Set Context!13392))

(declare-fun lt!2553170 () (Set Context!13392))

(declare-datatypes ((tuple2!68338 0))(
  ( (tuple2!68339 (_1!37472 List!68626) (_2!37472 List!68626)) )
))
(declare-datatypes ((Option!17001 0))(
  ( (None!17000) (Some!17000 (v!53294 tuple2!68338)) )
))
(declare-fun isDefined!13702 (Option!17001) Bool)

(declare-fun findConcatSeparationZippers!517 ((Set Context!13392) (Set Context!13392) List!68626 List!68626 List!68626) Option!17001)

(assert (=> b!7081959 (= e!4257636 (isDefined!13702 (findConcatSeparationZippers!517 z1!570 lt!2553170 Nil!68502 s!7408 s!7408)))))

(declare-datatypes ((List!68628 0))(
  ( (Nil!68504) (Cons!68504 (h!74952 Context!13392) (t!382413 List!68628)) )
))
(declare-fun lt!2553165 () List!68628)

(declare-fun matchZipper!3240 ((Set Context!13392) List!68626) Bool)

(declare-fun content!13888 (List!68628) (Set Context!13392))

(assert (=> b!7081959 (matchZipper!3240 (content!13888 lt!2553165) Nil!68502)))

(declare-datatypes ((Unit!162111 0))(
  ( (Unit!162112) )
))
(declare-fun lt!2553161 () Unit!162111)

(declare-fun lemmaExistsMatchingContextThenMatchingString!73 (List!68628 List!68626) Unit!162111)

(assert (=> b!7081959 (= lt!2553161 (lemmaExistsMatchingContextThenMatchingString!73 lt!2553165 Nil!68502))))

(declare-fun toList!11041 ((Set Context!13392)) List!68628)

(assert (=> b!7081959 (= lt!2553165 (toList!11041 z1!570))))

(declare-fun exists!3789 ((Set Context!13392) Int) Bool)

(assert (=> b!7081959 (exists!3789 z1!570 lambda!428178)))

(declare-fun lt!2553163 () Context!13392)

(declare-fun lt!2553171 () Unit!162111)

(declare-fun lemmaContainsThenExists!182 ((Set Context!13392) Context!13392 Int) Unit!162111)

(assert (=> b!7081959 (= lt!2553171 (lemmaContainsThenExists!182 z1!570 lt!2553163 lambda!428178))))

(declare-fun lt!2553173 () (Set Context!13392))

(assert (=> b!7081959 (isDefined!13702 (findConcatSeparationZippers!517 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408))))

(declare-fun lt!2553159 () Unit!162111)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!103 ((Set Context!13392) (Set Context!13392) List!68626 List!68626 List!68626 List!68626 List!68626) Unit!162111)

(assert (=> b!7081959 (= lt!2553159 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!103 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408 Nil!68502 s!7408))))

(declare-fun b!7081960 () Bool)

(declare-fun res!2893001 () Bool)

(declare-fun e!4257630 () Bool)

(assert (=> b!7081960 (=> (not res!2893001) (not e!4257630))))

(assert (=> b!7081960 (= res!2893001 (is-Cons!68502 s!7408))))

(declare-fun setIsEmpty!50548 () Bool)

(declare-fun setRes!50548 () Bool)

(assert (=> setIsEmpty!50548 setRes!50548))

(declare-fun b!7081961 () Bool)

(declare-fun e!4257635 () Bool)

(assert (=> b!7081961 (= e!4257635 e!4257636)))

(declare-fun res!2892994 () Bool)

(assert (=> b!7081961 (=> res!2892994 e!4257636)))

(declare-fun lt!2553175 () Bool)

(assert (=> b!7081961 (= res!2892994 (not lt!2553175))))

(assert (=> b!7081961 (= lt!2553175 true)))

(assert (=> b!7081961 (= lt!2553175 (matchZipper!3240 lt!2553173 Nil!68502))))

(declare-fun lt!2553158 () Unit!162111)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!31 ((Set Context!13392) List!68626) Unit!162111)

(assert (=> b!7081961 (= lt!2553158 (lemmaZipperOfEmptyContextMatchesEmptyString!31 lt!2553173 Nil!68502))))

(assert (=> b!7081961 (= lt!2553173 (set.insert lt!2553163 (as set.empty (Set Context!13392))))))

(declare-fun b!7081962 () Bool)

(declare-fun e!4257634 () Bool)

(declare-fun tp_is_empty!44625 () Bool)

(declare-fun tp!1943719 () Bool)

(assert (=> b!7081962 (= e!4257634 (and tp_is_empty!44625 tp!1943719))))

(declare-fun e!4257628 () Bool)

(assert (=> b!7081963 (= e!4257630 (not e!4257628))))

(declare-fun res!2893000 () Bool)

(assert (=> b!7081963 (=> res!2893000 e!4257628)))

(declare-fun lt!2553168 () (Set Context!13392))

(assert (=> b!7081963 (= res!2893000 (not (matchZipper!3240 lt!2553168 s!7408)))))

(declare-fun lt!2553155 () Context!13392)

(assert (=> b!7081963 (= lt!2553168 (set.insert lt!2553155 (as set.empty (Set Context!13392))))))

(declare-fun lt!2553160 () (Set Context!13392))

(declare-fun getWitness!1834 ((Set Context!13392) Int) Context!13392)

(assert (=> b!7081963 (= lt!2553155 (getWitness!1834 lt!2553160 lambda!428174))))

(declare-fun lt!2553166 () List!68628)

(declare-fun exists!3790 (List!68628 Int) Bool)

(assert (=> b!7081963 (exists!3790 lt!2553166 lambda!428174)))

(declare-fun lt!2553164 () Unit!162111)

(declare-fun lemmaZipperMatchesExistsMatchingContext!621 (List!68628 List!68626) Unit!162111)

(assert (=> b!7081963 (= lt!2553164 (lemmaZipperMatchesExistsMatchingContext!621 lt!2553166 s!7408))))

(assert (=> b!7081963 (= lt!2553166 (toList!11041 lt!2553160))))

(declare-fun b!7081964 () Bool)

(declare-fun res!2892995 () Bool)

(declare-fun e!4257629 () Bool)

(assert (=> b!7081964 (=> res!2892995 e!4257629)))

(assert (=> b!7081964 (= res!2892995 (is-Cons!68503 (exprs!7196 lt!2553163)))))

(declare-fun b!7081965 () Bool)

(declare-fun e!4257633 () Bool)

(assert (=> b!7081965 (= e!4257629 e!4257633)))

(declare-fun res!2892997 () Bool)

(assert (=> b!7081965 (=> res!2892997 e!4257633)))

(declare-fun lt!2553172 () Context!13392)

(declare-fun ct2!306 () Context!13392)

(assert (=> b!7081965 (= res!2892997 (not (= lt!2553172 ct2!306)))))

(declare-fun lt!2553156 () Unit!162111)

(declare-fun lambda!428176 () Int)

(declare-fun lemmaConcatPreservesForall!1011 (List!68627 List!68627 Int) Unit!162111)

(assert (=> b!7081965 (= lt!2553156 (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176))))

(declare-fun res!2892993 () Bool)

(assert (=> start!689038 (=> (not res!2892993) (not e!4257630))))

(assert (=> start!689038 (= res!2892993 (matchZipper!3240 lt!2553160 s!7408))))

(declare-fun appendTo!821 ((Set Context!13392) Context!13392) (Set Context!13392))

(assert (=> start!689038 (= lt!2553160 (appendTo!821 z1!570 ct2!306))))

(assert (=> start!689038 e!4257630))

(declare-fun condSetEmpty!50548 () Bool)

(assert (=> start!689038 (= condSetEmpty!50548 (= z1!570 (as set.empty (Set Context!13392))))))

(assert (=> start!689038 setRes!50548))

(declare-fun e!4257632 () Bool)

(declare-fun inv!87110 (Context!13392) Bool)

(assert (=> start!689038 (and (inv!87110 ct2!306) e!4257632)))

(assert (=> start!689038 e!4257634))

(declare-fun e!4257631 () Bool)

(assert (=> b!7081966 (= e!4257628 e!4257631)))

(declare-fun res!2892999 () Bool)

(assert (=> b!7081966 (=> res!2892999 e!4257631)))

(assert (=> b!7081966 (= res!2892999 (or (not (= lt!2553172 lt!2553155)) (not (set.member lt!2553163 z1!570))))))

(declare-fun ++!15869 (List!68627 List!68627) List!68627)

(assert (=> b!7081966 (= lt!2553172 (Context!13393 (++!15869 (exprs!7196 lt!2553163) (exprs!7196 ct2!306))))))

(declare-fun lt!2553157 () Unit!162111)

(assert (=> b!7081966 (= lt!2553157 (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176))))

(declare-fun lambda!428175 () Int)

(declare-fun mapPost2!529 ((Set Context!13392) Int Context!13392) Context!13392)

(assert (=> b!7081966 (= lt!2553163 (mapPost2!529 z1!570 lambda!428175 lt!2553155))))

(declare-fun e!4257637 () Bool)

(assert (=> b!7081967 (= e!4257637 e!4257629)))

(declare-fun res!2892991 () Bool)

(assert (=> b!7081967 (=> res!2892991 e!4257629)))

(declare-fun lt!2553162 () (Set Context!13392))

(declare-fun lt!2553174 () (Set Context!13392))

(declare-fun derivationStepZipper!3150 ((Set Context!13392) C!35670) (Set Context!13392))

(assert (=> b!7081967 (= res!2892991 (not (= (derivationStepZipper!3150 lt!2553162 (h!74950 s!7408)) lt!2553174)))))

(declare-fun lambda!428177 () Int)

(declare-fun flatMap!2626 ((Set Context!13392) Int) (Set Context!13392))

(declare-fun derivationStepZipperUp!2284 (Context!13392 C!35670) (Set Context!13392))

(assert (=> b!7081967 (= (flatMap!2626 lt!2553162 lambda!428177) (derivationStepZipperUp!2284 lt!2553172 (h!74950 s!7408)))))

(declare-fun lt!2553176 () Unit!162111)

(declare-fun lemmaFlatMapOnSingletonSet!2135 ((Set Context!13392) Context!13392 Int) Unit!162111)

(assert (=> b!7081967 (= lt!2553176 (lemmaFlatMapOnSingletonSet!2135 lt!2553162 lt!2553172 lambda!428177))))

(assert (=> b!7081967 (= lt!2553174 (derivationStepZipperUp!2284 lt!2553172 (h!74950 s!7408)))))

(declare-fun lt!2553167 () Unit!162111)

(assert (=> b!7081967 (= lt!2553167 (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176))))

(declare-fun b!7081968 () Bool)

(declare-fun tp!1943720 () Bool)

(assert (=> b!7081968 (= e!4257632 tp!1943720)))

(declare-fun setElem!50548 () Context!13392)

(declare-fun setNonEmpty!50548 () Bool)

(declare-fun tp!1943722 () Bool)

(declare-fun e!4257627 () Bool)

(assert (=> setNonEmpty!50548 (= setRes!50548 (and tp!1943722 (inv!87110 setElem!50548) e!4257627))))

(declare-fun setRest!50548 () (Set Context!13392))

(assert (=> setNonEmpty!50548 (= z1!570 (set.union (set.insert setElem!50548 (as set.empty (Set Context!13392))) setRest!50548))))

(declare-fun b!7081969 () Bool)

(declare-fun tp!1943721 () Bool)

(assert (=> b!7081969 (= e!4257627 tp!1943721)))

(declare-fun b!7081970 () Bool)

(assert (=> b!7081970 (= e!4257631 e!4257637)))

(declare-fun res!2892996 () Bool)

(assert (=> b!7081970 (=> res!2892996 e!4257637)))

(assert (=> b!7081970 (= res!2892996 (not (= lt!2553162 lt!2553168)))))

(assert (=> b!7081970 (= lt!2553162 (set.insert lt!2553172 (as set.empty (Set Context!13392))))))

(declare-fun lt!2553169 () Unit!162111)

(assert (=> b!7081970 (= lt!2553169 (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176))))

(declare-fun b!7081971 () Bool)

(declare-fun res!2892992 () Bool)

(assert (=> b!7081971 (=> res!2892992 e!4257628)))

(assert (=> b!7081971 (= res!2892992 (not (set.member lt!2553155 lt!2553160)))))

(declare-fun b!7081972 () Bool)

(assert (=> b!7081972 (= e!4257633 e!4257635)))

(declare-fun res!2892998 () Bool)

(assert (=> b!7081972 (=> res!2892998 e!4257635)))

(assert (=> b!7081972 (= res!2892998 (not (matchZipper!3240 lt!2553170 s!7408)))))

(assert (=> b!7081972 (= lt!2553170 (set.insert ct2!306 (as set.empty (Set Context!13392))))))

(assert (= (and start!689038 res!2892993) b!7081960))

(assert (= (and b!7081960 res!2893001) b!7081963))

(assert (= (and b!7081963 (not res!2893000)) b!7081971))

(assert (= (and b!7081971 (not res!2892992)) b!7081966))

(assert (= (and b!7081966 (not res!2892999)) b!7081970))

(assert (= (and b!7081970 (not res!2892996)) b!7081967))

(assert (= (and b!7081967 (not res!2892991)) b!7081964))

(assert (= (and b!7081964 (not res!2892995)) b!7081965))

(assert (= (and b!7081965 (not res!2892997)) b!7081972))

(assert (= (and b!7081972 (not res!2892998)) b!7081961))

(assert (= (and b!7081961 (not res!2892994)) b!7081959))

(assert (= (and start!689038 condSetEmpty!50548) setIsEmpty!50548))

(assert (= (and start!689038 (not condSetEmpty!50548)) setNonEmpty!50548))

(assert (= setNonEmpty!50548 b!7081969))

(assert (= start!689038 b!7081968))

(assert (= (and start!689038 (is-Cons!68502 s!7408)) b!7081962))

(declare-fun m!7813284 () Bool)

(assert (=> b!7081961 m!7813284))

(declare-fun m!7813286 () Bool)

(assert (=> b!7081961 m!7813286))

(declare-fun m!7813288 () Bool)

(assert (=> b!7081961 m!7813288))

(declare-fun m!7813290 () Bool)

(assert (=> b!7081967 m!7813290))

(declare-fun m!7813292 () Bool)

(assert (=> b!7081967 m!7813292))

(declare-fun m!7813294 () Bool)

(assert (=> b!7081967 m!7813294))

(declare-fun m!7813296 () Bool)

(assert (=> b!7081967 m!7813296))

(declare-fun m!7813298 () Bool)

(assert (=> b!7081967 m!7813298))

(declare-fun m!7813300 () Bool)

(assert (=> b!7081972 m!7813300))

(declare-fun m!7813302 () Bool)

(assert (=> b!7081972 m!7813302))

(declare-fun m!7813304 () Bool)

(assert (=> b!7081966 m!7813304))

(declare-fun m!7813306 () Bool)

(assert (=> b!7081966 m!7813306))

(assert (=> b!7081966 m!7813294))

(declare-fun m!7813308 () Bool)

(assert (=> b!7081966 m!7813308))

(declare-fun m!7813310 () Bool)

(assert (=> b!7081959 m!7813310))

(declare-fun m!7813312 () Bool)

(assert (=> b!7081959 m!7813312))

(declare-fun m!7813314 () Bool)

(assert (=> b!7081959 m!7813314))

(declare-fun m!7813316 () Bool)

(assert (=> b!7081959 m!7813316))

(declare-fun m!7813318 () Bool)

(assert (=> b!7081959 m!7813318))

(declare-fun m!7813320 () Bool)

(assert (=> b!7081959 m!7813320))

(declare-fun m!7813322 () Bool)

(assert (=> b!7081959 m!7813322))

(assert (=> b!7081959 m!7813318))

(declare-fun m!7813324 () Bool)

(assert (=> b!7081959 m!7813324))

(declare-fun m!7813326 () Bool)

(assert (=> b!7081959 m!7813326))

(declare-fun m!7813328 () Bool)

(assert (=> b!7081959 m!7813328))

(assert (=> b!7081959 m!7813322))

(declare-fun m!7813330 () Bool)

(assert (=> b!7081959 m!7813330))

(assert (=> b!7081959 m!7813326))

(declare-fun m!7813332 () Bool)

(assert (=> b!7081963 m!7813332))

(declare-fun m!7813334 () Bool)

(assert (=> b!7081963 m!7813334))

(declare-fun m!7813336 () Bool)

(assert (=> b!7081963 m!7813336))

(declare-fun m!7813338 () Bool)

(assert (=> b!7081963 m!7813338))

(declare-fun m!7813340 () Bool)

(assert (=> b!7081963 m!7813340))

(declare-fun m!7813342 () Bool)

(assert (=> b!7081963 m!7813342))

(declare-fun m!7813344 () Bool)

(assert (=> setNonEmpty!50548 m!7813344))

(assert (=> b!7081965 m!7813294))

(declare-fun m!7813346 () Bool)

(assert (=> start!689038 m!7813346))

(declare-fun m!7813348 () Bool)

(assert (=> start!689038 m!7813348))

(declare-fun m!7813350 () Bool)

(assert (=> start!689038 m!7813350))

(declare-fun m!7813352 () Bool)

(assert (=> b!7081971 m!7813352))

(declare-fun m!7813354 () Bool)

(assert (=> b!7081970 m!7813354))

(assert (=> b!7081970 m!7813294))

(push 1)

(assert (not start!689038))

(assert (not b!7081966))

(assert (not b!7081970))

(assert (not b!7081967))

(assert (not b!7081965))

(assert (not b!7081962))

(assert (not b!7081968))

(assert (not b!7081969))

(assert (not b!7081959))

(assert tp_is_empty!44625)

(assert (not b!7081963))

(assert (not b!7081972))

(assert (not b!7081961))

(assert (not setNonEmpty!50548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882305 () Bool)

(declare-fun d!2215106 () Bool)

(assert (= bs!1882305 (and d!2215106 b!7081966)))

(declare-fun lambda!428206 () Int)

(assert (=> bs!1882305 (= lambda!428206 lambda!428176)))

(declare-fun forall!16662 (List!68627 Int) Bool)

(assert (=> d!2215106 (= (inv!87110 setElem!50548) (forall!16662 (exprs!7196 setElem!50548) lambda!428206))))

(declare-fun bs!1882306 () Bool)

(assert (= bs!1882306 d!2215106))

(declare-fun m!7813428 () Bool)

(assert (=> bs!1882306 m!7813428))

(assert (=> setNonEmpty!50548 d!2215106))

(declare-fun b!7082045 () Bool)

(declare-fun res!2893048 () Bool)

(declare-fun e!4257684 () Bool)

(assert (=> b!7082045 (=> (not res!2893048) (not e!4257684))))

(declare-fun lt!2553252 () Option!17001)

(declare-fun get!24002 (Option!17001) tuple2!68338)

(assert (=> b!7082045 (= res!2893048 (matchZipper!3240 z1!570 (_1!37472 (get!24002 lt!2553252))))))

(declare-fun b!7082046 () Bool)

(declare-fun lt!2553253 () Unit!162111)

(declare-fun lt!2553251 () Unit!162111)

(assert (=> b!7082046 (= lt!2553253 lt!2553251)))

(declare-fun ++!15871 (List!68626 List!68626) List!68626)

(assert (=> b!7082046 (= (++!15871 (++!15871 Nil!68502 (Cons!68502 (h!74950 s!7408) Nil!68502)) (t!382411 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2998 (List!68626 C!35670 List!68626 List!68626) Unit!162111)

(assert (=> b!7082046 (= lt!2553251 (lemmaMoveElementToOtherListKeepsConcatEq!2998 Nil!68502 (h!74950 s!7408) (t!382411 s!7408) s!7408))))

(declare-fun e!4257682 () Option!17001)

(assert (=> b!7082046 (= e!4257682 (findConcatSeparationZippers!517 z1!570 lt!2553170 (++!15871 Nil!68502 (Cons!68502 (h!74950 s!7408) Nil!68502)) (t!382411 s!7408) s!7408))))

(declare-fun b!7082047 () Bool)

(declare-fun res!2893049 () Bool)

(assert (=> b!7082047 (=> (not res!2893049) (not e!4257684))))

(assert (=> b!7082047 (= res!2893049 (matchZipper!3240 lt!2553170 (_2!37472 (get!24002 lt!2553252))))))

(declare-fun b!7082048 () Bool)

(assert (=> b!7082048 (= e!4257684 (= (++!15871 (_1!37472 (get!24002 lt!2553252)) (_2!37472 (get!24002 lt!2553252))) s!7408))))

(declare-fun b!7082049 () Bool)

(declare-fun e!4257681 () Option!17001)

(assert (=> b!7082049 (= e!4257681 e!4257682)))

(declare-fun c!1321867 () Bool)

(assert (=> b!7082049 (= c!1321867 (is-Nil!68502 s!7408))))

(declare-fun b!7082050 () Bool)

(assert (=> b!7082050 (= e!4257682 None!17000)))

(declare-fun d!2215108 () Bool)

(declare-fun e!4257683 () Bool)

(assert (=> d!2215108 e!4257683))

(declare-fun res!2893047 () Bool)

(assert (=> d!2215108 (=> res!2893047 e!4257683)))

(assert (=> d!2215108 (= res!2893047 e!4257684)))

(declare-fun res!2893050 () Bool)

(assert (=> d!2215108 (=> (not res!2893050) (not e!4257684))))

(assert (=> d!2215108 (= res!2893050 (isDefined!13702 lt!2553252))))

(assert (=> d!2215108 (= lt!2553252 e!4257681)))

(declare-fun c!1321868 () Bool)

(declare-fun e!4257685 () Bool)

(assert (=> d!2215108 (= c!1321868 e!4257685)))

(declare-fun res!2893051 () Bool)

(assert (=> d!2215108 (=> (not res!2893051) (not e!4257685))))

(assert (=> d!2215108 (= res!2893051 (matchZipper!3240 z1!570 Nil!68502))))

(assert (=> d!2215108 (= (++!15871 Nil!68502 s!7408) s!7408)))

(assert (=> d!2215108 (= (findConcatSeparationZippers!517 z1!570 lt!2553170 Nil!68502 s!7408 s!7408) lt!2553252)))

(declare-fun b!7082051 () Bool)

(assert (=> b!7082051 (= e!4257683 (not (isDefined!13702 lt!2553252)))))

(declare-fun b!7082052 () Bool)

(assert (=> b!7082052 (= e!4257685 (matchZipper!3240 lt!2553170 s!7408))))

(declare-fun b!7082053 () Bool)

(assert (=> b!7082053 (= e!4257681 (Some!17000 (tuple2!68339 Nil!68502 s!7408)))))

(assert (= (and d!2215108 res!2893051) b!7082052))

(assert (= (and d!2215108 c!1321868) b!7082053))

(assert (= (and d!2215108 (not c!1321868)) b!7082049))

(assert (= (and b!7082049 c!1321867) b!7082050))

(assert (= (and b!7082049 (not c!1321867)) b!7082046))

(assert (= (and d!2215108 res!2893050) b!7082045))

(assert (= (and b!7082045 res!2893048) b!7082047))

(assert (= (and b!7082047 res!2893049) b!7082048))

(assert (= (and d!2215108 (not res!2893047)) b!7082051))

(declare-fun m!7813430 () Bool)

(assert (=> d!2215108 m!7813430))

(declare-fun m!7813432 () Bool)

(assert (=> d!2215108 m!7813432))

(declare-fun m!7813434 () Bool)

(assert (=> d!2215108 m!7813434))

(declare-fun m!7813436 () Bool)

(assert (=> b!7082045 m!7813436))

(declare-fun m!7813438 () Bool)

(assert (=> b!7082045 m!7813438))

(assert (=> b!7082052 m!7813300))

(assert (=> b!7082051 m!7813430))

(assert (=> b!7082048 m!7813436))

(declare-fun m!7813440 () Bool)

(assert (=> b!7082048 m!7813440))

(declare-fun m!7813442 () Bool)

(assert (=> b!7082046 m!7813442))

(assert (=> b!7082046 m!7813442))

(declare-fun m!7813444 () Bool)

(assert (=> b!7082046 m!7813444))

(declare-fun m!7813446 () Bool)

(assert (=> b!7082046 m!7813446))

(assert (=> b!7082046 m!7813442))

(declare-fun m!7813448 () Bool)

(assert (=> b!7082046 m!7813448))

(assert (=> b!7082047 m!7813436))

(declare-fun m!7813450 () Bool)

(assert (=> b!7082047 m!7813450))

(assert (=> b!7081959 d!2215108))

(declare-fun d!2215110 () Bool)

(declare-fun lt!2553256 () Bool)

(assert (=> d!2215110 (= lt!2553256 (exists!3790 (toList!11041 z1!570) lambda!428178))))

(declare-fun choose!54517 ((Set Context!13392) Int) Bool)

(assert (=> d!2215110 (= lt!2553256 (choose!54517 z1!570 lambda!428178))))

(assert (=> d!2215110 (= (exists!3789 z1!570 lambda!428178) lt!2553256)))

(declare-fun bs!1882307 () Bool)

(assert (= bs!1882307 d!2215110))

(assert (=> bs!1882307 m!7813310))

(assert (=> bs!1882307 m!7813310))

(declare-fun m!7813452 () Bool)

(assert (=> bs!1882307 m!7813452))

(declare-fun m!7813454 () Bool)

(assert (=> bs!1882307 m!7813454))

(assert (=> b!7081959 d!2215110))

(declare-fun d!2215112 () Bool)

(declare-fun c!1321871 () Bool)

(declare-fun isEmpty!39983 (List!68626) Bool)

(assert (=> d!2215112 (= c!1321871 (isEmpty!39983 Nil!68502))))

(declare-fun e!4257688 () Bool)

(assert (=> d!2215112 (= (matchZipper!3240 (content!13888 lt!2553165) Nil!68502) e!4257688)))

(declare-fun b!7082058 () Bool)

(declare-fun nullableZipper!2733 ((Set Context!13392)) Bool)

(assert (=> b!7082058 (= e!4257688 (nullableZipper!2733 (content!13888 lt!2553165)))))

(declare-fun b!7082059 () Bool)

(declare-fun head!14442 (List!68626) C!35670)

(declare-fun tail!13905 (List!68626) List!68626)

(assert (=> b!7082059 (= e!4257688 (matchZipper!3240 (derivationStepZipper!3150 (content!13888 lt!2553165) (head!14442 Nil!68502)) (tail!13905 Nil!68502)))))

(assert (= (and d!2215112 c!1321871) b!7082058))

(assert (= (and d!2215112 (not c!1321871)) b!7082059))

(declare-fun m!7813456 () Bool)

(assert (=> d!2215112 m!7813456))

(assert (=> b!7082058 m!7813318))

(declare-fun m!7813458 () Bool)

(assert (=> b!7082058 m!7813458))

(declare-fun m!7813460 () Bool)

(assert (=> b!7082059 m!7813460))

(assert (=> b!7082059 m!7813318))

(assert (=> b!7082059 m!7813460))

(declare-fun m!7813462 () Bool)

(assert (=> b!7082059 m!7813462))

(declare-fun m!7813464 () Bool)

(assert (=> b!7082059 m!7813464))

(assert (=> b!7082059 m!7813462))

(assert (=> b!7082059 m!7813464))

(declare-fun m!7813466 () Bool)

(assert (=> b!7082059 m!7813466))

(assert (=> b!7081959 d!2215112))

(declare-fun b!7082060 () Bool)

(declare-fun res!2893053 () Bool)

(declare-fun e!4257692 () Bool)

(assert (=> b!7082060 (=> (not res!2893053) (not e!4257692))))

(declare-fun lt!2553258 () Option!17001)

(assert (=> b!7082060 (= res!2893053 (matchZipper!3240 lt!2553173 (_1!37472 (get!24002 lt!2553258))))))

(declare-fun b!7082061 () Bool)

(declare-fun lt!2553259 () Unit!162111)

(declare-fun lt!2553257 () Unit!162111)

(assert (=> b!7082061 (= lt!2553259 lt!2553257)))

(assert (=> b!7082061 (= (++!15871 (++!15871 Nil!68502 (Cons!68502 (h!74950 s!7408) Nil!68502)) (t!382411 s!7408)) s!7408)))

(assert (=> b!7082061 (= lt!2553257 (lemmaMoveElementToOtherListKeepsConcatEq!2998 Nil!68502 (h!74950 s!7408) (t!382411 s!7408) s!7408))))

(declare-fun e!4257690 () Option!17001)

(assert (=> b!7082061 (= e!4257690 (findConcatSeparationZippers!517 lt!2553173 lt!2553170 (++!15871 Nil!68502 (Cons!68502 (h!74950 s!7408) Nil!68502)) (t!382411 s!7408) s!7408))))

(declare-fun b!7082062 () Bool)

(declare-fun res!2893054 () Bool)

(assert (=> b!7082062 (=> (not res!2893054) (not e!4257692))))

(assert (=> b!7082062 (= res!2893054 (matchZipper!3240 lt!2553170 (_2!37472 (get!24002 lt!2553258))))))

(declare-fun b!7082063 () Bool)

(assert (=> b!7082063 (= e!4257692 (= (++!15871 (_1!37472 (get!24002 lt!2553258)) (_2!37472 (get!24002 lt!2553258))) s!7408))))

(declare-fun b!7082064 () Bool)

(declare-fun e!4257689 () Option!17001)

(assert (=> b!7082064 (= e!4257689 e!4257690)))

(declare-fun c!1321872 () Bool)

(assert (=> b!7082064 (= c!1321872 (is-Nil!68502 s!7408))))

(declare-fun b!7082065 () Bool)

(assert (=> b!7082065 (= e!4257690 None!17000)))

(declare-fun d!2215116 () Bool)

(declare-fun e!4257691 () Bool)

(assert (=> d!2215116 e!4257691))

(declare-fun res!2893052 () Bool)

(assert (=> d!2215116 (=> res!2893052 e!4257691)))

(assert (=> d!2215116 (= res!2893052 e!4257692)))

(declare-fun res!2893055 () Bool)

(assert (=> d!2215116 (=> (not res!2893055) (not e!4257692))))

(assert (=> d!2215116 (= res!2893055 (isDefined!13702 lt!2553258))))

(assert (=> d!2215116 (= lt!2553258 e!4257689)))

(declare-fun c!1321873 () Bool)

(declare-fun e!4257693 () Bool)

(assert (=> d!2215116 (= c!1321873 e!4257693)))

(declare-fun res!2893056 () Bool)

(assert (=> d!2215116 (=> (not res!2893056) (not e!4257693))))

(assert (=> d!2215116 (= res!2893056 (matchZipper!3240 lt!2553173 Nil!68502))))

(assert (=> d!2215116 (= (++!15871 Nil!68502 s!7408) s!7408)))

(assert (=> d!2215116 (= (findConcatSeparationZippers!517 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408) lt!2553258)))

(declare-fun b!7082066 () Bool)

(assert (=> b!7082066 (= e!4257691 (not (isDefined!13702 lt!2553258)))))

(declare-fun b!7082067 () Bool)

(assert (=> b!7082067 (= e!4257693 (matchZipper!3240 lt!2553170 s!7408))))

(declare-fun b!7082068 () Bool)

(assert (=> b!7082068 (= e!4257689 (Some!17000 (tuple2!68339 Nil!68502 s!7408)))))

(assert (= (and d!2215116 res!2893056) b!7082067))

(assert (= (and d!2215116 c!1321873) b!7082068))

(assert (= (and d!2215116 (not c!1321873)) b!7082064))

(assert (= (and b!7082064 c!1321872) b!7082065))

(assert (= (and b!7082064 (not c!1321872)) b!7082061))

(assert (= (and d!2215116 res!2893055) b!7082060))

(assert (= (and b!7082060 res!2893053) b!7082062))

(assert (= (and b!7082062 res!2893054) b!7082063))

(assert (= (and d!2215116 (not res!2893052)) b!7082066))

(declare-fun m!7813468 () Bool)

(assert (=> d!2215116 m!7813468))

(assert (=> d!2215116 m!7813284))

(assert (=> d!2215116 m!7813434))

(declare-fun m!7813470 () Bool)

(assert (=> b!7082060 m!7813470))

(declare-fun m!7813472 () Bool)

(assert (=> b!7082060 m!7813472))

(assert (=> b!7082067 m!7813300))

(assert (=> b!7082066 m!7813468))

(assert (=> b!7082063 m!7813470))

(declare-fun m!7813474 () Bool)

(assert (=> b!7082063 m!7813474))

(assert (=> b!7082061 m!7813442))

(assert (=> b!7082061 m!7813442))

(assert (=> b!7082061 m!7813444))

(assert (=> b!7082061 m!7813446))

(assert (=> b!7082061 m!7813442))

(declare-fun m!7813476 () Bool)

(assert (=> b!7082061 m!7813476))

(assert (=> b!7082062 m!7813470))

(declare-fun m!7813478 () Bool)

(assert (=> b!7082062 m!7813478))

(assert (=> b!7081959 d!2215116))

(declare-fun d!2215118 () Bool)

(declare-fun c!1321878 () Bool)

(assert (=> d!2215118 (= c!1321878 (is-Nil!68504 lt!2553165))))

(declare-fun e!4257698 () (Set Context!13392))

(assert (=> d!2215118 (= (content!13888 lt!2553165) e!4257698)))

(declare-fun b!7082077 () Bool)

(assert (=> b!7082077 (= e!4257698 (as set.empty (Set Context!13392)))))

(declare-fun b!7082078 () Bool)

(assert (=> b!7082078 (= e!4257698 (set.union (set.insert (h!74952 lt!2553165) (as set.empty (Set Context!13392))) (content!13888 (t!382413 lt!2553165))))))

(assert (= (and d!2215118 c!1321878) b!7082077))

(assert (= (and d!2215118 (not c!1321878)) b!7082078))

(declare-fun m!7813480 () Bool)

(assert (=> b!7082078 m!7813480))

(declare-fun m!7813482 () Bool)

(assert (=> b!7082078 m!7813482))

(assert (=> b!7081959 d!2215118))

(declare-fun d!2215120 () Bool)

(assert (=> d!2215120 (exists!3789 z1!570 lambda!428178)))

(declare-fun lt!2553262 () Unit!162111)

(declare-fun choose!54518 ((Set Context!13392) Context!13392 Int) Unit!162111)

(assert (=> d!2215120 (= lt!2553262 (choose!54518 z1!570 lt!2553163 lambda!428178))))

(assert (=> d!2215120 (set.member lt!2553163 z1!570)))

(assert (=> d!2215120 (= (lemmaContainsThenExists!182 z1!570 lt!2553163 lambda!428178) lt!2553262)))

(declare-fun bs!1882308 () Bool)

(assert (= bs!1882308 d!2215120))

(assert (=> bs!1882308 m!7813312))

(declare-fun m!7813496 () Bool)

(assert (=> bs!1882308 m!7813496))

(assert (=> bs!1882308 m!7813304))

(assert (=> b!7081959 d!2215120))

(declare-fun bs!1882309 () Bool)

(declare-fun d!2215124 () Bool)

(assert (= bs!1882309 (and d!2215124 b!7081963)))

(declare-fun lambda!428209 () Int)

(assert (=> bs!1882309 (= (= Nil!68502 s!7408) (= lambda!428209 lambda!428174))))

(declare-fun bs!1882310 () Bool)

(assert (= bs!1882310 (and d!2215124 b!7081959)))

(assert (=> bs!1882310 (= lambda!428209 lambda!428178)))

(assert (=> d!2215124 true))

(assert (=> d!2215124 (matchZipper!3240 (content!13888 lt!2553165) Nil!68502)))

(declare-fun lt!2553265 () Unit!162111)

(declare-fun choose!54519 (List!68628 List!68626) Unit!162111)

(assert (=> d!2215124 (= lt!2553265 (choose!54519 lt!2553165 Nil!68502))))

(assert (=> d!2215124 (exists!3790 lt!2553165 lambda!428209)))

(assert (=> d!2215124 (= (lemmaExistsMatchingContextThenMatchingString!73 lt!2553165 Nil!68502) lt!2553265)))

(declare-fun bs!1882311 () Bool)

(assert (= bs!1882311 d!2215124))

(assert (=> bs!1882311 m!7813318))

(assert (=> bs!1882311 m!7813318))

(assert (=> bs!1882311 m!7813320))

(declare-fun m!7813498 () Bool)

(assert (=> bs!1882311 m!7813498))

(declare-fun m!7813500 () Bool)

(assert (=> bs!1882311 m!7813500))

(assert (=> b!7081959 d!2215124))

(declare-fun d!2215126 () Bool)

(declare-fun e!4257703 () Bool)

(assert (=> d!2215126 e!4257703))

(declare-fun res!2893059 () Bool)

(assert (=> d!2215126 (=> (not res!2893059) (not e!4257703))))

(declare-fun lt!2553268 () List!68628)

(declare-fun noDuplicate!2760 (List!68628) Bool)

(assert (=> d!2215126 (= res!2893059 (noDuplicate!2760 lt!2553268))))

(declare-fun choose!54520 ((Set Context!13392)) List!68628)

(assert (=> d!2215126 (= lt!2553268 (choose!54520 z1!570))))

(assert (=> d!2215126 (= (toList!11041 z1!570) lt!2553268)))

(declare-fun b!7082083 () Bool)

(assert (=> b!7082083 (= e!4257703 (= (content!13888 lt!2553268) z1!570))))

(assert (= (and d!2215126 res!2893059) b!7082083))

(declare-fun m!7813502 () Bool)

(assert (=> d!2215126 m!7813502))

(declare-fun m!7813504 () Bool)

(assert (=> d!2215126 m!7813504))

(declare-fun m!7813506 () Bool)

(assert (=> b!7082083 m!7813506))

(assert (=> b!7081959 d!2215126))

(declare-fun d!2215128 () Bool)

(assert (=> d!2215128 (isDefined!13702 (findConcatSeparationZippers!517 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408))))

(declare-fun lt!2553274 () Unit!162111)

(declare-fun choose!54521 ((Set Context!13392) (Set Context!13392) List!68626 List!68626 List!68626 List!68626 List!68626) Unit!162111)

(assert (=> d!2215128 (= lt!2553274 (choose!54521 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408 Nil!68502 s!7408))))

(assert (=> d!2215128 (matchZipper!3240 lt!2553173 Nil!68502)))

(assert (=> d!2215128 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!103 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408 Nil!68502 s!7408) lt!2553274)))

(declare-fun bs!1882313 () Bool)

(assert (= bs!1882313 d!2215128))

(assert (=> bs!1882313 m!7813326))

(assert (=> bs!1882313 m!7813326))

(assert (=> bs!1882313 m!7813328))

(declare-fun m!7813510 () Bool)

(assert (=> bs!1882313 m!7813510))

(assert (=> bs!1882313 m!7813284))

(assert (=> b!7081959 d!2215128))

(declare-fun d!2215132 () Bool)

(declare-fun isEmpty!39984 (Option!17001) Bool)

(assert (=> d!2215132 (= (isDefined!13702 (findConcatSeparationZippers!517 z1!570 lt!2553170 Nil!68502 s!7408 s!7408)) (not (isEmpty!39984 (findConcatSeparationZippers!517 z1!570 lt!2553170 Nil!68502 s!7408 s!7408))))))

(declare-fun bs!1882314 () Bool)

(assert (= bs!1882314 d!2215132))

(assert (=> bs!1882314 m!7813322))

(declare-fun m!7813512 () Bool)

(assert (=> bs!1882314 m!7813512))

(assert (=> b!7081959 d!2215132))

(declare-fun d!2215134 () Bool)

(assert (=> d!2215134 (= (isDefined!13702 (findConcatSeparationZippers!517 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408)) (not (isEmpty!39984 (findConcatSeparationZippers!517 lt!2553173 lt!2553170 Nil!68502 s!7408 s!7408))))))

(declare-fun bs!1882315 () Bool)

(assert (= bs!1882315 d!2215134))

(assert (=> bs!1882315 m!7813326))

(declare-fun m!7813514 () Bool)

(assert (=> bs!1882315 m!7813514))

(assert (=> b!7081959 d!2215134))

(declare-fun d!2215136 () Bool)

(declare-fun e!4257704 () Bool)

(assert (=> d!2215136 e!4257704))

(declare-fun res!2893060 () Bool)

(assert (=> d!2215136 (=> (not res!2893060) (not e!4257704))))

(declare-fun lt!2553277 () List!68628)

(assert (=> d!2215136 (= res!2893060 (noDuplicate!2760 lt!2553277))))

(assert (=> d!2215136 (= lt!2553277 (choose!54520 lt!2553160))))

(assert (=> d!2215136 (= (toList!11041 lt!2553160) lt!2553277)))

(declare-fun b!7082084 () Bool)

(assert (=> b!7082084 (= e!4257704 (= (content!13888 lt!2553277) lt!2553160))))

(assert (= (and d!2215136 res!2893060) b!7082084))

(declare-fun m!7813516 () Bool)

(assert (=> d!2215136 m!7813516))

(declare-fun m!7813518 () Bool)

(assert (=> d!2215136 m!7813518))

(declare-fun m!7813520 () Bool)

(assert (=> b!7082084 m!7813520))

(assert (=> b!7081963 d!2215136))

(declare-fun d!2215138 () Bool)

(declare-fun e!4257707 () Bool)

(assert (=> d!2215138 e!4257707))

(declare-fun res!2893063 () Bool)

(assert (=> d!2215138 (=> (not res!2893063) (not e!4257707))))

(declare-fun lt!2553281 () Context!13392)

(declare-fun dynLambda!27928 (Int Context!13392) Bool)

(assert (=> d!2215138 (= res!2893063 (dynLambda!27928 lambda!428174 lt!2553281))))

(declare-fun getWitness!1836 (List!68628 Int) Context!13392)

(assert (=> d!2215138 (= lt!2553281 (getWitness!1836 (toList!11041 lt!2553160) lambda!428174))))

(assert (=> d!2215138 (exists!3789 lt!2553160 lambda!428174)))

(assert (=> d!2215138 (= (getWitness!1834 lt!2553160 lambda!428174) lt!2553281)))

(declare-fun b!7082087 () Bool)

(assert (=> b!7082087 (= e!4257707 (set.member lt!2553281 lt!2553160))))

(assert (= (and d!2215138 res!2893063) b!7082087))

(declare-fun b_lambda!270633 () Bool)

(assert (=> (not b_lambda!270633) (not d!2215138)))

(declare-fun m!7813528 () Bool)

(assert (=> d!2215138 m!7813528))

(assert (=> d!2215138 m!7813334))

(assert (=> d!2215138 m!7813334))

(declare-fun m!7813530 () Bool)

(assert (=> d!2215138 m!7813530))

(declare-fun m!7813532 () Bool)

(assert (=> d!2215138 m!7813532))

(declare-fun m!7813534 () Bool)

(assert (=> b!7082087 m!7813534))

(assert (=> b!7081963 d!2215138))

(declare-fun d!2215142 () Bool)

(declare-fun c!1321882 () Bool)

(assert (=> d!2215142 (= c!1321882 (isEmpty!39983 s!7408))))

(declare-fun e!4257708 () Bool)

(assert (=> d!2215142 (= (matchZipper!3240 lt!2553168 s!7408) e!4257708)))

(declare-fun b!7082088 () Bool)

(assert (=> b!7082088 (= e!4257708 (nullableZipper!2733 lt!2553168))))

(declare-fun b!7082089 () Bool)

(assert (=> b!7082089 (= e!4257708 (matchZipper!3240 (derivationStepZipper!3150 lt!2553168 (head!14442 s!7408)) (tail!13905 s!7408)))))

(assert (= (and d!2215142 c!1321882) b!7082088))

(assert (= (and d!2215142 (not c!1321882)) b!7082089))

(declare-fun m!7813536 () Bool)

(assert (=> d!2215142 m!7813536))

(declare-fun m!7813538 () Bool)

(assert (=> b!7082088 m!7813538))

(declare-fun m!7813540 () Bool)

(assert (=> b!7082089 m!7813540))

(assert (=> b!7082089 m!7813540))

(declare-fun m!7813542 () Bool)

(assert (=> b!7082089 m!7813542))

(declare-fun m!7813544 () Bool)

(assert (=> b!7082089 m!7813544))

(assert (=> b!7082089 m!7813542))

(assert (=> b!7082089 m!7813544))

(declare-fun m!7813546 () Bool)

(assert (=> b!7082089 m!7813546))

(assert (=> b!7081963 d!2215142))

(declare-fun bs!1882317 () Bool)

(declare-fun d!2215144 () Bool)

(assert (= bs!1882317 (and d!2215144 b!7081963)))

(declare-fun lambda!428212 () Int)

(assert (=> bs!1882317 (= lambda!428212 lambda!428174)))

(declare-fun bs!1882318 () Bool)

(assert (= bs!1882318 (and d!2215144 b!7081959)))

(assert (=> bs!1882318 (= (= s!7408 Nil!68502) (= lambda!428212 lambda!428178))))

(declare-fun bs!1882319 () Bool)

(assert (= bs!1882319 (and d!2215144 d!2215124)))

(assert (=> bs!1882319 (= (= s!7408 Nil!68502) (= lambda!428212 lambda!428209))))

(assert (=> d!2215144 true))

(assert (=> d!2215144 (exists!3790 lt!2553166 lambda!428212)))

(declare-fun lt!2553286 () Unit!162111)

(declare-fun choose!54522 (List!68628 List!68626) Unit!162111)

(assert (=> d!2215144 (= lt!2553286 (choose!54522 lt!2553166 s!7408))))

(assert (=> d!2215144 (matchZipper!3240 (content!13888 lt!2553166) s!7408)))

(assert (=> d!2215144 (= (lemmaZipperMatchesExistsMatchingContext!621 lt!2553166 s!7408) lt!2553286)))

(declare-fun bs!1882320 () Bool)

(assert (= bs!1882320 d!2215144))

(declare-fun m!7813548 () Bool)

(assert (=> bs!1882320 m!7813548))

(declare-fun m!7813550 () Bool)

(assert (=> bs!1882320 m!7813550))

(declare-fun m!7813552 () Bool)

(assert (=> bs!1882320 m!7813552))

(assert (=> bs!1882320 m!7813552))

(declare-fun m!7813554 () Bool)

(assert (=> bs!1882320 m!7813554))

(assert (=> b!7081963 d!2215144))

(declare-fun bs!1882321 () Bool)

(declare-fun d!2215146 () Bool)

(assert (= bs!1882321 (and d!2215146 b!7081963)))

(declare-fun lambda!428215 () Int)

(assert (=> bs!1882321 (not (= lambda!428215 lambda!428174))))

(declare-fun bs!1882322 () Bool)

(assert (= bs!1882322 (and d!2215146 b!7081959)))

(assert (=> bs!1882322 (not (= lambda!428215 lambda!428178))))

(declare-fun bs!1882323 () Bool)

(assert (= bs!1882323 (and d!2215146 d!2215124)))

(assert (=> bs!1882323 (not (= lambda!428215 lambda!428209))))

(declare-fun bs!1882324 () Bool)

(assert (= bs!1882324 (and d!2215146 d!2215144)))

(assert (=> bs!1882324 (not (= lambda!428215 lambda!428212))))

(assert (=> d!2215146 true))

(declare-fun order!28483 () Int)

(declare-fun dynLambda!27929 (Int Int) Int)

(assert (=> d!2215146 (< (dynLambda!27929 order!28483 lambda!428174) (dynLambda!27929 order!28483 lambda!428215))))

(declare-fun forall!16663 (List!68628 Int) Bool)

(assert (=> d!2215146 (= (exists!3790 lt!2553166 lambda!428174) (not (forall!16663 lt!2553166 lambda!428215)))))

(declare-fun bs!1882325 () Bool)

(assert (= bs!1882325 d!2215146))

(declare-fun m!7813570 () Bool)

(assert (=> bs!1882325 m!7813570))

(assert (=> b!7081963 d!2215146))

(declare-fun d!2215150 () Bool)

(declare-fun c!1321888 () Bool)

(assert (=> d!2215150 (= c!1321888 (isEmpty!39983 s!7408))))

(declare-fun e!4257715 () Bool)

(assert (=> d!2215150 (= (matchZipper!3240 lt!2553170 s!7408) e!4257715)))

(declare-fun b!7082104 () Bool)

(assert (=> b!7082104 (= e!4257715 (nullableZipper!2733 lt!2553170))))

(declare-fun b!7082105 () Bool)

(assert (=> b!7082105 (= e!4257715 (matchZipper!3240 (derivationStepZipper!3150 lt!2553170 (head!14442 s!7408)) (tail!13905 s!7408)))))

(assert (= (and d!2215150 c!1321888) b!7082104))

(assert (= (and d!2215150 (not c!1321888)) b!7082105))

(assert (=> d!2215150 m!7813536))

(declare-fun m!7813572 () Bool)

(assert (=> b!7082104 m!7813572))

(assert (=> b!7082105 m!7813540))

(assert (=> b!7082105 m!7813540))

(declare-fun m!7813574 () Bool)

(assert (=> b!7082105 m!7813574))

(assert (=> b!7082105 m!7813544))

(assert (=> b!7082105 m!7813574))

(assert (=> b!7082105 m!7813544))

(declare-fun m!7813576 () Bool)

(assert (=> b!7082105 m!7813576))

(assert (=> b!7081972 d!2215150))

(declare-fun bs!1882326 () Bool)

(declare-fun d!2215152 () Bool)

(assert (= bs!1882326 (and d!2215152 b!7081967)))

(declare-fun lambda!428218 () Int)

(assert (=> bs!1882326 (= lambda!428218 lambda!428177)))

(assert (=> d!2215152 true))

(assert (=> d!2215152 (= (derivationStepZipper!3150 lt!2553162 (h!74950 s!7408)) (flatMap!2626 lt!2553162 lambda!428218))))

(declare-fun bs!1882327 () Bool)

(assert (= bs!1882327 d!2215152))

(declare-fun m!7813578 () Bool)

(assert (=> bs!1882327 m!7813578))

(assert (=> b!7081967 d!2215152))

(declare-fun d!2215154 () Bool)

(declare-fun choose!54523 ((Set Context!13392) Int) (Set Context!13392))

(assert (=> d!2215154 (= (flatMap!2626 lt!2553162 lambda!428177) (choose!54523 lt!2553162 lambda!428177))))

(declare-fun bs!1882328 () Bool)

(assert (= bs!1882328 d!2215154))

(declare-fun m!7813580 () Bool)

(assert (=> bs!1882328 m!7813580))

(assert (=> b!7081967 d!2215154))

(declare-fun d!2215156 () Bool)

(declare-fun dynLambda!27930 (Int Context!13392) (Set Context!13392))

(assert (=> d!2215156 (= (flatMap!2626 lt!2553162 lambda!428177) (dynLambda!27930 lambda!428177 lt!2553172))))

(declare-fun lt!2553292 () Unit!162111)

(declare-fun choose!54524 ((Set Context!13392) Context!13392 Int) Unit!162111)

(assert (=> d!2215156 (= lt!2553292 (choose!54524 lt!2553162 lt!2553172 lambda!428177))))

(assert (=> d!2215156 (= lt!2553162 (set.insert lt!2553172 (as set.empty (Set Context!13392))))))

(assert (=> d!2215156 (= (lemmaFlatMapOnSingletonSet!2135 lt!2553162 lt!2553172 lambda!428177) lt!2553292)))

(declare-fun b_lambda!270635 () Bool)

(assert (=> (not b_lambda!270635) (not d!2215156)))

(declare-fun bs!1882329 () Bool)

(assert (= bs!1882329 d!2215156))

(assert (=> bs!1882329 m!7813296))

(declare-fun m!7813582 () Bool)

(assert (=> bs!1882329 m!7813582))

(declare-fun m!7813584 () Bool)

(assert (=> bs!1882329 m!7813584))

(assert (=> bs!1882329 m!7813354))

(assert (=> b!7081967 d!2215156))

(declare-fun b!7082122 () Bool)

(declare-fun e!4257725 () (Set Context!13392))

(assert (=> b!7082122 (= e!4257725 (as set.empty (Set Context!13392)))))

(declare-fun e!4257727 () (Set Context!13392))

(declare-fun call!643616 () (Set Context!13392))

(declare-fun b!7082123 () Bool)

(assert (=> b!7082123 (= e!4257727 (set.union call!643616 (derivationStepZipperUp!2284 (Context!13393 (t!382412 (exprs!7196 lt!2553172))) (h!74950 s!7408))))))

(declare-fun bm!643611 () Bool)

(declare-fun derivationStepZipperDown!2328 (Regex!17700 Context!13392 C!35670) (Set Context!13392))

(assert (=> bm!643611 (= call!643616 (derivationStepZipperDown!2328 (h!74951 (exprs!7196 lt!2553172)) (Context!13393 (t!382412 (exprs!7196 lt!2553172))) (h!74950 s!7408)))))

(declare-fun d!2215158 () Bool)

(declare-fun c!1321895 () Bool)

(declare-fun e!4257726 () Bool)

(assert (=> d!2215158 (= c!1321895 e!4257726)))

(declare-fun res!2893075 () Bool)

(assert (=> d!2215158 (=> (not res!2893075) (not e!4257726))))

(assert (=> d!2215158 (= res!2893075 (is-Cons!68503 (exprs!7196 lt!2553172)))))

(assert (=> d!2215158 (= (derivationStepZipperUp!2284 lt!2553172 (h!74950 s!7408)) e!4257727)))

(declare-fun b!7082124 () Bool)

(declare-fun nullable!7377 (Regex!17700) Bool)

(assert (=> b!7082124 (= e!4257726 (nullable!7377 (h!74951 (exprs!7196 lt!2553172))))))

(declare-fun b!7082125 () Bool)

(assert (=> b!7082125 (= e!4257727 e!4257725)))

(declare-fun c!1321896 () Bool)

(assert (=> b!7082125 (= c!1321896 (is-Cons!68503 (exprs!7196 lt!2553172)))))

(declare-fun b!7082126 () Bool)

(assert (=> b!7082126 (= e!4257725 call!643616)))

(assert (= (and d!2215158 res!2893075) b!7082124))

(assert (= (and d!2215158 c!1321895) b!7082123))

(assert (= (and d!2215158 (not c!1321895)) b!7082125))

(assert (= (and b!7082125 c!1321896) b!7082126))

(assert (= (and b!7082125 (not c!1321896)) b!7082122))

(assert (= (or b!7082123 b!7082126) bm!643611))

(declare-fun m!7813596 () Bool)

(assert (=> b!7082123 m!7813596))

(declare-fun m!7813598 () Bool)

(assert (=> bm!643611 m!7813598))

(declare-fun m!7813600 () Bool)

(assert (=> b!7082124 m!7813600))

(assert (=> b!7081967 d!2215158))

(declare-fun d!2215162 () Bool)

(assert (=> d!2215162 (forall!16662 (++!15869 (exprs!7196 lt!2553163) (exprs!7196 ct2!306)) lambda!428176)))

(declare-fun lt!2553296 () Unit!162111)

(declare-fun choose!54525 (List!68627 List!68627 Int) Unit!162111)

(assert (=> d!2215162 (= lt!2553296 (choose!54525 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176))))

(assert (=> d!2215162 (forall!16662 (exprs!7196 lt!2553163) lambda!428176)))

(assert (=> d!2215162 (= (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553163) (exprs!7196 ct2!306) lambda!428176) lt!2553296)))

(declare-fun bs!1882330 () Bool)

(assert (= bs!1882330 d!2215162))

(assert (=> bs!1882330 m!7813306))

(assert (=> bs!1882330 m!7813306))

(declare-fun m!7813602 () Bool)

(assert (=> bs!1882330 m!7813602))

(declare-fun m!7813604 () Bool)

(assert (=> bs!1882330 m!7813604))

(declare-fun m!7813606 () Bool)

(assert (=> bs!1882330 m!7813606))

(assert (=> b!7081967 d!2215162))

(declare-fun d!2215164 () Bool)

(declare-fun c!1321897 () Bool)

(assert (=> d!2215164 (= c!1321897 (isEmpty!39983 Nil!68502))))

(declare-fun e!4257728 () Bool)

(assert (=> d!2215164 (= (matchZipper!3240 lt!2553173 Nil!68502) e!4257728)))

(declare-fun b!7082127 () Bool)

(assert (=> b!7082127 (= e!4257728 (nullableZipper!2733 lt!2553173))))

(declare-fun b!7082128 () Bool)

(assert (=> b!7082128 (= e!4257728 (matchZipper!3240 (derivationStepZipper!3150 lt!2553173 (head!14442 Nil!68502)) (tail!13905 Nil!68502)))))

(assert (= (and d!2215164 c!1321897) b!7082127))

(assert (= (and d!2215164 (not c!1321897)) b!7082128))

(assert (=> d!2215164 m!7813456))

(declare-fun m!7813608 () Bool)

(assert (=> b!7082127 m!7813608))

(assert (=> b!7082128 m!7813460))

(assert (=> b!7082128 m!7813460))

(declare-fun m!7813610 () Bool)

(assert (=> b!7082128 m!7813610))

(assert (=> b!7082128 m!7813464))

(assert (=> b!7082128 m!7813610))

(assert (=> b!7082128 m!7813464))

(declare-fun m!7813612 () Bool)

(assert (=> b!7082128 m!7813612))

(assert (=> b!7081961 d!2215164))

(declare-fun d!2215166 () Bool)

(assert (=> d!2215166 (= (matchZipper!3240 lt!2553173 Nil!68502) (isEmpty!39983 Nil!68502))))

(declare-fun lt!2553302 () Unit!162111)

(declare-fun choose!54526 ((Set Context!13392) List!68626) Unit!162111)

(assert (=> d!2215166 (= lt!2553302 (choose!54526 lt!2553173 Nil!68502))))

(assert (=> d!2215166 (= lt!2553173 (set.singleton (Context!13393 Nil!68503)))))

(assert (=> d!2215166 (= (lemmaZipperOfEmptyContextMatchesEmptyString!31 lt!2553173 Nil!68502) lt!2553302)))

(declare-fun bs!1882333 () Bool)

(assert (= bs!1882333 d!2215166))

(assert (=> bs!1882333 m!7813284))

(assert (=> bs!1882333 m!7813456))

(declare-fun m!7813616 () Bool)

(assert (=> bs!1882333 m!7813616))

(assert (=> b!7081961 d!2215166))

(declare-fun d!2215168 () Bool)

(declare-fun e!4257734 () Bool)

(assert (=> d!2215168 e!4257734))

(declare-fun res!2893081 () Bool)

(assert (=> d!2215168 (=> (not res!2893081) (not e!4257734))))

(declare-fun lt!2553305 () List!68627)

(declare-fun content!13890 (List!68627) (Set Regex!17700))

(assert (=> d!2215168 (= res!2893081 (= (content!13890 lt!2553305) (set.union (content!13890 (exprs!7196 lt!2553163)) (content!13890 (exprs!7196 ct2!306)))))))

(declare-fun e!4257733 () List!68627)

(assert (=> d!2215168 (= lt!2553305 e!4257733)))

(declare-fun c!1321902 () Bool)

(assert (=> d!2215168 (= c!1321902 (is-Nil!68503 (exprs!7196 lt!2553163)))))

(assert (=> d!2215168 (= (++!15869 (exprs!7196 lt!2553163) (exprs!7196 ct2!306)) lt!2553305)))

(declare-fun b!7082138 () Bool)

(assert (=> b!7082138 (= e!4257733 (Cons!68503 (h!74951 (exprs!7196 lt!2553163)) (++!15869 (t!382412 (exprs!7196 lt!2553163)) (exprs!7196 ct2!306))))))

(declare-fun b!7082140 () Bool)

(assert (=> b!7082140 (= e!4257734 (or (not (= (exprs!7196 ct2!306) Nil!68503)) (= lt!2553305 (exprs!7196 lt!2553163))))))

(declare-fun b!7082139 () Bool)

(declare-fun res!2893080 () Bool)

(assert (=> b!7082139 (=> (not res!2893080) (not e!4257734))))

(declare-fun size!41267 (List!68627) Int)

(assert (=> b!7082139 (= res!2893080 (= (size!41267 lt!2553305) (+ (size!41267 (exprs!7196 lt!2553163)) (size!41267 (exprs!7196 ct2!306)))))))

(declare-fun b!7082137 () Bool)

(assert (=> b!7082137 (= e!4257733 (exprs!7196 ct2!306))))

(assert (= (and d!2215168 c!1321902) b!7082137))

(assert (= (and d!2215168 (not c!1321902)) b!7082138))

(assert (= (and d!2215168 res!2893081) b!7082139))

(assert (= (and b!7082139 res!2893080) b!7082140))

(declare-fun m!7813624 () Bool)

(assert (=> d!2215168 m!7813624))

(declare-fun m!7813626 () Bool)

(assert (=> d!2215168 m!7813626))

(declare-fun m!7813628 () Bool)

(assert (=> d!2215168 m!7813628))

(declare-fun m!7813630 () Bool)

(assert (=> b!7082138 m!7813630))

(declare-fun m!7813632 () Bool)

(assert (=> b!7082139 m!7813632))

(declare-fun m!7813634 () Bool)

(assert (=> b!7082139 m!7813634))

(declare-fun m!7813636 () Bool)

(assert (=> b!7082139 m!7813636))

(assert (=> b!7081966 d!2215168))

(assert (=> b!7081966 d!2215162))

(declare-fun d!2215172 () Bool)

(declare-fun e!4257741 () Bool)

(assert (=> d!2215172 e!4257741))

(declare-fun res!2893087 () Bool)

(assert (=> d!2215172 (=> (not res!2893087) (not e!4257741))))

(declare-fun lt!2553311 () Context!13392)

(declare-fun dynLambda!27931 (Int Context!13392) Context!13392)

(assert (=> d!2215172 (= res!2893087 (= lt!2553155 (dynLambda!27931 lambda!428175 lt!2553311)))))

(declare-fun choose!54527 ((Set Context!13392) Int Context!13392) Context!13392)

(assert (=> d!2215172 (= lt!2553311 (choose!54527 z1!570 lambda!428175 lt!2553155))))

(declare-fun map!16051 ((Set Context!13392) Int) (Set Context!13392))

(assert (=> d!2215172 (set.member lt!2553155 (map!16051 z1!570 lambda!428175))))

(assert (=> d!2215172 (= (mapPost2!529 z1!570 lambda!428175 lt!2553155) lt!2553311)))

(declare-fun b!7082149 () Bool)

(assert (=> b!7082149 (= e!4257741 (set.member lt!2553311 z1!570))))

(assert (= (and d!2215172 res!2893087) b!7082149))

(declare-fun b_lambda!270641 () Bool)

(assert (=> (not b_lambda!270641) (not d!2215172)))

(declare-fun m!7813658 () Bool)

(assert (=> d!2215172 m!7813658))

(declare-fun m!7813660 () Bool)

(assert (=> d!2215172 m!7813660))

(declare-fun m!7813662 () Bool)

(assert (=> d!2215172 m!7813662))

(declare-fun m!7813664 () Bool)

(assert (=> d!2215172 m!7813664))

(declare-fun m!7813666 () Bool)

(assert (=> b!7082149 m!7813666))

(assert (=> b!7081966 d!2215172))

(assert (=> b!7081970 d!2215162))

(assert (=> b!7081965 d!2215162))

(declare-fun d!2215178 () Bool)

(declare-fun c!1321904 () Bool)

(assert (=> d!2215178 (= c!1321904 (isEmpty!39983 s!7408))))

(declare-fun e!4257742 () Bool)

(assert (=> d!2215178 (= (matchZipper!3240 lt!2553160 s!7408) e!4257742)))

(declare-fun b!7082150 () Bool)

(assert (=> b!7082150 (= e!4257742 (nullableZipper!2733 lt!2553160))))

(declare-fun b!7082151 () Bool)

(assert (=> b!7082151 (= e!4257742 (matchZipper!3240 (derivationStepZipper!3150 lt!2553160 (head!14442 s!7408)) (tail!13905 s!7408)))))

(assert (= (and d!2215178 c!1321904) b!7082150))

(assert (= (and d!2215178 (not c!1321904)) b!7082151))

(assert (=> d!2215178 m!7813536))

(declare-fun m!7813668 () Bool)

(assert (=> b!7082150 m!7813668))

(assert (=> b!7082151 m!7813540))

(assert (=> b!7082151 m!7813540))

(declare-fun m!7813670 () Bool)

(assert (=> b!7082151 m!7813670))

(assert (=> b!7082151 m!7813544))

(assert (=> b!7082151 m!7813670))

(assert (=> b!7082151 m!7813544))

(declare-fun m!7813672 () Bool)

(assert (=> b!7082151 m!7813672))

(assert (=> start!689038 d!2215178))

(declare-fun bs!1882339 () Bool)

(declare-fun d!2215180 () Bool)

(assert (= bs!1882339 (and d!2215180 b!7081966)))

(declare-fun lambda!428229 () Int)

(assert (=> bs!1882339 (= lambda!428229 lambda!428175)))

(assert (=> d!2215180 true))

(assert (=> d!2215180 (= (appendTo!821 z1!570 ct2!306) (map!16051 z1!570 lambda!428229))))

(declare-fun bs!1882340 () Bool)

(assert (= bs!1882340 d!2215180))

(declare-fun m!7813676 () Bool)

(assert (=> bs!1882340 m!7813676))

(assert (=> start!689038 d!2215180))

(declare-fun bs!1882341 () Bool)

(declare-fun d!2215184 () Bool)

(assert (= bs!1882341 (and d!2215184 b!7081966)))

(declare-fun lambda!428230 () Int)

(assert (=> bs!1882341 (= lambda!428230 lambda!428176)))

(declare-fun bs!1882342 () Bool)

(assert (= bs!1882342 (and d!2215184 d!2215106)))

(assert (=> bs!1882342 (= lambda!428230 lambda!428206)))

(assert (=> d!2215184 (= (inv!87110 ct2!306) (forall!16662 (exprs!7196 ct2!306) lambda!428230))))

(declare-fun bs!1882343 () Bool)

(assert (= bs!1882343 d!2215184))

(declare-fun m!7813678 () Bool)

(assert (=> bs!1882343 m!7813678))

(assert (=> start!689038 d!2215184))

(declare-fun condSetEmpty!50554 () Bool)

(assert (=> setNonEmpty!50548 (= condSetEmpty!50554 (= setRest!50548 (as set.empty (Set Context!13392))))))

(declare-fun setRes!50554 () Bool)

(assert (=> setNonEmpty!50548 (= tp!1943722 setRes!50554)))

(declare-fun setIsEmpty!50554 () Bool)

(assert (=> setIsEmpty!50554 setRes!50554))

(declare-fun setNonEmpty!50554 () Bool)

(declare-fun tp!1943739 () Bool)

(declare-fun setElem!50554 () Context!13392)

(declare-fun e!4257747 () Bool)

(assert (=> setNonEmpty!50554 (= setRes!50554 (and tp!1943739 (inv!87110 setElem!50554) e!4257747))))

(declare-fun setRest!50554 () (Set Context!13392))

(assert (=> setNonEmpty!50554 (= setRest!50548 (set.union (set.insert setElem!50554 (as set.empty (Set Context!13392))) setRest!50554))))

(declare-fun b!7082160 () Bool)

(declare-fun tp!1943740 () Bool)

(assert (=> b!7082160 (= e!4257747 tp!1943740)))

(assert (= (and setNonEmpty!50548 condSetEmpty!50554) setIsEmpty!50554))

(assert (= (and setNonEmpty!50548 (not condSetEmpty!50554)) setNonEmpty!50554))

(assert (= setNonEmpty!50554 b!7082160))

(declare-fun m!7813680 () Bool)

(assert (=> setNonEmpty!50554 m!7813680))

(declare-fun b!7082166 () Bool)

(declare-fun e!4257751 () Bool)

(declare-fun tp!1943745 () Bool)

(declare-fun tp!1943746 () Bool)

(assert (=> b!7082166 (= e!4257751 (and tp!1943745 tp!1943746))))

(assert (=> b!7081968 (= tp!1943720 e!4257751)))

(assert (= (and b!7081968 (is-Cons!68503 (exprs!7196 ct2!306))) b!7082166))

(declare-fun b!7082171 () Bool)

(declare-fun e!4257754 () Bool)

(declare-fun tp!1943749 () Bool)

(assert (=> b!7082171 (= e!4257754 (and tp_is_empty!44625 tp!1943749))))

(assert (=> b!7081962 (= tp!1943719 e!4257754)))

(assert (= (and b!7081962 (is-Cons!68502 (t!382411 s!7408))) b!7082171))

(declare-fun b!7082172 () Bool)

(declare-fun e!4257755 () Bool)

(declare-fun tp!1943750 () Bool)

(declare-fun tp!1943751 () Bool)

(assert (=> b!7082172 (= e!4257755 (and tp!1943750 tp!1943751))))

(assert (=> b!7081969 (= tp!1943721 e!4257755)))

(assert (= (and b!7081969 (is-Cons!68503 (exprs!7196 setElem!50548))) b!7082172))

(declare-fun b_lambda!270643 () Bool)

(assert (= b_lambda!270641 (or b!7081966 b_lambda!270643)))

(declare-fun bs!1882344 () Bool)

(declare-fun d!2215188 () Bool)

(assert (= bs!1882344 (and d!2215188 b!7081966)))

(declare-fun lt!2553317 () Unit!162111)

(assert (=> bs!1882344 (= lt!2553317 (lemmaConcatPreservesForall!1011 (exprs!7196 lt!2553311) (exprs!7196 ct2!306) lambda!428176))))

(assert (=> bs!1882344 (= (dynLambda!27931 lambda!428175 lt!2553311) (Context!13393 (++!15869 (exprs!7196 lt!2553311) (exprs!7196 ct2!306))))))

(declare-fun m!7813688 () Bool)

(assert (=> bs!1882344 m!7813688))

(declare-fun m!7813690 () Bool)

(assert (=> bs!1882344 m!7813690))

(assert (=> d!2215172 d!2215188))

(declare-fun b_lambda!270645 () Bool)

(assert (= b_lambda!270635 (or b!7081967 b_lambda!270645)))

(declare-fun bs!1882345 () Bool)

(declare-fun d!2215190 () Bool)

(assert (= bs!1882345 (and d!2215190 b!7081967)))

(assert (=> bs!1882345 (= (dynLambda!27930 lambda!428177 lt!2553172) (derivationStepZipperUp!2284 lt!2553172 (h!74950 s!7408)))))

(assert (=> bs!1882345 m!7813290))

(assert (=> d!2215156 d!2215190))

(declare-fun b_lambda!270647 () Bool)

(assert (= b_lambda!270633 (or b!7081963 b_lambda!270647)))

(declare-fun bs!1882346 () Bool)

(declare-fun d!2215192 () Bool)

(assert (= bs!1882346 (and d!2215192 b!7081963)))

(assert (=> bs!1882346 (= (dynLambda!27928 lambda!428174 lt!2553281) (matchZipper!3240 (set.insert lt!2553281 (as set.empty (Set Context!13392))) s!7408))))

(declare-fun m!7813692 () Bool)

(assert (=> bs!1882346 m!7813692))

(assert (=> bs!1882346 m!7813692))

(declare-fun m!7813694 () Bool)

(assert (=> bs!1882346 m!7813694))

(assert (=> d!2215138 d!2215192))

(push 1)

(assert (not b!7082078))

(assert (not b!7082104))

(assert (not d!2215178))

(assert (not b!7082105))

(assert (not d!2215138))

(assert (not b!7082051))

(assert (not b!7082084))

(assert (not d!2215144))

(assert (not b!7082046))

(assert (not b!7082063))

(assert (not b!7082160))

(assert (not b!7082172))

(assert (not b!7082047))

(assert (not bs!1882346))

(assert (not d!2215184))

(assert (not d!2215128))

(assert (not b!7082048))

(assert (not b!7082052))

(assert (not b!7082150))

(assert (not b!7082128))

(assert (not d!2215116))

(assert (not d!2215152))

(assert (not d!2215132))

(assert tp_is_empty!44625)

(assert (not b!7082089))

(assert (not b!7082058))

(assert (not b_lambda!270643))

(assert (not d!2215106))

(assert (not d!2215162))

(assert (not b!7082171))

(assert (not b!7082083))

(assert (not b!7082151))

(assert (not b!7082166))

(assert (not b!7082062))

(assert (not b!7082061))

(assert (not b!7082059))

(assert (not b!7082060))

(assert (not b!7082127))

(assert (not b_lambda!270647))

(assert (not d!2215124))

(assert (not d!2215126))

(assert (not bm!643611))

(assert (not b!7082139))

(assert (not d!2215154))

(assert (not d!2215180))

(assert (not d!2215142))

(assert (not b!7082067))

(assert (not b!7082045))

(assert (not d!2215164))

(assert (not d!2215146))

(assert (not b!7082123))

(assert (not b!7082124))

(assert (not d!2215150))

(assert (not d!2215108))

(assert (not b!7082088))

(assert (not d!2215166))

(assert (not bs!1882345))

(assert (not bs!1882344))

(assert (not d!2215136))

(assert (not b!7082066))

(assert (not b_lambda!270645))

(assert (not d!2215172))

(assert (not d!2215134))

(assert (not setNonEmpty!50554))

(assert (not d!2215112))

(assert (not b!7082138))

(assert (not d!2215110))

(assert (not d!2215120))

(assert (not d!2215168))

(assert (not d!2215156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

