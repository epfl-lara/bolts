; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423810 () Bool)

(assert start!423810)

(declare-fun b!4367597 () Bool)

(declare-fun e!2718249 () Bool)

(declare-fun tp!1330800 () Bool)

(assert (=> b!4367597 (= e!2718249 tp!1330800)))

(declare-fun res!1796902 () Bool)

(declare-fun e!2718250 () Bool)

(assert (=> start!423810 (=> (not res!1796902) (not e!2718250))))

(declare-datatypes ((V!10689 0))(
  ( (V!10690 (val!16625 Int)) )
))
(declare-datatypes ((K!10443 0))(
  ( (K!10444 (val!16626 Int)) )
))
(declare-datatypes ((tuple2!48570 0))(
  ( (tuple2!48571 (_1!27579 K!10443) (_2!27579 V!10689)) )
))
(declare-datatypes ((List!49204 0))(
  ( (Nil!49080) (Cons!49080 (h!54659 tuple2!48570) (t!356124 List!49204)) )
))
(declare-datatypes ((tuple2!48572 0))(
  ( (tuple2!48573 (_1!27580 (_ BitVec 64)) (_2!27580 List!49204)) )
))
(declare-datatypes ((List!49205 0))(
  ( (Nil!49081) (Cons!49081 (h!54660 tuple2!48572) (t!356125 List!49205)) )
))
(declare-datatypes ((ListLongMap!1733 0))(
  ( (ListLongMap!1734 (toList!3083 List!49205)) )
))
(declare-fun lm!1707 () ListLongMap!1733)

(declare-fun lambda!143082 () Int)

(declare-fun forall!9218 (List!49205 Int) Bool)

(assert (=> start!423810 (= res!1796902 (forall!9218 (toList!3083 lm!1707) lambda!143082))))

(assert (=> start!423810 e!2718250))

(declare-fun e!2718251 () Bool)

(assert (=> start!423810 e!2718251))

(assert (=> start!423810 true))

(declare-fun inv!64630 (ListLongMap!1733) Bool)

(assert (=> start!423810 (and (inv!64630 lm!1707) e!2718249)))

(declare-fun tp_is_empty!25437 () Bool)

(assert (=> start!423810 tp_is_empty!25437))

(declare-fun tp_is_empty!25439 () Bool)

(assert (=> start!423810 tp_is_empty!25439))

(declare-fun b!4367598 () Bool)

(declare-fun e!2718247 () Bool)

(assert (=> b!4367598 (= e!2718250 (not e!2718247))))

(declare-fun res!1796904 () Bool)

(assert (=> b!4367598 (=> res!1796904 e!2718247)))

(declare-fun newBucket!200 () List!49204)

(declare-fun lt!1579694 () List!49204)

(declare-fun key!3918 () K!10443)

(declare-fun newValue!99 () V!10689)

(declare-fun removePairForKey!518 (List!49204 K!10443) List!49204)

(assert (=> b!4367598 (= res!1796904 (not (= newBucket!200 (Cons!49080 (tuple2!48571 key!3918 newValue!99) (removePairForKey!518 lt!1579694 key!3918)))))))

(declare-datatypes ((Unit!73210 0))(
  ( (Unit!73211) )
))
(declare-fun lt!1579699 () Unit!73210)

(declare-fun lt!1579696 () tuple2!48572)

(declare-fun forallContained!1856 (List!49205 Int tuple2!48572) Unit!73210)

(assert (=> b!4367598 (= lt!1579699 (forallContained!1856 (toList!3083 lm!1707) lambda!143082 lt!1579696))))

(declare-fun contains!11366 (List!49205 tuple2!48572) Bool)

(assert (=> b!4367598 (contains!11366 (toList!3083 lm!1707) lt!1579696)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4367598 (= lt!1579696 (tuple2!48573 hash!377 lt!1579694))))

(declare-fun lt!1579693 () Unit!73210)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!395 (List!49205 (_ BitVec 64) List!49204) Unit!73210)

(assert (=> b!4367598 (= lt!1579693 (lemmaGetValueByKeyImpliesContainsTuple!395 (toList!3083 lm!1707) hash!377 lt!1579694))))

(declare-fun apply!11402 (ListLongMap!1733 (_ BitVec 64)) List!49204)

(assert (=> b!4367598 (= lt!1579694 (apply!11402 lm!1707 hash!377))))

(declare-fun b!4367599 () Bool)

(declare-fun res!1796910 () Bool)

(assert (=> b!4367599 (=> (not res!1796910) (not e!2718250))))

(declare-datatypes ((Hashable!4942 0))(
  ( (HashableExt!4941 (__x!30645 Int)) )
))
(declare-fun hashF!1247 () Hashable!4942)

(declare-fun allKeysSameHashInMap!654 (ListLongMap!1733 Hashable!4942) Bool)

(assert (=> b!4367599 (= res!1796910 (allKeysSameHashInMap!654 lm!1707 hashF!1247))))

(declare-fun b!4367600 () Bool)

(declare-fun res!1796905 () Bool)

(assert (=> b!4367600 (=> (not res!1796905) (not e!2718250))))

(declare-fun hash!1699 (Hashable!4942 K!10443) (_ BitVec 64))

(assert (=> b!4367600 (= res!1796905 (= (hash!1699 hashF!1247 key!3918) hash!377))))

(declare-fun b!4367601 () Bool)

(declare-fun tp!1330799 () Bool)

(assert (=> b!4367601 (= e!2718251 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330799))))

(declare-fun b!4367602 () Bool)

(declare-fun res!1796906 () Bool)

(assert (=> b!4367602 (=> res!1796906 e!2718247)))

(declare-fun noDuplicateKeys!550 (List!49204) Bool)

(assert (=> b!4367602 (= res!1796906 (not (noDuplicateKeys!550 newBucket!200)))))

(declare-fun b!4367603 () Bool)

(declare-fun res!1796907 () Bool)

(assert (=> b!4367603 (=> (not res!1796907) (not e!2718250))))

(declare-fun allKeysSameHash!508 (List!49204 (_ BitVec 64) Hashable!4942) Bool)

(assert (=> b!4367603 (= res!1796907 (allKeysSameHash!508 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4367604 () Bool)

(declare-fun res!1796908 () Bool)

(assert (=> b!4367604 (=> (not res!1796908) (not e!2718250))))

(declare-fun contains!11367 (ListLongMap!1733 (_ BitVec 64)) Bool)

(assert (=> b!4367604 (= res!1796908 (contains!11367 lm!1707 hash!377))))

(declare-fun b!4367605 () Bool)

(declare-fun res!1796909 () Bool)

(assert (=> b!4367605 (=> (not res!1796909) (not e!2718250))))

(declare-datatypes ((ListMap!2327 0))(
  ( (ListMap!2328 (toList!3084 List!49204)) )
))
(declare-fun contains!11368 (ListMap!2327 K!10443) Bool)

(declare-fun extractMap!609 (List!49205) ListMap!2327)

(assert (=> b!4367605 (= res!1796909 (contains!11368 (extractMap!609 (toList!3083 lm!1707)) key!3918))))

(declare-fun b!4367606 () Bool)

(declare-fun e!2718248 () Bool)

(declare-fun lt!1579697 () ListLongMap!1733)

(assert (=> b!4367606 (= e!2718248 (forall!9218 (toList!3083 lt!1579697) lambda!143082))))

(declare-fun lt!1579698 () tuple2!48572)

(declare-fun b!4367607 () Bool)

(assert (=> b!4367607 (= e!2718247 (or (not (is-Cons!49081 (toList!3083 lm!1707))) (not (= (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377)) (= lt!1579697 (ListLongMap!1734 (Cons!49081 lt!1579698 (t!356125 (toList!3083 lm!1707)))))))))

(assert (=> b!4367607 e!2718248))

(declare-fun res!1796903 () Bool)

(assert (=> b!4367607 (=> (not res!1796903) (not e!2718248))))

(assert (=> b!4367607 (= res!1796903 (forall!9218 (toList!3083 lt!1579697) lambda!143082))))

(declare-fun +!733 (ListLongMap!1733 tuple2!48572) ListLongMap!1733)

(assert (=> b!4367607 (= lt!1579697 (+!733 lm!1707 lt!1579698))))

(assert (=> b!4367607 (= lt!1579698 (tuple2!48573 hash!377 newBucket!200))))

(declare-fun lt!1579695 () Unit!73210)

(declare-fun addValidProp!196 (ListLongMap!1733 Int (_ BitVec 64) List!49204) Unit!73210)

(assert (=> b!4367607 (= lt!1579695 (addValidProp!196 lm!1707 lambda!143082 hash!377 newBucket!200))))

(assert (=> b!4367607 (forall!9218 (toList!3083 lm!1707) lambda!143082)))

(assert (= (and start!423810 res!1796902) b!4367599))

(assert (= (and b!4367599 res!1796910) b!4367600))

(assert (= (and b!4367600 res!1796905) b!4367603))

(assert (= (and b!4367603 res!1796907) b!4367605))

(assert (= (and b!4367605 res!1796909) b!4367604))

(assert (= (and b!4367604 res!1796908) b!4367598))

(assert (= (and b!4367598 (not res!1796904)) b!4367602))

(assert (= (and b!4367602 (not res!1796906)) b!4367607))

(assert (= (and b!4367607 res!1796903) b!4367606))

(assert (= (and start!423810 (is-Cons!49080 newBucket!200)) b!4367601))

(assert (= start!423810 b!4367597))

(declare-fun m!4990723 () Bool)

(assert (=> b!4367598 m!4990723))

(declare-fun m!4990725 () Bool)

(assert (=> b!4367598 m!4990725))

(declare-fun m!4990727 () Bool)

(assert (=> b!4367598 m!4990727))

(declare-fun m!4990729 () Bool)

(assert (=> b!4367598 m!4990729))

(declare-fun m!4990731 () Bool)

(assert (=> b!4367598 m!4990731))

(declare-fun m!4990733 () Bool)

(assert (=> b!4367602 m!4990733))

(declare-fun m!4990735 () Bool)

(assert (=> start!423810 m!4990735))

(declare-fun m!4990737 () Bool)

(assert (=> start!423810 m!4990737))

(declare-fun m!4990739 () Bool)

(assert (=> b!4367599 m!4990739))

(declare-fun m!4990741 () Bool)

(assert (=> b!4367606 m!4990741))

(declare-fun m!4990743 () Bool)

(assert (=> b!4367604 m!4990743))

(declare-fun m!4990745 () Bool)

(assert (=> b!4367600 m!4990745))

(declare-fun m!4990747 () Bool)

(assert (=> b!4367603 m!4990747))

(assert (=> b!4367607 m!4990741))

(declare-fun m!4990749 () Bool)

(assert (=> b!4367607 m!4990749))

(declare-fun m!4990751 () Bool)

(assert (=> b!4367607 m!4990751))

(assert (=> b!4367607 m!4990735))

(declare-fun m!4990753 () Bool)

(assert (=> b!4367605 m!4990753))

(assert (=> b!4367605 m!4990753))

(declare-fun m!4990755 () Bool)

(assert (=> b!4367605 m!4990755))

(push 1)

(assert tp_is_empty!25439)

(assert (not b!4367606))

(assert (not b!4367602))

(assert (not b!4367599))

(assert (not b!4367607))

(assert (not b!4367597))

(assert (not b!4367601))

(assert (not b!4367604))

(assert (not start!423810))

(assert (not b!4367603))

(assert (not b!4367600))

(assert (not b!4367605))

(assert tp_is_empty!25437)

(assert (not b!4367598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1292921 () Bool)

(declare-fun res!1796942 () Bool)

(declare-fun e!2718271 () Bool)

(assert (=> d!1292921 (=> res!1796942 e!2718271)))

(assert (=> d!1292921 (= res!1796942 (is-Nil!49081 (toList!3083 lm!1707)))))

(assert (=> d!1292921 (= (forall!9218 (toList!3083 lm!1707) lambda!143082) e!2718271)))

(declare-fun b!4367645 () Bool)

(declare-fun e!2718272 () Bool)

(assert (=> b!4367645 (= e!2718271 e!2718272)))

(declare-fun res!1796943 () Bool)

(assert (=> b!4367645 (=> (not res!1796943) (not e!2718272))))

(declare-fun dynLambda!20676 (Int tuple2!48572) Bool)

(assert (=> b!4367645 (= res!1796943 (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 lm!1707))))))

(declare-fun b!4367646 () Bool)

(assert (=> b!4367646 (= e!2718272 (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143082))))

(assert (= (and d!1292921 (not res!1796942)) b!4367645))

(assert (= (and b!4367645 res!1796943) b!4367646))

(declare-fun b_lambda!132571 () Bool)

(assert (=> (not b_lambda!132571) (not b!4367645)))

(declare-fun m!4990791 () Bool)

(assert (=> b!4367645 m!4990791))

(declare-fun m!4990793 () Bool)

(assert (=> b!4367646 m!4990793))

(assert (=> start!423810 d!1292921))

(declare-fun d!1292923 () Bool)

(declare-fun isStrictlySorted!131 (List!49205) Bool)

(assert (=> d!1292923 (= (inv!64630 lm!1707) (isStrictlySorted!131 (toList!3083 lm!1707)))))

(declare-fun bs!637433 () Bool)

(assert (= bs!637433 d!1292923))

(declare-fun m!4990795 () Bool)

(assert (=> bs!637433 m!4990795))

(assert (=> start!423810 d!1292923))

(declare-fun d!1292925 () Bool)

(declare-fun e!2718277 () Bool)

(assert (=> d!1292925 e!2718277))

(declare-fun res!1796946 () Bool)

(assert (=> d!1292925 (=> res!1796946 e!2718277)))

(declare-fun lt!1579732 () Bool)

(assert (=> d!1292925 (= res!1796946 (not lt!1579732))))

(declare-fun lt!1579731 () Bool)

(assert (=> d!1292925 (= lt!1579732 lt!1579731)))

(declare-fun lt!1579729 () Unit!73210)

(declare-fun e!2718278 () Unit!73210)

(assert (=> d!1292925 (= lt!1579729 e!2718278)))

(declare-fun c!742557 () Bool)

(assert (=> d!1292925 (= c!742557 lt!1579731)))

(declare-fun containsKey!792 (List!49205 (_ BitVec 64)) Bool)

(assert (=> d!1292925 (= lt!1579731 (containsKey!792 (toList!3083 lm!1707) hash!377))))

(assert (=> d!1292925 (= (contains!11367 lm!1707 hash!377) lt!1579732)))

(declare-fun b!4367653 () Bool)

(declare-fun lt!1579730 () Unit!73210)

(assert (=> b!4367653 (= e!2718278 lt!1579730)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!418 (List!49205 (_ BitVec 64)) Unit!73210)

(assert (=> b!4367653 (= lt!1579730 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!3083 lm!1707) hash!377))))

(declare-datatypes ((Option!10521 0))(
  ( (None!10520) (Some!10520 (v!43470 List!49204)) )
))
(declare-fun isDefined!7815 (Option!10521) Bool)

(declare-fun getValueByKey!507 (List!49205 (_ BitVec 64)) Option!10521)

(assert (=> b!4367653 (isDefined!7815 (getValueByKey!507 (toList!3083 lm!1707) hash!377))))

(declare-fun b!4367654 () Bool)

(declare-fun Unit!73214 () Unit!73210)

(assert (=> b!4367654 (= e!2718278 Unit!73214)))

(declare-fun b!4367655 () Bool)

(assert (=> b!4367655 (= e!2718277 (isDefined!7815 (getValueByKey!507 (toList!3083 lm!1707) hash!377)))))

(assert (= (and d!1292925 c!742557) b!4367653))

(assert (= (and d!1292925 (not c!742557)) b!4367654))

(assert (= (and d!1292925 (not res!1796946)) b!4367655))

(declare-fun m!4990797 () Bool)

(assert (=> d!1292925 m!4990797))

(declare-fun m!4990799 () Bool)

(assert (=> b!4367653 m!4990799))

(declare-fun m!4990801 () Bool)

(assert (=> b!4367653 m!4990801))

(assert (=> b!4367653 m!4990801))

(declare-fun m!4990803 () Bool)

(assert (=> b!4367653 m!4990803))

(assert (=> b!4367655 m!4990801))

(assert (=> b!4367655 m!4990801))

(assert (=> b!4367655 m!4990803))

(assert (=> b!4367604 d!1292925))

(declare-fun bs!637434 () Bool)

(declare-fun d!1292927 () Bool)

(assert (= bs!637434 (and d!1292927 start!423810)))

(declare-fun lambda!143096 () Int)

(assert (=> bs!637434 (not (= lambda!143096 lambda!143082))))

(assert (=> d!1292927 true))

(assert (=> d!1292927 (= (allKeysSameHashInMap!654 lm!1707 hashF!1247) (forall!9218 (toList!3083 lm!1707) lambda!143096))))

(declare-fun bs!637435 () Bool)

(assert (= bs!637435 d!1292927))

(declare-fun m!4990805 () Bool)

(assert (=> bs!637435 m!4990805))

(assert (=> b!4367599 d!1292927))

(declare-fun d!1292929 () Bool)

(declare-fun get!15952 (Option!10521) List!49204)

(assert (=> d!1292929 (= (apply!11402 lm!1707 hash!377) (get!15952 (getValueByKey!507 (toList!3083 lm!1707) hash!377)))))

(declare-fun bs!637436 () Bool)

(assert (= bs!637436 d!1292929))

(assert (=> bs!637436 m!4990801))

(assert (=> bs!637436 m!4990801))

(declare-fun m!4990807 () Bool)

(assert (=> bs!637436 m!4990807))

(assert (=> b!4367598 d!1292929))

(declare-fun d!1292933 () Bool)

(assert (=> d!1292933 (contains!11366 (toList!3083 lm!1707) (tuple2!48573 hash!377 lt!1579694))))

(declare-fun lt!1579735 () Unit!73210)

(declare-fun choose!27159 (List!49205 (_ BitVec 64) List!49204) Unit!73210)

(assert (=> d!1292933 (= lt!1579735 (choose!27159 (toList!3083 lm!1707) hash!377 lt!1579694))))

(declare-fun e!2718285 () Bool)

(assert (=> d!1292933 e!2718285))

(declare-fun res!1796953 () Bool)

(assert (=> d!1292933 (=> (not res!1796953) (not e!2718285))))

(assert (=> d!1292933 (= res!1796953 (isStrictlySorted!131 (toList!3083 lm!1707)))))

(assert (=> d!1292933 (= (lemmaGetValueByKeyImpliesContainsTuple!395 (toList!3083 lm!1707) hash!377 lt!1579694) lt!1579735)))

(declare-fun b!4367664 () Bool)

(assert (=> b!4367664 (= e!2718285 (= (getValueByKey!507 (toList!3083 lm!1707) hash!377) (Some!10520 lt!1579694)))))

(assert (= (and d!1292933 res!1796953) b!4367664))

(declare-fun m!4990809 () Bool)

(assert (=> d!1292933 m!4990809))

(declare-fun m!4990811 () Bool)

(assert (=> d!1292933 m!4990811))

(assert (=> d!1292933 m!4990795))

(assert (=> b!4367664 m!4990801))

(assert (=> b!4367598 d!1292933))

(declare-fun b!4367675 () Bool)

(declare-fun e!2718292 () List!49204)

(assert (=> b!4367675 (= e!2718292 (t!356124 lt!1579694))))

(declare-fun d!1292935 () Bool)

(declare-fun lt!1579738 () List!49204)

(declare-fun containsKey!793 (List!49204 K!10443) Bool)

(assert (=> d!1292935 (not (containsKey!793 lt!1579738 key!3918))))

(assert (=> d!1292935 (= lt!1579738 e!2718292)))

(declare-fun c!742562 () Bool)

(assert (=> d!1292935 (= c!742562 (and (is-Cons!49080 lt!1579694) (= (_1!27579 (h!54659 lt!1579694)) key!3918)))))

(assert (=> d!1292935 (noDuplicateKeys!550 lt!1579694)))

(assert (=> d!1292935 (= (removePairForKey!518 lt!1579694 key!3918) lt!1579738)))

(declare-fun b!4367677 () Bool)

(declare-fun e!2718293 () List!49204)

(assert (=> b!4367677 (= e!2718293 (Cons!49080 (h!54659 lt!1579694) (removePairForKey!518 (t!356124 lt!1579694) key!3918)))))

(declare-fun b!4367678 () Bool)

(assert (=> b!4367678 (= e!2718293 Nil!49080)))

(declare-fun b!4367676 () Bool)

(assert (=> b!4367676 (= e!2718292 e!2718293)))

(declare-fun c!742563 () Bool)

(assert (=> b!4367676 (= c!742563 (is-Cons!49080 lt!1579694))))

(assert (= (and d!1292935 c!742562) b!4367675))

(assert (= (and d!1292935 (not c!742562)) b!4367676))

(assert (= (and b!4367676 c!742563) b!4367677))

(assert (= (and b!4367676 (not c!742563)) b!4367678))

(declare-fun m!4990817 () Bool)

(assert (=> d!1292935 m!4990817))

(declare-fun m!4990819 () Bool)

(assert (=> d!1292935 m!4990819))

(declare-fun m!4990821 () Bool)

(assert (=> b!4367677 m!4990821))

(assert (=> b!4367598 d!1292935))

(declare-fun d!1292939 () Bool)

(assert (=> d!1292939 (dynLambda!20676 lambda!143082 lt!1579696)))

(declare-fun lt!1579741 () Unit!73210)

(declare-fun choose!27160 (List!49205 Int tuple2!48572) Unit!73210)

(assert (=> d!1292939 (= lt!1579741 (choose!27160 (toList!3083 lm!1707) lambda!143082 lt!1579696))))

(declare-fun e!2718300 () Bool)

(assert (=> d!1292939 e!2718300))

(declare-fun res!1796962 () Bool)

(assert (=> d!1292939 (=> (not res!1796962) (not e!2718300))))

(assert (=> d!1292939 (= res!1796962 (forall!9218 (toList!3083 lm!1707) lambda!143082))))

(assert (=> d!1292939 (= (forallContained!1856 (toList!3083 lm!1707) lambda!143082 lt!1579696) lt!1579741)))

(declare-fun b!4367685 () Bool)

(assert (=> b!4367685 (= e!2718300 (contains!11366 (toList!3083 lm!1707) lt!1579696))))

(assert (= (and d!1292939 res!1796962) b!4367685))

(declare-fun b_lambda!132575 () Bool)

(assert (=> (not b_lambda!132575) (not d!1292939)))

(declare-fun m!4990823 () Bool)

(assert (=> d!1292939 m!4990823))

(declare-fun m!4990825 () Bool)

(assert (=> d!1292939 m!4990825))

(assert (=> d!1292939 m!4990735))

(assert (=> b!4367685 m!4990723))

(assert (=> b!4367598 d!1292939))

(declare-fun d!1292941 () Bool)

(declare-fun lt!1579744 () Bool)

(declare-fun content!7777 (List!49205) (Set tuple2!48572))

(assert (=> d!1292941 (= lt!1579744 (set.member lt!1579696 (content!7777 (toList!3083 lm!1707))))))

(declare-fun e!2718310 () Bool)

(assert (=> d!1292941 (= lt!1579744 e!2718310)))

(declare-fun res!1796971 () Bool)

(assert (=> d!1292941 (=> (not res!1796971) (not e!2718310))))

(assert (=> d!1292941 (= res!1796971 (is-Cons!49081 (toList!3083 lm!1707)))))

(assert (=> d!1292941 (= (contains!11366 (toList!3083 lm!1707) lt!1579696) lt!1579744)))

(declare-fun b!4367694 () Bool)

(declare-fun e!2718309 () Bool)

(assert (=> b!4367694 (= e!2718310 e!2718309)))

(declare-fun res!1796972 () Bool)

(assert (=> b!4367694 (=> res!1796972 e!2718309)))

(assert (=> b!4367694 (= res!1796972 (= (h!54660 (toList!3083 lm!1707)) lt!1579696))))

(declare-fun b!4367695 () Bool)

(assert (=> b!4367695 (= e!2718309 (contains!11366 (t!356125 (toList!3083 lm!1707)) lt!1579696))))

(assert (= (and d!1292941 res!1796971) b!4367694))

(assert (= (and b!4367694 (not res!1796972)) b!4367695))

(declare-fun m!4990835 () Bool)

(assert (=> d!1292941 m!4990835))

(declare-fun m!4990837 () Bool)

(assert (=> d!1292941 m!4990837))

(declare-fun m!4990839 () Bool)

(assert (=> b!4367695 m!4990839))

(assert (=> b!4367598 d!1292941))

(declare-fun d!1292947 () Bool)

(assert (=> d!1292947 true))

(assert (=> d!1292947 true))

(declare-fun lambda!143099 () Int)

(declare-fun forall!9220 (List!49204 Int) Bool)

(assert (=> d!1292947 (= (allKeysSameHash!508 newBucket!200 hash!377 hashF!1247) (forall!9220 newBucket!200 lambda!143099))))

(declare-fun bs!637438 () Bool)

(assert (= bs!637438 d!1292947))

(declare-fun m!4990843 () Bool)

(assert (=> bs!637438 m!4990843))

(assert (=> b!4367603 d!1292947))

(declare-fun d!1292951 () Bool)

(declare-fun res!1796977 () Bool)

(declare-fun e!2718315 () Bool)

(assert (=> d!1292951 (=> res!1796977 e!2718315)))

(assert (=> d!1292951 (= res!1796977 (not (is-Cons!49080 newBucket!200)))))

(assert (=> d!1292951 (= (noDuplicateKeys!550 newBucket!200) e!2718315)))

(declare-fun b!4367704 () Bool)

(declare-fun e!2718316 () Bool)

(assert (=> b!4367704 (= e!2718315 e!2718316)))

(declare-fun res!1796978 () Bool)

(assert (=> b!4367704 (=> (not res!1796978) (not e!2718316))))

(assert (=> b!4367704 (= res!1796978 (not (containsKey!793 (t!356124 newBucket!200) (_1!27579 (h!54659 newBucket!200)))))))

(declare-fun b!4367705 () Bool)

(assert (=> b!4367705 (= e!2718316 (noDuplicateKeys!550 (t!356124 newBucket!200)))))

(assert (= (and d!1292951 (not res!1796977)) b!4367704))

(assert (= (and b!4367704 res!1796978) b!4367705))

(declare-fun m!4990845 () Bool)

(assert (=> b!4367704 m!4990845))

(declare-fun m!4990847 () Bool)

(assert (=> b!4367705 m!4990847))

(assert (=> b!4367602 d!1292951))

(declare-fun d!1292953 () Bool)

(declare-fun res!1796979 () Bool)

(declare-fun e!2718317 () Bool)

(assert (=> d!1292953 (=> res!1796979 e!2718317)))

(assert (=> d!1292953 (= res!1796979 (is-Nil!49081 (toList!3083 lt!1579697)))))

(assert (=> d!1292953 (= (forall!9218 (toList!3083 lt!1579697) lambda!143082) e!2718317)))

(declare-fun b!4367706 () Bool)

(declare-fun e!2718318 () Bool)

(assert (=> b!4367706 (= e!2718317 e!2718318)))

(declare-fun res!1796980 () Bool)

(assert (=> b!4367706 (=> (not res!1796980) (not e!2718318))))

(assert (=> b!4367706 (= res!1796980 (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 lt!1579697))))))

(declare-fun b!4367707 () Bool)

(assert (=> b!4367707 (= e!2718318 (forall!9218 (t!356125 (toList!3083 lt!1579697)) lambda!143082))))

(assert (= (and d!1292953 (not res!1796979)) b!4367706))

(assert (= (and b!4367706 res!1796980) b!4367707))

(declare-fun b_lambda!132579 () Bool)

(assert (=> (not b_lambda!132579) (not b!4367706)))

(declare-fun m!4990849 () Bool)

(assert (=> b!4367706 m!4990849))

(declare-fun m!4990851 () Bool)

(assert (=> b!4367707 m!4990851))

(assert (=> b!4367607 d!1292953))

(declare-fun d!1292955 () Bool)

(declare-fun e!2718321 () Bool)

(assert (=> d!1292955 e!2718321))

(declare-fun res!1796986 () Bool)

(assert (=> d!1292955 (=> (not res!1796986) (not e!2718321))))

(declare-fun lt!1579755 () ListLongMap!1733)

(assert (=> d!1292955 (= res!1796986 (contains!11367 lt!1579755 (_1!27580 lt!1579698)))))

(declare-fun lt!1579756 () List!49205)

(assert (=> d!1292955 (= lt!1579755 (ListLongMap!1734 lt!1579756))))

(declare-fun lt!1579754 () Unit!73210)

(declare-fun lt!1579753 () Unit!73210)

(assert (=> d!1292955 (= lt!1579754 lt!1579753)))

(assert (=> d!1292955 (= (getValueByKey!507 lt!1579756 (_1!27580 lt!1579698)) (Some!10520 (_2!27580 lt!1579698)))))

(declare-fun lemmaContainsTupThenGetReturnValue!273 (List!49205 (_ BitVec 64) List!49204) Unit!73210)

(assert (=> d!1292955 (= lt!1579753 (lemmaContainsTupThenGetReturnValue!273 lt!1579756 (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))

(declare-fun insertStrictlySorted!158 (List!49205 (_ BitVec 64) List!49204) List!49205)

(assert (=> d!1292955 (= lt!1579756 (insertStrictlySorted!158 (toList!3083 lm!1707) (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))

(assert (=> d!1292955 (= (+!733 lm!1707 lt!1579698) lt!1579755)))

(declare-fun b!4367716 () Bool)

(declare-fun res!1796985 () Bool)

(assert (=> b!4367716 (=> (not res!1796985) (not e!2718321))))

(assert (=> b!4367716 (= res!1796985 (= (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698)) (Some!10520 (_2!27580 lt!1579698))))))

(declare-fun b!4367717 () Bool)

(assert (=> b!4367717 (= e!2718321 (contains!11366 (toList!3083 lt!1579755) lt!1579698))))

(assert (= (and d!1292955 res!1796986) b!4367716))

(assert (= (and b!4367716 res!1796985) b!4367717))

(declare-fun m!4990855 () Bool)

(assert (=> d!1292955 m!4990855))

(declare-fun m!4990857 () Bool)

(assert (=> d!1292955 m!4990857))

(declare-fun m!4990859 () Bool)

(assert (=> d!1292955 m!4990859))

(declare-fun m!4990861 () Bool)

(assert (=> d!1292955 m!4990861))

(declare-fun m!4990863 () Bool)

(assert (=> b!4367716 m!4990863))

(declare-fun m!4990865 () Bool)

(assert (=> b!4367717 m!4990865))

(assert (=> b!4367607 d!1292955))

(declare-fun d!1292959 () Bool)

(assert (=> d!1292959 (forall!9218 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))) lambda!143082)))

(declare-fun lt!1579767 () Unit!73210)

(declare-fun choose!27161 (ListLongMap!1733 Int (_ BitVec 64) List!49204) Unit!73210)

(assert (=> d!1292959 (= lt!1579767 (choose!27161 lm!1707 lambda!143082 hash!377 newBucket!200))))

(declare-fun e!2718326 () Bool)

(assert (=> d!1292959 e!2718326))

(declare-fun res!1796989 () Bool)

(assert (=> d!1292959 (=> (not res!1796989) (not e!2718326))))

(assert (=> d!1292959 (= res!1796989 (forall!9218 (toList!3083 lm!1707) lambda!143082))))

(assert (=> d!1292959 (= (addValidProp!196 lm!1707 lambda!143082 hash!377 newBucket!200) lt!1579767)))

(declare-fun b!4367725 () Bool)

(assert (=> b!4367725 (= e!2718326 (dynLambda!20676 lambda!143082 (tuple2!48573 hash!377 newBucket!200)))))

(assert (= (and d!1292959 res!1796989) b!4367725))

(declare-fun b_lambda!132581 () Bool)

(assert (=> (not b_lambda!132581) (not b!4367725)))

(declare-fun m!4990867 () Bool)

(assert (=> d!1292959 m!4990867))

(declare-fun m!4990869 () Bool)

(assert (=> d!1292959 m!4990869))

(declare-fun m!4990871 () Bool)

(assert (=> d!1292959 m!4990871))

(assert (=> d!1292959 m!4990735))

(declare-fun m!4990873 () Bool)

(assert (=> b!4367725 m!4990873))

(assert (=> b!4367607 d!1292959))

(assert (=> b!4367607 d!1292921))

(assert (=> b!4367606 d!1292953))

(declare-fun d!1292961 () Bool)

(declare-fun hash!1701 (Hashable!4942 K!10443) (_ BitVec 64))

(assert (=> d!1292961 (= (hash!1699 hashF!1247 key!3918) (hash!1701 hashF!1247 key!3918))))

(declare-fun bs!637440 () Bool)

(assert (= bs!637440 d!1292961))

(declare-fun m!4990875 () Bool)

(assert (=> bs!637440 m!4990875))

(assert (=> b!4367600 d!1292961))

(declare-fun b!4367753 () Bool)

(declare-fun e!2718349 () Unit!73210)

(declare-fun lt!1579799 () Unit!73210)

(assert (=> b!4367753 (= e!2718349 lt!1579799)))

(declare-fun lt!1579796 () Unit!73210)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!419 (List!49204 K!10443) Unit!73210)

(assert (=> b!4367753 (= lt!1579796 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-datatypes ((Option!10522 0))(
  ( (None!10521) (Some!10521 (v!43471 V!10689)) )
))
(declare-fun isDefined!7816 (Option!10522) Bool)

(declare-fun getValueByKey!508 (List!49204 K!10443) Option!10522)

(assert (=> b!4367753 (isDefined!7816 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-fun lt!1579801 () Unit!73210)

(assert (=> b!4367753 (= lt!1579801 lt!1579796)))

(declare-fun lemmaInListThenGetKeysListContains!149 (List!49204 K!10443) Unit!73210)

(assert (=> b!4367753 (= lt!1579799 (lemmaInListThenGetKeysListContains!149 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-fun call!303568 () Bool)

(assert (=> b!4367753 call!303568))

(declare-fun b!4367754 () Bool)

(declare-fun e!2718347 () Bool)

(declare-datatypes ((List!49208 0))(
  ( (Nil!49084) (Cons!49084 (h!54665 K!10443) (t!356128 List!49208)) )
))
(declare-fun contains!11372 (List!49208 K!10443) Bool)

(declare-fun keys!16618 (ListMap!2327) List!49208)

(assert (=> b!4367754 (= e!2718347 (contains!11372 (keys!16618 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-fun d!1292963 () Bool)

(declare-fun e!2718345 () Bool)

(assert (=> d!1292963 e!2718345))

(declare-fun res!1797005 () Bool)

(assert (=> d!1292963 (=> res!1797005 e!2718345)))

(declare-fun e!2718350 () Bool)

(assert (=> d!1292963 (= res!1797005 e!2718350)))

(declare-fun res!1797003 () Bool)

(assert (=> d!1292963 (=> (not res!1797003) (not e!2718350))))

(declare-fun lt!1579800 () Bool)

(assert (=> d!1292963 (= res!1797003 (not lt!1579800))))

(declare-fun lt!1579798 () Bool)

(assert (=> d!1292963 (= lt!1579800 lt!1579798)))

(declare-fun lt!1579802 () Unit!73210)

(assert (=> d!1292963 (= lt!1579802 e!2718349)))

(declare-fun c!742574 () Bool)

(assert (=> d!1292963 (= c!742574 lt!1579798)))

(declare-fun containsKey!794 (List!49204 K!10443) Bool)

(assert (=> d!1292963 (= lt!1579798 (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(assert (=> d!1292963 (= (contains!11368 (extractMap!609 (toList!3083 lm!1707)) key!3918) lt!1579800)))

(declare-fun b!4367755 () Bool)

(declare-fun e!2718348 () Unit!73210)

(assert (=> b!4367755 (= e!2718349 e!2718348)))

(declare-fun c!742573 () Bool)

(assert (=> b!4367755 (= c!742573 call!303568)))

(declare-fun bm!303563 () Bool)

(declare-fun e!2718346 () List!49208)

(assert (=> bm!303563 (= call!303568 (contains!11372 e!2718346 key!3918))))

(declare-fun c!742575 () Bool)

(assert (=> bm!303563 (= c!742575 c!742574)))

(declare-fun b!4367756 () Bool)

(declare-fun getKeysList!152 (List!49204) List!49208)

(assert (=> b!4367756 (= e!2718346 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun b!4367757 () Bool)

(assert (=> b!4367757 (= e!2718350 (not (contains!11372 (keys!16618 (extractMap!609 (toList!3083 lm!1707))) key!3918)))))

(declare-fun b!4367758 () Bool)

(declare-fun Unit!73215 () Unit!73210)

(assert (=> b!4367758 (= e!2718348 Unit!73215)))

(declare-fun b!4367759 () Bool)

(assert (=> b!4367759 false))

(declare-fun lt!1579797 () Unit!73210)

(declare-fun lt!1579803 () Unit!73210)

(assert (=> b!4367759 (= lt!1579797 lt!1579803)))

(assert (=> b!4367759 (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!150 (List!49204 K!10443) Unit!73210)

(assert (=> b!4367759 (= lt!1579803 (lemmaInGetKeysListThenContainsKey!150 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-fun Unit!73216 () Unit!73210)

(assert (=> b!4367759 (= e!2718348 Unit!73216)))

(declare-fun b!4367760 () Bool)

(assert (=> b!4367760 (= e!2718345 e!2718347)))

(declare-fun res!1797004 () Bool)

(assert (=> b!4367760 (=> (not res!1797004) (not e!2718347))))

(assert (=> b!4367760 (= res!1797004 (isDefined!7816 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)))))

(declare-fun b!4367761 () Bool)

(assert (=> b!4367761 (= e!2718346 (keys!16618 (extractMap!609 (toList!3083 lm!1707))))))

(assert (= (and d!1292963 c!742574) b!4367753))

(assert (= (and d!1292963 (not c!742574)) b!4367755))

(assert (= (and b!4367755 c!742573) b!4367759))

(assert (= (and b!4367755 (not c!742573)) b!4367758))

(assert (= (or b!4367753 b!4367755) bm!303563))

(assert (= (and bm!303563 c!742575) b!4367756))

(assert (= (and bm!303563 (not c!742575)) b!4367761))

(assert (= (and d!1292963 res!1797003) b!4367757))

(assert (= (and d!1292963 (not res!1797005)) b!4367760))

(assert (= (and b!4367760 res!1797004) b!4367754))

(assert (=> b!4367761 m!4990753))

(declare-fun m!4990887 () Bool)

(assert (=> b!4367761 m!4990887))

(declare-fun m!4990889 () Bool)

(assert (=> b!4367759 m!4990889))

(declare-fun m!4990891 () Bool)

(assert (=> b!4367759 m!4990891))

(assert (=> d!1292963 m!4990889))

(assert (=> b!4367754 m!4990753))

(assert (=> b!4367754 m!4990887))

(assert (=> b!4367754 m!4990887))

(declare-fun m!4990893 () Bool)

(assert (=> b!4367754 m!4990893))

(declare-fun m!4990895 () Bool)

(assert (=> b!4367760 m!4990895))

(assert (=> b!4367760 m!4990895))

(declare-fun m!4990897 () Bool)

(assert (=> b!4367760 m!4990897))

(declare-fun m!4990899 () Bool)

(assert (=> b!4367756 m!4990899))

(declare-fun m!4990901 () Bool)

(assert (=> bm!303563 m!4990901))

(assert (=> b!4367757 m!4990753))

(assert (=> b!4367757 m!4990887))

(assert (=> b!4367757 m!4990887))

(assert (=> b!4367757 m!4990893))

(declare-fun m!4990903 () Bool)

(assert (=> b!4367753 m!4990903))

(assert (=> b!4367753 m!4990895))

(assert (=> b!4367753 m!4990895))

(assert (=> b!4367753 m!4990897))

(declare-fun m!4990905 () Bool)

(assert (=> b!4367753 m!4990905))

(assert (=> b!4367605 d!1292963))

(declare-fun bs!637442 () Bool)

(declare-fun d!1292969 () Bool)

(assert (= bs!637442 (and d!1292969 start!423810)))

(declare-fun lambda!143105 () Int)

(assert (=> bs!637442 (= lambda!143105 lambda!143082)))

(declare-fun bs!637443 () Bool)

(assert (= bs!637443 (and d!1292969 d!1292927)))

(assert (=> bs!637443 (not (= lambda!143105 lambda!143096))))

(declare-fun lt!1579810 () ListMap!2327)

(declare-fun invariantList!704 (List!49204) Bool)

(assert (=> d!1292969 (invariantList!704 (toList!3084 lt!1579810))))

(declare-fun e!2718354 () ListMap!2327)

(assert (=> d!1292969 (= lt!1579810 e!2718354)))

(declare-fun c!742578 () Bool)

(assert (=> d!1292969 (= c!742578 (is-Cons!49081 (toList!3083 lm!1707)))))

(assert (=> d!1292969 (forall!9218 (toList!3083 lm!1707) lambda!143105)))

(assert (=> d!1292969 (= (extractMap!609 (toList!3083 lm!1707)) lt!1579810)))

(declare-fun b!4367768 () Bool)

(declare-fun addToMapMapFromBucket!231 (List!49204 ListMap!2327) ListMap!2327)

(assert (=> b!4367768 (= e!2718354 (addToMapMapFromBucket!231 (_2!27580 (h!54660 (toList!3083 lm!1707))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun b!4367769 () Bool)

(assert (=> b!4367769 (= e!2718354 (ListMap!2328 Nil!49080))))

(assert (= (and d!1292969 c!742578) b!4367768))

(assert (= (and d!1292969 (not c!742578)) b!4367769))

(declare-fun m!4990919 () Bool)

(assert (=> d!1292969 m!4990919))

(declare-fun m!4990921 () Bool)

(assert (=> d!1292969 m!4990921))

(declare-fun m!4990923 () Bool)

(assert (=> b!4367768 m!4990923))

(assert (=> b!4367768 m!4990923))

(declare-fun m!4990925 () Bool)

(assert (=> b!4367768 m!4990925))

(assert (=> b!4367605 d!1292969))

(declare-fun b!4367774 () Bool)

(declare-fun e!2718357 () Bool)

(declare-fun tp!1330811 () Bool)

(declare-fun tp!1330812 () Bool)

(assert (=> b!4367774 (= e!2718357 (and tp!1330811 tp!1330812))))

(assert (=> b!4367597 (= tp!1330800 e!2718357)))

(assert (= (and b!4367597 (is-Cons!49081 (toList!3083 lm!1707))) b!4367774))

(declare-fun e!2718360 () Bool)

(declare-fun b!4367779 () Bool)

(declare-fun tp!1330815 () Bool)

(assert (=> b!4367779 (= e!2718360 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330815))))

(assert (=> b!4367601 (= tp!1330799 e!2718360)))

(assert (= (and b!4367601 (is-Cons!49080 (t!356124 newBucket!200))) b!4367779))

(declare-fun b_lambda!132583 () Bool)

(assert (= b_lambda!132579 (or start!423810 b_lambda!132583)))

(declare-fun bs!637444 () Bool)

(declare-fun d!1292973 () Bool)

(assert (= bs!637444 (and d!1292973 start!423810)))

(assert (=> bs!637444 (= (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 lt!1579697))) (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))))

(declare-fun m!4990927 () Bool)

(assert (=> bs!637444 m!4990927))

(assert (=> b!4367706 d!1292973))

(declare-fun b_lambda!132585 () Bool)

(assert (= b_lambda!132581 (or start!423810 b_lambda!132585)))

(declare-fun bs!637445 () Bool)

(declare-fun d!1292975 () Bool)

(assert (= bs!637445 (and d!1292975 start!423810)))

(assert (=> bs!637445 (= (dynLambda!20676 lambda!143082 (tuple2!48573 hash!377 newBucket!200)) (noDuplicateKeys!550 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun m!4990929 () Bool)

(assert (=> bs!637445 m!4990929))

(assert (=> b!4367725 d!1292975))

(declare-fun b_lambda!132587 () Bool)

(assert (= b_lambda!132571 (or start!423810 b_lambda!132587)))

(declare-fun bs!637446 () Bool)

(declare-fun d!1292977 () Bool)

(assert (= bs!637446 (and d!1292977 start!423810)))

(assert (=> bs!637446 (= (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 lm!1707))) (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(declare-fun m!4990931 () Bool)

(assert (=> bs!637446 m!4990931))

(assert (=> b!4367645 d!1292977))

(declare-fun b_lambda!132589 () Bool)

(assert (= b_lambda!132575 (or start!423810 b_lambda!132589)))

(declare-fun bs!637447 () Bool)

(declare-fun d!1292979 () Bool)

(assert (= bs!637447 (and d!1292979 start!423810)))

(assert (=> bs!637447 (= (dynLambda!20676 lambda!143082 lt!1579696) (noDuplicateKeys!550 (_2!27580 lt!1579696)))))

(declare-fun m!4990933 () Bool)

(assert (=> bs!637447 m!4990933))

(assert (=> d!1292939 d!1292979))

(push 1)

(assert (not d!1292923))

(assert (not d!1292961))

(assert (not d!1292955))

(assert (not b!4367774))

(assert (not b!4367655))

(assert (not d!1292963))

(assert (not b!4367653))

(assert (not b!4367754))

(assert (not d!1292939))

(assert (not b!4367757))

(assert (not b!4367664))

(assert (not d!1292927))

(assert (not b!4367685))

(assert (not bs!637447))

(assert (not b!4367768))

(assert tp_is_empty!25439)

(assert (not b!4367760))

(assert (not bm!303563))

(assert (not b!4367779))

(assert (not b!4367759))

(assert (not bs!637446))

(assert (not b!4367707))

(assert (not b_lambda!132587))

(assert (not b!4367716))

(assert (not bs!637445))

(assert (not b!4367756))

(assert (not d!1292959))

(assert (not d!1292941))

(assert (not d!1292969))

(assert (not b!4367646))

(assert (not b_lambda!132589))

(assert (not d!1292947))

(assert tp_is_empty!25437)

(assert (not d!1292935))

(assert (not b!4367705))

(assert (not b!4367761))

(assert (not b!4367695))

(assert (not d!1292929))

(assert (not b_lambda!132583))

(assert (not b!4367704))

(assert (not b!4367753))

(assert (not b!4367717))

(assert (not bs!637444))

(assert (not b!4367677))

(assert (not b_lambda!132585))

(assert (not d!1292925))

(assert (not d!1292933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1293005 () Bool)

(declare-fun c!742599 () Bool)

(assert (=> d!1293005 (= c!742599 (is-Nil!49081 (toList!3083 lm!1707)))))

(declare-fun e!2718411 () (Set tuple2!48572))

(assert (=> d!1293005 (= (content!7777 (toList!3083 lm!1707)) e!2718411)))

(declare-fun b!4367857 () Bool)

(assert (=> b!4367857 (= e!2718411 (as set.empty (Set tuple2!48572)))))

(declare-fun b!4367858 () Bool)

(assert (=> b!4367858 (= e!2718411 (set.union (set.insert (h!54660 (toList!3083 lm!1707)) (as set.empty (Set tuple2!48572))) (content!7777 (t!356125 (toList!3083 lm!1707)))))))

(assert (= (and d!1293005 c!742599) b!4367857))

(assert (= (and d!1293005 (not c!742599)) b!4367858))

(declare-fun m!4991003 () Bool)

(assert (=> b!4367858 m!4991003))

(declare-fun m!4991005 () Bool)

(assert (=> b!4367858 m!4991005))

(assert (=> d!1292941 d!1293005))

(declare-fun d!1293007 () Bool)

(declare-fun res!1797032 () Bool)

(declare-fun e!2718412 () Bool)

(assert (=> d!1293007 (=> res!1797032 e!2718412)))

(assert (=> d!1293007 (= res!1797032 (not (is-Cons!49080 (t!356124 newBucket!200))))))

(assert (=> d!1293007 (= (noDuplicateKeys!550 (t!356124 newBucket!200)) e!2718412)))

(declare-fun b!4367859 () Bool)

(declare-fun e!2718413 () Bool)

(assert (=> b!4367859 (= e!2718412 e!2718413)))

(declare-fun res!1797033 () Bool)

(assert (=> b!4367859 (=> (not res!1797033) (not e!2718413))))

(assert (=> b!4367859 (= res!1797033 (not (containsKey!793 (t!356124 (t!356124 newBucket!200)) (_1!27579 (h!54659 (t!356124 newBucket!200))))))))

(declare-fun b!4367860 () Bool)

(assert (=> b!4367860 (= e!2718413 (noDuplicateKeys!550 (t!356124 (t!356124 newBucket!200))))))

(assert (= (and d!1293007 (not res!1797032)) b!4367859))

(assert (= (and b!4367859 res!1797033) b!4367860))

(declare-fun m!4991007 () Bool)

(assert (=> b!4367859 m!4991007))

(declare-fun m!4991009 () Bool)

(assert (=> b!4367860 m!4991009))

(assert (=> b!4367705 d!1293007))

(declare-fun d!1293009 () Bool)

(declare-fun res!1797034 () Bool)

(declare-fun e!2718414 () Bool)

(assert (=> d!1293009 (=> res!1797034 e!2718414)))

(assert (=> d!1293009 (= res!1797034 (not (is-Cons!49080 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (=> d!1293009 (= (noDuplicateKeys!550 (_2!27580 (tuple2!48573 hash!377 newBucket!200))) e!2718414)))

(declare-fun b!4367861 () Bool)

(declare-fun e!2718415 () Bool)

(assert (=> b!4367861 (= e!2718414 e!2718415)))

(declare-fun res!1797035 () Bool)

(assert (=> b!4367861 (=> (not res!1797035) (not e!2718415))))

(assert (=> b!4367861 (= res!1797035 (not (containsKey!793 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))) (_1!27579 (h!54659 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))))

(declare-fun b!4367862 () Bool)

(assert (=> b!4367862 (= e!2718415 (noDuplicateKeys!550 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (= (and d!1293009 (not res!1797034)) b!4367861))

(assert (= (and b!4367861 res!1797035) b!4367862))

(declare-fun m!4991011 () Bool)

(assert (=> b!4367861 m!4991011))

(declare-fun m!4991013 () Bool)

(assert (=> b!4367862 m!4991013))

(assert (=> bs!637445 d!1293009))

(declare-fun d!1293011 () Bool)

(declare-fun res!1797040 () Bool)

(declare-fun e!2718420 () Bool)

(assert (=> d!1293011 (=> res!1797040 e!2718420)))

(assert (=> d!1293011 (= res!1797040 (and (is-Cons!49080 (t!356124 newBucket!200)) (= (_1!27579 (h!54659 (t!356124 newBucket!200))) (_1!27579 (h!54659 newBucket!200)))))))

(assert (=> d!1293011 (= (containsKey!793 (t!356124 newBucket!200) (_1!27579 (h!54659 newBucket!200))) e!2718420)))

(declare-fun b!4367867 () Bool)

(declare-fun e!2718421 () Bool)

(assert (=> b!4367867 (= e!2718420 e!2718421)))

(declare-fun res!1797041 () Bool)

(assert (=> b!4367867 (=> (not res!1797041) (not e!2718421))))

(assert (=> b!4367867 (= res!1797041 (is-Cons!49080 (t!356124 newBucket!200)))))

(declare-fun b!4367868 () Bool)

(assert (=> b!4367868 (= e!2718421 (containsKey!793 (t!356124 (t!356124 newBucket!200)) (_1!27579 (h!54659 newBucket!200))))))

(assert (= (and d!1293011 (not res!1797040)) b!4367867))

(assert (= (and b!4367867 res!1797041) b!4367868))

(declare-fun m!4991015 () Bool)

(assert (=> b!4367868 m!4991015))

(assert (=> b!4367704 d!1293011))

(declare-fun d!1293013 () Bool)

(declare-fun lt!1579855 () Bool)

(declare-fun content!7779 (List!49208) (Set K!10443))

(assert (=> d!1293013 (= lt!1579855 (set.member key!3918 (content!7779 (keys!16618 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun e!2718427 () Bool)

(assert (=> d!1293013 (= lt!1579855 e!2718427)))

(declare-fun res!1797046 () Bool)

(assert (=> d!1293013 (=> (not res!1797046) (not e!2718427))))

(assert (=> d!1293013 (= res!1797046 (is-Cons!49084 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293013 (= (contains!11372 (keys!16618 (extractMap!609 (toList!3083 lm!1707))) key!3918) lt!1579855)))

(declare-fun b!4367873 () Bool)

(declare-fun e!2718426 () Bool)

(assert (=> b!4367873 (= e!2718427 e!2718426)))

(declare-fun res!1797047 () Bool)

(assert (=> b!4367873 (=> res!1797047 e!2718426)))

(assert (=> b!4367873 (= res!1797047 (= (h!54665 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))) key!3918))))

(declare-fun b!4367874 () Bool)

(assert (=> b!4367874 (= e!2718426 (contains!11372 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))) key!3918))))

(assert (= (and d!1293013 res!1797046) b!4367873))

(assert (= (and b!4367873 (not res!1797047)) b!4367874))

(assert (=> d!1293013 m!4990887))

(declare-fun m!4991017 () Bool)

(assert (=> d!1293013 m!4991017))

(declare-fun m!4991019 () Bool)

(assert (=> d!1293013 m!4991019))

(declare-fun m!4991021 () Bool)

(assert (=> b!4367874 m!4991021))

(assert (=> b!4367754 d!1293013))

(declare-fun b!4367882 () Bool)

(assert (=> b!4367882 true))

(declare-fun d!1293015 () Bool)

(declare-fun e!2718430 () Bool)

(assert (=> d!1293015 e!2718430))

(declare-fun res!1797054 () Bool)

(assert (=> d!1293015 (=> (not res!1797054) (not e!2718430))))

(declare-fun lt!1579858 () List!49208)

(declare-fun noDuplicate!613 (List!49208) Bool)

(assert (=> d!1293015 (= res!1797054 (noDuplicate!613 lt!1579858))))

(assert (=> d!1293015 (= lt!1579858 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293015 (= (keys!16618 (extractMap!609 (toList!3083 lm!1707))) lt!1579858)))

(declare-fun b!4367881 () Bool)

(declare-fun res!1797056 () Bool)

(assert (=> b!4367881 (=> (not res!1797056) (not e!2718430))))

(declare-fun length!82 (List!49208) Int)

(declare-fun length!83 (List!49204) Int)

(assert (=> b!4367881 (= res!1797056 (= (length!82 lt!1579858) (length!83 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun res!1797055 () Bool)

(assert (=> b!4367882 (=> (not res!1797055) (not e!2718430))))

(declare-fun lambda!143116 () Int)

(declare-fun forall!9222 (List!49208 Int) Bool)

(assert (=> b!4367882 (= res!1797055 (forall!9222 lt!1579858 lambda!143116))))

(declare-fun lambda!143117 () Int)

(declare-fun b!4367883 () Bool)

(declare-fun map!10685 (List!49204 Int) List!49208)

(assert (=> b!4367883 (= e!2718430 (= (content!7779 lt!1579858) (content!7779 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117))))))

(assert (= (and d!1293015 res!1797054) b!4367881))

(assert (= (and b!4367881 res!1797056) b!4367882))

(assert (= (and b!4367882 res!1797055) b!4367883))

(declare-fun m!4991023 () Bool)

(assert (=> d!1293015 m!4991023))

(assert (=> d!1293015 m!4990899))

(declare-fun m!4991025 () Bool)

(assert (=> b!4367881 m!4991025))

(declare-fun m!4991027 () Bool)

(assert (=> b!4367881 m!4991027))

(declare-fun m!4991029 () Bool)

(assert (=> b!4367882 m!4991029))

(declare-fun m!4991031 () Bool)

(assert (=> b!4367883 m!4991031))

(declare-fun m!4991033 () Bool)

(assert (=> b!4367883 m!4991033))

(assert (=> b!4367883 m!4991033))

(declare-fun m!4991035 () Bool)

(assert (=> b!4367883 m!4991035))

(assert (=> b!4367754 d!1293015))

(declare-fun d!1293017 () Bool)

(assert (=> d!1293017 (dynLambda!20676 lambda!143082 lt!1579696)))

(assert (=> d!1293017 true))

(declare-fun _$7!1498 () Unit!73210)

(assert (=> d!1293017 (= (choose!27160 (toList!3083 lm!1707) lambda!143082 lt!1579696) _$7!1498)))

(declare-fun b_lambda!132603 () Bool)

(assert (=> (not b_lambda!132603) (not d!1293017)))

(declare-fun bs!637457 () Bool)

(assert (= bs!637457 d!1293017))

(assert (=> bs!637457 m!4990823))

(assert (=> d!1292939 d!1293017))

(assert (=> d!1292939 d!1292921))

(declare-fun d!1293019 () Bool)

(declare-fun res!1797061 () Bool)

(declare-fun e!2718435 () Bool)

(assert (=> d!1293019 (=> res!1797061 e!2718435)))

(assert (=> d!1293019 (= res!1797061 (or (is-Nil!49081 (toList!3083 lm!1707)) (is-Nil!49081 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293019 (= (isStrictlySorted!131 (toList!3083 lm!1707)) e!2718435)))

(declare-fun b!4367890 () Bool)

(declare-fun e!2718436 () Bool)

(assert (=> b!4367890 (= e!2718435 e!2718436)))

(declare-fun res!1797062 () Bool)

(assert (=> b!4367890 (=> (not res!1797062) (not e!2718436))))

(assert (=> b!4367890 (= res!1797062 (bvslt (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun b!4367891 () Bool)

(assert (=> b!4367891 (= e!2718436 (isStrictlySorted!131 (t!356125 (toList!3083 lm!1707))))))

(assert (= (and d!1293019 (not res!1797061)) b!4367890))

(assert (= (and b!4367890 res!1797062) b!4367891))

(declare-fun m!4991037 () Bool)

(assert (=> b!4367891 m!4991037))

(assert (=> d!1292923 d!1293019))

(declare-fun d!1293021 () Bool)

(declare-fun choose!27165 (Hashable!4942 K!10443) (_ BitVec 64))

(assert (=> d!1293021 (= (hash!1701 hashF!1247 key!3918) (choose!27165 hashF!1247 key!3918))))

(declare-fun bs!637458 () Bool)

(assert (= bs!637458 d!1293021))

(declare-fun m!4991039 () Bool)

(assert (=> bs!637458 m!4991039))

(assert (=> d!1292961 d!1293021))

(declare-fun d!1293023 () Bool)

(assert (=> d!1293023 (isDefined!7816 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(declare-fun lt!1579861 () Unit!73210)

(declare-fun choose!27166 (List!49204 K!10443) Unit!73210)

(assert (=> d!1293023 (= lt!1579861 (choose!27166 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(assert (=> d!1293023 (invariantList!704 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))

(assert (=> d!1293023 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) lt!1579861)))

(declare-fun bs!637459 () Bool)

(assert (= bs!637459 d!1293023))

(assert (=> bs!637459 m!4990895))

(assert (=> bs!637459 m!4990895))

(assert (=> bs!637459 m!4990897))

(declare-fun m!4991041 () Bool)

(assert (=> bs!637459 m!4991041))

(declare-fun m!4991043 () Bool)

(assert (=> bs!637459 m!4991043))

(assert (=> b!4367753 d!1293023))

(declare-fun d!1293025 () Bool)

(declare-fun isEmpty!28232 (Option!10522) Bool)

(assert (=> d!1293025 (= (isDefined!7816 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)) (not (isEmpty!28232 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))))

(declare-fun bs!637460 () Bool)

(assert (= bs!637460 d!1293025))

(assert (=> bs!637460 m!4990895))

(declare-fun m!4991045 () Bool)

(assert (=> bs!637460 m!4991045))

(assert (=> b!4367753 d!1293025))

(declare-fun b!4367901 () Bool)

(declare-fun e!2718441 () Option!10522)

(declare-fun e!2718442 () Option!10522)

(assert (=> b!4367901 (= e!2718441 e!2718442)))

(declare-fun c!742605 () Bool)

(assert (=> b!4367901 (= c!742605 (and (is-Cons!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (not (= (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))))

(declare-fun b!4367902 () Bool)

(assert (=> b!4367902 (= e!2718442 (getValueByKey!508 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918))))

(declare-fun b!4367903 () Bool)

(assert (=> b!4367903 (= e!2718442 None!10521)))

(declare-fun b!4367900 () Bool)

(assert (=> b!4367900 (= e!2718441 (Some!10521 (_2!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun d!1293027 () Bool)

(declare-fun c!742604 () Bool)

(assert (=> d!1293027 (= c!742604 (and (is-Cons!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918)))))

(assert (=> d!1293027 (= (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) e!2718441)))

(assert (= (and d!1293027 c!742604) b!4367900))

(assert (= (and d!1293027 (not c!742604)) b!4367901))

(assert (= (and b!4367901 c!742605) b!4367902))

(assert (= (and b!4367901 (not c!742605)) b!4367903))

(declare-fun m!4991047 () Bool)

(assert (=> b!4367902 m!4991047))

(assert (=> b!4367753 d!1293027))

(declare-fun d!1293029 () Bool)

(assert (=> d!1293029 (contains!11372 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918)))

(declare-fun lt!1579864 () Unit!73210)

(declare-fun choose!27167 (List!49204 K!10443) Unit!73210)

(assert (=> d!1293029 (= lt!1579864 (choose!27167 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(assert (=> d!1293029 (invariantList!704 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))

(assert (=> d!1293029 (= (lemmaInListThenGetKeysListContains!149 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) lt!1579864)))

(declare-fun bs!637461 () Bool)

(assert (= bs!637461 d!1293029))

(assert (=> bs!637461 m!4990899))

(assert (=> bs!637461 m!4990899))

(declare-fun m!4991049 () Bool)

(assert (=> bs!637461 m!4991049))

(declare-fun m!4991051 () Bool)

(assert (=> bs!637461 m!4991051))

(assert (=> bs!637461 m!4991043))

(assert (=> b!4367753 d!1293029))

(declare-fun d!1293031 () Bool)

(declare-fun res!1797067 () Bool)

(declare-fun e!2718447 () Bool)

(assert (=> d!1293031 (=> res!1797067 e!2718447)))

(assert (=> d!1293031 (= res!1797067 (is-Nil!49080 newBucket!200))))

(assert (=> d!1293031 (= (forall!9220 newBucket!200 lambda!143099) e!2718447)))

(declare-fun b!4367908 () Bool)

(declare-fun e!2718448 () Bool)

(assert (=> b!4367908 (= e!2718447 e!2718448)))

(declare-fun res!1797068 () Bool)

(assert (=> b!4367908 (=> (not res!1797068) (not e!2718448))))

(declare-fun dynLambda!20678 (Int tuple2!48570) Bool)

(assert (=> b!4367908 (= res!1797068 (dynLambda!20678 lambda!143099 (h!54659 newBucket!200)))))

(declare-fun b!4367909 () Bool)

(assert (=> b!4367909 (= e!2718448 (forall!9220 (t!356124 newBucket!200) lambda!143099))))

(assert (= (and d!1293031 (not res!1797067)) b!4367908))

(assert (= (and b!4367908 res!1797068) b!4367909))

(declare-fun b_lambda!132605 () Bool)

(assert (=> (not b_lambda!132605) (not b!4367908)))

(declare-fun m!4991053 () Bool)

(assert (=> b!4367908 m!4991053))

(declare-fun m!4991055 () Bool)

(assert (=> b!4367909 m!4991055))

(assert (=> d!1292947 d!1293031))

(declare-fun d!1293033 () Bool)

(declare-fun res!1797069 () Bool)

(declare-fun e!2718449 () Bool)

(assert (=> d!1293033 (=> res!1797069 e!2718449)))

(assert (=> d!1293033 (= res!1797069 (is-Nil!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293033 (= (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143082) e!2718449)))

(declare-fun b!4367910 () Bool)

(declare-fun e!2718450 () Bool)

(assert (=> b!4367910 (= e!2718449 e!2718450)))

(declare-fun res!1797070 () Bool)

(assert (=> b!4367910 (=> (not res!1797070) (not e!2718450))))

(assert (=> b!4367910 (= res!1797070 (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun b!4367911 () Bool)

(assert (=> b!4367911 (= e!2718450 (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143082))))

(assert (= (and d!1293033 (not res!1797069)) b!4367910))

(assert (= (and b!4367910 res!1797070) b!4367911))

(declare-fun b_lambda!132607 () Bool)

(assert (=> (not b_lambda!132607) (not b!4367910)))

(declare-fun m!4991057 () Bool)

(assert (=> b!4367910 m!4991057))

(declare-fun m!4991059 () Bool)

(assert (=> b!4367911 m!4991059))

(assert (=> b!4367646 d!1293033))

(declare-fun d!1293035 () Bool)

(declare-fun c!742610 () Bool)

(assert (=> d!1293035 (= c!742610 (and (is-Cons!49081 (toList!3083 lt!1579755)) (= (_1!27580 (h!54660 (toList!3083 lt!1579755))) (_1!27580 lt!1579698))))))

(declare-fun e!2718455 () Option!10521)

(assert (=> d!1293035 (= (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698)) e!2718455)))

(declare-fun b!4367920 () Bool)

(assert (=> b!4367920 (= e!2718455 (Some!10520 (_2!27580 (h!54660 (toList!3083 lt!1579755)))))))

(declare-fun b!4367923 () Bool)

(declare-fun e!2718456 () Option!10521)

(assert (=> b!4367923 (= e!2718456 None!10520)))

(declare-fun b!4367921 () Bool)

(assert (=> b!4367921 (= e!2718455 e!2718456)))

(declare-fun c!742611 () Bool)

(assert (=> b!4367921 (= c!742611 (and (is-Cons!49081 (toList!3083 lt!1579755)) (not (= (_1!27580 (h!54660 (toList!3083 lt!1579755))) (_1!27580 lt!1579698)))))))

(declare-fun b!4367922 () Bool)

(assert (=> b!4367922 (= e!2718456 (getValueByKey!507 (t!356125 (toList!3083 lt!1579755)) (_1!27580 lt!1579698)))))

(assert (= (and d!1293035 c!742610) b!4367920))

(assert (= (and d!1293035 (not c!742610)) b!4367921))

(assert (= (and b!4367921 c!742611) b!4367922))

(assert (= (and b!4367921 (not c!742611)) b!4367923))

(declare-fun m!4991061 () Bool)

(assert (=> b!4367922 m!4991061))

(assert (=> b!4367716 d!1293035))

(declare-fun d!1293037 () Bool)

(declare-fun res!1797071 () Bool)

(declare-fun e!2718457 () Bool)

(assert (=> d!1293037 (=> res!1797071 e!2718457)))

(assert (=> d!1293037 (= res!1797071 (is-Nil!49081 (t!356125 (toList!3083 lt!1579697))))))

(assert (=> d!1293037 (= (forall!9218 (t!356125 (toList!3083 lt!1579697)) lambda!143082) e!2718457)))

(declare-fun b!4367924 () Bool)

(declare-fun e!2718458 () Bool)

(assert (=> b!4367924 (= e!2718457 e!2718458)))

(declare-fun res!1797072 () Bool)

(assert (=> b!4367924 (=> (not res!1797072) (not e!2718458))))

(assert (=> b!4367924 (= res!1797072 (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 lt!1579697)))))))

(declare-fun b!4367925 () Bool)

(assert (=> b!4367925 (= e!2718458 (forall!9218 (t!356125 (t!356125 (toList!3083 lt!1579697))) lambda!143082))))

(assert (= (and d!1293037 (not res!1797071)) b!4367924))

(assert (= (and b!4367924 res!1797072) b!4367925))

(declare-fun b_lambda!132609 () Bool)

(assert (=> (not b_lambda!132609) (not b!4367924)))

(declare-fun m!4991063 () Bool)

(assert (=> b!4367924 m!4991063))

(declare-fun m!4991065 () Bool)

(assert (=> b!4367925 m!4991065))

(assert (=> b!4367707 d!1293037))

(declare-fun b!4367926 () Bool)

(declare-fun e!2718459 () List!49204)

(assert (=> b!4367926 (= e!2718459 (t!356124 (t!356124 lt!1579694)))))

(declare-fun d!1293039 () Bool)

(declare-fun lt!1579865 () List!49204)

(assert (=> d!1293039 (not (containsKey!793 lt!1579865 key!3918))))

(assert (=> d!1293039 (= lt!1579865 e!2718459)))

(declare-fun c!742612 () Bool)

(assert (=> d!1293039 (= c!742612 (and (is-Cons!49080 (t!356124 lt!1579694)) (= (_1!27579 (h!54659 (t!356124 lt!1579694))) key!3918)))))

(assert (=> d!1293039 (noDuplicateKeys!550 (t!356124 lt!1579694))))

(assert (=> d!1293039 (= (removePairForKey!518 (t!356124 lt!1579694) key!3918) lt!1579865)))

(declare-fun b!4367928 () Bool)

(declare-fun e!2718460 () List!49204)

(assert (=> b!4367928 (= e!2718460 (Cons!49080 (h!54659 (t!356124 lt!1579694)) (removePairForKey!518 (t!356124 (t!356124 lt!1579694)) key!3918)))))

(declare-fun b!4367929 () Bool)

(assert (=> b!4367929 (= e!2718460 Nil!49080)))

(declare-fun b!4367927 () Bool)

(assert (=> b!4367927 (= e!2718459 e!2718460)))

(declare-fun c!742613 () Bool)

(assert (=> b!4367927 (= c!742613 (is-Cons!49080 (t!356124 lt!1579694)))))

(assert (= (and d!1293039 c!742612) b!4367926))

(assert (= (and d!1293039 (not c!742612)) b!4367927))

(assert (= (and b!4367927 c!742613) b!4367928))

(assert (= (and b!4367927 (not c!742613)) b!4367929))

(declare-fun m!4991067 () Bool)

(assert (=> d!1293039 m!4991067))

(declare-fun m!4991069 () Bool)

(assert (=> d!1293039 m!4991069))

(declare-fun m!4991071 () Bool)

(assert (=> b!4367928 m!4991071))

(assert (=> b!4367677 d!1293039))

(declare-fun d!1293041 () Bool)

(declare-fun res!1797073 () Bool)

(declare-fun e!2718461 () Bool)

(assert (=> d!1293041 (=> res!1797073 e!2718461)))

(assert (=> d!1293041 (= res!1797073 (is-Nil!49081 (toList!3083 lm!1707)))))

(assert (=> d!1293041 (= (forall!9218 (toList!3083 lm!1707) lambda!143096) e!2718461)))

(declare-fun b!4367930 () Bool)

(declare-fun e!2718462 () Bool)

(assert (=> b!4367930 (= e!2718461 e!2718462)))

(declare-fun res!1797074 () Bool)

(assert (=> b!4367930 (=> (not res!1797074) (not e!2718462))))

(assert (=> b!4367930 (= res!1797074 (dynLambda!20676 lambda!143096 (h!54660 (toList!3083 lm!1707))))))

(declare-fun b!4367931 () Bool)

(assert (=> b!4367931 (= e!2718462 (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143096))))

(assert (= (and d!1293041 (not res!1797073)) b!4367930))

(assert (= (and b!4367930 res!1797074) b!4367931))

(declare-fun b_lambda!132611 () Bool)

(assert (=> (not b_lambda!132611) (not b!4367930)))

(declare-fun m!4991073 () Bool)

(assert (=> b!4367930 m!4991073))

(declare-fun m!4991075 () Bool)

(assert (=> b!4367931 m!4991075))

(assert (=> d!1292927 d!1293041))

(declare-fun d!1293043 () Bool)

(declare-fun lt!1579866 () Bool)

(assert (=> d!1293043 (= lt!1579866 (set.member lt!1579698 (content!7777 (toList!3083 lt!1579755))))))

(declare-fun e!2718464 () Bool)

(assert (=> d!1293043 (= lt!1579866 e!2718464)))

(declare-fun res!1797075 () Bool)

(assert (=> d!1293043 (=> (not res!1797075) (not e!2718464))))

(assert (=> d!1293043 (= res!1797075 (is-Cons!49081 (toList!3083 lt!1579755)))))

(assert (=> d!1293043 (= (contains!11366 (toList!3083 lt!1579755) lt!1579698) lt!1579866)))

(declare-fun b!4367932 () Bool)

(declare-fun e!2718463 () Bool)

(assert (=> b!4367932 (= e!2718464 e!2718463)))

(declare-fun res!1797076 () Bool)

(assert (=> b!4367932 (=> res!1797076 e!2718463)))

(assert (=> b!4367932 (= res!1797076 (= (h!54660 (toList!3083 lt!1579755)) lt!1579698))))

(declare-fun b!4367933 () Bool)

(assert (=> b!4367933 (= e!2718463 (contains!11366 (t!356125 (toList!3083 lt!1579755)) lt!1579698))))

(assert (= (and d!1293043 res!1797075) b!4367932))

(assert (= (and b!4367932 (not res!1797076)) b!4367933))

(declare-fun m!4991077 () Bool)

(assert (=> d!1293043 m!4991077))

(declare-fun m!4991079 () Bool)

(assert (=> d!1293043 m!4991079))

(declare-fun m!4991081 () Bool)

(assert (=> b!4367933 m!4991081))

(assert (=> b!4367717 d!1293043))

(declare-fun d!1293045 () Bool)

(declare-fun lt!1579867 () Bool)

(assert (=> d!1293045 (= lt!1579867 (set.member (tuple2!48573 hash!377 lt!1579694) (content!7777 (toList!3083 lm!1707))))))

(declare-fun e!2718466 () Bool)

(assert (=> d!1293045 (= lt!1579867 e!2718466)))

(declare-fun res!1797077 () Bool)

(assert (=> d!1293045 (=> (not res!1797077) (not e!2718466))))

(assert (=> d!1293045 (= res!1797077 (is-Cons!49081 (toList!3083 lm!1707)))))

(assert (=> d!1293045 (= (contains!11366 (toList!3083 lm!1707) (tuple2!48573 hash!377 lt!1579694)) lt!1579867)))

(declare-fun b!4367934 () Bool)

(declare-fun e!2718465 () Bool)

(assert (=> b!4367934 (= e!2718466 e!2718465)))

(declare-fun res!1797078 () Bool)

(assert (=> b!4367934 (=> res!1797078 e!2718465)))

(assert (=> b!4367934 (= res!1797078 (= (h!54660 (toList!3083 lm!1707)) (tuple2!48573 hash!377 lt!1579694)))))

(declare-fun b!4367935 () Bool)

(assert (=> b!4367935 (= e!2718465 (contains!11366 (t!356125 (toList!3083 lm!1707)) (tuple2!48573 hash!377 lt!1579694)))))

(assert (= (and d!1293045 res!1797077) b!4367934))

(assert (= (and b!4367934 (not res!1797078)) b!4367935))

(assert (=> d!1293045 m!4990835))

(declare-fun m!4991083 () Bool)

(assert (=> d!1293045 m!4991083))

(declare-fun m!4991085 () Bool)

(assert (=> b!4367935 m!4991085))

(assert (=> d!1292933 d!1293045))

(declare-fun d!1293047 () Bool)

(assert (=> d!1293047 (contains!11366 (toList!3083 lm!1707) (tuple2!48573 hash!377 lt!1579694))))

(assert (=> d!1293047 true))

(declare-fun _$14!789 () Unit!73210)

(assert (=> d!1293047 (= (choose!27159 (toList!3083 lm!1707) hash!377 lt!1579694) _$14!789)))

(declare-fun bs!637462 () Bool)

(assert (= bs!637462 d!1293047))

(assert (=> bs!637462 m!4990809))

(assert (=> d!1292933 d!1293047))

(assert (=> d!1292933 d!1293019))

(assert (=> b!4367761 d!1293015))

(declare-fun d!1293049 () Bool)

(declare-fun res!1797079 () Bool)

(declare-fun e!2718467 () Bool)

(assert (=> d!1293049 (=> res!1797079 e!2718467)))

(assert (=> d!1293049 (= res!1797079 (not (is-Cons!49080 (_2!27580 (h!54660 (toList!3083 lt!1579697))))))))

(assert (=> d!1293049 (= (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lt!1579697)))) e!2718467)))

(declare-fun b!4367936 () Bool)

(declare-fun e!2718468 () Bool)

(assert (=> b!4367936 (= e!2718467 e!2718468)))

(declare-fun res!1797080 () Bool)

(assert (=> b!4367936 (=> (not res!1797080) (not e!2718468))))

(assert (=> b!4367936 (= res!1797080 (not (containsKey!793 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lt!1579697))))))))))

(declare-fun b!4367937 () Bool)

(assert (=> b!4367937 (= e!2718468 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))))))

(assert (= (and d!1293049 (not res!1797079)) b!4367936))

(assert (= (and b!4367936 res!1797080) b!4367937))

(declare-fun m!4991087 () Bool)

(assert (=> b!4367936 m!4991087))

(declare-fun m!4991089 () Bool)

(assert (=> b!4367937 m!4991089))

(assert (=> bs!637444 d!1293049))

(declare-fun d!1293051 () Bool)

(declare-fun noDuplicatedKeys!129 (List!49204) Bool)

(assert (=> d!1293051 (= (invariantList!704 (toList!3084 lt!1579810)) (noDuplicatedKeys!129 (toList!3084 lt!1579810)))))

(declare-fun bs!637463 () Bool)

(assert (= bs!637463 d!1293051))

(declare-fun m!4991091 () Bool)

(assert (=> bs!637463 m!4991091))

(assert (=> d!1292969 d!1293051))

(declare-fun d!1293053 () Bool)

(declare-fun res!1797081 () Bool)

(declare-fun e!2718469 () Bool)

(assert (=> d!1293053 (=> res!1797081 e!2718469)))

(assert (=> d!1293053 (= res!1797081 (is-Nil!49081 (toList!3083 lm!1707)))))

(assert (=> d!1293053 (= (forall!9218 (toList!3083 lm!1707) lambda!143105) e!2718469)))

(declare-fun b!4367938 () Bool)

(declare-fun e!2718470 () Bool)

(assert (=> b!4367938 (= e!2718469 e!2718470)))

(declare-fun res!1797082 () Bool)

(assert (=> b!4367938 (=> (not res!1797082) (not e!2718470))))

(assert (=> b!4367938 (= res!1797082 (dynLambda!20676 lambda!143105 (h!54660 (toList!3083 lm!1707))))))

(declare-fun b!4367939 () Bool)

(assert (=> b!4367939 (= e!2718470 (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143105))))

(assert (= (and d!1293053 (not res!1797081)) b!4367938))

(assert (= (and b!4367938 res!1797082) b!4367939))

(declare-fun b_lambda!132613 () Bool)

(assert (=> (not b_lambda!132613) (not b!4367938)))

(declare-fun m!4991093 () Bool)

(assert (=> b!4367938 m!4991093))

(declare-fun m!4991095 () Bool)

(assert (=> b!4367939 m!4991095))

(assert (=> d!1292969 d!1293053))

(declare-fun d!1293055 () Bool)

(declare-fun res!1797087 () Bool)

(declare-fun e!2718475 () Bool)

(assert (=> d!1293055 (=> res!1797087 e!2718475)))

(assert (=> d!1293055 (= res!1797087 (and (is-Cons!49081 (toList!3083 lm!1707)) (= (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377)))))

(assert (=> d!1293055 (= (containsKey!792 (toList!3083 lm!1707) hash!377) e!2718475)))

(declare-fun b!4367944 () Bool)

(declare-fun e!2718476 () Bool)

(assert (=> b!4367944 (= e!2718475 e!2718476)))

(declare-fun res!1797088 () Bool)

(assert (=> b!4367944 (=> (not res!1797088) (not e!2718476))))

(assert (=> b!4367944 (= res!1797088 (and (or (not (is-Cons!49081 (toList!3083 lm!1707))) (bvsle (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377)) (is-Cons!49081 (toList!3083 lm!1707)) (bvslt (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377)))))

(declare-fun b!4367945 () Bool)

(assert (=> b!4367945 (= e!2718476 (containsKey!792 (t!356125 (toList!3083 lm!1707)) hash!377))))

(assert (= (and d!1293055 (not res!1797087)) b!4367944))

(assert (= (and b!4367944 res!1797088) b!4367945))

(declare-fun m!4991097 () Bool)

(assert (=> b!4367945 m!4991097))

(assert (=> d!1292925 d!1293055))

(declare-fun d!1293057 () Bool)

(declare-fun res!1797093 () Bool)

(declare-fun e!2718481 () Bool)

(assert (=> d!1293057 (=> res!1797093 e!2718481)))

(assert (=> d!1293057 (= res!1797093 (and (is-Cons!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918)))))

(assert (=> d!1293057 (= (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) e!2718481)))

(declare-fun b!4367950 () Bool)

(declare-fun e!2718482 () Bool)

(assert (=> b!4367950 (= e!2718481 e!2718482)))

(declare-fun res!1797094 () Bool)

(assert (=> b!4367950 (=> (not res!1797094) (not e!2718482))))

(assert (=> b!4367950 (= res!1797094 (is-Cons!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun b!4367951 () Bool)

(assert (=> b!4367951 (= e!2718482 (containsKey!794 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918))))

(assert (= (and d!1293057 (not res!1797093)) b!4367950))

(assert (= (and b!4367950 res!1797094) b!4367951))

(declare-fun m!4991099 () Bool)

(assert (=> b!4367951 m!4991099))

(assert (=> d!1292963 d!1293057))

(declare-fun d!1293059 () Bool)

(declare-fun isEmpty!28233 (Option!10521) Bool)

(assert (=> d!1293059 (= (isDefined!7815 (getValueByKey!507 (toList!3083 lm!1707) hash!377)) (not (isEmpty!28233 (getValueByKey!507 (toList!3083 lm!1707) hash!377))))))

(declare-fun bs!637464 () Bool)

(assert (= bs!637464 d!1293059))

(assert (=> bs!637464 m!4990801))

(declare-fun m!4991101 () Bool)

(assert (=> bs!637464 m!4991101))

(assert (=> b!4367655 d!1293059))

(declare-fun d!1293061 () Bool)

(declare-fun c!742614 () Bool)

(assert (=> d!1293061 (= c!742614 (and (is-Cons!49081 (toList!3083 lm!1707)) (= (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377)))))

(declare-fun e!2718483 () Option!10521)

(assert (=> d!1293061 (= (getValueByKey!507 (toList!3083 lm!1707) hash!377) e!2718483)))

(declare-fun b!4367952 () Bool)

(assert (=> b!4367952 (= e!2718483 (Some!10520 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(declare-fun b!4367955 () Bool)

(declare-fun e!2718484 () Option!10521)

(assert (=> b!4367955 (= e!2718484 None!10520)))

(declare-fun b!4367953 () Bool)

(assert (=> b!4367953 (= e!2718483 e!2718484)))

(declare-fun c!742615 () Bool)

(assert (=> b!4367953 (= c!742615 (and (is-Cons!49081 (toList!3083 lm!1707)) (not (= (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377))))))

(declare-fun b!4367954 () Bool)

(assert (=> b!4367954 (= e!2718484 (getValueByKey!507 (t!356125 (toList!3083 lm!1707)) hash!377))))

(assert (= (and d!1293061 c!742614) b!4367952))

(assert (= (and d!1293061 (not c!742614)) b!4367953))

(assert (= (and b!4367953 c!742615) b!4367954))

(assert (= (and b!4367953 (not c!742615)) b!4367955))

(declare-fun m!4991103 () Bool)

(assert (=> b!4367954 m!4991103))

(assert (=> b!4367655 d!1293061))

(declare-fun d!1293063 () Bool)

(declare-fun res!1797095 () Bool)

(declare-fun e!2718485 () Bool)

(assert (=> d!1293063 (=> res!1797095 e!2718485)))

(assert (=> d!1293063 (= res!1797095 (is-Nil!49081 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (=> d!1293063 (= (forall!9218 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))) lambda!143082) e!2718485)))

(declare-fun b!4367956 () Bool)

(declare-fun e!2718486 () Bool)

(assert (=> b!4367956 (= e!2718485 e!2718486)))

(declare-fun res!1797096 () Bool)

(assert (=> b!4367956 (=> (not res!1797096) (not e!2718486))))

(assert (=> b!4367956 (= res!1797096 (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))

(declare-fun b!4367957 () Bool)

(assert (=> b!4367957 (= e!2718486 (forall!9218 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))) lambda!143082))))

(assert (= (and d!1293063 (not res!1797095)) b!4367956))

(assert (= (and b!4367956 res!1797096) b!4367957))

(declare-fun b_lambda!132615 () Bool)

(assert (=> (not b_lambda!132615) (not b!4367956)))

(declare-fun m!4991105 () Bool)

(assert (=> b!4367956 m!4991105))

(declare-fun m!4991107 () Bool)

(assert (=> b!4367957 m!4991107))

(assert (=> d!1292959 d!1293063))

(declare-fun d!1293065 () Bool)

(declare-fun e!2718487 () Bool)

(assert (=> d!1293065 e!2718487))

(declare-fun res!1797098 () Bool)

(assert (=> d!1293065 (=> (not res!1797098) (not e!2718487))))

(declare-fun lt!1579870 () ListLongMap!1733)

(assert (=> d!1293065 (= res!1797098 (contains!11367 lt!1579870 (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun lt!1579871 () List!49205)

(assert (=> d!1293065 (= lt!1579870 (ListLongMap!1734 lt!1579871))))

(declare-fun lt!1579869 () Unit!73210)

(declare-fun lt!1579868 () Unit!73210)

(assert (=> d!1293065 (= lt!1579869 lt!1579868)))

(assert (=> d!1293065 (= (getValueByKey!507 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200))) (Some!10520 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (=> d!1293065 (= lt!1579868 (lemmaContainsTupThenGetReturnValue!273 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (=> d!1293065 (= lt!1579871 (insertStrictlySorted!158 (toList!3083 lm!1707) (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (=> d!1293065 (= (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)) lt!1579870)))

(declare-fun b!4367958 () Bool)

(declare-fun res!1797097 () Bool)

(assert (=> b!4367958 (=> (not res!1797097) (not e!2718487))))

(assert (=> b!4367958 (= res!1797097 (= (getValueByKey!507 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200))) (Some!10520 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun b!4367959 () Bool)

(assert (=> b!4367959 (= e!2718487 (contains!11366 (toList!3083 lt!1579870) (tuple2!48573 hash!377 newBucket!200)))))

(assert (= (and d!1293065 res!1797098) b!4367958))

(assert (= (and b!4367958 res!1797097) b!4367959))

(declare-fun m!4991109 () Bool)

(assert (=> d!1293065 m!4991109))

(declare-fun m!4991111 () Bool)

(assert (=> d!1293065 m!4991111))

(declare-fun m!4991113 () Bool)

(assert (=> d!1293065 m!4991113))

(declare-fun m!4991115 () Bool)

(assert (=> d!1293065 m!4991115))

(declare-fun m!4991117 () Bool)

(assert (=> b!4367958 m!4991117))

(declare-fun m!4991119 () Bool)

(assert (=> b!4367959 m!4991119))

(assert (=> d!1292959 d!1293065))

(declare-fun d!1293067 () Bool)

(assert (=> d!1293067 (forall!9218 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))) lambda!143082)))

(assert (=> d!1293067 true))

(declare-fun _$31!253 () Unit!73210)

(assert (=> d!1293067 (= (choose!27161 lm!1707 lambda!143082 hash!377 newBucket!200) _$31!253)))

(declare-fun bs!637465 () Bool)

(assert (= bs!637465 d!1293067))

(assert (=> bs!637465 m!4990867))

(assert (=> bs!637465 m!4990869))

(assert (=> d!1292959 d!1293067))

(assert (=> d!1292959 d!1292921))

(assert (=> b!4367760 d!1293025))

(assert (=> b!4367760 d!1293027))

(declare-fun d!1293069 () Bool)

(declare-fun res!1797099 () Bool)

(declare-fun e!2718488 () Bool)

(assert (=> d!1293069 (=> res!1797099 e!2718488)))

(assert (=> d!1293069 (= res!1797099 (not (is-Cons!49080 (_2!27580 lt!1579696))))))

(assert (=> d!1293069 (= (noDuplicateKeys!550 (_2!27580 lt!1579696)) e!2718488)))

(declare-fun b!4367961 () Bool)

(declare-fun e!2718489 () Bool)

(assert (=> b!4367961 (= e!2718488 e!2718489)))

(declare-fun res!1797100 () Bool)

(assert (=> b!4367961 (=> (not res!1797100) (not e!2718489))))

(assert (=> b!4367961 (= res!1797100 (not (containsKey!793 (t!356124 (_2!27580 lt!1579696)) (_1!27579 (h!54659 (_2!27580 lt!1579696))))))))

(declare-fun b!4367962 () Bool)

(assert (=> b!4367962 (= e!2718489 (noDuplicateKeys!550 (t!356124 (_2!27580 lt!1579696))))))

(assert (= (and d!1293069 (not res!1797099)) b!4367961))

(assert (= (and b!4367961 res!1797100) b!4367962))

(declare-fun m!4991121 () Bool)

(assert (=> b!4367961 m!4991121))

(declare-fun m!4991123 () Bool)

(assert (=> b!4367962 m!4991123))

(assert (=> bs!637447 d!1293069))

(declare-fun d!1293071 () Bool)

(declare-fun res!1797101 () Bool)

(declare-fun e!2718490 () Bool)

(assert (=> d!1293071 (=> res!1797101 e!2718490)))

(assert (=> d!1293071 (= res!1797101 (and (is-Cons!49080 lt!1579738) (= (_1!27579 (h!54659 lt!1579738)) key!3918)))))

(assert (=> d!1293071 (= (containsKey!793 lt!1579738 key!3918) e!2718490)))

(declare-fun b!4367963 () Bool)

(declare-fun e!2718491 () Bool)

(assert (=> b!4367963 (= e!2718490 e!2718491)))

(declare-fun res!1797102 () Bool)

(assert (=> b!4367963 (=> (not res!1797102) (not e!2718491))))

(assert (=> b!4367963 (= res!1797102 (is-Cons!49080 lt!1579738))))

(declare-fun b!4367964 () Bool)

(assert (=> b!4367964 (= e!2718491 (containsKey!793 (t!356124 lt!1579738) key!3918))))

(assert (= (and d!1293071 (not res!1797101)) b!4367963))

(assert (= (and b!4367963 res!1797102) b!4367964))

(declare-fun m!4991125 () Bool)

(assert (=> b!4367964 m!4991125))

(assert (=> d!1292935 d!1293071))

(declare-fun d!1293073 () Bool)

(declare-fun res!1797103 () Bool)

(declare-fun e!2718492 () Bool)

(assert (=> d!1293073 (=> res!1797103 e!2718492)))

(assert (=> d!1293073 (= res!1797103 (not (is-Cons!49080 lt!1579694)))))

(assert (=> d!1293073 (= (noDuplicateKeys!550 lt!1579694) e!2718492)))

(declare-fun b!4367965 () Bool)

(declare-fun e!2718493 () Bool)

(assert (=> b!4367965 (= e!2718492 e!2718493)))

(declare-fun res!1797104 () Bool)

(assert (=> b!4367965 (=> (not res!1797104) (not e!2718493))))

(assert (=> b!4367965 (= res!1797104 (not (containsKey!793 (t!356124 lt!1579694) (_1!27579 (h!54659 lt!1579694)))))))

(declare-fun b!4367966 () Bool)

(assert (=> b!4367966 (= e!2718493 (noDuplicateKeys!550 (t!356124 lt!1579694)))))

(assert (= (and d!1293073 (not res!1797103)) b!4367965))

(assert (= (and b!4367965 res!1797104) b!4367966))

(declare-fun m!4991127 () Bool)

(assert (=> b!4367965 m!4991127))

(assert (=> b!4367966 m!4991069))

(assert (=> d!1292935 d!1293073))

(assert (=> b!4367685 d!1292941))

(declare-fun bs!637466 () Bool)

(declare-fun b!4367977 () Bool)

(assert (= bs!637466 (and b!4367977 d!1292947)))

(declare-fun lambda!143146 () Int)

(assert (=> bs!637466 (not (= lambda!143146 lambda!143099))))

(assert (=> b!4367977 true))

(declare-fun bs!637467 () Bool)

(declare-fun b!4367978 () Bool)

(assert (= bs!637467 (and b!4367978 d!1292947)))

(declare-fun lambda!143147 () Int)

(assert (=> bs!637467 (not (= lambda!143147 lambda!143099))))

(declare-fun bs!637468 () Bool)

(assert (= bs!637468 (and b!4367978 b!4367977)))

(assert (=> bs!637468 (= lambda!143147 lambda!143146)))

(assert (=> b!4367978 true))

(declare-fun lambda!143148 () Int)

(assert (=> bs!637467 (not (= lambda!143148 lambda!143099))))

(declare-fun lt!1579928 () ListMap!2327)

(assert (=> bs!637468 (= (= lt!1579928 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143148 lambda!143146))))

(assert (=> b!4367978 (= (= lt!1579928 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143148 lambda!143147))))

(assert (=> b!4367978 true))

(declare-fun bs!637469 () Bool)

(declare-fun d!1293075 () Bool)

(assert (= bs!637469 (and d!1293075 d!1292947)))

(declare-fun lambda!143149 () Int)

(assert (=> bs!637469 (not (= lambda!143149 lambda!143099))))

(declare-fun bs!637470 () Bool)

(assert (= bs!637470 (and d!1293075 b!4367977)))

(declare-fun lt!1579933 () ListMap!2327)

(assert (=> bs!637470 (= (= lt!1579933 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143149 lambda!143146))))

(declare-fun bs!637471 () Bool)

(assert (= bs!637471 (and d!1293075 b!4367978)))

(assert (=> bs!637471 (= (= lt!1579933 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143149 lambda!143147))))

(assert (=> bs!637471 (= (= lt!1579933 lt!1579928) (= lambda!143149 lambda!143148))))

(assert (=> d!1293075 true))

(declare-fun e!2718501 () ListMap!2327)

(assert (=> b!4367977 (= e!2718501 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))

(declare-fun lt!1579920 () Unit!73210)

(declare-fun call!303579 () Unit!73210)

(assert (=> b!4367977 (= lt!1579920 call!303579)))

(declare-fun call!303578 () Bool)

(assert (=> b!4367977 call!303578))

(declare-fun lt!1579932 () Unit!73210)

(assert (=> b!4367977 (= lt!1579932 lt!1579920)))

(declare-fun call!303580 () Bool)

(assert (=> b!4367977 call!303580))

(declare-fun lt!1579929 () Unit!73210)

(declare-fun Unit!73220 () Unit!73210)

(assert (=> b!4367977 (= lt!1579929 Unit!73220)))

(declare-fun bm!303573 () Bool)

(declare-fun c!742618 () Bool)

(assert (=> bm!303573 (= call!303578 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (ite c!742618 lambda!143146 lambda!143147)))))

(declare-fun bm!303574 () Bool)

(assert (=> bm!303574 (= call!303580 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (ite c!742618 lambda!143146 lambda!143148)))))

(declare-fun bm!303575 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!86 (ListMap!2327) Unit!73210)

(assert (=> bm!303575 (= call!303579 (lemmaContainsAllItsOwnKeys!86 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun e!2718502 () Bool)

(assert (=> d!1293075 e!2718502))

(declare-fun res!1797111 () Bool)

(assert (=> d!1293075 (=> (not res!1797111) (not e!2718502))))

(assert (=> d!1293075 (= res!1797111 (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143149))))

(assert (=> d!1293075 (= lt!1579933 e!2718501)))

(assert (=> d!1293075 (= c!742618 (is-Nil!49080 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(assert (=> d!1293075 (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lm!1707))))))

(assert (=> d!1293075 (= (addToMapMapFromBucket!231 (_2!27580 (h!54660 (toList!3083 lm!1707))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lt!1579933)))

(assert (=> b!4367978 (= e!2718501 lt!1579928)))

(declare-fun lt!1579921 () ListMap!2327)

(declare-fun +!735 (ListMap!2327 tuple2!48570) ListMap!2327)

(assert (=> b!4367978 (= lt!1579921 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> b!4367978 (= lt!1579928 (addToMapMapFromBucket!231 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1579922 () Unit!73210)

(assert (=> b!4367978 (= lt!1579922 call!303579)))

(assert (=> b!4367978 call!303578))

(declare-fun lt!1579915 () Unit!73210)

(assert (=> b!4367978 (= lt!1579915 lt!1579922)))

(assert (=> b!4367978 (forall!9220 (toList!3084 lt!1579921) lambda!143148)))

(declare-fun lt!1579931 () Unit!73210)

(declare-fun Unit!73221 () Unit!73210)

(assert (=> b!4367978 (= lt!1579931 Unit!73221)))

(assert (=> b!4367978 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143148)))

(declare-fun lt!1579923 () Unit!73210)

(declare-fun Unit!73222 () Unit!73210)

(assert (=> b!4367978 (= lt!1579923 Unit!73222)))

(declare-fun lt!1579927 () Unit!73210)

(declare-fun Unit!73223 () Unit!73210)

(assert (=> b!4367978 (= lt!1579927 Unit!73223)))

(declare-fun lt!1579934 () Unit!73210)

(declare-fun forallContained!1858 (List!49204 Int tuple2!48570) Unit!73210)

(assert (=> b!4367978 (= lt!1579934 (forallContained!1858 (toList!3084 lt!1579921) lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> b!4367978 (contains!11368 lt!1579921 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun lt!1579924 () Unit!73210)

(declare-fun Unit!73224 () Unit!73210)

(assert (=> b!4367978 (= lt!1579924 Unit!73224)))

(assert (=> b!4367978 (contains!11368 lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun lt!1579917 () Unit!73210)

(declare-fun Unit!73225 () Unit!73210)

(assert (=> b!4367978 (= lt!1579917 Unit!73225)))

(assert (=> b!4367978 (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143148)))

(declare-fun lt!1579916 () Unit!73210)

(declare-fun Unit!73226 () Unit!73210)

(assert (=> b!4367978 (= lt!1579916 Unit!73226)))

(assert (=> b!4367978 (forall!9220 (toList!3084 lt!1579921) lambda!143148)))

(declare-fun lt!1579919 () Unit!73210)

(declare-fun Unit!73227 () Unit!73210)

(assert (=> b!4367978 (= lt!1579919 Unit!73227)))

(declare-fun lt!1579918 () Unit!73210)

(declare-fun Unit!73228 () Unit!73210)

(assert (=> b!4367978 (= lt!1579918 Unit!73228)))

(declare-fun lt!1579930 () Unit!73210)

(declare-fun addForallContainsKeyThenBeforeAdding!86 (ListMap!2327 ListMap!2327 K!10443 V!10689) Unit!73210)

(assert (=> b!4367978 (= lt!1579930 (addForallContainsKeyThenBeforeAdding!86 (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> b!4367978 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143148)))

(declare-fun lt!1579914 () Unit!73210)

(assert (=> b!4367978 (= lt!1579914 lt!1579930)))

(assert (=> b!4367978 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143148)))

(declare-fun lt!1579925 () Unit!73210)

(declare-fun Unit!73229 () Unit!73210)

(assert (=> b!4367978 (= lt!1579925 Unit!73229)))

(declare-fun res!1797112 () Bool)

(assert (=> b!4367978 (= res!1797112 (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143148))))

(declare-fun e!2718500 () Bool)

(assert (=> b!4367978 (=> (not res!1797112) (not e!2718500))))

(assert (=> b!4367978 e!2718500))

(declare-fun lt!1579926 () Unit!73210)

(declare-fun Unit!73230 () Unit!73210)

(assert (=> b!4367978 (= lt!1579926 Unit!73230)))

(declare-fun b!4367979 () Bool)

(declare-fun res!1797113 () Bool)

(assert (=> b!4367979 (=> (not res!1797113) (not e!2718502))))

(assert (=> b!4367979 (= res!1797113 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143149))))

(declare-fun b!4367980 () Bool)

(assert (=> b!4367980 (= e!2718500 call!303580)))

(declare-fun b!4367981 () Bool)

(assert (=> b!4367981 (= e!2718502 (invariantList!704 (toList!3084 lt!1579933)))))

(assert (= (and d!1293075 c!742618) b!4367977))

(assert (= (and d!1293075 (not c!742618)) b!4367978))

(assert (= (and b!4367978 res!1797112) b!4367980))

(assert (= (or b!4367977 b!4367978) bm!303575))

(assert (= (or b!4367977 b!4367978) bm!303573))

(assert (= (or b!4367977 b!4367980) bm!303574))

(assert (= (and d!1293075 res!1797111) b!4367979))

(assert (= (and b!4367979 res!1797113) b!4367981))

(assert (=> bm!303575 m!4990923))

(declare-fun m!4991129 () Bool)

(assert (=> bm!303575 m!4991129))

(declare-fun m!4991131 () Bool)

(assert (=> bm!303573 m!4991131))

(declare-fun m!4991133 () Bool)

(assert (=> d!1293075 m!4991133))

(assert (=> d!1293075 m!4990931))

(declare-fun m!4991135 () Bool)

(assert (=> b!4367979 m!4991135))

(declare-fun m!4991137 () Bool)

(assert (=> b!4367978 m!4991137))

(declare-fun m!4991139 () Bool)

(assert (=> b!4367978 m!4991139))

(declare-fun m!4991141 () Bool)

(assert (=> b!4367978 m!4991141))

(declare-fun m!4991143 () Bool)

(assert (=> b!4367978 m!4991143))

(assert (=> b!4367978 m!4990923))

(declare-fun m!4991145 () Bool)

(assert (=> b!4367978 m!4991145))

(declare-fun m!4991147 () Bool)

(assert (=> b!4367978 m!4991147))

(declare-fun m!4991149 () Bool)

(assert (=> b!4367978 m!4991149))

(assert (=> b!4367978 m!4991149))

(declare-fun m!4991151 () Bool)

(assert (=> b!4367978 m!4991151))

(assert (=> b!4367978 m!4991151))

(assert (=> b!4367978 m!4990923))

(declare-fun m!4991153 () Bool)

(assert (=> b!4367978 m!4991153))

(assert (=> b!4367978 m!4991145))

(declare-fun m!4991155 () Bool)

(assert (=> b!4367978 m!4991155))

(assert (=> b!4367978 m!4991141))

(declare-fun m!4991157 () Bool)

(assert (=> b!4367981 m!4991157))

(declare-fun m!4991159 () Bool)

(assert (=> bm!303574 m!4991159))

(assert (=> b!4367768 d!1293075))

(declare-fun bs!637472 () Bool)

(declare-fun d!1293077 () Bool)

(assert (= bs!637472 (and d!1293077 start!423810)))

(declare-fun lambda!143150 () Int)

(assert (=> bs!637472 (= lambda!143150 lambda!143082)))

(declare-fun bs!637473 () Bool)

(assert (= bs!637473 (and d!1293077 d!1292927)))

(assert (=> bs!637473 (not (= lambda!143150 lambda!143096))))

(declare-fun bs!637474 () Bool)

(assert (= bs!637474 (and d!1293077 d!1292969)))

(assert (=> bs!637474 (= lambda!143150 lambda!143105)))

(declare-fun lt!1579935 () ListMap!2327)

(assert (=> d!1293077 (invariantList!704 (toList!3084 lt!1579935))))

(declare-fun e!2718503 () ListMap!2327)

(assert (=> d!1293077 (= lt!1579935 e!2718503)))

(declare-fun c!742619 () Bool)

(assert (=> d!1293077 (= c!742619 (is-Cons!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293077 (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143150)))

(assert (=> d!1293077 (= (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579935)))

(declare-fun b!4367984 () Bool)

(assert (=> b!4367984 (= e!2718503 (addToMapMapFromBucket!231 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun b!4367985 () Bool)

(assert (=> b!4367985 (= e!2718503 (ListMap!2328 Nil!49080))))

(assert (= (and d!1293077 c!742619) b!4367984))

(assert (= (and d!1293077 (not c!742619)) b!4367985))

(declare-fun m!4991161 () Bool)

(assert (=> d!1293077 m!4991161))

(declare-fun m!4991163 () Bool)

(assert (=> d!1293077 m!4991163))

(declare-fun m!4991165 () Bool)

(assert (=> b!4367984 m!4991165))

(assert (=> b!4367984 m!4991165))

(declare-fun m!4991167 () Bool)

(assert (=> b!4367984 m!4991167))

(assert (=> b!4367768 d!1293077))

(declare-fun bs!637475 () Bool)

(declare-fun b!4368011 () Bool)

(assert (= bs!637475 (and b!4368011 b!4367882)))

(declare-fun lambda!143159 () Int)

(assert (=> bs!637475 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143159 lambda!143116))))

(assert (=> b!4368011 true))

(declare-fun bs!637476 () Bool)

(declare-fun b!4368007 () Bool)

(assert (= bs!637476 (and b!4368007 b!4367882)))

(declare-fun lambda!143160 () Int)

(assert (=> bs!637476 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143160 lambda!143116))))

(declare-fun bs!637477 () Bool)

(assert (= bs!637477 (and b!4368007 b!4368011)))

(assert (=> bs!637477 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143160 lambda!143159))))

(assert (=> b!4368007 true))

(declare-fun bs!637478 () Bool)

(declare-fun b!4368009 () Bool)

(assert (= bs!637478 (and b!4368009 b!4367882)))

(declare-fun lambda!143161 () Int)

(assert (=> bs!637478 (= lambda!143161 lambda!143116)))

(declare-fun bs!637479 () Bool)

(assert (= bs!637479 (and b!4368009 b!4368011)))

(assert (=> bs!637479 (= (= (toList!3084 (extractMap!609 (toList!3083 lm!1707))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143161 lambda!143159))))

(declare-fun bs!637480 () Bool)

(assert (= bs!637480 (and b!4368009 b!4368007)))

(assert (=> bs!637480 (= (= (toList!3084 (extractMap!609 (toList!3083 lm!1707))) (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143161 lambda!143160))))

(assert (=> b!4368009 true))

(declare-fun bs!637481 () Bool)

(declare-fun b!4368004 () Bool)

(assert (= bs!637481 (and b!4368004 b!4367883)))

(declare-fun lambda!143162 () Int)

(assert (=> bs!637481 (= lambda!143162 lambda!143117)))

(declare-fun lt!1579955 () List!49208)

(declare-fun e!2718514 () Bool)

(assert (=> b!4368004 (= e!2718514 (= (content!7779 lt!1579955) (content!7779 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162))))))

(declare-fun b!4368005 () Bool)

(assert (=> b!4368005 false))

(declare-fun e!2718515 () Unit!73210)

(declare-fun Unit!73231 () Unit!73210)

(assert (=> b!4368005 (= e!2718515 Unit!73231)))

(declare-fun b!4368006 () Bool)

(declare-fun e!2718512 () List!49208)

(assert (=> b!4368006 (= e!2718512 Nil!49084)))

(assert (=> b!4368007 (= e!2718512 (Cons!49084 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun c!742628 () Bool)

(assert (=> b!4368007 (= c!742628 (containsKey!794 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun lt!1579952 () Unit!73210)

(assert (=> b!4368007 (= lt!1579952 e!2718515)))

(declare-fun c!742627 () Bool)

(assert (=> b!4368007 (= c!742627 (contains!11372 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun lt!1579951 () Unit!73210)

(declare-fun e!2718513 () Unit!73210)

(assert (=> b!4368007 (= lt!1579951 e!2718513)))

(declare-fun lt!1579953 () List!49208)

(assert (=> b!4368007 (= lt!1579953 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun lt!1579954 () Unit!73210)

(declare-fun lemmaForallContainsAddHeadPreserves!35 (List!49204 List!49208 tuple2!48570) Unit!73210)

(assert (=> b!4368007 (= lt!1579954 (lemmaForallContainsAddHeadPreserves!35 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lt!1579953 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> b!4368007 (forall!9222 lt!1579953 lambda!143160)))

(declare-fun lt!1579956 () Unit!73210)

(assert (=> b!4368007 (= lt!1579956 lt!1579954)))

(declare-fun d!1293079 () Bool)

(assert (=> d!1293079 e!2718514))

(declare-fun res!1797121 () Bool)

(assert (=> d!1293079 (=> (not res!1797121) (not e!2718514))))

(assert (=> d!1293079 (= res!1797121 (noDuplicate!613 lt!1579955))))

(assert (=> d!1293079 (= lt!1579955 e!2718512)))

(declare-fun c!742626 () Bool)

(assert (=> d!1293079 (= c!742626 (is-Cons!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293079 (invariantList!704 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))

(assert (=> d!1293079 (= (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lt!1579955)))

(declare-fun b!4368008 () Bool)

(declare-fun Unit!73232 () Unit!73210)

(assert (=> b!4368008 (= e!2718515 Unit!73232)))

(declare-fun res!1797122 () Bool)

(assert (=> b!4368009 (=> (not res!1797122) (not e!2718514))))

(assert (=> b!4368009 (= res!1797122 (forall!9222 lt!1579955 lambda!143161))))

(declare-fun b!4368010 () Bool)

(declare-fun Unit!73233 () Unit!73210)

(assert (=> b!4368010 (= e!2718513 Unit!73233)))

(assert (=> b!4368011 false))

(declare-fun lt!1579950 () Unit!73210)

(declare-fun forallContained!1859 (List!49208 Int K!10443) Unit!73210)

(assert (=> b!4368011 (= lt!1579950 (forallContained!1859 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lambda!143159 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun Unit!73234 () Unit!73210)

(assert (=> b!4368011 (= e!2718513 Unit!73234)))

(declare-fun b!4368012 () Bool)

(declare-fun res!1797120 () Bool)

(assert (=> b!4368012 (=> (not res!1797120) (not e!2718514))))

(assert (=> b!4368012 (= res!1797120 (= (length!82 lt!1579955) (length!83 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (= (and d!1293079 c!742626) b!4368007))

(assert (= (and d!1293079 (not c!742626)) b!4368006))

(assert (= (and b!4368007 c!742628) b!4368005))

(assert (= (and b!4368007 (not c!742628)) b!4368008))

(assert (= (and b!4368007 c!742627) b!4368011))

(assert (= (and b!4368007 (not c!742627)) b!4368010))

(assert (= (and d!1293079 res!1797121) b!4368012))

(assert (= (and b!4368012 res!1797120) b!4368009))

(assert (= (and b!4368009 res!1797122) b!4368004))

(declare-fun m!4991169 () Bool)

(assert (=> b!4368007 m!4991169))

(declare-fun m!4991171 () Bool)

(assert (=> b!4368007 m!4991171))

(declare-fun m!4991173 () Bool)

(assert (=> b!4368007 m!4991173))

(declare-fun m!4991175 () Bool)

(assert (=> b!4368007 m!4991175))

(assert (=> b!4368007 m!4991169))

(declare-fun m!4991177 () Bool)

(assert (=> b!4368007 m!4991177))

(assert (=> b!4368011 m!4991169))

(assert (=> b!4368011 m!4991169))

(declare-fun m!4991179 () Bool)

(assert (=> b!4368011 m!4991179))

(declare-fun m!4991181 () Bool)

(assert (=> d!1293079 m!4991181))

(assert (=> d!1293079 m!4991043))

(declare-fun m!4991183 () Bool)

(assert (=> b!4368012 m!4991183))

(assert (=> b!4368012 m!4991027))

(declare-fun m!4991185 () Bool)

(assert (=> b!4368009 m!4991185))

(declare-fun m!4991187 () Bool)

(assert (=> b!4368004 m!4991187))

(declare-fun m!4991189 () Bool)

(assert (=> b!4368004 m!4991189))

(assert (=> b!4368004 m!4991189))

(declare-fun m!4991191 () Bool)

(assert (=> b!4368004 m!4991191))

(assert (=> b!4367756 d!1293079))

(declare-fun d!1293081 () Bool)

(declare-fun lt!1579957 () Bool)

(assert (=> d!1293081 (= lt!1579957 (set.member key!3918 (content!7779 e!2718346)))))

(declare-fun e!2718517 () Bool)

(assert (=> d!1293081 (= lt!1579957 e!2718517)))

(declare-fun res!1797123 () Bool)

(assert (=> d!1293081 (=> (not res!1797123) (not e!2718517))))

(assert (=> d!1293081 (= res!1797123 (is-Cons!49084 e!2718346))))

(assert (=> d!1293081 (= (contains!11372 e!2718346 key!3918) lt!1579957)))

(declare-fun b!4368015 () Bool)

(declare-fun e!2718516 () Bool)

(assert (=> b!4368015 (= e!2718517 e!2718516)))

(declare-fun res!1797124 () Bool)

(assert (=> b!4368015 (=> res!1797124 e!2718516)))

(assert (=> b!4368015 (= res!1797124 (= (h!54665 e!2718346) key!3918))))

(declare-fun b!4368016 () Bool)

(assert (=> b!4368016 (= e!2718516 (contains!11372 (t!356128 e!2718346) key!3918))))

(assert (= (and d!1293081 res!1797123) b!4368015))

(assert (= (and b!4368015 (not res!1797124)) b!4368016))

(declare-fun m!4991193 () Bool)

(assert (=> d!1293081 m!4991193))

(declare-fun m!4991195 () Bool)

(assert (=> d!1293081 m!4991195))

(declare-fun m!4991197 () Bool)

(assert (=> b!4368016 m!4991197))

(assert (=> bm!303563 d!1293081))

(assert (=> b!4367664 d!1293061))

(assert (=> b!4367759 d!1293057))

(declare-fun d!1293083 () Bool)

(assert (=> d!1293083 (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)))

(declare-fun lt!1579960 () Unit!73210)

(declare-fun choose!27168 (List!49204 K!10443) Unit!73210)

(assert (=> d!1293083 (= lt!1579960 (choose!27168 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(assert (=> d!1293083 (invariantList!704 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))

(assert (=> d!1293083 (= (lemmaInGetKeysListThenContainsKey!150 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) lt!1579960)))

(declare-fun bs!637482 () Bool)

(assert (= bs!637482 d!1293083))

(assert (=> bs!637482 m!4990889))

(declare-fun m!4991199 () Bool)

(assert (=> bs!637482 m!4991199))

(assert (=> bs!637482 m!4991043))

(assert (=> b!4367759 d!1293083))

(declare-fun d!1293085 () Bool)

(declare-fun lt!1579961 () Bool)

(assert (=> d!1293085 (= lt!1579961 (set.member lt!1579696 (content!7777 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun e!2718519 () Bool)

(assert (=> d!1293085 (= lt!1579961 e!2718519)))

(declare-fun res!1797125 () Bool)

(assert (=> d!1293085 (=> (not res!1797125) (not e!2718519))))

(assert (=> d!1293085 (= res!1797125 (is-Cons!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293085 (= (contains!11366 (t!356125 (toList!3083 lm!1707)) lt!1579696) lt!1579961)))

(declare-fun b!4368017 () Bool)

(declare-fun e!2718518 () Bool)

(assert (=> b!4368017 (= e!2718519 e!2718518)))

(declare-fun res!1797126 () Bool)

(assert (=> b!4368017 (=> res!1797126 e!2718518)))

(assert (=> b!4368017 (= res!1797126 (= (h!54660 (t!356125 (toList!3083 lm!1707))) lt!1579696))))

(declare-fun b!4368018 () Bool)

(assert (=> b!4368018 (= e!2718518 (contains!11366 (t!356125 (t!356125 (toList!3083 lm!1707))) lt!1579696))))

(assert (= (and d!1293085 res!1797125) b!4368017))

(assert (= (and b!4368017 (not res!1797126)) b!4368018))

(assert (=> d!1293085 m!4991005))

(declare-fun m!4991201 () Bool)

(assert (=> d!1293085 m!4991201))

(declare-fun m!4991203 () Bool)

(assert (=> b!4368018 m!4991203))

(assert (=> b!4367695 d!1293085))

(declare-fun d!1293087 () Bool)

(assert (=> d!1293087 (= (get!15952 (getValueByKey!507 (toList!3083 lm!1707) hash!377)) (v!43470 (getValueByKey!507 (toList!3083 lm!1707) hash!377)))))

(assert (=> d!1292929 d!1293087))

(assert (=> d!1292929 d!1293061))

(assert (=> b!4367757 d!1293013))

(assert (=> b!4367757 d!1293015))

(declare-fun d!1293089 () Bool)

(declare-fun res!1797127 () Bool)

(declare-fun e!2718520 () Bool)

(assert (=> d!1293089 (=> res!1797127 e!2718520)))

(assert (=> d!1293089 (= res!1797127 (not (is-Cons!49080 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> d!1293089 (= (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lm!1707)))) e!2718520)))

(declare-fun b!4368019 () Bool)

(declare-fun e!2718521 () Bool)

(assert (=> b!4368019 (= e!2718520 e!2718521)))

(declare-fun res!1797128 () Bool)

(assert (=> b!4368019 (=> (not res!1797128) (not e!2718521))))

(assert (=> b!4368019 (= res!1797128 (not (containsKey!793 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368020 () Bool)

(assert (=> b!4368020 (= e!2718521 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (= (and d!1293089 (not res!1797127)) b!4368019))

(assert (= (and b!4368019 res!1797128) b!4368020))

(declare-fun m!4991205 () Bool)

(assert (=> b!4368019 m!4991205))

(declare-fun m!4991207 () Bool)

(assert (=> b!4368020 m!4991207))

(assert (=> bs!637446 d!1293089))

(declare-fun d!1293091 () Bool)

(assert (=> d!1293091 (isDefined!7815 (getValueByKey!507 (toList!3083 lm!1707) hash!377))))

(declare-fun lt!1579964 () Unit!73210)

(declare-fun choose!27169 (List!49205 (_ BitVec 64)) Unit!73210)

(assert (=> d!1293091 (= lt!1579964 (choose!27169 (toList!3083 lm!1707) hash!377))))

(declare-fun e!2718524 () Bool)

(assert (=> d!1293091 e!2718524))

(declare-fun res!1797131 () Bool)

(assert (=> d!1293091 (=> (not res!1797131) (not e!2718524))))

(assert (=> d!1293091 (= res!1797131 (isStrictlySorted!131 (toList!3083 lm!1707)))))

(assert (=> d!1293091 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!3083 lm!1707) hash!377) lt!1579964)))

(declare-fun b!4368023 () Bool)

(assert (=> b!4368023 (= e!2718524 (containsKey!792 (toList!3083 lm!1707) hash!377))))

(assert (= (and d!1293091 res!1797131) b!4368023))

(assert (=> d!1293091 m!4990801))

(assert (=> d!1293091 m!4990801))

(assert (=> d!1293091 m!4990803))

(declare-fun m!4991209 () Bool)

(assert (=> d!1293091 m!4991209))

(assert (=> d!1293091 m!4990795))

(assert (=> b!4368023 m!4990797))

(assert (=> b!4367653 d!1293091))

(assert (=> b!4367653 d!1293059))

(assert (=> b!4367653 d!1293061))

(declare-fun d!1293093 () Bool)

(declare-fun e!2718525 () Bool)

(assert (=> d!1293093 e!2718525))

(declare-fun res!1797132 () Bool)

(assert (=> d!1293093 (=> res!1797132 e!2718525)))

(declare-fun lt!1579968 () Bool)

(assert (=> d!1293093 (= res!1797132 (not lt!1579968))))

(declare-fun lt!1579967 () Bool)

(assert (=> d!1293093 (= lt!1579968 lt!1579967)))

(declare-fun lt!1579965 () Unit!73210)

(declare-fun e!2718526 () Unit!73210)

(assert (=> d!1293093 (= lt!1579965 e!2718526)))

(declare-fun c!742629 () Bool)

(assert (=> d!1293093 (= c!742629 lt!1579967)))

(assert (=> d!1293093 (= lt!1579967 (containsKey!792 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(assert (=> d!1293093 (= (contains!11367 lt!1579755 (_1!27580 lt!1579698)) lt!1579968)))

(declare-fun b!4368024 () Bool)

(declare-fun lt!1579966 () Unit!73210)

(assert (=> b!4368024 (= e!2718526 lt!1579966)))

(assert (=> b!4368024 (= lt!1579966 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(assert (=> b!4368024 (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(declare-fun b!4368025 () Bool)

(declare-fun Unit!73235 () Unit!73210)

(assert (=> b!4368025 (= e!2718526 Unit!73235)))

(declare-fun b!4368026 () Bool)

(assert (=> b!4368026 (= e!2718525 (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698))))))

(assert (= (and d!1293093 c!742629) b!4368024))

(assert (= (and d!1293093 (not c!742629)) b!4368025))

(assert (= (and d!1293093 (not res!1797132)) b!4368026))

(declare-fun m!4991211 () Bool)

(assert (=> d!1293093 m!4991211))

(declare-fun m!4991213 () Bool)

(assert (=> b!4368024 m!4991213))

(assert (=> b!4368024 m!4990863))

(assert (=> b!4368024 m!4990863))

(declare-fun m!4991215 () Bool)

(assert (=> b!4368024 m!4991215))

(assert (=> b!4368026 m!4990863))

(assert (=> b!4368026 m!4990863))

(assert (=> b!4368026 m!4991215))

(assert (=> d!1292955 d!1293093))

(declare-fun d!1293095 () Bool)

(declare-fun c!742630 () Bool)

(assert (=> d!1293095 (= c!742630 (and (is-Cons!49081 lt!1579756) (= (_1!27580 (h!54660 lt!1579756)) (_1!27580 lt!1579698))))))

(declare-fun e!2718527 () Option!10521)

(assert (=> d!1293095 (= (getValueByKey!507 lt!1579756 (_1!27580 lt!1579698)) e!2718527)))

(declare-fun b!4368027 () Bool)

(assert (=> b!4368027 (= e!2718527 (Some!10520 (_2!27580 (h!54660 lt!1579756))))))

(declare-fun b!4368030 () Bool)

(declare-fun e!2718528 () Option!10521)

(assert (=> b!4368030 (= e!2718528 None!10520)))

(declare-fun b!4368028 () Bool)

(assert (=> b!4368028 (= e!2718527 e!2718528)))

(declare-fun c!742631 () Bool)

(assert (=> b!4368028 (= c!742631 (and (is-Cons!49081 lt!1579756) (not (= (_1!27580 (h!54660 lt!1579756)) (_1!27580 lt!1579698)))))))

(declare-fun b!4368029 () Bool)

(assert (=> b!4368029 (= e!2718528 (getValueByKey!507 (t!356125 lt!1579756) (_1!27580 lt!1579698)))))

(assert (= (and d!1293095 c!742630) b!4368027))

(assert (= (and d!1293095 (not c!742630)) b!4368028))

(assert (= (and b!4368028 c!742631) b!4368029))

(assert (= (and b!4368028 (not c!742631)) b!4368030))

(declare-fun m!4991217 () Bool)

(assert (=> b!4368029 m!4991217))

(assert (=> d!1292955 d!1293095))

(declare-fun d!1293099 () Bool)

(assert (=> d!1293099 (= (getValueByKey!507 lt!1579756 (_1!27580 lt!1579698)) (Some!10520 (_2!27580 lt!1579698)))))

(declare-fun lt!1579971 () Unit!73210)

(declare-fun choose!27170 (List!49205 (_ BitVec 64) List!49204) Unit!73210)

(assert (=> d!1293099 (= lt!1579971 (choose!27170 lt!1579756 (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))

(declare-fun e!2718531 () Bool)

(assert (=> d!1293099 e!2718531))

(declare-fun res!1797137 () Bool)

(assert (=> d!1293099 (=> (not res!1797137) (not e!2718531))))

(assert (=> d!1293099 (= res!1797137 (isStrictlySorted!131 lt!1579756))))

(assert (=> d!1293099 (= (lemmaContainsTupThenGetReturnValue!273 lt!1579756 (_1!27580 lt!1579698) (_2!27580 lt!1579698)) lt!1579971)))

(declare-fun b!4368035 () Bool)

(declare-fun res!1797138 () Bool)

(assert (=> b!4368035 (=> (not res!1797138) (not e!2718531))))

(assert (=> b!4368035 (= res!1797138 (containsKey!792 lt!1579756 (_1!27580 lt!1579698)))))

(declare-fun b!4368036 () Bool)

(assert (=> b!4368036 (= e!2718531 (contains!11366 lt!1579756 (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(assert (= (and d!1293099 res!1797137) b!4368035))

(assert (= (and b!4368035 res!1797138) b!4368036))

(assert (=> d!1293099 m!4990857))

(declare-fun m!4991221 () Bool)

(assert (=> d!1293099 m!4991221))

(declare-fun m!4991223 () Bool)

(assert (=> d!1293099 m!4991223))

(declare-fun m!4991225 () Bool)

(assert (=> b!4368035 m!4991225))

(declare-fun m!4991227 () Bool)

(assert (=> b!4368036 m!4991227))

(assert (=> d!1292955 d!1293099))

(declare-fun b!4368076 () Bool)

(declare-fun e!2718557 () List!49205)

(declare-fun call!303588 () List!49205)

(assert (=> b!4368076 (= e!2718557 call!303588)))

(declare-fun c!742649 () Bool)

(declare-fun e!2718558 () List!49205)

(declare-fun c!742647 () Bool)

(declare-fun b!4368077 () Bool)

(assert (=> b!4368077 (= e!2718558 (ite c!742647 (t!356125 (toList!3083 lm!1707)) (ite c!742649 (Cons!49081 (h!54660 (toList!3083 lm!1707)) (t!356125 (toList!3083 lm!1707))) Nil!49081)))))

(declare-fun b!4368078 () Bool)

(assert (=> b!4368078 (= e!2718557 call!303588)))

(declare-fun b!4368079 () Bool)

(declare-fun e!2718556 () List!49205)

(declare-fun call!303589 () List!49205)

(assert (=> b!4368079 (= e!2718556 call!303589)))

(declare-fun b!4368080 () Bool)

(assert (=> b!4368080 (= e!2718558 (insertStrictlySorted!158 (t!356125 (toList!3083 lm!1707)) (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))

(declare-fun bm!303583 () Bool)

(declare-fun call!303587 () List!49205)

(assert (=> bm!303583 (= call!303588 call!303587)))

(declare-fun b!4368081 () Bool)

(declare-fun e!2718555 () Bool)

(declare-fun lt!1579977 () List!49205)

(assert (=> b!4368081 (= e!2718555 (contains!11366 lt!1579977 (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(declare-fun b!4368082 () Bool)

(declare-fun e!2718559 () List!49205)

(assert (=> b!4368082 (= e!2718556 e!2718559)))

(assert (=> b!4368082 (= c!742647 (and (is-Cons!49081 (toList!3083 lm!1707)) (= (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 lt!1579698))))))

(declare-fun b!4368083 () Bool)

(declare-fun res!1797151 () Bool)

(assert (=> b!4368083 (=> (not res!1797151) (not e!2718555))))

(assert (=> b!4368083 (= res!1797151 (containsKey!792 lt!1579977 (_1!27580 lt!1579698)))))

(declare-fun b!4368084 () Bool)

(assert (=> b!4368084 (= e!2718559 call!303587)))

(declare-fun b!4368085 () Bool)

(assert (=> b!4368085 (= c!742649 (and (is-Cons!49081 (toList!3083 lm!1707)) (bvsgt (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 lt!1579698))))))

(assert (=> b!4368085 (= e!2718559 e!2718557)))

(declare-fun bm!303584 () Bool)

(assert (=> bm!303584 (= call!303587 call!303589)))

(declare-fun c!742646 () Bool)

(declare-fun bm!303582 () Bool)

(declare-fun $colon$colon!708 (List!49205 tuple2!48572) List!49205)

(assert (=> bm!303582 (= call!303589 ($colon$colon!708 e!2718558 (ite c!742646 (h!54660 (toList!3083 lm!1707)) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))))

(declare-fun c!742648 () Bool)

(assert (=> bm!303582 (= c!742648 c!742646)))

(declare-fun d!1293103 () Bool)

(assert (=> d!1293103 e!2718555))

(declare-fun res!1797150 () Bool)

(assert (=> d!1293103 (=> (not res!1797150) (not e!2718555))))

(assert (=> d!1293103 (= res!1797150 (isStrictlySorted!131 lt!1579977))))

(assert (=> d!1293103 (= lt!1579977 e!2718556)))

(assert (=> d!1293103 (= c!742646 (and (is-Cons!49081 (toList!3083 lm!1707)) (bvslt (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 lt!1579698))))))

(assert (=> d!1293103 (isStrictlySorted!131 (toList!3083 lm!1707))))

(assert (=> d!1293103 (= (insertStrictlySorted!158 (toList!3083 lm!1707) (_1!27580 lt!1579698) (_2!27580 lt!1579698)) lt!1579977)))

(assert (= (and d!1293103 c!742646) b!4368079))

(assert (= (and d!1293103 (not c!742646)) b!4368082))

(assert (= (and b!4368082 c!742647) b!4368084))

(assert (= (and b!4368082 (not c!742647)) b!4368085))

(assert (= (and b!4368085 c!742649) b!4368076))

(assert (= (and b!4368085 (not c!742649)) b!4368078))

(assert (= (or b!4368076 b!4368078) bm!303583))

(assert (= (or b!4368084 bm!303583) bm!303584))

(assert (= (or b!4368079 bm!303584) bm!303582))

(assert (= (and bm!303582 c!742648) b!4368080))

(assert (= (and bm!303582 (not c!742648)) b!4368077))

(assert (= (and d!1293103 res!1797150) b!4368083))

(assert (= (and b!4368083 res!1797151) b!4368081))

(declare-fun m!4991245 () Bool)

(assert (=> b!4368081 m!4991245))

(declare-fun m!4991247 () Bool)

(assert (=> b!4368080 m!4991247))

(declare-fun m!4991249 () Bool)

(assert (=> b!4368083 m!4991249))

(declare-fun m!4991253 () Bool)

(assert (=> bm!303582 m!4991253))

(declare-fun m!4991255 () Bool)

(assert (=> d!1293103 m!4991255))

(assert (=> d!1293103 m!4990795))

(assert (=> d!1292955 d!1293103))

(declare-fun e!2718563 () Bool)

(declare-fun b!4368089 () Bool)

(declare-fun tp!1330825 () Bool)

(assert (=> b!4368089 (= e!2718563 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330825))))

(assert (=> b!4367779 (= tp!1330815 e!2718563)))

(assert (= (and b!4367779 (is-Cons!49080 (t!356124 (t!356124 newBucket!200)))) b!4368089))

(declare-fun e!2718565 () Bool)

(declare-fun b!4368094 () Bool)

(declare-fun tp!1330826 () Bool)

(assert (=> b!4368094 (= e!2718565 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330826))))

(assert (=> b!4367774 (= tp!1330811 e!2718565)))

(assert (= (and b!4367774 (is-Cons!49080 (_2!27580 (h!54660 (toList!3083 lm!1707))))) b!4368094))

(declare-fun b!4368095 () Bool)

(declare-fun e!2718566 () Bool)

(declare-fun tp!1330827 () Bool)

(declare-fun tp!1330828 () Bool)

(assert (=> b!4368095 (= e!2718566 (and tp!1330827 tp!1330828))))

(assert (=> b!4367774 (= tp!1330812 e!2718566)))

(assert (= (and b!4367774 (is-Cons!49081 (t!356125 (toList!3083 lm!1707)))) b!4368095))

(declare-fun b_lambda!132619 () Bool)

(assert (= b_lambda!132605 (or d!1292947 b_lambda!132619)))

(declare-fun bs!637484 () Bool)

(declare-fun d!1293117 () Bool)

(assert (= bs!637484 (and d!1293117 d!1292947)))

(assert (=> bs!637484 (= (dynLambda!20678 lambda!143099 (h!54659 newBucket!200)) (= (hash!1699 hashF!1247 (_1!27579 (h!54659 newBucket!200))) hash!377))))

(declare-fun m!4991259 () Bool)

(assert (=> bs!637484 m!4991259))

(assert (=> b!4367908 d!1293117))

(declare-fun b_lambda!132621 () Bool)

(assert (= b_lambda!132613 (or d!1292969 b_lambda!132621)))

(declare-fun bs!637485 () Bool)

(declare-fun d!1293119 () Bool)

(assert (= bs!637485 (and d!1293119 d!1292969)))

(assert (=> bs!637485 (= (dynLambda!20676 lambda!143105 (h!54660 (toList!3083 lm!1707))) (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(assert (=> bs!637485 m!4990931))

(assert (=> b!4367938 d!1293119))

(declare-fun b_lambda!132623 () Bool)

(assert (= b_lambda!132603 (or start!423810 b_lambda!132623)))

(assert (=> d!1293017 d!1292979))

(declare-fun b_lambda!132625 () Bool)

(assert (= b_lambda!132609 (or start!423810 b_lambda!132625)))

(declare-fun bs!637486 () Bool)

(declare-fun d!1293121 () Bool)

(assert (= bs!637486 (and d!1293121 start!423810)))

(assert (=> bs!637486 (= (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 lt!1579697)))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697))))))))

(declare-fun m!4991261 () Bool)

(assert (=> bs!637486 m!4991261))

(assert (=> b!4367924 d!1293121))

(declare-fun b_lambda!132627 () Bool)

(assert (= b_lambda!132607 (or start!423810 b_lambda!132627)))

(declare-fun bs!637487 () Bool)

(declare-fun d!1293123 () Bool)

(assert (= bs!637487 (and d!1293123 start!423810)))

(assert (=> bs!637487 (= (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 lm!1707)))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun m!4991263 () Bool)

(assert (=> bs!637487 m!4991263))

(assert (=> b!4367910 d!1293123))

(declare-fun b_lambda!132629 () Bool)

(assert (= b_lambda!132615 (or start!423810 b_lambda!132629)))

(declare-fun bs!637488 () Bool)

(declare-fun d!1293125 () Bool)

(assert (= bs!637488 (and d!1293125 start!423810)))

(assert (=> bs!637488 (= (dynLambda!20676 lambda!143082 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))) (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))))))

(declare-fun m!4991265 () Bool)

(assert (=> bs!637488 m!4991265))

(assert (=> b!4367956 d!1293125))

(declare-fun b_lambda!132631 () Bool)

(assert (= b_lambda!132611 (or d!1292927 b_lambda!132631)))

(declare-fun bs!637489 () Bool)

(declare-fun d!1293127 () Bool)

(assert (= bs!637489 (and d!1293127 d!1292927)))

(assert (=> bs!637489 (= (dynLambda!20676 lambda!143096 (h!54660 (toList!3083 lm!1707))) (allKeysSameHash!508 (_2!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (h!54660 (toList!3083 lm!1707))) hashF!1247))))

(declare-fun m!4991267 () Bool)

(assert (=> bs!637489 m!4991267))

(assert (=> b!4367930 d!1293127))

(push 1)

(assert (not d!1293025))

(assert (not b!4368094))

(assert (not b_lambda!132587))

(assert (not b!4367964))

(assert (not b!4367858))

(assert (not b!4368026))

(assert (not b!4368012))

(assert (not b!4367883))

(assert (not b!4367933))

(assert (not bs!637485))

(assert (not d!1293085))

(assert (not d!1293091))

(assert (not b!4368019))

(assert (not b!4367939))

(assert (not d!1293075))

(assert (not d!1293021))

(assert (not b!4368081))

(assert (not d!1293077))

(assert (not d!1293015))

(assert (not d!1293051))

(assert (not b!4367984))

(assert (not b!4367954))

(assert (not d!1293039))

(assert (not b!4368023))

(assert (not b!4367881))

(assert (not bs!637487))

(assert (not b!4368024))

(assert tp_is_empty!25439)

(assert (not b!4367966))

(assert (not b!4367922))

(assert (not b!4367909))

(assert (not bm!303582))

(assert (not d!1293103))

(assert (not b!4368095))

(assert (not b!4367957))

(assert (not b!4367961))

(assert (not d!1293099))

(assert (not b!4368089))

(assert (not bm!303573))

(assert (not b_lambda!132629))

(assert (not b!4367911))

(assert (not b_lambda!132627))

(assert (not b!4367951))

(assert (not b_lambda!132623))

(assert (not b!4367931))

(assert (not bs!637489))

(assert (not d!1293067))

(assert (not b!4367862))

(assert (not d!1293043))

(assert (not b!4367959))

(assert (not b!4367958))

(assert (not d!1293081))

(assert (not b!4368007))

(assert (not bs!637488))

(assert (not b!4367937))

(assert (not d!1293065))

(assert (not d!1293013))

(assert (not b!4368016))

(assert (not b!4367859))

(assert (not b!4367874))

(assert (not bs!637484))

(assert (not b!4367925))

(assert (not b!4367979))

(assert (not b!4367945))

(assert (not bs!637486))

(assert (not b_lambda!132589))

(assert (not d!1293093))

(assert (not b_lambda!132621))

(assert (not b!4368009))

(assert tp_is_empty!25437)

(assert (not b_lambda!132631))

(assert (not b!4367978))

(assert (not b!4368029))

(assert (not b!4368083))

(assert (not bm!303575))

(assert (not b!4368018))

(assert (not b!4367962))

(assert (not d!1293045))

(assert (not b!4367861))

(assert (not d!1293047))

(assert (not b!4368036))

(assert (not b_lambda!132583))

(assert (not d!1293059))

(assert (not b!4367902))

(assert (not b!4367936))

(assert (not b!4368004))

(assert (not b!4367882))

(assert (not b!4368020))

(assert (not d!1293023))

(assert (not b_lambda!132619))

(assert (not b!4367965))

(assert (not d!1293083))

(assert (not b!4367935))

(assert (not b_lambda!132585))

(assert (not d!1293079))

(assert (not b!4368035))

(assert (not bm!303574))

(assert (not b!4367928))

(assert (not b!4367981))

(assert (not b!4367860))

(assert (not b!4367891))

(assert (not b!4368080))

(assert (not d!1293029))

(assert (not b!4368011))

(assert (not b_lambda!132625))

(assert (not b!4367868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1293221 () Bool)

(declare-fun res!1797258 () Bool)

(declare-fun e!2718691 () Bool)

(assert (=> d!1293221 (=> res!1797258 e!2718691)))

(assert (=> d!1293221 (= res!1797258 (is-Nil!49080 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293221 (= (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143149) e!2718691)))

(declare-fun b!4368287 () Bool)

(declare-fun e!2718692 () Bool)

(assert (=> b!4368287 (= e!2718691 e!2718692)))

(declare-fun res!1797259 () Bool)

(assert (=> b!4368287 (=> (not res!1797259) (not e!2718692))))

(assert (=> b!4368287 (= res!1797259 (dynLambda!20678 lambda!143149 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368288 () Bool)

(assert (=> b!4368288 (= e!2718692 (forall!9220 (t!356124 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))) lambda!143149))))

(assert (= (and d!1293221 (not res!1797258)) b!4368287))

(assert (= (and b!4368287 res!1797259) b!4368288))

(declare-fun b_lambda!132659 () Bool)

(assert (=> (not b_lambda!132659) (not b!4368287)))

(declare-fun m!4991491 () Bool)

(assert (=> b!4368287 m!4991491))

(declare-fun m!4991493 () Bool)

(assert (=> b!4368288 m!4991493))

(assert (=> b!4367979 d!1293221))

(declare-fun d!1293223 () Bool)

(declare-fun res!1797260 () Bool)

(declare-fun e!2718693 () Bool)

(assert (=> d!1293223 (=> res!1797260 e!2718693)))

(assert (=> d!1293223 (= res!1797260 (and (is-Cons!49081 lt!1579756) (= (_1!27580 (h!54660 lt!1579756)) (_1!27580 lt!1579698))))))

(assert (=> d!1293223 (= (containsKey!792 lt!1579756 (_1!27580 lt!1579698)) e!2718693)))

(declare-fun b!4368289 () Bool)

(declare-fun e!2718694 () Bool)

(assert (=> b!4368289 (= e!2718693 e!2718694)))

(declare-fun res!1797261 () Bool)

(assert (=> b!4368289 (=> (not res!1797261) (not e!2718694))))

(assert (=> b!4368289 (= res!1797261 (and (or (not (is-Cons!49081 lt!1579756)) (bvsle (_1!27580 (h!54660 lt!1579756)) (_1!27580 lt!1579698))) (is-Cons!49081 lt!1579756) (bvslt (_1!27580 (h!54660 lt!1579756)) (_1!27580 lt!1579698))))))

(declare-fun b!4368290 () Bool)

(assert (=> b!4368290 (= e!2718694 (containsKey!792 (t!356125 lt!1579756) (_1!27580 lt!1579698)))))

(assert (= (and d!1293223 (not res!1797260)) b!4368289))

(assert (= (and b!4368289 res!1797261) b!4368290))

(declare-fun m!4991495 () Bool)

(assert (=> b!4368290 m!4991495))

(assert (=> b!4368035 d!1293223))

(declare-fun d!1293225 () Bool)

(assert (=> d!1293225 (= (invariantList!704 (toList!3084 lt!1579933)) (noDuplicatedKeys!129 (toList!3084 lt!1579933)))))

(declare-fun bs!637521 () Bool)

(assert (= bs!637521 d!1293225))

(declare-fun m!4991497 () Bool)

(assert (=> bs!637521 m!4991497))

(assert (=> b!4367981 d!1293225))

(declare-fun d!1293227 () Bool)

(declare-fun lt!1580097 () Bool)

(assert (=> d!1293227 (= lt!1580097 (set.member (tuple2!48573 hash!377 newBucket!200) (content!7777 (toList!3083 lt!1579870))))))

(declare-fun e!2718696 () Bool)

(assert (=> d!1293227 (= lt!1580097 e!2718696)))

(declare-fun res!1797262 () Bool)

(assert (=> d!1293227 (=> (not res!1797262) (not e!2718696))))

(assert (=> d!1293227 (= res!1797262 (is-Cons!49081 (toList!3083 lt!1579870)))))

(assert (=> d!1293227 (= (contains!11366 (toList!3083 lt!1579870) (tuple2!48573 hash!377 newBucket!200)) lt!1580097)))

(declare-fun b!4368291 () Bool)

(declare-fun e!2718695 () Bool)

(assert (=> b!4368291 (= e!2718696 e!2718695)))

(declare-fun res!1797263 () Bool)

(assert (=> b!4368291 (=> res!1797263 e!2718695)))

(assert (=> b!4368291 (= res!1797263 (= (h!54660 (toList!3083 lt!1579870)) (tuple2!48573 hash!377 newBucket!200)))))

(declare-fun b!4368292 () Bool)

(assert (=> b!4368292 (= e!2718695 (contains!11366 (t!356125 (toList!3083 lt!1579870)) (tuple2!48573 hash!377 newBucket!200)))))

(assert (= (and d!1293227 res!1797262) b!4368291))

(assert (= (and b!4368291 (not res!1797263)) b!4368292))

(declare-fun m!4991499 () Bool)

(assert (=> d!1293227 m!4991499))

(declare-fun m!4991501 () Bool)

(assert (=> d!1293227 m!4991501))

(declare-fun m!4991503 () Bool)

(assert (=> b!4368292 m!4991503))

(assert (=> b!4367959 d!1293227))

(declare-fun d!1293229 () Bool)

(declare-fun lt!1580098 () Bool)

(assert (=> d!1293229 (= lt!1580098 (set.member key!3918 (content!7779 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun e!2718698 () Bool)

(assert (=> d!1293229 (= lt!1580098 e!2718698)))

(declare-fun res!1797264 () Bool)

(assert (=> d!1293229 (=> (not res!1797264) (not e!2718698))))

(assert (=> d!1293229 (= res!1797264 (is-Cons!49084 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> d!1293229 (= (contains!11372 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))) key!3918) lt!1580098)))

(declare-fun b!4368293 () Bool)

(declare-fun e!2718697 () Bool)

(assert (=> b!4368293 (= e!2718698 e!2718697)))

(declare-fun res!1797265 () Bool)

(assert (=> b!4368293 (=> res!1797265 e!2718697)))

(assert (=> b!4368293 (= res!1797265 (= (h!54665 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(declare-fun b!4368294 () Bool)

(assert (=> b!4368294 (= e!2718697 (contains!11372 (t!356128 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(assert (= (and d!1293229 res!1797264) b!4368293))

(assert (= (and b!4368293 (not res!1797265)) b!4368294))

(declare-fun m!4991505 () Bool)

(assert (=> d!1293229 m!4991505))

(declare-fun m!4991507 () Bool)

(assert (=> d!1293229 m!4991507))

(declare-fun m!4991509 () Bool)

(assert (=> b!4368294 m!4991509))

(assert (=> b!4367874 d!1293229))

(assert (=> d!1293045 d!1293005))

(declare-fun d!1293231 () Bool)

(declare-fun res!1797266 () Bool)

(declare-fun e!2718699 () Bool)

(assert (=> d!1293231 (=> res!1797266 e!2718699)))

(assert (=> d!1293231 (= res!1797266 (and (is-Cons!49081 (toList!3083 lt!1579755)) (= (_1!27580 (h!54660 (toList!3083 lt!1579755))) (_1!27580 lt!1579698))))))

(assert (=> d!1293231 (= (containsKey!792 (toList!3083 lt!1579755) (_1!27580 lt!1579698)) e!2718699)))

(declare-fun b!4368295 () Bool)

(declare-fun e!2718700 () Bool)

(assert (=> b!4368295 (= e!2718699 e!2718700)))

(declare-fun res!1797267 () Bool)

(assert (=> b!4368295 (=> (not res!1797267) (not e!2718700))))

(assert (=> b!4368295 (= res!1797267 (and (or (not (is-Cons!49081 (toList!3083 lt!1579755))) (bvsle (_1!27580 (h!54660 (toList!3083 lt!1579755))) (_1!27580 lt!1579698))) (is-Cons!49081 (toList!3083 lt!1579755)) (bvslt (_1!27580 (h!54660 (toList!3083 lt!1579755))) (_1!27580 lt!1579698))))))

(declare-fun b!4368296 () Bool)

(assert (=> b!4368296 (= e!2718700 (containsKey!792 (t!356125 (toList!3083 lt!1579755)) (_1!27580 lt!1579698)))))

(assert (= (and d!1293231 (not res!1797266)) b!4368295))

(assert (= (and b!4368295 res!1797267) b!4368296))

(declare-fun m!4991511 () Bool)

(assert (=> b!4368296 m!4991511))

(assert (=> d!1293093 d!1293231))

(declare-fun d!1293233 () Bool)

(declare-fun c!742691 () Bool)

(assert (=> d!1293233 (= c!742691 (is-Nil!49081 (t!356125 (toList!3083 lm!1707))))))

(declare-fun e!2718701 () (Set tuple2!48572))

(assert (=> d!1293233 (= (content!7777 (t!356125 (toList!3083 lm!1707))) e!2718701)))

(declare-fun b!4368297 () Bool)

(assert (=> b!4368297 (= e!2718701 (as set.empty (Set tuple2!48572)))))

(declare-fun b!4368298 () Bool)

(assert (=> b!4368298 (= e!2718701 (set.union (set.insert (h!54660 (t!356125 (toList!3083 lm!1707))) (as set.empty (Set tuple2!48572))) (content!7777 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(assert (= (and d!1293233 c!742691) b!4368297))

(assert (= (and d!1293233 (not c!742691)) b!4368298))

(declare-fun m!4991513 () Bool)

(assert (=> b!4368298 m!4991513))

(declare-fun m!4991515 () Bool)

(assert (=> b!4368298 m!4991515))

(assert (=> b!4367858 d!1293233))

(declare-fun d!1293235 () Bool)

(declare-fun res!1797268 () Bool)

(declare-fun e!2718702 () Bool)

(assert (=> d!1293235 (=> res!1797268 e!2718702)))

(assert (=> d!1293235 (= res!1797268 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (= (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hash!377)))))

(assert (=> d!1293235 (= (containsKey!792 (t!356125 (toList!3083 lm!1707)) hash!377) e!2718702)))

(declare-fun b!4368299 () Bool)

(declare-fun e!2718703 () Bool)

(assert (=> b!4368299 (= e!2718702 e!2718703)))

(declare-fun res!1797269 () Bool)

(assert (=> b!4368299 (=> (not res!1797269) (not e!2718703))))

(assert (=> b!4368299 (= res!1797269 (and (or (not (is-Cons!49081 (t!356125 (toList!3083 lm!1707)))) (bvsle (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hash!377)) (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (bvslt (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hash!377)))))

(declare-fun b!4368300 () Bool)

(assert (=> b!4368300 (= e!2718703 (containsKey!792 (t!356125 (t!356125 (toList!3083 lm!1707))) hash!377))))

(assert (= (and d!1293235 (not res!1797268)) b!4368299))

(assert (= (and b!4368299 res!1797269) b!4368300))

(declare-fun m!4991517 () Bool)

(assert (=> b!4368300 m!4991517))

(assert (=> b!4367945 d!1293235))

(declare-fun d!1293237 () Bool)

(declare-fun c!742694 () Bool)

(assert (=> d!1293237 (= c!742694 (is-Nil!49084 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun e!2718706 () (Set K!10443))

(assert (=> d!1293237 (= (content!7779 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))) e!2718706)))

(declare-fun b!4368305 () Bool)

(assert (=> b!4368305 (= e!2718706 (as set.empty (Set K!10443)))))

(declare-fun b!4368306 () Bool)

(assert (=> b!4368306 (= e!2718706 (set.union (set.insert (h!54665 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))) (as set.empty (Set K!10443))) (content!7779 (t!356128 (keys!16618 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293237 c!742694) b!4368305))

(assert (= (and d!1293237 (not c!742694)) b!4368306))

(declare-fun m!4991519 () Bool)

(assert (=> b!4368306 m!4991519))

(assert (=> b!4368306 m!4991505))

(assert (=> d!1293013 d!1293237))

(declare-fun d!1293239 () Bool)

(declare-fun res!1797270 () Bool)

(declare-fun e!2718707 () Bool)

(assert (=> d!1293239 (=> res!1797270 e!2718707)))

(assert (=> d!1293239 (= res!1797270 (is-Nil!49080 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293239 (= (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (ite c!742618 lambda!143146 lambda!143147)) e!2718707)))

(declare-fun b!4368307 () Bool)

(declare-fun e!2718708 () Bool)

(assert (=> b!4368307 (= e!2718707 e!2718708)))

(declare-fun res!1797271 () Bool)

(assert (=> b!4368307 (=> (not res!1797271) (not e!2718708))))

(assert (=> b!4368307 (= res!1797271 (dynLambda!20678 (ite c!742618 lambda!143146 lambda!143147) (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368308 () Bool)

(assert (=> b!4368308 (= e!2718708 (forall!9220 (t!356124 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))) (ite c!742618 lambda!143146 lambda!143147)))))

(assert (= (and d!1293239 (not res!1797270)) b!4368307))

(assert (= (and b!4368307 res!1797271) b!4368308))

(declare-fun b_lambda!132661 () Bool)

(assert (=> (not b_lambda!132661) (not b!4368307)))

(declare-fun m!4991521 () Bool)

(assert (=> b!4368307 m!4991521))

(declare-fun m!4991523 () Bool)

(assert (=> b!4368308 m!4991523))

(assert (=> bm!303573 d!1293239))

(declare-fun bs!637522 () Bool)

(declare-fun d!1293241 () Bool)

(assert (= bs!637522 (and d!1293241 b!4367978)))

(declare-fun lambda!143216 () Int)

(assert (=> bs!637522 (= lambda!143216 lambda!143147)))

(declare-fun bs!637523 () Bool)

(assert (= bs!637523 (and d!1293241 d!1292947)))

(assert (=> bs!637523 (not (= lambda!143216 lambda!143099))))

(declare-fun bs!637524 () Bool)

(assert (= bs!637524 (and d!1293241 d!1293075)))

(assert (=> bs!637524 (= (= (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579933) (= lambda!143216 lambda!143149))))

(declare-fun bs!637525 () Bool)

(assert (= bs!637525 (and d!1293241 b!4367977)))

(assert (=> bs!637525 (= lambda!143216 lambda!143146)))

(assert (=> bs!637522 (= (= (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579928) (= lambda!143216 lambda!143148))))

(assert (=> d!1293241 true))

(assert (=> d!1293241 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143216)))

(declare-fun lt!1580101 () Unit!73210)

(declare-fun choose!27177 (ListMap!2327) Unit!73210)

(assert (=> d!1293241 (= lt!1580101 (choose!27177 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293241 (= (lemmaContainsAllItsOwnKeys!86 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lt!1580101)))

(declare-fun bs!637526 () Bool)

(assert (= bs!637526 d!1293241))

(declare-fun m!4991525 () Bool)

(assert (=> bs!637526 m!4991525))

(assert (=> bs!637526 m!4990923))

(declare-fun m!4991527 () Bool)

(assert (=> bs!637526 m!4991527))

(assert (=> bm!303575 d!1293241))

(declare-fun d!1293243 () Bool)

(declare-fun res!1797272 () Bool)

(declare-fun e!2718709 () Bool)

(assert (=> d!1293243 (=> res!1797272 e!2718709)))

(assert (=> d!1293243 (= res!1797272 (not (is-Cons!49080 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697)))))))))

(assert (=> d!1293243 (= (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697))))) e!2718709)))

(declare-fun b!4368309 () Bool)

(declare-fun e!2718710 () Bool)

(assert (=> b!4368309 (= e!2718709 e!2718710)))

(declare-fun res!1797273 () Bool)

(assert (=> b!4368309 (=> (not res!1797273) (not e!2718710))))

(assert (=> b!4368309 (= res!1797273 (not (containsKey!793 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697)))))))))))

(declare-fun b!4368310 () Bool)

(assert (=> b!4368310 (= e!2718710 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579697)))))))))

(assert (= (and d!1293243 (not res!1797272)) b!4368309))

(assert (= (and b!4368309 res!1797273) b!4368310))

(declare-fun m!4991529 () Bool)

(assert (=> b!4368309 m!4991529))

(declare-fun m!4991531 () Bool)

(assert (=> b!4368310 m!4991531))

(assert (=> bs!637486 d!1293243))

(declare-fun d!1293245 () Bool)

(declare-fun res!1797274 () Bool)

(declare-fun e!2718711 () Bool)

(assert (=> d!1293245 (=> res!1797274 e!2718711)))

(assert (=> d!1293245 (= res!1797274 (is-Nil!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293245 (= (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143096) e!2718711)))

(declare-fun b!4368311 () Bool)

(declare-fun e!2718712 () Bool)

(assert (=> b!4368311 (= e!2718711 e!2718712)))

(declare-fun res!1797275 () Bool)

(assert (=> b!4368311 (=> (not res!1797275) (not e!2718712))))

(assert (=> b!4368311 (= res!1797275 (dynLambda!20676 lambda!143096 (h!54660 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun b!4368312 () Bool)

(assert (=> b!4368312 (= e!2718712 (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143096))))

(assert (= (and d!1293245 (not res!1797274)) b!4368311))

(assert (= (and b!4368311 res!1797275) b!4368312))

(declare-fun b_lambda!132663 () Bool)

(assert (=> (not b_lambda!132663) (not b!4368311)))

(declare-fun m!4991533 () Bool)

(assert (=> b!4368311 m!4991533))

(declare-fun m!4991535 () Bool)

(assert (=> b!4368312 m!4991535))

(assert (=> b!4367931 d!1293245))

(declare-fun d!1293247 () Bool)

(assert (=> d!1293247 (= ($colon$colon!708 e!2718558 (ite c!742646 (h!54660 (toList!3083 lm!1707)) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698)))) (Cons!49081 (ite c!742646 (h!54660 (toList!3083 lm!1707)) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))) e!2718558))))

(assert (=> bm!303582 d!1293247))

(declare-fun bs!637527 () Bool)

(declare-fun b!4368313 () Bool)

(assert (= bs!637527 (and b!4368313 d!1293241)))

(declare-fun lambda!143217 () Int)

(assert (=> bs!637527 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143217 lambda!143216))))

(declare-fun bs!637528 () Bool)

(assert (= bs!637528 (and b!4368313 b!4367978)))

(assert (=> bs!637528 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143217 lambda!143147))))

(declare-fun bs!637529 () Bool)

(assert (= bs!637529 (and b!4368313 d!1292947)))

(assert (=> bs!637529 (not (= lambda!143217 lambda!143099))))

(declare-fun bs!637530 () Bool)

(assert (= bs!637530 (and b!4368313 d!1293075)))

(assert (=> bs!637530 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579933) (= lambda!143217 lambda!143149))))

(declare-fun bs!637531 () Bool)

(assert (= bs!637531 (and b!4368313 b!4367977)))

(assert (=> bs!637531 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143217 lambda!143146))))

(assert (=> bs!637528 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579928) (= lambda!143217 lambda!143148))))

(assert (=> b!4368313 true))

(declare-fun bs!637532 () Bool)

(declare-fun b!4368314 () Bool)

(assert (= bs!637532 (and b!4368314 d!1293241)))

(declare-fun lambda!143218 () Int)

(assert (=> bs!637532 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143218 lambda!143216))))

(declare-fun bs!637533 () Bool)

(assert (= bs!637533 (and b!4368314 b!4367978)))

(assert (=> bs!637533 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143218 lambda!143147))))

(declare-fun bs!637534 () Bool)

(assert (= bs!637534 (and b!4368314 d!1292947)))

(assert (=> bs!637534 (not (= lambda!143218 lambda!143099))))

(declare-fun bs!637535 () Bool)

(assert (= bs!637535 (and b!4368314 d!1293075)))

(assert (=> bs!637535 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579933) (= lambda!143218 lambda!143149))))

(declare-fun bs!637536 () Bool)

(assert (= bs!637536 (and b!4368314 b!4368313)))

(assert (=> bs!637536 (= lambda!143218 lambda!143217)))

(declare-fun bs!637537 () Bool)

(assert (= bs!637537 (and b!4368314 b!4367977)))

(assert (=> bs!637537 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143218 lambda!143146))))

(assert (=> bs!637533 (= (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579928) (= lambda!143218 lambda!143148))))

(assert (=> b!4368314 true))

(declare-fun lt!1580116 () ListMap!2327)

(declare-fun lambda!143219 () Int)

(assert (=> bs!637532 (= (= lt!1580116 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143219 lambda!143216))))

(assert (=> bs!637533 (= (= lt!1580116 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143219 lambda!143147))))

(assert (=> b!4368314 (= (= lt!1580116 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143219 lambda!143218))))

(assert (=> bs!637534 (not (= lambda!143219 lambda!143099))))

(assert (=> bs!637535 (= (= lt!1580116 lt!1579933) (= lambda!143219 lambda!143149))))

(assert (=> bs!637536 (= (= lt!1580116 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143219 lambda!143217))))

(assert (=> bs!637537 (= (= lt!1580116 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143219 lambda!143146))))

(assert (=> bs!637533 (= (= lt!1580116 lt!1579928) (= lambda!143219 lambda!143148))))

(assert (=> b!4368314 true))

(declare-fun bs!637538 () Bool)

(declare-fun d!1293249 () Bool)

(assert (= bs!637538 (and d!1293249 d!1293241)))

(declare-fun lt!1580121 () ListMap!2327)

(declare-fun lambda!143220 () Int)

(assert (=> bs!637538 (= (= lt!1580121 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143220 lambda!143216))))

(declare-fun bs!637539 () Bool)

(assert (= bs!637539 (and d!1293249 b!4368314)))

(assert (=> bs!637539 (= (= lt!1580121 lt!1580116) (= lambda!143220 lambda!143219))))

(declare-fun bs!637540 () Bool)

(assert (= bs!637540 (and d!1293249 b!4367978)))

(assert (=> bs!637540 (= (= lt!1580121 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143220 lambda!143147))))

(assert (=> bs!637539 (= (= lt!1580121 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143220 lambda!143218))))

(declare-fun bs!637541 () Bool)

(assert (= bs!637541 (and d!1293249 d!1292947)))

(assert (=> bs!637541 (not (= lambda!143220 lambda!143099))))

(declare-fun bs!637542 () Bool)

(assert (= bs!637542 (and d!1293249 d!1293075)))

(assert (=> bs!637542 (= (= lt!1580121 lt!1579933) (= lambda!143220 lambda!143149))))

(declare-fun bs!637543 () Bool)

(assert (= bs!637543 (and d!1293249 b!4368313)))

(assert (=> bs!637543 (= (= lt!1580121 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143220 lambda!143217))))

(declare-fun bs!637544 () Bool)

(assert (= bs!637544 (and d!1293249 b!4367977)))

(assert (=> bs!637544 (= (= lt!1580121 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143220 lambda!143146))))

(assert (=> bs!637540 (= (= lt!1580121 lt!1579928) (= lambda!143220 lambda!143148))))

(assert (=> d!1293249 true))

(declare-fun e!2718714 () ListMap!2327)

(assert (=> b!4368313 (= e!2718714 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun lt!1580108 () Unit!73210)

(declare-fun call!303609 () Unit!73210)

(assert (=> b!4368313 (= lt!1580108 call!303609)))

(declare-fun call!303608 () Bool)

(assert (=> b!4368313 call!303608))

(declare-fun lt!1580120 () Unit!73210)

(assert (=> b!4368313 (= lt!1580120 lt!1580108)))

(declare-fun call!303610 () Bool)

(assert (=> b!4368313 call!303610))

(declare-fun lt!1580117 () Unit!73210)

(declare-fun Unit!73252 () Unit!73210)

(assert (=> b!4368313 (= lt!1580117 Unit!73252)))

(declare-fun bm!303603 () Bool)

(declare-fun c!742695 () Bool)

(assert (=> bm!303603 (= call!303608 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (ite c!742695 lambda!143217 lambda!143218)))))

(declare-fun bm!303604 () Bool)

(assert (=> bm!303604 (= call!303610 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (ite c!742695 lambda!143217 lambda!143219)))))

(declare-fun bm!303605 () Bool)

(assert (=> bm!303605 (= call!303609 (lemmaContainsAllItsOwnKeys!86 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun e!2718715 () Bool)

(assert (=> d!1293249 e!2718715))

(declare-fun res!1797276 () Bool)

(assert (=> d!1293249 (=> (not res!1797276) (not e!2718715))))

(assert (=> d!1293249 (= res!1797276 (forall!9220 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) lambda!143220))))

(assert (=> d!1293249 (= lt!1580121 e!2718714)))

(assert (=> d!1293249 (= c!742695 (is-Nil!49080 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293249 (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293249 (= (addToMapMapFromBucket!231 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) lt!1580121)))

(assert (=> b!4368314 (= e!2718714 lt!1580116)))

(declare-fun lt!1580109 () ListMap!2327)

(assert (=> b!4368314 (= lt!1580109 (+!735 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(assert (=> b!4368314 (= lt!1580116 (addToMapMapFromBucket!231 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))) (+!735 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))))

(declare-fun lt!1580110 () Unit!73210)

(assert (=> b!4368314 (= lt!1580110 call!303609)))

(assert (=> b!4368314 call!303608))

(declare-fun lt!1580103 () Unit!73210)

(assert (=> b!4368314 (= lt!1580103 lt!1580110)))

(assert (=> b!4368314 (forall!9220 (toList!3084 lt!1580109) lambda!143219)))

(declare-fun lt!1580119 () Unit!73210)

(declare-fun Unit!73253 () Unit!73210)

(assert (=> b!4368314 (= lt!1580119 Unit!73253)))

(assert (=> b!4368314 (forall!9220 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))) lambda!143219)))

(declare-fun lt!1580111 () Unit!73210)

(declare-fun Unit!73254 () Unit!73210)

(assert (=> b!4368314 (= lt!1580111 Unit!73254)))

(declare-fun lt!1580115 () Unit!73210)

(declare-fun Unit!73255 () Unit!73210)

(assert (=> b!4368314 (= lt!1580115 Unit!73255)))

(declare-fun lt!1580122 () Unit!73210)

(assert (=> b!4368314 (= lt!1580122 (forallContained!1858 (toList!3084 lt!1580109) lambda!143219 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(assert (=> b!4368314 (contains!11368 lt!1580109 (_1!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580112 () Unit!73210)

(declare-fun Unit!73256 () Unit!73210)

(assert (=> b!4368314 (= lt!1580112 Unit!73256)))

(assert (=> b!4368314 (contains!11368 lt!1580116 (_1!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580105 () Unit!73210)

(declare-fun Unit!73257 () Unit!73210)

(assert (=> b!4368314 (= lt!1580105 Unit!73257)))

(assert (=> b!4368314 (forall!9220 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) lambda!143219)))

(declare-fun lt!1580104 () Unit!73210)

(declare-fun Unit!73258 () Unit!73210)

(assert (=> b!4368314 (= lt!1580104 Unit!73258)))

(assert (=> b!4368314 (forall!9220 (toList!3084 lt!1580109) lambda!143219)))

(declare-fun lt!1580107 () Unit!73210)

(declare-fun Unit!73259 () Unit!73210)

(assert (=> b!4368314 (= lt!1580107 Unit!73259)))

(declare-fun lt!1580106 () Unit!73210)

(declare-fun Unit!73260 () Unit!73210)

(assert (=> b!4368314 (= lt!1580106 Unit!73260)))

(declare-fun lt!1580118 () Unit!73210)

(assert (=> b!4368314 (= lt!1580118 (addForallContainsKeyThenBeforeAdding!86 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1580116 (_1!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))))

(assert (=> b!4368314 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) lambda!143219)))

(declare-fun lt!1580102 () Unit!73210)

(assert (=> b!4368314 (= lt!1580102 lt!1580118)))

(assert (=> b!4368314 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) lambda!143219)))

(declare-fun lt!1580113 () Unit!73210)

(declare-fun Unit!73261 () Unit!73210)

(assert (=> b!4368314 (= lt!1580113 Unit!73261)))

(declare-fun res!1797277 () Bool)

(assert (=> b!4368314 (= res!1797277 (forall!9220 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) lambda!143219))))

(declare-fun e!2718713 () Bool)

(assert (=> b!4368314 (=> (not res!1797277) (not e!2718713))))

(assert (=> b!4368314 e!2718713))

(declare-fun lt!1580114 () Unit!73210)

(declare-fun Unit!73262 () Unit!73210)

(assert (=> b!4368314 (= lt!1580114 Unit!73262)))

(declare-fun b!4368315 () Bool)

(declare-fun res!1797278 () Bool)

(assert (=> b!4368315 (=> (not res!1797278) (not e!2718715))))

(assert (=> b!4368315 (= res!1797278 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) lambda!143220))))

(declare-fun b!4368316 () Bool)

(assert (=> b!4368316 (= e!2718713 call!303610)))

(declare-fun b!4368317 () Bool)

(assert (=> b!4368317 (= e!2718715 (invariantList!704 (toList!3084 lt!1580121)))))

(assert (= (and d!1293249 c!742695) b!4368313))

(assert (= (and d!1293249 (not c!742695)) b!4368314))

(assert (= (and b!4368314 res!1797277) b!4368316))

(assert (= (or b!4368313 b!4368314) bm!303605))

(assert (= (or b!4368313 b!4368314) bm!303603))

(assert (= (or b!4368313 b!4368316) bm!303604))

(assert (= (and d!1293249 res!1797276) b!4368315))

(assert (= (and b!4368315 res!1797278) b!4368317))

(assert (=> bm!303605 m!4991165))

(declare-fun m!4991537 () Bool)

(assert (=> bm!303605 m!4991537))

(declare-fun m!4991539 () Bool)

(assert (=> bm!303603 m!4991539))

(declare-fun m!4991541 () Bool)

(assert (=> d!1293249 m!4991541))

(assert (=> d!1293249 m!4991263))

(declare-fun m!4991543 () Bool)

(assert (=> b!4368315 m!4991543))

(declare-fun m!4991545 () Bool)

(assert (=> b!4368314 m!4991545))

(declare-fun m!4991547 () Bool)

(assert (=> b!4368314 m!4991547))

(declare-fun m!4991549 () Bool)

(assert (=> b!4368314 m!4991549))

(declare-fun m!4991551 () Bool)

(assert (=> b!4368314 m!4991551))

(assert (=> b!4368314 m!4991165))

(declare-fun m!4991553 () Bool)

(assert (=> b!4368314 m!4991553))

(declare-fun m!4991555 () Bool)

(assert (=> b!4368314 m!4991555))

(declare-fun m!4991557 () Bool)

(assert (=> b!4368314 m!4991557))

(assert (=> b!4368314 m!4991557))

(declare-fun m!4991559 () Bool)

(assert (=> b!4368314 m!4991559))

(assert (=> b!4368314 m!4991559))

(assert (=> b!4368314 m!4991165))

(declare-fun m!4991561 () Bool)

(assert (=> b!4368314 m!4991561))

(assert (=> b!4368314 m!4991553))

(declare-fun m!4991563 () Bool)

(assert (=> b!4368314 m!4991563))

(assert (=> b!4368314 m!4991549))

(declare-fun m!4991565 () Bool)

(assert (=> b!4368317 m!4991565))

(declare-fun m!4991567 () Bool)

(assert (=> bm!303604 m!4991567))

(assert (=> b!4367984 d!1293249))

(declare-fun bs!637545 () Bool)

(declare-fun d!1293251 () Bool)

(assert (= bs!637545 (and d!1293251 start!423810)))

(declare-fun lambda!143221 () Int)

(assert (=> bs!637545 (= lambda!143221 lambda!143082)))

(declare-fun bs!637546 () Bool)

(assert (= bs!637546 (and d!1293251 d!1292927)))

(assert (=> bs!637546 (not (= lambda!143221 lambda!143096))))

(declare-fun bs!637547 () Bool)

(assert (= bs!637547 (and d!1293251 d!1292969)))

(assert (=> bs!637547 (= lambda!143221 lambda!143105)))

(declare-fun bs!637548 () Bool)

(assert (= bs!637548 (and d!1293251 d!1293077)))

(assert (=> bs!637548 (= lambda!143221 lambda!143150)))

(declare-fun lt!1580123 () ListMap!2327)

(assert (=> d!1293251 (invariantList!704 (toList!3084 lt!1580123))))

(declare-fun e!2718716 () ListMap!2327)

(assert (=> d!1293251 (= lt!1580123 e!2718716)))

(declare-fun c!742696 () Bool)

(assert (=> d!1293251 (= c!742696 (is-Cons!49081 (t!356125 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293251 (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143221)))

(assert (=> d!1293251 (= (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1580123)))

(declare-fun b!4368318 () Bool)

(assert (=> b!4368318 (= e!2718716 (addToMapMapFromBucket!231 (_2!27580 (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (t!356125 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368319 () Bool)

(assert (=> b!4368319 (= e!2718716 (ListMap!2328 Nil!49080))))

(assert (= (and d!1293251 c!742696) b!4368318))

(assert (= (and d!1293251 (not c!742696)) b!4368319))

(declare-fun m!4991569 () Bool)

(assert (=> d!1293251 m!4991569))

(declare-fun m!4991571 () Bool)

(assert (=> d!1293251 m!4991571))

(declare-fun m!4991573 () Bool)

(assert (=> b!4368318 m!4991573))

(assert (=> b!4368318 m!4991573))

(declare-fun m!4991575 () Bool)

(assert (=> b!4368318 m!4991575))

(assert (=> b!4367984 d!1293251))

(declare-fun d!1293253 () Bool)

(declare-fun size!35855 (List!49208) Int)

(assert (=> d!1293253 (= (length!82 lt!1579955) (size!35855 lt!1579955))))

(declare-fun bs!637549 () Bool)

(assert (= bs!637549 d!1293253))

(declare-fun m!4991577 () Bool)

(assert (=> bs!637549 m!4991577))

(assert (=> b!4368012 d!1293253))

(declare-fun d!1293255 () Bool)

(declare-fun size!35856 (List!49204) Int)

(assert (=> d!1293255 (= (length!83 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (size!35856 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun bs!637550 () Bool)

(assert (= bs!637550 d!1293255))

(declare-fun m!4991579 () Bool)

(assert (=> bs!637550 m!4991579))

(assert (=> b!4368012 d!1293255))

(declare-fun d!1293257 () Bool)

(declare-fun res!1797279 () Bool)

(declare-fun e!2718717 () Bool)

(assert (=> d!1293257 (=> res!1797279 e!2718717)))

(assert (=> d!1293257 (= res!1797279 (is-Nil!49080 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(assert (=> d!1293257 (= (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143149) e!2718717)))

(declare-fun b!4368320 () Bool)

(declare-fun e!2718718 () Bool)

(assert (=> b!4368320 (= e!2718717 e!2718718)))

(declare-fun res!1797280 () Bool)

(assert (=> b!4368320 (=> (not res!1797280) (not e!2718718))))

(assert (=> b!4368320 (= res!1797280 (dynLambda!20678 lambda!143149 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun b!4368321 () Bool)

(assert (=> b!4368321 (= e!2718718 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143149))))

(assert (= (and d!1293257 (not res!1797279)) b!4368320))

(assert (= (and b!4368320 res!1797280) b!4368321))

(declare-fun b_lambda!132665 () Bool)

(assert (=> (not b_lambda!132665) (not b!4368320)))

(declare-fun m!4991581 () Bool)

(assert (=> b!4368320 m!4991581))

(declare-fun m!4991583 () Bool)

(assert (=> b!4368321 m!4991583))

(assert (=> d!1293075 d!1293257))

(assert (=> d!1293075 d!1293089))

(assert (=> b!4368023 d!1293055))

(declare-fun d!1293259 () Bool)

(declare-fun lt!1580124 () Bool)

(assert (=> d!1293259 (= lt!1580124 (set.member key!3918 (content!7779 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun e!2718720 () Bool)

(assert (=> d!1293259 (= lt!1580124 e!2718720)))

(declare-fun res!1797281 () Bool)

(assert (=> d!1293259 (=> (not res!1797281) (not e!2718720))))

(assert (=> d!1293259 (= res!1797281 (is-Cons!49084 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> d!1293259 (= (contains!11372 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918) lt!1580124)))

(declare-fun b!4368322 () Bool)

(declare-fun e!2718719 () Bool)

(assert (=> b!4368322 (= e!2718720 e!2718719)))

(declare-fun res!1797282 () Bool)

(assert (=> b!4368322 (=> res!1797282 e!2718719)))

(assert (=> b!4368322 (= res!1797282 (= (h!54665 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(declare-fun b!4368323 () Bool)

(assert (=> b!4368323 (= e!2718719 (contains!11372 (t!356128 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(assert (= (and d!1293259 res!1797281) b!4368322))

(assert (= (and b!4368322 (not res!1797282)) b!4368323))

(assert (=> d!1293259 m!4990899))

(declare-fun m!4991585 () Bool)

(assert (=> d!1293259 m!4991585))

(declare-fun m!4991587 () Bool)

(assert (=> d!1293259 m!4991587))

(declare-fun m!4991589 () Bool)

(assert (=> b!4368323 m!4991589))

(assert (=> d!1293029 d!1293259))

(assert (=> d!1293029 d!1293079))

(declare-fun d!1293261 () Bool)

(assert (=> d!1293261 (contains!11372 (getKeysList!152 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918)))

(assert (=> d!1293261 true))

(declare-fun _$14!795 () Unit!73210)

(assert (=> d!1293261 (= (choose!27167 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) _$14!795)))

(declare-fun bs!637551 () Bool)

(assert (= bs!637551 d!1293261))

(assert (=> bs!637551 m!4990899))

(assert (=> bs!637551 m!4990899))

(assert (=> bs!637551 m!4991049))

(assert (=> d!1293029 d!1293261))

(declare-fun d!1293263 () Bool)

(assert (=> d!1293263 (= (invariantList!704 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (noDuplicatedKeys!129 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun bs!637552 () Bool)

(assert (= bs!637552 d!1293263))

(declare-fun m!4991591 () Bool)

(assert (=> bs!637552 m!4991591))

(assert (=> d!1293029 d!1293263))

(declare-fun d!1293265 () Bool)

(declare-fun res!1797283 () Bool)

(declare-fun e!2718721 () Bool)

(assert (=> d!1293265 (=> res!1797283 e!2718721)))

(assert (=> d!1293265 (= res!1797283 (and (is-Cons!49080 lt!1579865) (= (_1!27579 (h!54659 lt!1579865)) key!3918)))))

(assert (=> d!1293265 (= (containsKey!793 lt!1579865 key!3918) e!2718721)))

(declare-fun b!4368324 () Bool)

(declare-fun e!2718722 () Bool)

(assert (=> b!4368324 (= e!2718721 e!2718722)))

(declare-fun res!1797284 () Bool)

(assert (=> b!4368324 (=> (not res!1797284) (not e!2718722))))

(assert (=> b!4368324 (= res!1797284 (is-Cons!49080 lt!1579865))))

(declare-fun b!4368325 () Bool)

(assert (=> b!4368325 (= e!2718722 (containsKey!793 (t!356124 lt!1579865) key!3918))))

(assert (= (and d!1293265 (not res!1797283)) b!4368324))

(assert (= (and b!4368324 res!1797284) b!4368325))

(declare-fun m!4991593 () Bool)

(assert (=> b!4368325 m!4991593))

(assert (=> d!1293039 d!1293265))

(declare-fun d!1293267 () Bool)

(declare-fun res!1797285 () Bool)

(declare-fun e!2718723 () Bool)

(assert (=> d!1293267 (=> res!1797285 e!2718723)))

(assert (=> d!1293267 (= res!1797285 (not (is-Cons!49080 (t!356124 lt!1579694))))))

(assert (=> d!1293267 (= (noDuplicateKeys!550 (t!356124 lt!1579694)) e!2718723)))

(declare-fun b!4368326 () Bool)

(declare-fun e!2718724 () Bool)

(assert (=> b!4368326 (= e!2718723 e!2718724)))

(declare-fun res!1797286 () Bool)

(assert (=> b!4368326 (=> (not res!1797286) (not e!2718724))))

(assert (=> b!4368326 (= res!1797286 (not (containsKey!793 (t!356124 (t!356124 lt!1579694)) (_1!27579 (h!54659 (t!356124 lt!1579694))))))))

(declare-fun b!4368327 () Bool)

(assert (=> b!4368327 (= e!2718724 (noDuplicateKeys!550 (t!356124 (t!356124 lt!1579694))))))

(assert (= (and d!1293267 (not res!1797285)) b!4368326))

(assert (= (and b!4368326 res!1797286) b!4368327))

(declare-fun m!4991595 () Bool)

(assert (=> b!4368326 m!4991595))

(declare-fun m!4991597 () Bool)

(assert (=> b!4368327 m!4991597))

(assert (=> d!1293039 d!1293267))

(declare-fun d!1293269 () Bool)

(assert (=> d!1293269 (= (hash!1699 hashF!1247 (_1!27579 (h!54659 newBucket!200))) (hash!1701 hashF!1247 (_1!27579 (h!54659 newBucket!200))))))

(declare-fun bs!637553 () Bool)

(assert (= bs!637553 d!1293269))

(declare-fun m!4991599 () Bool)

(assert (=> bs!637553 m!4991599))

(assert (=> bs!637484 d!1293269))

(assert (=> d!1293085 d!1293233))

(declare-fun d!1293271 () Bool)

(declare-fun res!1797287 () Bool)

(declare-fun e!2718725 () Bool)

(assert (=> d!1293271 (=> res!1797287 e!2718725)))

(assert (=> d!1293271 (= res!1797287 (or (is-Nil!49081 lt!1579977) (is-Nil!49081 (t!356125 lt!1579977))))))

(assert (=> d!1293271 (= (isStrictlySorted!131 lt!1579977) e!2718725)))

(declare-fun b!4368328 () Bool)

(declare-fun e!2718726 () Bool)

(assert (=> b!4368328 (= e!2718725 e!2718726)))

(declare-fun res!1797288 () Bool)

(assert (=> b!4368328 (=> (not res!1797288) (not e!2718726))))

(assert (=> b!4368328 (= res!1797288 (bvslt (_1!27580 (h!54660 lt!1579977)) (_1!27580 (h!54660 (t!356125 lt!1579977)))))))

(declare-fun b!4368329 () Bool)

(assert (=> b!4368329 (= e!2718726 (isStrictlySorted!131 (t!356125 lt!1579977)))))

(assert (= (and d!1293271 (not res!1797287)) b!4368328))

(assert (= (and b!4368328 res!1797288) b!4368329))

(declare-fun m!4991601 () Bool)

(assert (=> b!4368329 m!4991601))

(assert (=> d!1293103 d!1293271))

(assert (=> d!1293103 d!1293019))

(declare-fun d!1293273 () Bool)

(declare-fun c!742697 () Bool)

(assert (=> d!1293273 (= c!742697 (is-Nil!49084 lt!1579955))))

(declare-fun e!2718727 () (Set K!10443))

(assert (=> d!1293273 (= (content!7779 lt!1579955) e!2718727)))

(declare-fun b!4368330 () Bool)

(assert (=> b!4368330 (= e!2718727 (as set.empty (Set K!10443)))))

(declare-fun b!4368331 () Bool)

(assert (=> b!4368331 (= e!2718727 (set.union (set.insert (h!54665 lt!1579955) (as set.empty (Set K!10443))) (content!7779 (t!356128 lt!1579955))))))

(assert (= (and d!1293273 c!742697) b!4368330))

(assert (= (and d!1293273 (not c!742697)) b!4368331))

(declare-fun m!4991603 () Bool)

(assert (=> b!4368331 m!4991603))

(declare-fun m!4991605 () Bool)

(assert (=> b!4368331 m!4991605))

(assert (=> b!4368004 d!1293273))

(declare-fun d!1293275 () Bool)

(declare-fun c!742698 () Bool)

(assert (=> d!1293275 (= c!742698 (is-Nil!49084 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162)))))

(declare-fun e!2718728 () (Set K!10443))

(assert (=> d!1293275 (= (content!7779 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162)) e!2718728)))

(declare-fun b!4368332 () Bool)

(assert (=> b!4368332 (= e!2718728 (as set.empty (Set K!10443)))))

(declare-fun b!4368333 () Bool)

(assert (=> b!4368333 (= e!2718728 (set.union (set.insert (h!54665 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162)) (as set.empty (Set K!10443))) (content!7779 (t!356128 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162)))))))

(assert (= (and d!1293275 c!742698) b!4368332))

(assert (= (and d!1293275 (not c!742698)) b!4368333))

(declare-fun m!4991607 () Bool)

(assert (=> b!4368333 m!4991607))

(declare-fun m!4991609 () Bool)

(assert (=> b!4368333 m!4991609))

(assert (=> b!4368004 d!1293275))

(declare-fun d!1293277 () Bool)

(declare-fun lt!1580127 () List!49208)

(assert (=> d!1293277 (= (size!35855 lt!1580127) (size!35856 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun e!2718731 () List!49208)

(assert (=> d!1293277 (= lt!1580127 e!2718731)))

(declare-fun c!742701 () Bool)

(assert (=> d!1293277 (= c!742701 (is-Nil!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293277 (= (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143162) lt!1580127)))

(declare-fun b!4368338 () Bool)

(assert (=> b!4368338 (= e!2718731 Nil!49084)))

(declare-fun b!4368339 () Bool)

(declare-fun $colon$colon!710 (List!49208 K!10443) List!49208)

(declare-fun dynLambda!20680 (Int tuple2!48570) K!10443)

(assert (=> b!4368339 (= e!2718731 ($colon$colon!710 (map!10685 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lambda!143162) (dynLambda!20680 lambda!143162 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293277 c!742701) b!4368338))

(assert (= (and d!1293277 (not c!742701)) b!4368339))

(declare-fun b_lambda!132667 () Bool)

(assert (=> (not b_lambda!132667) (not b!4368339)))

(declare-fun m!4991611 () Bool)

(assert (=> d!1293277 m!4991611))

(assert (=> d!1293277 m!4991579))

(declare-fun m!4991613 () Bool)

(assert (=> b!4368339 m!4991613))

(declare-fun m!4991615 () Bool)

(assert (=> b!4368339 m!4991615))

(assert (=> b!4368339 m!4991613))

(assert (=> b!4368339 m!4991615))

(declare-fun m!4991617 () Bool)

(assert (=> b!4368339 m!4991617))

(assert (=> b!4368004 d!1293277))

(declare-fun d!1293279 () Bool)

(declare-fun res!1797293 () Bool)

(declare-fun e!2718736 () Bool)

(assert (=> d!1293279 (=> res!1797293 e!2718736)))

(assert (=> d!1293279 (= res!1797293 (is-Nil!49084 lt!1579858))))

(assert (=> d!1293279 (= (forall!9222 lt!1579858 lambda!143116) e!2718736)))

(declare-fun b!4368344 () Bool)

(declare-fun e!2718737 () Bool)

(assert (=> b!4368344 (= e!2718736 e!2718737)))

(declare-fun res!1797294 () Bool)

(assert (=> b!4368344 (=> (not res!1797294) (not e!2718737))))

(declare-fun dynLambda!20681 (Int K!10443) Bool)

(assert (=> b!4368344 (= res!1797294 (dynLambda!20681 lambda!143116 (h!54665 lt!1579858)))))

(declare-fun b!4368345 () Bool)

(assert (=> b!4368345 (= e!2718737 (forall!9222 (t!356128 lt!1579858) lambda!143116))))

(assert (= (and d!1293279 (not res!1797293)) b!4368344))

(assert (= (and b!4368344 res!1797294) b!4368345))

(declare-fun b_lambda!132669 () Bool)

(assert (=> (not b_lambda!132669) (not b!4368344)))

(declare-fun m!4991619 () Bool)

(assert (=> b!4368344 m!4991619))

(declare-fun m!4991621 () Bool)

(assert (=> b!4368345 m!4991621))

(assert (=> b!4367882 d!1293279))

(declare-fun d!1293281 () Bool)

(declare-fun res!1797295 () Bool)

(declare-fun e!2718738 () Bool)

(assert (=> d!1293281 (=> res!1797295 e!2718738)))

(assert (=> d!1293281 (= res!1797295 (and (is-Cons!49080 (t!356124 (_2!27580 lt!1579696))) (= (_1!27579 (h!54659 (t!356124 (_2!27580 lt!1579696)))) (_1!27579 (h!54659 (_2!27580 lt!1579696))))))))

(assert (=> d!1293281 (= (containsKey!793 (t!356124 (_2!27580 lt!1579696)) (_1!27579 (h!54659 (_2!27580 lt!1579696)))) e!2718738)))

(declare-fun b!4368346 () Bool)

(declare-fun e!2718739 () Bool)

(assert (=> b!4368346 (= e!2718738 e!2718739)))

(declare-fun res!1797296 () Bool)

(assert (=> b!4368346 (=> (not res!1797296) (not e!2718739))))

(assert (=> b!4368346 (= res!1797296 (is-Cons!49080 (t!356124 (_2!27580 lt!1579696))))))

(declare-fun b!4368347 () Bool)

(assert (=> b!4368347 (= e!2718739 (containsKey!793 (t!356124 (t!356124 (_2!27580 lt!1579696))) (_1!27579 (h!54659 (_2!27580 lt!1579696)))))))

(assert (= (and d!1293281 (not res!1797295)) b!4368346))

(assert (= (and b!4368346 res!1797296) b!4368347))

(declare-fun m!4991623 () Bool)

(assert (=> b!4368347 m!4991623))

(assert (=> b!4367961 d!1293281))

(declare-fun d!1293283 () Bool)

(declare-fun res!1797297 () Bool)

(declare-fun e!2718740 () Bool)

(assert (=> d!1293283 (=> res!1797297 e!2718740)))

(assert (=> d!1293283 (= res!1797297 (is-Nil!49081 (t!356125 (t!356125 (toList!3083 lt!1579697)))))))

(assert (=> d!1293283 (= (forall!9218 (t!356125 (t!356125 (toList!3083 lt!1579697))) lambda!143082) e!2718740)))

(declare-fun b!4368348 () Bool)

(declare-fun e!2718741 () Bool)

(assert (=> b!4368348 (= e!2718740 e!2718741)))

(declare-fun res!1797298 () Bool)

(assert (=> b!4368348 (=> (not res!1797298) (not e!2718741))))

(assert (=> b!4368348 (= res!1797298 (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (t!356125 (toList!3083 lt!1579697))))))))

(declare-fun b!4368349 () Bool)

(assert (=> b!4368349 (= e!2718741 (forall!9218 (t!356125 (t!356125 (t!356125 (toList!3083 lt!1579697)))) lambda!143082))))

(assert (= (and d!1293283 (not res!1797297)) b!4368348))

(assert (= (and b!4368348 res!1797298) b!4368349))

(declare-fun b_lambda!132671 () Bool)

(assert (=> (not b_lambda!132671) (not b!4368348)))

(declare-fun m!4991625 () Bool)

(assert (=> b!4368348 m!4991625))

(declare-fun m!4991627 () Bool)

(assert (=> b!4368349 m!4991627))

(assert (=> b!4367925 d!1293283))

(declare-fun d!1293285 () Bool)

(declare-fun res!1797303 () Bool)

(declare-fun e!2718746 () Bool)

(assert (=> d!1293285 (=> res!1797303 e!2718746)))

(assert (=> d!1293285 (= res!1797303 (is-Nil!49084 lt!1579955))))

(assert (=> d!1293285 (= (noDuplicate!613 lt!1579955) e!2718746)))

(declare-fun b!4368354 () Bool)

(declare-fun e!2718747 () Bool)

(assert (=> b!4368354 (= e!2718746 e!2718747)))

(declare-fun res!1797304 () Bool)

(assert (=> b!4368354 (=> (not res!1797304) (not e!2718747))))

(assert (=> b!4368354 (= res!1797304 (not (contains!11372 (t!356128 lt!1579955) (h!54665 lt!1579955))))))

(declare-fun b!4368355 () Bool)

(assert (=> b!4368355 (= e!2718747 (noDuplicate!613 (t!356128 lt!1579955)))))

(assert (= (and d!1293285 (not res!1797303)) b!4368354))

(assert (= (and b!4368354 res!1797304) b!4368355))

(declare-fun m!4991629 () Bool)

(assert (=> b!4368354 m!4991629))

(declare-fun m!4991631 () Bool)

(assert (=> b!4368355 m!4991631))

(assert (=> d!1293079 d!1293285))

(assert (=> d!1293079 d!1293263))

(declare-fun d!1293287 () Bool)

(assert (=> d!1293287 (= (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698))) (not (isEmpty!28233 (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))))

(declare-fun bs!637554 () Bool)

(assert (= bs!637554 d!1293287))

(assert (=> bs!637554 m!4990863))

(declare-fun m!4991633 () Bool)

(assert (=> bs!637554 m!4991633))

(assert (=> b!4368026 d!1293287))

(assert (=> b!4368026 d!1293035))

(declare-fun d!1293289 () Bool)

(declare-fun e!2718748 () Bool)

(assert (=> d!1293289 e!2718748))

(declare-fun res!1797305 () Bool)

(assert (=> d!1293289 (=> res!1797305 e!2718748)))

(declare-fun lt!1580131 () Bool)

(assert (=> d!1293289 (= res!1797305 (not lt!1580131))))

(declare-fun lt!1580130 () Bool)

(assert (=> d!1293289 (= lt!1580131 lt!1580130)))

(declare-fun lt!1580128 () Unit!73210)

(declare-fun e!2718749 () Unit!73210)

(assert (=> d!1293289 (= lt!1580128 e!2718749)))

(declare-fun c!742702 () Bool)

(assert (=> d!1293289 (= c!742702 lt!1580130)))

(assert (=> d!1293289 (= lt!1580130 (containsKey!792 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (=> d!1293289 (= (contains!11367 lt!1579870 (_1!27580 (tuple2!48573 hash!377 newBucket!200))) lt!1580131)))

(declare-fun b!4368356 () Bool)

(declare-fun lt!1580129 () Unit!73210)

(assert (=> b!4368356 (= e!2718749 lt!1580129)))

(assert (=> b!4368356 (= lt!1580129 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (=> b!4368356 (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun b!4368357 () Bool)

(declare-fun Unit!73263 () Unit!73210)

(assert (=> b!4368357 (= e!2718749 Unit!73263)))

(declare-fun b!4368358 () Bool)

(assert (=> b!4368358 (= e!2718748 (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (= (and d!1293289 c!742702) b!4368356))

(assert (= (and d!1293289 (not c!742702)) b!4368357))

(assert (= (and d!1293289 (not res!1797305)) b!4368358))

(declare-fun m!4991635 () Bool)

(assert (=> d!1293289 m!4991635))

(declare-fun m!4991637 () Bool)

(assert (=> b!4368356 m!4991637))

(assert (=> b!4368356 m!4991117))

(assert (=> b!4368356 m!4991117))

(declare-fun m!4991639 () Bool)

(assert (=> b!4368356 m!4991639))

(assert (=> b!4368358 m!4991117))

(assert (=> b!4368358 m!4991117))

(assert (=> b!4368358 m!4991639))

(assert (=> d!1293065 d!1293289))

(declare-fun d!1293291 () Bool)

(declare-fun c!742703 () Bool)

(assert (=> d!1293291 (= c!742703 (and (is-Cons!49081 lt!1579871) (= (_1!27580 (h!54660 lt!1579871)) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun e!2718750 () Option!10521)

(assert (=> d!1293291 (= (getValueByKey!507 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200))) e!2718750)))

(declare-fun b!4368359 () Bool)

(assert (=> b!4368359 (= e!2718750 (Some!10520 (_2!27580 (h!54660 lt!1579871))))))

(declare-fun b!4368362 () Bool)

(declare-fun e!2718751 () Option!10521)

(assert (=> b!4368362 (= e!2718751 None!10520)))

(declare-fun b!4368360 () Bool)

(assert (=> b!4368360 (= e!2718750 e!2718751)))

(declare-fun c!742704 () Bool)

(assert (=> b!4368360 (= c!742704 (and (is-Cons!49081 lt!1579871) (not (= (_1!27580 (h!54660 lt!1579871)) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(declare-fun b!4368361 () Bool)

(assert (=> b!4368361 (= e!2718751 (getValueByKey!507 (t!356125 lt!1579871) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (= (and d!1293291 c!742703) b!4368359))

(assert (= (and d!1293291 (not c!742703)) b!4368360))

(assert (= (and b!4368360 c!742704) b!4368361))

(assert (= (and b!4368360 (not c!742704)) b!4368362))

(declare-fun m!4991641 () Bool)

(assert (=> b!4368361 m!4991641))

(assert (=> d!1293065 d!1293291))

(declare-fun d!1293293 () Bool)

(assert (=> d!1293293 (= (getValueByKey!507 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200))) (Some!10520 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun lt!1580132 () Unit!73210)

(assert (=> d!1293293 (= lt!1580132 (choose!27170 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun e!2718752 () Bool)

(assert (=> d!1293293 e!2718752))

(declare-fun res!1797306 () Bool)

(assert (=> d!1293293 (=> (not res!1797306) (not e!2718752))))

(assert (=> d!1293293 (= res!1797306 (isStrictlySorted!131 lt!1579871))))

(assert (=> d!1293293 (= (lemmaContainsTupThenGetReturnValue!273 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))) lt!1580132)))

(declare-fun b!4368363 () Bool)

(declare-fun res!1797307 () Bool)

(assert (=> b!4368363 (=> (not res!1797307) (not e!2718752))))

(assert (=> b!4368363 (= res!1797307 (containsKey!792 lt!1579871 (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun b!4368364 () Bool)

(assert (=> b!4368364 (= e!2718752 (contains!11366 lt!1579871 (tuple2!48573 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (= (and d!1293293 res!1797306) b!4368363))

(assert (= (and b!4368363 res!1797307) b!4368364))

(assert (=> d!1293293 m!4991111))

(declare-fun m!4991643 () Bool)

(assert (=> d!1293293 m!4991643))

(declare-fun m!4991645 () Bool)

(assert (=> d!1293293 m!4991645))

(declare-fun m!4991647 () Bool)

(assert (=> b!4368363 m!4991647))

(declare-fun m!4991649 () Bool)

(assert (=> b!4368364 m!4991649))

(assert (=> d!1293065 d!1293293))

(declare-fun b!4368365 () Bool)

(declare-fun e!2718755 () List!49205)

(declare-fun call!303612 () List!49205)

(assert (=> b!4368365 (= e!2718755 call!303612)))

(declare-fun c!742708 () Bool)

(declare-fun c!742706 () Bool)

(declare-fun b!4368366 () Bool)

(declare-fun e!2718756 () List!49205)

(assert (=> b!4368366 (= e!2718756 (ite c!742706 (t!356125 (toList!3083 lm!1707)) (ite c!742708 (Cons!49081 (h!54660 (toList!3083 lm!1707)) (t!356125 (toList!3083 lm!1707))) Nil!49081)))))

(declare-fun b!4368367 () Bool)

(assert (=> b!4368367 (= e!2718755 call!303612)))

(declare-fun b!4368368 () Bool)

(declare-fun e!2718754 () List!49205)

(declare-fun call!303613 () List!49205)

(assert (=> b!4368368 (= e!2718754 call!303613)))

(declare-fun b!4368369 () Bool)

(assert (=> b!4368369 (= e!2718756 (insertStrictlySorted!158 (t!356125 (toList!3083 lm!1707)) (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun bm!303607 () Bool)

(declare-fun call!303611 () List!49205)

(assert (=> bm!303607 (= call!303612 call!303611)))

(declare-fun e!2718753 () Bool)

(declare-fun lt!1580133 () List!49205)

(declare-fun b!4368370 () Bool)

(assert (=> b!4368370 (= e!2718753 (contains!11366 lt!1580133 (tuple2!48573 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun b!4368371 () Bool)

(declare-fun e!2718757 () List!49205)

(assert (=> b!4368371 (= e!2718754 e!2718757)))

(assert (=> b!4368371 (= c!742706 (and (is-Cons!49081 (toList!3083 lm!1707)) (= (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun b!4368372 () Bool)

(declare-fun res!1797309 () Bool)

(assert (=> b!4368372 (=> (not res!1797309) (not e!2718753))))

(assert (=> b!4368372 (= res!1797309 (containsKey!792 lt!1580133 (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(declare-fun b!4368373 () Bool)

(assert (=> b!4368373 (= e!2718757 call!303611)))

(declare-fun b!4368374 () Bool)

(assert (=> b!4368374 (= c!742708 (and (is-Cons!49081 (toList!3083 lm!1707)) (bvsgt (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (=> b!4368374 (= e!2718757 e!2718755)))

(declare-fun bm!303608 () Bool)

(assert (=> bm!303608 (= call!303611 call!303613)))

(declare-fun c!742705 () Bool)

(declare-fun bm!303606 () Bool)

(assert (=> bm!303606 (= call!303613 ($colon$colon!708 e!2718756 (ite c!742705 (h!54660 (toList!3083 lm!1707)) (tuple2!48573 (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(declare-fun c!742707 () Bool)

(assert (=> bm!303606 (= c!742707 c!742705)))

(declare-fun d!1293295 () Bool)

(assert (=> d!1293295 e!2718753))

(declare-fun res!1797308 () Bool)

(assert (=> d!1293295 (=> (not res!1797308) (not e!2718753))))

(assert (=> d!1293295 (= res!1797308 (isStrictlySorted!131 lt!1580133))))

(assert (=> d!1293295 (= lt!1580133 e!2718754)))

(assert (=> d!1293295 (= c!742705 (and (is-Cons!49081 (toList!3083 lm!1707)) (bvslt (_1!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(assert (=> d!1293295 (isStrictlySorted!131 (toList!3083 lm!1707))))

(assert (=> d!1293295 (= (insertStrictlySorted!158 (toList!3083 lm!1707) (_1!27580 (tuple2!48573 hash!377 newBucket!200)) (_2!27580 (tuple2!48573 hash!377 newBucket!200))) lt!1580133)))

(assert (= (and d!1293295 c!742705) b!4368368))

(assert (= (and d!1293295 (not c!742705)) b!4368371))

(assert (= (and b!4368371 c!742706) b!4368373))

(assert (= (and b!4368371 (not c!742706)) b!4368374))

(assert (= (and b!4368374 c!742708) b!4368365))

(assert (= (and b!4368374 (not c!742708)) b!4368367))

(assert (= (or b!4368365 b!4368367) bm!303607))

(assert (= (or b!4368373 bm!303607) bm!303608))

(assert (= (or b!4368368 bm!303608) bm!303606))

(assert (= (and bm!303606 c!742707) b!4368369))

(assert (= (and bm!303606 (not c!742707)) b!4368366))

(assert (= (and d!1293295 res!1797308) b!4368372))

(assert (= (and b!4368372 res!1797309) b!4368370))

(declare-fun m!4991651 () Bool)

(assert (=> b!4368370 m!4991651))

(declare-fun m!4991653 () Bool)

(assert (=> b!4368369 m!4991653))

(declare-fun m!4991655 () Bool)

(assert (=> b!4368372 m!4991655))

(declare-fun m!4991657 () Bool)

(assert (=> bm!303606 m!4991657))

(declare-fun m!4991659 () Bool)

(assert (=> d!1293295 m!4991659))

(assert (=> d!1293295 m!4990795))

(assert (=> d!1293065 d!1293295))

(declare-fun d!1293297 () Bool)

(declare-fun res!1797310 () Bool)

(declare-fun e!2718758 () Bool)

(assert (=> d!1293297 (=> res!1797310 e!2718758)))

(assert (=> d!1293297 (= res!1797310 (and (is-Cons!49080 (t!356124 (t!356124 newBucket!200))) (= (_1!27579 (h!54659 (t!356124 (t!356124 newBucket!200)))) (_1!27579 (h!54659 (t!356124 newBucket!200))))))))

(assert (=> d!1293297 (= (containsKey!793 (t!356124 (t!356124 newBucket!200)) (_1!27579 (h!54659 (t!356124 newBucket!200)))) e!2718758)))

(declare-fun b!4368375 () Bool)

(declare-fun e!2718759 () Bool)

(assert (=> b!4368375 (= e!2718758 e!2718759)))

(declare-fun res!1797311 () Bool)

(assert (=> b!4368375 (=> (not res!1797311) (not e!2718759))))

(assert (=> b!4368375 (= res!1797311 (is-Cons!49080 (t!356124 (t!356124 newBucket!200))))))

(declare-fun b!4368376 () Bool)

(assert (=> b!4368376 (= e!2718759 (containsKey!793 (t!356124 (t!356124 (t!356124 newBucket!200))) (_1!27579 (h!54659 (t!356124 newBucket!200)))))))

(assert (= (and d!1293297 (not res!1797310)) b!4368375))

(assert (= (and b!4368375 res!1797311) b!4368376))

(declare-fun m!4991661 () Bool)

(assert (=> b!4368376 m!4991661))

(assert (=> b!4367859 d!1293297))

(declare-fun d!1293299 () Bool)

(declare-fun res!1797316 () Bool)

(declare-fun e!2718764 () Bool)

(assert (=> d!1293299 (=> res!1797316 e!2718764)))

(assert (=> d!1293299 (= res!1797316 (or (is-Nil!49080 (toList!3084 lt!1579810)) (is-Nil!49080 (t!356124 (toList!3084 lt!1579810)))))))

(assert (=> d!1293299 (= (noDuplicatedKeys!129 (toList!3084 lt!1579810)) e!2718764)))

(declare-fun b!4368381 () Bool)

(declare-fun e!2718765 () Bool)

(assert (=> b!4368381 (= e!2718764 e!2718765)))

(declare-fun res!1797317 () Bool)

(assert (=> b!4368381 (=> (not res!1797317) (not e!2718765))))

(assert (=> b!4368381 (= res!1797317 (not (containsKey!794 (t!356124 (toList!3084 lt!1579810)) (_1!27579 (h!54659 (toList!3084 lt!1579810))))))))

(declare-fun b!4368382 () Bool)

(assert (=> b!4368382 (= e!2718765 (noDuplicatedKeys!129 (t!356124 (toList!3084 lt!1579810))))))

(assert (= (and d!1293299 (not res!1797316)) b!4368381))

(assert (= (and b!4368381 res!1797317) b!4368382))

(declare-fun m!4991663 () Bool)

(assert (=> b!4368381 m!4991663))

(declare-fun m!4991665 () Bool)

(assert (=> b!4368382 m!4991665))

(assert (=> d!1293051 d!1293299))

(declare-fun bs!637555 () Bool)

(declare-fun d!1293301 () Bool)

(assert (= bs!637555 (and d!1293301 d!1293241)))

(declare-fun lambda!143222 () Int)

(assert (=> bs!637555 (not (= lambda!143222 lambda!143216))))

(declare-fun bs!637556 () Bool)

(assert (= bs!637556 (and d!1293301 d!1293249)))

(assert (=> bs!637556 (not (= lambda!143222 lambda!143220))))

(declare-fun bs!637557 () Bool)

(assert (= bs!637557 (and d!1293301 b!4368314)))

(assert (=> bs!637557 (not (= lambda!143222 lambda!143219))))

(declare-fun bs!637558 () Bool)

(assert (= bs!637558 (and d!1293301 b!4367978)))

(assert (=> bs!637558 (not (= lambda!143222 lambda!143147))))

(assert (=> bs!637557 (not (= lambda!143222 lambda!143218))))

(declare-fun bs!637559 () Bool)

(assert (= bs!637559 (and d!1293301 d!1292947)))

(assert (=> bs!637559 (= (= (_1!27580 (h!54660 (toList!3083 lm!1707))) hash!377) (= lambda!143222 lambda!143099))))

(declare-fun bs!637560 () Bool)

(assert (= bs!637560 (and d!1293301 d!1293075)))

(assert (=> bs!637560 (not (= lambda!143222 lambda!143149))))

(declare-fun bs!637561 () Bool)

(assert (= bs!637561 (and d!1293301 b!4368313)))

(assert (=> bs!637561 (not (= lambda!143222 lambda!143217))))

(declare-fun bs!637562 () Bool)

(assert (= bs!637562 (and d!1293301 b!4367977)))

(assert (=> bs!637562 (not (= lambda!143222 lambda!143146))))

(assert (=> bs!637558 (not (= lambda!143222 lambda!143148))))

(assert (=> d!1293301 true))

(assert (=> d!1293301 true))

(assert (=> d!1293301 (= (allKeysSameHash!508 (_2!27580 (h!54660 (toList!3083 lm!1707))) (_1!27580 (h!54660 (toList!3083 lm!1707))) hashF!1247) (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143222))))

(declare-fun bs!637563 () Bool)

(assert (= bs!637563 d!1293301))

(declare-fun m!4991667 () Bool)

(assert (=> bs!637563 m!4991667))

(assert (=> bs!637489 d!1293301))

(declare-fun d!1293303 () Bool)

(declare-fun res!1797318 () Bool)

(declare-fun e!2718766 () Bool)

(assert (=> d!1293303 (=> res!1797318 e!2718766)))

(assert (=> d!1293303 (= res!1797318 (and (is-Cons!49080 (t!356124 (t!356124 newBucket!200))) (= (_1!27579 (h!54659 (t!356124 (t!356124 newBucket!200)))) (_1!27579 (h!54659 newBucket!200)))))))

(assert (=> d!1293303 (= (containsKey!793 (t!356124 (t!356124 newBucket!200)) (_1!27579 (h!54659 newBucket!200))) e!2718766)))

(declare-fun b!4368383 () Bool)

(declare-fun e!2718767 () Bool)

(assert (=> b!4368383 (= e!2718766 e!2718767)))

(declare-fun res!1797319 () Bool)

(assert (=> b!4368383 (=> (not res!1797319) (not e!2718767))))

(assert (=> b!4368383 (= res!1797319 (is-Cons!49080 (t!356124 (t!356124 newBucket!200))))))

(declare-fun b!4368384 () Bool)

(assert (=> b!4368384 (= e!2718767 (containsKey!793 (t!356124 (t!356124 (t!356124 newBucket!200))) (_1!27579 (h!54659 newBucket!200))))))

(assert (= (and d!1293303 (not res!1797318)) b!4368383))

(assert (= (and b!4368383 res!1797319) b!4368384))

(declare-fun m!4991669 () Bool)

(assert (=> b!4368384 m!4991669))

(assert (=> b!4367868 d!1293303))

(assert (=> d!1293047 d!1293045))

(declare-fun d!1293305 () Bool)

(declare-fun res!1797320 () Bool)

(declare-fun e!2718768 () Bool)

(assert (=> d!1293305 (=> res!1797320 e!2718768)))

(assert (=> d!1293305 (= res!1797320 (is-Nil!49080 (t!356124 newBucket!200)))))

(assert (=> d!1293305 (= (forall!9220 (t!356124 newBucket!200) lambda!143099) e!2718768)))

(declare-fun b!4368385 () Bool)

(declare-fun e!2718769 () Bool)

(assert (=> b!4368385 (= e!2718768 e!2718769)))

(declare-fun res!1797321 () Bool)

(assert (=> b!4368385 (=> (not res!1797321) (not e!2718769))))

(assert (=> b!4368385 (= res!1797321 (dynLambda!20678 lambda!143099 (h!54659 (t!356124 newBucket!200))))))

(declare-fun b!4368386 () Bool)

(assert (=> b!4368386 (= e!2718769 (forall!9220 (t!356124 (t!356124 newBucket!200)) lambda!143099))))

(assert (= (and d!1293305 (not res!1797320)) b!4368385))

(assert (= (and b!4368385 res!1797321) b!4368386))

(declare-fun b_lambda!132673 () Bool)

(assert (=> (not b_lambda!132673) (not b!4368385)))

(declare-fun m!4991671 () Bool)

(assert (=> b!4368385 m!4991671))

(declare-fun m!4991673 () Bool)

(assert (=> b!4368386 m!4991673))

(assert (=> b!4367909 d!1293305))

(declare-fun d!1293307 () Bool)

(declare-fun res!1797322 () Bool)

(declare-fun e!2718770 () Bool)

(assert (=> d!1293307 (=> res!1797322 e!2718770)))

(assert (=> d!1293307 (= res!1797322 (and (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (= (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(assert (=> d!1293307 (= (containsKey!793 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) e!2718770)))

(declare-fun b!4368387 () Bool)

(declare-fun e!2718771 () Bool)

(assert (=> b!4368387 (= e!2718770 e!2718771)))

(declare-fun res!1797323 () Bool)

(assert (=> b!4368387 (=> (not res!1797323) (not e!2718771))))

(assert (=> b!4368387 (= res!1797323 (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun b!4368388 () Bool)

(assert (=> b!4368388 (= e!2718771 (containsKey!793 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293307 (not res!1797322)) b!4368387))

(assert (= (and b!4368387 res!1797323) b!4368388))

(declare-fun m!4991675 () Bool)

(assert (=> b!4368388 m!4991675))

(assert (=> b!4368019 d!1293307))

(declare-fun d!1293309 () Bool)

(declare-fun lt!1580134 () Bool)

(assert (=> d!1293309 (= lt!1580134 (set.member lt!1579698 (content!7777 (t!356125 (toList!3083 lt!1579755)))))))

(declare-fun e!2718773 () Bool)

(assert (=> d!1293309 (= lt!1580134 e!2718773)))

(declare-fun res!1797324 () Bool)

(assert (=> d!1293309 (=> (not res!1797324) (not e!2718773))))

(assert (=> d!1293309 (= res!1797324 (is-Cons!49081 (t!356125 (toList!3083 lt!1579755))))))

(assert (=> d!1293309 (= (contains!11366 (t!356125 (toList!3083 lt!1579755)) lt!1579698) lt!1580134)))

(declare-fun b!4368389 () Bool)

(declare-fun e!2718772 () Bool)

(assert (=> b!4368389 (= e!2718773 e!2718772)))

(declare-fun res!1797325 () Bool)

(assert (=> b!4368389 (=> res!1797325 e!2718772)))

(assert (=> b!4368389 (= res!1797325 (= (h!54660 (t!356125 (toList!3083 lt!1579755))) lt!1579698))))

(declare-fun b!4368390 () Bool)

(assert (=> b!4368390 (= e!2718772 (contains!11366 (t!356125 (t!356125 (toList!3083 lt!1579755))) lt!1579698))))

(assert (= (and d!1293309 res!1797324) b!4368389))

(assert (= (and b!4368389 (not res!1797325)) b!4368390))

(declare-fun m!4991677 () Bool)

(assert (=> d!1293309 m!4991677))

(declare-fun m!4991679 () Bool)

(assert (=> d!1293309 m!4991679))

(declare-fun m!4991681 () Bool)

(assert (=> b!4368390 m!4991681))

(assert (=> b!4367933 d!1293309))

(declare-fun d!1293311 () Bool)

(assert (=> d!1293311 (= (invariantList!704 (toList!3084 lt!1579935)) (noDuplicatedKeys!129 (toList!3084 lt!1579935)))))

(declare-fun bs!637564 () Bool)

(assert (= bs!637564 d!1293311))

(declare-fun m!4991683 () Bool)

(assert (=> bs!637564 m!4991683))

(assert (=> d!1293077 d!1293311))

(declare-fun d!1293313 () Bool)

(declare-fun res!1797326 () Bool)

(declare-fun e!2718774 () Bool)

(assert (=> d!1293313 (=> res!1797326 e!2718774)))

(assert (=> d!1293313 (= res!1797326 (is-Nil!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293313 (= (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143150) e!2718774)))

(declare-fun b!4368391 () Bool)

(declare-fun e!2718775 () Bool)

(assert (=> b!4368391 (= e!2718774 e!2718775)))

(declare-fun res!1797327 () Bool)

(assert (=> b!4368391 (=> (not res!1797327) (not e!2718775))))

(assert (=> b!4368391 (= res!1797327 (dynLambda!20676 lambda!143150 (h!54660 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun b!4368392 () Bool)

(assert (=> b!4368392 (= e!2718775 (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143150))))

(assert (= (and d!1293313 (not res!1797326)) b!4368391))

(assert (= (and b!4368391 res!1797327) b!4368392))

(declare-fun b_lambda!132675 () Bool)

(assert (=> (not b_lambda!132675) (not b!4368391)))

(declare-fun m!4991685 () Bool)

(assert (=> b!4368391 m!4991685))

(declare-fun m!4991687 () Bool)

(assert (=> b!4368392 m!4991687))

(assert (=> d!1293077 d!1293313))

(assert (=> b!4367966 d!1293267))

(declare-fun d!1293315 () Bool)

(declare-fun c!742709 () Bool)

(assert (=> d!1293315 (= c!742709 (and (is-Cons!49081 (t!356125 lt!1579756)) (= (_1!27580 (h!54660 (t!356125 lt!1579756))) (_1!27580 lt!1579698))))))

(declare-fun e!2718776 () Option!10521)

(assert (=> d!1293315 (= (getValueByKey!507 (t!356125 lt!1579756) (_1!27580 lt!1579698)) e!2718776)))

(declare-fun b!4368393 () Bool)

(assert (=> b!4368393 (= e!2718776 (Some!10520 (_2!27580 (h!54660 (t!356125 lt!1579756)))))))

(declare-fun b!4368396 () Bool)

(declare-fun e!2718777 () Option!10521)

(assert (=> b!4368396 (= e!2718777 None!10520)))

(declare-fun b!4368394 () Bool)

(assert (=> b!4368394 (= e!2718776 e!2718777)))

(declare-fun c!742710 () Bool)

(assert (=> b!4368394 (= c!742710 (and (is-Cons!49081 (t!356125 lt!1579756)) (not (= (_1!27580 (h!54660 (t!356125 lt!1579756))) (_1!27580 lt!1579698)))))))

(declare-fun b!4368395 () Bool)

(assert (=> b!4368395 (= e!2718777 (getValueByKey!507 (t!356125 (t!356125 lt!1579756)) (_1!27580 lt!1579698)))))

(assert (= (and d!1293315 c!742709) b!4368393))

(assert (= (and d!1293315 (not c!742709)) b!4368394))

(assert (= (and b!4368394 c!742710) b!4368395))

(assert (= (and b!4368394 (not c!742710)) b!4368396))

(declare-fun m!4991689 () Bool)

(assert (=> b!4368395 m!4991689))

(assert (=> b!4368029 d!1293315))

(assert (=> d!1293023 d!1293025))

(assert (=> d!1293023 d!1293027))

(declare-fun d!1293317 () Bool)

(assert (=> d!1293317 (isDefined!7816 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))

(assert (=> d!1293317 true))

(declare-fun _$29!537 () Unit!73210)

(assert (=> d!1293317 (= (choose!27166 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) _$29!537)))

(declare-fun bs!637565 () Bool)

(assert (= bs!637565 d!1293317))

(assert (=> bs!637565 m!4990895))

(assert (=> bs!637565 m!4990895))

(assert (=> bs!637565 m!4990897))

(assert (=> d!1293023 d!1293317))

(assert (=> d!1293023 d!1293263))

(declare-fun d!1293319 () Bool)

(declare-fun res!1797328 () Bool)

(declare-fun e!2718778 () Bool)

(assert (=> d!1293319 (=> res!1797328 e!2718778)))

(assert (=> d!1293319 (= res!1797328 (not (is-Cons!49080 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(assert (=> d!1293319 (= (noDuplicateKeys!550 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))) e!2718778)))

(declare-fun b!4368397 () Bool)

(declare-fun e!2718779 () Bool)

(assert (=> b!4368397 (= e!2718778 e!2718779)))

(declare-fun res!1797329 () Bool)

(assert (=> b!4368397 (=> (not res!1797329) (not e!2718779))))

(assert (=> b!4368397 (= res!1797329 (not (containsKey!793 (t!356124 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))) (_1!27579 (h!54659 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))))))

(declare-fun b!4368398 () Bool)

(assert (=> b!4368398 (= e!2718779 (noDuplicateKeys!550 (t!356124 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(assert (= (and d!1293319 (not res!1797328)) b!4368397))

(assert (= (and b!4368397 res!1797329) b!4368398))

(declare-fun m!4991691 () Bool)

(assert (=> b!4368397 m!4991691))

(declare-fun m!4991693 () Bool)

(assert (=> b!4368398 m!4991693))

(assert (=> b!4367862 d!1293319))

(declare-fun d!1293321 () Bool)

(declare-fun res!1797330 () Bool)

(declare-fun e!2718780 () Bool)

(assert (=> d!1293321 (=> res!1797330 e!2718780)))

(assert (=> d!1293321 (= res!1797330 (not (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))))))

(assert (=> d!1293321 (= (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))) e!2718780)))

(declare-fun b!4368399 () Bool)

(declare-fun e!2718781 () Bool)

(assert (=> b!4368399 (= e!2718780 e!2718781)))

(declare-fun res!1797331 () Bool)

(assert (=> b!4368399 (=> (not res!1797331) (not e!2718781))))

(assert (=> b!4368399 (= res!1797331 (not (containsKey!793 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))) (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))))))))

(declare-fun b!4368400 () Bool)

(assert (=> b!4368400 (= e!2718781 (noDuplicateKeys!550 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))))))

(assert (= (and d!1293321 (not res!1797330)) b!4368399))

(assert (= (and b!4368399 res!1797331) b!4368400))

(declare-fun m!4991695 () Bool)

(assert (=> b!4368399 m!4991695))

(declare-fun m!4991697 () Bool)

(assert (=> b!4368400 m!4991697))

(assert (=> b!4367937 d!1293321))

(declare-fun d!1293323 () Bool)

(declare-fun lt!1580135 () Bool)

(assert (=> d!1293323 (= lt!1580135 (set.member (tuple2!48573 hash!377 lt!1579694) (content!7777 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun e!2718783 () Bool)

(assert (=> d!1293323 (= lt!1580135 e!2718783)))

(declare-fun res!1797332 () Bool)

(assert (=> d!1293323 (=> (not res!1797332) (not e!2718783))))

(assert (=> d!1293323 (= res!1797332 (is-Cons!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293323 (= (contains!11366 (t!356125 (toList!3083 lm!1707)) (tuple2!48573 hash!377 lt!1579694)) lt!1580135)))

(declare-fun b!4368401 () Bool)

(declare-fun e!2718782 () Bool)

(assert (=> b!4368401 (= e!2718783 e!2718782)))

(declare-fun res!1797333 () Bool)

(assert (=> b!4368401 (=> res!1797333 e!2718782)))

(assert (=> b!4368401 (= res!1797333 (= (h!54660 (t!356125 (toList!3083 lm!1707))) (tuple2!48573 hash!377 lt!1579694)))))

(declare-fun b!4368402 () Bool)

(assert (=> b!4368402 (= e!2718782 (contains!11366 (t!356125 (t!356125 (toList!3083 lm!1707))) (tuple2!48573 hash!377 lt!1579694)))))

(assert (= (and d!1293323 res!1797332) b!4368401))

(assert (= (and b!4368401 (not res!1797333)) b!4368402))

(assert (=> d!1293323 m!4991005))

(declare-fun m!4991699 () Bool)

(assert (=> d!1293323 m!4991699))

(declare-fun m!4991701 () Bool)

(assert (=> b!4368402 m!4991701))

(assert (=> b!4367935 d!1293323))

(declare-fun d!1293325 () Bool)

(assert (=> d!1293325 (isDefined!7815 (getValueByKey!507 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(declare-fun lt!1580136 () Unit!73210)

(assert (=> d!1293325 (= lt!1580136 (choose!27169 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(declare-fun e!2718784 () Bool)

(assert (=> d!1293325 e!2718784))

(declare-fun res!1797334 () Bool)

(assert (=> d!1293325 (=> (not res!1797334) (not e!2718784))))

(assert (=> d!1293325 (= res!1797334 (isStrictlySorted!131 (toList!3083 lt!1579755)))))

(assert (=> d!1293325 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!3083 lt!1579755) (_1!27580 lt!1579698)) lt!1580136)))

(declare-fun b!4368403 () Bool)

(assert (=> b!4368403 (= e!2718784 (containsKey!792 (toList!3083 lt!1579755) (_1!27580 lt!1579698)))))

(assert (= (and d!1293325 res!1797334) b!4368403))

(assert (=> d!1293325 m!4990863))

(assert (=> d!1293325 m!4990863))

(assert (=> d!1293325 m!4991215))

(declare-fun m!4991703 () Bool)

(assert (=> d!1293325 m!4991703))

(declare-fun m!4991705 () Bool)

(assert (=> d!1293325 m!4991705))

(assert (=> b!4368403 m!4991211))

(assert (=> b!4368024 d!1293325))

(assert (=> b!4368024 d!1293287))

(assert (=> b!4368024 d!1293035))

(assert (=> d!1293091 d!1293059))

(assert (=> d!1293091 d!1293061))

(declare-fun d!1293327 () Bool)

(assert (=> d!1293327 (isDefined!7815 (getValueByKey!507 (toList!3083 lm!1707) hash!377))))

(assert (=> d!1293327 true))

(declare-fun _$13!1448 () Unit!73210)

(assert (=> d!1293327 (= (choose!27169 (toList!3083 lm!1707) hash!377) _$13!1448)))

(declare-fun bs!637566 () Bool)

(assert (= bs!637566 d!1293327))

(assert (=> bs!637566 m!4990801))

(assert (=> bs!637566 m!4990801))

(assert (=> bs!637566 m!4990803))

(assert (=> d!1293091 d!1293327))

(assert (=> d!1293091 d!1293019))

(declare-fun d!1293329 () Bool)

(declare-fun lt!1580137 () Bool)

(assert (=> d!1293329 (= lt!1580137 (set.member (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698)) (content!7777 lt!1579977)))))

(declare-fun e!2718786 () Bool)

(assert (=> d!1293329 (= lt!1580137 e!2718786)))

(declare-fun res!1797335 () Bool)

(assert (=> d!1293329 (=> (not res!1797335) (not e!2718786))))

(assert (=> d!1293329 (= res!1797335 (is-Cons!49081 lt!1579977))))

(assert (=> d!1293329 (= (contains!11366 lt!1579977 (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))) lt!1580137)))

(declare-fun b!4368404 () Bool)

(declare-fun e!2718785 () Bool)

(assert (=> b!4368404 (= e!2718786 e!2718785)))

(declare-fun res!1797336 () Bool)

(assert (=> b!4368404 (=> res!1797336 e!2718785)))

(assert (=> b!4368404 (= res!1797336 (= (h!54660 lt!1579977) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(declare-fun b!4368405 () Bool)

(assert (=> b!4368405 (= e!2718785 (contains!11366 (t!356125 lt!1579977) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(assert (= (and d!1293329 res!1797335) b!4368404))

(assert (= (and b!4368404 (not res!1797336)) b!4368405))

(declare-fun m!4991707 () Bool)

(assert (=> d!1293329 m!4991707))

(declare-fun m!4991709 () Bool)

(assert (=> d!1293329 m!4991709))

(declare-fun m!4991711 () Bool)

(assert (=> b!4368405 m!4991711))

(assert (=> b!4368081 d!1293329))

(declare-fun d!1293331 () Bool)

(declare-fun c!742711 () Bool)

(assert (=> d!1293331 (= c!742711 (is-Nil!49084 e!2718346))))

(declare-fun e!2718787 () (Set K!10443))

(assert (=> d!1293331 (= (content!7779 e!2718346) e!2718787)))

(declare-fun b!4368406 () Bool)

(assert (=> b!4368406 (= e!2718787 (as set.empty (Set K!10443)))))

(declare-fun b!4368407 () Bool)

(assert (=> b!4368407 (= e!2718787 (set.union (set.insert (h!54665 e!2718346) (as set.empty (Set K!10443))) (content!7779 (t!356128 e!2718346))))))

(assert (= (and d!1293331 c!742711) b!4368406))

(assert (= (and d!1293331 (not c!742711)) b!4368407))

(declare-fun m!4991713 () Bool)

(assert (=> b!4368407 m!4991713))

(declare-fun m!4991715 () Bool)

(assert (=> b!4368407 m!4991715))

(assert (=> d!1293081 d!1293331))

(declare-fun d!1293333 () Bool)

(declare-fun lt!1580138 () Bool)

(assert (=> d!1293333 (= lt!1580138 (set.member (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698)) (content!7777 lt!1579756)))))

(declare-fun e!2718789 () Bool)

(assert (=> d!1293333 (= lt!1580138 e!2718789)))

(declare-fun res!1797337 () Bool)

(assert (=> d!1293333 (=> (not res!1797337) (not e!2718789))))

(assert (=> d!1293333 (= res!1797337 (is-Cons!49081 lt!1579756))))

(assert (=> d!1293333 (= (contains!11366 lt!1579756 (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))) lt!1580138)))

(declare-fun b!4368408 () Bool)

(declare-fun e!2718788 () Bool)

(assert (=> b!4368408 (= e!2718789 e!2718788)))

(declare-fun res!1797338 () Bool)

(assert (=> b!4368408 (=> res!1797338 e!2718788)))

(assert (=> b!4368408 (= res!1797338 (= (h!54660 lt!1579756) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(declare-fun b!4368409 () Bool)

(assert (=> b!4368409 (= e!2718788 (contains!11366 (t!356125 lt!1579756) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(assert (= (and d!1293333 res!1797337) b!4368408))

(assert (= (and b!4368408 (not res!1797338)) b!4368409))

(declare-fun m!4991717 () Bool)

(assert (=> d!1293333 m!4991717))

(declare-fun m!4991719 () Bool)

(assert (=> d!1293333 m!4991719))

(declare-fun m!4991721 () Bool)

(assert (=> b!4368409 m!4991721))

(assert (=> b!4368036 d!1293333))

(declare-fun d!1293335 () Bool)

(declare-fun res!1797339 () Bool)

(declare-fun e!2718790 () Bool)

(assert (=> d!1293335 (=> res!1797339 e!2718790)))

(assert (=> d!1293335 (= res!1797339 (not (is-Cons!49080 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(assert (=> d!1293335 (= (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))) e!2718790)))

(declare-fun b!4368410 () Bool)

(declare-fun e!2718791 () Bool)

(assert (=> b!4368410 (= e!2718790 e!2718791)))

(declare-fun res!1797340 () Bool)

(assert (=> b!4368410 (=> (not res!1797340) (not e!2718791))))

(assert (=> b!4368410 (= res!1797340 (not (containsKey!793 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))))

(declare-fun b!4368411 () Bool)

(assert (=> b!4368411 (= e!2718791 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293335 (not res!1797339)) b!4368410))

(assert (= (and b!4368410 res!1797340) b!4368411))

(declare-fun m!4991723 () Bool)

(assert (=> b!4368410 m!4991723))

(declare-fun m!4991725 () Bool)

(assert (=> b!4368411 m!4991725))

(assert (=> bs!637487 d!1293335))

(declare-fun d!1293337 () Bool)

(declare-fun res!1797341 () Bool)

(declare-fun e!2718792 () Bool)

(assert (=> d!1293337 (=> res!1797341 e!2718792)))

(assert (=> d!1293337 (= res!1797341 (and (is-Cons!49081 lt!1579977) (= (_1!27580 (h!54660 lt!1579977)) (_1!27580 lt!1579698))))))

(assert (=> d!1293337 (= (containsKey!792 lt!1579977 (_1!27580 lt!1579698)) e!2718792)))

(declare-fun b!4368412 () Bool)

(declare-fun e!2718793 () Bool)

(assert (=> b!4368412 (= e!2718792 e!2718793)))

(declare-fun res!1797342 () Bool)

(assert (=> b!4368412 (=> (not res!1797342) (not e!2718793))))

(assert (=> b!4368412 (= res!1797342 (and (or (not (is-Cons!49081 lt!1579977)) (bvsle (_1!27580 (h!54660 lt!1579977)) (_1!27580 lt!1579698))) (is-Cons!49081 lt!1579977) (bvslt (_1!27580 (h!54660 lt!1579977)) (_1!27580 lt!1579698))))))

(declare-fun b!4368413 () Bool)

(assert (=> b!4368413 (= e!2718793 (containsKey!792 (t!356125 lt!1579977) (_1!27580 lt!1579698)))))

(assert (= (and d!1293337 (not res!1797341)) b!4368412))

(assert (= (and b!4368412 res!1797342) b!4368413))

(declare-fun m!4991727 () Bool)

(assert (=> b!4368413 m!4991727))

(assert (=> b!4368083 d!1293337))

(declare-fun d!1293339 () Bool)

(declare-fun res!1797343 () Bool)

(declare-fun e!2718794 () Bool)

(assert (=> d!1293339 (=> res!1797343 e!2718794)))

(assert (=> d!1293339 (= res!1797343 (and (is-Cons!49080 (t!356124 lt!1579738)) (= (_1!27579 (h!54659 (t!356124 lt!1579738))) key!3918)))))

(assert (=> d!1293339 (= (containsKey!793 (t!356124 lt!1579738) key!3918) e!2718794)))

(declare-fun b!4368414 () Bool)

(declare-fun e!2718795 () Bool)

(assert (=> b!4368414 (= e!2718794 e!2718795)))

(declare-fun res!1797344 () Bool)

(assert (=> b!4368414 (=> (not res!1797344) (not e!2718795))))

(assert (=> b!4368414 (= res!1797344 (is-Cons!49080 (t!356124 lt!1579738)))))

(declare-fun b!4368415 () Bool)

(assert (=> b!4368415 (= e!2718795 (containsKey!793 (t!356124 (t!356124 lt!1579738)) key!3918))))

(assert (= (and d!1293339 (not res!1797343)) b!4368414))

(assert (= (and b!4368414 res!1797344) b!4368415))

(declare-fun m!4991729 () Bool)

(assert (=> b!4368415 m!4991729))

(assert (=> b!4367964 d!1293339))

(declare-fun d!1293341 () Bool)

(declare-fun res!1797345 () Bool)

(declare-fun e!2718796 () Bool)

(assert (=> d!1293341 (=> res!1797345 e!2718796)))

(assert (=> d!1293341 (= res!1797345 (is-Nil!49081 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))

(assert (=> d!1293341 (= (forall!9218 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))) lambda!143082) e!2718796)))

(declare-fun b!4368416 () Bool)

(declare-fun e!2718797 () Bool)

(assert (=> b!4368416 (= e!2718796 e!2718797)))

(declare-fun res!1797346 () Bool)

(assert (=> b!4368416 (=> (not res!1797346) (not e!2718797))))

(assert (=> b!4368416 (= res!1797346 (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))))))

(declare-fun b!4368417 () Bool)

(assert (=> b!4368417 (= e!2718797 (forall!9218 (t!356125 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))) lambda!143082))))

(assert (= (and d!1293341 (not res!1797345)) b!4368416))

(assert (= (and b!4368416 res!1797346) b!4368417))

(declare-fun b_lambda!132677 () Bool)

(assert (=> (not b_lambda!132677) (not b!4368416)))

(declare-fun m!4991731 () Bool)

(assert (=> b!4368416 m!4991731))

(declare-fun m!4991733 () Bool)

(assert (=> b!4368417 m!4991733))

(assert (=> b!4367957 d!1293341))

(assert (=> bs!637485 d!1293089))

(declare-fun d!1293343 () Bool)

(declare-fun res!1797347 () Bool)

(declare-fun e!2718798 () Bool)

(assert (=> d!1293343 (=> res!1797347 e!2718798)))

(assert (=> d!1293343 (= res!1797347 (not (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> d!1293343 (= (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) e!2718798)))

(declare-fun b!4368418 () Bool)

(declare-fun e!2718799 () Bool)

(assert (=> b!4368418 (= e!2718798 e!2718799)))

(declare-fun res!1797348 () Bool)

(assert (=> b!4368418 (=> (not res!1797348) (not e!2718799))))

(assert (=> b!4368418 (= res!1797348 (not (containsKey!793 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))))

(declare-fun b!4368419 () Bool)

(assert (=> b!4368419 (= e!2718799 (noDuplicateKeys!550 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293343 (not res!1797347)) b!4368418))

(assert (= (and b!4368418 res!1797348) b!4368419))

(declare-fun m!4991735 () Bool)

(assert (=> b!4368418 m!4991735))

(declare-fun m!4991737 () Bool)

(assert (=> b!4368419 m!4991737))

(assert (=> b!4368020 d!1293343))

(declare-fun d!1293345 () Bool)

(assert (=> d!1293345 true))

(assert (=> d!1293345 true))

(declare-fun res!1797351 () (_ BitVec 64))

(assert (=> d!1293345 (= (choose!27165 hashF!1247 key!3918) res!1797351)))

(assert (=> d!1293021 d!1293345))

(declare-fun d!1293347 () Bool)

(assert (=> d!1293347 (dynLambda!20681 lambda!143159 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun lt!1580141 () Unit!73210)

(declare-fun choose!27178 (List!49208 Int K!10443) Unit!73210)

(assert (=> d!1293347 (= lt!1580141 (choose!27178 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lambda!143159 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun e!2718802 () Bool)

(assert (=> d!1293347 e!2718802))

(declare-fun res!1797354 () Bool)

(assert (=> d!1293347 (=> (not res!1797354) (not e!2718802))))

(assert (=> d!1293347 (= res!1797354 (forall!9222 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lambda!143159))))

(assert (=> d!1293347 (= (forallContained!1859 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lambda!143159 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) lt!1580141)))

(declare-fun b!4368422 () Bool)

(assert (=> b!4368422 (= e!2718802 (contains!11372 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293347 res!1797354) b!4368422))

(declare-fun b_lambda!132679 () Bool)

(assert (=> (not b_lambda!132679) (not d!1293347)))

(declare-fun m!4991739 () Bool)

(assert (=> d!1293347 m!4991739))

(assert (=> d!1293347 m!4991169))

(declare-fun m!4991741 () Bool)

(assert (=> d!1293347 m!4991741))

(assert (=> d!1293347 m!4991169))

(declare-fun m!4991743 () Bool)

(assert (=> d!1293347 m!4991743))

(assert (=> b!4368422 m!4991169))

(assert (=> b!4368422 m!4991177))

(assert (=> b!4368011 d!1293347))

(declare-fun bs!637567 () Bool)

(declare-fun b!4368430 () Bool)

(assert (= bs!637567 (and b!4368430 b!4367882)))

(declare-fun lambda!143223 () Int)

(assert (=> bs!637567 (= (= (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143223 lambda!143116))))

(declare-fun bs!637568 () Bool)

(assert (= bs!637568 (and b!4368430 b!4368011)))

(assert (=> bs!637568 (= (= (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143223 lambda!143159))))

(declare-fun bs!637569 () Bool)

(assert (= bs!637569 (and b!4368430 b!4368007)))

(assert (=> bs!637569 (= (= (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143223 lambda!143160))))

(declare-fun bs!637570 () Bool)

(assert (= bs!637570 (and b!4368430 b!4368009)))

(assert (=> bs!637570 (= (= (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143223 lambda!143161))))

(assert (=> b!4368430 true))

(declare-fun bs!637571 () Bool)

(declare-fun b!4368426 () Bool)

(assert (= bs!637571 (and b!4368426 b!4368007)))

(declare-fun lambda!143224 () Int)

(assert (=> bs!637571 (= (= (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143224 lambda!143160))))

(declare-fun bs!637572 () Bool)

(assert (= bs!637572 (and b!4368426 b!4368011)))

(assert (=> bs!637572 (= (= (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143224 lambda!143159))))

(declare-fun bs!637573 () Bool)

(assert (= bs!637573 (and b!4368426 b!4367882)))

(assert (=> bs!637573 (= (= (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143224 lambda!143116))))

(declare-fun bs!637574 () Bool)

(assert (= bs!637574 (and b!4368426 b!4368009)))

(assert (=> bs!637574 (= (= (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143224 lambda!143161))))

(declare-fun bs!637575 () Bool)

(assert (= bs!637575 (and b!4368426 b!4368430)))

(assert (=> bs!637575 (= (= (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143224 lambda!143223))))

(assert (=> b!4368426 true))

(declare-fun bs!637576 () Bool)

(declare-fun b!4368428 () Bool)

(assert (= bs!637576 (and b!4368428 b!4368007)))

(declare-fun lambda!143225 () Int)

(assert (=> bs!637576 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143225 lambda!143160))))

(declare-fun bs!637577 () Bool)

(assert (= bs!637577 (and b!4368428 b!4368011)))

(assert (=> bs!637577 (= lambda!143225 lambda!143159)))

(declare-fun bs!637578 () Bool)

(assert (= bs!637578 (and b!4368428 b!4367882)))

(assert (=> bs!637578 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143225 lambda!143116))))

(declare-fun bs!637579 () Bool)

(assert (= bs!637579 (and b!4368428 b!4368009)))

(assert (=> bs!637579 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143225 lambda!143161))))

(declare-fun bs!637580 () Bool)

(assert (= bs!637580 (and b!4368428 b!4368426)))

(assert (=> bs!637580 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))) (= lambda!143225 lambda!143224))))

(declare-fun bs!637581 () Bool)

(assert (= bs!637581 (and b!4368428 b!4368430)))

(assert (=> bs!637581 (= (= (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143225 lambda!143223))))

(assert (=> b!4368428 true))

(declare-fun bs!637582 () Bool)

(declare-fun b!4368423 () Bool)

(assert (= bs!637582 (and b!4368423 b!4367883)))

(declare-fun lambda!143226 () Int)

(assert (=> bs!637582 (= lambda!143226 lambda!143117)))

(declare-fun bs!637583 () Bool)

(assert (= bs!637583 (and b!4368423 b!4368004)))

(assert (=> bs!637583 (= lambda!143226 lambda!143162)))

(declare-fun e!2718805 () Bool)

(declare-fun lt!1580147 () List!49208)

(assert (=> b!4368423 (= e!2718805 (= (content!7779 lt!1580147) (content!7779 (map!10685 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lambda!143226))))))

(declare-fun b!4368424 () Bool)

(assert (=> b!4368424 false))

(declare-fun e!2718806 () Unit!73210)

(declare-fun Unit!73264 () Unit!73210)

(assert (=> b!4368424 (= e!2718806 Unit!73264)))

(declare-fun b!4368425 () Bool)

(declare-fun e!2718803 () List!49208)

(assert (=> b!4368425 (= e!2718803 Nil!49084)))

(assert (=> b!4368426 (= e!2718803 (Cons!49084 (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (getKeysList!152 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun c!742714 () Bool)

(assert (=> b!4368426 (= c!742714 (containsKey!794 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun lt!1580144 () Unit!73210)

(assert (=> b!4368426 (= lt!1580144 e!2718806)))

(declare-fun c!742713 () Bool)

(assert (=> b!4368426 (= c!742713 (contains!11372 (getKeysList!152 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun lt!1580143 () Unit!73210)

(declare-fun e!2718804 () Unit!73210)

(assert (=> b!4368426 (= lt!1580143 e!2718804)))

(declare-fun lt!1580145 () List!49208)

(assert (=> b!4368426 (= lt!1580145 (getKeysList!152 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580146 () Unit!73210)

(assert (=> b!4368426 (= lt!1580146 (lemmaForallContainsAddHeadPreserves!35 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lt!1580145 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (=> b!4368426 (forall!9222 lt!1580145 lambda!143224)))

(declare-fun lt!1580148 () Unit!73210)

(assert (=> b!4368426 (= lt!1580148 lt!1580146)))

(declare-fun d!1293349 () Bool)

(assert (=> d!1293349 e!2718805))

(declare-fun res!1797356 () Bool)

(assert (=> d!1293349 (=> (not res!1797356) (not e!2718805))))

(assert (=> d!1293349 (= res!1797356 (noDuplicate!613 lt!1580147))))

(assert (=> d!1293349 (= lt!1580147 e!2718803)))

(declare-fun c!742712 () Bool)

(assert (=> d!1293349 (= c!742712 (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> d!1293349 (invariantList!704 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293349 (= (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lt!1580147)))

(declare-fun b!4368427 () Bool)

(declare-fun Unit!73265 () Unit!73210)

(assert (=> b!4368427 (= e!2718806 Unit!73265)))

(declare-fun res!1797357 () Bool)

(assert (=> b!4368428 (=> (not res!1797357) (not e!2718805))))

(assert (=> b!4368428 (= res!1797357 (forall!9222 lt!1580147 lambda!143225))))

(declare-fun b!4368429 () Bool)

(declare-fun Unit!73266 () Unit!73210)

(assert (=> b!4368429 (= e!2718804 Unit!73266)))

(assert (=> b!4368430 false))

(declare-fun lt!1580142 () Unit!73210)

(assert (=> b!4368430 (= lt!1580142 (forallContained!1859 (getKeysList!152 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) lambda!143223 (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun Unit!73267 () Unit!73210)

(assert (=> b!4368430 (= e!2718804 Unit!73267)))

(declare-fun b!4368431 () Bool)

(declare-fun res!1797355 () Bool)

(assert (=> b!4368431 (=> (not res!1797355) (not e!2718805))))

(assert (=> b!4368431 (= res!1797355 (= (length!82 lt!1580147) (length!83 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293349 c!742712) b!4368426))

(assert (= (and d!1293349 (not c!742712)) b!4368425))

(assert (= (and b!4368426 c!742714) b!4368424))

(assert (= (and b!4368426 (not c!742714)) b!4368427))

(assert (= (and b!4368426 c!742713) b!4368430))

(assert (= (and b!4368426 (not c!742713)) b!4368429))

(assert (= (and d!1293349 res!1797356) b!4368431))

(assert (= (and b!4368431 res!1797355) b!4368428))

(assert (= (and b!4368428 res!1797357) b!4368423))

(declare-fun m!4991745 () Bool)

(assert (=> b!4368426 m!4991745))

(declare-fun m!4991747 () Bool)

(assert (=> b!4368426 m!4991747))

(declare-fun m!4991749 () Bool)

(assert (=> b!4368426 m!4991749))

(declare-fun m!4991751 () Bool)

(assert (=> b!4368426 m!4991751))

(assert (=> b!4368426 m!4991745))

(declare-fun m!4991753 () Bool)

(assert (=> b!4368426 m!4991753))

(assert (=> b!4368430 m!4991745))

(assert (=> b!4368430 m!4991745))

(declare-fun m!4991755 () Bool)

(assert (=> b!4368430 m!4991755))

(declare-fun m!4991757 () Bool)

(assert (=> d!1293349 m!4991757))

(declare-fun m!4991759 () Bool)

(assert (=> d!1293349 m!4991759))

(declare-fun m!4991761 () Bool)

(assert (=> b!4368431 m!4991761))

(declare-fun m!4991763 () Bool)

(assert (=> b!4368431 m!4991763))

(declare-fun m!4991765 () Bool)

(assert (=> b!4368428 m!4991765))

(declare-fun m!4991767 () Bool)

(assert (=> b!4368423 m!4991767))

(declare-fun m!4991769 () Bool)

(assert (=> b!4368423 m!4991769))

(assert (=> b!4368423 m!4991769))

(declare-fun m!4991771 () Bool)

(assert (=> b!4368423 m!4991771))

(assert (=> b!4368011 d!1293349))

(declare-fun d!1293351 () Bool)

(declare-fun c!742715 () Bool)

(assert (=> d!1293351 (= c!742715 (and (is-Cons!49081 (t!356125 (toList!3083 lt!1579755))) (= (_1!27580 (h!54660 (t!356125 (toList!3083 lt!1579755)))) (_1!27580 lt!1579698))))))

(declare-fun e!2718807 () Option!10521)

(assert (=> d!1293351 (= (getValueByKey!507 (t!356125 (toList!3083 lt!1579755)) (_1!27580 lt!1579698)) e!2718807)))

(declare-fun b!4368432 () Bool)

(assert (=> b!4368432 (= e!2718807 (Some!10520 (_2!27580 (h!54660 (t!356125 (toList!3083 lt!1579755))))))))

(declare-fun b!4368435 () Bool)

(declare-fun e!2718808 () Option!10521)

(assert (=> b!4368435 (= e!2718808 None!10520)))

(declare-fun b!4368433 () Bool)

(assert (=> b!4368433 (= e!2718807 e!2718808)))

(declare-fun c!742716 () Bool)

(assert (=> b!4368433 (= c!742716 (and (is-Cons!49081 (t!356125 (toList!3083 lt!1579755))) (not (= (_1!27580 (h!54660 (t!356125 (toList!3083 lt!1579755)))) (_1!27580 lt!1579698)))))))

(declare-fun b!4368434 () Bool)

(assert (=> b!4368434 (= e!2718808 (getValueByKey!507 (t!356125 (t!356125 (toList!3083 lt!1579755))) (_1!27580 lt!1579698)))))

(assert (= (and d!1293351 c!742715) b!4368432))

(assert (= (and d!1293351 (not c!742715)) b!4368433))

(assert (= (and b!4368433 c!742716) b!4368434))

(assert (= (and b!4368433 (not c!742716)) b!4368435))

(declare-fun m!4991773 () Bool)

(assert (=> b!4368434 m!4991773))

(assert (=> b!4367922 d!1293351))

(declare-fun d!1293353 () Bool)

(assert (=> d!1293353 (= (isEmpty!28232 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)) (not (is-Some!10521 (getValueByKey!508 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918))))))

(assert (=> d!1293025 d!1293353))

(declare-fun d!1293355 () Bool)

(declare-fun c!742717 () Bool)

(assert (=> d!1293355 (= c!742717 (and (is-Cons!49081 (toList!3083 lt!1579870)) (= (_1!27580 (h!54660 (toList!3083 lt!1579870))) (_1!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun e!2718809 () Option!10521)

(assert (=> d!1293355 (= (getValueByKey!507 (toList!3083 lt!1579870) (_1!27580 (tuple2!48573 hash!377 newBucket!200))) e!2718809)))

(declare-fun b!4368436 () Bool)

(assert (=> b!4368436 (= e!2718809 (Some!10520 (_2!27580 (h!54660 (toList!3083 lt!1579870)))))))

(declare-fun b!4368439 () Bool)

(declare-fun e!2718810 () Option!10521)

(assert (=> b!4368439 (= e!2718810 None!10520)))

(declare-fun b!4368437 () Bool)

(assert (=> b!4368437 (= e!2718809 e!2718810)))

(declare-fun c!742718 () Bool)

(assert (=> b!4368437 (= c!742718 (and (is-Cons!49081 (toList!3083 lt!1579870)) (not (= (_1!27580 (h!54660 (toList!3083 lt!1579870))) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(declare-fun b!4368438 () Bool)

(assert (=> b!4368438 (= e!2718810 (getValueByKey!507 (t!356125 (toList!3083 lt!1579870)) (_1!27580 (tuple2!48573 hash!377 newBucket!200))))))

(assert (= (and d!1293355 c!742717) b!4368436))

(assert (= (and d!1293355 (not c!742717)) b!4368437))

(assert (= (and b!4368437 c!742718) b!4368438))

(assert (= (and b!4368437 (not c!742718)) b!4368439))

(declare-fun m!4991775 () Bool)

(assert (=> b!4368438 m!4991775))

(assert (=> b!4367958 d!1293355))

(assert (=> d!1293083 d!1293057))

(declare-fun d!1293357 () Bool)

(assert (=> d!1293357 (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918)))

(assert (=> d!1293357 true))

(declare-fun _$15!568 () Unit!73210)

(assert (=> d!1293357 (= (choose!27168 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) key!3918) _$15!568)))

(declare-fun bs!637584 () Bool)

(assert (= bs!637584 d!1293357))

(assert (=> bs!637584 m!4990889))

(assert (=> d!1293083 d!1293357))

(assert (=> d!1293083 d!1293263))

(declare-fun d!1293359 () Bool)

(declare-fun res!1797358 () Bool)

(declare-fun e!2718811 () Bool)

(assert (=> d!1293359 (=> res!1797358 e!2718811)))

(assert (=> d!1293359 (= res!1797358 (is-Nil!49080 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293359 (= (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (ite c!742618 lambda!143146 lambda!143148)) e!2718811)))

(declare-fun b!4368440 () Bool)

(declare-fun e!2718812 () Bool)

(assert (=> b!4368440 (= e!2718811 e!2718812)))

(declare-fun res!1797359 () Bool)

(assert (=> b!4368440 (=> (not res!1797359) (not e!2718812))))

(assert (=> b!4368440 (= res!1797359 (dynLambda!20678 (ite c!742618 lambda!143146 lambda!143148) (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368441 () Bool)

(assert (=> b!4368441 (= e!2718812 (forall!9220 (t!356124 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))) (ite c!742618 lambda!143146 lambda!143148)))))

(assert (= (and d!1293359 (not res!1797358)) b!4368440))

(assert (= (and b!4368440 res!1797359) b!4368441))

(declare-fun b_lambda!132681 () Bool)

(assert (=> (not b_lambda!132681) (not b!4368440)))

(declare-fun m!4991777 () Bool)

(assert (=> b!4368440 m!4991777))

(declare-fun m!4991779 () Bool)

(assert (=> b!4368441 m!4991779))

(assert (=> bm!303574 d!1293359))

(declare-fun bs!637585 () Bool)

(declare-fun b!4368442 () Bool)

(assert (= bs!637585 (and b!4368442 d!1293241)))

(declare-fun lambda!143227 () Int)

(assert (=> bs!637585 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143227 lambda!143216))))

(declare-fun bs!637586 () Bool)

(assert (= bs!637586 (and b!4368442 d!1293249)))

(assert (=> bs!637586 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580121) (= lambda!143227 lambda!143220))))

(declare-fun bs!637587 () Bool)

(assert (= bs!637587 (and b!4368442 b!4368314)))

(assert (=> bs!637587 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580116) (= lambda!143227 lambda!143219))))

(declare-fun bs!637588 () Bool)

(assert (= bs!637588 (and b!4368442 b!4367978)))

(assert (=> bs!637588 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143227 lambda!143147))))

(declare-fun bs!637589 () Bool)

(assert (= bs!637589 (and b!4368442 d!1293301)))

(assert (=> bs!637589 (not (= lambda!143227 lambda!143222))))

(assert (=> bs!637587 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143227 lambda!143218))))

(declare-fun bs!637590 () Bool)

(assert (= bs!637590 (and b!4368442 d!1292947)))

(assert (=> bs!637590 (not (= lambda!143227 lambda!143099))))

(declare-fun bs!637591 () Bool)

(assert (= bs!637591 (and b!4368442 d!1293075)))

(assert (=> bs!637591 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1579933) (= lambda!143227 lambda!143149))))

(declare-fun bs!637592 () Bool)

(assert (= bs!637592 (and b!4368442 b!4368313)))

(assert (=> bs!637592 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143227 lambda!143217))))

(declare-fun bs!637593 () Bool)

(assert (= bs!637593 (and b!4368442 b!4367977)))

(assert (=> bs!637593 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143227 lambda!143146))))

(assert (=> bs!637588 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1579928) (= lambda!143227 lambda!143148))))

(assert (=> b!4368442 true))

(declare-fun bs!637594 () Bool)

(declare-fun b!4368443 () Bool)

(assert (= bs!637594 (and b!4368443 d!1293241)))

(declare-fun lambda!143228 () Int)

(assert (=> bs!637594 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143228 lambda!143216))))

(declare-fun bs!637595 () Bool)

(assert (= bs!637595 (and b!4368443 d!1293249)))

(assert (=> bs!637595 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580121) (= lambda!143228 lambda!143220))))

(declare-fun bs!637596 () Bool)

(assert (= bs!637596 (and b!4368443 b!4368314)))

(assert (=> bs!637596 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580116) (= lambda!143228 lambda!143219))))

(declare-fun bs!637597 () Bool)

(assert (= bs!637597 (and b!4368443 b!4367978)))

(assert (=> bs!637597 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143228 lambda!143147))))

(declare-fun bs!637598 () Bool)

(assert (= bs!637598 (and b!4368443 d!1293301)))

(assert (=> bs!637598 (not (= lambda!143228 lambda!143222))))

(assert (=> bs!637596 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143228 lambda!143218))))

(declare-fun bs!637599 () Bool)

(assert (= bs!637599 (and b!4368443 d!1292947)))

(assert (=> bs!637599 (not (= lambda!143228 lambda!143099))))

(declare-fun bs!637600 () Bool)

(assert (= bs!637600 (and b!4368443 d!1293075)))

(assert (=> bs!637600 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1579933) (= lambda!143228 lambda!143149))))

(declare-fun bs!637601 () Bool)

(assert (= bs!637601 (and b!4368443 b!4368313)))

(assert (=> bs!637601 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143228 lambda!143217))))

(declare-fun bs!637602 () Bool)

(assert (= bs!637602 (and b!4368443 b!4367977)))

(assert (=> bs!637602 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143228 lambda!143146))))

(declare-fun bs!637603 () Bool)

(assert (= bs!637603 (and b!4368443 b!4368442)))

(assert (=> bs!637603 (= lambda!143228 lambda!143227)))

(assert (=> bs!637597 (= (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1579928) (= lambda!143228 lambda!143148))))

(assert (=> b!4368443 true))

(declare-fun lambda!143229 () Int)

(declare-fun lt!1580163 () ListMap!2327)

(assert (=> bs!637594 (= (= lt!1580163 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143229 lambda!143216))))

(assert (=> bs!637595 (= (= lt!1580163 lt!1580121) (= lambda!143229 lambda!143220))))

(assert (=> bs!637596 (= (= lt!1580163 lt!1580116) (= lambda!143229 lambda!143219))))

(assert (=> bs!637597 (= (= lt!1580163 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143229 lambda!143147))))

(assert (=> b!4368443 (= (= lt!1580163 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143229 lambda!143228))))

(assert (=> bs!637598 (not (= lambda!143229 lambda!143222))))

(assert (=> bs!637596 (= (= lt!1580163 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143229 lambda!143218))))

(assert (=> bs!637599 (not (= lambda!143229 lambda!143099))))

(assert (=> bs!637600 (= (= lt!1580163 lt!1579933) (= lambda!143229 lambda!143149))))

(assert (=> bs!637601 (= (= lt!1580163 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143229 lambda!143217))))

(assert (=> bs!637602 (= (= lt!1580163 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143229 lambda!143146))))

(assert (=> bs!637603 (= (= lt!1580163 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143229 lambda!143227))))

(assert (=> bs!637597 (= (= lt!1580163 lt!1579928) (= lambda!143229 lambda!143148))))

(assert (=> b!4368443 true))

(declare-fun bs!637604 () Bool)

(declare-fun d!1293361 () Bool)

(assert (= bs!637604 (and d!1293361 d!1293241)))

(declare-fun lt!1580168 () ListMap!2327)

(declare-fun lambda!143230 () Int)

(assert (=> bs!637604 (= (= lt!1580168 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143230 lambda!143216))))

(declare-fun bs!637605 () Bool)

(assert (= bs!637605 (and d!1293361 d!1293249)))

(assert (=> bs!637605 (= (= lt!1580168 lt!1580121) (= lambda!143230 lambda!143220))))

(declare-fun bs!637606 () Bool)

(assert (= bs!637606 (and d!1293361 b!4368314)))

(assert (=> bs!637606 (= (= lt!1580168 lt!1580116) (= lambda!143230 lambda!143219))))

(declare-fun bs!637607 () Bool)

(assert (= bs!637607 (and d!1293361 b!4367978)))

(assert (=> bs!637607 (= (= lt!1580168 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143230 lambda!143147))))

(declare-fun bs!637608 () Bool)

(assert (= bs!637608 (and d!1293361 b!4368443)))

(assert (=> bs!637608 (= (= lt!1580168 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143230 lambda!143228))))

(declare-fun bs!637609 () Bool)

(assert (= bs!637609 (and d!1293361 d!1293301)))

(assert (=> bs!637609 (not (= lambda!143230 lambda!143222))))

(declare-fun bs!637610 () Bool)

(assert (= bs!637610 (and d!1293361 d!1292947)))

(assert (=> bs!637610 (not (= lambda!143230 lambda!143099))))

(declare-fun bs!637611 () Bool)

(assert (= bs!637611 (and d!1293361 d!1293075)))

(assert (=> bs!637611 (= (= lt!1580168 lt!1579933) (= lambda!143230 lambda!143149))))

(declare-fun bs!637612 () Bool)

(assert (= bs!637612 (and d!1293361 b!4368313)))

(assert (=> bs!637612 (= (= lt!1580168 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143230 lambda!143217))))

(declare-fun bs!637613 () Bool)

(assert (= bs!637613 (and d!1293361 b!4367977)))

(assert (=> bs!637613 (= (= lt!1580168 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143230 lambda!143146))))

(declare-fun bs!637614 () Bool)

(assert (= bs!637614 (and d!1293361 b!4368442)))

(assert (=> bs!637614 (= (= lt!1580168 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143230 lambda!143227))))

(assert (=> bs!637607 (= (= lt!1580168 lt!1579928) (= lambda!143230 lambda!143148))))

(assert (=> bs!637608 (= (= lt!1580168 lt!1580163) (= lambda!143230 lambda!143229))))

(assert (=> bs!637606 (= (= lt!1580168 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143230 lambda!143218))))

(assert (=> d!1293361 true))

(declare-fun e!2718814 () ListMap!2327)

(assert (=> b!4368442 (= e!2718814 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun lt!1580155 () Unit!73210)

(declare-fun call!303615 () Unit!73210)

(assert (=> b!4368442 (= lt!1580155 call!303615)))

(declare-fun call!303614 () Bool)

(assert (=> b!4368442 call!303614))

(declare-fun lt!1580167 () Unit!73210)

(assert (=> b!4368442 (= lt!1580167 lt!1580155)))

(declare-fun call!303616 () Bool)

(assert (=> b!4368442 call!303616))

(declare-fun lt!1580164 () Unit!73210)

(declare-fun Unit!73268 () Unit!73210)

(assert (=> b!4368442 (= lt!1580164 Unit!73268)))

(declare-fun c!742719 () Bool)

(declare-fun bm!303609 () Bool)

(assert (=> bm!303609 (= call!303614 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (ite c!742719 lambda!143227 lambda!143228)))))

(declare-fun bm!303610 () Bool)

(assert (=> bm!303610 (= call!303616 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (ite c!742719 lambda!143227 lambda!143229)))))

(declare-fun bm!303611 () Bool)

(assert (=> bm!303611 (= call!303615 (lemmaContainsAllItsOwnKeys!86 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun e!2718815 () Bool)

(assert (=> d!1293361 e!2718815))

(declare-fun res!1797360 () Bool)

(assert (=> d!1293361 (=> (not res!1797360) (not e!2718815))))

(assert (=> d!1293361 (= res!1797360 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143230))))

(assert (=> d!1293361 (= lt!1580168 e!2718814)))

(assert (=> d!1293361 (= c!742719 (is-Nil!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> d!1293361 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(assert (=> d!1293361 (= (addToMapMapFromBucket!231 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lt!1580168)))

(assert (=> b!4368443 (= e!2718814 lt!1580163)))

(declare-fun lt!1580156 () ListMap!2327)

(assert (=> b!4368443 (= lt!1580156 (+!735 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> b!4368443 (= lt!1580163 (addToMapMapFromBucket!231 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (+!735 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun lt!1580157 () Unit!73210)

(assert (=> b!4368443 (= lt!1580157 call!303615)))

(assert (=> b!4368443 call!303614))

(declare-fun lt!1580150 () Unit!73210)

(assert (=> b!4368443 (= lt!1580150 lt!1580157)))

(assert (=> b!4368443 (forall!9220 (toList!3084 lt!1580156) lambda!143229)))

(declare-fun lt!1580166 () Unit!73210)

(declare-fun Unit!73269 () Unit!73210)

(assert (=> b!4368443 (= lt!1580166 Unit!73269)))

(assert (=> b!4368443 (forall!9220 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lambda!143229)))

(declare-fun lt!1580158 () Unit!73210)

(declare-fun Unit!73270 () Unit!73210)

(assert (=> b!4368443 (= lt!1580158 Unit!73270)))

(declare-fun lt!1580162 () Unit!73210)

(declare-fun Unit!73271 () Unit!73210)

(assert (=> b!4368443 (= lt!1580162 Unit!73271)))

(declare-fun lt!1580169 () Unit!73210)

(assert (=> b!4368443 (= lt!1580169 (forallContained!1858 (toList!3084 lt!1580156) lambda!143229 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> b!4368443 (contains!11368 lt!1580156 (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580159 () Unit!73210)

(declare-fun Unit!73272 () Unit!73210)

(assert (=> b!4368443 (= lt!1580159 Unit!73272)))

(assert (=> b!4368443 (contains!11368 lt!1580163 (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580152 () Unit!73210)

(declare-fun Unit!73273 () Unit!73210)

(assert (=> b!4368443 (= lt!1580152 Unit!73273)))

(assert (=> b!4368443 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143229)))

(declare-fun lt!1580151 () Unit!73210)

(declare-fun Unit!73274 () Unit!73210)

(assert (=> b!4368443 (= lt!1580151 Unit!73274)))

(assert (=> b!4368443 (forall!9220 (toList!3084 lt!1580156) lambda!143229)))

(declare-fun lt!1580154 () Unit!73210)

(declare-fun Unit!73275 () Unit!73210)

(assert (=> b!4368443 (= lt!1580154 Unit!73275)))

(declare-fun lt!1580153 () Unit!73210)

(declare-fun Unit!73276 () Unit!73210)

(assert (=> b!4368443 (= lt!1580153 Unit!73276)))

(declare-fun lt!1580165 () Unit!73210)

(assert (=> b!4368443 (= lt!1580165 (addForallContainsKeyThenBeforeAdding!86 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580163 (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (_2!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(assert (=> b!4368443 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lambda!143229)))

(declare-fun lt!1580149 () Unit!73210)

(assert (=> b!4368443 (= lt!1580149 lt!1580165)))

(assert (=> b!4368443 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lambda!143229)))

(declare-fun lt!1580160 () Unit!73210)

(declare-fun Unit!73277 () Unit!73210)

(assert (=> b!4368443 (= lt!1580160 Unit!73277)))

(declare-fun res!1797361 () Bool)

(assert (=> b!4368443 (= res!1797361 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143229))))

(declare-fun e!2718813 () Bool)

(assert (=> b!4368443 (=> (not res!1797361) (not e!2718813))))

(assert (=> b!4368443 e!2718813))

(declare-fun lt!1580161 () Unit!73210)

(declare-fun Unit!73278 () Unit!73210)

(assert (=> b!4368443 (= lt!1580161 Unit!73278)))

(declare-fun b!4368444 () Bool)

(declare-fun res!1797362 () Bool)

(assert (=> b!4368444 (=> (not res!1797362) (not e!2718815))))

(assert (=> b!4368444 (= res!1797362 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lambda!143230))))

(declare-fun b!4368445 () Bool)

(assert (=> b!4368445 (= e!2718813 call!303616)))

(declare-fun b!4368446 () Bool)

(assert (=> b!4368446 (= e!2718815 (invariantList!704 (toList!3084 lt!1580168)))))

(assert (= (and d!1293361 c!742719) b!4368442))

(assert (= (and d!1293361 (not c!742719)) b!4368443))

(assert (= (and b!4368443 res!1797361) b!4368445))

(assert (= (or b!4368442 b!4368443) bm!303611))

(assert (= (or b!4368442 b!4368443) bm!303609))

(assert (= (or b!4368442 b!4368445) bm!303610))

(assert (= (and d!1293361 res!1797360) b!4368444))

(assert (= (and b!4368444 res!1797362) b!4368446))

(assert (=> bm!303611 m!4991145))

(declare-fun m!4991781 () Bool)

(assert (=> bm!303611 m!4991781))

(declare-fun m!4991783 () Bool)

(assert (=> bm!303609 m!4991783))

(declare-fun m!4991785 () Bool)

(assert (=> d!1293361 m!4991785))

(assert (=> d!1293361 m!4991207))

(declare-fun m!4991787 () Bool)

(assert (=> b!4368444 m!4991787))

(declare-fun m!4991789 () Bool)

(assert (=> b!4368443 m!4991789))

(declare-fun m!4991791 () Bool)

(assert (=> b!4368443 m!4991791))

(declare-fun m!4991793 () Bool)

(assert (=> b!4368443 m!4991793))

(declare-fun m!4991795 () Bool)

(assert (=> b!4368443 m!4991795))

(assert (=> b!4368443 m!4991145))

(declare-fun m!4991797 () Bool)

(assert (=> b!4368443 m!4991797))

(declare-fun m!4991799 () Bool)

(assert (=> b!4368443 m!4991799))

(declare-fun m!4991801 () Bool)

(assert (=> b!4368443 m!4991801))

(assert (=> b!4368443 m!4991801))

(declare-fun m!4991803 () Bool)

(assert (=> b!4368443 m!4991803))

(assert (=> b!4368443 m!4991803))

(assert (=> b!4368443 m!4991145))

(declare-fun m!4991805 () Bool)

(assert (=> b!4368443 m!4991805))

(assert (=> b!4368443 m!4991797))

(declare-fun m!4991807 () Bool)

(assert (=> b!4368443 m!4991807))

(assert (=> b!4368443 m!4991793))

(declare-fun m!4991809 () Bool)

(assert (=> b!4368446 m!4991809))

(declare-fun m!4991811 () Bool)

(assert (=> bm!303610 m!4991811))

(assert (=> b!4367978 d!1293361))

(declare-fun d!1293363 () Bool)

(assert (=> d!1293363 (dynLambda!20678 lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(declare-fun lt!1580172 () Unit!73210)

(declare-fun choose!27179 (List!49204 Int tuple2!48570) Unit!73210)

(assert (=> d!1293363 (= lt!1580172 (choose!27179 (toList!3084 lt!1579921) lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun e!2718818 () Bool)

(assert (=> d!1293363 e!2718818))

(declare-fun res!1797365 () Bool)

(assert (=> d!1293363 (=> (not res!1797365) (not e!2718818))))

(assert (=> d!1293363 (= res!1797365 (forall!9220 (toList!3084 lt!1579921) lambda!143148))))

(assert (=> d!1293363 (= (forallContained!1858 (toList!3084 lt!1579921) lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580172)))

(declare-fun b!4368449 () Bool)

(declare-fun contains!11374 (List!49204 tuple2!48570) Bool)

(assert (=> b!4368449 (= e!2718818 (contains!11374 (toList!3084 lt!1579921) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (= (and d!1293363 res!1797365) b!4368449))

(declare-fun b_lambda!132683 () Bool)

(assert (=> (not b_lambda!132683) (not d!1293363)))

(declare-fun m!4991813 () Bool)

(assert (=> d!1293363 m!4991813))

(declare-fun m!4991815 () Bool)

(assert (=> d!1293363 m!4991815))

(assert (=> d!1293363 m!4991151))

(declare-fun m!4991817 () Bool)

(assert (=> b!4368449 m!4991817))

(assert (=> b!4367978 d!1293363))

(declare-fun d!1293365 () Bool)

(declare-fun res!1797366 () Bool)

(declare-fun e!2718819 () Bool)

(assert (=> d!1293365 (=> res!1797366 e!2718819)))

(assert (=> d!1293365 (= res!1797366 (is-Nil!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> d!1293365 (= (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143148) e!2718819)))

(declare-fun b!4368450 () Bool)

(declare-fun e!2718820 () Bool)

(assert (=> b!4368450 (= e!2718819 e!2718820)))

(declare-fun res!1797367 () Bool)

(assert (=> b!4368450 (=> (not res!1797367) (not e!2718820))))

(assert (=> b!4368450 (= res!1797367 (dynLambda!20678 lambda!143148 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun b!4368451 () Bool)

(assert (=> b!4368451 (= e!2718820 (forall!9220 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lambda!143148))))

(assert (= (and d!1293365 (not res!1797366)) b!4368450))

(assert (= (and b!4368450 res!1797367) b!4368451))

(declare-fun b_lambda!132685 () Bool)

(assert (=> (not b_lambda!132685) (not b!4368450)))

(declare-fun m!4991819 () Bool)

(assert (=> b!4368450 m!4991819))

(declare-fun m!4991821 () Bool)

(assert (=> b!4368451 m!4991821))

(assert (=> b!4367978 d!1293365))

(declare-fun d!1293367 () Bool)

(declare-fun e!2718823 () Bool)

(assert (=> d!1293367 e!2718823))

(declare-fun res!1797372 () Bool)

(assert (=> d!1293367 (=> (not res!1797372) (not e!2718823))))

(declare-fun lt!1580182 () ListMap!2327)

(assert (=> d!1293367 (= res!1797372 (contains!11368 lt!1580182 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580184 () List!49204)

(assert (=> d!1293367 (= lt!1580182 (ListMap!2328 lt!1580184))))

(declare-fun lt!1580183 () Unit!73210)

(declare-fun lt!1580181 () Unit!73210)

(assert (=> d!1293367 (= lt!1580183 lt!1580181)))

(assert (=> d!1293367 (= (getValueByKey!508 lt!1580184 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (Some!10521 (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!275 (List!49204 K!10443 V!10689) Unit!73210)

(assert (=> d!1293367 (= lt!1580181 (lemmaContainsTupThenGetReturnValue!275 lt!1580184 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun insertNoDuplicatedKeys!124 (List!49204 K!10443 V!10689) List!49204)

(assert (=> d!1293367 (= lt!1580184 (insertNoDuplicatedKeys!124 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> d!1293367 (= (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) lt!1580182)))

(declare-fun b!4368456 () Bool)

(declare-fun res!1797373 () Bool)

(assert (=> b!4368456 (=> (not res!1797373) (not e!2718823))))

(assert (=> b!4368456 (= res!1797373 (= (getValueByKey!508 (toList!3084 lt!1580182) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (Some!10521 (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368457 () Bool)

(assert (=> b!4368457 (= e!2718823 (contains!11374 (toList!3084 lt!1580182) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (= (and d!1293367 res!1797372) b!4368456))

(assert (= (and b!4368456 res!1797373) b!4368457))

(declare-fun m!4991823 () Bool)

(assert (=> d!1293367 m!4991823))

(declare-fun m!4991825 () Bool)

(assert (=> d!1293367 m!4991825))

(declare-fun m!4991827 () Bool)

(assert (=> d!1293367 m!4991827))

(declare-fun m!4991829 () Bool)

(assert (=> d!1293367 m!4991829))

(declare-fun m!4991831 () Bool)

(assert (=> b!4368456 m!4991831))

(declare-fun m!4991833 () Bool)

(assert (=> b!4368457 m!4991833))

(assert (=> b!4367978 d!1293367))

(declare-fun d!1293369 () Bool)

(declare-fun res!1797374 () Bool)

(declare-fun e!2718824 () Bool)

(assert (=> d!1293369 (=> res!1797374 e!2718824)))

(assert (=> d!1293369 (= res!1797374 (is-Nil!49080 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))

(assert (=> d!1293369 (= (forall!9220 (_2!27580 (h!54660 (toList!3083 lm!1707))) lambda!143148) e!2718824)))

(declare-fun b!4368458 () Bool)

(declare-fun e!2718825 () Bool)

(assert (=> b!4368458 (= e!2718824 e!2718825)))

(declare-fun res!1797375 () Bool)

(assert (=> b!4368458 (=> (not res!1797375) (not e!2718825))))

(assert (=> b!4368458 (= res!1797375 (dynLambda!20678 lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(declare-fun b!4368459 () Bool)

(assert (=> b!4368459 (= e!2718825 (forall!9220 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))) lambda!143148))))

(assert (= (and d!1293369 (not res!1797374)) b!4368458))

(assert (= (and b!4368458 res!1797375) b!4368459))

(declare-fun b_lambda!132687 () Bool)

(assert (=> (not b_lambda!132687) (not b!4368458)))

(assert (=> b!4368458 m!4991813))

(assert (=> b!4368459 m!4991143))

(assert (=> b!4367978 d!1293369))

(declare-fun b!4368460 () Bool)

(declare-fun e!2718830 () Unit!73210)

(declare-fun lt!1580188 () Unit!73210)

(assert (=> b!4368460 (= e!2718830 lt!1580188)))

(declare-fun lt!1580185 () Unit!73210)

(assert (=> b!4368460 (= lt!1580185 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> b!4368460 (isDefined!7816 (getValueByKey!508 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580190 () Unit!73210)

(assert (=> b!4368460 (= lt!1580190 lt!1580185)))

(assert (=> b!4368460 (= lt!1580188 (lemmaInListThenGetKeysListContains!149 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun call!303617 () Bool)

(assert (=> b!4368460 call!303617))

(declare-fun b!4368461 () Bool)

(declare-fun e!2718828 () Bool)

(assert (=> b!4368461 (= e!2718828 (contains!11372 (keys!16618 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun d!1293371 () Bool)

(declare-fun e!2718826 () Bool)

(assert (=> d!1293371 e!2718826))

(declare-fun res!1797378 () Bool)

(assert (=> d!1293371 (=> res!1797378 e!2718826)))

(declare-fun e!2718831 () Bool)

(assert (=> d!1293371 (= res!1797378 e!2718831)))

(declare-fun res!1797376 () Bool)

(assert (=> d!1293371 (=> (not res!1797376) (not e!2718831))))

(declare-fun lt!1580189 () Bool)

(assert (=> d!1293371 (= res!1797376 (not lt!1580189))))

(declare-fun lt!1580187 () Bool)

(assert (=> d!1293371 (= lt!1580189 lt!1580187)))

(declare-fun lt!1580191 () Unit!73210)

(assert (=> d!1293371 (= lt!1580191 e!2718830)))

(declare-fun c!742721 () Bool)

(assert (=> d!1293371 (= c!742721 lt!1580187)))

(assert (=> d!1293371 (= lt!1580187 (containsKey!794 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> d!1293371 (= (contains!11368 lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lt!1580189)))

(declare-fun b!4368462 () Bool)

(declare-fun e!2718829 () Unit!73210)

(assert (=> b!4368462 (= e!2718830 e!2718829)))

(declare-fun c!742720 () Bool)

(assert (=> b!4368462 (= c!742720 call!303617)))

(declare-fun bm!303612 () Bool)

(declare-fun e!2718827 () List!49208)

(assert (=> bm!303612 (= call!303617 (contains!11372 e!2718827 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun c!742722 () Bool)

(assert (=> bm!303612 (= c!742722 c!742721)))

(declare-fun b!4368463 () Bool)

(assert (=> b!4368463 (= e!2718827 (getKeysList!152 (toList!3084 lt!1579928)))))

(declare-fun b!4368464 () Bool)

(assert (=> b!4368464 (= e!2718831 (not (contains!11372 (keys!16618 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368465 () Bool)

(declare-fun Unit!73279 () Unit!73210)

(assert (=> b!4368465 (= e!2718829 Unit!73279)))

(declare-fun b!4368466 () Bool)

(assert (=> b!4368466 false))

(declare-fun lt!1580186 () Unit!73210)

(declare-fun lt!1580192 () Unit!73210)

(assert (=> b!4368466 (= lt!1580186 lt!1580192)))

(assert (=> b!4368466 (containsKey!794 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> b!4368466 (= lt!1580192 (lemmaInGetKeysListThenContainsKey!150 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun Unit!73280 () Unit!73210)

(assert (=> b!4368466 (= e!2718829 Unit!73280)))

(declare-fun b!4368467 () Bool)

(assert (=> b!4368467 (= e!2718826 e!2718828)))

(declare-fun res!1797377 () Bool)

(assert (=> b!4368467 (=> (not res!1797377) (not e!2718828))))

(assert (=> b!4368467 (= res!1797377 (isDefined!7816 (getValueByKey!508 (toList!3084 lt!1579928) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368468 () Bool)

(assert (=> b!4368468 (= e!2718827 (keys!16618 lt!1579928))))

(assert (= (and d!1293371 c!742721) b!4368460))

(assert (= (and d!1293371 (not c!742721)) b!4368462))

(assert (= (and b!4368462 c!742720) b!4368466))

(assert (= (and b!4368462 (not c!742720)) b!4368465))

(assert (= (or b!4368460 b!4368462) bm!303612))

(assert (= (and bm!303612 c!742722) b!4368463))

(assert (= (and bm!303612 (not c!742722)) b!4368468))

(assert (= (and d!1293371 res!1797376) b!4368464))

(assert (= (and d!1293371 (not res!1797378)) b!4368467))

(assert (= (and b!4368467 res!1797377) b!4368461))

(declare-fun m!4991835 () Bool)

(assert (=> b!4368468 m!4991835))

(declare-fun m!4991837 () Bool)

(assert (=> b!4368466 m!4991837))

(declare-fun m!4991839 () Bool)

(assert (=> b!4368466 m!4991839))

(assert (=> d!1293371 m!4991837))

(assert (=> b!4368461 m!4991835))

(assert (=> b!4368461 m!4991835))

(declare-fun m!4991841 () Bool)

(assert (=> b!4368461 m!4991841))

(declare-fun m!4991843 () Bool)

(assert (=> b!4368467 m!4991843))

(assert (=> b!4368467 m!4991843))

(declare-fun m!4991845 () Bool)

(assert (=> b!4368467 m!4991845))

(declare-fun m!4991847 () Bool)

(assert (=> b!4368463 m!4991847))

(declare-fun m!4991849 () Bool)

(assert (=> bm!303612 m!4991849))

(assert (=> b!4368464 m!4991835))

(assert (=> b!4368464 m!4991835))

(assert (=> b!4368464 m!4991841))

(declare-fun m!4991851 () Bool)

(assert (=> b!4368460 m!4991851))

(assert (=> b!4368460 m!4991843))

(assert (=> b!4368460 m!4991843))

(assert (=> b!4368460 m!4991845))

(declare-fun m!4991853 () Bool)

(assert (=> b!4368460 m!4991853))

(assert (=> b!4367978 d!1293371))

(declare-fun b!4368469 () Bool)

(declare-fun e!2718836 () Unit!73210)

(declare-fun lt!1580196 () Unit!73210)

(assert (=> b!4368469 (= e!2718836 lt!1580196)))

(declare-fun lt!1580193 () Unit!73210)

(assert (=> b!4368469 (= lt!1580193 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> b!4368469 (isDefined!7816 (getValueByKey!508 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun lt!1580198 () Unit!73210)

(assert (=> b!4368469 (= lt!1580198 lt!1580193)))

(assert (=> b!4368469 (= lt!1580196 (lemmaInListThenGetKeysListContains!149 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun call!303618 () Bool)

(assert (=> b!4368469 call!303618))

(declare-fun b!4368470 () Bool)

(declare-fun e!2718834 () Bool)

(assert (=> b!4368470 (= e!2718834 (contains!11372 (keys!16618 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun d!1293373 () Bool)

(declare-fun e!2718832 () Bool)

(assert (=> d!1293373 e!2718832))

(declare-fun res!1797381 () Bool)

(assert (=> d!1293373 (=> res!1797381 e!2718832)))

(declare-fun e!2718837 () Bool)

(assert (=> d!1293373 (= res!1797381 e!2718837)))

(declare-fun res!1797379 () Bool)

(assert (=> d!1293373 (=> (not res!1797379) (not e!2718837))))

(declare-fun lt!1580197 () Bool)

(assert (=> d!1293373 (= res!1797379 (not lt!1580197))))

(declare-fun lt!1580195 () Bool)

(assert (=> d!1293373 (= lt!1580197 lt!1580195)))

(declare-fun lt!1580199 () Unit!73210)

(assert (=> d!1293373 (= lt!1580199 e!2718836)))

(declare-fun c!742724 () Bool)

(assert (=> d!1293373 (= c!742724 lt!1580195)))

(assert (=> d!1293373 (= lt!1580195 (containsKey!794 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> d!1293373 (= (contains!11368 lt!1579921 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lt!1580197)))

(declare-fun b!4368471 () Bool)

(declare-fun e!2718835 () Unit!73210)

(assert (=> b!4368471 (= e!2718836 e!2718835)))

(declare-fun c!742723 () Bool)

(assert (=> b!4368471 (= c!742723 call!303618)))

(declare-fun bm!303613 () Bool)

(declare-fun e!2718833 () List!49208)

(assert (=> bm!303613 (= call!303618 (contains!11372 e!2718833 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun c!742725 () Bool)

(assert (=> bm!303613 (= c!742725 c!742724)))

(declare-fun b!4368472 () Bool)

(assert (=> b!4368472 (= e!2718833 (getKeysList!152 (toList!3084 lt!1579921)))))

(declare-fun b!4368473 () Bool)

(assert (=> b!4368473 (= e!2718837 (not (contains!11372 (keys!16618 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368474 () Bool)

(declare-fun Unit!73281 () Unit!73210)

(assert (=> b!4368474 (= e!2718835 Unit!73281)))

(declare-fun b!4368475 () Bool)

(assert (=> b!4368475 false))

(declare-fun lt!1580194 () Unit!73210)

(declare-fun lt!1580200 () Unit!73210)

(assert (=> b!4368475 (= lt!1580194 lt!1580200)))

(assert (=> b!4368475 (containsKey!794 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))

(assert (=> b!4368475 (= lt!1580200 (lemmaInGetKeysListThenContainsKey!150 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun Unit!73282 () Unit!73210)

(assert (=> b!4368475 (= e!2718835 Unit!73282)))

(declare-fun b!4368476 () Bool)

(assert (=> b!4368476 (= e!2718832 e!2718834)))

(declare-fun res!1797380 () Bool)

(assert (=> b!4368476 (=> (not res!1797380) (not e!2718834))))

(assert (=> b!4368476 (= res!1797380 (isDefined!7816 (getValueByKey!508 (toList!3084 lt!1579921) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun b!4368477 () Bool)

(assert (=> b!4368477 (= e!2718833 (keys!16618 lt!1579921))))

(assert (= (and d!1293373 c!742724) b!4368469))

(assert (= (and d!1293373 (not c!742724)) b!4368471))

(assert (= (and b!4368471 c!742723) b!4368475))

(assert (= (and b!4368471 (not c!742723)) b!4368474))

(assert (= (or b!4368469 b!4368471) bm!303613))

(assert (= (and bm!303613 c!742725) b!4368472))

(assert (= (and bm!303613 (not c!742725)) b!4368477))

(assert (= (and d!1293373 res!1797379) b!4368473))

(assert (= (and d!1293373 (not res!1797381)) b!4368476))

(assert (= (and b!4368476 res!1797380) b!4368470))

(declare-fun m!4991855 () Bool)

(assert (=> b!4368477 m!4991855))

(declare-fun m!4991857 () Bool)

(assert (=> b!4368475 m!4991857))

(declare-fun m!4991859 () Bool)

(assert (=> b!4368475 m!4991859))

(assert (=> d!1293373 m!4991857))

(assert (=> b!4368470 m!4991855))

(assert (=> b!4368470 m!4991855))

(declare-fun m!4991861 () Bool)

(assert (=> b!4368470 m!4991861))

(declare-fun m!4991863 () Bool)

(assert (=> b!4368476 m!4991863))

(assert (=> b!4368476 m!4991863))

(declare-fun m!4991865 () Bool)

(assert (=> b!4368476 m!4991865))

(declare-fun m!4991867 () Bool)

(assert (=> b!4368472 m!4991867))

(declare-fun m!4991869 () Bool)

(assert (=> bm!303613 m!4991869))

(assert (=> b!4368473 m!4991855))

(assert (=> b!4368473 m!4991855))

(assert (=> b!4368473 m!4991861))

(declare-fun m!4991871 () Bool)

(assert (=> b!4368469 m!4991871))

(assert (=> b!4368469 m!4991863))

(assert (=> b!4368469 m!4991863))

(assert (=> b!4368469 m!4991865))

(declare-fun m!4991873 () Bool)

(assert (=> b!4368469 m!4991873))

(assert (=> b!4367978 d!1293373))

(declare-fun bs!637615 () Bool)

(declare-fun d!1293375 () Bool)

(assert (= bs!637615 (and d!1293375 d!1293241)))

(declare-fun lambda!143235 () Int)

(assert (=> bs!637615 (= (= lt!1579928 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143235 lambda!143216))))

(declare-fun bs!637616 () Bool)

(assert (= bs!637616 (and d!1293375 d!1293249)))

(assert (=> bs!637616 (= (= lt!1579928 lt!1580121) (= lambda!143235 lambda!143220))))

(declare-fun bs!637617 () Bool)

(assert (= bs!637617 (and d!1293375 b!4367978)))

(assert (=> bs!637617 (= (= lt!1579928 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143235 lambda!143147))))

(declare-fun bs!637618 () Bool)

(assert (= bs!637618 (and d!1293375 b!4368443)))

(assert (=> bs!637618 (= (= lt!1579928 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143235 lambda!143228))))

(declare-fun bs!637619 () Bool)

(assert (= bs!637619 (and d!1293375 d!1293301)))

(assert (=> bs!637619 (not (= lambda!143235 lambda!143222))))

(declare-fun bs!637620 () Bool)

(assert (= bs!637620 (and d!1293375 d!1292947)))

(assert (=> bs!637620 (not (= lambda!143235 lambda!143099))))

(declare-fun bs!637621 () Bool)

(assert (= bs!637621 (and d!1293375 d!1293075)))

(assert (=> bs!637621 (= (= lt!1579928 lt!1579933) (= lambda!143235 lambda!143149))))

(declare-fun bs!637622 () Bool)

(assert (= bs!637622 (and d!1293375 b!4368313)))

(assert (=> bs!637622 (= (= lt!1579928 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143235 lambda!143217))))

(declare-fun bs!637623 () Bool)

(assert (= bs!637623 (and d!1293375 b!4367977)))

(assert (=> bs!637623 (= (= lt!1579928 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) (= lambda!143235 lambda!143146))))

(declare-fun bs!637624 () Bool)

(assert (= bs!637624 (and d!1293375 b!4368442)))

(assert (=> bs!637624 (= (= lt!1579928 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (= lambda!143235 lambda!143227))))

(assert (=> bs!637617 (= lambda!143235 lambda!143148)))

(declare-fun bs!637625 () Bool)

(assert (= bs!637625 (and d!1293375 d!1293361)))

(assert (=> bs!637625 (= (= lt!1579928 lt!1580168) (= lambda!143235 lambda!143230))))

(declare-fun bs!637626 () Bool)

(assert (= bs!637626 (and d!1293375 b!4368314)))

(assert (=> bs!637626 (= (= lt!1579928 lt!1580116) (= lambda!143235 lambda!143219))))

(assert (=> bs!637618 (= (= lt!1579928 lt!1580163) (= lambda!143235 lambda!143229))))

(assert (=> bs!637626 (= (= lt!1579928 (extractMap!609 (t!356125 (t!356125 (toList!3083 lm!1707))))) (= lambda!143235 lambda!143218))))

(assert (=> d!1293375 true))

(assert (=> d!1293375 (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143235)))

(declare-fun lt!1580203 () Unit!73210)

(declare-fun choose!27180 (ListMap!2327 ListMap!2327 K!10443 V!10689) Unit!73210)

(assert (=> d!1293375 (= lt!1580203 (choose!27180 (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> d!1293375 (forall!9220 (toList!3084 (+!735 (extractMap!609 (t!356125 (toList!3083 lm!1707))) (tuple2!48571 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))) lambda!143235)))

(assert (=> d!1293375 (= (addForallContainsKeyThenBeforeAdding!86 (extractMap!609 (t!356125 (toList!3083 lm!1707))) lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (_2!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) lt!1580203)))

(declare-fun bs!637627 () Bool)

(assert (= bs!637627 d!1293375))

(declare-fun m!4991875 () Bool)

(assert (=> bs!637627 m!4991875))

(assert (=> bs!637627 m!4990923))

(declare-fun m!4991877 () Bool)

(assert (=> bs!637627 m!4991877))

(assert (=> bs!637627 m!4990923))

(declare-fun m!4991879 () Bool)

(assert (=> bs!637627 m!4991879))

(declare-fun m!4991881 () Bool)

(assert (=> bs!637627 m!4991881))

(assert (=> b!4367978 d!1293375))

(declare-fun d!1293377 () Bool)

(declare-fun res!1797382 () Bool)

(declare-fun e!2718838 () Bool)

(assert (=> d!1293377 (=> res!1797382 e!2718838)))

(assert (=> d!1293377 (= res!1797382 (is-Nil!49080 (toList!3084 lt!1579921)))))

(assert (=> d!1293377 (= (forall!9220 (toList!3084 lt!1579921) lambda!143148) e!2718838)))

(declare-fun b!4368479 () Bool)

(declare-fun e!2718839 () Bool)

(assert (=> b!4368479 (= e!2718838 e!2718839)))

(declare-fun res!1797383 () Bool)

(assert (=> b!4368479 (=> (not res!1797383) (not e!2718839))))

(assert (=> b!4368479 (= res!1797383 (dynLambda!20678 lambda!143148 (h!54659 (toList!3084 lt!1579921))))))

(declare-fun b!4368480 () Bool)

(assert (=> b!4368480 (= e!2718839 (forall!9220 (t!356124 (toList!3084 lt!1579921)) lambda!143148))))

(assert (= (and d!1293377 (not res!1797382)) b!4368479))

(assert (= (and b!4368479 res!1797383) b!4368480))

(declare-fun b_lambda!132689 () Bool)

(assert (=> (not b_lambda!132689) (not b!4368479)))

(declare-fun m!4991883 () Bool)

(assert (=> b!4368479 m!4991883))

(declare-fun m!4991885 () Bool)

(assert (=> b!4368480 m!4991885))

(assert (=> b!4367978 d!1293377))

(declare-fun d!1293379 () Bool)

(declare-fun res!1797384 () Bool)

(declare-fun e!2718840 () Bool)

(assert (=> d!1293379 (=> res!1797384 e!2718840)))

(assert (=> d!1293379 (= res!1797384 (is-Nil!49080 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293379 (= (forall!9220 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))) lambda!143148) e!2718840)))

(declare-fun b!4368481 () Bool)

(declare-fun e!2718841 () Bool)

(assert (=> b!4368481 (= e!2718840 e!2718841)))

(declare-fun res!1797385 () Bool)

(assert (=> b!4368481 (=> (not res!1797385) (not e!2718841))))

(assert (=> b!4368481 (= res!1797385 (dynLambda!20678 lambda!143148 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368482 () Bool)

(assert (=> b!4368482 (= e!2718841 (forall!9220 (t!356124 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))) lambda!143148))))

(assert (= (and d!1293379 (not res!1797384)) b!4368481))

(assert (= (and b!4368481 res!1797385) b!4368482))

(declare-fun b_lambda!132691 () Bool)

(assert (=> (not b_lambda!132691) (not b!4368481)))

(declare-fun m!4991887 () Bool)

(assert (=> b!4368481 m!4991887))

(declare-fun m!4991889 () Bool)

(assert (=> b!4368482 m!4991889))

(assert (=> b!4367978 d!1293379))

(declare-fun d!1293381 () Bool)

(assert (=> d!1293381 (= (isEmpty!28233 (getValueByKey!507 (toList!3083 lm!1707) hash!377)) (not (is-Some!10520 (getValueByKey!507 (toList!3083 lm!1707) hash!377))))))

(assert (=> d!1293059 d!1293381))

(declare-fun d!1293383 () Bool)

(declare-fun lt!1580204 () Bool)

(assert (=> d!1293383 (= lt!1580204 (set.member lt!1579696 (content!7777 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun e!2718843 () Bool)

(assert (=> d!1293383 (= lt!1580204 e!2718843)))

(declare-fun res!1797386 () Bool)

(assert (=> d!1293383 (=> (not res!1797386) (not e!2718843))))

(assert (=> d!1293383 (= res!1797386 (is-Cons!49081 (t!356125 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293383 (= (contains!11366 (t!356125 (t!356125 (toList!3083 lm!1707))) lt!1579696) lt!1580204)))

(declare-fun b!4368483 () Bool)

(declare-fun e!2718842 () Bool)

(assert (=> b!4368483 (= e!2718843 e!2718842)))

(declare-fun res!1797387 () Bool)

(assert (=> b!4368483 (=> res!1797387 e!2718842)))

(assert (=> b!4368483 (= res!1797387 (= (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579696))))

(declare-fun b!4368484 () Bool)

(assert (=> b!4368484 (= e!2718842 (contains!11366 (t!356125 (t!356125 (t!356125 (toList!3083 lm!1707)))) lt!1579696))))

(assert (= (and d!1293383 res!1797386) b!4368483))

(assert (= (and b!4368483 (not res!1797387)) b!4368484))

(assert (=> d!1293383 m!4991515))

(declare-fun m!4991891 () Bool)

(assert (=> d!1293383 m!4991891))

(declare-fun m!4991893 () Bool)

(assert (=> b!4368484 m!4991893))

(assert (=> b!4368018 d!1293383))

(declare-fun b!4368485 () Bool)

(declare-fun e!2718846 () List!49205)

(declare-fun call!303620 () List!49205)

(assert (=> b!4368485 (= e!2718846 call!303620)))

(declare-fun b!4368486 () Bool)

(declare-fun e!2718847 () List!49205)

(declare-fun c!742727 () Bool)

(declare-fun c!742729 () Bool)

(assert (=> b!4368486 (= e!2718847 (ite c!742727 (t!356125 (t!356125 (toList!3083 lm!1707))) (ite c!742729 (Cons!49081 (h!54660 (t!356125 (toList!3083 lm!1707))) (t!356125 (t!356125 (toList!3083 lm!1707)))) Nil!49081)))))

(declare-fun b!4368487 () Bool)

(assert (=> b!4368487 (= e!2718846 call!303620)))

(declare-fun b!4368488 () Bool)

(declare-fun e!2718845 () List!49205)

(declare-fun call!303621 () List!49205)

(assert (=> b!4368488 (= e!2718845 call!303621)))

(declare-fun b!4368489 () Bool)

(assert (=> b!4368489 (= e!2718847 (insertStrictlySorted!158 (t!356125 (t!356125 (toList!3083 lm!1707))) (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))

(declare-fun bm!303615 () Bool)

(declare-fun call!303619 () List!49205)

(assert (=> bm!303615 (= call!303620 call!303619)))

(declare-fun b!4368490 () Bool)

(declare-fun e!2718844 () Bool)

(declare-fun lt!1580205 () List!49205)

(assert (=> b!4368490 (= e!2718844 (contains!11366 lt!1580205 (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698))))))

(declare-fun b!4368491 () Bool)

(declare-fun e!2718848 () List!49205)

(assert (=> b!4368491 (= e!2718845 e!2718848)))

(assert (=> b!4368491 (= c!742727 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (= (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (_1!27580 lt!1579698))))))

(declare-fun b!4368492 () Bool)

(declare-fun res!1797389 () Bool)

(assert (=> b!4368492 (=> (not res!1797389) (not e!2718844))))

(assert (=> b!4368492 (= res!1797389 (containsKey!792 lt!1580205 (_1!27580 lt!1579698)))))

(declare-fun b!4368493 () Bool)

(assert (=> b!4368493 (= e!2718848 call!303619)))

(declare-fun b!4368494 () Bool)

(assert (=> b!4368494 (= c!742729 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (bvsgt (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (_1!27580 lt!1579698))))))

(assert (=> b!4368494 (= e!2718848 e!2718846)))

(declare-fun bm!303616 () Bool)

(assert (=> bm!303616 (= call!303619 call!303621)))

(declare-fun c!742726 () Bool)

(declare-fun bm!303614 () Bool)

(assert (=> bm!303614 (= call!303621 ($colon$colon!708 e!2718847 (ite c!742726 (h!54660 (t!356125 (toList!3083 lm!1707))) (tuple2!48573 (_1!27580 lt!1579698) (_2!27580 lt!1579698)))))))

(declare-fun c!742728 () Bool)

(assert (=> bm!303614 (= c!742728 c!742726)))

(declare-fun d!1293385 () Bool)

(assert (=> d!1293385 e!2718844))

(declare-fun res!1797388 () Bool)

(assert (=> d!1293385 (=> (not res!1797388) (not e!2718844))))

(assert (=> d!1293385 (= res!1797388 (isStrictlySorted!131 lt!1580205))))

(assert (=> d!1293385 (= lt!1580205 e!2718845)))

(assert (=> d!1293385 (= c!742726 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (bvslt (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (_1!27580 lt!1579698))))))

(assert (=> d!1293385 (isStrictlySorted!131 (t!356125 (toList!3083 lm!1707)))))

(assert (=> d!1293385 (= (insertStrictlySorted!158 (t!356125 (toList!3083 lm!1707)) (_1!27580 lt!1579698) (_2!27580 lt!1579698)) lt!1580205)))

(assert (= (and d!1293385 c!742726) b!4368488))

(assert (= (and d!1293385 (not c!742726)) b!4368491))

(assert (= (and b!4368491 c!742727) b!4368493))

(assert (= (and b!4368491 (not c!742727)) b!4368494))

(assert (= (and b!4368494 c!742729) b!4368485))

(assert (= (and b!4368494 (not c!742729)) b!4368487))

(assert (= (or b!4368485 b!4368487) bm!303615))

(assert (= (or b!4368493 bm!303615) bm!303616))

(assert (= (or b!4368488 bm!303616) bm!303614))

(assert (= (and bm!303614 c!742728) b!4368489))

(assert (= (and bm!303614 (not c!742728)) b!4368486))

(assert (= (and d!1293385 res!1797388) b!4368492))

(assert (= (and b!4368492 res!1797389) b!4368490))

(declare-fun m!4991895 () Bool)

(assert (=> b!4368490 m!4991895))

(declare-fun m!4991897 () Bool)

(assert (=> b!4368489 m!4991897))

(declare-fun m!4991899 () Bool)

(assert (=> b!4368492 m!4991899))

(declare-fun m!4991901 () Bool)

(assert (=> bm!303614 m!4991901))

(declare-fun m!4991903 () Bool)

(assert (=> d!1293385 m!4991903))

(assert (=> d!1293385 m!4991037))

(assert (=> b!4368080 d!1293385))

(declare-fun d!1293387 () Bool)

(declare-fun res!1797390 () Bool)

(declare-fun e!2718849 () Bool)

(assert (=> d!1293387 (=> res!1797390 e!2718849)))

(assert (=> d!1293387 (= res!1797390 (or (is-Nil!49081 (t!356125 (toList!3083 lm!1707))) (is-Nil!49081 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> d!1293387 (= (isStrictlySorted!131 (t!356125 (toList!3083 lm!1707))) e!2718849)))

(declare-fun b!4368495 () Bool)

(declare-fun e!2718850 () Bool)

(assert (=> b!4368495 (= e!2718849 e!2718850)))

(declare-fun res!1797391 () Bool)

(assert (=> b!4368495 (=> (not res!1797391) (not e!2718850))))

(assert (=> b!4368495 (= res!1797391 (bvslt (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (_1!27580 (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun b!4368496 () Bool)

(assert (=> b!4368496 (= e!2718850 (isStrictlySorted!131 (t!356125 (t!356125 (toList!3083 lm!1707)))))))

(assert (= (and d!1293387 (not res!1797390)) b!4368495))

(assert (= (and b!4368495 res!1797391) b!4368496))

(declare-fun m!4991905 () Bool)

(assert (=> b!4368496 m!4991905))

(assert (=> b!4367891 d!1293387))

(declare-fun d!1293389 () Bool)

(declare-fun c!742730 () Bool)

(assert (=> d!1293389 (= c!742730 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (= (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hash!377)))))

(declare-fun e!2718851 () Option!10521)

(assert (=> d!1293389 (= (getValueByKey!507 (t!356125 (toList!3083 lm!1707)) hash!377) e!2718851)))

(declare-fun b!4368497 () Bool)

(assert (=> b!4368497 (= e!2718851 (Some!10520 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun b!4368500 () Bool)

(declare-fun e!2718852 () Option!10521)

(assert (=> b!4368500 (= e!2718852 None!10520)))

(declare-fun b!4368498 () Bool)

(assert (=> b!4368498 (= e!2718851 e!2718852)))

(declare-fun c!742731 () Bool)

(assert (=> b!4368498 (= c!742731 (and (is-Cons!49081 (t!356125 (toList!3083 lm!1707))) (not (= (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hash!377))))))

(declare-fun b!4368499 () Bool)

(assert (=> b!4368499 (= e!2718852 (getValueByKey!507 (t!356125 (t!356125 (toList!3083 lm!1707))) hash!377))))

(assert (= (and d!1293389 c!742730) b!4368497))

(assert (= (and d!1293389 (not c!742730)) b!4368498))

(assert (= (and b!4368498 c!742731) b!4368499))

(assert (= (and b!4368498 (not c!742731)) b!4368500))

(declare-fun m!4991907 () Bool)

(assert (=> b!4368499 m!4991907))

(assert (=> b!4367954 d!1293389))

(assert (=> d!1293099 d!1293095))

(declare-fun d!1293391 () Bool)

(assert (=> d!1293391 (= (getValueByKey!507 lt!1579756 (_1!27580 lt!1579698)) (Some!10520 (_2!27580 lt!1579698)))))

(assert (=> d!1293391 true))

(declare-fun _$23!191 () Unit!73210)

(assert (=> d!1293391 (= (choose!27170 lt!1579756 (_1!27580 lt!1579698) (_2!27580 lt!1579698)) _$23!191)))

(declare-fun bs!637628 () Bool)

(assert (= bs!637628 d!1293391))

(assert (=> bs!637628 m!4990857))

(assert (=> d!1293099 d!1293391))

(declare-fun d!1293393 () Bool)

(declare-fun res!1797392 () Bool)

(declare-fun e!2718853 () Bool)

(assert (=> d!1293393 (=> res!1797392 e!2718853)))

(assert (=> d!1293393 (= res!1797392 (or (is-Nil!49081 lt!1579756) (is-Nil!49081 (t!356125 lt!1579756))))))

(assert (=> d!1293393 (= (isStrictlySorted!131 lt!1579756) e!2718853)))

(declare-fun b!4368501 () Bool)

(declare-fun e!2718854 () Bool)

(assert (=> b!4368501 (= e!2718853 e!2718854)))

(declare-fun res!1797393 () Bool)

(assert (=> b!4368501 (=> (not res!1797393) (not e!2718854))))

(assert (=> b!4368501 (= res!1797393 (bvslt (_1!27580 (h!54660 lt!1579756)) (_1!27580 (h!54660 (t!356125 lt!1579756)))))))

(declare-fun b!4368502 () Bool)

(assert (=> b!4368502 (= e!2718854 (isStrictlySorted!131 (t!356125 lt!1579756)))))

(assert (= (and d!1293393 (not res!1797392)) b!4368501))

(assert (= (and b!4368501 res!1797393) b!4368502))

(declare-fun m!4991909 () Bool)

(assert (=> b!4368502 m!4991909))

(assert (=> d!1293099 d!1293393))

(declare-fun d!1293395 () Bool)

(declare-fun c!742732 () Bool)

(assert (=> d!1293395 (= c!742732 (is-Nil!49084 lt!1579858))))

(declare-fun e!2718855 () (Set K!10443))

(assert (=> d!1293395 (= (content!7779 lt!1579858) e!2718855)))

(declare-fun b!4368503 () Bool)

(assert (=> b!4368503 (= e!2718855 (as set.empty (Set K!10443)))))

(declare-fun b!4368504 () Bool)

(assert (=> b!4368504 (= e!2718855 (set.union (set.insert (h!54665 lt!1579858) (as set.empty (Set K!10443))) (content!7779 (t!356128 lt!1579858))))))

(assert (= (and d!1293395 c!742732) b!4368503))

(assert (= (and d!1293395 (not c!742732)) b!4368504))

(declare-fun m!4991911 () Bool)

(assert (=> b!4368504 m!4991911))

(declare-fun m!4991913 () Bool)

(assert (=> b!4368504 m!4991913))

(assert (=> b!4367883 d!1293395))

(declare-fun d!1293397 () Bool)

(declare-fun c!742733 () Bool)

(assert (=> d!1293397 (= c!742733 (is-Nil!49084 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117)))))

(declare-fun e!2718856 () (Set K!10443))

(assert (=> d!1293397 (= (content!7779 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117)) e!2718856)))

(declare-fun b!4368505 () Bool)

(assert (=> b!4368505 (= e!2718856 (as set.empty (Set K!10443)))))

(declare-fun b!4368506 () Bool)

(assert (=> b!4368506 (= e!2718856 (set.union (set.insert (h!54665 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117)) (as set.empty (Set K!10443))) (content!7779 (t!356128 (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117)))))))

(assert (= (and d!1293397 c!742733) b!4368505))

(assert (= (and d!1293397 (not c!742733)) b!4368506))

(declare-fun m!4991915 () Bool)

(assert (=> b!4368506 m!4991915))

(declare-fun m!4991917 () Bool)

(assert (=> b!4368506 m!4991917))

(assert (=> b!4367883 d!1293397))

(declare-fun d!1293399 () Bool)

(declare-fun lt!1580206 () List!49208)

(assert (=> d!1293399 (= (size!35855 lt!1580206) (size!35856 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(declare-fun e!2718857 () List!49208)

(assert (=> d!1293399 (= lt!1580206 e!2718857)))

(declare-fun c!742734 () Bool)

(assert (=> d!1293399 (= c!742734 (is-Nil!49080 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293399 (= (map!10685 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) lambda!143117) lt!1580206)))

(declare-fun b!4368507 () Bool)

(assert (=> b!4368507 (= e!2718857 Nil!49084)))

(declare-fun b!4368508 () Bool)

(assert (=> b!4368508 (= e!2718857 ($colon$colon!710 (map!10685 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lambda!143117) (dynLambda!20680 lambda!143117 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293399 c!742734) b!4368507))

(assert (= (and d!1293399 (not c!742734)) b!4368508))

(declare-fun b_lambda!132693 () Bool)

(assert (=> (not b_lambda!132693) (not b!4368508)))

(declare-fun m!4991919 () Bool)

(assert (=> d!1293399 m!4991919))

(assert (=> d!1293399 m!4991579))

(declare-fun m!4991921 () Bool)

(assert (=> b!4368508 m!4991921))

(declare-fun m!4991923 () Bool)

(assert (=> b!4368508 m!4991923))

(assert (=> b!4368508 m!4991921))

(assert (=> b!4368508 m!4991923))

(declare-fun m!4991925 () Bool)

(assert (=> b!4368508 m!4991925))

(assert (=> b!4367883 d!1293399))

(declare-fun d!1293401 () Bool)

(declare-fun res!1797394 () Bool)

(declare-fun e!2718858 () Bool)

(assert (=> d!1293401 (=> res!1797394 e!2718858)))

(assert (=> d!1293401 (= res!1797394 (not (is-Cons!49080 (t!356124 (_2!27580 lt!1579696)))))))

(assert (=> d!1293401 (= (noDuplicateKeys!550 (t!356124 (_2!27580 lt!1579696))) e!2718858)))

(declare-fun b!4368509 () Bool)

(declare-fun e!2718859 () Bool)

(assert (=> b!4368509 (= e!2718858 e!2718859)))

(declare-fun res!1797395 () Bool)

(assert (=> b!4368509 (=> (not res!1797395) (not e!2718859))))

(assert (=> b!4368509 (= res!1797395 (not (containsKey!793 (t!356124 (t!356124 (_2!27580 lt!1579696))) (_1!27579 (h!54659 (t!356124 (_2!27580 lt!1579696)))))))))

(declare-fun b!4368510 () Bool)

(assert (=> b!4368510 (= e!2718859 (noDuplicateKeys!550 (t!356124 (t!356124 (_2!27580 lt!1579696)))))))

(assert (= (and d!1293401 (not res!1797394)) b!4368509))

(assert (= (and b!4368509 res!1797395) b!4368510))

(declare-fun m!4991927 () Bool)

(assert (=> b!4368509 m!4991927))

(declare-fun m!4991929 () Bool)

(assert (=> b!4368510 m!4991929))

(assert (=> b!4367962 d!1293401))

(declare-fun d!1293403 () Bool)

(declare-fun res!1797396 () Bool)

(declare-fun e!2718860 () Bool)

(assert (=> d!1293403 (=> res!1797396 e!2718860)))

(assert (=> d!1293403 (= res!1797396 (and (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) key!3918)))))

(assert (=> d!1293403 (= (containsKey!794 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918) e!2718860)))

(declare-fun b!4368511 () Bool)

(declare-fun e!2718861 () Bool)

(assert (=> b!4368511 (= e!2718860 e!2718861)))

(declare-fun res!1797397 () Bool)

(assert (=> b!4368511 (=> (not res!1797397) (not e!2718861))))

(assert (=> b!4368511 (= res!1797397 (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun b!4368512 () Bool)

(assert (=> b!4368512 (= e!2718861 (containsKey!794 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(assert (= (and d!1293403 (not res!1797396)) b!4368511))

(assert (= (and b!4368511 res!1797397) b!4368512))

(declare-fun m!4991931 () Bool)

(assert (=> b!4368512 m!4991931))

(assert (=> b!4367951 d!1293403))

(declare-fun d!1293405 () Bool)

(declare-fun lt!1580207 () Bool)

(assert (=> d!1293405 (= lt!1580207 (set.member (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (content!7779 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun e!2718863 () Bool)

(assert (=> d!1293405 (= lt!1580207 e!2718863)))

(declare-fun res!1797398 () Bool)

(assert (=> d!1293405 (=> (not res!1797398) (not e!2718863))))

(assert (=> d!1293405 (= res!1797398 (is-Cons!49084 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (=> d!1293405 (= (contains!11372 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) lt!1580207)))

(declare-fun b!4368513 () Bool)

(declare-fun e!2718862 () Bool)

(assert (=> b!4368513 (= e!2718863 e!2718862)))

(declare-fun res!1797399 () Bool)

(assert (=> b!4368513 (=> res!1797399 e!2718862)))

(assert (=> b!4368513 (= res!1797399 (= (h!54665 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(declare-fun b!4368514 () Bool)

(assert (=> b!4368514 (= e!2718862 (contains!11372 (t!356128 (getKeysList!152 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293405 res!1797398) b!4368513))

(assert (= (and b!4368513 (not res!1797399)) b!4368514))

(assert (=> d!1293405 m!4991169))

(declare-fun m!4991933 () Bool)

(assert (=> d!1293405 m!4991933))

(declare-fun m!4991935 () Bool)

(assert (=> d!1293405 m!4991935))

(declare-fun m!4991937 () Bool)

(assert (=> b!4368514 m!4991937))

(assert (=> b!4368007 d!1293405))

(assert (=> b!4368007 d!1293349))

(declare-fun d!1293407 () Bool)

(declare-fun res!1797400 () Bool)

(declare-fun e!2718864 () Bool)

(assert (=> d!1293407 (=> res!1797400 e!2718864)))

(assert (=> d!1293407 (= res!1797400 (is-Nil!49084 lt!1579953))))

(assert (=> d!1293407 (= (forall!9222 lt!1579953 lambda!143160) e!2718864)))

(declare-fun b!4368515 () Bool)

(declare-fun e!2718865 () Bool)

(assert (=> b!4368515 (= e!2718864 e!2718865)))

(declare-fun res!1797401 () Bool)

(assert (=> b!4368515 (=> (not res!1797401) (not e!2718865))))

(assert (=> b!4368515 (= res!1797401 (dynLambda!20681 lambda!143160 (h!54665 lt!1579953)))))

(declare-fun b!4368516 () Bool)

(assert (=> b!4368516 (= e!2718865 (forall!9222 (t!356128 lt!1579953) lambda!143160))))

(assert (= (and d!1293407 (not res!1797400)) b!4368515))

(assert (= (and b!4368515 res!1797401) b!4368516))

(declare-fun b_lambda!132695 () Bool)

(assert (=> (not b_lambda!132695) (not b!4368515)))

(declare-fun m!4991939 () Bool)

(assert (=> b!4368515 m!4991939))

(declare-fun m!4991941 () Bool)

(assert (=> b!4368516 m!4991941))

(assert (=> b!4368007 d!1293407))

(declare-fun d!1293409 () Bool)

(declare-fun res!1797402 () Bool)

(declare-fun e!2718866 () Bool)

(assert (=> d!1293409 (=> res!1797402 e!2718866)))

(assert (=> d!1293409 (= res!1797402 (and (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(assert (=> d!1293409 (= (containsKey!794 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) e!2718866)))

(declare-fun b!4368517 () Bool)

(declare-fun e!2718867 () Bool)

(assert (=> b!4368517 (= e!2718866 e!2718867)))

(declare-fun res!1797403 () Bool)

(assert (=> b!4368517 (=> (not res!1797403) (not e!2718867))))

(assert (=> b!4368517 (= res!1797403 (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(declare-fun b!4368518 () Bool)

(assert (=> b!4368518 (= e!2718867 (containsKey!794 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (= (and d!1293409 (not res!1797402)) b!4368517))

(assert (= (and b!4368517 res!1797403) b!4368518))

(declare-fun m!4991943 () Bool)

(assert (=> b!4368518 m!4991943))

(assert (=> b!4368007 d!1293409))

(declare-fun bs!637629 () Bool)

(declare-fun d!1293411 () Bool)

(assert (= bs!637629 (and d!1293411 b!4368007)))

(declare-fun lambda!143238 () Int)

(assert (=> bs!637629 (= lambda!143238 lambda!143160)))

(declare-fun bs!637630 () Bool)

(assert (= bs!637630 (and d!1293411 b!4368428)))

(assert (=> bs!637630 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143238 lambda!143225))))

(declare-fun bs!637631 () Bool)

(assert (= bs!637631 (and d!1293411 b!4368011)))

(assert (=> bs!637631 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= lambda!143238 lambda!143159))))

(declare-fun bs!637632 () Bool)

(assert (= bs!637632 (and d!1293411 b!4367882)))

(assert (=> bs!637632 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143238 lambda!143116))))

(declare-fun bs!637633 () Bool)

(assert (= bs!637633 (and d!1293411 b!4368009)))

(assert (=> bs!637633 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (= lambda!143238 lambda!143161))))

(declare-fun bs!637634 () Bool)

(assert (= bs!637634 (and d!1293411 b!4368426)))

(assert (=> bs!637634 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (Cons!49080 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))) (= lambda!143238 lambda!143224))))

(declare-fun bs!637635 () Bool)

(assert (= bs!637635 (and d!1293411 b!4368430)))

(assert (=> bs!637635 (= (= (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (= lambda!143238 lambda!143223))))

(assert (=> d!1293411 true))

(assert (=> d!1293411 true))

(assert (=> d!1293411 (forall!9222 lt!1579953 lambda!143238)))

(declare-fun lt!1580210 () Unit!73210)

(declare-fun choose!27182 (List!49204 List!49208 tuple2!48570) Unit!73210)

(assert (=> d!1293411 (= lt!1580210 (choose!27182 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lt!1579953 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> d!1293411 (invariantList!704 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))

(assert (=> d!1293411 (= (lemmaForallContainsAddHeadPreserves!35 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) lt!1579953 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) lt!1580210)))

(declare-fun bs!637636 () Bool)

(assert (= bs!637636 d!1293411))

(declare-fun m!4991945 () Bool)

(assert (=> bs!637636 m!4991945))

(declare-fun m!4991947 () Bool)

(assert (=> bs!637636 m!4991947))

(assert (=> bs!637636 m!4991759))

(assert (=> b!4368007 d!1293411))

(declare-fun d!1293413 () Bool)

(declare-fun res!1797404 () Bool)

(declare-fun e!2718868 () Bool)

(assert (=> d!1293413 (=> res!1797404 e!2718868)))

(assert (=> d!1293413 (= res!1797404 (and (is-Cons!49080 (t!356124 lt!1579694)) (= (_1!27579 (h!54659 (t!356124 lt!1579694))) (_1!27579 (h!54659 lt!1579694)))))))

(assert (=> d!1293413 (= (containsKey!793 (t!356124 lt!1579694) (_1!27579 (h!54659 lt!1579694))) e!2718868)))

(declare-fun b!4368521 () Bool)

(declare-fun e!2718869 () Bool)

(assert (=> b!4368521 (= e!2718868 e!2718869)))

(declare-fun res!1797405 () Bool)

(assert (=> b!4368521 (=> (not res!1797405) (not e!2718869))))

(assert (=> b!4368521 (= res!1797405 (is-Cons!49080 (t!356124 lt!1579694)))))

(declare-fun b!4368522 () Bool)

(assert (=> b!4368522 (= e!2718869 (containsKey!793 (t!356124 (t!356124 lt!1579694)) (_1!27579 (h!54659 lt!1579694))))))

(assert (= (and d!1293413 (not res!1797404)) b!4368521))

(assert (= (and b!4368521 res!1797405) b!4368522))

(declare-fun m!4991949 () Bool)

(assert (=> b!4368522 m!4991949))

(assert (=> b!4367965 d!1293413))

(declare-fun d!1293415 () Bool)

(declare-fun res!1797406 () Bool)

(declare-fun e!2718870 () Bool)

(assert (=> d!1293415 (=> res!1797406 e!2718870)))

(assert (=> d!1293415 (= res!1797406 (not (is-Cons!49080 (t!356124 (t!356124 newBucket!200)))))))

(assert (=> d!1293415 (= (noDuplicateKeys!550 (t!356124 (t!356124 newBucket!200))) e!2718870)))

(declare-fun b!4368523 () Bool)

(declare-fun e!2718871 () Bool)

(assert (=> b!4368523 (= e!2718870 e!2718871)))

(declare-fun res!1797407 () Bool)

(assert (=> b!4368523 (=> (not res!1797407) (not e!2718871))))

(assert (=> b!4368523 (= res!1797407 (not (containsKey!793 (t!356124 (t!356124 (t!356124 newBucket!200))) (_1!27579 (h!54659 (t!356124 (t!356124 newBucket!200)))))))))

(declare-fun b!4368524 () Bool)

(assert (=> b!4368524 (= e!2718871 (noDuplicateKeys!550 (t!356124 (t!356124 (t!356124 newBucket!200)))))))

(assert (= (and d!1293415 (not res!1797406)) b!4368523))

(assert (= (and b!4368523 res!1797407) b!4368524))

(declare-fun m!4991951 () Bool)

(assert (=> b!4368523 m!4991951))

(declare-fun m!4991953 () Bool)

(assert (=> b!4368524 m!4991953))

(assert (=> b!4367860 d!1293415))

(declare-fun d!1293417 () Bool)

(declare-fun res!1797408 () Bool)

(declare-fun e!2718872 () Bool)

(assert (=> d!1293417 (=> res!1797408 e!2718872)))

(assert (=> d!1293417 (= res!1797408 (is-Nil!49084 lt!1579955))))

(assert (=> d!1293417 (= (forall!9222 lt!1579955 lambda!143161) e!2718872)))

(declare-fun b!4368525 () Bool)

(declare-fun e!2718873 () Bool)

(assert (=> b!4368525 (= e!2718872 e!2718873)))

(declare-fun res!1797409 () Bool)

(assert (=> b!4368525 (=> (not res!1797409) (not e!2718873))))

(assert (=> b!4368525 (= res!1797409 (dynLambda!20681 lambda!143161 (h!54665 lt!1579955)))))

(declare-fun b!4368526 () Bool)

(assert (=> b!4368526 (= e!2718873 (forall!9222 (t!356128 lt!1579955) lambda!143161))))

(assert (= (and d!1293417 (not res!1797408)) b!4368525))

(assert (= (and b!4368525 res!1797409) b!4368526))

(declare-fun b_lambda!132697 () Bool)

(assert (=> (not b_lambda!132697) (not b!4368525)))

(declare-fun m!4991955 () Bool)

(assert (=> b!4368525 m!4991955))

(declare-fun m!4991957 () Bool)

(assert (=> b!4368526 m!4991957))

(assert (=> b!4368009 d!1293417))

(declare-fun b!4368528 () Bool)

(declare-fun e!2718874 () Option!10522)

(declare-fun e!2718875 () Option!10522)

(assert (=> b!4368528 (= e!2718874 e!2718875)))

(declare-fun c!742736 () Bool)

(assert (=> b!4368528 (= c!742736 (and (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (not (= (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) key!3918))))))

(declare-fun b!4368529 () Bool)

(assert (=> b!4368529 (= e!2718875 (getValueByKey!508 (t!356124 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) key!3918))))

(declare-fun b!4368530 () Bool)

(assert (=> b!4368530 (= e!2718875 None!10521)))

(declare-fun b!4368527 () Bool)

(assert (=> b!4368527 (= e!2718874 (Some!10521 (_2!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))))

(declare-fun d!1293419 () Bool)

(declare-fun c!742735 () Bool)

(assert (=> d!1293419 (= c!742735 (and (is-Cons!49080 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (= (_1!27579 (h!54659 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) key!3918)))))

(assert (=> d!1293419 (= (getValueByKey!508 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) key!3918) e!2718874)))

(assert (= (and d!1293419 c!742735) b!4368527))

(assert (= (and d!1293419 (not c!742735)) b!4368528))

(assert (= (and b!4368528 c!742736) b!4368529))

(assert (= (and b!4368528 (not c!742736)) b!4368530))

(declare-fun m!4991959 () Bool)

(assert (=> b!4368529 m!4991959))

(assert (=> b!4367902 d!1293419))

(assert (=> d!1293067 d!1293063))

(assert (=> d!1293067 d!1293065))

(declare-fun d!1293421 () Bool)

(declare-fun res!1797410 () Bool)

(declare-fun e!2718876 () Bool)

(assert (=> d!1293421 (=> res!1797410 e!2718876)))

(assert (=> d!1293421 (= res!1797410 (is-Nil!49081 (t!356125 (t!356125 (toList!3083 lm!1707)))))))

(assert (=> d!1293421 (= (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143082) e!2718876)))

(declare-fun b!4368531 () Bool)

(declare-fun e!2718877 () Bool)

(assert (=> b!4368531 (= e!2718876 e!2718877)))

(declare-fun res!1797411 () Bool)

(assert (=> b!4368531 (=> (not res!1797411) (not e!2718877))))

(assert (=> b!4368531 (= res!1797411 (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707))))))))

(declare-fun b!4368532 () Bool)

(assert (=> b!4368532 (= e!2718877 (forall!9218 (t!356125 (t!356125 (t!356125 (toList!3083 lm!1707)))) lambda!143082))))

(assert (= (and d!1293421 (not res!1797410)) b!4368531))

(assert (= (and b!4368531 res!1797411) b!4368532))

(declare-fun b_lambda!132699 () Bool)

(assert (=> (not b_lambda!132699) (not b!4368531)))

(declare-fun m!4991961 () Bool)

(assert (=> b!4368531 m!4991961))

(declare-fun m!4991963 () Bool)

(assert (=> b!4368532 m!4991963))

(assert (=> b!4367911 d!1293421))

(declare-fun d!1293423 () Bool)

(declare-fun c!742737 () Bool)

(assert (=> d!1293423 (= c!742737 (is-Nil!49081 (toList!3083 lt!1579755)))))

(declare-fun e!2718878 () (Set tuple2!48572))

(assert (=> d!1293423 (= (content!7777 (toList!3083 lt!1579755)) e!2718878)))

(declare-fun b!4368533 () Bool)

(assert (=> b!4368533 (= e!2718878 (as set.empty (Set tuple2!48572)))))

(declare-fun b!4368534 () Bool)

(assert (=> b!4368534 (= e!2718878 (set.union (set.insert (h!54660 (toList!3083 lt!1579755)) (as set.empty (Set tuple2!48572))) (content!7777 (t!356125 (toList!3083 lt!1579755)))))))

(assert (= (and d!1293423 c!742737) b!4368533))

(assert (= (and d!1293423 (not c!742737)) b!4368534))

(declare-fun m!4991965 () Bool)

(assert (=> b!4368534 m!4991965))

(assert (=> b!4368534 m!4991677))

(assert (=> d!1293043 d!1293423))

(declare-fun d!1293425 () Bool)

(declare-fun res!1797412 () Bool)

(declare-fun e!2718879 () Bool)

(assert (=> d!1293425 (=> res!1797412 e!2718879)))

(assert (=> d!1293425 (= res!1797412 (and (is-Cons!49080 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))) (= (_1!27579 (h!54659 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))) (_1!27579 (h!54659 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))))

(assert (=> d!1293425 (= (containsKey!793 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200))) (_1!27579 (h!54659 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))) e!2718879)))

(declare-fun b!4368535 () Bool)

(declare-fun e!2718880 () Bool)

(assert (=> b!4368535 (= e!2718879 e!2718880)))

(declare-fun res!1797413 () Bool)

(assert (=> b!4368535 (=> (not res!1797413) (not e!2718880))))

(assert (=> b!4368535 (= res!1797413 (is-Cons!49080 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))))))

(declare-fun b!4368536 () Bool)

(assert (=> b!4368536 (= e!2718880 (containsKey!793 (t!356124 (t!356124 (_2!27580 (tuple2!48573 hash!377 newBucket!200)))) (_1!27579 (h!54659 (_2!27580 (tuple2!48573 hash!377 newBucket!200))))))))

(assert (= (and d!1293425 (not res!1797412)) b!4368535))

(assert (= (and b!4368535 res!1797413) b!4368536))

(declare-fun m!4991967 () Bool)

(assert (=> b!4368536 m!4991967))

(assert (=> b!4367861 d!1293425))

(declare-fun b!4368537 () Bool)

(declare-fun e!2718881 () List!49204)

(assert (=> b!4368537 (= e!2718881 (t!356124 (t!356124 (t!356124 lt!1579694))))))

(declare-fun d!1293427 () Bool)

(declare-fun lt!1580211 () List!49204)

(assert (=> d!1293427 (not (containsKey!793 lt!1580211 key!3918))))

(assert (=> d!1293427 (= lt!1580211 e!2718881)))

(declare-fun c!742738 () Bool)

(assert (=> d!1293427 (= c!742738 (and (is-Cons!49080 (t!356124 (t!356124 lt!1579694))) (= (_1!27579 (h!54659 (t!356124 (t!356124 lt!1579694)))) key!3918)))))

(assert (=> d!1293427 (noDuplicateKeys!550 (t!356124 (t!356124 lt!1579694)))))

(assert (=> d!1293427 (= (removePairForKey!518 (t!356124 (t!356124 lt!1579694)) key!3918) lt!1580211)))

(declare-fun b!4368539 () Bool)

(declare-fun e!2718882 () List!49204)

(assert (=> b!4368539 (= e!2718882 (Cons!49080 (h!54659 (t!356124 (t!356124 lt!1579694))) (removePairForKey!518 (t!356124 (t!356124 (t!356124 lt!1579694))) key!3918)))))

(declare-fun b!4368540 () Bool)

(assert (=> b!4368540 (= e!2718882 Nil!49080)))

(declare-fun b!4368538 () Bool)

(assert (=> b!4368538 (= e!2718881 e!2718882)))

(declare-fun c!742739 () Bool)

(assert (=> b!4368538 (= c!742739 (is-Cons!49080 (t!356124 (t!356124 lt!1579694))))))

(assert (= (and d!1293427 c!742738) b!4368537))

(assert (= (and d!1293427 (not c!742738)) b!4368538))

(assert (= (and b!4368538 c!742739) b!4368539))

(assert (= (and b!4368538 (not c!742739)) b!4368540))

(declare-fun m!4991969 () Bool)

(assert (=> d!1293427 m!4991969))

(assert (=> d!1293427 m!4991597))

(declare-fun m!4991971 () Bool)

(assert (=> b!4368539 m!4991971))

(assert (=> b!4367928 d!1293427))

(declare-fun d!1293429 () Bool)

(assert (=> d!1293429 (= (length!82 lt!1579858) (size!35855 lt!1579858))))

(declare-fun bs!637637 () Bool)

(assert (= bs!637637 d!1293429))

(declare-fun m!4991973 () Bool)

(assert (=> bs!637637 m!4991973))

(assert (=> b!4367881 d!1293429))

(assert (=> b!4367881 d!1293255))

(declare-fun d!1293431 () Bool)

(declare-fun lt!1580212 () Bool)

(assert (=> d!1293431 (= lt!1580212 (set.member key!3918 (content!7779 (t!356128 e!2718346))))))

(declare-fun e!2718884 () Bool)

(assert (=> d!1293431 (= lt!1580212 e!2718884)))

(declare-fun res!1797414 () Bool)

(assert (=> d!1293431 (=> (not res!1797414) (not e!2718884))))

(assert (=> d!1293431 (= res!1797414 (is-Cons!49084 (t!356128 e!2718346)))))

(assert (=> d!1293431 (= (contains!11372 (t!356128 e!2718346) key!3918) lt!1580212)))

(declare-fun b!4368541 () Bool)

(declare-fun e!2718883 () Bool)

(assert (=> b!4368541 (= e!2718884 e!2718883)))

(declare-fun res!1797415 () Bool)

(assert (=> b!4368541 (=> res!1797415 e!2718883)))

(assert (=> b!4368541 (= res!1797415 (= (h!54665 (t!356128 e!2718346)) key!3918))))

(declare-fun b!4368542 () Bool)

(assert (=> b!4368542 (= e!2718883 (contains!11372 (t!356128 (t!356128 e!2718346)) key!3918))))

(assert (= (and d!1293431 res!1797414) b!4368541))

(assert (= (and b!4368541 (not res!1797415)) b!4368542))

(assert (=> d!1293431 m!4991715))

(declare-fun m!4991975 () Bool)

(assert (=> d!1293431 m!4991975))

(declare-fun m!4991977 () Bool)

(assert (=> b!4368542 m!4991977))

(assert (=> b!4368016 d!1293431))

(declare-fun d!1293433 () Bool)

(declare-fun res!1797416 () Bool)

(declare-fun e!2718885 () Bool)

(assert (=> d!1293433 (=> res!1797416 e!2718885)))

(assert (=> d!1293433 (= res!1797416 (not (is-Cons!49080 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))))

(assert (=> d!1293433 (= (noDuplicateKeys!550 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))) e!2718885)))

(declare-fun b!4368543 () Bool)

(declare-fun e!2718886 () Bool)

(assert (=> b!4368543 (= e!2718885 e!2718886)))

(declare-fun res!1797417 () Bool)

(assert (=> b!4368543 (=> (not res!1797417) (not e!2718886))))

(assert (=> b!4368543 (= res!1797417 (not (containsKey!793 (t!356124 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))))))

(declare-fun b!4368544 () Bool)

(assert (=> b!4368544 (= e!2718886 (noDuplicateKeys!550 (t!356124 (_2!27580 (h!54660 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))))

(assert (= (and d!1293433 (not res!1797416)) b!4368543))

(assert (= (and b!4368543 res!1797417) b!4368544))

(declare-fun m!4991979 () Bool)

(assert (=> b!4368543 m!4991979))

(declare-fun m!4991981 () Bool)

(assert (=> b!4368544 m!4991981))

(assert (=> bs!637488 d!1293433))

(declare-fun d!1293435 () Bool)

(declare-fun res!1797418 () Bool)

(declare-fun e!2718887 () Bool)

(assert (=> d!1293435 (=> res!1797418 e!2718887)))

(assert (=> d!1293435 (= res!1797418 (is-Nil!49081 (t!356125 (toList!3083 lm!1707))))))

(assert (=> d!1293435 (= (forall!9218 (t!356125 (toList!3083 lm!1707)) lambda!143105) e!2718887)))

(declare-fun b!4368545 () Bool)

(declare-fun e!2718888 () Bool)

(assert (=> b!4368545 (= e!2718887 e!2718888)))

(declare-fun res!1797419 () Bool)

(assert (=> b!4368545 (=> (not res!1797419) (not e!2718888))))

(assert (=> b!4368545 (= res!1797419 (dynLambda!20676 lambda!143105 (h!54660 (t!356125 (toList!3083 lm!1707)))))))

(declare-fun b!4368546 () Bool)

(assert (=> b!4368546 (= e!2718888 (forall!9218 (t!356125 (t!356125 (toList!3083 lm!1707))) lambda!143105))))

(assert (= (and d!1293435 (not res!1797418)) b!4368545))

(assert (= (and b!4368545 res!1797419) b!4368546))

(declare-fun b_lambda!132701 () Bool)

(assert (=> (not b_lambda!132701) (not b!4368545)))

(declare-fun m!4991983 () Bool)

(assert (=> b!4368545 m!4991983))

(declare-fun m!4991985 () Bool)

(assert (=> b!4368546 m!4991985))

(assert (=> b!4367939 d!1293435))

(declare-fun d!1293437 () Bool)

(declare-fun res!1797420 () Bool)

(declare-fun e!2718889 () Bool)

(assert (=> d!1293437 (=> res!1797420 e!2718889)))

(assert (=> d!1293437 (= res!1797420 (is-Nil!49084 lt!1579858))))

(assert (=> d!1293437 (= (noDuplicate!613 lt!1579858) e!2718889)))

(declare-fun b!4368547 () Bool)

(declare-fun e!2718890 () Bool)

(assert (=> b!4368547 (= e!2718889 e!2718890)))

(declare-fun res!1797421 () Bool)

(assert (=> b!4368547 (=> (not res!1797421) (not e!2718890))))

(assert (=> b!4368547 (= res!1797421 (not (contains!11372 (t!356128 lt!1579858) (h!54665 lt!1579858))))))

(declare-fun b!4368548 () Bool)

(assert (=> b!4368548 (= e!2718890 (noDuplicate!613 (t!356128 lt!1579858)))))

(assert (= (and d!1293437 (not res!1797420)) b!4368547))

(assert (= (and b!4368547 res!1797421) b!4368548))

(declare-fun m!4991987 () Bool)

(assert (=> b!4368547 m!4991987))

(declare-fun m!4991989 () Bool)

(assert (=> b!4368548 m!4991989))

(assert (=> d!1293015 d!1293437))

(assert (=> d!1293015 d!1293079))

(declare-fun d!1293439 () Bool)

(declare-fun res!1797422 () Bool)

(declare-fun e!2718891 () Bool)

(assert (=> d!1293439 (=> res!1797422 e!2718891)))

(assert (=> d!1293439 (= res!1797422 (and (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))) (= (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lt!1579697))))))))))

(assert (=> d!1293439 (= (containsKey!793 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697)))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))) e!2718891)))

(declare-fun b!4368549 () Bool)

(declare-fun e!2718892 () Bool)

(assert (=> b!4368549 (= e!2718891 e!2718892)))

(declare-fun res!1797423 () Bool)

(assert (=> b!4368549 (=> (not res!1797423) (not e!2718892))))

(assert (=> b!4368549 (= res!1797423 (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))))))

(declare-fun b!4368550 () Bool)

(assert (=> b!4368550 (= e!2718892 (containsKey!793 (t!356124 (t!356124 (_2!27580 (h!54660 (toList!3083 lt!1579697))))) (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lt!1579697)))))))))

(assert (= (and d!1293439 (not res!1797422)) b!4368549))

(assert (= (and b!4368549 res!1797423) b!4368550))

(declare-fun m!4991991 () Bool)

(assert (=> b!4368550 m!4991991))

(assert (=> b!4367936 d!1293439))

(declare-fun b!4368551 () Bool)

(declare-fun e!2718893 () Bool)

(declare-fun tp!1330833 () Bool)

(assert (=> b!4368551 (= e!2718893 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330833))))

(assert (=> b!4368089 (= tp!1330825 e!2718893)))

(assert (= (and b!4368089 (is-Cons!49080 (t!356124 (t!356124 (t!356124 newBucket!200))))) b!4368551))

(declare-fun b!4368552 () Bool)

(declare-fun tp!1330834 () Bool)

(declare-fun e!2718894 () Bool)

(assert (=> b!4368552 (= e!2718894 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330834))))

(assert (=> b!4368095 (= tp!1330827 e!2718894)))

(assert (= (and b!4368095 (is-Cons!49080 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))))) b!4368552))

(declare-fun b!4368553 () Bool)

(declare-fun e!2718895 () Bool)

(declare-fun tp!1330835 () Bool)

(declare-fun tp!1330836 () Bool)

(assert (=> b!4368553 (= e!2718895 (and tp!1330835 tp!1330836))))

(assert (=> b!4368095 (= tp!1330828 e!2718895)))

(assert (= (and b!4368095 (is-Cons!49081 (t!356125 (t!356125 (toList!3083 lm!1707))))) b!4368553))

(declare-fun e!2718896 () Bool)

(declare-fun b!4368554 () Bool)

(declare-fun tp!1330837 () Bool)

(assert (=> b!4368554 (= e!2718896 (and tp_is_empty!25437 tp_is_empty!25439 tp!1330837))))

(assert (=> b!4368094 (= tp!1330826 e!2718896)))

(assert (= (and b!4368094 (is-Cons!49080 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) b!4368554))

(declare-fun b_lambda!132703 () Bool)

(assert (= b_lambda!132701 (or d!1292969 b_lambda!132703)))

(declare-fun bs!637638 () Bool)

(declare-fun d!1293441 () Bool)

(assert (= bs!637638 (and d!1293441 d!1292969)))

(assert (=> bs!637638 (= (dynLambda!20676 lambda!143105 (h!54660 (t!356125 (toList!3083 lm!1707)))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> bs!637638 m!4991263))

(assert (=> b!4368545 d!1293441))

(declare-fun b_lambda!132705 () Bool)

(assert (= b_lambda!132663 (or d!1292927 b_lambda!132705)))

(declare-fun bs!637639 () Bool)

(declare-fun d!1293443 () Bool)

(assert (= bs!637639 (and d!1293443 d!1292927)))

(assert (=> bs!637639 (= (dynLambda!20676 lambda!143096 (h!54660 (t!356125 (toList!3083 lm!1707)))) (allKeysSameHash!508 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) (_1!27580 (h!54660 (t!356125 (toList!3083 lm!1707)))) hashF!1247))))

(declare-fun m!4991993 () Bool)

(assert (=> bs!637639 m!4991993))

(assert (=> b!4368311 d!1293443))

(declare-fun b_lambda!132707 () Bool)

(assert (= b_lambda!132667 (or b!4368004 b_lambda!132707)))

(declare-fun bs!637640 () Bool)

(declare-fun d!1293445 () Bool)

(assert (= bs!637640 (and d!1293445 b!4368004)))

(assert (=> bs!637640 (= (dynLambda!20680 lambda!143162 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> b!4368339 d!1293445))

(declare-fun b_lambda!132709 () Bool)

(assert (= b_lambda!132697 (or b!4368009 b_lambda!132709)))

(declare-fun bs!637641 () Bool)

(declare-fun d!1293447 () Bool)

(assert (= bs!637641 (and d!1293447 b!4368009)))

(assert (=> bs!637641 (= (dynLambda!20681 lambda!143161 (h!54665 lt!1579955)) (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) (h!54665 lt!1579955)))))

(declare-fun m!4991995 () Bool)

(assert (=> bs!637641 m!4991995))

(assert (=> b!4368525 d!1293447))

(declare-fun b_lambda!132711 () Bool)

(assert (= b_lambda!132689 (or b!4367978 b_lambda!132711)))

(declare-fun bs!637642 () Bool)

(declare-fun d!1293449 () Bool)

(assert (= bs!637642 (and d!1293449 b!4367978)))

(assert (=> bs!637642 (= (dynLambda!20678 lambda!143148 (h!54659 (toList!3084 lt!1579921))) (contains!11368 lt!1579928 (_1!27579 (h!54659 (toList!3084 lt!1579921)))))))

(declare-fun m!4991997 () Bool)

(assert (=> bs!637642 m!4991997))

(assert (=> b!4368479 d!1293449))

(declare-fun b_lambda!132713 () Bool)

(assert (= b_lambda!132687 (or b!4367978 b_lambda!132713)))

(declare-fun bs!637643 () Bool)

(declare-fun d!1293451 () Bool)

(assert (= bs!637643 (and d!1293451 b!4367978)))

(assert (=> bs!637643 (= (dynLambda!20678 lambda!143148 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (contains!11368 lt!1579928 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(assert (=> bs!637643 m!4991137))

(assert (=> b!4368458 d!1293451))

(declare-fun b_lambda!132715 () Bool)

(assert (= b_lambda!132683 (or b!4367978 b_lambda!132715)))

(assert (=> d!1293363 d!1293451))

(declare-fun b_lambda!132717 () Bool)

(assert (= b_lambda!132679 (or b!4368011 b_lambda!132717)))

(declare-fun bs!637644 () Bool)

(declare-fun d!1293453 () Bool)

(assert (= bs!637644 (and d!1293453 b!4368011)))

(assert (=> bs!637644 (= (dynLambda!20681 lambda!143159 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))) (containsKey!794 (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))))))))

(assert (=> bs!637644 m!4991173))

(assert (=> d!1293347 d!1293453))

(declare-fun b_lambda!132719 () Bool)

(assert (= b_lambda!132695 (or b!4368007 b_lambda!132719)))

(declare-fun bs!637645 () Bool)

(declare-fun d!1293455 () Bool)

(assert (= bs!637645 (and d!1293455 b!4368007)))

(assert (=> bs!637645 (= (dynLambda!20681 lambda!143160 (h!54665 lt!1579953)) (containsKey!794 (Cons!49080 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707)))) (t!356124 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (h!54665 lt!1579953)))))

(declare-fun m!4991999 () Bool)

(assert (=> bs!637645 m!4991999))

(assert (=> b!4368515 d!1293455))

(declare-fun b_lambda!132721 () Bool)

(assert (= b_lambda!132659 (or d!1293075 b_lambda!132721)))

(declare-fun bs!637646 () Bool)

(declare-fun d!1293457 () Bool)

(assert (= bs!637646 (and d!1293457 d!1293075)))

(assert (=> bs!637646 (= (dynLambda!20678 lambda!143149 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))) (contains!11368 lt!1579933 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))))

(declare-fun m!4992001 () Bool)

(assert (=> bs!637646 m!4992001))

(assert (=> b!4368287 d!1293457))

(declare-fun b_lambda!132723 () Bool)

(assert (= b_lambda!132675 (or d!1293077 b_lambda!132723)))

(declare-fun bs!637647 () Bool)

(declare-fun d!1293459 () Bool)

(assert (= bs!637647 (and d!1293459 d!1293077)))

(assert (=> bs!637647 (= (dynLambda!20676 lambda!143150 (h!54660 (t!356125 (toList!3083 lm!1707)))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 lm!1707))))))))

(assert (=> bs!637647 m!4991263))

(assert (=> b!4368391 d!1293459))

(declare-fun b_lambda!132725 () Bool)

(assert (= b_lambda!132677 (or start!423810 b_lambda!132725)))

(declare-fun bs!637648 () Bool)

(declare-fun d!1293461 () Bool)

(assert (= bs!637648 (and d!1293461 start!423810)))

(assert (=> bs!637648 (= (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200)))))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (toList!3083 (+!733 lm!1707 (tuple2!48573 hash!377 newBucket!200))))))))))

(declare-fun m!4992003 () Bool)

(assert (=> bs!637648 m!4992003))

(assert (=> b!4368416 d!1293461))

(declare-fun b_lambda!132727 () Bool)

(assert (= b_lambda!132673 (or d!1292947 b_lambda!132727)))

(declare-fun bs!637649 () Bool)

(declare-fun d!1293463 () Bool)

(assert (= bs!637649 (and d!1293463 d!1292947)))

(assert (=> bs!637649 (= (dynLambda!20678 lambda!143099 (h!54659 (t!356124 newBucket!200))) (= (hash!1699 hashF!1247 (_1!27579 (h!54659 (t!356124 newBucket!200)))) hash!377))))

(declare-fun m!4992005 () Bool)

(assert (=> bs!637649 m!4992005))

(assert (=> b!4368385 d!1293463))

(declare-fun b_lambda!132729 () Bool)

(assert (= b_lambda!132671 (or start!423810 b_lambda!132729)))

(declare-fun bs!637650 () Bool)

(declare-fun d!1293465 () Bool)

(assert (= bs!637650 (and d!1293465 start!423810)))

(assert (=> bs!637650 (= (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (t!356125 (toList!3083 lt!1579697))))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (t!356125 (toList!3083 lt!1579697)))))))))

(declare-fun m!4992007 () Bool)

(assert (=> bs!637650 m!4992007))

(assert (=> b!4368348 d!1293465))

(declare-fun b_lambda!132731 () Bool)

(assert (= b_lambda!132691 (or b!4367978 b_lambda!132731)))

(declare-fun bs!637651 () Bool)

(declare-fun d!1293467 () Bool)

(assert (= bs!637651 (and d!1293467 b!4367978)))

(assert (=> bs!637651 (= (dynLambda!20678 lambda!143148 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707)))))) (contains!11368 lt!1579928 (_1!27579 (h!54659 (toList!3084 (extractMap!609 (t!356125 (toList!3083 lm!1707))))))))))

(declare-fun m!4992009 () Bool)

(assert (=> bs!637651 m!4992009))

(assert (=> b!4368481 d!1293467))

(declare-fun b_lambda!132733 () Bool)

(assert (= b_lambda!132665 (or d!1293075 b_lambda!132733)))

(declare-fun bs!637652 () Bool)

(declare-fun d!1293469 () Bool)

(assert (= bs!637652 (and d!1293469 d!1293075)))

(assert (=> bs!637652 (= (dynLambda!20678 lambda!143149 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707))))) (contains!11368 lt!1579933 (_1!27579 (h!54659 (_2!27580 (h!54660 (toList!3083 lm!1707)))))))))

(declare-fun m!4992011 () Bool)

(assert (=> bs!637652 m!4992011))

(assert (=> b!4368320 d!1293469))

(declare-fun b_lambda!132735 () Bool)

(assert (= b_lambda!132693 (or b!4367883 b_lambda!132735)))

(declare-fun bs!637653 () Bool)

(declare-fun d!1293471 () Bool)

(assert (= bs!637653 (and d!1293471 b!4367883)))

(assert (=> bs!637653 (= (dynLambda!20680 lambda!143117 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))) (_1!27579 (h!54659 (toList!3084 (extractMap!609 (toList!3083 lm!1707))))))))

(assert (=> b!4368508 d!1293471))

(declare-fun b_lambda!132737 () Bool)

(assert (= b_lambda!132669 (or b!4367882 b_lambda!132737)))

(declare-fun bs!637654 () Bool)

(declare-fun d!1293473 () Bool)

(assert (= bs!637654 (and d!1293473 b!4367882)))

(assert (=> bs!637654 (= (dynLambda!20681 lambda!143116 (h!54665 lt!1579858)) (containsKey!794 (toList!3084 (extractMap!609 (toList!3083 lm!1707))) (h!54665 lt!1579858)))))

(declare-fun m!4992013 () Bool)

(assert (=> bs!637654 m!4992013))

(assert (=> b!4368344 d!1293473))

(declare-fun b_lambda!132739 () Bool)

(assert (= b_lambda!132699 (or start!423810 b_lambda!132739)))

(declare-fun bs!637655 () Bool)

(declare-fun d!1293475 () Bool)

(assert (= bs!637655 (and d!1293475 start!423810)))

(assert (=> bs!637655 (= (dynLambda!20676 lambda!143082 (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707))))) (noDuplicateKeys!550 (_2!27580 (h!54660 (t!356125 (t!356125 (toList!3083 lm!1707)))))))))

(declare-fun m!4992015 () Bool)

(assert (=> bs!637655 m!4992015))

(assert (=> b!4368531 d!1293475))

(declare-fun b_lambda!132741 () Bool)

(assert (= b_lambda!132685 (or b!4367978 b_lambda!132741)))

(declare-fun bs!637656 () Bool)

(declare-fun d!1293477 () Bool)

(assert (= bs!637656 (and d!1293477 b!4367978)))

(assert (=> bs!637656 (= (dynLambda!20678 lambda!143148 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707)))))) (contains!11368 lt!1579928 (_1!27579 (h!54659 (t!356124 (_2!27580 (h!54660 (toList!3083 lm!1707))))))))))

(declare-fun m!4992017 () Bool)

(assert (=> bs!637656 m!4992017))

(assert (=> b!4368450 d!1293477))

(push 1)

(assert (not bm!303614))

(assert (not b_lambda!132729))

(assert (not b!4368449))

(assert (not b!4368550))

(assert (not b!4368418))

(assert (not d!1293259))

(assert (not d!1293301))

(assert (not b_lambda!132661))

(assert (not d!1293333))

(assert (not b!4368426))

(assert (not b!4368347))

(assert (not b!4368489))

(assert (not b!4368349))

(assert (not bs!637656))

(assert (not b!4368554))

(assert (not b!4368400))

(assert (not b!4368502))

(assert (not d!1293261))

(assert (not b!4368476))

(assert (not b!4368461))

(assert (not bs!637639))

(assert (not b!4368290))

(assert (not b!4368310))

(assert (not b!4368309))

(assert (not b_lambda!132731))

(assert (not b!4368317))

(assert (not b!4368327))

(assert (not bm!303613))

(assert (not d!1293287))

(assert (not b!4368459))

(assert (not b!4368484))

(assert (not d!1293277))

(assert (not b!4368363))

(assert (not b!4368369))

(assert (not b!4368529))

(assert (not b!4368490))

(assert (not b!4368524))

(assert (not bs!637651))

(assert (not d!1293399))

(assert (not bs!637655))

(assert (not b!4368514))

(assert (not d!1293225))

(assert (not b_lambda!132711))

(assert (not b!4368466))

(assert (not b!4368532))

(assert (not b!4368403))

(assert (not b_lambda!132719))

(assert (not bs!637641))

(assert (not bm!303604))

(assert (not bm!303612))

(assert (not b!4368326))

(assert (not b_lambda!132739))

(assert (not b_lambda!132721))

(assert (not d!1293309))

(assert (not b!4368300))

(assert (not d!1293361))

(assert (not d!1293269))

(assert (not d!1293357))

(assert (not b!4368496))

(assert tp_is_empty!25439)

(assert (not d!1293383))

(assert (not b!4368438))

(assert (not b!4368314))

(assert (not b!4368547))

(assert (not b!4368325))

(assert (not b!4368358))

(assert (not d!1293249))

(assert (not b!4368526))

(assert (not bm!303611))

(assert (not b_lambda!132737))

(assert (not b!4368296))

(assert (not b!4368384))

(assert (not bs!637645))

(assert (not d!1293347))

(assert (not d!1293411))

(assert (not b_lambda!132715))

(assert (not d!1293253))

(assert (not b!4368354))

(assert (not b!4368480))

(assert (not d!1293375))

(assert (not b!4368492))

(assert (not b_lambda!132629))

(assert (not b!4368523))

(assert (not d!1293429))

(assert (not b!4368473))

(assert (not b_lambda!132733))

(assert (not b!4368534))

(assert (not b!4368306))

(assert (not b!4368468))

(assert (not b_lambda!132623))

(assert (not b_lambda!132727))

(assert (not b_lambda!132627))

(assert (not b!4368410))

(assert (not b!4368386))

(assert (not d!1293327))

(assert (not b!4368518))

(assert (not b!4368512))

(assert (not b_lambda!132725))

(assert (not b!4368470))

(assert (not b_lambda!132717))

(assert (not d!1293391))

(assert (not bs!637647))

(assert (not b!4368329))

(assert (not b!4368510))

(assert (not d!1293311))

(assert (not bs!637652))

(assert (not b!4368467))

(assert (not d!1293349))

(assert (not b!4368546))

(assert (not b!4368397))

(assert (not d!1293405))

(assert (not b!4368475))

(assert (not b!4368431))

(assert (not b!4368402))

(assert (not b!4368552))

(assert (not b!4368464))

(assert (not d!1293325))

(assert (not bm!303610))

(assert (not b!4368444))

(assert (not b!4368506))

(assert (not bs!637654))

(assert (not bs!637646))

(assert (not b!4368323))

(assert (not b_lambda!132587))

(assert (not b!4368388))

(assert (not b!4368292))

(assert (not d!1293329))

(assert (not b!4368422))

(assert (not b!4368544))

(assert (not b!4368395))

(assert (not b_lambda!132741))

(assert (not b!4368551))

(assert (not b!4368457))

(assert (not b!4368423))

(assert (not b!4368288))

(assert (not b!4368428))

(assert (not b!4368405))

(assert (not b!4368398))

(assert (not b!4368318))

(assert (not b!4368446))

(assert (not b_lambda!132723))

(assert (not b!4368321))

(assert (not b!4368504))

(assert (not bs!637638))

(assert (not b!4368443))

(assert (not b_lambda!132589))

(assert (not d!1293263))

(assert (not b!4368542))

(assert (not d!1293427))

(assert (not b!4368482))

(assert (not b!4368553))

(assert (not b_lambda!132621))

(assert tp_is_empty!25437)

(assert (not b_lambda!132631))

(assert (not bs!637644))

(assert (not b!4368522))

(assert (not bm!303605))

(assert (not b!4368372))

(assert (not b_lambda!132709))

(assert (not d!1293371))

(assert (not b!4368508))

(assert (not d!1293373))

(assert (not b!4368451))

(assert (not bs!637650))

(assert (not d!1293289))

(assert (not bm!303609))

(assert (not b!4368407))

(assert (not b!4368499))

(assert (not b!4368390))

(assert (not b!4368469))

(assert (not b!4368434))

(assert (not b!4368509))

(assert (not d!1293317))

(assert (not b!4368298))

(assert (not b_lambda!132705))

(assert (not b!4368411))

(assert (not b!4368294))

(assert (not d!1293241))

(assert (not b!4368430))

(assert (not b!4368361))

(assert (not b!4368376))

(assert (not d!1293229))

(assert (not b!4368419))

(assert (not bs!637648))

(assert (not d!1293255))

(assert (not d!1293367))

(assert (not d!1293323))

(assert (not b!4368536))

(assert (not b!4368539))

(assert (not b!4368463))

(assert (not b!4368312))

(assert (not b!4368415))

(assert (not bs!637643))

(assert (not b_lambda!132583))

(assert (not b!4368345))

(assert (not b!4368460))

(assert (not b!4368477))

(assert (not bm!303603))

(assert (not b!4368399))

(assert (not b!4368356))

(assert (not bs!637649))

(assert (not b!4368413))

(assert (not b!4368381))

(assert (not d!1293431))

(assert (not b_lambda!132619))

(assert (not b_lambda!132703))

(assert (not b!4368417))

(assert (not d!1293363))

(assert (not b!4368308))

(assert (not b!4368339))

(assert (not d!1293385))

(assert (not d!1293251))

(assert (not b!4368548))

(assert (not b_lambda!132585))

(assert (not b!4368543))

(assert (not b!4368472))

(assert (not b!4368364))

(assert (not b!4368370))

(assert (not b!4368331))

(assert (not b!4368409))

(assert (not b!4368392))

(assert (not b_lambda!132707))

(assert (not b_lambda!132713))

(assert (not bs!637642))

(assert (not b!4368456))

(assert (not d!1293293))

(assert (not b!4368516))

(assert (not b_lambda!132681))

(assert (not b!4368441))

(assert (not b!4368382))

(assert (not b_lambda!132735))

(assert (not d!1293295))

(assert (not b!4368315))

(assert (not b!4368355))

(assert (not d!1293227))

(assert (not bm!303606))

(assert (not b!4368333))

(assert (not b_lambda!132625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

