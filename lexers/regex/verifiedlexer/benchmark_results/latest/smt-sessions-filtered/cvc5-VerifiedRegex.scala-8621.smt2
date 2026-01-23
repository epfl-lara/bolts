; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!459686 () Bool)

(assert start!459686)

(declare-fun b!4603525 () Bool)

(declare-fun e!2871455 () Bool)

(declare-fun e!2871454 () Bool)

(assert (=> b!4603525 (= e!2871455 (not e!2871454))))

(declare-fun res!1926130 () Bool)

(assert (=> b!4603525 (=> res!1926130 e!2871454)))

(declare-datatypes ((K!12508 0))(
  ( (K!12509 (val!18277 Int)) )
))
(declare-datatypes ((V!12754 0))(
  ( (V!12755 (val!18278 Int)) )
))
(declare-datatypes ((tuple2!51822 0))(
  ( (tuple2!51823 (_1!29205 K!12508) (_2!29205 V!12754)) )
))
(declare-datatypes ((List!51262 0))(
  ( (Nil!51138) (Cons!51138 (h!57112 tuple2!51822) (t!358256 List!51262)) )
))
(declare-fun newBucket!178 () List!51262)

(declare-fun key!3287 () K!12508)

(declare-fun lt!1762029 () List!51262)

(declare-fun removePairForKey!968 (List!51262 K!12508) List!51262)

(assert (=> b!4603525 (= res!1926130 (not (= newBucket!178 (removePairForKey!968 lt!1762029 key!3287))))))

(declare-fun lambda!187047 () Int)

(declare-datatypes ((Unit!108821 0))(
  ( (Unit!108822) )
))
(declare-fun lt!1762031 () Unit!108821)

(declare-datatypes ((tuple2!51824 0))(
  ( (tuple2!51825 (_1!29206 (_ BitVec 64)) (_2!29206 List!51262)) )
))
(declare-datatypes ((List!51263 0))(
  ( (Nil!51139) (Cons!51139 (h!57113 tuple2!51824) (t!358257 List!51263)) )
))
(declare-datatypes ((ListLongMap!3333 0))(
  ( (ListLongMap!3334 (toList!4701 List!51263)) )
))
(declare-fun lm!1477 () ListLongMap!3333)

(declare-fun lt!1762032 () tuple2!51824)

(declare-fun forallContained!2888 (List!51263 Int tuple2!51824) Unit!108821)

(assert (=> b!4603525 (= lt!1762031 (forallContained!2888 (toList!4701 lm!1477) lambda!187047 lt!1762032))))

(declare-fun contains!14116 (List!51263 tuple2!51824) Bool)

(assert (=> b!4603525 (contains!14116 (toList!4701 lm!1477) lt!1762032)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4603525 (= lt!1762032 (tuple2!51825 hash!344 lt!1762029))))

(declare-fun lt!1762033 () Unit!108821)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!853 (List!51263 (_ BitVec 64) List!51262) Unit!108821)

(assert (=> b!4603525 (= lt!1762033 (lemmaGetValueByKeyImpliesContainsTuple!853 (toList!4701 lm!1477) hash!344 lt!1762029))))

(declare-fun apply!12080 (ListLongMap!3333 (_ BitVec 64)) List!51262)

(assert (=> b!4603525 (= lt!1762029 (apply!12080 lm!1477 hash!344))))

(declare-fun lt!1762030 () (_ BitVec 64))

(declare-fun contains!14117 (ListLongMap!3333 (_ BitVec 64)) Bool)

(assert (=> b!4603525 (contains!14117 lm!1477 lt!1762030)))

(declare-datatypes ((Hashable!5742 0))(
  ( (HashableExt!5741 (__x!31445 Int)) )
))
(declare-fun hashF!1107 () Hashable!5742)

(declare-fun lt!1762025 () Unit!108821)

(declare-fun lemmaInGenMapThenLongMapContainsHash!417 (ListLongMap!3333 K!12508 Hashable!5742) Unit!108821)

