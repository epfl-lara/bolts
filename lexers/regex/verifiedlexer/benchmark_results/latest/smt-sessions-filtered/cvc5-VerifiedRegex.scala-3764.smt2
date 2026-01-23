; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!209700 () Bool)

(assert start!209700)

(declare-fun b!2161906 () Bool)

(declare-fun e!1383442 () Bool)

(declare-fun tp_is_empty!9595 () Bool)

(assert (=> b!2161906 (= e!1383442 tp_is_empty!9595)))

(declare-fun b!2161908 () Bool)

(declare-fun e!1383445 () Bool)

(declare-fun e!1383448 () Bool)

(assert (=> b!2161908 (= e!1383445 e!1383448)))

(declare-fun res!931677 () Bool)

(assert (=> b!2161908 (=> (not res!931677) (not e!1383448))))

(declare-datatypes ((C!12134 0))(
  ( (C!12135 (val!7053 Int)) )
))
(declare-datatypes ((List!25195 0))(
  ( (Nil!25111) (Cons!25111 (h!30512 C!12134) (t!197743 List!25195)) )
))
(declare-fun lt!804957 () List!25195)

(declare-datatypes ((IArray!16265 0))(
  ( (IArray!16266 (innerList!8190 List!25195)) )
))
(declare-datatypes ((Conc!8130 0))(
  ( (Node!8130 (left!19306 Conc!8130) (right!19636 Conc!8130) (csize!16490 Int) (cheight!8341 Int)) (Leaf!11895 (xs!11072 IArray!16265) (csize!16491 Int)) (Empty!8130) )
))
(declare-datatypes ((BalanceConc!16022 0))(
  ( (BalanceConc!16023 (c!342040 Conc!8130)) )
))
(declare-fun totalInput!977 () BalanceConc!16022)

(declare-fun isSuffix!661 (List!25195 List!25195) Bool)

(declare-fun list!9615 (BalanceConc!16022) List!25195)

(assert (=> b!2161908 (= res!931677 (isSuffix!661 lt!804957 (list!9615 totalInput!977)))))

(declare-fun input!5540 () BalanceConc!16022)

(assert (=> b!2161908 (= lt!804957 (list!9615 input!5540))))

(declare-fun b!2161909 () Bool)

(declare-fun tp!674571 () Bool)

(assert (=> b!2161909 (= e!1383442 tp!674571)))

(declare-fun b!2161910 () Bool)

(declare-fun tp!674573 () Bool)

(declare-fun tp!674574 () Bool)

(assert (=> b!2161910 (= e!1383442 (and tp!674573 tp!674574))))

(declare-fun b!2161911 () Bool)

(declare-fun e!1383444 () Bool)

(declare-fun tp!674575 () Bool)

(assert (=> b!2161911 (= e!1383444 tp!674575)))

(declare-fun setNonEmpty!18097 () Bool)

(declare-fun tp!674570 () Bool)

(declare-datatypes ((Regex!5994 0))(
  ( (ElementMatch!5994 (c!342041 C!12134)) (Concat!10296 (regOne!12500 Regex!5994) (regTwo!12500 Regex!5994)) (EmptyExpr!5994) (Star!5994 (reg!6323 Regex!5994)) (EmptyLang!5994) (Union!5994 (regOne!12501 Regex!5994) (regTwo!12501 Regex!5994)) )
))
(declare-datatypes ((List!25196 0))(
  ( (Nil!25112) (Cons!25112 (h!30513 Regex!5994) (t!197744 List!25196)) )
))
(declare-datatypes ((Context!3128 0))(
  ( (Context!3129 (exprs!2064 List!25196)) )
))
(declare-fun setElem!18097 () Context!3128)

(declare-fun setRes!18097 () Bool)

(declare-fun inv!33283 (Context!3128) Bool)

(assert (=> setNonEmpty!18097 (= setRes!18097 (and tp!674570 (inv!33283 setElem!18097) e!1383444))))

(declare-fun z!4055 () (Set Context!3128))

(declare-fun setRest!18097 () (Set Context!3128))

(assert (=> setNonEmpty!18097 (= z!4055 (set.union (set.insert setElem!18097 (as set.empty (Set Context!3128))) setRest!18097))))

(declare-fun b!2161912 () Bool)

(declare-fun e!1383447 () Bool)

(declare-fun tp!674572 () Bool)

(declare-fun inv!33284 (Conc!8130) Bool)

(assert (=> b!2161912 (= e!1383447 (and (inv!33284 (c!342040 totalInput!977)) tp!674572))))

(declare-fun b!2161913 () Bool)

(declare-fun tp!674577 () Bool)

(declare-fun tp!674576 () Bool)

(assert (=> b!2161913 (= e!1383442 (and tp!674577 tp!674576))))

(declare-fun b!2161907 () Bool)

(declare-fun e!1383443 () Bool)

(declare-datatypes ((tuple2!24842 0))(
  ( (tuple2!24843 (_1!14791 List!25195) (_2!14791 List!25195)) )
))
(declare-fun lt!804959 () tuple2!24842)

(declare-fun ++!6351 (List!25195 List!25195) List!25195)

(assert (=> b!2161907 (= e!1383443 (not (= (++!6351 (_1!14791 lt!804959) (_2!14791 lt!804959)) lt!804957)))))

(declare-fun res!931675 () Bool)

(assert (=> start!209700 (=> (not res!931675) (not e!1383445))))

(declare-fun r!12534 () Regex!5994)

(declare-fun validRegex!2270 (Regex!5994) Bool)

(assert (=> start!209700 (= res!931675 (validRegex!2270 r!12534))))

(assert (=> start!209700 e!1383445))

(assert (=> start!209700 e!1383442))

(declare-fun condSetEmpty!18097 () Bool)

(assert (=> start!209700 (= condSetEmpty!18097 (= z!4055 (as set.empty (Set Context!3128))))))

(assert (=> start!209700 setRes!18097))

(declare-fun inv!33285 (BalanceConc!16022) Bool)

(assert (=> start!209700 (and (inv!33285 totalInput!977) e!1383447)))

(declare-fun e!1383446 () Bool)

(assert (=> start!209700 (and (inv!33285 input!5540) e!1383446)))

(declare-fun b!2161914 () Bool)

(declare-fun tp!674569 () Bool)

(assert (=> b!2161914 (= e!1383446 (and (inv!33284 (c!342040 input!5540)) tp!674569))))

(declare-fun b!2161915 () Bool)

(declare-fun res!931676 () Bool)

(assert (=> b!2161915 (=> (not res!931676) (not e!1383445))))

(declare-datatypes ((List!25197 0))(
  ( (Nil!25113) (Cons!25113 (h!30514 Context!3128) (t!197745 List!25197)) )
))
(declare-fun unfocusZipper!101 (List!25197) Regex!5994)

(declare-fun toList!1177 ((Set Context!3128)) List!25197)

(assert (=> b!2161915 (= res!931676 (= (unfocusZipper!101 (toList!1177 z!4055)) r!12534))))

(declare-fun setIsEmpty!18097 () Bool)

(assert (=> setIsEmpty!18097 setRes!18097))

(declare-fun b!2161916 () Bool)

(assert (=> b!2161916 (= e!1383448 e!1383443)))

(declare-fun res!931674 () Bool)

(assert (=> b!2161916 (=> (not res!931674) (not e!1383443))))

(declare-datatypes ((tuple2!24844 0))(
  ( (tuple2!24845 (_1!14792 BalanceConc!16022) (_2!14792 BalanceConc!16022)) )
))
(declare-fun lt!804960 () tuple2!24844)

(assert (=> b!2161916 (= res!931674 (= (++!6351 (list!9615 (_1!14792 lt!804960)) (list!9615 (_2!14792 lt!804960))) lt!804957))))

(declare-fun findLongestMatch!548 (Regex!5994 List!25195) tuple2!24842)

(assert (=> b!2161916 (= lt!804959 (findLongestMatch!548 r!12534 lt!804957))))

(declare-fun lt!804961 () Int)

(declare-fun size!19617 (BalanceConc!16022) Int)

(assert (=> b!2161916 (= lt!804961 (size!19617 input!5540))))

(declare-fun lt!804958 () Int)