(assert (=> b!4603525 (= lt!1762025 (lemmaInGenMapThenLongMapContainsHash!417 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4603526 () Bool)

(declare-fun tp_is_empty!28667 () Bool)

(declare-fun tp!1340681 () Bool)

(declare-fun tp_is_empty!28665 () Bool)

(declare-fun e!2871458 () Bool)

(assert (=> b!4603526 (= e!2871458 (and tp_is_empty!28665 tp_is_empty!28667 tp!1340681))))

(declare-fun b!4603527 () Bool)

(declare-fun e!2871452 () Unit!108821)

(declare-fun Unit!108823 () Unit!108821)

(assert (=> b!4603527 (= e!2871452 Unit!108823)))

(declare-fun lt!1762026 () Unit!108821)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!307 (ListLongMap!3333 K!12508 Hashable!5742) Unit!108821)

(assert (=> b!4603527 (= lt!1762026 (lemmaNotInItsHashBucketThenNotInMap!307 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4603527 false))

(declare-fun b!4603529 () Bool)

(declare-fun res!1926129 () Bool)

(declare-fun e!2871451 () Bool)

(assert (=> b!4603529 (=> res!1926129 e!2871451)))

(assert (=> b!4603529 (= res!1926129 (not (contains!14116 (t!358257 (toList!4701 lm!1477)) lt!1762032)))))

(declare-fun b!4603530 () Bool)

(declare-fun res!1926126 () Bool)

(assert (=> b!4603530 (=> (not res!1926126) (not e!2871455))))

(declare-fun allKeysSameHash!1199 (List!51262 (_ BitVec 64) Hashable!5742) Bool)

(assert (=> b!4603530 (= res!1926126 (allKeysSameHash!1199 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4603531 () Bool)

(declare-fun e!2871453 () Bool)

(assert (=> b!4603531 (= e!2871453 e!2871455)))

(declare-fun res!1926131 () Bool)

(assert (=> b!4603531 (=> (not res!1926131) (not e!2871455))))

(assert (=> b!4603531 (= res!1926131 (= lt!1762030 hash!344))))

(declare-fun hash!3264 (Hashable!5742 K!12508) (_ BitVec 64))

(assert (=> b!4603531 (= lt!1762030 (hash!3264 hashF!1107 key!3287))))

(declare-fun b!4603532 () Bool)

(declare-fun res!1926128 () Bool)

(assert (=> b!4603532 (=> (not res!1926128) (not e!2871453))))

(declare-datatypes ((ListMap!3963 0))(
  ( (ListMap!3964 (toList!4702 List!51262)) )
))
(declare-fun contains!14118 (ListMap!3963 K!12508) Bool)

(declare-fun extractMap!1403 (List!51263) ListMap!3963)

(assert (=> b!4603532 (= res!1926128 (contains!14118 (extractMap!1403 (toList!4701 lm!1477)) key!3287))))

(declare-fun b!4603533 () Bool)

(declare-fun res!1926134 () Bool)

(assert (=> b!4603533 (=> (not res!1926134) (not e!2871453))))

(declare-fun allKeysSameHashInMap!1454 (ListLongMap!3333 Hashable!5742) Bool)

(assert (=> b!4603533 (= res!1926134 (allKeysSameHashInMap!1454 lm!1477 hashF!1107))))

(declare-fun b!4603534 () Bool)

(declare-fun res!1926133 () Bool)

(assert (=> b!4603534 (=> res!1926133 e!2871454)))

(declare-fun noDuplicateKeys!1343 (List!51262) Bool)

(assert (=> b!4603534 (= res!1926133 (not (noDuplicateKeys!1343 newBucket!178)))))

(declare-fun b!4603535 () Bool)

(declare-fun e!2871456 () Bool)

(declare-fun lt!1762028 () ListLongMap!3333)

(declare-fun forall!10639 (List!51263 Int) Bool)

(assert (=> b!4603535 (= e!2871456 (forall!10639 (toList!4701 lt!1762028) lambda!187047))))

(declare-fun b!4603536 () Bool)

(declare-fun Unit!108824 () Unit!108821)

(assert (=> b!4603536 (= e!2871452 Unit!108824)))

(declare-fun b!4603537 () Bool)

(assert (=> b!4603537 (= e!2871451 e!2871456)))

(declare-fun res!1926127 () Bool)

(assert (=> b!4603537 (=> res!1926127 e!2871456)))

(declare-fun lt!1762024 () Bool)

(assert (=> b!4603537 (= res!1926127 lt!1762024)))

(declare-fun lt!1762027 () Unit!108821)

(assert (=> b!4603537 (= lt!1762027 e!2871452)))

(declare-fun c!788619 () Bool)

(assert (=> b!4603537 (= c!788619 lt!1762024)))

(declare-fun containsKey!2199 (List!51262 K!12508) Bool)

(assert (=> b!4603537 (= lt!1762024 (not (containsKey!2199 lt!1762029 key!3287)))))

(declare-fun b!4603538 () Bool)

(assert (=> b!4603538 (= e!2871454 e!2871451)))

(declare-fun res!1926125 () Bool)

(assert (=> b!4603538 (=> res!1926125 e!2871451)))

(assert (=> b!4603538 (= res!1926125 (not (contains!14117 lt!1762028 hash!344)))))

(declare-fun tail!7986 (ListLongMap!3333) ListLongMap!3333)

(assert (=> b!4603538 (= lt!1762028 (tail!7986 lm!1477))))

(declare-fun res!1926132 () Bool)

(assert (=> start!459686 (=> (not res!1926132) (not e!2871453))))

(assert (=> start!459686 (= res!1926132 (forall!10639 (toList!4701 lm!1477) lambda!187047))))

(assert (=> start!459686 e!2871453))

(assert (=> start!459686 true))

(declare-fun e!2871457 () Bool)

(declare-fun inv!66693 (ListLongMap!3333) Bool)

(assert (=> start!459686 (and (inv!66693 lm!1477) e!2871457)))

(assert (=> start!459686 tp_is_empty!28665))

(assert (=> start!459686 e!2871458))

(declare-fun b!4603528 () Bool)

(declare-fun res!1926123 () Bool)

(assert (=> b!4603528 (=> res!1926123 e!2871451)))

(assert (=> b!4603528 (= res!1926123 (not (= (apply!12080 lt!1762028 hash!344) lt!1762029)))))

(declare-fun b!4603539 () Bool)

(declare-fun res!1926124 () Bool)

(assert (=> b!4603539 (=> res!1926124 e!2871454)))

(assert (=> b!4603539 (= res!1926124 (or (is-Nil!51139 (toList!4701 lm!1477)) (= (_1!29206 (h!57113 (toList!4701 lm!1477))) hash!344)))))

(declare-fun b!4603540 () Bool)

(declare-fun tp!1340680 () Bool)

(assert (=> b!4603540 (= e!2871457 tp!1340680)))

(assert (= (and start!459686 res!1926132) b!4603533))

(assert (= (and b!4603533 res!1926134) b!4603532))

(assert (= (and b!4603532 res!1926128) b!4603531))

(assert (= (and b!4603531 res!1926131) b!4603530))

(assert (= (and b!4603530 res!1926126) b!4603525))

(assert (= (and b!4603525 (not res!1926130)) b!4603534))

(assert (= (and b!4603534 (not res!1926133)) b!4603539))

(assert (= (and b!4603539 (not res!1926124)) b!4603538))

(assert (= (and b!4603538 (not res!1926125)) b!4603528))

(assert (= (and b!4603528 (not res!1926123)) b!4603529))

(assert (= (and b!4603529 (not res!1926129)) b!4603537))

(assert (= (and b!4603537 c!788619) b!4603527))

(assert (= (and b!4603537 (not c!788619)) b!4603536))

(assert (= (and b!4603537 (not res!1926127)) b!4603535))

(assert (= start!459686 b!4603540))

(assert (= (and start!459686 (is-Cons!51138 newBucket!178)) b!4603526))

(declare-fun m!5432629 () Bool)

(assert (=> b!4603525 m!5432629))

(declare-fun m!5432631 () Bool)

(assert (=> b!4603525 m!5432631))

(declare-fun m!5432633 () Bool)

(assert (=> b!4603525 m!5432633))

(declare-fun m!5432635 () Bool)

(assert (=> b!4603525 m!5432635))

(declare-fun m!5432637 () Bool)

(assert (=> b!4603525 m!5432637))

(declare-fun m!5432639 () Bool)

(assert (=> b!4603525 m!5432639))

(declare-fun m!5432641 () Bool)

(assert (=> b!4603525 m!5432641))

(declare-fun m!5432643 () Bool)

(assert (=> b!4603532 m!5432643))

(assert (=> b!4603532 m!5432643))

(declare-fun m!5432645 () Bool)

(assert (=> b!4603532 m!5432645))

(declare-fun m!5432647 () Bool)

(assert (=> b!4603529 m!5432647))

(declare-fun m!5432649 () Bool)

(assert (=> b!4603533 m!5432649))

(declare-fun m!5432651 () Bool)

(assert (=> b!4603535 m!5432651))

(declare-fun m!5432653 () Bool)

(assert (=> b!4603534 m!5432653))

(declare-fun m!5432655 () Bool)

(assert (=> b!4603528 m!5432655))

(declare-fun m!5432657 () Bool)

(assert (=> b!4603530 m!5432657))

(declare-fun m!5432659 () Bool)

(assert (=> b!4603527 m!5432659))

(declare-fun m!5432661 () Bool)

(assert (=> b!4603538 m!5432661))

(declare-fun m!5432663 () Bool)

(assert (=> b!4603538 m!5432663))

(declare-fun m!5432665 () Bool)

(assert (=> start!459686 m!5432665))

(declare-fun m!5432667 () Bool)

(assert (=> start!459686 m!5432667))

(declare-fun m!5432669 () Bool)

(assert (=> b!4603537 m!5432669))

(declare-fun m!5432671 () Bool)

(assert (=> b!4603531 m!5432671))

(push 1)

(assert (not b!4603532))

(assert (not start!459686))

(assert tp_is_empty!28667)

(assert (not b!4603531))

(assert (not b!4603525))

(assert (not b!4603537))

(assert (not b!4603528))

(assert (not b!4603529))

(assert (not b!4603538))

(assert (not b!4603533))

(assert (not b!4603540))

(assert (not b!4603530))

(assert (not b!4603527))

(assert (not b!4603526))

(assert (not b!4603535))

(assert (not b!4603534))

(assert tp_is_empty!28665)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1449850 () Bool)

(declare-fun res!1926175 () Bool)

(declare-fun e!2871487 () Bool)

(assert (=> d!1449850 (=> res!1926175 e!2871487)))

(assert (=> d!1449850 (= res!1926175 (and (is-Cons!51138 lt!1762029) (= (_1!29205 (h!57112 lt!1762029)) key!3287)))))

(assert (=> d!1449850 (= (containsKey!2199 lt!1762029 key!3287) e!2871487)))

(declare-fun b!4603593 () Bool)

(declare-fun e!2871488 () Bool)

(assert (=> b!4603593 (= e!2871487 e!2871488)))

(declare-fun res!1926176 () Bool)

(assert (=> b!4603593 (=> (not res!1926176) (not e!2871488))))

(assert (=> b!4603593 (= res!1926176 (is-Cons!51138 lt!1762029))))

(declare-fun b!4603594 () Bool)

(assert (=> b!4603594 (= e!2871488 (containsKey!2199 (t!358256 lt!1762029) key!3287))))

(assert (= (and d!1449850 (not res!1926175)) b!4603593))

(assert (= (and b!4603593 res!1926176) b!4603594))

(declare-fun m!5432717 () Bool)

(assert (=> b!4603594 m!5432717))

(assert (=> b!4603537 d!1449850))

(declare-fun d!1449852 () Bool)

(declare-fun res!1926181 () Bool)

(declare-fun e!2871493 () Bool)

(assert (=> d!1449852 (=> res!1926181 e!2871493)))

(assert (=> d!1449852 (= res!1926181 (is-Nil!51139 (toList!4701 lt!1762028)))))

(assert (=> d!1449852 (= (forall!10639 (toList!4701 lt!1762028) lambda!187047) e!2871493)))

(declare-fun b!4603599 () Bool)

(declare-fun e!2871494 () Bool)

(assert (=> b!4603599 (= e!2871493 e!2871494)))

(declare-fun res!1926182 () Bool)

(assert (=> b!4603599 (=> (not res!1926182) (not e!2871494))))

(declare-fun dynLambda!21411 (Int tuple2!51824) Bool)

(assert (=> b!4603599 (= res!1926182 (dynLambda!21411 lambda!187047 (h!57113 (toList!4701 lt!1762028))))))

(declare-fun b!4603600 () Bool)

(assert (=> b!4603600 (= e!2871494 (forall!10639 (t!358257 (toList!4701 lt!1762028)) lambda!187047))))

(assert (= (and d!1449852 (not res!1926181)) b!4603599))

(assert (= (and b!4603599 res!1926182) b!4603600))

(declare-fun b_lambda!169733 () Bool)

(assert (=> (not b_lambda!169733) (not b!4603599)))

(declare-fun m!5432719 () Bool)

(assert (=> b!4603599 m!5432719))

(declare-fun m!5432721 () Bool)

(assert (=> b!4603600 m!5432721))

(assert (=> b!4603535 d!1449852))

(declare-fun b!4603611 () Bool)

(declare-fun e!2871500 () List!51262)

(assert (=> b!4603611 (= e!2871500 (Cons!51138 (h!57112 lt!1762029) (removePairForKey!968 (t!358256 lt!1762029) key!3287)))))

(declare-fun b!4603612 () Bool)

(assert (=> b!4603612 (= e!2871500 Nil!51138)))

(declare-fun b!4603609 () Bool)

(declare-fun e!2871499 () List!51262)

(assert (=> b!4603609 (= e!2871499 (t!358256 lt!1762029))))

(declare-fun b!4603610 () Bool)

(assert (=> b!4603610 (= e!2871499 e!2871500)))

(declare-fun c!788628 () Bool)

(assert (=> b!4603610 (= c!788628 (is-Cons!51138 lt!1762029))))

(declare-fun d!1449854 () Bool)

(declare-fun lt!1762066 () List!51262)

(assert (=> d!1449854 (not (containsKey!2199 lt!1762066 key!3287))))

(assert (=> d!1449854 (= lt!1762066 e!2871499)))

(declare-fun c!788627 () Bool)

(assert (=> d!1449854 (= c!788627 (and (is-Cons!51138 lt!1762029) (= (_1!29205 (h!57112 lt!1762029)) key!3287)))))

(assert (=> d!1449854 (noDuplicateKeys!1343 lt!1762029)))

(assert (=> d!1449854 (= (removePairForKey!968 lt!1762029 key!3287) lt!1762066)))

(assert (= (and d!1449854 c!788627) b!4603609))

(assert (= (and d!1449854 (not c!788627)) b!4603610))

(assert (= (and b!4603610 c!788628) b!4603611))

(assert (= (and b!4603610 (not c!788628)) b!4603612))

(declare-fun m!5432723 () Bool)

(assert (=> b!4603611 m!5432723))

(declare-fun m!5432725 () Bool)

(assert (=> d!1449854 m!5432725))

(declare-fun m!5432727 () Bool)

(assert (=> d!1449854 m!5432727))

(assert (=> b!4603525 d!1449854))

(declare-fun bs!1013960 () Bool)

(declare-fun d!1449856 () Bool)

(assert (= bs!1013960 (and d!1449856 start!459686)))

(declare-fun lambda!187057 () Int)

(assert (=> bs!1013960 (= lambda!187057 lambda!187047)))

(assert (=> d!1449856 (contains!14117 lm!1477 (hash!3264 hashF!1107 key!3287))))

(declare-fun lt!1762069 () Unit!108821)

(declare-fun choose!30895 (ListLongMap!3333 K!12508 Hashable!5742) Unit!108821)

(assert (=> d!1449856 (= lt!1762069 (choose!30895 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1449856 (forall!10639 (toList!4701 lm!1477) lambda!187057)))

(assert (=> d!1449856 (= (lemmaInGenMapThenLongMapContainsHash!417 lm!1477 key!3287 hashF!1107) lt!1762069)))

(declare-fun bs!1013961 () Bool)

(assert (= bs!1013961 d!1449856))

(assert (=> bs!1013961 m!5432671))

(assert (=> bs!1013961 m!5432671))

(declare-fun m!5432729 () Bool)

(assert (=> bs!1013961 m!5432729))

(declare-fun m!5432731 () Bool)

(assert (=> bs!1013961 m!5432731))

(declare-fun m!5432733 () Bool)

(assert (=> bs!1013961 m!5432733))

(assert (=> b!4603525 d!1449856))

(declare-fun d!1449860 () Bool)

(declare-datatypes ((Option!11408 0))(
  ( (None!11407) (Some!11407 (v!45416 List!51262)) )
))
(declare-fun get!16909 (Option!11408) List!51262)

(declare-fun getValueByKey!1328 (List!51263 (_ BitVec 64)) Option!11408)

(assert (=> d!1449860 (= (apply!12080 lm!1477 hash!344) (get!16909 (getValueByKey!1328 (toList!4701 lm!1477) hash!344)))))

(declare-fun bs!1013962 () Bool)

(assert (= bs!1013962 d!1449860))

(declare-fun m!5432735 () Bool)

(assert (=> bs!1013962 m!5432735))

(assert (=> bs!1013962 m!5432735))

(declare-fun m!5432737 () Bool)

(assert (=> bs!1013962 m!5432737))

(assert (=> b!4603525 d!1449860))

(declare-fun d!1449862 () Bool)

(assert (=> d!1449862 (dynLambda!21411 lambda!187047 lt!1762032)))

(declare-fun lt!1762072 () Unit!108821)

(declare-fun choose!30896 (List!51263 Int tuple2!51824) Unit!108821)

(assert (=> d!1449862 (= lt!1762072 (choose!30896 (toList!4701 lm!1477) lambda!187047 lt!1762032))))

(declare-fun e!2871503 () Bool)

(assert (=> d!1449862 e!2871503))

(declare-fun res!1926185 () Bool)

(assert (=> d!1449862 (=> (not res!1926185) (not e!2871503))))

(assert (=> d!1449862 (= res!1926185 (forall!10639 (toList!4701 lm!1477) lambda!187047))))

(assert (=> d!1449862 (= (forallContained!2888 (toList!4701 lm!1477) lambda!187047 lt!1762032) lt!1762072)))

(declare-fun b!4603615 () Bool)

(assert (=> b!4603615 (= e!2871503 (contains!14116 (toList!4701 lm!1477) lt!1762032))))

(assert (= (and d!1449862 res!1926185) b!4603615))

(declare-fun b_lambda!169735 () Bool)

(assert (=> (not b_lambda!169735) (not d!1449862)))

(declare-fun m!5432739 () Bool)

(assert (=> d!1449862 m!5432739))

(declare-fun m!5432741 () Bool)

(assert (=> d!1449862 m!5432741))

(assert (=> d!1449862 m!5432665))

(assert (=> b!4603615 m!5432639))

(assert (=> b!4603525 d!1449862))

(declare-fun d!1449864 () Bool)

(declare-fun lt!1762081 () Bool)

(declare-fun content!8671 (List!51263) (Set tuple2!51824))

(assert (=> d!1449864 (= lt!1762081 (set.member lt!1762032 (content!8671 (toList!4701 lm!1477))))))

(declare-fun e!2871510 () Bool)

(assert (=> d!1449864 (= lt!1762081 e!2871510)))

(declare-fun res!1926190 () Bool)

(assert (=> d!1449864 (=> (not res!1926190) (not e!2871510))))

(assert (=> d!1449864 (= res!1926190 (is-Cons!51139 (toList!4701 lm!1477)))))

(assert (=> d!1449864 (= (contains!14116 (toList!4701 lm!1477) lt!1762032) lt!1762081)))

(declare-fun b!4603624 () Bool)

(declare-fun e!2871511 () Bool)

(assert (=> b!4603624 (= e!2871510 e!2871511)))

(declare-fun res!1926191 () Bool)

(assert (=> b!4603624 (=> res!1926191 e!2871511)))

(assert (=> b!4603624 (= res!1926191 (= (h!57113 (toList!4701 lm!1477)) lt!1762032))))

(declare-fun b!4603625 () Bool)

(assert (=> b!4603625 (= e!2871511 (contains!14116 (t!358257 (toList!4701 lm!1477)) lt!1762032))))

(assert (= (and d!1449864 res!1926190) b!4603624))

(assert (= (and b!4603624 (not res!1926191)) b!4603625))

(declare-fun m!5432743 () Bool)

(assert (=> d!1449864 m!5432743))

(declare-fun m!5432745 () Bool)

(assert (=> d!1449864 m!5432745))

(assert (=> b!4603625 m!5432647))

(assert (=> b!4603525 d!1449864))

(declare-fun d!1449866 () Bool)

(assert (=> d!1449866 (contains!14116 (toList!4701 lm!1477) (tuple2!51825 hash!344 lt!1762029))))

(declare-fun lt!1762086 () Unit!108821)

(declare-fun choose!30897 (List!51263 (_ BitVec 64) List!51262) Unit!108821)

(assert (=> d!1449866 (= lt!1762086 (choose!30897 (toList!4701 lm!1477) hash!344 lt!1762029))))

(declare-fun e!2871516 () Bool)

(assert (=> d!1449866 e!2871516))

(declare-fun res!1926196 () Bool)

(assert (=> d!1449866 (=> (not res!1926196) (not e!2871516))))

(declare-fun isStrictlySorted!549 (List!51263) Bool)

(assert (=> d!1449866 (= res!1926196 (isStrictlySorted!549 (toList!4701 lm!1477)))))

(assert (=> d!1449866 (= (lemmaGetValueByKeyImpliesContainsTuple!853 (toList!4701 lm!1477) hash!344 lt!1762029) lt!1762086)))

(declare-fun b!4603630 () Bool)

(assert (=> b!4603630 (= e!2871516 (= (getValueByKey!1328 (toList!4701 lm!1477) hash!344) (Some!11407 lt!1762029)))))

(assert (= (and d!1449866 res!1926196) b!4603630))

(declare-fun m!5432747 () Bool)

(assert (=> d!1449866 m!5432747))

(declare-fun m!5432749 () Bool)

(assert (=> d!1449866 m!5432749))

(declare-fun m!5432751 () Bool)

(assert (=> d!1449866 m!5432751))

(assert (=> b!4603630 m!5432735))

(assert (=> b!4603525 d!1449866))

(declare-fun d!1449868 () Bool)

(declare-fun e!2871523 () Bool)

(assert (=> d!1449868 e!2871523))

(declare-fun res!1926200 () Bool)

(assert (=> d!1449868 (=> res!1926200 e!2871523)))

(declare-fun lt!1762100 () Bool)

(assert (=> d!1449868 (= res!1926200 (not lt!1762100))))

(declare-fun lt!1762101 () Bool)

(assert (=> d!1449868 (= lt!1762100 lt!1762101)))

(declare-fun lt!1762099 () Unit!108821)

(declare-fun e!2871524 () Unit!108821)

(assert (=> d!1449868 (= lt!1762099 e!2871524)))

(declare-fun c!788634 () Bool)

(assert (=> d!1449868 (= c!788634 lt!1762101)))

(declare-fun containsKey!2201 (List!51263 (_ BitVec 64)) Bool)

(assert (=> d!1449868 (= lt!1762101 (containsKey!2201 (toList!4701 lm!1477) lt!1762030))))

(assert (=> d!1449868 (= (contains!14117 lm!1477 lt!1762030) lt!1762100)))

(declare-fun b!4603640 () Bool)

(declare-fun lt!1762102 () Unit!108821)

(assert (=> b!4603640 (= e!2871524 lt!1762102)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (List!51263 (_ BitVec 64)) Unit!108821)

(assert (=> b!4603640 (= lt!1762102 (lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (toList!4701 lm!1477) lt!1762030))))

(declare-fun isDefined!8676 (Option!11408) Bool)

(assert (=> b!4603640 (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030))))

(declare-fun b!4603641 () Bool)

(declare-fun Unit!108829 () Unit!108821)

(assert (=> b!4603641 (= e!2871524 Unit!108829)))

(declare-fun b!4603642 () Bool)

(assert (=> b!4603642 (= e!2871523 (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030)))))

(assert (= (and d!1449868 c!788634) b!4603640))

(assert (= (and d!1449868 (not c!788634)) b!4603641))

(assert (= (and d!1449868 (not res!1926200)) b!4603642))

(declare-fun m!5432763 () Bool)

(assert (=> d!1449868 m!5432763))

(declare-fun m!5432765 () Bool)

(assert (=> b!4603640 m!5432765))

(declare-fun m!5432767 () Bool)

(assert (=> b!4603640 m!5432767))

(assert (=> b!4603640 m!5432767))

(declare-fun m!5432769 () Bool)

(assert (=> b!4603640 m!5432769))

(assert (=> b!4603642 m!5432767))

(assert (=> b!4603642 m!5432767))

(assert (=> b!4603642 m!5432769))

(assert (=> b!4603525 d!1449868))

(declare-fun d!1449874 () Bool)

(declare-fun res!1926209 () Bool)

(declare-fun e!2871533 () Bool)

(assert (=> d!1449874 (=> res!1926209 e!2871533)))

(assert (=> d!1449874 (= res!1926209 (not (is-Cons!51138 newBucket!178)))))

(assert (=> d!1449874 (= (noDuplicateKeys!1343 newBucket!178) e!2871533)))

(declare-fun b!4603651 () Bool)

(declare-fun e!2871534 () Bool)

(assert (=> b!4603651 (= e!2871533 e!2871534)))

(declare-fun res!1926210 () Bool)

(assert (=> b!4603651 (=> (not res!1926210) (not e!2871534))))

(assert (=> b!4603651 (= res!1926210 (not (containsKey!2199 (t!358256 newBucket!178) (_1!29205 (h!57112 newBucket!178)))))))

(declare-fun b!4603652 () Bool)

(assert (=> b!4603652 (= e!2871534 (noDuplicateKeys!1343 (t!358256 newBucket!178)))))

(assert (= (and d!1449874 (not res!1926209)) b!4603651))

(assert (= (and b!4603651 res!1926210) b!4603652))

(declare-fun m!5432771 () Bool)

(assert (=> b!4603651 m!5432771))

(declare-fun m!5432773 () Bool)

(assert (=> b!4603652 m!5432773))

(assert (=> b!4603534 d!1449874))

(declare-fun d!1449876 () Bool)

(declare-fun res!1926211 () Bool)

(declare-fun e!2871535 () Bool)

(assert (=> d!1449876 (=> res!1926211 e!2871535)))

(assert (=> d!1449876 (= res!1926211 (is-Nil!51139 (toList!4701 lm!1477)))))

(assert (=> d!1449876 (= (forall!10639 (toList!4701 lm!1477) lambda!187047) e!2871535)))

(declare-fun b!4603653 () Bool)

(declare-fun e!2871536 () Bool)

(assert (=> b!4603653 (= e!2871535 e!2871536)))

(declare-fun res!1926212 () Bool)

(assert (=> b!4603653 (=> (not res!1926212) (not e!2871536))))

(assert (=> b!4603653 (= res!1926212 (dynLambda!21411 lambda!187047 (h!57113 (toList!4701 lm!1477))))))

(declare-fun b!4603654 () Bool)

(assert (=> b!4603654 (= e!2871536 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187047))))

(assert (= (and d!1449876 (not res!1926211)) b!4603653))

(assert (= (and b!4603653 res!1926212) b!4603654))

(declare-fun b_lambda!169737 () Bool)

(assert (=> (not b_lambda!169737) (not b!4603653)))

(declare-fun m!5432775 () Bool)

(assert (=> b!4603653 m!5432775))

(declare-fun m!5432777 () Bool)

(assert (=> b!4603654 m!5432777))

(assert (=> start!459686 d!1449876))

(declare-fun d!1449878 () Bool)

(assert (=> d!1449878 (= (inv!66693 lm!1477) (isStrictlySorted!549 (toList!4701 lm!1477)))))

(declare-fun bs!1013964 () Bool)

(assert (= bs!1013964 d!1449878))

(assert (=> bs!1013964 m!5432751))

(assert (=> start!459686 d!1449878))

(declare-fun b!4603689 () Bool)

(declare-fun e!2871568 () Bool)

(declare-datatypes ((List!51266 0))(
  ( (Nil!51142) (Cons!51142 (h!57117 K!12508) (t!358260 List!51266)) )
))
(declare-fun contains!14122 (List!51266 K!12508) Bool)

(declare-fun keys!17919 (ListMap!3963) List!51266)

(assert (=> b!4603689 (= e!2871568 (not (contains!14122 (keys!17919 (extractMap!1403 (toList!4701 lm!1477))) key!3287)))))

(declare-fun b!4603690 () Bool)

(declare-fun e!2871566 () Unit!108821)

(declare-fun Unit!108830 () Unit!108821)

(assert (=> b!4603690 (= e!2871566 Unit!108830)))

(declare-fun b!4603691 () Bool)

(assert (=> b!4603691 false))

(declare-fun lt!1762127 () Unit!108821)

(declare-fun lt!1762125 () Unit!108821)

(assert (=> b!4603691 (= lt!1762127 lt!1762125)))

(declare-fun containsKey!2202 (List!51262 K!12508) Bool)

(assert (=> b!4603691 (containsKey!2202 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!581 (List!51262 K!12508) Unit!108821)

(assert (=> b!4603691 (= lt!1762125 (lemmaInGetKeysListThenContainsKey!581 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-fun Unit!108831 () Unit!108821)

(assert (=> b!4603691 (= e!2871566 Unit!108831)))

(declare-fun b!4603692 () Bool)

(declare-fun e!2871565 () Bool)

(assert (=> b!4603692 (= e!2871565 (contains!14122 (keys!17919 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-fun b!4603693 () Bool)

(declare-fun e!2871570 () List!51266)

(declare-fun getKeysList!582 (List!51262) List!51266)

(assert (=> b!4603693 (= e!2871570 (getKeysList!582 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))

(declare-fun d!1449880 () Bool)

(declare-fun e!2871569 () Bool)

(assert (=> d!1449880 e!2871569))

(declare-fun res!1926236 () Bool)

(assert (=> d!1449880 (=> res!1926236 e!2871569)))

(assert (=> d!1449880 (= res!1926236 e!2871568)))

(declare-fun res!1926237 () Bool)

(assert (=> d!1449880 (=> (not res!1926237) (not e!2871568))))

(declare-fun lt!1762129 () Bool)

(assert (=> d!1449880 (= res!1926237 (not lt!1762129))))

(declare-fun lt!1762128 () Bool)

(assert (=> d!1449880 (= lt!1762129 lt!1762128)))

(declare-fun lt!1762126 () Unit!108821)

(declare-fun e!2871567 () Unit!108821)

(assert (=> d!1449880 (= lt!1762126 e!2871567)))

(declare-fun c!788643 () Bool)

(assert (=> d!1449880 (= c!788643 lt!1762128)))

(assert (=> d!1449880 (= lt!1762128 (containsKey!2202 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(assert (=> d!1449880 (= (contains!14118 (extractMap!1403 (toList!4701 lm!1477)) key!3287) lt!1762129)))

(declare-fun b!4603694 () Bool)

(declare-fun lt!1762124 () Unit!108821)

(assert (=> b!4603694 (= e!2871567 lt!1762124)))

(declare-fun lt!1762122 () Unit!108821)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1233 (List!51262 K!12508) Unit!108821)

(assert (=> b!4603694 (= lt!1762122 (lemmaContainsKeyImpliesGetValueByKeyDefined!1233 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-datatypes ((Option!11409 0))(
  ( (None!11408) (Some!11408 (v!45417 V!12754)) )
))
(declare-fun isDefined!8677 (Option!11409) Bool)

(declare-fun getValueByKey!1329 (List!51262 K!12508) Option!11409)

(assert (=> b!4603694 (isDefined!8677 (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-fun lt!1762123 () Unit!108821)

(assert (=> b!4603694 (= lt!1762123 lt!1762122)))

(declare-fun lemmaInListThenGetKeysListContains!578 (List!51262 K!12508) Unit!108821)

(assert (=> b!4603694 (= lt!1762124 (lemmaInListThenGetKeysListContains!578 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-fun call!321240 () Bool)

(assert (=> b!4603694 call!321240))

(declare-fun b!4603695 () Bool)

(assert (=> b!4603695 (= e!2871569 e!2871565)))

(declare-fun res!1926235 () Bool)

(assert (=> b!4603695 (=> (not res!1926235) (not e!2871565))))

(assert (=> b!4603695 (= res!1926235 (isDefined!8677 (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287)))))

(declare-fun bm!321235 () Bool)

(assert (=> bm!321235 (= call!321240 (contains!14122 e!2871570 key!3287))))

(declare-fun c!788641 () Bool)

(assert (=> bm!321235 (= c!788641 c!788643)))

(declare-fun b!4603696 () Bool)

(assert (=> b!4603696 (= e!2871570 (keys!17919 (extractMap!1403 (toList!4701 lm!1477))))))

(declare-fun b!4603697 () Bool)

(assert (=> b!4603697 (= e!2871567 e!2871566)))

(declare-fun c!788642 () Bool)

(assert (=> b!4603697 (= c!788642 call!321240)))

(assert (= (and d!1449880 c!788643) b!4603694))

(assert (= (and d!1449880 (not c!788643)) b!4603697))

(assert (= (and b!4603697 c!788642) b!4603691))

(assert (= (and b!4603697 (not c!788642)) b!4603690))

(assert (= (or b!4603694 b!4603697) bm!321235))

(assert (= (and bm!321235 c!788641) b!4603693))

(assert (= (and bm!321235 (not c!788641)) b!4603696))

(assert (= (and d!1449880 res!1926237) b!4603689))

(assert (= (and d!1449880 (not res!1926236)) b!4603695))

(assert (= (and b!4603695 res!1926235) b!4603692))

(declare-fun m!5432799 () Bool)

(assert (=> b!4603693 m!5432799))

(assert (=> b!4603692 m!5432643))

(declare-fun m!5432801 () Bool)

(assert (=> b!4603692 m!5432801))

(assert (=> b!4603692 m!5432801))

(declare-fun m!5432803 () Bool)

(assert (=> b!4603692 m!5432803))

(declare-fun m!5432805 () Bool)

(assert (=> b!4603695 m!5432805))

(assert (=> b!4603695 m!5432805))

(declare-fun m!5432807 () Bool)

(assert (=> b!4603695 m!5432807))

(assert (=> b!4603689 m!5432643))

(assert (=> b!4603689 m!5432801))

(assert (=> b!4603689 m!5432801))

(assert (=> b!4603689 m!5432803))

(declare-fun m!5432809 () Bool)

(assert (=> b!4603694 m!5432809))

(assert (=> b!4603694 m!5432805))

(assert (=> b!4603694 m!5432805))

(assert (=> b!4603694 m!5432807))

(declare-fun m!5432811 () Bool)

(assert (=> b!4603694 m!5432811))

(assert (=> b!4603696 m!5432643))

(assert (=> b!4603696 m!5432801))

(declare-fun m!5432813 () Bool)

(assert (=> bm!321235 m!5432813))

(declare-fun m!5432815 () Bool)

(assert (=> d!1449880 m!5432815))

(assert (=> b!4603691 m!5432815))

(declare-fun m!5432817 () Bool)

(assert (=> b!4603691 m!5432817))

(assert (=> b!4603532 d!1449880))

(declare-fun bs!1013968 () Bool)

(declare-fun d!1449892 () Bool)

(assert (= bs!1013968 (and d!1449892 start!459686)))

(declare-fun lambda!187063 () Int)

(assert (=> bs!1013968 (= lambda!187063 lambda!187047)))

(declare-fun bs!1013969 () Bool)

(assert (= bs!1013969 (and d!1449892 d!1449856)))

(assert (=> bs!1013969 (= lambda!187063 lambda!187057)))

(declare-fun lt!1762132 () ListMap!3963)

(declare-fun invariantList!1133 (List!51262) Bool)

(assert (=> d!1449892 (invariantList!1133 (toList!4702 lt!1762132))))

(declare-fun e!2871573 () ListMap!3963)

(assert (=> d!1449892 (= lt!1762132 e!2871573)))

(declare-fun c!788646 () Bool)

(assert (=> d!1449892 (= c!788646 (is-Cons!51139 (toList!4701 lm!1477)))))

(assert (=> d!1449892 (forall!10639 (toList!4701 lm!1477) lambda!187063)))

(assert (=> d!1449892 (= (extractMap!1403 (toList!4701 lm!1477)) lt!1762132)))

(declare-fun b!4603704 () Bool)

(declare-fun addToMapMapFromBucket!825 (List!51262 ListMap!3963) ListMap!3963)

(assert (=> b!4603704 (= e!2871573 (addToMapMapFromBucket!825 (_2!29206 (h!57113 (toList!4701 lm!1477))) (extractMap!1403 (t!358257 (toList!4701 lm!1477)))))))

(declare-fun b!4603705 () Bool)

(assert (=> b!4603705 (= e!2871573 (ListMap!3964 Nil!51138))))

(assert (= (and d!1449892 c!788646) b!4603704))

(assert (= (and d!1449892 (not c!788646)) b!4603705))

(declare-fun m!5432821 () Bool)

(assert (=> d!1449892 m!5432821))

(declare-fun m!5432823 () Bool)

(assert (=> d!1449892 m!5432823))

(declare-fun m!5432825 () Bool)

(assert (=> b!4603704 m!5432825))

(assert (=> b!4603704 m!5432825))

(declare-fun m!5432827 () Bool)

(assert (=> b!4603704 m!5432827))

(assert (=> b!4603532 d!1449892))

(declare-fun bs!1013970 () Bool)

(declare-fun d!1449896 () Bool)

(assert (= bs!1013970 (and d!1449896 start!459686)))

(declare-fun lambda!187066 () Int)

(assert (=> bs!1013970 (not (= lambda!187066 lambda!187047))))

(declare-fun bs!1013971 () Bool)

(assert (= bs!1013971 (and d!1449896 d!1449856)))

(assert (=> bs!1013971 (not (= lambda!187066 lambda!187057))))

(declare-fun bs!1013972 () Bool)

(assert (= bs!1013972 (and d!1449896 d!1449892)))

(assert (=> bs!1013972 (not (= lambda!187066 lambda!187063))))

(assert (=> d!1449896 true))

(assert (=> d!1449896 (= (allKeysSameHashInMap!1454 lm!1477 hashF!1107) (forall!10639 (toList!4701 lm!1477) lambda!187066))))

(declare-fun bs!1013973 () Bool)

(assert (= bs!1013973 d!1449896))

(declare-fun m!5432829 () Bool)

(assert (=> bs!1013973 m!5432829))

(assert (=> b!4603533 d!1449896))

(declare-fun d!1449898 () Bool)

(declare-fun hash!3266 (Hashable!5742 K!12508) (_ BitVec 64))

(assert (=> d!1449898 (= (hash!3264 hashF!1107 key!3287) (hash!3266 hashF!1107 key!3287))))

(declare-fun bs!1013974 () Bool)

(assert (= bs!1013974 d!1449898))

(declare-fun m!5432831 () Bool)

(assert (=> bs!1013974 m!5432831))

(assert (=> b!4603531 d!1449898))

(declare-fun d!1449900 () Bool)

(assert (=> d!1449900 true))

(assert (=> d!1449900 true))

(declare-fun lambda!187069 () Int)

(declare-fun forall!10641 (List!51262 Int) Bool)

(assert (=> d!1449900 (= (allKeysSameHash!1199 newBucket!178 hash!344 hashF!1107) (forall!10641 newBucket!178 lambda!187069))))

(declare-fun bs!1013975 () Bool)

(assert (= bs!1013975 d!1449900))

(declare-fun m!5432833 () Bool)

(assert (=> bs!1013975 m!5432833))

(assert (=> b!4603530 d!1449900))

(declare-fun d!1449902 () Bool)

(assert (=> d!1449902 (= (apply!12080 lt!1762028 hash!344) (get!16909 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344)))))

(declare-fun bs!1013976 () Bool)

(assert (= bs!1013976 d!1449902))

(declare-fun m!5432835 () Bool)

(assert (=> bs!1013976 m!5432835))

(assert (=> bs!1013976 m!5432835))

(declare-fun m!5432837 () Bool)

(assert (=> bs!1013976 m!5432837))

(assert (=> b!4603528 d!1449902))

(declare-fun d!1449904 () Bool)

(declare-fun lt!1762133 () Bool)

(assert (=> d!1449904 (= lt!1762133 (set.member lt!1762032 (content!8671 (t!358257 (toList!4701 lm!1477)))))))

(declare-fun e!2871574 () Bool)

(assert (=> d!1449904 (= lt!1762133 e!2871574)))

(declare-fun res!1926238 () Bool)

(assert (=> d!1449904 (=> (not res!1926238) (not e!2871574))))

(assert (=> d!1449904 (= res!1926238 (is-Cons!51139 (t!358257 (toList!4701 lm!1477))))))

(assert (=> d!1449904 (= (contains!14116 (t!358257 (toList!4701 lm!1477)) lt!1762032) lt!1762133)))

(declare-fun b!4603712 () Bool)

(declare-fun e!2871575 () Bool)

(assert (=> b!4603712 (= e!2871574 e!2871575)))

(declare-fun res!1926239 () Bool)

(assert (=> b!4603712 (=> res!1926239 e!2871575)))

(assert (=> b!4603712 (= res!1926239 (= (h!57113 (t!358257 (toList!4701 lm!1477))) lt!1762032))))

(declare-fun b!4603713 () Bool)

(assert (=> b!4603713 (= e!2871575 (contains!14116 (t!358257 (t!358257 (toList!4701 lm!1477))) lt!1762032))))

(assert (= (and d!1449904 res!1926238) b!4603712))

(assert (= (and b!4603712 (not res!1926239)) b!4603713))

(declare-fun m!5432839 () Bool)

(assert (=> d!1449904 m!5432839))

(declare-fun m!5432841 () Bool)

(assert (=> d!1449904 m!5432841))

(declare-fun m!5432843 () Bool)

(assert (=> b!4603713 m!5432843))

(assert (=> b!4603529 d!1449904))

(declare-fun bs!1013977 () Bool)

(declare-fun d!1449906 () Bool)

(assert (= bs!1013977 (and d!1449906 start!459686)))

(declare-fun lambda!187072 () Int)

(assert (=> bs!1013977 (= lambda!187072 lambda!187047)))

(declare-fun bs!1013978 () Bool)

(assert (= bs!1013978 (and d!1449906 d!1449856)))

(assert (=> bs!1013978 (= lambda!187072 lambda!187057)))

(declare-fun bs!1013979 () Bool)

(assert (= bs!1013979 (and d!1449906 d!1449892)))

(assert (=> bs!1013979 (= lambda!187072 lambda!187063)))

(declare-fun bs!1013980 () Bool)

(assert (= bs!1013980 (and d!1449906 d!1449896)))

(assert (=> bs!1013980 (not (= lambda!187072 lambda!187066))))

(assert (=> d!1449906 (not (contains!14118 (extractMap!1403 (toList!4701 lm!1477)) key!3287))))

(declare-fun lt!1762136 () Unit!108821)

(declare-fun choose!30898 (ListLongMap!3333 K!12508 Hashable!5742) Unit!108821)

(assert (=> d!1449906 (= lt!1762136 (choose!30898 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1449906 (forall!10639 (toList!4701 lm!1477) lambda!187072)))

(assert (=> d!1449906 (= (lemmaNotInItsHashBucketThenNotInMap!307 lm!1477 key!3287 hashF!1107) lt!1762136)))

(declare-fun bs!1013981 () Bool)

(assert (= bs!1013981 d!1449906))

(assert (=> bs!1013981 m!5432643))

(assert (=> bs!1013981 m!5432643))

(assert (=> bs!1013981 m!5432645))

(declare-fun m!5432845 () Bool)

(assert (=> bs!1013981 m!5432845))

(declare-fun m!5432847 () Bool)

(assert (=> bs!1013981 m!5432847))

(assert (=> b!4603527 d!1449906))

(declare-fun d!1449908 () Bool)

(declare-fun e!2871576 () Bool)

(assert (=> d!1449908 e!2871576))

(declare-fun res!1926240 () Bool)

(assert (=> d!1449908 (=> res!1926240 e!2871576)))

(declare-fun lt!1762138 () Bool)

(assert (=> d!1449908 (= res!1926240 (not lt!1762138))))

(declare-fun lt!1762139 () Bool)

(assert (=> d!1449908 (= lt!1762138 lt!1762139)))

(declare-fun lt!1762137 () Unit!108821)

(declare-fun e!2871577 () Unit!108821)

(assert (=> d!1449908 (= lt!1762137 e!2871577)))

(declare-fun c!788647 () Bool)

(assert (=> d!1449908 (= c!788647 lt!1762139)))

(assert (=> d!1449908 (= lt!1762139 (containsKey!2201 (toList!4701 lt!1762028) hash!344))))

(assert (=> d!1449908 (= (contains!14117 lt!1762028 hash!344) lt!1762138)))

(declare-fun b!4603714 () Bool)

(declare-fun lt!1762140 () Unit!108821)

(assert (=> b!4603714 (= e!2871577 lt!1762140)))

(assert (=> b!4603714 (= lt!1762140 (lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (toList!4701 lt!1762028) hash!344))))

(assert (=> b!4603714 (isDefined!8676 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344))))

(declare-fun b!4603715 () Bool)

(declare-fun Unit!108832 () Unit!108821)

(assert (=> b!4603715 (= e!2871577 Unit!108832)))

(declare-fun b!4603716 () Bool)

(assert (=> b!4603716 (= e!2871576 (isDefined!8676 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344)))))

(assert (= (and d!1449908 c!788647) b!4603714))

(assert (= (and d!1449908 (not c!788647)) b!4603715))

(assert (= (and d!1449908 (not res!1926240)) b!4603716))

(declare-fun m!5432849 () Bool)

(assert (=> d!1449908 m!5432849))

(declare-fun m!5432851 () Bool)

(assert (=> b!4603714 m!5432851))

(assert (=> b!4603714 m!5432835))

(assert (=> b!4603714 m!5432835))

(declare-fun m!5432853 () Bool)

(assert (=> b!4603714 m!5432853))

(assert (=> b!4603716 m!5432835))

(assert (=> b!4603716 m!5432835))

(assert (=> b!4603716 m!5432853))

(assert (=> b!4603538 d!1449908))

(declare-fun d!1449910 () Bool)

(declare-fun tail!7988 (List!51263) List!51263)

(assert (=> d!1449910 (= (tail!7986 lm!1477) (ListLongMap!3334 (tail!7988 (toList!4701 lm!1477))))))

(declare-fun bs!1013982 () Bool)

(assert (= bs!1013982 d!1449910))

(declare-fun m!5432855 () Bool)

(assert (=> bs!1013982 m!5432855))

(assert (=> b!4603538 d!1449910))

(declare-fun b!4603721 () Bool)

(declare-fun e!2871580 () Bool)

(declare-fun tp!1340690 () Bool)

(assert (=> b!4603721 (= e!2871580 (and tp_is_empty!28665 tp_is_empty!28667 tp!1340690))))

(assert (=> b!4603526 (= tp!1340681 e!2871580)))

(assert (= (and b!4603526 (is-Cons!51138 (t!358256 newBucket!178))) b!4603721))

(declare-fun b!4603726 () Bool)

(declare-fun e!2871583 () Bool)

(declare-fun tp!1340695 () Bool)

(declare-fun tp!1340696 () Bool)

(assert (=> b!4603726 (= e!2871583 (and tp!1340695 tp!1340696))))

(assert (=> b!4603540 (= tp!1340680 e!2871583)))

(assert (= (and b!4603540 (is-Cons!51139 (toList!4701 lm!1477))) b!4603726))

(declare-fun b_lambda!169743 () Bool)

(assert (= b_lambda!169737 (or start!459686 b_lambda!169743)))

(declare-fun bs!1013983 () Bool)

(declare-fun d!1449912 () Bool)

(assert (= bs!1013983 (and d!1449912 start!459686)))

(assert (=> bs!1013983 (= (dynLambda!21411 lambda!187047 (h!57113 (toList!4701 lm!1477))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(declare-fun m!5432857 () Bool)

(assert (=> bs!1013983 m!5432857))

(assert (=> b!4603653 d!1449912))

(declare-fun b_lambda!169745 () Bool)

(assert (= b_lambda!169735 (or start!459686 b_lambda!169745)))

(declare-fun bs!1013984 () Bool)

(declare-fun d!1449914 () Bool)

(assert (= bs!1013984 (and d!1449914 start!459686)))

(assert (=> bs!1013984 (= (dynLambda!21411 lambda!187047 lt!1762032) (noDuplicateKeys!1343 (_2!29206 lt!1762032)))))

(declare-fun m!5432859 () Bool)

(assert (=> bs!1013984 m!5432859))

(assert (=> d!1449862 d!1449914))

(declare-fun b_lambda!169747 () Bool)

(assert (= b_lambda!169733 (or start!459686 b_lambda!169747)))

(declare-fun bs!1013985 () Bool)

(declare-fun d!1449916 () Bool)

(assert (= bs!1013985 (and d!1449916 start!459686)))

(assert (=> bs!1013985 (= (dynLambda!21411 lambda!187047 (h!57113 (toList!4701 lt!1762028))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lt!1762028)))))))

(declare-fun m!5432861 () Bool)

(assert (=> bs!1013985 m!5432861))

(assert (=> b!4603599 d!1449916))

(push 1)

(assert (not d!1449892))

(assert (not d!1449900))

(assert (not d!1449880))

(assert (not b!4603630))

(assert (not b!4603694))

(assert (not b!4603654))

(assert (not d!1449854))

(assert (not b!4603651))

(assert (not b!4603716))

(assert (not d!1449906))

(assert (not d!1449910))

(assert (not bs!1013984))

(assert (not b_lambda!169747))

(assert (not d!1449860))

(assert (not b!4603594))

(assert (not b!4603642))

(assert (not b!4603652))

(assert (not d!1449866))

(assert (not b!4603691))

(assert (not b!4603611))

(assert (not d!1449908))

(assert (not b_lambda!169745))

(assert (not d!1449898))

(assert (not b!4603600))

(assert (not d!1449902))

(assert (not b_lambda!169743))

(assert tp_is_empty!28667)

(assert (not b!4603693))

(assert (not b!4603640))

(assert (not bs!1013983))

(assert (not d!1449904))

(assert (not b!4603704))

(assert (not b!4603714))

(assert (not b!4603625))

(assert (not d!1449864))

(assert (not b!4603689))

(assert (not b!4603696))

(assert (not d!1449856))

(assert (not d!1449868))

(assert (not bs!1013985))

(assert (not b!4603726))

(assert (not b!4603615))

(assert tp_is_empty!28665)

(assert (not d!1449896))

(assert (not d!1449878))

(assert (not b!4603713))

(assert (not d!1449862))

(assert (not b!4603692))

(assert (not bm!321235))

(assert (not b!4603695))

(assert (not b!4603721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1449950 () Bool)

(declare-fun res!1926265 () Bool)

(declare-fun e!2871633 () Bool)

(assert (=> d!1449950 (=> res!1926265 e!2871633)))

(assert (=> d!1449950 (= res!1926265 (and (is-Cons!51138 (t!358256 newBucket!178)) (= (_1!29205 (h!57112 (t!358256 newBucket!178))) (_1!29205 (h!57112 newBucket!178)))))))

(assert (=> d!1449950 (= (containsKey!2199 (t!358256 newBucket!178) (_1!29205 (h!57112 newBucket!178))) e!2871633)))

(declare-fun b!4603803 () Bool)

(declare-fun e!2871634 () Bool)

(assert (=> b!4603803 (= e!2871633 e!2871634)))

(declare-fun res!1926266 () Bool)

(assert (=> b!4603803 (=> (not res!1926266) (not e!2871634))))

(assert (=> b!4603803 (= res!1926266 (is-Cons!51138 (t!358256 newBucket!178)))))

(declare-fun b!4603804 () Bool)

(assert (=> b!4603804 (= e!2871634 (containsKey!2199 (t!358256 (t!358256 newBucket!178)) (_1!29205 (h!57112 newBucket!178))))))

(assert (= (and d!1449950 (not res!1926265)) b!4603803))

(assert (= (and b!4603803 res!1926266) b!4603804))

(declare-fun m!5432945 () Bool)

(assert (=> b!4603804 m!5432945))

(assert (=> b!4603651 d!1449950))

(declare-fun d!1449952 () Bool)

(declare-fun res!1926271 () Bool)

(declare-fun e!2871639 () Bool)

(assert (=> d!1449952 (=> res!1926271 e!2871639)))

(assert (=> d!1449952 (= res!1926271 (is-Nil!51138 newBucket!178))))

(assert (=> d!1449952 (= (forall!10641 newBucket!178 lambda!187069) e!2871639)))

(declare-fun b!4603809 () Bool)

(declare-fun e!2871640 () Bool)

(assert (=> b!4603809 (= e!2871639 e!2871640)))

(declare-fun res!1926272 () Bool)

(assert (=> b!4603809 (=> (not res!1926272) (not e!2871640))))

(declare-fun dynLambda!21413 (Int tuple2!51822) Bool)

(assert (=> b!4603809 (= res!1926272 (dynLambda!21413 lambda!187069 (h!57112 newBucket!178)))))

(declare-fun b!4603810 () Bool)

(assert (=> b!4603810 (= e!2871640 (forall!10641 (t!358256 newBucket!178) lambda!187069))))

(assert (= (and d!1449952 (not res!1926271)) b!4603809))

(assert (= (and b!4603809 res!1926272) b!4603810))

(declare-fun b_lambda!169757 () Bool)

(assert (=> (not b_lambda!169757) (not b!4603809)))

(declare-fun m!5432947 () Bool)

(assert (=> b!4603809 m!5432947))

(declare-fun m!5432949 () Bool)

(assert (=> b!4603810 m!5432949))

(assert (=> d!1449900 d!1449952))

(declare-fun d!1449954 () Bool)

(declare-fun res!1926277 () Bool)

(declare-fun e!2871645 () Bool)

(assert (=> d!1449954 (=> res!1926277 e!2871645)))

(assert (=> d!1449954 (= res!1926277 (or (is-Nil!51139 (toList!4701 lm!1477)) (is-Nil!51139 (t!358257 (toList!4701 lm!1477)))))))

(assert (=> d!1449954 (= (isStrictlySorted!549 (toList!4701 lm!1477)) e!2871645)))

(declare-fun b!4603815 () Bool)

(declare-fun e!2871646 () Bool)

(assert (=> b!4603815 (= e!2871645 e!2871646)))

(declare-fun res!1926278 () Bool)

(assert (=> b!4603815 (=> (not res!1926278) (not e!2871646))))

(assert (=> b!4603815 (= res!1926278 (bvslt (_1!29206 (h!57113 (toList!4701 lm!1477))) (_1!29206 (h!57113 (t!358257 (toList!4701 lm!1477))))))))

(declare-fun b!4603816 () Bool)

(assert (=> b!4603816 (= e!2871646 (isStrictlySorted!549 (t!358257 (toList!4701 lm!1477))))))

(assert (= (and d!1449954 (not res!1926277)) b!4603815))

(assert (= (and b!4603815 res!1926278) b!4603816))

(declare-fun m!5432951 () Bool)

(assert (=> b!4603816 m!5432951))

(assert (=> d!1449878 d!1449954))

(declare-fun b!4603824 () Bool)

(assert (=> b!4603824 true))

(declare-fun d!1449956 () Bool)

(declare-fun e!2871649 () Bool)

(assert (=> d!1449956 e!2871649))

(declare-fun res!1926287 () Bool)

(assert (=> d!1449956 (=> (not res!1926287) (not e!2871649))))

(declare-fun lt!1762190 () List!51266)

(declare-fun noDuplicate!817 (List!51266) Bool)

(assert (=> d!1449956 (= res!1926287 (noDuplicate!817 lt!1762190))))

(assert (=> d!1449956 (= lt!1762190 (getKeysList!582 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))

(assert (=> d!1449956 (= (keys!17919 (extractMap!1403 (toList!4701 lm!1477))) lt!1762190)))

(declare-fun b!4603823 () Bool)

(declare-fun res!1926285 () Bool)

(assert (=> b!4603823 (=> (not res!1926285) (not e!2871649))))

(declare-fun length!490 (List!51266) Int)

(declare-fun length!491 (List!51262) Int)

(assert (=> b!4603823 (= res!1926285 (= (length!490 lt!1762190) (length!491 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))))

(declare-fun res!1926286 () Bool)

(assert (=> b!4603824 (=> (not res!1926286) (not e!2871649))))

(declare-fun lambda!187089 () Int)

(declare-fun forall!10643 (List!51266 Int) Bool)

(assert (=> b!4603824 (= res!1926286 (forall!10643 lt!1762190 lambda!187089))))

(declare-fun lambda!187090 () Int)

(declare-fun b!4603825 () Bool)

(declare-fun content!8673 (List!51266) (Set K!12508))

(declare-fun map!11302 (List!51262 Int) List!51266)

(assert (=> b!4603825 (= e!2871649 (= (content!8673 lt!1762190) (content!8673 (map!11302 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) lambda!187090))))))

(assert (= (and d!1449956 res!1926287) b!4603823))

(assert (= (and b!4603823 res!1926285) b!4603824))

(assert (= (and b!4603824 res!1926286) b!4603825))

(declare-fun m!5432953 () Bool)

(assert (=> d!1449956 m!5432953))

(assert (=> d!1449956 m!5432799))

(declare-fun m!5432955 () Bool)

(assert (=> b!4603823 m!5432955))

(declare-fun m!5432957 () Bool)

(assert (=> b!4603823 m!5432957))

(declare-fun m!5432959 () Bool)

(assert (=> b!4603824 m!5432959))

(declare-fun m!5432961 () Bool)

(assert (=> b!4603825 m!5432961))

(declare-fun m!5432963 () Bool)

(assert (=> b!4603825 m!5432963))

(assert (=> b!4603825 m!5432963))

(declare-fun m!5432965 () Bool)

(assert (=> b!4603825 m!5432965))

(assert (=> b!4603696 d!1449956))

(declare-fun d!1449958 () Bool)

(declare-fun c!788669 () Bool)

(assert (=> d!1449958 (= c!788669 (is-Nil!51139 (toList!4701 lm!1477)))))

(declare-fun e!2871652 () (Set tuple2!51824))

(assert (=> d!1449958 (= (content!8671 (toList!4701 lm!1477)) e!2871652)))

(declare-fun b!4603832 () Bool)

(assert (=> b!4603832 (= e!2871652 (as set.empty (Set tuple2!51824)))))

(declare-fun b!4603833 () Bool)

(assert (=> b!4603833 (= e!2871652 (set.union (set.insert (h!57113 (toList!4701 lm!1477)) (as set.empty (Set tuple2!51824))) (content!8671 (t!358257 (toList!4701 lm!1477)))))))

(assert (= (and d!1449958 c!788669) b!4603832))

(assert (= (and d!1449958 (not c!788669)) b!4603833))

(declare-fun m!5432967 () Bool)

(assert (=> b!4603833 m!5432967))

(assert (=> b!4603833 m!5432839))

(assert (=> d!1449864 d!1449958))

(declare-fun d!1449960 () Bool)

(declare-fun isEmpty!28875 (Option!11409) Bool)

(assert (=> d!1449960 (= (isDefined!8677 (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287)) (not (isEmpty!28875 (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))))

(declare-fun bs!1014004 () Bool)

(assert (= bs!1014004 d!1449960))

(assert (=> bs!1014004 m!5432805))

(declare-fun m!5432969 () Bool)

(assert (=> bs!1014004 m!5432969))

(assert (=> b!4603695 d!1449960))

(declare-fun b!4603844 () Bool)

(declare-fun e!2871658 () Option!11409)

(assert (=> b!4603844 (= e!2871658 (getValueByKey!1329 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) key!3287))))

(declare-fun d!1449962 () Bool)

(declare-fun c!788674 () Bool)

(assert (=> d!1449962 (= c!788674 (and (is-Cons!51138 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (= (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) key!3287)))))

(declare-fun e!2871657 () Option!11409)

(assert (=> d!1449962 (= (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287) e!2871657)))

(declare-fun b!4603842 () Bool)

(assert (=> b!4603842 (= e!2871657 (Some!11408 (_2!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))))

(declare-fun b!4603843 () Bool)

(assert (=> b!4603843 (= e!2871657 e!2871658)))

(declare-fun c!788675 () Bool)

(assert (=> b!4603843 (= c!788675 (and (is-Cons!51138 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (not (= (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) key!3287))))))

(declare-fun b!4603845 () Bool)

(assert (=> b!4603845 (= e!2871658 None!11408)))

(assert (= (and d!1449962 c!788674) b!4603842))

(assert (= (and d!1449962 (not c!788674)) b!4603843))

(assert (= (and b!4603843 c!788675) b!4603844))

(assert (= (and b!4603843 (not c!788675)) b!4603845))

(declare-fun m!5432971 () Bool)

(assert (=> b!4603844 m!5432971))

(assert (=> b!4603695 d!1449962))

(declare-fun d!1449964 () Bool)

(declare-fun lt!1762193 () Bool)

(assert (=> d!1449964 (= lt!1762193 (set.member key!3287 (content!8673 e!2871570)))))

(declare-fun e!2871663 () Bool)

(assert (=> d!1449964 (= lt!1762193 e!2871663)))

(declare-fun res!1926292 () Bool)

(assert (=> d!1449964 (=> (not res!1926292) (not e!2871663))))

(assert (=> d!1449964 (= res!1926292 (is-Cons!51142 e!2871570))))

(assert (=> d!1449964 (= (contains!14122 e!2871570 key!3287) lt!1762193)))

(declare-fun b!4603850 () Bool)

(declare-fun e!2871664 () Bool)

(assert (=> b!4603850 (= e!2871663 e!2871664)))

(declare-fun res!1926293 () Bool)

(assert (=> b!4603850 (=> res!1926293 e!2871664)))

(assert (=> b!4603850 (= res!1926293 (= (h!57117 e!2871570) key!3287))))

(declare-fun b!4603851 () Bool)

(assert (=> b!4603851 (= e!2871664 (contains!14122 (t!358260 e!2871570) key!3287))))

(assert (= (and d!1449964 res!1926292) b!4603850))

(assert (= (and b!4603850 (not res!1926293)) b!4603851))

(declare-fun m!5432973 () Bool)

(assert (=> d!1449964 m!5432973))

(declare-fun m!5432975 () Bool)

(assert (=> d!1449964 m!5432975))

(declare-fun m!5432977 () Bool)

(assert (=> b!4603851 m!5432977))

(assert (=> bm!321235 d!1449964))

(assert (=> b!4603625 d!1449904))

(declare-fun d!1449966 () Bool)

(assert (=> d!1449966 (isDefined!8677 (getValueByKey!1329 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(declare-fun lt!1762196 () Unit!108821)

(declare-fun choose!30903 (List!51262 K!12508) Unit!108821)

(assert (=> d!1449966 (= lt!1762196 (choose!30903 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(assert (=> d!1449966 (invariantList!1133 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))

(assert (=> d!1449966 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1233 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287) lt!1762196)))

(declare-fun bs!1014005 () Bool)

(assert (= bs!1014005 d!1449966))

(assert (=> bs!1014005 m!5432805))

(assert (=> bs!1014005 m!5432805))

(assert (=> bs!1014005 m!5432807))

(declare-fun m!5432979 () Bool)

(assert (=> bs!1014005 m!5432979))

(declare-fun m!5432981 () Bool)

(assert (=> bs!1014005 m!5432981))

(assert (=> b!4603694 d!1449966))

(assert (=> b!4603694 d!1449960))

(assert (=> b!4603694 d!1449962))

(declare-fun d!1449968 () Bool)

(assert (=> d!1449968 (contains!14122 (getKeysList!582 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) key!3287)))

(declare-fun lt!1762199 () Unit!108821)

(declare-fun choose!30904 (List!51262 K!12508) Unit!108821)

(assert (=> d!1449968 (= lt!1762199 (choose!30904 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(assert (=> d!1449968 (invariantList!1133 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))

(assert (=> d!1449968 (= (lemmaInListThenGetKeysListContains!578 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287) lt!1762199)))

(declare-fun bs!1014006 () Bool)

(assert (= bs!1014006 d!1449968))

(assert (=> bs!1014006 m!5432799))

(assert (=> bs!1014006 m!5432799))

(declare-fun m!5432983 () Bool)

(assert (=> bs!1014006 m!5432983))

(declare-fun m!5432985 () Bool)

(assert (=> bs!1014006 m!5432985))

(assert (=> bs!1014006 m!5432981))

(assert (=> b!4603694 d!1449968))

(declare-fun d!1449970 () Bool)

(declare-fun isEmpty!28876 (Option!11408) Bool)

(assert (=> d!1449970 (= (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030)) (not (isEmpty!28876 (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030))))))

(declare-fun bs!1014007 () Bool)

(assert (= bs!1014007 d!1449970))

(assert (=> bs!1014007 m!5432767))

(declare-fun m!5432987 () Bool)

(assert (=> bs!1014007 m!5432987))

(assert (=> b!4603642 d!1449970))

(declare-fun d!1449972 () Bool)

(declare-fun c!788680 () Bool)

(assert (=> d!1449972 (= c!788680 (and (is-Cons!51139 (toList!4701 lm!1477)) (= (_1!29206 (h!57113 (toList!4701 lm!1477))) lt!1762030)))))

(declare-fun e!2871669 () Option!11408)

(assert (=> d!1449972 (= (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030) e!2871669)))

(declare-fun b!4603861 () Bool)

(declare-fun e!2871670 () Option!11408)

(assert (=> b!4603861 (= e!2871669 e!2871670)))

(declare-fun c!788681 () Bool)

(assert (=> b!4603861 (= c!788681 (and (is-Cons!51139 (toList!4701 lm!1477)) (not (= (_1!29206 (h!57113 (toList!4701 lm!1477))) lt!1762030))))))

(declare-fun b!4603862 () Bool)

(assert (=> b!4603862 (= e!2871670 (getValueByKey!1328 (t!358257 (toList!4701 lm!1477)) lt!1762030))))

(declare-fun b!4603860 () Bool)

(assert (=> b!4603860 (= e!2871669 (Some!11407 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(declare-fun b!4603863 () Bool)

(assert (=> b!4603863 (= e!2871670 None!11407)))

(assert (= (and d!1449972 c!788680) b!4603860))

(assert (= (and d!1449972 (not c!788680)) b!4603861))

(assert (= (and b!4603861 c!788681) b!4603862))

(assert (= (and b!4603861 (not c!788681)) b!4603863))

(declare-fun m!5432989 () Bool)

(assert (=> b!4603862 m!5432989))

(assert (=> b!4603642 d!1449972))

(declare-fun d!1449974 () Bool)

(declare-fun res!1926294 () Bool)

(declare-fun e!2871671 () Bool)

(assert (=> d!1449974 (=> res!1926294 e!2871671)))

(assert (=> d!1449974 (= res!1926294 (not (is-Cons!51138 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(assert (=> d!1449974 (= (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477)))) e!2871671)))

(declare-fun b!4603864 () Bool)

(declare-fun e!2871672 () Bool)

(assert (=> b!4603864 (= e!2871671 e!2871672)))

(declare-fun res!1926295 () Bool)

(assert (=> b!4603864 (=> (not res!1926295) (not e!2871672))))

(assert (=> b!4603864 (= res!1926295 (not (containsKey!2199 (t!358256 (_2!29206 (h!57113 (toList!4701 lm!1477)))) (_1!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))))

(declare-fun b!4603865 () Bool)

(assert (=> b!4603865 (= e!2871672 (noDuplicateKeys!1343 (t!358256 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(assert (= (and d!1449974 (not res!1926294)) b!4603864))

(assert (= (and b!4603864 res!1926295) b!4603865))

(declare-fun m!5432991 () Bool)

(assert (=> b!4603864 m!5432991))

(declare-fun m!5432993 () Bool)

(assert (=> b!4603865 m!5432993))

(assert (=> bs!1013983 d!1449974))

(declare-fun d!1449976 () Bool)

(declare-fun c!788682 () Bool)

(assert (=> d!1449976 (= c!788682 (is-Nil!51139 (t!358257 (toList!4701 lm!1477))))))

(declare-fun e!2871673 () (Set tuple2!51824))

(assert (=> d!1449976 (= (content!8671 (t!358257 (toList!4701 lm!1477))) e!2871673)))

(declare-fun b!4603866 () Bool)

(assert (=> b!4603866 (= e!2871673 (as set.empty (Set tuple2!51824)))))

(declare-fun b!4603867 () Bool)

(assert (=> b!4603867 (= e!2871673 (set.union (set.insert (h!57113 (t!358257 (toList!4701 lm!1477))) (as set.empty (Set tuple2!51824))) (content!8671 (t!358257 (t!358257 (toList!4701 lm!1477))))))))

(assert (= (and d!1449976 c!788682) b!4603866))

(assert (= (and d!1449976 (not c!788682)) b!4603867))

(declare-fun m!5432995 () Bool)

(assert (=> b!4603867 m!5432995))

(declare-fun m!5432997 () Bool)

(assert (=> b!4603867 m!5432997))

(assert (=> d!1449904 d!1449976))

(declare-fun d!1449978 () Bool)

(declare-fun e!2871674 () Bool)

(assert (=> d!1449978 e!2871674))

(declare-fun res!1926296 () Bool)

(assert (=> d!1449978 (=> res!1926296 e!2871674)))

(declare-fun lt!1762201 () Bool)

(assert (=> d!1449978 (= res!1926296 (not lt!1762201))))

(declare-fun lt!1762202 () Bool)

(assert (=> d!1449978 (= lt!1762201 lt!1762202)))

(declare-fun lt!1762200 () Unit!108821)

(declare-fun e!2871675 () Unit!108821)

(assert (=> d!1449978 (= lt!1762200 e!2871675)))

(declare-fun c!788683 () Bool)

(assert (=> d!1449978 (= c!788683 lt!1762202)))

(assert (=> d!1449978 (= lt!1762202 (containsKey!2201 (toList!4701 lm!1477) (hash!3264 hashF!1107 key!3287)))))

(assert (=> d!1449978 (= (contains!14117 lm!1477 (hash!3264 hashF!1107 key!3287)) lt!1762201)))

(declare-fun b!4603868 () Bool)

(declare-fun lt!1762203 () Unit!108821)

(assert (=> b!4603868 (= e!2871675 lt!1762203)))

(assert (=> b!4603868 (= lt!1762203 (lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (toList!4701 lm!1477) (hash!3264 hashF!1107 key!3287)))))

(assert (=> b!4603868 (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) (hash!3264 hashF!1107 key!3287)))))

(declare-fun b!4603869 () Bool)

(declare-fun Unit!108837 () Unit!108821)

(assert (=> b!4603869 (= e!2871675 Unit!108837)))

(declare-fun b!4603870 () Bool)

(assert (=> b!4603870 (= e!2871674 (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) (hash!3264 hashF!1107 key!3287))))))

(assert (= (and d!1449978 c!788683) b!4603868))

(assert (= (and d!1449978 (not c!788683)) b!4603869))

(assert (= (and d!1449978 (not res!1926296)) b!4603870))

(assert (=> d!1449978 m!5432671))

(declare-fun m!5432999 () Bool)

(assert (=> d!1449978 m!5432999))

(assert (=> b!4603868 m!5432671))

(declare-fun m!5433001 () Bool)

(assert (=> b!4603868 m!5433001))

(assert (=> b!4603868 m!5432671))

(declare-fun m!5433003 () Bool)

(assert (=> b!4603868 m!5433003))

(assert (=> b!4603868 m!5433003))

(declare-fun m!5433005 () Bool)

(assert (=> b!4603868 m!5433005))

(assert (=> b!4603870 m!5432671))

(assert (=> b!4603870 m!5433003))

(assert (=> b!4603870 m!5433003))

(assert (=> b!4603870 m!5433005))

(assert (=> d!1449856 d!1449978))

(assert (=> d!1449856 d!1449898))

(declare-fun d!1449980 () Bool)

(assert (=> d!1449980 (contains!14117 lm!1477 (hash!3264 hashF!1107 key!3287))))

(assert (=> d!1449980 true))

(declare-fun _$27!1453 () Unit!108821)

(assert (=> d!1449980 (= (choose!30895 lm!1477 key!3287 hashF!1107) _$27!1453)))

(declare-fun bs!1014008 () Bool)

(assert (= bs!1014008 d!1449980))

(assert (=> bs!1014008 m!5432671))

(assert (=> bs!1014008 m!5432671))

(assert (=> bs!1014008 m!5432729))

(assert (=> d!1449856 d!1449980))

(declare-fun d!1449982 () Bool)

(declare-fun res!1926297 () Bool)

(declare-fun e!2871676 () Bool)

(assert (=> d!1449982 (=> res!1926297 e!2871676)))

(assert (=> d!1449982 (= res!1926297 (is-Nil!51139 (toList!4701 lm!1477)))))

(assert (=> d!1449982 (= (forall!10639 (toList!4701 lm!1477) lambda!187057) e!2871676)))

(declare-fun b!4603871 () Bool)

(declare-fun e!2871677 () Bool)

(assert (=> b!4603871 (= e!2871676 e!2871677)))

(declare-fun res!1926298 () Bool)

(assert (=> b!4603871 (=> (not res!1926298) (not e!2871677))))

(assert (=> b!4603871 (= res!1926298 (dynLambda!21411 lambda!187057 (h!57113 (toList!4701 lm!1477))))))

(declare-fun b!4603872 () Bool)

(assert (=> b!4603872 (= e!2871677 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187057))))

(assert (= (and d!1449982 (not res!1926297)) b!4603871))

(assert (= (and b!4603871 res!1926298) b!4603872))

(declare-fun b_lambda!169759 () Bool)

(assert (=> (not b_lambda!169759) (not b!4603871)))

(declare-fun m!5433007 () Bool)

(assert (=> b!4603871 m!5433007))

(declare-fun m!5433009 () Bool)

(assert (=> b!4603872 m!5433009))

(assert (=> d!1449856 d!1449982))

(declare-fun bs!1014009 () Bool)

(declare-fun b!4603894 () Bool)

(assert (= bs!1014009 (and b!4603894 b!4603824)))

(declare-fun lambda!187099 () Int)

(assert (=> bs!1014009 (= (= (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (= lambda!187099 lambda!187089))))

(assert (=> b!4603894 true))

(declare-fun bs!1014010 () Bool)

(declare-fun b!4603899 () Bool)

(assert (= bs!1014010 (and b!4603899 b!4603824)))

(declare-fun lambda!187100 () Int)

(assert (=> bs!1014010 (= (= (Cons!51138 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (= lambda!187100 lambda!187089))))

(declare-fun bs!1014011 () Bool)

(assert (= bs!1014011 (and b!4603899 b!4603894)))

(assert (=> bs!1014011 (= (= (Cons!51138 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (= lambda!187100 lambda!187099))))

(assert (=> b!4603899 true))

(declare-fun bs!1014012 () Bool)

(declare-fun b!4603896 () Bool)

(assert (= bs!1014012 (and b!4603896 b!4603824)))

(declare-fun lambda!187101 () Int)

(assert (=> bs!1014012 (= lambda!187101 lambda!187089)))

(declare-fun bs!1014013 () Bool)

(assert (= bs!1014013 (and b!4603896 b!4603894)))

(assert (=> bs!1014013 (= (= (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (= lambda!187101 lambda!187099))))

(declare-fun bs!1014014 () Bool)

(assert (= bs!1014014 (and b!4603896 b!4603899)))

(assert (=> bs!1014014 (= (= (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) (Cons!51138 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))) (= lambda!187101 lambda!187100))))

(assert (=> b!4603896 true))

(declare-fun bs!1014015 () Bool)

(declare-fun b!4603892 () Bool)

(assert (= bs!1014015 (and b!4603892 b!4603825)))

(declare-fun lambda!187102 () Int)

(assert (=> bs!1014015 (= lambda!187102 lambda!187090)))

(declare-fun b!4603891 () Bool)

(assert (=> b!4603891 false))

(declare-fun e!2871688 () Unit!108821)

(declare-fun Unit!108838 () Unit!108821)

(assert (=> b!4603891 (= e!2871688 Unit!108838)))

(declare-fun lt!1762220 () List!51266)

(declare-fun e!2871687 () Bool)

(assert (=> b!4603892 (= e!2871687 (= (content!8673 lt!1762220) (content!8673 (map!11302 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) lambda!187102))))))

(declare-fun b!4603893 () Bool)

(declare-fun e!2871689 () Unit!108821)

(declare-fun Unit!108839 () Unit!108821)

(assert (=> b!4603893 (= e!2871689 Unit!108839)))

(assert (=> b!4603894 false))

(declare-fun lt!1762223 () Unit!108821)

(declare-fun forallContained!2890 (List!51266 Int K!12508) Unit!108821)

(assert (=> b!4603894 (= lt!1762223 (forallContained!2890 (getKeysList!582 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) lambda!187099 (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))))

(declare-fun Unit!108840 () Unit!108821)

(assert (=> b!4603894 (= e!2871689 Unit!108840)))

(declare-fun d!1449984 () Bool)

(assert (=> d!1449984 e!2871687))

(declare-fun res!1926307 () Bool)

(assert (=> d!1449984 (=> (not res!1926307) (not e!2871687))))

(assert (=> d!1449984 (= res!1926307 (noDuplicate!817 lt!1762220))))

(declare-fun e!2871686 () List!51266)

(assert (=> d!1449984 (= lt!1762220 e!2871686)))

(declare-fun c!788691 () Bool)

(assert (=> d!1449984 (= c!788691 (is-Cons!51138 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))

(assert (=> d!1449984 (invariantList!1133 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))

(assert (=> d!1449984 (= (getKeysList!582 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) lt!1762220)))

(declare-fun b!4603895 () Bool)

(declare-fun res!1926305 () Bool)

(assert (=> b!4603895 (=> (not res!1926305) (not e!2871687))))

(assert (=> b!4603895 (= res!1926305 (= (length!490 lt!1762220) (length!491 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))))

(declare-fun res!1926306 () Bool)

(assert (=> b!4603896 (=> (not res!1926306) (not e!2871687))))

(assert (=> b!4603896 (= res!1926306 (forall!10643 lt!1762220 lambda!187101))))

(declare-fun b!4603897 () Bool)

(assert (=> b!4603897 (= e!2871686 Nil!51142)))

(declare-fun b!4603898 () Bool)

(declare-fun Unit!108841 () Unit!108821)

(assert (=> b!4603898 (= e!2871688 Unit!108841)))

(assert (=> b!4603899 (= e!2871686 (Cons!51142 (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (getKeysList!582 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))))

(declare-fun c!788690 () Bool)

(assert (=> b!4603899 (= c!788690 (containsKey!2202 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))))

(declare-fun lt!1762224 () Unit!108821)

(assert (=> b!4603899 (= lt!1762224 e!2871688)))

(declare-fun c!788692 () Bool)

(assert (=> b!4603899 (= c!788692 (contains!14122 (getKeysList!582 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))))

(declare-fun lt!1762221 () Unit!108821)

(assert (=> b!4603899 (= lt!1762221 e!2871689)))

(declare-fun lt!1762219 () List!51266)

(assert (=> b!4603899 (= lt!1762219 (getKeysList!582 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))))

(declare-fun lt!1762218 () Unit!108821)

(declare-fun lemmaForallContainsAddHeadPreserves!237 (List!51262 List!51266 tuple2!51822) Unit!108821)

(assert (=> b!4603899 (= lt!1762218 (lemmaForallContainsAddHeadPreserves!237 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) lt!1762219 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))))

(assert (=> b!4603899 (forall!10643 lt!1762219 lambda!187100)))

(declare-fun lt!1762222 () Unit!108821)

(assert (=> b!4603899 (= lt!1762222 lt!1762218)))

(assert (= (and d!1449984 c!788691) b!4603899))

(assert (= (and d!1449984 (not c!788691)) b!4603897))

(assert (= (and b!4603899 c!788690) b!4603891))

(assert (= (and b!4603899 (not c!788690)) b!4603898))

(assert (= (and b!4603899 c!788692) b!4603894))

(assert (= (and b!4603899 (not c!788692)) b!4603893))

(assert (= (and d!1449984 res!1926307) b!4603895))

(assert (= (and b!4603895 res!1926305) b!4603896))

(assert (= (and b!4603896 res!1926306) b!4603892))

(declare-fun m!5433011 () Bool)

(assert (=> d!1449984 m!5433011))

(assert (=> d!1449984 m!5432981))

(declare-fun m!5433013 () Bool)

(assert (=> b!4603892 m!5433013))

(declare-fun m!5433015 () Bool)

(assert (=> b!4603892 m!5433015))

(assert (=> b!4603892 m!5433015))

(declare-fun m!5433017 () Bool)

(assert (=> b!4603892 m!5433017))

(declare-fun m!5433019 () Bool)

(assert (=> b!4603894 m!5433019))

(assert (=> b!4603894 m!5433019))

(declare-fun m!5433021 () Bool)

(assert (=> b!4603894 m!5433021))

(declare-fun m!5433023 () Bool)

(assert (=> b!4603896 m!5433023))

(declare-fun m!5433025 () Bool)

(assert (=> b!4603895 m!5433025))

(assert (=> b!4603895 m!5432957))

(assert (=> b!4603899 m!5433019))

(assert (=> b!4603899 m!5433019))

(declare-fun m!5433027 () Bool)

(assert (=> b!4603899 m!5433027))

(declare-fun m!5433029 () Bool)

(assert (=> b!4603899 m!5433029))

(declare-fun m!5433031 () Bool)

(assert (=> b!4603899 m!5433031))

(declare-fun m!5433033 () Bool)

(assert (=> b!4603899 m!5433033))

(assert (=> b!4603693 d!1449984))

(declare-fun d!1449986 () Bool)

(assert (=> d!1449986 (= (get!16909 (getValueByKey!1328 (toList!4701 lm!1477) hash!344)) (v!45416 (getValueByKey!1328 (toList!4701 lm!1477) hash!344)))))

(assert (=> d!1449860 d!1449986))

(declare-fun d!1449988 () Bool)

(declare-fun c!788693 () Bool)

(assert (=> d!1449988 (= c!788693 (and (is-Cons!51139 (toList!4701 lm!1477)) (= (_1!29206 (h!57113 (toList!4701 lm!1477))) hash!344)))))

(declare-fun e!2871690 () Option!11408)

(assert (=> d!1449988 (= (getValueByKey!1328 (toList!4701 lm!1477) hash!344) e!2871690)))

(declare-fun b!4603903 () Bool)

(declare-fun e!2871691 () Option!11408)

(assert (=> b!4603903 (= e!2871690 e!2871691)))

(declare-fun c!788694 () Bool)

(assert (=> b!4603903 (= c!788694 (and (is-Cons!51139 (toList!4701 lm!1477)) (not (= (_1!29206 (h!57113 (toList!4701 lm!1477))) hash!344))))))

(declare-fun b!4603904 () Bool)

(assert (=> b!4603904 (= e!2871691 (getValueByKey!1328 (t!358257 (toList!4701 lm!1477)) hash!344))))

(declare-fun b!4603902 () Bool)

(assert (=> b!4603902 (= e!2871690 (Some!11407 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(declare-fun b!4603905 () Bool)

(assert (=> b!4603905 (= e!2871691 None!11407)))

(assert (= (and d!1449988 c!788693) b!4603902))

(assert (= (and d!1449988 (not c!788693)) b!4603903))

(assert (= (and b!4603903 c!788694) b!4603904))

(assert (= (and b!4603903 (not c!788694)) b!4603905))

(declare-fun m!5433035 () Bool)

(assert (=> b!4603904 m!5433035))

(assert (=> d!1449860 d!1449988))

(declare-fun d!1449990 () Bool)

(assert (=> d!1449990 (= (isDefined!8676 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344)) (not (isEmpty!28876 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344))))))

(declare-fun bs!1014016 () Bool)

(assert (= bs!1014016 d!1449990))

(assert (=> bs!1014016 m!5432835))

(declare-fun m!5433037 () Bool)

(assert (=> bs!1014016 m!5433037))

(assert (=> b!4603716 d!1449990))

(declare-fun d!1449992 () Bool)

(declare-fun c!788695 () Bool)

(assert (=> d!1449992 (= c!788695 (and (is-Cons!51139 (toList!4701 lt!1762028)) (= (_1!29206 (h!57113 (toList!4701 lt!1762028))) hash!344)))))

(declare-fun e!2871692 () Option!11408)

(assert (=> d!1449992 (= (getValueByKey!1328 (toList!4701 lt!1762028) hash!344) e!2871692)))

(declare-fun b!4603907 () Bool)

(declare-fun e!2871693 () Option!11408)

(assert (=> b!4603907 (= e!2871692 e!2871693)))

(declare-fun c!788696 () Bool)

(assert (=> b!4603907 (= c!788696 (and (is-Cons!51139 (toList!4701 lt!1762028)) (not (= (_1!29206 (h!57113 (toList!4701 lt!1762028))) hash!344))))))

(declare-fun b!4603908 () Bool)

(assert (=> b!4603908 (= e!2871693 (getValueByKey!1328 (t!358257 (toList!4701 lt!1762028)) hash!344))))

(declare-fun b!4603906 () Bool)

(assert (=> b!4603906 (= e!2871692 (Some!11407 (_2!29206 (h!57113 (toList!4701 lt!1762028)))))))

(declare-fun b!4603909 () Bool)

(assert (=> b!4603909 (= e!2871693 None!11407)))

(assert (= (and d!1449992 c!788695) b!4603906))

(assert (= (and d!1449992 (not c!788695)) b!4603907))

(assert (= (and b!4603907 c!788696) b!4603908))

(assert (= (and b!4603907 (not c!788696)) b!4603909))

(declare-fun m!5433039 () Bool)

(assert (=> b!4603908 m!5433039))

(assert (=> b!4603716 d!1449992))

(declare-fun d!1449994 () Bool)

(declare-fun res!1926308 () Bool)

(declare-fun e!2871694 () Bool)

(assert (=> d!1449994 (=> res!1926308 e!2871694)))

(assert (=> d!1449994 (= res!1926308 (is-Nil!51139 (toList!4701 lm!1477)))))

(assert (=> d!1449994 (= (forall!10639 (toList!4701 lm!1477) lambda!187066) e!2871694)))

(declare-fun b!4603910 () Bool)

(declare-fun e!2871695 () Bool)

(assert (=> b!4603910 (= e!2871694 e!2871695)))

(declare-fun res!1926309 () Bool)

(assert (=> b!4603910 (=> (not res!1926309) (not e!2871695))))

(assert (=> b!4603910 (= res!1926309 (dynLambda!21411 lambda!187066 (h!57113 (toList!4701 lm!1477))))))

(declare-fun b!4603911 () Bool)

(assert (=> b!4603911 (= e!2871695 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187066))))

(assert (= (and d!1449994 (not res!1926308)) b!4603910))

(assert (= (and b!4603910 res!1926309) b!4603911))

(declare-fun b_lambda!169761 () Bool)

(assert (=> (not b_lambda!169761) (not b!4603910)))

(declare-fun m!5433041 () Bool)

(assert (=> b!4603910 m!5433041))

(declare-fun m!5433043 () Bool)

(assert (=> b!4603911 m!5433043))

(assert (=> d!1449896 d!1449994))

(declare-fun d!1449996 () Bool)

(declare-fun lt!1762225 () Bool)

(assert (=> d!1449996 (= lt!1762225 (set.member lt!1762032 (content!8671 (t!358257 (t!358257 (toList!4701 lm!1477))))))))

(declare-fun e!2871696 () Bool)

(assert (=> d!1449996 (= lt!1762225 e!2871696)))

(declare-fun res!1926310 () Bool)

(assert (=> d!1449996 (=> (not res!1926310) (not e!2871696))))

(assert (=> d!1449996 (= res!1926310 (is-Cons!51139 (t!358257 (t!358257 (toList!4701 lm!1477)))))))

(assert (=> d!1449996 (= (contains!14116 (t!358257 (t!358257 (toList!4701 lm!1477))) lt!1762032) lt!1762225)))

(declare-fun b!4603912 () Bool)

(declare-fun e!2871697 () Bool)

(assert (=> b!4603912 (= e!2871696 e!2871697)))

(declare-fun res!1926311 () Bool)

(assert (=> b!4603912 (=> res!1926311 e!2871697)))

(assert (=> b!4603912 (= res!1926311 (= (h!57113 (t!358257 (t!358257 (toList!4701 lm!1477)))) lt!1762032))))

(declare-fun b!4603913 () Bool)

(assert (=> b!4603913 (= e!2871697 (contains!14116 (t!358257 (t!358257 (t!358257 (toList!4701 lm!1477)))) lt!1762032))))

(assert (= (and d!1449996 res!1926310) b!4603912))

(assert (= (and b!4603912 (not res!1926311)) b!4603913))

(assert (=> d!1449996 m!5432997))

(declare-fun m!5433045 () Bool)

(assert (=> d!1449996 m!5433045))

(declare-fun m!5433047 () Bool)

(assert (=> b!4603913 m!5433047))

(assert (=> b!4603713 d!1449996))

(declare-fun d!1449998 () Bool)

(assert (=> d!1449998 (isDefined!8676 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344))))

(declare-fun lt!1762228 () Unit!108821)

(declare-fun choose!30905 (List!51263 (_ BitVec 64)) Unit!108821)

(assert (=> d!1449998 (= lt!1762228 (choose!30905 (toList!4701 lt!1762028) hash!344))))

(declare-fun e!2871700 () Bool)

(assert (=> d!1449998 e!2871700))

(declare-fun res!1926314 () Bool)

(assert (=> d!1449998 (=> (not res!1926314) (not e!2871700))))

(assert (=> d!1449998 (= res!1926314 (isStrictlySorted!549 (toList!4701 lt!1762028)))))

(assert (=> d!1449998 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (toList!4701 lt!1762028) hash!344) lt!1762228)))

(declare-fun b!4603916 () Bool)

(assert (=> b!4603916 (= e!2871700 (containsKey!2201 (toList!4701 lt!1762028) hash!344))))

(assert (= (and d!1449998 res!1926314) b!4603916))

(assert (=> d!1449998 m!5432835))

(assert (=> d!1449998 m!5432835))

(assert (=> d!1449998 m!5432853))

(declare-fun m!5433049 () Bool)

(assert (=> d!1449998 m!5433049))

(declare-fun m!5433051 () Bool)

(assert (=> d!1449998 m!5433051))

(assert (=> b!4603916 m!5432849))

(assert (=> b!4603714 d!1449998))

(assert (=> b!4603714 d!1449990))

(assert (=> b!4603714 d!1449992))

(declare-fun d!1450000 () Bool)

(declare-fun res!1926315 () Bool)

(declare-fun e!2871701 () Bool)

(assert (=> d!1450000 (=> res!1926315 e!2871701)))

(assert (=> d!1450000 (= res!1926315 (and (is-Cons!51138 lt!1762066) (= (_1!29205 (h!57112 lt!1762066)) key!3287)))))

(assert (=> d!1450000 (= (containsKey!2199 lt!1762066 key!3287) e!2871701)))

(declare-fun b!4603917 () Bool)

(declare-fun e!2871702 () Bool)

(assert (=> b!4603917 (= e!2871701 e!2871702)))

(declare-fun res!1926316 () Bool)

(assert (=> b!4603917 (=> (not res!1926316) (not e!2871702))))

(assert (=> b!4603917 (= res!1926316 (is-Cons!51138 lt!1762066))))

(declare-fun b!4603918 () Bool)

(assert (=> b!4603918 (= e!2871702 (containsKey!2199 (t!358256 lt!1762066) key!3287))))

(assert (= (and d!1450000 (not res!1926315)) b!4603917))

(assert (= (and b!4603917 res!1926316) b!4603918))

(declare-fun m!5433053 () Bool)

(assert (=> b!4603918 m!5433053))

(assert (=> d!1449854 d!1450000))

(declare-fun d!1450002 () Bool)

(declare-fun res!1926317 () Bool)

(declare-fun e!2871703 () Bool)

(assert (=> d!1450002 (=> res!1926317 e!2871703)))

(assert (=> d!1450002 (= res!1926317 (not (is-Cons!51138 lt!1762029)))))

(assert (=> d!1450002 (= (noDuplicateKeys!1343 lt!1762029) e!2871703)))

(declare-fun b!4603919 () Bool)

(declare-fun e!2871704 () Bool)

(assert (=> b!4603919 (= e!2871703 e!2871704)))

(declare-fun res!1926318 () Bool)

(assert (=> b!4603919 (=> (not res!1926318) (not e!2871704))))

(assert (=> b!4603919 (= res!1926318 (not (containsKey!2199 (t!358256 lt!1762029) (_1!29205 (h!57112 lt!1762029)))))))

(declare-fun b!4603920 () Bool)

(assert (=> b!4603920 (= e!2871704 (noDuplicateKeys!1343 (t!358256 lt!1762029)))))

(assert (= (and d!1450002 (not res!1926317)) b!4603919))

(assert (= (and b!4603919 res!1926318) b!4603920))

(declare-fun m!5433055 () Bool)

(assert (=> b!4603919 m!5433055))

(declare-fun m!5433057 () Bool)

(assert (=> b!4603920 m!5433057))

(assert (=> d!1449854 d!1450002))

(declare-fun d!1450004 () Bool)

(declare-fun res!1926319 () Bool)

(declare-fun e!2871705 () Bool)

(assert (=> d!1450004 (=> res!1926319 e!2871705)))

(assert (=> d!1450004 (= res!1926319 (not (is-Cons!51138 (t!358256 newBucket!178))))))

(assert (=> d!1450004 (= (noDuplicateKeys!1343 (t!358256 newBucket!178)) e!2871705)))

(declare-fun b!4603921 () Bool)

(declare-fun e!2871706 () Bool)

(assert (=> b!4603921 (= e!2871705 e!2871706)))

(declare-fun res!1926320 () Bool)

(assert (=> b!4603921 (=> (not res!1926320) (not e!2871706))))

(assert (=> b!4603921 (= res!1926320 (not (containsKey!2199 (t!358256 (t!358256 newBucket!178)) (_1!29205 (h!57112 (t!358256 newBucket!178))))))))

(declare-fun b!4603922 () Bool)

(assert (=> b!4603922 (= e!2871706 (noDuplicateKeys!1343 (t!358256 (t!358256 newBucket!178))))))

(assert (= (and d!1450004 (not res!1926319)) b!4603921))

(assert (= (and b!4603921 res!1926320) b!4603922))

(declare-fun m!5433059 () Bool)

(assert (=> b!4603921 m!5433059))

(declare-fun m!5433061 () Bool)

(assert (=> b!4603922 m!5433061))

(assert (=> b!4603652 d!1450004))

(declare-fun d!1450006 () Bool)

(declare-fun res!1926321 () Bool)

(declare-fun e!2871707 () Bool)

(assert (=> d!1450006 (=> res!1926321 e!2871707)))

(assert (=> d!1450006 (= res!1926321 (not (is-Cons!51138 (_2!29206 lt!1762032))))))

(assert (=> d!1450006 (= (noDuplicateKeys!1343 (_2!29206 lt!1762032)) e!2871707)))

(declare-fun b!4603923 () Bool)

(declare-fun e!2871708 () Bool)

(assert (=> b!4603923 (= e!2871707 e!2871708)))

(declare-fun res!1926322 () Bool)

(assert (=> b!4603923 (=> (not res!1926322) (not e!2871708))))

(assert (=> b!4603923 (= res!1926322 (not (containsKey!2199 (t!358256 (_2!29206 lt!1762032)) (_1!29205 (h!57112 (_2!29206 lt!1762032))))))))

(declare-fun b!4603924 () Bool)

(assert (=> b!4603924 (= e!2871708 (noDuplicateKeys!1343 (t!358256 (_2!29206 lt!1762032))))))

(assert (= (and d!1450006 (not res!1926321)) b!4603923))

(assert (= (and b!4603923 res!1926322) b!4603924))

(declare-fun m!5433063 () Bool)

(assert (=> b!4603923 m!5433063))

(declare-fun m!5433065 () Bool)

(assert (=> b!4603924 m!5433065))

(assert (=> bs!1013984 d!1450006))

(declare-fun b!4603927 () Bool)

(declare-fun e!2871710 () List!51262)

(assert (=> b!4603927 (= e!2871710 (Cons!51138 (h!57112 (t!358256 lt!1762029)) (removePairForKey!968 (t!358256 (t!358256 lt!1762029)) key!3287)))))

(declare-fun b!4603928 () Bool)

(assert (=> b!4603928 (= e!2871710 Nil!51138)))

(declare-fun b!4603925 () Bool)

(declare-fun e!2871709 () List!51262)

(assert (=> b!4603925 (= e!2871709 (t!358256 (t!358256 lt!1762029)))))

(declare-fun b!4603926 () Bool)

(assert (=> b!4603926 (= e!2871709 e!2871710)))

(declare-fun c!788698 () Bool)

(assert (=> b!4603926 (= c!788698 (is-Cons!51138 (t!358256 lt!1762029)))))

(declare-fun d!1450008 () Bool)

(declare-fun lt!1762229 () List!51262)

(assert (=> d!1450008 (not (containsKey!2199 lt!1762229 key!3287))))

(assert (=> d!1450008 (= lt!1762229 e!2871709)))

(declare-fun c!788697 () Bool)

(assert (=> d!1450008 (= c!788697 (and (is-Cons!51138 (t!358256 lt!1762029)) (= (_1!29205 (h!57112 (t!358256 lt!1762029))) key!3287)))))

(assert (=> d!1450008 (noDuplicateKeys!1343 (t!358256 lt!1762029))))

(assert (=> d!1450008 (= (removePairForKey!968 (t!358256 lt!1762029) key!3287) lt!1762229)))

(assert (= (and d!1450008 c!788697) b!4603925))

(assert (= (and d!1450008 (not c!788697)) b!4603926))

(assert (= (and b!4603926 c!788698) b!4603927))

(assert (= (and b!4603926 (not c!788698)) b!4603928))

(declare-fun m!5433067 () Bool)

(assert (=> b!4603927 m!5433067))

(declare-fun m!5433069 () Bool)

(assert (=> d!1450008 m!5433069))

(assert (=> d!1450008 m!5433057))

(assert (=> b!4603611 d!1450008))

(declare-fun d!1450010 () Bool)

(declare-fun res!1926323 () Bool)

(declare-fun e!2871711 () Bool)

(assert (=> d!1450010 (=> res!1926323 e!2871711)))

(assert (=> d!1450010 (= res!1926323 (and (is-Cons!51138 (t!358256 lt!1762029)) (= (_1!29205 (h!57112 (t!358256 lt!1762029))) key!3287)))))

(assert (=> d!1450010 (= (containsKey!2199 (t!358256 lt!1762029) key!3287) e!2871711)))

(declare-fun b!4603929 () Bool)

(declare-fun e!2871712 () Bool)

(assert (=> b!4603929 (= e!2871711 e!2871712)))

(declare-fun res!1926324 () Bool)

(assert (=> b!4603929 (=> (not res!1926324) (not e!2871712))))

(assert (=> b!4603929 (= res!1926324 (is-Cons!51138 (t!358256 lt!1762029)))))

(declare-fun b!4603930 () Bool)

(assert (=> b!4603930 (= e!2871712 (containsKey!2199 (t!358256 (t!358256 lt!1762029)) key!3287))))

(assert (= (and d!1450010 (not res!1926323)) b!4603929))

(assert (= (and b!4603929 res!1926324) b!4603930))

(declare-fun m!5433071 () Bool)

(assert (=> b!4603930 m!5433071))

(assert (=> b!4603594 d!1450010))

(declare-fun d!1450012 () Bool)

(declare-fun noDuplicatedKeys!331 (List!51262) Bool)

(assert (=> d!1450012 (= (invariantList!1133 (toList!4702 lt!1762132)) (noDuplicatedKeys!331 (toList!4702 lt!1762132)))))

(declare-fun bs!1014017 () Bool)

(assert (= bs!1014017 d!1450012))

(declare-fun m!5433073 () Bool)

(assert (=> bs!1014017 m!5433073))

(assert (=> d!1449892 d!1450012))

(declare-fun d!1450014 () Bool)

(declare-fun res!1926325 () Bool)

(declare-fun e!2871713 () Bool)

(assert (=> d!1450014 (=> res!1926325 e!2871713)))

(assert (=> d!1450014 (= res!1926325 (is-Nil!51139 (toList!4701 lm!1477)))))

(assert (=> d!1450014 (= (forall!10639 (toList!4701 lm!1477) lambda!187063) e!2871713)))

(declare-fun b!4603931 () Bool)

(declare-fun e!2871714 () Bool)

(assert (=> b!4603931 (= e!2871713 e!2871714)))

(declare-fun res!1926326 () Bool)

(assert (=> b!4603931 (=> (not res!1926326) (not e!2871714))))

(assert (=> b!4603931 (= res!1926326 (dynLambda!21411 lambda!187063 (h!57113 (toList!4701 lm!1477))))))

(declare-fun b!4603932 () Bool)

(assert (=> b!4603932 (= e!2871714 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187063))))

(assert (= (and d!1450014 (not res!1926325)) b!4603931))

(assert (= (and b!4603931 res!1926326) b!4603932))

(declare-fun b_lambda!169763 () Bool)

(assert (=> (not b_lambda!169763) (not b!4603931)))

(declare-fun m!5433075 () Bool)

(assert (=> b!4603931 m!5433075))

(declare-fun m!5433077 () Bool)

(assert (=> b!4603932 m!5433077))

(assert (=> d!1449892 d!1450014))

(assert (=> b!4603630 d!1449988))

(declare-fun d!1450016 () Bool)

(declare-fun res!1926331 () Bool)

(declare-fun e!2871719 () Bool)

(assert (=> d!1450016 (=> res!1926331 e!2871719)))

(assert (=> d!1450016 (= res!1926331 (and (is-Cons!51138 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) (= (_1!29205 (h!57112 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))) key!3287)))))

(assert (=> d!1450016 (= (containsKey!2202 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287) e!2871719)))

(declare-fun b!4603937 () Bool)

(declare-fun e!2871720 () Bool)

(assert (=> b!4603937 (= e!2871719 e!2871720)))

(declare-fun res!1926332 () Bool)

(assert (=> b!4603937 (=> (not res!1926332) (not e!2871720))))

(assert (=> b!4603937 (= res!1926332 (is-Cons!51138 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))))))

(declare-fun b!4603938 () Bool)

(assert (=> b!4603938 (= e!2871720 (containsKey!2202 (t!358256 (toList!4702 (extractMap!1403 (toList!4701 lm!1477)))) key!3287))))

(assert (= (and d!1450016 (not res!1926331)) b!4603937))

(assert (= (and b!4603937 res!1926332) b!4603938))

(declare-fun m!5433079 () Bool)

(assert (=> b!4603938 m!5433079))

(assert (=> d!1449880 d!1450016))

(declare-fun d!1450018 () Bool)

(declare-fun res!1926333 () Bool)

(declare-fun e!2871721 () Bool)

(assert (=> d!1450018 (=> res!1926333 e!2871721)))

(assert (=> d!1450018 (= res!1926333 (not (is-Cons!51138 (_2!29206 (h!57113 (toList!4701 lt!1762028))))))))

(assert (=> d!1450018 (= (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lt!1762028)))) e!2871721)))

(declare-fun b!4603939 () Bool)

(declare-fun e!2871722 () Bool)

(assert (=> b!4603939 (= e!2871721 e!2871722)))

(declare-fun res!1926334 () Bool)

(assert (=> b!4603939 (=> (not res!1926334) (not e!2871722))))

(assert (=> b!4603939 (= res!1926334 (not (containsKey!2199 (t!358256 (_2!29206 (h!57113 (toList!4701 lt!1762028)))) (_1!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lt!1762028))))))))))

(declare-fun b!4603940 () Bool)

(assert (=> b!4603940 (= e!2871722 (noDuplicateKeys!1343 (t!358256 (_2!29206 (h!57113 (toList!4701 lt!1762028))))))))

(assert (= (and d!1450018 (not res!1926333)) b!4603939))

(assert (= (and b!4603939 res!1926334) b!4603940))

(declare-fun m!5433081 () Bool)

(assert (=> b!4603939 m!5433081))

(declare-fun m!5433083 () Bool)

(assert (=> b!4603940 m!5433083))

(assert (=> bs!1013985 d!1450018))

(declare-fun lt!1762230 () Bool)

(declare-fun d!1450020 () Bool)

(assert (=> d!1450020 (= lt!1762230 (set.member (tuple2!51825 hash!344 lt!1762029) (content!8671 (toList!4701 lm!1477))))))

(declare-fun e!2871723 () Bool)

(assert (=> d!1450020 (= lt!1762230 e!2871723)))

(declare-fun res!1926335 () Bool)

(assert (=> d!1450020 (=> (not res!1926335) (not e!2871723))))

(assert (=> d!1450020 (= res!1926335 (is-Cons!51139 (toList!4701 lm!1477)))))

(assert (=> d!1450020 (= (contains!14116 (toList!4701 lm!1477) (tuple2!51825 hash!344 lt!1762029)) lt!1762230)))

(declare-fun b!4603941 () Bool)

(declare-fun e!2871724 () Bool)

(assert (=> b!4603941 (= e!2871723 e!2871724)))

(declare-fun res!1926336 () Bool)

(assert (=> b!4603941 (=> res!1926336 e!2871724)))

(assert (=> b!4603941 (= res!1926336 (= (h!57113 (toList!4701 lm!1477)) (tuple2!51825 hash!344 lt!1762029)))))

(declare-fun b!4603942 () Bool)

(assert (=> b!4603942 (= e!2871724 (contains!14116 (t!358257 (toList!4701 lm!1477)) (tuple2!51825 hash!344 lt!1762029)))))

(assert (= (and d!1450020 res!1926335) b!4603941))

(assert (= (and b!4603941 (not res!1926336)) b!4603942))

(assert (=> d!1450020 m!5432743))

(declare-fun m!5433085 () Bool)

(assert (=> d!1450020 m!5433085))

(declare-fun m!5433087 () Bool)

(assert (=> b!4603942 m!5433087))

(assert (=> d!1449866 d!1450020))

(declare-fun d!1450022 () Bool)

(assert (=> d!1450022 (contains!14116 (toList!4701 lm!1477) (tuple2!51825 hash!344 lt!1762029))))

(assert (=> d!1450022 true))

(declare-fun _$14!1491 () Unit!108821)

(assert (=> d!1450022 (= (choose!30897 (toList!4701 lm!1477) hash!344 lt!1762029) _$14!1491)))

(declare-fun bs!1014018 () Bool)

(assert (= bs!1014018 d!1450022))

(assert (=> bs!1014018 m!5432747))

(assert (=> d!1449866 d!1450022))

(assert (=> d!1449866 d!1449954))

(assert (=> b!4603691 d!1450016))

(declare-fun d!1450024 () Bool)

(assert (=> d!1450024 (containsKey!2202 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287)))

(declare-fun lt!1762233 () Unit!108821)

(declare-fun choose!30906 (List!51262 K!12508) Unit!108821)

(assert (=> d!1450024 (= lt!1762233 (choose!30906 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287))))

(assert (=> d!1450024 (invariantList!1133 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))))))

(assert (=> d!1450024 (= (lemmaInGetKeysListThenContainsKey!581 (toList!4702 (extractMap!1403 (toList!4701 lm!1477))) key!3287) lt!1762233)))

(declare-fun bs!1014019 () Bool)

(assert (= bs!1014019 d!1450024))

(assert (=> bs!1014019 m!5432815))

(declare-fun m!5433089 () Bool)

(assert (=> bs!1014019 m!5433089))

(assert (=> bs!1014019 m!5432981))

(assert (=> b!4603691 d!1450024))

(declare-fun d!1450026 () Bool)

(declare-fun lt!1762234 () Bool)

(assert (=> d!1450026 (= lt!1762234 (set.member key!3287 (content!8673 (keys!17919 (extractMap!1403 (toList!4701 lm!1477))))))))

(declare-fun e!2871725 () Bool)

(assert (=> d!1450026 (= lt!1762234 e!2871725)))

(declare-fun res!1926337 () Bool)

(assert (=> d!1450026 (=> (not res!1926337) (not e!2871725))))

(assert (=> d!1450026 (= res!1926337 (is-Cons!51142 (keys!17919 (extractMap!1403 (toList!4701 lm!1477)))))))

(assert (=> d!1450026 (= (contains!14122 (keys!17919 (extractMap!1403 (toList!4701 lm!1477))) key!3287) lt!1762234)))

(declare-fun b!4603943 () Bool)

(declare-fun e!2871726 () Bool)

(assert (=> b!4603943 (= e!2871725 e!2871726)))

(declare-fun res!1926338 () Bool)

(assert (=> b!4603943 (=> res!1926338 e!2871726)))

(assert (=> b!4603943 (= res!1926338 (= (h!57117 (keys!17919 (extractMap!1403 (toList!4701 lm!1477)))) key!3287))))

(declare-fun b!4603944 () Bool)

(assert (=> b!4603944 (= e!2871726 (contains!14122 (t!358260 (keys!17919 (extractMap!1403 (toList!4701 lm!1477)))) key!3287))))

(assert (= (and d!1450026 res!1926337) b!4603943))

(assert (= (and b!4603943 (not res!1926338)) b!4603944))

(assert (=> d!1450026 m!5432801))

(declare-fun m!5433091 () Bool)

(assert (=> d!1450026 m!5433091))

(declare-fun m!5433093 () Bool)

(assert (=> d!1450026 m!5433093))

(declare-fun m!5433095 () Bool)

(assert (=> b!4603944 m!5433095))

(assert (=> b!4603692 d!1450026))

(assert (=> b!4603692 d!1449956))

(declare-fun d!1450028 () Bool)

(assert (=> d!1450028 (isDefined!8676 (getValueByKey!1328 (toList!4701 lm!1477) lt!1762030))))

(declare-fun lt!1762235 () Unit!108821)

(assert (=> d!1450028 (= lt!1762235 (choose!30905 (toList!4701 lm!1477) lt!1762030))))

(declare-fun e!2871727 () Bool)

(assert (=> d!1450028 e!2871727))

(declare-fun res!1926339 () Bool)

(assert (=> d!1450028 (=> (not res!1926339) (not e!2871727))))

(assert (=> d!1450028 (= res!1926339 (isStrictlySorted!549 (toList!4701 lm!1477)))))

(assert (=> d!1450028 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1232 (toList!4701 lm!1477) lt!1762030) lt!1762235)))

(declare-fun b!4603945 () Bool)

(assert (=> b!4603945 (= e!2871727 (containsKey!2201 (toList!4701 lm!1477) lt!1762030))))

(assert (= (and d!1450028 res!1926339) b!4603945))

(assert (=> d!1450028 m!5432767))

(assert (=> d!1450028 m!5432767))

(assert (=> d!1450028 m!5432769))

(declare-fun m!5433097 () Bool)

(assert (=> d!1450028 m!5433097))

(assert (=> d!1450028 m!5432751))

(assert (=> b!4603945 m!5432763))

(assert (=> b!4603640 d!1450028))

(assert (=> b!4603640 d!1449970))

(assert (=> b!4603640 d!1449972))

(declare-fun d!1450030 () Bool)

(declare-fun res!1926344 () Bool)

(declare-fun e!2871732 () Bool)

(assert (=> d!1450030 (=> res!1926344 e!2871732)))

(assert (=> d!1450030 (= res!1926344 (and (is-Cons!51139 (toList!4701 lm!1477)) (= (_1!29206 (h!57113 (toList!4701 lm!1477))) lt!1762030)))))

(assert (=> d!1450030 (= (containsKey!2201 (toList!4701 lm!1477) lt!1762030) e!2871732)))

(declare-fun b!4603950 () Bool)

(declare-fun e!2871733 () Bool)

(assert (=> b!4603950 (= e!2871732 e!2871733)))

(declare-fun res!1926345 () Bool)

(assert (=> b!4603950 (=> (not res!1926345) (not e!2871733))))

(assert (=> b!4603950 (= res!1926345 (and (or (not (is-Cons!51139 (toList!4701 lm!1477))) (bvsle (_1!29206 (h!57113 (toList!4701 lm!1477))) lt!1762030)) (is-Cons!51139 (toList!4701 lm!1477)) (bvslt (_1!29206 (h!57113 (toList!4701 lm!1477))) lt!1762030)))))

(declare-fun b!4603951 () Bool)

(assert (=> b!4603951 (= e!2871733 (containsKey!2201 (t!358257 (toList!4701 lm!1477)) lt!1762030))))

(assert (= (and d!1450030 (not res!1926344)) b!4603950))

(assert (= (and b!4603950 res!1926345) b!4603951))

(declare-fun m!5433099 () Bool)

(assert (=> b!4603951 m!5433099))

(assert (=> d!1449868 d!1450030))

(declare-fun d!1450032 () Bool)

(assert (=> d!1450032 (dynLambda!21411 lambda!187047 lt!1762032)))

(assert (=> d!1450032 true))

(declare-fun _$7!2150 () Unit!108821)

(assert (=> d!1450032 (= (choose!30896 (toList!4701 lm!1477) lambda!187047 lt!1762032) _$7!2150)))

(declare-fun b_lambda!169765 () Bool)

(assert (=> (not b_lambda!169765) (not d!1450032)))

(declare-fun bs!1014020 () Bool)

(assert (= bs!1014020 d!1450032))

(assert (=> bs!1014020 m!5432739))

(assert (=> d!1449862 d!1450032))

(assert (=> d!1449862 d!1449876))

(declare-fun d!1450034 () Bool)

(declare-fun res!1926346 () Bool)

(declare-fun e!2871734 () Bool)

(assert (=> d!1450034 (=> res!1926346 e!2871734)))

(assert (=> d!1450034 (= res!1926346 (is-Nil!51139 (t!358257 (toList!4701 lt!1762028))))))

(assert (=> d!1450034 (= (forall!10639 (t!358257 (toList!4701 lt!1762028)) lambda!187047) e!2871734)))

(declare-fun b!4603952 () Bool)

(declare-fun e!2871735 () Bool)

(assert (=> b!4603952 (= e!2871734 e!2871735)))

(declare-fun res!1926347 () Bool)

(assert (=> b!4603952 (=> (not res!1926347) (not e!2871735))))

(assert (=> b!4603952 (= res!1926347 (dynLambda!21411 lambda!187047 (h!57113 (t!358257 (toList!4701 lt!1762028)))))))

(declare-fun b!4603953 () Bool)

(assert (=> b!4603953 (= e!2871735 (forall!10639 (t!358257 (t!358257 (toList!4701 lt!1762028))) lambda!187047))))

(assert (= (and d!1450034 (not res!1926346)) b!4603952))

(assert (= (and b!4603952 res!1926347) b!4603953))

(declare-fun b_lambda!169767 () Bool)

(assert (=> (not b_lambda!169767) (not b!4603952)))

(declare-fun m!5433101 () Bool)

(assert (=> b!4603952 m!5433101))

(declare-fun m!5433103 () Bool)

(assert (=> b!4603953 m!5433103))

(assert (=> b!4603600 d!1450034))

(declare-fun d!1450036 () Bool)

(declare-fun res!1926348 () Bool)

(declare-fun e!2871736 () Bool)

(assert (=> d!1450036 (=> res!1926348 e!2871736)))

(assert (=> d!1450036 (= res!1926348 (and (is-Cons!51139 (toList!4701 lt!1762028)) (= (_1!29206 (h!57113 (toList!4701 lt!1762028))) hash!344)))))

(assert (=> d!1450036 (= (containsKey!2201 (toList!4701 lt!1762028) hash!344) e!2871736)))

(declare-fun b!4603954 () Bool)

(declare-fun e!2871737 () Bool)

(assert (=> b!4603954 (= e!2871736 e!2871737)))

(declare-fun res!1926349 () Bool)

(assert (=> b!4603954 (=> (not res!1926349) (not e!2871737))))

(assert (=> b!4603954 (= res!1926349 (and (or (not (is-Cons!51139 (toList!4701 lt!1762028))) (bvsle (_1!29206 (h!57113 (toList!4701 lt!1762028))) hash!344)) (is-Cons!51139 (toList!4701 lt!1762028)) (bvslt (_1!29206 (h!57113 (toList!4701 lt!1762028))) hash!344)))))

(declare-fun b!4603955 () Bool)

(assert (=> b!4603955 (= e!2871737 (containsKey!2201 (t!358257 (toList!4701 lt!1762028)) hash!344))))

(assert (= (and d!1450036 (not res!1926348)) b!4603954))

(assert (= (and b!4603954 res!1926349) b!4603955))

(declare-fun m!5433105 () Bool)

(assert (=> b!4603955 m!5433105))

(assert (=> d!1449908 d!1450036))

(declare-fun d!1450038 () Bool)

(assert (=> d!1450038 (= (tail!7988 (toList!4701 lm!1477)) (t!358257 (toList!4701 lm!1477)))))

(assert (=> d!1449910 d!1450038))

(declare-fun bs!1014021 () Bool)

(declare-fun b!4603980 () Bool)

(assert (= bs!1014021 (and b!4603980 d!1449900)))

(declare-fun lambda!187135 () Int)

(assert (=> bs!1014021 (not (= lambda!187135 lambda!187069))))

(assert (=> b!4603980 true))

(declare-fun bs!1014022 () Bool)

(declare-fun b!4603979 () Bool)

(assert (= bs!1014022 (and b!4603979 d!1449900)))

(declare-fun lambda!187138 () Int)

(assert (=> bs!1014022 (not (= lambda!187138 lambda!187069))))

(declare-fun bs!1014023 () Bool)

(assert (= bs!1014023 (and b!4603979 b!4603980)))

(assert (=> bs!1014023 (= lambda!187138 lambda!187135)))

(assert (=> b!4603979 true))

(declare-fun lambda!187139 () Int)

(assert (=> bs!1014022 (not (= lambda!187139 lambda!187069))))

(declare-fun lt!1762300 () ListMap!3963)

(assert (=> bs!1014023 (= (= lt!1762300 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (= lambda!187139 lambda!187135))))

(assert (=> b!4603979 (= (= lt!1762300 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (= lambda!187139 lambda!187138))))

(assert (=> b!4603979 true))

(declare-fun bs!1014024 () Bool)

(declare-fun d!1450040 () Bool)

(assert (= bs!1014024 (and d!1450040 d!1449900)))

(declare-fun lambda!187142 () Int)

(assert (=> bs!1014024 (not (= lambda!187142 lambda!187069))))

(declare-fun bs!1014025 () Bool)

(assert (= bs!1014025 (and d!1450040 b!4603980)))

(declare-fun lt!1762293 () ListMap!3963)

(assert (=> bs!1014025 (= (= lt!1762293 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (= lambda!187142 lambda!187135))))

(declare-fun bs!1014026 () Bool)

(assert (= bs!1014026 (and d!1450040 b!4603979)))

(assert (=> bs!1014026 (= (= lt!1762293 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (= lambda!187142 lambda!187138))))

(assert (=> bs!1014026 (= (= lt!1762293 lt!1762300) (= lambda!187142 lambda!187139))))

(assert (=> d!1450040 true))

(declare-fun e!2871752 () ListMap!3963)

(assert (=> b!4603979 (= e!2871752 lt!1762300)))

(declare-fun lt!1762303 () ListMap!3963)

(declare-fun +!1767 (ListMap!3963 tuple2!51822) ListMap!3963)

(assert (=> b!4603979 (= lt!1762303 (+!1767 (extractMap!1403 (t!358257 (toList!4701 lm!1477))) (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(assert (=> b!4603979 (= lt!1762300 (addToMapMapFromBucket!825 (t!358256 (_2!29206 (h!57113 (toList!4701 lm!1477)))) (+!1767 (extractMap!1403 (t!358257 (toList!4701 lm!1477))) (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))))

(declare-fun lt!1762301 () Unit!108821)

(declare-fun call!321252 () Unit!108821)

(assert (=> b!4603979 (= lt!1762301 call!321252)))

(assert (=> b!4603979 (forall!10641 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) lambda!187138)))

(declare-fun lt!1762309 () Unit!108821)

(assert (=> b!4603979 (= lt!1762309 lt!1762301)))

(assert (=> b!4603979 (forall!10641 (toList!4702 lt!1762303) lambda!187139)))

(declare-fun lt!1762304 () Unit!108821)

(declare-fun Unit!108842 () Unit!108821)

(assert (=> b!4603979 (= lt!1762304 Unit!108842)))

(assert (=> b!4603979 (forall!10641 (t!358256 (_2!29206 (h!57113 (toList!4701 lm!1477)))) lambda!187139)))

(declare-fun lt!1762295 () Unit!108821)

(declare-fun Unit!108843 () Unit!108821)

(assert (=> b!4603979 (= lt!1762295 Unit!108843)))

(declare-fun lt!1762294 () Unit!108821)

(declare-fun Unit!108844 () Unit!108821)

(assert (=> b!4603979 (= lt!1762294 Unit!108844)))

(declare-fun lt!1762296 () Unit!108821)

(declare-fun forallContained!2891 (List!51262 Int tuple2!51822) Unit!108821)

(assert (=> b!4603979 (= lt!1762296 (forallContained!2891 (toList!4702 lt!1762303) lambda!187139 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(assert (=> b!4603979 (contains!14118 lt!1762303 (_1!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(declare-fun lt!1762297 () Unit!108821)

(declare-fun Unit!108845 () Unit!108821)

(assert (=> b!4603979 (= lt!1762297 Unit!108845)))

(assert (=> b!4603979 (contains!14118 lt!1762300 (_1!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))))))

(declare-fun lt!1762299 () Unit!108821)

(declare-fun Unit!108846 () Unit!108821)

(assert (=> b!4603979 (= lt!1762299 Unit!108846)))

(assert (=> b!4603979 (forall!10641 (_2!29206 (h!57113 (toList!4701 lm!1477))) lambda!187139)))

(declare-fun lt!1762308 () Unit!108821)

(declare-fun Unit!108847 () Unit!108821)

(assert (=> b!4603979 (= lt!1762308 Unit!108847)))

(assert (=> b!4603979 (forall!10641 (toList!4702 lt!1762303) lambda!187139)))

(declare-fun lt!1762311 () Unit!108821)

(declare-fun Unit!108848 () Unit!108821)

(assert (=> b!4603979 (= lt!1762311 Unit!108848)))

(declare-fun lt!1762312 () Unit!108821)

(declare-fun Unit!108850 () Unit!108821)

(assert (=> b!4603979 (= lt!1762312 Unit!108850)))

(declare-fun lt!1762305 () Unit!108821)

(declare-fun addForallContainsKeyThenBeforeAdding!441 (ListMap!3963 ListMap!3963 K!12508 V!12754) Unit!108821)

(assert (=> b!4603979 (= lt!1762305 (addForallContainsKeyThenBeforeAdding!441 (extractMap!1403 (t!358257 (toList!4701 lm!1477))) lt!1762300 (_1!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477))))) (_2!29205 (h!57112 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))))

(declare-fun call!321251 () Bool)

(assert (=> b!4603979 call!321251))

(declare-fun lt!1762292 () Unit!108821)

(assert (=> b!4603979 (= lt!1762292 lt!1762305)))

(assert (=> b!4603979 (forall!10641 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) lambda!187139)))

(declare-fun lt!1762310 () Unit!108821)

(declare-fun Unit!108851 () Unit!108821)

(assert (=> b!4603979 (= lt!1762310 Unit!108851)))

(declare-fun res!1926358 () Bool)

(declare-fun call!321250 () Bool)

(assert (=> b!4603979 (= res!1926358 call!321250)))

(declare-fun e!2871751 () Bool)

(assert (=> b!4603979 (=> (not res!1926358) (not e!2871751))))

(assert (=> b!4603979 e!2871751))

(declare-fun lt!1762302 () Unit!108821)

(declare-fun Unit!108852 () Unit!108821)

(assert (=> b!4603979 (= lt!1762302 Unit!108852)))

(assert (=> b!4603980 (= e!2871752 (extractMap!1403 (t!358257 (toList!4701 lm!1477))))))

(declare-fun lt!1762298 () Unit!108821)

(assert (=> b!4603980 (= lt!1762298 call!321252)))

(assert (=> b!4603980 call!321251))

(declare-fun lt!1762307 () Unit!108821)

(assert (=> b!4603980 (= lt!1762307 lt!1762298)))

(assert (=> b!4603980 call!321250))

(declare-fun lt!1762306 () Unit!108821)

(declare-fun Unit!108853 () Unit!108821)

(assert (=> b!4603980 (= lt!1762306 Unit!108853)))

(declare-fun b!4603981 () Bool)

(assert (=> b!4603981 (= e!2871751 (forall!10641 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) lambda!187139))))

(declare-fun c!788707 () Bool)

(declare-fun bm!321245 () Bool)

(assert (=> bm!321245 (= call!321251 (forall!10641 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (ite c!788707 lambda!187135 lambda!187139)))))

(declare-fun bm!321246 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!441 (ListMap!3963) Unit!108821)

(assert (=> bm!321246 (= call!321252 (lemmaContainsAllItsOwnKeys!441 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))))))

(declare-fun e!2871750 () Bool)

(assert (=> d!1450040 e!2871750))

(declare-fun res!1926357 () Bool)

(assert (=> d!1450040 (=> (not res!1926357) (not e!2871750))))

(assert (=> d!1450040 (= res!1926357 (forall!10641 (_2!29206 (h!57113 (toList!4701 lm!1477))) lambda!187142))))

(assert (=> d!1450040 (= lt!1762293 e!2871752)))

(assert (=> d!1450040 (= c!788707 (is-Nil!51138 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(assert (=> d!1450040 (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477))))))

(assert (=> d!1450040 (= (addToMapMapFromBucket!825 (_2!29206 (h!57113 (toList!4701 lm!1477))) (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) lt!1762293)))

(declare-fun b!4603978 () Bool)

(assert (=> b!4603978 (= e!2871750 (invariantList!1133 (toList!4702 lt!1762293)))))

(declare-fun bm!321247 () Bool)

(assert (=> bm!321247 (= call!321250 (forall!10641 (ite c!788707 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) (_2!29206 (h!57113 (toList!4701 lm!1477)))) (ite c!788707 lambda!187135 lambda!187139)))))

(declare-fun b!4603982 () Bool)

(declare-fun res!1926356 () Bool)

(assert (=> b!4603982 (=> (not res!1926356) (not e!2871750))))

(assert (=> b!4603982 (= res!1926356 (forall!10641 (toList!4702 (extractMap!1403 (t!358257 (toList!4701 lm!1477)))) lambda!187142))))

(assert (= (and d!1450040 c!788707) b!4603980))

(assert (= (and d!1450040 (not c!788707)) b!4603979))

(assert (= (and b!4603979 res!1926358) b!4603981))

(assert (= (or b!4603980 b!4603979) bm!321247))

(assert (= (or b!4603980 b!4603979) bm!321245))

(assert (= (or b!4603980 b!4603979) bm!321246))

(assert (= (and d!1450040 res!1926357) b!4603982))

(assert (= (and b!4603982 res!1926356) b!4603978))

(declare-fun m!5433107 () Bool)

(assert (=> bm!321247 m!5433107))

(declare-fun m!5433109 () Bool)

(assert (=> d!1450040 m!5433109))

(assert (=> d!1450040 m!5432857))

(assert (=> bm!321246 m!5432825))

(declare-fun m!5433111 () Bool)

(assert (=> bm!321246 m!5433111))

(assert (=> b!4603979 m!5432825))

(declare-fun m!5433113 () Bool)

(assert (=> b!4603979 m!5433113))

(assert (=> b!4603979 m!5432825))

(declare-fun m!5433115 () Bool)

(assert (=> b!4603979 m!5433115))

(declare-fun m!5433117 () Bool)

(assert (=> b!4603979 m!5433117))

(declare-fun m!5433119 () Bool)

(assert (=> b!4603979 m!5433119))

(declare-fun m!5433121 () Bool)

(assert (=> b!4603979 m!5433121))

(assert (=> b!4603979 m!5433113))

(declare-fun m!5433123 () Bool)

(assert (=> b!4603979 m!5433123))

(declare-fun m!5433125 () Bool)

(assert (=> b!4603979 m!5433125))

(declare-fun m!5433127 () Bool)

(assert (=> b!4603979 m!5433127))

(declare-fun m!5433129 () Bool)

(assert (=> b!4603979 m!5433129))

(assert (=> b!4603979 m!5433125))

(declare-fun m!5433131 () Bool)

(assert (=> b!4603979 m!5433131))

(declare-fun m!5433133 () Bool)

(assert (=> b!4603979 m!5433133))

(declare-fun m!5433135 () Bool)

(assert (=> b!4603978 m!5433135))

(declare-fun m!5433137 () Bool)

(assert (=> bm!321245 m!5433137))

(assert (=> b!4603981 m!5433119))

(declare-fun m!5433139 () Bool)

(assert (=> b!4603982 m!5433139))

(assert (=> b!4603704 d!1450040))

(declare-fun bs!1014027 () Bool)

(declare-fun d!1450044 () Bool)

(assert (= bs!1014027 (and d!1450044 d!1449892)))

(declare-fun lambda!187143 () Int)

(assert (=> bs!1014027 (= lambda!187143 lambda!187063)))

(declare-fun bs!1014028 () Bool)

(assert (= bs!1014028 (and d!1450044 d!1449906)))

(assert (=> bs!1014028 (= lambda!187143 lambda!187072)))

(declare-fun bs!1014029 () Bool)

(assert (= bs!1014029 (and d!1450044 d!1449856)))

(assert (=> bs!1014029 (= lambda!187143 lambda!187057)))

(declare-fun bs!1014030 () Bool)

(assert (= bs!1014030 (and d!1450044 d!1449896)))

(assert (=> bs!1014030 (not (= lambda!187143 lambda!187066))))

(declare-fun bs!1014031 () Bool)

(assert (= bs!1014031 (and d!1450044 start!459686)))

(assert (=> bs!1014031 (= lambda!187143 lambda!187047)))

(declare-fun lt!1762313 () ListMap!3963)

(assert (=> d!1450044 (invariantList!1133 (toList!4702 lt!1762313))))

(declare-fun e!2871755 () ListMap!3963)

(assert (=> d!1450044 (= lt!1762313 e!2871755)))

(declare-fun c!788708 () Bool)

(assert (=> d!1450044 (= c!788708 (is-Cons!51139 (t!358257 (toList!4701 lm!1477))))))

(assert (=> d!1450044 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187143)))

(assert (=> d!1450044 (= (extractMap!1403 (t!358257 (toList!4701 lm!1477))) lt!1762313)))

(declare-fun b!4603991 () Bool)

(assert (=> b!4603991 (= e!2871755 (addToMapMapFromBucket!825 (_2!29206 (h!57113 (t!358257 (toList!4701 lm!1477)))) (extractMap!1403 (t!358257 (t!358257 (toList!4701 lm!1477))))))))

(declare-fun b!4603992 () Bool)

(assert (=> b!4603992 (= e!2871755 (ListMap!3964 Nil!51138))))

(assert (= (and d!1450044 c!788708) b!4603991))

(assert (= (and d!1450044 (not c!788708)) b!4603992))

(declare-fun m!5433141 () Bool)

(assert (=> d!1450044 m!5433141))

(declare-fun m!5433143 () Bool)

(assert (=> d!1450044 m!5433143))

(declare-fun m!5433145 () Bool)

(assert (=> b!4603991 m!5433145))

(assert (=> b!4603991 m!5433145))

(declare-fun m!5433147 () Bool)

(assert (=> b!4603991 m!5433147))

(assert (=> b!4603704 d!1450044))

(declare-fun d!1450046 () Bool)

(declare-fun res!1926365 () Bool)

(declare-fun e!2871756 () Bool)

(assert (=> d!1450046 (=> res!1926365 e!2871756)))

(assert (=> d!1450046 (= res!1926365 (is-Nil!51139 (t!358257 (toList!4701 lm!1477))))))

(assert (=> d!1450046 (= (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187047) e!2871756)))

(declare-fun b!4603993 () Bool)

(declare-fun e!2871757 () Bool)

(assert (=> b!4603993 (= e!2871756 e!2871757)))

(declare-fun res!1926366 () Bool)

(assert (=> b!4603993 (=> (not res!1926366) (not e!2871757))))

(assert (=> b!4603993 (= res!1926366 (dynLambda!21411 lambda!187047 (h!57113 (t!358257 (toList!4701 lm!1477)))))))

(declare-fun b!4603994 () Bool)

(assert (=> b!4603994 (= e!2871757 (forall!10639 (t!358257 (t!358257 (toList!4701 lm!1477))) lambda!187047))))

(assert (= (and d!1450046 (not res!1926365)) b!4603993))

(assert (= (and b!4603993 res!1926366) b!4603994))

(declare-fun b_lambda!169769 () Bool)

(assert (=> (not b_lambda!169769) (not b!4603993)))

(declare-fun m!5433149 () Bool)

(assert (=> b!4603993 m!5433149))

(declare-fun m!5433151 () Bool)

(assert (=> b!4603994 m!5433151))

(assert (=> b!4603654 d!1450046))

(assert (=> b!4603689 d!1450026))

(assert (=> b!4603689 d!1449956))

(assert (=> b!4603615 d!1449864))

(declare-fun d!1450048 () Bool)

(assert (=> d!1450048 (= (get!16909 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344)) (v!45416 (getValueByKey!1328 (toList!4701 lt!1762028) hash!344)))))

(assert (=> d!1449902 d!1450048))

(assert (=> d!1449902 d!1449992))

(assert (=> d!1449906 d!1449880))

(assert (=> d!1449906 d!1449892))

(declare-fun d!1450050 () Bool)

(assert (=> d!1450050 (not (contains!14118 (extractMap!1403 (toList!4701 lm!1477)) key!3287))))

(assert (=> d!1450050 true))

(declare-fun _$26!560 () Unit!108821)

(assert (=> d!1450050 (= (choose!30898 lm!1477 key!3287 hashF!1107) _$26!560)))

(declare-fun bs!1014035 () Bool)

(assert (= bs!1014035 d!1450050))

(assert (=> bs!1014035 m!5432643))

(assert (=> bs!1014035 m!5432643))

(assert (=> bs!1014035 m!5432645))

(assert (=> d!1449906 d!1450050))

(declare-fun d!1450056 () Bool)

(declare-fun res!1926376 () Bool)

(declare-fun e!2871768 () Bool)

(assert (=> d!1450056 (=> res!1926376 e!2871768)))

(assert (=> d!1450056 (= res!1926376 (is-Nil!51139 (toList!4701 lm!1477)))))

(assert (=> d!1450056 (= (forall!10639 (toList!4701 lm!1477) lambda!187072) e!2871768)))

(declare-fun b!4604012 () Bool)

(declare-fun e!2871769 () Bool)

(assert (=> b!4604012 (= e!2871768 e!2871769)))

(declare-fun res!1926377 () Bool)

(assert (=> b!4604012 (=> (not res!1926377) (not e!2871769))))

(assert (=> b!4604012 (= res!1926377 (dynLambda!21411 lambda!187072 (h!57113 (toList!4701 lm!1477))))))

(declare-fun b!4604013 () Bool)

(assert (=> b!4604013 (= e!2871769 (forall!10639 (t!358257 (toList!4701 lm!1477)) lambda!187072))))

(assert (= (and d!1450056 (not res!1926376)) b!4604012))

(assert (= (and b!4604012 res!1926377) b!4604013))

(declare-fun b_lambda!169771 () Bool)

(assert (=> (not b_lambda!169771) (not b!4604012)))

(declare-fun m!5433185 () Bool)

(assert (=> b!4604012 m!5433185))

(declare-fun m!5433187 () Bool)

(assert (=> b!4604013 m!5433187))

(assert (=> d!1449906 d!1450056))

(declare-fun d!1450060 () Bool)

(declare-fun choose!30908 (Hashable!5742 K!12508) (_ BitVec 64))

(assert (=> d!1450060 (= (hash!3266 hashF!1107 key!3287) (choose!30908 hashF!1107 key!3287))))

(declare-fun bs!1014038 () Bool)

(assert (= bs!1014038 d!1450060))

(declare-fun m!5433189 () Bool)

(assert (=> bs!1014038 m!5433189))

(assert (=> d!1449898 d!1450060))

(declare-fun e!2871772 () Bool)

(declare-fun b!4604016 () Bool)

(declare-fun tp!1340706 () Bool)

(assert (=> b!4604016 (= e!2871772 (and tp_is_empty!28665 tp_is_empty!28667 tp!1340706))))

(assert (=> b!4603726 (= tp!1340695 e!2871772)))

(assert (= (and b!4603726 (is-Cons!51138 (_2!29206 (h!57113 (toList!4701 lm!1477))))) b!4604016))

(declare-fun b!4604017 () Bool)

(declare-fun e!2871773 () Bool)

(declare-fun tp!1340707 () Bool)

(declare-fun tp!1340708 () Bool)

(assert (=> b!4604017 (= e!2871773 (and tp!1340707 tp!1340708))))

(assert (=> b!4603726 (= tp!1340696 e!2871773)))

(assert (= (and b!4603726 (is-Cons!51139 (t!358257 (toList!4701 lm!1477)))) b!4604017))

(declare-fun tp!1340709 () Bool)

(declare-fun e!2871774 () Bool)

(declare-fun b!4604018 () Bool)

(assert (=> b!4604018 (= e!2871774 (and tp_is_empty!28665 tp_is_empty!28667 tp!1340709))))

(assert (=> b!4603721 (= tp!1340690 e!2871774)))

(assert (= (and b!4603721 (is-Cons!51138 (t!358256 (t!358256 newBucket!178)))) b!4604018))

(declare-fun b_lambda!169775 () Bool)

(assert (= b_lambda!169761 (or d!1449896 b_lambda!169775)))

(declare-fun bs!1014039 () Bool)

(declare-fun d!1450066 () Bool)

(assert (= bs!1014039 (and d!1450066 d!1449896)))

(assert (=> bs!1014039 (= (dynLambda!21411 lambda!187066 (h!57113 (toList!4701 lm!1477))) (allKeysSameHash!1199 (_2!29206 (h!57113 (toList!4701 lm!1477))) (_1!29206 (h!57113 (toList!4701 lm!1477))) hashF!1107))))

(declare-fun m!5433195 () Bool)

(assert (=> bs!1014039 m!5433195))

(assert (=> b!4603910 d!1450066))

(declare-fun b_lambda!169777 () Bool)

(assert (= b_lambda!169769 (or start!459686 b_lambda!169777)))

(declare-fun bs!1014040 () Bool)

(declare-fun d!1450068 () Bool)

(assert (= bs!1014040 (and d!1450068 start!459686)))

(assert (=> bs!1014040 (= (dynLambda!21411 lambda!187047 (h!57113 (t!358257 (toList!4701 lm!1477)))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (t!358257 (toList!4701 lm!1477))))))))

(declare-fun m!5433197 () Bool)

(assert (=> bs!1014040 m!5433197))

(assert (=> b!4603993 d!1450068))

(declare-fun b_lambda!169779 () Bool)

(assert (= b_lambda!169765 (or start!459686 b_lambda!169779)))

(assert (=> d!1450032 d!1449914))

(declare-fun b_lambda!169781 () Bool)

(assert (= b_lambda!169767 (or start!459686 b_lambda!169781)))

(declare-fun bs!1014041 () Bool)

(declare-fun d!1450070 () Bool)

(assert (= bs!1014041 (and d!1450070 start!459686)))

(assert (=> bs!1014041 (= (dynLambda!21411 lambda!187047 (h!57113 (t!358257 (toList!4701 lt!1762028)))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (t!358257 (toList!4701 lt!1762028))))))))

(declare-fun m!5433199 () Bool)

(assert (=> bs!1014041 m!5433199))

(assert (=> b!4603952 d!1450070))

(declare-fun b_lambda!169783 () Bool)

(assert (= b_lambda!169757 (or d!1449900 b_lambda!169783)))

(declare-fun bs!1014042 () Bool)

(declare-fun d!1450072 () Bool)

(assert (= bs!1014042 (and d!1450072 d!1449900)))

(assert (=> bs!1014042 (= (dynLambda!21413 lambda!187069 (h!57112 newBucket!178)) (= (hash!3264 hashF!1107 (_1!29205 (h!57112 newBucket!178))) hash!344))))

(declare-fun m!5433201 () Bool)

(assert (=> bs!1014042 m!5433201))

(assert (=> b!4603809 d!1450072))

(declare-fun b_lambda!169785 () Bool)

(assert (= b_lambda!169759 (or d!1449856 b_lambda!169785)))

(declare-fun bs!1014043 () Bool)

(declare-fun d!1450074 () Bool)

(assert (= bs!1014043 (and d!1450074 d!1449856)))

(assert (=> bs!1014043 (= (dynLambda!21411 lambda!187057 (h!57113 (toList!4701 lm!1477))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(assert (=> bs!1014043 m!5432857))

(assert (=> b!4603871 d!1450074))

(declare-fun b_lambda!169787 () Bool)

(assert (= b_lambda!169771 (or d!1449906 b_lambda!169787)))

(declare-fun bs!1014044 () Bool)

(declare-fun d!1450076 () Bool)

(assert (= bs!1014044 (and d!1450076 d!1449906)))

(assert (=> bs!1014044 (= (dynLambda!21411 lambda!187072 (h!57113 (toList!4701 lm!1477))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(assert (=> bs!1014044 m!5432857))

(assert (=> b!4604012 d!1450076))

(declare-fun b_lambda!169789 () Bool)

(assert (= b_lambda!169763 (or d!1449892 b_lambda!169789)))

(declare-fun bs!1014045 () Bool)

(declare-fun d!1450078 () Bool)

(assert (= bs!1014045 (and d!1450078 d!1449892)))

(assert (=> bs!1014045 (= (dynLambda!21411 lambda!187063 (h!57113 (toList!4701 lm!1477))) (noDuplicateKeys!1343 (_2!29206 (h!57113 (toList!4701 lm!1477)))))))

(assert (=> bs!1014045 m!5432857))

(assert (=> b!4603931 d!1450078))

(push 1)

(assert (not bm!321247))

(assert (not b!4603991))

(assert (not d!1449966))

(assert (not b_lambda!169779))

(assert (not b!4603940))

(assert (not b!4603823))

(assert (not d!1449968))

(assert (not b_lambda!169745))

(assert (not b!4603810))

(assert (not b!4603864))

(assert (not b!4603895))

(assert (not b!4603981))

(assert (not b!4603908))

(assert (not d!1450020))

(assert (not b!4603868))

(assert (not b!4603919))

(assert (not b_lambda!169777))

(assert (not d!1450022))

(assert (not b_lambda!169743))

(assert (not b!4603945))

(assert (not b!4603896))

(assert (not b_lambda!169789))

(assert (not b!4603982))

(assert (not b!4603862))

(assert (not d!1450040))

(assert tp_is_empty!28667)

(assert (not b!4603978))

(assert (not d!1449996))

(assert (not b!4603994))

(assert (not b!4603913))

(assert (not b!4603865))

(assert (not b_lambda!169785))

(assert (not b!4603953))

(assert (not d!1449990))

(assert (not b!4603932))

(assert (not d!1449978))

(assert (not b!4603844))

(assert (not b!4603867))

(assert (not b!4603930))

(assert (not d!1450024))

(assert (not b!4604013))

(assert (not bs!1014041))

(assert (not bm!321246))

(assert (not b!4603942))

(assert (not d!1450012))

(assert (not b!4603899))

(assert (not d!1449956))

(assert (not b!4603951))

(assert (not b!4603927))

(assert (not b!4603872))

(assert (not b!4603804))

(assert (not bs!1014044))

(assert (not b!4603851))

(assert (not bs!1014040))

(assert (not d!1450050))

(assert (not b!4603921))

(assert (not b!4603870))

(assert (not b_lambda!169781))

(assert (not b!4603922))

(assert (not d!1449970))

(assert (not b!4603833))

(assert (not d!1449980))

(assert (not bs!1014039))

(assert (not b!4603911))

(assert (not b!4603918))

(assert (not b!4604016))

(assert (not b!4603904))

(assert tp_is_empty!28665)

(assert (not b_lambda!169775))

(assert (not d!1449960))

(assert (not b!4603979))

(assert (not b!4603920))

(assert (not d!1449964))

(assert (not b!4603955))

(assert (not d!1450060))

(assert (not bs!1014042))

(assert (not b_lambda!169787))

(assert (not d!1450026))

(assert (not b!4603944))

(assert (not b!4603825))

(assert (not bs!1014043))

(assert (not b!4604018))

(assert (not d!1450044))

(assert (not d!1450008))

(assert (not b_lambda!169783))

(assert (not d!1450028))

(assert (not b!4603923))

(assert (not b!4603892))

(assert (not bs!1014045))

(assert (not d!1449998))

(assert (not d!1449984))

(assert (not b!4604017))

(assert (not b!4603824))

(assert (not b!4603816))

(assert (not b!4603939))

(assert (not b!4603894))

(assert (not b!4603938))

(assert (not b_lambda!169747))

(assert (not b!4603916))

(assert (not b!4603924))

(assert (not bm!321245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