(assert (=> b!2161916 (= lt!804958 (size!19617 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!43 ((Set Context!3128) BalanceConc!16022 BalanceConc!16022) tuple2!24844)

(assert (=> b!2161916 (= lt!804960 (findLongestMatchZipperSequenceV3!43 z!4055 input!5540 totalInput!977))))

(assert (= (and start!209700 res!931675) b!2161915))

(assert (= (and b!2161915 res!931676) b!2161908))

(assert (= (and b!2161908 res!931677) b!2161916))

(assert (= (and b!2161916 res!931674) b!2161907))

(assert (= (and start!209700 (is-ElementMatch!5994 r!12534)) b!2161906))

(assert (= (and start!209700 (is-Concat!10296 r!12534)) b!2161910))

(assert (= (and start!209700 (is-Star!5994 r!12534)) b!2161909))

(assert (= (and start!209700 (is-Union!5994 r!12534)) b!2161913))

(assert (= (and start!209700 condSetEmpty!18097) setIsEmpty!18097))

(assert (= (and start!209700 (not condSetEmpty!18097)) setNonEmpty!18097))

(assert (= setNonEmpty!18097 b!2161911))

(assert (= start!209700 b!2161912))

(assert (= start!209700 b!2161914))

(declare-fun m!2602527 () Bool)

(assert (=> b!2161916 m!2602527))

(declare-fun m!2602529 () Bool)

(assert (=> b!2161916 m!2602529))

(declare-fun m!2602531 () Bool)

(assert (=> b!2161916 m!2602531))

(declare-fun m!2602533 () Bool)

(assert (=> b!2161916 m!2602533))

(declare-fun m!2602535 () Bool)

(assert (=> b!2161916 m!2602535))

(declare-fun m!2602537 () Bool)

(assert (=> b!2161916 m!2602537))

(assert (=> b!2161916 m!2602531))

(declare-fun m!2602539 () Bool)

(assert (=> b!2161916 m!2602539))

(assert (=> b!2161916 m!2602533))

(declare-fun m!2602541 () Bool)

(assert (=> start!209700 m!2602541))

(declare-fun m!2602543 () Bool)

(assert (=> start!209700 m!2602543))

(declare-fun m!2602545 () Bool)

(assert (=> start!209700 m!2602545))

(declare-fun m!2602547 () Bool)

(assert (=> b!2161914 m!2602547))

(declare-fun m!2602549 () Bool)

(assert (=> setNonEmpty!18097 m!2602549))

(declare-fun m!2602551 () Bool)

(assert (=> b!2161908 m!2602551))

(assert (=> b!2161908 m!2602551))

(declare-fun m!2602553 () Bool)

(assert (=> b!2161908 m!2602553))

(declare-fun m!2602555 () Bool)

(assert (=> b!2161908 m!2602555))

(declare-fun m!2602557 () Bool)

(assert (=> b!2161907 m!2602557))

(declare-fun m!2602559 () Bool)

(assert (=> b!2161915 m!2602559))

(assert (=> b!2161915 m!2602559))

(declare-fun m!2602561 () Bool)

(assert (=> b!2161915 m!2602561))

(declare-fun m!2602563 () Bool)

(assert (=> b!2161912 m!2602563))

(push 1)

(assert tp_is_empty!9595)

(assert (not b!2161911))

(assert (not b!2161910))

(assert (not b!2161913))

(assert (not b!2161914))

(assert (not b!2161908))

(assert (not b!2161909))

(assert (not b!2161907))

(assert (not start!209700))

(assert (not setNonEmpty!18097))

(assert (not b!2161912))

(assert (not b!2161916))

(assert (not b!2161915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!646951 () Bool)

(declare-fun c!342046 () Bool)

(assert (=> d!646951 (= c!342046 (is-Node!8130 (c!342040 input!5540)))))

(declare-fun e!1383474 () Bool)

(assert (=> d!646951 (= (inv!33284 (c!342040 input!5540)) e!1383474)))

(declare-fun b!2161956 () Bool)

(declare-fun inv!33289 (Conc!8130) Bool)

(assert (=> b!2161956 (= e!1383474 (inv!33289 (c!342040 input!5540)))))

(declare-fun b!2161957 () Bool)

(declare-fun e!1383475 () Bool)

(assert (=> b!2161957 (= e!1383474 e!1383475)))

(declare-fun res!931692 () Bool)

(assert (=> b!2161957 (= res!931692 (not (is-Leaf!11895 (c!342040 input!5540))))))

(assert (=> b!2161957 (=> res!931692 e!1383475)))

(declare-fun b!2161958 () Bool)

(declare-fun inv!33290 (Conc!8130) Bool)

(assert (=> b!2161958 (= e!1383475 (inv!33290 (c!342040 input!5540)))))

(assert (= (and d!646951 c!342046) b!2161956))

(assert (= (and d!646951 (not c!342046)) b!2161957))

(assert (= (and b!2161957 (not res!931692)) b!2161958))

(declare-fun m!2602611 () Bool)

(assert (=> b!2161956 m!2602611))

(declare-fun m!2602613 () Bool)

(assert (=> b!2161958 m!2602613))

(assert (=> b!2161914 d!646951))

(declare-fun d!646955 () Bool)

(declare-fun c!342047 () Bool)

(assert (=> d!646955 (= c!342047 (is-Node!8130 (c!342040 totalInput!977)))))

(declare-fun e!1383476 () Bool)

(assert (=> d!646955 (= (inv!33284 (c!342040 totalInput!977)) e!1383476)))

(declare-fun b!2161959 () Bool)

(assert (=> b!2161959 (= e!1383476 (inv!33289 (c!342040 totalInput!977)))))

(declare-fun b!2161960 () Bool)

(declare-fun e!1383477 () Bool)

(assert (=> b!2161960 (= e!1383476 e!1383477)))

(declare-fun res!931693 () Bool)

(assert (=> b!2161960 (= res!931693 (not (is-Leaf!11895 (c!342040 totalInput!977))))))

(assert (=> b!2161960 (=> res!931693 e!1383477)))

(declare-fun b!2161961 () Bool)

(assert (=> b!2161961 (= e!1383477 (inv!33290 (c!342040 totalInput!977)))))

(assert (= (and d!646955 c!342047) b!2161959))

(assert (= (and d!646955 (not c!342047)) b!2161960))

(assert (= (and b!2161960 (not res!931693)) b!2161961))

(declare-fun m!2602615 () Bool)

(assert (=> b!2161959 m!2602615))

(declare-fun m!2602617 () Bool)

(assert (=> b!2161961 m!2602617))

(assert (=> b!2161912 d!646955))

(declare-fun d!646957 () Bool)

(declare-fun e!1383480 () Bool)

(assert (=> d!646957 e!1383480))

(declare-fun res!931696 () Bool)

(assert (=> d!646957 (=> res!931696 e!1383480)))

(declare-fun lt!804983 () Bool)

(assert (=> d!646957 (= res!931696 (not lt!804983))))

(declare-fun drop!1217 (List!25195 Int) List!25195)

(declare-fun size!19619 (List!25195) Int)

(assert (=> d!646957 (= lt!804983 (= lt!804957 (drop!1217 (list!9615 totalInput!977) (- (size!19619 (list!9615 totalInput!977)) (size!19619 lt!804957)))))))

(assert (=> d!646957 (= (isSuffix!661 lt!804957 (list!9615 totalInput!977)) lt!804983)))

(declare-fun b!2161964 () Bool)

(assert (=> b!2161964 (= e!1383480 (>= (size!19619 (list!9615 totalInput!977)) (size!19619 lt!804957)))))

(assert (= (and d!646957 (not res!931696)) b!2161964))

(assert (=> d!646957 m!2602551))

(declare-fun m!2602619 () Bool)

(assert (=> d!646957 m!2602619))

(declare-fun m!2602621 () Bool)

(assert (=> d!646957 m!2602621))

(assert (=> d!646957 m!2602551))

(declare-fun m!2602623 () Bool)

(assert (=> d!646957 m!2602623))

(assert (=> b!2161964 m!2602551))

(assert (=> b!2161964 m!2602619))

(assert (=> b!2161964 m!2602621))

(assert (=> b!2161908 d!646957))

(declare-fun d!646959 () Bool)

(declare-fun list!9617 (Conc!8130) List!25195)

(assert (=> d!646959 (= (list!9615 totalInput!977) (list!9617 (c!342040 totalInput!977)))))

(declare-fun bs!446079 () Bool)

(assert (= bs!446079 d!646959))

(declare-fun m!2602625 () Bool)

(assert (=> bs!446079 m!2602625))

(assert (=> b!2161908 d!646959))

(declare-fun d!646961 () Bool)

(assert (=> d!646961 (= (list!9615 input!5540) (list!9617 (c!342040 input!5540)))))

(declare-fun bs!446080 () Bool)

(assert (= bs!446080 d!646961))

(declare-fun m!2602627 () Bool)

(assert (=> bs!446080 m!2602627))

(assert (=> b!2161908 d!646961))

(declare-fun b!2161975 () Bool)

(declare-fun res!931701 () Bool)

(declare-fun e!1383486 () Bool)

(assert (=> b!2161975 (=> (not res!931701) (not e!1383486))))

(declare-fun lt!804986 () List!25195)

(assert (=> b!2161975 (= res!931701 (= (size!19619 lt!804986) (+ (size!19619 (_1!14791 lt!804959)) (size!19619 (_2!14791 lt!804959)))))))

(declare-fun b!2161973 () Bool)

(declare-fun e!1383485 () List!25195)

(assert (=> b!2161973 (= e!1383485 (_2!14791 lt!804959))))

(declare-fun b!2161974 () Bool)

(assert (=> b!2161974 (= e!1383485 (Cons!25111 (h!30512 (_1!14791 lt!804959)) (++!6351 (t!197743 (_1!14791 lt!804959)) (_2!14791 lt!804959))))))

(declare-fun b!2161976 () Bool)

(assert (=> b!2161976 (= e!1383486 (or (not (= (_2!14791 lt!804959) Nil!25111)) (= lt!804986 (_1!14791 lt!804959))))))

(declare-fun d!646963 () Bool)

(assert (=> d!646963 e!1383486))

(declare-fun res!931702 () Bool)

(assert (=> d!646963 (=> (not res!931702) (not e!1383486))))

(declare-fun content!3396 (List!25195) (Set C!12134))

(assert (=> d!646963 (= res!931702 (= (content!3396 lt!804986) (set.union (content!3396 (_1!14791 lt!804959)) (content!3396 (_2!14791 lt!804959)))))))

(assert (=> d!646963 (= lt!804986 e!1383485)))

(declare-fun c!342050 () Bool)

(assert (=> d!646963 (= c!342050 (is-Nil!25111 (_1!14791 lt!804959)))))

(assert (=> d!646963 (= (++!6351 (_1!14791 lt!804959) (_2!14791 lt!804959)) lt!804986)))

(assert (= (and d!646963 c!342050) b!2161973))

(assert (= (and d!646963 (not c!342050)) b!2161974))

(assert (= (and d!646963 res!931702) b!2161975))

(assert (= (and b!2161975 res!931701) b!2161976))

(declare-fun m!2602629 () Bool)

(assert (=> b!2161975 m!2602629))

(declare-fun m!2602631 () Bool)

(assert (=> b!2161975 m!2602631))

(declare-fun m!2602633 () Bool)

(assert (=> b!2161975 m!2602633))

(declare-fun m!2602635 () Bool)

(assert (=> b!2161974 m!2602635))

(declare-fun m!2602637 () Bool)

(assert (=> d!646963 m!2602637))

(declare-fun m!2602639 () Bool)

(assert (=> d!646963 m!2602639))

(declare-fun m!2602641 () Bool)

(assert (=> d!646963 m!2602641))

(assert (=> b!2161907 d!646963))

(declare-fun b!2161996 () Bool)

(declare-fun e!1383504 () Bool)

(declare-fun e!1383505 () Bool)

(assert (=> b!2161996 (= e!1383504 e!1383505)))

(declare-fun res!931717 () Bool)

(declare-fun nullable!1685 (Regex!5994) Bool)

(assert (=> b!2161996 (= res!931717 (not (nullable!1685 (reg!6323 r!12534))))))

(assert (=> b!2161996 (=> (not res!931717) (not e!1383505))))

(declare-fun bm!129490 () Bool)

(declare-fun call!129496 () Bool)

(declare-fun c!342055 () Bool)

(assert (=> bm!129490 (= call!129496 (validRegex!2270 (ite c!342055 (regOne!12501 r!12534) (regTwo!12500 r!12534))))))

(declare-fun b!2161997 () Bool)

(declare-fun e!1383507 () Bool)

(assert (=> b!2161997 (= e!1383504 e!1383507)))

(assert (=> b!2161997 (= c!342055 (is-Union!5994 r!12534))))

(declare-fun b!2161998 () Bool)

(declare-fun res!931716 () Bool)

(declare-fun e!1383506 () Bool)

(assert (=> b!2161998 (=> res!931716 e!1383506)))

(assert (=> b!2161998 (= res!931716 (not (is-Concat!10296 r!12534)))))

(assert (=> b!2161998 (= e!1383507 e!1383506)))

(declare-fun b!2161999 () Bool)

(declare-fun res!931713 () Bool)

(declare-fun e!1383501 () Bool)

(assert (=> b!2161999 (=> (not res!931713) (not e!1383501))))

(assert (=> b!2161999 (= res!931713 call!129496)))

(assert (=> b!2161999 (= e!1383507 e!1383501)))

(declare-fun bm!129491 () Bool)

(declare-fun c!342056 () Bool)

(declare-fun call!129495 () Bool)

(assert (=> bm!129491 (= call!129495 (validRegex!2270 (ite c!342056 (reg!6323 r!12534) (ite c!342055 (regTwo!12501 r!12534) (regOne!12500 r!12534)))))))

(declare-fun b!2162000 () Bool)

(declare-fun e!1383503 () Bool)

(assert (=> b!2162000 (= e!1383503 e!1383504)))

(assert (=> b!2162000 (= c!342056 (is-Star!5994 r!12534))))

(declare-fun bm!129492 () Bool)

(declare-fun call!129497 () Bool)

(assert (=> bm!129492 (= call!129497 call!129495)))

(declare-fun b!2162001 () Bool)

(assert (=> b!2162001 (= e!1383501 call!129497)))

(declare-fun b!2162002 () Bool)

(declare-fun e!1383502 () Bool)

(assert (=> b!2162002 (= e!1383506 e!1383502)))

(declare-fun res!931715 () Bool)

(assert (=> b!2162002 (=> (not res!931715) (not e!1383502))))

(assert (=> b!2162002 (= res!931715 call!129497)))

(declare-fun b!2162003 () Bool)

(assert (=> b!2162003 (= e!1383505 call!129495)))

(declare-fun b!2161995 () Bool)

(assert (=> b!2161995 (= e!1383502 call!129496)))

(declare-fun d!646965 () Bool)

(declare-fun res!931714 () Bool)

(assert (=> d!646965 (=> res!931714 e!1383503)))

(assert (=> d!646965 (= res!931714 (is-ElementMatch!5994 r!12534))))

(assert (=> d!646965 (= (validRegex!2270 r!12534) e!1383503)))

(assert (= (and d!646965 (not res!931714)) b!2162000))

(assert (= (and b!2162000 c!342056) b!2161996))

(assert (= (and b!2162000 (not c!342056)) b!2161997))

(assert (= (and b!2161996 res!931717) b!2162003))

(assert (= (and b!2161997 c!342055) b!2161999))

(assert (= (and b!2161997 (not c!342055)) b!2161998))

(assert (= (and b!2161999 res!931713) b!2162001))

(assert (= (and b!2161998 (not res!931716)) b!2162002))

(assert (= (and b!2162002 res!931715) b!2161995))

(assert (= (or b!2162001 b!2162002) bm!129492))

(assert (= (or b!2161999 b!2161995) bm!129490))

(assert (= (or b!2162003 bm!129492) bm!129491))

(declare-fun m!2602643 () Bool)

(assert (=> b!2161996 m!2602643))

(declare-fun m!2602645 () Bool)

(assert (=> bm!129490 m!2602645))

(declare-fun m!2602647 () Bool)

(assert (=> bm!129491 m!2602647))

(assert (=> start!209700 d!646965))

(declare-fun d!646967 () Bool)

(declare-fun isBalanced!2518 (Conc!8130) Bool)

(assert (=> d!646967 (= (inv!33285 totalInput!977) (isBalanced!2518 (c!342040 totalInput!977)))))

(declare-fun bs!446081 () Bool)

(assert (= bs!446081 d!646967))

(declare-fun m!2602649 () Bool)

(assert (=> bs!446081 m!2602649))

(assert (=> start!209700 d!646967))

(declare-fun d!646969 () Bool)

(assert (=> d!646969 (= (inv!33285 input!5540) (isBalanced!2518 (c!342040 input!5540)))))

(declare-fun bs!446082 () Bool)

(assert (= bs!446082 d!646969))

(declare-fun m!2602651 () Bool)

(assert (=> bs!446082 m!2602651))

(assert (=> start!209700 d!646969))

(declare-fun d!646971 () Bool)

(assert (=> d!646971 (= (list!9615 (_1!14792 lt!804960)) (list!9617 (c!342040 (_1!14792 lt!804960))))))

(declare-fun bs!446083 () Bool)

(assert (= bs!446083 d!646971))

(declare-fun m!2602653 () Bool)

(assert (=> bs!446083 m!2602653))

(assert (=> b!2161916 d!646971))

(declare-fun d!646973 () Bool)

(assert (=> d!646973 (= (list!9615 (_2!14792 lt!804960)) (list!9617 (c!342040 (_2!14792 lt!804960))))))

(declare-fun bs!446084 () Bool)

(assert (= bs!446084 d!646973))

(declare-fun m!2602655 () Bool)

(assert (=> bs!446084 m!2602655))

(assert (=> b!2161916 d!646973))

(declare-fun d!646975 () Bool)

(declare-fun lt!805005 () Int)

(assert (=> d!646975 (= lt!805005 (size!19619 (list!9615 totalInput!977)))))

(declare-fun size!19620 (Conc!8130) Int)

(assert (=> d!646975 (= lt!805005 (size!19620 (c!342040 totalInput!977)))))

(assert (=> d!646975 (= (size!19617 totalInput!977) lt!805005)))

(declare-fun bs!446085 () Bool)

(assert (= bs!446085 d!646975))

(assert (=> bs!446085 m!2602551))

(assert (=> bs!446085 m!2602551))

(assert (=> bs!446085 m!2602619))

(declare-fun m!2602657 () Bool)

(assert (=> bs!446085 m!2602657))

(assert (=> b!2161916 d!646975))

(declare-fun b!2162006 () Bool)

(declare-fun res!931718 () Bool)

(declare-fun e!1383509 () Bool)

(assert (=> b!2162006 (=> (not res!931718) (not e!1383509))))

(declare-fun lt!805006 () List!25195)

(assert (=> b!2162006 (= res!931718 (= (size!19619 lt!805006) (+ (size!19619 (list!9615 (_1!14792 lt!804960))) (size!19619 (list!9615 (_2!14792 lt!804960))))))))

(declare-fun b!2162004 () Bool)

(declare-fun e!1383508 () List!25195)

(assert (=> b!2162004 (= e!1383508 (list!9615 (_2!14792 lt!804960)))))

(declare-fun b!2162005 () Bool)

(assert (=> b!2162005 (= e!1383508 (Cons!25111 (h!30512 (list!9615 (_1!14792 lt!804960))) (++!6351 (t!197743 (list!9615 (_1!14792 lt!804960))) (list!9615 (_2!14792 lt!804960)))))))

(declare-fun b!2162007 () Bool)

(assert (=> b!2162007 (= e!1383509 (or (not (= (list!9615 (_2!14792 lt!804960)) Nil!25111)) (= lt!805006 (list!9615 (_1!14792 lt!804960)))))))

(declare-fun d!646977 () Bool)

(assert (=> d!646977 e!1383509))

(declare-fun res!931719 () Bool)

(assert (=> d!646977 (=> (not res!931719) (not e!1383509))))

(assert (=> d!646977 (= res!931719 (= (content!3396 lt!805006) (set.union (content!3396 (list!9615 (_1!14792 lt!804960))) (content!3396 (list!9615 (_2!14792 lt!804960))))))))

(assert (=> d!646977 (= lt!805006 e!1383508)))

(declare-fun c!342057 () Bool)

(assert (=> d!646977 (= c!342057 (is-Nil!25111 (list!9615 (_1!14792 lt!804960))))))

(assert (=> d!646977 (= (++!6351 (list!9615 (_1!14792 lt!804960)) (list!9615 (_2!14792 lt!804960))) lt!805006)))

(assert (= (and d!646977 c!342057) b!2162004))

(assert (= (and d!646977 (not c!342057)) b!2162005))

(assert (= (and d!646977 res!931719) b!2162006))

(assert (= (and b!2162006 res!931718) b!2162007))

(declare-fun m!2602659 () Bool)

(assert (=> b!2162006 m!2602659))

(assert (=> b!2162006 m!2602531))

(declare-fun m!2602661 () Bool)

(assert (=> b!2162006 m!2602661))

(assert (=> b!2162006 m!2602533))

(declare-fun m!2602663 () Bool)

(assert (=> b!2162006 m!2602663))

(assert (=> b!2162005 m!2602533))

(declare-fun m!2602665 () Bool)

(assert (=> b!2162005 m!2602665))

(declare-fun m!2602667 () Bool)

(assert (=> d!646977 m!2602667))

(assert (=> d!646977 m!2602531))

(declare-fun m!2602669 () Bool)

(assert (=> d!646977 m!2602669))

(assert (=> d!646977 m!2602533))

(declare-fun m!2602671 () Bool)

(assert (=> d!646977 m!2602671))

(assert (=> b!2161916 d!646977))

(declare-fun d!646979 () Bool)

(declare-fun lt!805034 () tuple2!24842)

(assert (=> d!646979 (= (++!6351 (_1!14791 lt!805034) (_2!14791 lt!805034)) lt!804957)))

(declare-fun findLongestMatchInner!623 (Regex!5994 List!25195 Int List!25195 List!25195 Int) tuple2!24842)

(declare-fun sizeTr!101 (List!25195 Int) Int)

(assert (=> d!646979 (= lt!805034 (findLongestMatchInner!623 r!12534 Nil!25111 0 lt!804957 lt!804957 (sizeTr!101 lt!804957 0)))))

(declare-datatypes ((Unit!38139 0))(
  ( (Unit!38140) )
))
(declare-fun lt!805037 () Unit!38139)

(declare-fun lt!805035 () Unit!38139)

(assert (=> d!646979 (= lt!805037 lt!805035)))

(declare-fun lt!805031 () List!25195)

(declare-fun lt!805036 () Int)

(assert (=> d!646979 (= (sizeTr!101 lt!805031 lt!805036) (+ (size!19619 lt!805031) lt!805036))))

(declare-fun lemmaSizeTrEqualsSize!101 (List!25195 Int) Unit!38139)

(assert (=> d!646979 (= lt!805035 (lemmaSizeTrEqualsSize!101 lt!805031 lt!805036))))

(assert (=> d!646979 (= lt!805036 0)))

(assert (=> d!646979 (= lt!805031 Nil!25111)))

(declare-fun lt!805032 () Unit!38139)

(declare-fun lt!805033 () Unit!38139)

(assert (=> d!646979 (= lt!805032 lt!805033)))

(declare-fun lt!805038 () Int)

(assert (=> d!646979 (= (sizeTr!101 lt!804957 lt!805038) (+ (size!19619 lt!804957) lt!805038))))

(assert (=> d!646979 (= lt!805033 (lemmaSizeTrEqualsSize!101 lt!804957 lt!805038))))

(assert (=> d!646979 (= lt!805038 0)))

(assert (=> d!646979 (validRegex!2270 r!12534)))

(assert (=> d!646979 (= (findLongestMatch!548 r!12534 lt!804957) lt!805034)))

(declare-fun bs!446088 () Bool)

(assert (= bs!446088 d!646979))

(declare-fun m!2602693 () Bool)

(assert (=> bs!446088 m!2602693))

(declare-fun m!2602695 () Bool)

(assert (=> bs!446088 m!2602695))

(assert (=> bs!446088 m!2602541))

(declare-fun m!2602697 () Bool)

(assert (=> bs!446088 m!2602697))

(declare-fun m!2602699 () Bool)

(assert (=> bs!446088 m!2602699))

(declare-fun m!2602701 () Bool)

(assert (=> bs!446088 m!2602701))

(assert (=> bs!446088 m!2602697))

(declare-fun m!2602703 () Bool)

(assert (=> bs!446088 m!2602703))

(assert (=> bs!446088 m!2602621))

(declare-fun m!2602705 () Bool)

(assert (=> bs!446088 m!2602705))

(declare-fun m!2602707 () Bool)

(assert (=> bs!446088 m!2602707))

(assert (=> b!2161916 d!646979))

(declare-fun d!646985 () Bool)

(declare-fun lt!805041 () Int)

(assert (=> d!646985 (= lt!805041 (size!19619 (list!9615 input!5540)))))

(assert (=> d!646985 (= lt!805041 (size!19620 (c!342040 input!5540)))))

(assert (=> d!646985 (= (size!19617 input!5540) lt!805041)))

(declare-fun bs!446089 () Bool)

(assert (= bs!446089 d!646985))

(assert (=> bs!446089 m!2602555))

(assert (=> bs!446089 m!2602555))

(declare-fun m!2602709 () Bool)

(assert (=> bs!446089 m!2602709))

(declare-fun m!2602711 () Bool)

(assert (=> bs!446089 m!2602711))

(assert (=> b!2161916 d!646985))

(declare-fun d!646987 () Bool)

(declare-fun lt!805053 () tuple2!24844)

(assert (=> d!646987 (= (++!6351 (list!9615 (_1!14792 lt!805053)) (list!9615 (_2!14792 lt!805053))) (list!9615 input!5540))))

(declare-fun e!1383521 () tuple2!24844)

(assert (=> d!646987 (= lt!805053 e!1383521)))

(declare-fun c!342065 () Bool)

(declare-fun lt!805051 () Int)

(assert (=> d!646987 (= c!342065 (< lt!805051 0))))

(declare-fun lt!805052 () Int)

(declare-fun e!1383520 () Int)

(declare-fun lt!805054 () Int)

(declare-fun furthestNullablePosition!181 ((Set Context!3128) Int BalanceConc!16022 Int Int) Int)

(assert (=> d!646987 (= lt!805051 (+ (- (furthestNullablePosition!181 z!4055 lt!805052 totalInput!977 lt!805054 e!1383520) lt!805052) 1))))

(declare-fun c!342066 () Bool)

(declare-fun nullableZipper!275 ((Set Context!3128)) Bool)

(assert (=> d!646987 (= c!342066 (nullableZipper!275 z!4055))))

(assert (=> d!646987 (= lt!805052 (- lt!805054 (size!19617 input!5540)))))

(assert (=> d!646987 (= lt!805054 (size!19617 totalInput!977))))

(assert (=> d!646987 (isSuffix!661 (list!9615 input!5540) (list!9615 totalInput!977))))

(assert (=> d!646987 (= (findLongestMatchZipperSequenceV3!43 z!4055 input!5540 totalInput!977) lt!805053)))

(declare-fun b!2162028 () Bool)

(assert (=> b!2162028 (= e!1383520 (- 1))))

(declare-fun b!2162029 () Bool)

(declare-fun call!129500 () tuple2!24844)

(assert (=> b!2162029 (= e!1383521 call!129500)))

(declare-fun bm!129495 () Bool)

(declare-fun splitAt!21 (BalanceConc!16022 Int) tuple2!24844)

(assert (=> bm!129495 (= call!129500 (splitAt!21 input!5540 (ite c!342065 0 lt!805051)))))

(declare-fun b!2162030 () Bool)

(assert (=> b!2162030 (= e!1383520 (- lt!805052 1))))

(declare-fun b!2162031 () Bool)

(assert (=> b!2162031 (= e!1383521 call!129500)))

(assert (= (and d!646987 c!342066) b!2162030))

(assert (= (and d!646987 (not c!342066)) b!2162028))

(assert (= (and d!646987 c!342065) b!2162031))

(assert (= (and d!646987 (not c!342065)) b!2162029))

(assert (= (or b!2162031 b!2162029) bm!129495))

(declare-fun m!2602727 () Bool)

(assert (=> d!646987 m!2602727))

(declare-fun m!2602729 () Bool)

(assert (=> d!646987 m!2602729))

(declare-fun m!2602731 () Bool)

(assert (=> d!646987 m!2602731))

(declare-fun m!2602733 () Bool)

(assert (=> d!646987 m!2602733))

(assert (=> d!646987 m!2602529))

(assert (=> d!646987 m!2602555))

(declare-fun m!2602735 () Bool)

(assert (=> d!646987 m!2602735))

(assert (=> d!646987 m!2602729))

(assert (=> d!646987 m!2602727))

(assert (=> d!646987 m!2602555))

(assert (=> d!646987 m!2602551))

(declare-fun m!2602737 () Bool)

(assert (=> d!646987 m!2602737))

(assert (=> d!646987 m!2602527))

(assert (=> d!646987 m!2602551))

(declare-fun m!2602739 () Bool)

(assert (=> bm!129495 m!2602739))

(assert (=> b!2161916 d!646987))

(declare-fun d!646991 () Bool)

(declare-fun lambda!81598 () Int)

(declare-fun forall!5153 (List!25196 Int) Bool)

(assert (=> d!646991 (= (inv!33283 setElem!18097) (forall!5153 (exprs!2064 setElem!18097) lambda!81598))))

(declare-fun bs!446091 () Bool)

(assert (= bs!446091 d!646991))

(declare-fun m!2602775 () Bool)

(assert (=> bs!446091 m!2602775))

(assert (=> setNonEmpty!18097 d!646991))

(declare-fun d!647001 () Bool)

(declare-fun lt!805070 () Regex!5994)

(assert (=> d!647001 (validRegex!2270 lt!805070)))

(declare-fun generalisedUnion!501 (List!25196) Regex!5994)

(declare-fun unfocusZipperList!25 (List!25197) List!25196)

(assert (=> d!647001 (= lt!805070 (generalisedUnion!501 (unfocusZipperList!25 (toList!1177 z!4055))))))

(assert (=> d!647001 (= (unfocusZipper!101 (toList!1177 z!4055)) lt!805070)))

(declare-fun bs!446092 () Bool)

(assert (= bs!446092 d!647001))

(declare-fun m!2602777 () Bool)

(assert (=> bs!446092 m!2602777))

(assert (=> bs!446092 m!2602559))

(declare-fun m!2602779 () Bool)

(assert (=> bs!446092 m!2602779))

(assert (=> bs!446092 m!2602779))

(declare-fun m!2602781 () Bool)

(assert (=> bs!446092 m!2602781))

(assert (=> b!2161915 d!647001))

(declare-fun d!647003 () Bool)

(declare-fun e!1383538 () Bool)

(assert (=> d!647003 e!1383538))

(declare-fun res!931733 () Bool)

(assert (=> d!647003 (=> (not res!931733) (not e!1383538))))

(declare-fun lt!805073 () List!25197)

(declare-fun noDuplicate!278 (List!25197) Bool)

(assert (=> d!647003 (= res!931733 (noDuplicate!278 lt!805073))))

(declare-fun choose!12720 ((Set Context!3128)) List!25197)

(assert (=> d!647003 (= lt!805073 (choose!12720 z!4055))))

(assert (=> d!647003 (= (toList!1177 z!4055) lt!805073)))

(declare-fun b!2162059 () Bool)

(declare-fun content!3397 (List!25197) (Set Context!3128))

(assert (=> b!2162059 (= e!1383538 (= (content!3397 lt!805073) z!4055))))

(assert (= (and d!647003 res!931733) b!2162059))

(declare-fun m!2602783 () Bool)

(assert (=> d!647003 m!2602783))

(declare-fun m!2602785 () Bool)

(assert (=> d!647003 m!2602785))

(declare-fun m!2602787 () Bool)

(assert (=> b!2162059 m!2602787))

(assert (=> b!2161915 d!647003))

(declare-fun tp!674613 () Bool)

(declare-fun b!2162068 () Bool)

(declare-fun tp!674611 () Bool)

(declare-fun e!1383544 () Bool)

(assert (=> b!2162068 (= e!1383544 (and (inv!33284 (left!19306 (c!342040 input!5540))) tp!674611 (inv!33284 (right!19636 (c!342040 input!5540))) tp!674613))))

(declare-fun b!2162070 () Bool)

(declare-fun e!1383543 () Bool)

(declare-fun tp!674612 () Bool)

(assert (=> b!2162070 (= e!1383543 tp!674612)))

(declare-fun b!2162069 () Bool)

(declare-fun inv!33291 (IArray!16265) Bool)

(assert (=> b!2162069 (= e!1383544 (and (inv!33291 (xs!11072 (c!342040 input!5540))) e!1383543))))

(assert (=> b!2161914 (= tp!674569 (and (inv!33284 (c!342040 input!5540)) e!1383544))))

(assert (= (and b!2161914 (is-Node!8130 (c!342040 input!5540))) b!2162068))

(assert (= b!2162069 b!2162070))

(assert (= (and b!2161914 (is-Leaf!11895 (c!342040 input!5540))) b!2162069))

(declare-fun m!2602789 () Bool)

(assert (=> b!2162068 m!2602789))

(declare-fun m!2602791 () Bool)

(assert (=> b!2162068 m!2602791))

(declare-fun m!2602793 () Bool)

(assert (=> b!2162069 m!2602793))

(assert (=> b!2161914 m!2602547))

(declare-fun e!1383547 () Bool)

(assert (=> b!2161910 (= tp!674573 e!1383547)))

(declare-fun b!2162083 () Bool)

(declare-fun tp!674628 () Bool)

(assert (=> b!2162083 (= e!1383547 tp!674628)))

(declare-fun b!2162084 () Bool)

(declare-fun tp!674627 () Bool)

(declare-fun tp!674626 () Bool)

(assert (=> b!2162084 (= e!1383547 (and tp!674627 tp!674626))))

(declare-fun b!2162082 () Bool)

(declare-fun tp!674625 () Bool)

(declare-fun tp!674624 () Bool)

(assert (=> b!2162082 (= e!1383547 (and tp!674625 tp!674624))))

(declare-fun b!2162081 () Bool)

(assert (=> b!2162081 (= e!1383547 tp_is_empty!9595)))

(assert (= (and b!2161910 (is-ElementMatch!5994 (regOne!12500 r!12534))) b!2162081))

(assert (= (and b!2161910 (is-Concat!10296 (regOne!12500 r!12534))) b!2162082))

(assert (= (and b!2161910 (is-Star!5994 (regOne!12500 r!12534))) b!2162083))

(assert (= (and b!2161910 (is-Union!5994 (regOne!12500 r!12534))) b!2162084))

(declare-fun e!1383548 () Bool)

(assert (=> b!2161910 (= tp!674574 e!1383548)))

(declare-fun b!2162087 () Bool)

(declare-fun tp!674633 () Bool)

(assert (=> b!2162087 (= e!1383548 tp!674633)))

(declare-fun b!2162088 () Bool)

(declare-fun tp!674632 () Bool)

(declare-fun tp!674631 () Bool)

(assert (=> b!2162088 (= e!1383548 (and tp!674632 tp!674631))))

(declare-fun b!2162086 () Bool)

(declare-fun tp!674630 () Bool)

(declare-fun tp!674629 () Bool)

(assert (=> b!2162086 (= e!1383548 (and tp!674630 tp!674629))))

(declare-fun b!2162085 () Bool)

(assert (=> b!2162085 (= e!1383548 tp_is_empty!9595)))

(assert (= (and b!2161910 (is-ElementMatch!5994 (regTwo!12500 r!12534))) b!2162085))

(assert (= (and b!2161910 (is-Concat!10296 (regTwo!12500 r!12534))) b!2162086))

(assert (= (and b!2161910 (is-Star!5994 (regTwo!12500 r!12534))) b!2162087))

(assert (= (and b!2161910 (is-Union!5994 (regTwo!12500 r!12534))) b!2162088))

(declare-fun e!1383549 () Bool)

(assert (=> b!2161909 (= tp!674571 e!1383549)))

(declare-fun b!2162091 () Bool)

(declare-fun tp!674638 () Bool)

(assert (=> b!2162091 (= e!1383549 tp!674638)))

(declare-fun b!2162092 () Bool)

(declare-fun tp!674637 () Bool)

(declare-fun tp!674636 () Bool)

(assert (=> b!2162092 (= e!1383549 (and tp!674637 tp!674636))))

(declare-fun b!2162090 () Bool)

(declare-fun tp!674635 () Bool)

(declare-fun tp!674634 () Bool)

(assert (=> b!2162090 (= e!1383549 (and tp!674635 tp!674634))))

(declare-fun b!2162089 () Bool)

(assert (=> b!2162089 (= e!1383549 tp_is_empty!9595)))

(assert (= (and b!2161909 (is-ElementMatch!5994 (reg!6323 r!12534))) b!2162089))

(assert (= (and b!2161909 (is-Concat!10296 (reg!6323 r!12534))) b!2162090))

(assert (= (and b!2161909 (is-Star!5994 (reg!6323 r!12534))) b!2162091))

(assert (= (and b!2161909 (is-Union!5994 (reg!6323 r!12534))) b!2162092))

(declare-fun e!1383550 () Bool)

(assert (=> b!2161913 (= tp!674577 e!1383550)))

(declare-fun b!2162095 () Bool)

(declare-fun tp!674643 () Bool)

(assert (=> b!2162095 (= e!1383550 tp!674643)))

(declare-fun b!2162096 () Bool)

(declare-fun tp!674642 () Bool)

(declare-fun tp!674641 () Bool)

(assert (=> b!2162096 (= e!1383550 (and tp!674642 tp!674641))))

(declare-fun b!2162094 () Bool)

(declare-fun tp!674640 () Bool)

(declare-fun tp!674639 () Bool)

(assert (=> b!2162094 (= e!1383550 (and tp!674640 tp!674639))))

(declare-fun b!2162093 () Bool)

(assert (=> b!2162093 (= e!1383550 tp_is_empty!9595)))

(assert (= (and b!2161913 (is-ElementMatch!5994 (regOne!12501 r!12534))) b!2162093))

(assert (= (and b!2161913 (is-Concat!10296 (regOne!12501 r!12534))) b!2162094))

(assert (= (and b!2161913 (is-Star!5994 (regOne!12501 r!12534))) b!2162095))

(assert (= (and b!2161913 (is-Union!5994 (regOne!12501 r!12534))) b!2162096))

(declare-fun e!1383551 () Bool)

(assert (=> b!2161913 (= tp!674576 e!1383551)))

(declare-fun b!2162099 () Bool)

(declare-fun tp!674648 () Bool)

(assert (=> b!2162099 (= e!1383551 tp!674648)))

(declare-fun b!2162100 () Bool)

(declare-fun tp!674647 () Bool)

(declare-fun tp!674646 () Bool)

(assert (=> b!2162100 (= e!1383551 (and tp!674647 tp!674646))))

(declare-fun b!2162098 () Bool)

(declare-fun tp!674645 () Bool)

(declare-fun tp!674644 () Bool)

(assert (=> b!2162098 (= e!1383551 (and tp!674645 tp!674644))))

(declare-fun b!2162097 () Bool)

(assert (=> b!2162097 (= e!1383551 tp_is_empty!9595)))

(assert (= (and b!2161913 (is-ElementMatch!5994 (regTwo!12501 r!12534))) b!2162097))

(assert (= (and b!2161913 (is-Concat!10296 (regTwo!12501 r!12534))) b!2162098))

(assert (= (and b!2161913 (is-Star!5994 (regTwo!12501 r!12534))) b!2162099))

(assert (= (and b!2161913 (is-Union!5994 (regTwo!12501 r!12534))) b!2162100))

(declare-fun e!1383553 () Bool)

(declare-fun tp!674649 () Bool)

(declare-fun b!2162101 () Bool)

(declare-fun tp!674651 () Bool)

(assert (=> b!2162101 (= e!1383553 (and (inv!33284 (left!19306 (c!342040 totalInput!977))) tp!674649 (inv!33284 (right!19636 (c!342040 totalInput!977))) tp!674651))))

(declare-fun b!2162103 () Bool)

(declare-fun e!1383552 () Bool)

(declare-fun tp!674650 () Bool)

(assert (=> b!2162103 (= e!1383552 tp!674650)))

(declare-fun b!2162102 () Bool)

(assert (=> b!2162102 (= e!1383553 (and (inv!33291 (xs!11072 (c!342040 totalInput!977))) e!1383552))))

(assert (=> b!2161912 (= tp!674572 (and (inv!33284 (c!342040 totalInput!977)) e!1383553))))

(assert (= (and b!2161912 (is-Node!8130 (c!342040 totalInput!977))) b!2162101))

(assert (= b!2162102 b!2162103))

(assert (= (and b!2161912 (is-Leaf!11895 (c!342040 totalInput!977))) b!2162102))

(declare-fun m!2602795 () Bool)

(assert (=> b!2162101 m!2602795))

(declare-fun m!2602797 () Bool)

(assert (=> b!2162101 m!2602797))

(declare-fun m!2602799 () Bool)

(assert (=> b!2162102 m!2602799))

(assert (=> b!2161912 m!2602563))

(declare-fun condSetEmpty!18103 () Bool)

(assert (=> setNonEmpty!18097 (= condSetEmpty!18103 (= setRest!18097 (as set.empty (Set Context!3128))))))

(declare-fun setRes!18103 () Bool)

(assert (=> setNonEmpty!18097 (= tp!674570 setRes!18103)))

(declare-fun setIsEmpty!18103 () Bool)

(assert (=> setIsEmpty!18103 setRes!18103))

(declare-fun e!1383556 () Bool)

(declare-fun setNonEmpty!18103 () Bool)

(declare-fun setElem!18103 () Context!3128)

(declare-fun tp!674657 () Bool)

(assert (=> setNonEmpty!18103 (= setRes!18103 (and tp!674657 (inv!33283 setElem!18103) e!1383556))))

(declare-fun setRest!18103 () (Set Context!3128))

(assert (=> setNonEmpty!18103 (= setRest!18097 (set.union (set.insert setElem!18103 (as set.empty (Set Context!3128))) setRest!18103))))

(declare-fun b!2162108 () Bool)

(declare-fun tp!674656 () Bool)

(assert (=> b!2162108 (= e!1383556 tp!674656)))

(assert (= (and setNonEmpty!18097 condSetEmpty!18103) setIsEmpty!18103))

(assert (= (and setNonEmpty!18097 (not condSetEmpty!18103)) setNonEmpty!18103))

(assert (= setNonEmpty!18103 b!2162108))

(declare-fun m!2602801 () Bool)

(assert (=> setNonEmpty!18103 m!2602801))

(declare-fun b!2162113 () Bool)

(declare-fun e!1383559 () Bool)

(declare-fun tp!674662 () Bool)

(declare-fun tp!674663 () Bool)

(assert (=> b!2162113 (= e!1383559 (and tp!674662 tp!674663))))

(assert (=> b!2161911 (= tp!674575 e!1383559)))

(assert (= (and b!2161911 (is-Cons!25112 (exprs!2064 setElem!18097))) b!2162113))

(push 1)

(assert (not b!2162094))

(assert (not b!2161912))

(assert (not d!647003))

(assert (not b!2162108))

(assert (not d!646969))

(assert (not b!2162098))

(assert (not bm!129495))

(assert (not b!2162102))

(assert (not d!646979))

(assert (not b!2162101))

(assert (not b!2162069))

(assert (not d!646977))

(assert (not b!2162090))

(assert (not d!646959))

(assert (not d!646961))

(assert (not d!646971))

(assert tp_is_empty!9595)

(assert (not b!2162070))

(assert (not b!2162086))

(assert (not b!2162084))

(assert (not b!2161914))

(assert (not b!2162068))

(assert (not b!2161959))

(assert (not b!2162113))

(assert (not b!2161996))

(assert (not bm!129491))

(assert (not b!2162082))

(assert (not b!2161961))

(assert (not d!646985))

(assert (not b!2162088))

(assert (not b!2162096))

(assert (not b!2162091))

(assert (not d!647001))

(assert (not d!646967))

(assert (not b!2162005))

(assert (not b!2162103))

(assert (not d!646975))

(assert (not b!2162092))

(assert (not b!2162083))

(assert (not d!646991))

(assert (not d!646957))

(assert (not b!2161964))

(assert (not d!646973))

(assert (not d!646987))

(assert (not b!2162095))

(assert (not b!2162087))

(assert (not b!2161958))

(assert (not b!2162099))

(assert (not setNonEmpty!18103))

(assert (not d!646963))

(assert (not b!2161975))

(assert (not b!2161974))

(assert (not b!2161956))

(assert (not bm!129490))

(assert (not b!2162006))

(assert (not b!2162100))

(assert (not b!2162059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

