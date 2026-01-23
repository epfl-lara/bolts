; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434258 () Bool)

(assert start!434258)

(declare-fun b!4439432 () Bool)

(declare-fun res!1837778 () Bool)

(declare-fun e!2764279 () Bool)

(assert (=> b!4439432 (=> res!1837778 e!2764279)))

(declare-datatypes ((V!11369 0))(
  ( (V!11370 (val!17169 Int)) )
))
(declare-datatypes ((K!11123 0))(
  ( (K!11124 (val!17170 Int)) )
))
(declare-datatypes ((tuple2!49658 0))(
  ( (tuple2!49659 (_1!28123 K!11123) (_2!28123 V!11369)) )
))
(declare-datatypes ((List!49880 0))(
  ( (Nil!49756) (Cons!49756 (h!55475 tuple2!49658) (t!356822 List!49880)) )
))
(declare-datatypes ((ListMap!2871 0))(
  ( (ListMap!2872 (toList!3627 List!49880)) )
))
(declare-fun lt!1635770 () ListMap!2871)

(declare-fun lt!1635774 () List!49880)

(declare-fun lt!1635773 () ListMap!2871)

(declare-fun lt!1635776 () tuple2!49658)

(declare-fun addToMapMapFromBucket!438 (List!49880 ListMap!2871) ListMap!2871)

(declare-fun +!1198 (ListMap!2871 tuple2!49658) ListMap!2871)

(assert (=> b!4439432 (= res!1837778 (not (= lt!1635770 (addToMapMapFromBucket!438 lt!1635774 (+!1198 lt!1635773 lt!1635776)))))))

(declare-fun b!4439433 () Bool)

(declare-fun res!1837779 () Bool)

(declare-fun e!2764281 () Bool)

(assert (=> b!4439433 (=> res!1837779 e!2764281)))

(declare-fun lt!1635778 () Bool)

(declare-datatypes ((tuple2!49660 0))(
  ( (tuple2!49661 (_1!28124 (_ BitVec 64)) (_2!28124 List!49880)) )
))
(declare-datatypes ((List!49881 0))(
  ( (Nil!49757) (Cons!49757 (h!55476 tuple2!49660) (t!356823 List!49881)) )
))
(declare-datatypes ((ListLongMap!2277 0))(
  ( (ListLongMap!2278 (toList!3628 List!49881)) )
))
(declare-fun lm!1616 () ListLongMap!2277)

(declare-fun hash!366 () (_ BitVec 64))

(assert (=> b!4439433 (= res!1837779 (or (not (is-Cons!49757 (toList!3628 lm!1616))) (not (= (_1!28124 (h!55476 (toList!3628 lm!1616))) hash!366)) lt!1635778))))

(declare-fun b!4439434 () Bool)

(declare-fun res!1837782 () Bool)

(declare-fun e!2764283 () Bool)

(assert (=> b!4439434 (=> (not res!1837782) (not e!2764283))))

(declare-fun newBucket!194 () List!49880)

(declare-fun noDuplicateKeys!820 (List!49880) Bool)

(assert (=> b!4439434 (= res!1837782 (noDuplicateKeys!820 newBucket!194))))

(declare-fun b!4439435 () Bool)

(declare-fun e!2764285 () Bool)

(assert (=> b!4439435 (= e!2764281 e!2764285)))

(declare-fun res!1837775 () Bool)

(assert (=> b!4439435 (=> res!1837775 e!2764285)))

(declare-fun lt!1635779 () ListMap!2871)

(assert (=> b!4439435 (= res!1837775 (not (= lt!1635779 lt!1635770)))))

(assert (=> b!4439435 (= lt!1635770 (addToMapMapFromBucket!438 newBucket!194 lt!1635773))))

(declare-fun lt!1635777 () ListLongMap!2277)

(declare-fun extractMap!881 (List!49881) ListMap!2871)

(assert (=> b!4439435 (= lt!1635779 (extractMap!881 (toList!3628 lt!1635777)))))

(assert (=> b!4439435 (= lt!1635773 (extractMap!881 (t!356823 (toList!3628 lm!1616))))))

(declare-fun b!4439436 () Bool)

(assert (=> b!4439436 (= e!2764279 (noDuplicateKeys!820 lt!1635774))))

(declare-fun res!1837776 () Bool)

(declare-fun e!2764278 () Bool)

(assert (=> start!434258 (=> (not res!1837776) (not e!2764278))))

(declare-fun lambda!156949 () Int)

(declare-fun forall!9682 (List!49881 Int) Bool)

(assert (=> start!434258 (= res!1837776 (forall!9682 (toList!3628 lm!1616) lambda!156949))))

(assert (=> start!434258 e!2764278))

(declare-fun tp_is_empty!26525 () Bool)

(assert (=> start!434258 tp_is_empty!26525))

(declare-fun tp_is_empty!26527 () Bool)

(assert (=> start!434258 tp_is_empty!26527))

(declare-fun e!2764282 () Bool)

(assert (=> start!434258 e!2764282))

(declare-fun e!2764280 () Bool)

(declare-fun inv!65310 (ListLongMap!2277) Bool)

(assert (=> start!434258 (and (inv!65310 lm!1616) e!2764280)))

(assert (=> start!434258 true))

(declare-fun b!4439437 () Bool)

(declare-fun res!1837788 () Bool)

(assert (=> b!4439437 (=> res!1837788 e!2764281)))

(declare-fun tail!7352 (List!49881) List!49881)

(assert (=> b!4439437 (= res!1837788 (not (= (tail!7352 (toList!3628 lt!1635777)) (t!356823 (toList!3628 lm!1616)))))))

(declare-fun e!2764284 () Bool)

(declare-fun lt!1635775 () Bool)

(declare-fun newValue!93 () V!11369)

(declare-fun b!4439438 () Bool)

(declare-fun key!3717 () K!11123)

(assert (=> b!4439438 (= e!2764284 (and (not lt!1635775) (= newBucket!194 (Cons!49756 (tuple2!49659 key!3717 newValue!93) Nil!49756))))))

(declare-fun b!4439439 () Bool)

(declare-fun res!1837777 () Bool)

(assert (=> b!4439439 (=> (not res!1837777) (not e!2764283))))

(assert (=> b!4439439 (= res!1837777 (forall!9682 (toList!3628 lm!1616) lambda!156949))))

(declare-fun e!2764277 () Bool)

(declare-fun b!4439440 () Bool)

(declare-fun apply!11672 (ListLongMap!2277 (_ BitVec 64)) List!49880)

(assert (=> b!4439440 (= e!2764277 (= newBucket!194 (Cons!49756 (tuple2!49659 key!3717 newValue!93) (apply!11672 lm!1616 hash!366))))))

(declare-fun b!4439441 () Bool)

(assert (=> b!4439441 (= e!2764278 e!2764283)))

(declare-fun res!1837774 () Bool)

(assert (=> b!4439441 (=> (not res!1837774) (not e!2764283))))

(assert (=> b!4439441 (= res!1837774 e!2764284)))

(declare-fun res!1837780 () Bool)

(assert (=> b!4439441 (=> res!1837780 e!2764284)))

(assert (=> b!4439441 (= res!1837780 e!2764277)))

(declare-fun res!1837791 () Bool)

(assert (=> b!4439441 (=> (not res!1837791) (not e!2764277))))

(assert (=> b!4439441 (= res!1837791 (not lt!1635778))))

(assert (=> b!4439441 (= lt!1635778 (not lt!1635775))))

(declare-fun contains!12319 (ListLongMap!2277 (_ BitVec 64)) Bool)

(assert (=> b!4439441 (= lt!1635775 (contains!12319 lm!1616 hash!366))))

(declare-fun b!4439442 () Bool)

(declare-fun res!1837784 () Bool)

(assert (=> b!4439442 (=> (not res!1837784) (not e!2764278))))

(declare-fun contains!12320 (ListMap!2871 K!11123) Bool)

(assert (=> b!4439442 (= res!1837784 (not (contains!12320 (extractMap!881 (toList!3628 lm!1616)) key!3717)))))

(declare-fun b!4439443 () Bool)

(declare-fun res!1837786 () Bool)

(assert (=> b!4439443 (=> res!1837786 e!2764279)))

(declare-fun containsKey!1224 (List!49880 K!11123) Bool)

(assert (=> b!4439443 (= res!1837786 (containsKey!1224 lt!1635774 key!3717))))

(declare-fun b!4439444 () Bool)

(assert (=> b!4439444 (= e!2764283 (not e!2764281))))

(declare-fun res!1837783 () Bool)

(assert (=> b!4439444 (=> res!1837783 e!2764281)))

(assert (=> b!4439444 (= res!1837783 (not (forall!9682 (toList!3628 lt!1635777) lambda!156949)))))

(assert (=> b!4439444 (forall!9682 (toList!3628 lt!1635777) lambda!156949)))

(declare-fun lt!1635771 () tuple2!49660)

(declare-fun +!1199 (ListLongMap!2277 tuple2!49660) ListLongMap!2277)

(assert (=> b!4439444 (= lt!1635777 (+!1199 lm!1616 lt!1635771))))

(assert (=> b!4439444 (= lt!1635771 (tuple2!49661 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83814 0))(
  ( (Unit!83815) )
))
(declare-fun lt!1635772 () Unit!83814)

(declare-fun addValidProp!458 (ListLongMap!2277 Int (_ BitVec 64) List!49880) Unit!83814)

(assert (=> b!4439444 (= lt!1635772 (addValidProp!458 lm!1616 lambda!156949 hash!366 newBucket!194))))

(declare-fun b!4439445 () Bool)

(declare-fun res!1837781 () Bool)

(assert (=> b!4439445 (=> res!1837781 e!2764281)))

(declare-fun head!9283 (List!49881) tuple2!49660)

(assert (=> b!4439445 (= res!1837781 (not (= (head!9283 (toList!3628 lt!1635777)) lt!1635771)))))

(declare-fun b!4439446 () Bool)

(assert (=> b!4439446 (= e!2764285 e!2764279)))

(declare-fun res!1837789 () Bool)

(assert (=> b!4439446 (=> res!1837789 e!2764279)))

(assert (=> b!4439446 (= res!1837789 (not (= newBucket!194 (Cons!49756 lt!1635776 lt!1635774))))))

(assert (=> b!4439446 (= lt!1635774 (apply!11672 lm!1616 hash!366))))

(assert (=> b!4439446 (= lt!1635776 (tuple2!49659 key!3717 newValue!93))))

(declare-fun b!4439447 () Bool)

(declare-fun res!1837790 () Bool)

(assert (=> b!4439447 (=> (not res!1837790) (not e!2764278))))

(declare-datatypes ((Hashable!5214 0))(
  ( (HashableExt!5213 (__x!30917 Int)) )
))
(declare-fun hashF!1220 () Hashable!5214)

(declare-fun allKeysSameHash!780 (List!49880 (_ BitVec 64) Hashable!5214) Bool)

(assert (=> b!4439447 (= res!1837790 (allKeysSameHash!780 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4439448 () Bool)

(declare-fun res!1837785 () Bool)

(assert (=> b!4439448 (=> (not res!1837785) (not e!2764278))))

(declare-fun hash!2268 (Hashable!5214 K!11123) (_ BitVec 64))

(assert (=> b!4439448 (= res!1837785 (= (hash!2268 hashF!1220 key!3717) hash!366))))

(declare-fun b!4439449 () Bool)

(declare-fun tp!1334009 () Bool)

(assert (=> b!4439449 (= e!2764280 tp!1334009)))

(declare-fun tp!1334010 () Bool)

(declare-fun b!4439450 () Bool)

(assert (=> b!4439450 (= e!2764282 (and tp_is_empty!26527 tp_is_empty!26525 tp!1334010))))

(declare-fun b!4439451 () Bool)

(declare-fun res!1837787 () Bool)

(assert (=> b!4439451 (=> (not res!1837787) (not e!2764278))))

(declare-fun allKeysSameHashInMap!926 (ListLongMap!2277 Hashable!5214) Bool)

(assert (=> b!4439451 (= res!1837787 (allKeysSameHashInMap!926 lm!1616 hashF!1220))))

(assert (= (and start!434258 res!1837776) b!4439451))

(assert (= (and b!4439451 res!1837787) b!4439448))

(assert (= (and b!4439448 res!1837785) b!4439447))

(assert (= (and b!4439447 res!1837790) b!4439442))

(assert (= (and b!4439442 res!1837784) b!4439441))

(assert (= (and b!4439441 res!1837791) b!4439440))

(assert (= (and b!4439441 (not res!1837780)) b!4439438))

(assert (= (and b!4439441 res!1837774) b!4439434))

(assert (= (and b!4439434 res!1837782) b!4439439))

(assert (= (and b!4439439 res!1837777) b!4439444))

(assert (= (and b!4439444 (not res!1837783)) b!4439433))

(assert (= (and b!4439433 (not res!1837779)) b!4439445))

(assert (= (and b!4439445 (not res!1837781)) b!4439437))

(assert (= (and b!4439437 (not res!1837788)) b!4439435))

(assert (= (and b!4439435 (not res!1837775)) b!4439446))

(assert (= (and b!4439446 (not res!1837789)) b!4439432))

(assert (= (and b!4439432 (not res!1837778)) b!4439443))

(assert (= (and b!4439443 (not res!1837786)) b!4439436))

(assert (= (and start!434258 (is-Cons!49756 newBucket!194)) b!4439450))

(assert (= start!434258 b!4439449))

(declare-fun m!5127959 () Bool)

(assert (=> b!4439448 m!5127959))

(declare-fun m!5127961 () Bool)

(assert (=> b!4439444 m!5127961))

(assert (=> b!4439444 m!5127961))

(declare-fun m!5127963 () Bool)

(assert (=> b!4439444 m!5127963))

(declare-fun m!5127965 () Bool)

(assert (=> b!4439444 m!5127965))

(declare-fun m!5127967 () Bool)

(assert (=> b!4439446 m!5127967))

(declare-fun m!5127969 () Bool)

(assert (=> b!4439451 m!5127969))

(declare-fun m!5127971 () Bool)

(assert (=> b!4439435 m!5127971))

(declare-fun m!5127973 () Bool)

(assert (=> b!4439435 m!5127973))

(declare-fun m!5127975 () Bool)

(assert (=> b!4439435 m!5127975))

(declare-fun m!5127977 () Bool)

(assert (=> b!4439439 m!5127977))

(declare-fun m!5127979 () Bool)

(assert (=> b!4439436 m!5127979))

(declare-fun m!5127981 () Bool)

(assert (=> b!4439437 m!5127981))

(declare-fun m!5127983 () Bool)

(assert (=> b!4439443 m!5127983))

(declare-fun m!5127985 () Bool)

(assert (=> b!4439432 m!5127985))

(assert (=> b!4439432 m!5127985))

(declare-fun m!5127987 () Bool)

(assert (=> b!4439432 m!5127987))

(declare-fun m!5127989 () Bool)

(assert (=> b!4439434 m!5127989))

(declare-fun m!5127991 () Bool)

(assert (=> b!4439445 m!5127991))

(assert (=> b!4439440 m!5127967))

(declare-fun m!5127993 () Bool)

(assert (=> b!4439441 m!5127993))

(declare-fun m!5127995 () Bool)

(assert (=> b!4439447 m!5127995))

(assert (=> start!434258 m!5127977))

(declare-fun m!5127997 () Bool)

(assert (=> start!434258 m!5127997))

(declare-fun m!5127999 () Bool)

(assert (=> b!4439442 m!5127999))

(assert (=> b!4439442 m!5127999))

(declare-fun m!5128001 () Bool)

(assert (=> b!4439442 m!5128001))

(push 1)

(assert (not start!434258))

(assert (not b!4439439))

(assert (not b!4439448))

(assert (not b!4439450))

(assert (not b!4439437))

(assert (not b!4439441))

(assert (not b!4439445))

(assert tp_is_empty!26525)

(assert (not b!4439435))

(assert (not b!4439451))

(assert (not b!4439444))

(assert (not b!4439446))

(assert (not b!4439434))

(assert (not b!4439432))

(assert (not b!4439443))

(assert (not b!4439442))

(assert (not b!4439447))

(assert tp_is_empty!26527)

(assert (not b!4439436))

(assert (not b!4439440))

(assert (not b!4439449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1347645 () Bool)

(assert (=> d!1347645 (= (tail!7352 (toList!3628 lt!1635777)) (t!356823 (toList!3628 lt!1635777)))))

(assert (=> b!4439437 d!1347645))

(declare-fun d!1347647 () Bool)

(declare-fun hash!2270 (Hashable!5214 K!11123) (_ BitVec 64))

(assert (=> d!1347647 (= (hash!2268 hashF!1220 key!3717) (hash!2270 hashF!1220 key!3717))))

(declare-fun bs!763925 () Bool)

(assert (= bs!763925 d!1347647))

(declare-fun m!5128047 () Bool)

(assert (=> bs!763925 m!5128047))

(assert (=> b!4439448 d!1347647))

(declare-fun d!1347649 () Bool)

(declare-fun res!1837850 () Bool)

(declare-fun e!2764317 () Bool)

(assert (=> d!1347649 (=> res!1837850 e!2764317)))

(assert (=> d!1347649 (= res!1837850 (is-Nil!49757 (toList!3628 lm!1616)))))

(assert (=> d!1347649 (= (forall!9682 (toList!3628 lm!1616) lambda!156949) e!2764317)))

(declare-fun b!4439516 () Bool)

(declare-fun e!2764318 () Bool)

(assert (=> b!4439516 (= e!2764317 e!2764318)))

(declare-fun res!1837851 () Bool)

(assert (=> b!4439516 (=> (not res!1837851) (not e!2764318))))

(declare-fun dynLambda!20902 (Int tuple2!49660) Bool)

(assert (=> b!4439516 (= res!1837851 (dynLambda!20902 lambda!156949 (h!55476 (toList!3628 lm!1616))))))

(declare-fun b!4439517 () Bool)

(assert (=> b!4439517 (= e!2764318 (forall!9682 (t!356823 (toList!3628 lm!1616)) lambda!156949))))

(assert (= (and d!1347649 (not res!1837850)) b!4439516))

(assert (= (and b!4439516 res!1837851) b!4439517))

(declare-fun b_lambda!144921 () Bool)

(assert (=> (not b_lambda!144921) (not b!4439516)))

(declare-fun m!5128049 () Bool)

(assert (=> b!4439516 m!5128049))

(declare-fun m!5128051 () Bool)

(assert (=> b!4439517 m!5128051))

(assert (=> b!4439439 d!1347649))

(declare-fun d!1347651 () Bool)

(declare-datatypes ((Option!10789 0))(
  ( (None!10788) (Some!10788 (v!44016 List!49880)) )
))
(declare-fun get!16227 (Option!10789) List!49880)

(declare-fun getValueByKey!775 (List!49881 (_ BitVec 64)) Option!10789)

(assert (=> d!1347651 (= (apply!11672 lm!1616 hash!366) (get!16227 (getValueByKey!775 (toList!3628 lm!1616) hash!366)))))

(declare-fun bs!763926 () Bool)

(assert (= bs!763926 d!1347651))

(declare-fun m!5128053 () Bool)

(assert (=> bs!763926 m!5128053))

(assert (=> bs!763926 m!5128053))

(declare-fun m!5128055 () Bool)

(assert (=> bs!763926 m!5128055))

(assert (=> b!4439440 d!1347651))

(declare-fun bs!763927 () Bool)

(declare-fun d!1347653 () Bool)

(assert (= bs!763927 (and d!1347653 start!434258)))

(declare-fun lambda!156961 () Int)

(assert (=> bs!763927 (not (= lambda!156961 lambda!156949))))

(assert (=> d!1347653 true))

(assert (=> d!1347653 (= (allKeysSameHashInMap!926 lm!1616 hashF!1220) (forall!9682 (toList!3628 lm!1616) lambda!156961))))

(declare-fun bs!763928 () Bool)

(assert (= bs!763928 d!1347653))

(declare-fun m!5128057 () Bool)

(assert (=> bs!763928 m!5128057))

(assert (=> b!4439451 d!1347653))

(declare-fun d!1347655 () Bool)

(declare-fun e!2764324 () Bool)

(assert (=> d!1347655 e!2764324))

(declare-fun res!1837854 () Bool)

(assert (=> d!1347655 (=> res!1837854 e!2764324)))

(declare-fun lt!1635820 () Bool)

(assert (=> d!1347655 (= res!1837854 (not lt!1635820))))

(declare-fun lt!1635819 () Bool)

(assert (=> d!1347655 (= lt!1635820 lt!1635819)))

(declare-fun lt!1635821 () Unit!83814)

(declare-fun e!2764323 () Unit!83814)

(assert (=> d!1347655 (= lt!1635821 e!2764323)))

(declare-fun c!755626 () Bool)

(assert (=> d!1347655 (= c!755626 lt!1635819)))

(declare-fun containsKey!1226 (List!49881 (_ BitVec 64)) Bool)

(assert (=> d!1347655 (= lt!1635819 (containsKey!1226 (toList!3628 lm!1616) hash!366))))

(assert (=> d!1347655 (= (contains!12319 lm!1616 hash!366) lt!1635820)))

(declare-fun b!4439526 () Bool)

(declare-fun lt!1635818 () Unit!83814)

(assert (=> b!4439526 (= e!2764323 lt!1635818)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!684 (List!49881 (_ BitVec 64)) Unit!83814)

(assert (=> b!4439526 (= lt!1635818 (lemmaContainsKeyImpliesGetValueByKeyDefined!684 (toList!3628 lm!1616) hash!366))))

(declare-fun isDefined!8081 (Option!10789) Bool)

(assert (=> b!4439526 (isDefined!8081 (getValueByKey!775 (toList!3628 lm!1616) hash!366))))

(declare-fun b!4439527 () Bool)

(declare-fun Unit!83818 () Unit!83814)

(assert (=> b!4439527 (= e!2764323 Unit!83818)))

(declare-fun b!4439528 () Bool)

(assert (=> b!4439528 (= e!2764324 (isDefined!8081 (getValueByKey!775 (toList!3628 lm!1616) hash!366)))))

(assert (= (and d!1347655 c!755626) b!4439526))

(assert (= (and d!1347655 (not c!755626)) b!4439527))

(assert (= (and d!1347655 (not res!1837854)) b!4439528))

(declare-fun m!5128059 () Bool)

(assert (=> d!1347655 m!5128059))

(declare-fun m!5128061 () Bool)

(assert (=> b!4439526 m!5128061))

(assert (=> b!4439526 m!5128053))

(assert (=> b!4439526 m!5128053))

(declare-fun m!5128063 () Bool)

(assert (=> b!4439526 m!5128063))

(assert (=> b!4439528 m!5128053))

(assert (=> b!4439528 m!5128053))

(assert (=> b!4439528 m!5128063))

(assert (=> b!4439441 d!1347655))

(assert (=> start!434258 d!1347649))

(declare-fun d!1347657 () Bool)

(declare-fun isStrictlySorted!264 (List!49881) Bool)

(assert (=> d!1347657 (= (inv!65310 lm!1616) (isStrictlySorted!264 (toList!3628 lm!1616)))))

(declare-fun bs!763929 () Bool)

(assert (= bs!763929 d!1347657))

(declare-fun m!5128065 () Bool)

(assert (=> bs!763929 m!5128065))

(assert (=> start!434258 d!1347657))

(declare-fun b!4439553 () Bool)

(declare-fun e!2764347 () Bool)

(declare-datatypes ((List!49884 0))(
  ( (Nil!49760) (Cons!49760 (h!55480 K!11123) (t!356826 List!49884)) )
))
(declare-fun contains!12323 (List!49884 K!11123) Bool)

(declare-fun keys!17036 (ListMap!2871) List!49884)

(assert (=> b!4439553 (= e!2764347 (not (contains!12323 (keys!17036 (extractMap!881 (toList!3628 lm!1616))) key!3717)))))

(declare-fun d!1347659 () Bool)

(declare-fun e!2764343 () Bool)

(assert (=> d!1347659 e!2764343))

(declare-fun res!1837869 () Bool)

(assert (=> d!1347659 (=> res!1837869 e!2764343)))

(assert (=> d!1347659 (= res!1837869 e!2764347)))

(declare-fun res!1837867 () Bool)

(assert (=> d!1347659 (=> (not res!1837867) (not e!2764347))))

(declare-fun lt!1635842 () Bool)

(assert (=> d!1347659 (= res!1837867 (not lt!1635842))))

(declare-fun lt!1635838 () Bool)

(assert (=> d!1347659 (= lt!1635842 lt!1635838)))

(declare-fun lt!1635844 () Unit!83814)

(declare-fun e!2764346 () Unit!83814)

(assert (=> d!1347659 (= lt!1635844 e!2764346)))

(declare-fun c!755633 () Bool)

(assert (=> d!1347659 (= c!755633 lt!1635838)))

(declare-fun containsKey!1227 (List!49880 K!11123) Bool)

(assert (=> d!1347659 (= lt!1635838 (containsKey!1227 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(assert (=> d!1347659 (= (contains!12320 (extractMap!881 (toList!3628 lm!1616)) key!3717) lt!1635842)))

(declare-fun bm!308946 () Bool)

(declare-fun call!308951 () Bool)

(declare-fun e!2764344 () List!49884)

(assert (=> bm!308946 (= call!308951 (contains!12323 e!2764344 key!3717))))

(declare-fun c!755635 () Bool)

(assert (=> bm!308946 (= c!755635 c!755633)))

(declare-fun b!4439554 () Bool)

(declare-fun lt!1635840 () Unit!83814)

(assert (=> b!4439554 (= e!2764346 lt!1635840)))

(declare-fun lt!1635839 () Unit!83814)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!685 (List!49880 K!11123) Unit!83814)

(assert (=> b!4439554 (= lt!1635839 (lemmaContainsKeyImpliesGetValueByKeyDefined!685 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(declare-datatypes ((Option!10790 0))(
  ( (None!10789) (Some!10789 (v!44017 V!11369)) )
))
(declare-fun isDefined!8082 (Option!10790) Bool)

(declare-fun getValueByKey!776 (List!49880 K!11123) Option!10790)

(assert (=> b!4439554 (isDefined!8082 (getValueByKey!776 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(declare-fun lt!1635841 () Unit!83814)

(assert (=> b!4439554 (= lt!1635841 lt!1635839)))

(declare-fun lemmaInListThenGetKeysListContains!281 (List!49880 K!11123) Unit!83814)

(assert (=> b!4439554 (= lt!1635840 (lemmaInListThenGetKeysListContains!281 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(assert (=> b!4439554 call!308951))

(declare-fun b!4439555 () Bool)

(assert (=> b!4439555 false))

(declare-fun lt!1635845 () Unit!83814)

(declare-fun lt!1635843 () Unit!83814)

(assert (=> b!4439555 (= lt!1635845 lt!1635843)))

(assert (=> b!4439555 (containsKey!1227 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!282 (List!49880 K!11123) Unit!83814)

(assert (=> b!4439555 (= lt!1635843 (lemmaInGetKeysListThenContainsKey!282 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(declare-fun e!2764345 () Unit!83814)

(declare-fun Unit!83819 () Unit!83814)

(assert (=> b!4439555 (= e!2764345 Unit!83819)))

(declare-fun b!4439556 () Bool)

(assert (=> b!4439556 (= e!2764344 (keys!17036 (extractMap!881 (toList!3628 lm!1616))))))

(declare-fun b!4439557 () Bool)

(declare-fun e!2764348 () Bool)

(assert (=> b!4439557 (= e!2764343 e!2764348)))

(declare-fun res!1837868 () Bool)

(assert (=> b!4439557 (=> (not res!1837868) (not e!2764348))))

(assert (=> b!4439557 (= res!1837868 (isDefined!8082 (getValueByKey!776 (toList!3627 (extractMap!881 (toList!3628 lm!1616))) key!3717)))))

(declare-fun b!4439558 () Bool)

(assert (=> b!4439558 (= e!2764348 (contains!12323 (keys!17036 (extractMap!881 (toList!3628 lm!1616))) key!3717))))

(declare-fun b!4439559 () Bool)

(declare-fun Unit!83820 () Unit!83814)

(assert (=> b!4439559 (= e!2764345 Unit!83820)))

(declare-fun b!4439560 () Bool)

(declare-fun getKeysList!284 (List!49880) List!49884)

(assert (=> b!4439560 (= e!2764344 (getKeysList!284 (toList!3627 (extractMap!881 (toList!3628 lm!1616)))))))

(declare-fun b!4439561 () Bool)

(assert (=> b!4439561 (= e!2764346 e!2764345)))

(declare-fun c!755634 () Bool)

(assert (=> b!4439561 (= c!755634 call!308951)))

(assert (= (and d!1347659 c!755633) b!4439554))

(assert (= (and d!1347659 (not c!755633)) b!4439561))

(assert (= (and b!4439561 c!755634) b!4439555))

(assert (= (and b!4439561 (not c!755634)) b!4439559))

(assert (= (or b!4439554 b!4439561) bm!308946))

(assert (= (and bm!308946 c!755635) b!4439560))

(assert (= (and bm!308946 (not c!755635)) b!4439556))

(assert (= (and d!1347659 res!1837867) b!4439553))

(assert (= (and d!1347659 (not res!1837869)) b!4439557))

(assert (= (and b!4439557 res!1837868) b!4439558))

(declare-fun m!5128077 () Bool)

(assert (=> b!4439557 m!5128077))

(assert (=> b!4439557 m!5128077))

(declare-fun m!5128079 () Bool)

(assert (=> b!4439557 m!5128079))

(assert (=> b!4439556 m!5127999))

(declare-fun m!5128081 () Bool)

(assert (=> b!4439556 m!5128081))

(declare-fun m!5128083 () Bool)

(assert (=> d!1347659 m!5128083))

(declare-fun m!5128085 () Bool)

(assert (=> b!4439554 m!5128085))

(assert (=> b!4439554 m!5128077))

(assert (=> b!4439554 m!5128077))

(assert (=> b!4439554 m!5128079))

(declare-fun m!5128087 () Bool)

(assert (=> b!4439554 m!5128087))

(assert (=> b!4439555 m!5128083))

(declare-fun m!5128089 () Bool)

(assert (=> b!4439555 m!5128089))

(assert (=> b!4439553 m!5127999))

(assert (=> b!4439553 m!5128081))

(assert (=> b!4439553 m!5128081))

(declare-fun m!5128091 () Bool)

(assert (=> b!4439553 m!5128091))

(declare-fun m!5128093 () Bool)

(assert (=> b!4439560 m!5128093))

(declare-fun m!5128095 () Bool)

(assert (=> bm!308946 m!5128095))

(assert (=> b!4439558 m!5127999))

(assert (=> b!4439558 m!5128081))

(assert (=> b!4439558 m!5128081))

(assert (=> b!4439558 m!5128091))

(assert (=> b!4439442 d!1347659))

(declare-fun bs!763932 () Bool)

(declare-fun d!1347669 () Bool)

(assert (= bs!763932 (and d!1347669 start!434258)))

(declare-fun lambda!156964 () Int)

(assert (=> bs!763932 (= lambda!156964 lambda!156949)))

(declare-fun bs!763933 () Bool)

(assert (= bs!763933 (and d!1347669 d!1347653)))

(assert (=> bs!763933 (not (= lambda!156964 lambda!156961))))

(declare-fun lt!1635856 () ListMap!2871)

(declare-fun invariantList!837 (List!49880) Bool)

(assert (=> d!1347669 (invariantList!837 (toList!3627 lt!1635856))))

(declare-fun e!2764353 () ListMap!2871)

(assert (=> d!1347669 (= lt!1635856 e!2764353)))

(declare-fun c!755638 () Bool)

(assert (=> d!1347669 (= c!755638 (is-Cons!49757 (toList!3628 lm!1616)))))

(assert (=> d!1347669 (forall!9682 (toList!3628 lm!1616) lambda!156964)))

(assert (=> d!1347669 (= (extractMap!881 (toList!3628 lm!1616)) lt!1635856)))

(declare-fun b!4439570 () Bool)

(assert (=> b!4439570 (= e!2764353 (addToMapMapFromBucket!438 (_2!28124 (h!55476 (toList!3628 lm!1616))) (extractMap!881 (t!356823 (toList!3628 lm!1616)))))))

(declare-fun b!4439571 () Bool)

(assert (=> b!4439571 (= e!2764353 (ListMap!2872 Nil!49756))))

(assert (= (and d!1347669 c!755638) b!4439570))

(assert (= (and d!1347669 (not c!755638)) b!4439571))

(declare-fun m!5128097 () Bool)

(assert (=> d!1347669 m!5128097))

(declare-fun m!5128099 () Bool)

(assert (=> d!1347669 m!5128099))

(assert (=> b!4439570 m!5127975))

(assert (=> b!4439570 m!5127975))

(declare-fun m!5128101 () Bool)

(assert (=> b!4439570 m!5128101))

(assert (=> b!4439442 d!1347669))

(declare-fun b!4439632 () Bool)

(assert (=> b!4439632 true))

(declare-fun bs!763936 () Bool)

(declare-fun b!4439630 () Bool)

(assert (= bs!763936 (and b!4439630 b!4439632)))

(declare-fun lambda!156997 () Int)

(declare-fun lambda!156996 () Int)

(assert (=> bs!763936 (= lambda!156997 lambda!156996)))

(assert (=> b!4439630 true))

(declare-fun lt!1635949 () ListMap!2871)

(declare-fun lambda!156998 () Int)

(assert (=> bs!763936 (= (= lt!1635949 (+!1198 lt!1635773 lt!1635776)) (= lambda!156998 lambda!156996))))

(assert (=> b!4439630 (= (= lt!1635949 (+!1198 lt!1635773 lt!1635776)) (= lambda!156998 lambda!156997))))

(assert (=> b!4439630 true))

(declare-fun bs!763937 () Bool)

(declare-fun d!1347671 () Bool)

(assert (= bs!763937 (and d!1347671 b!4439632)))

(declare-fun lt!1635935 () ListMap!2871)

(declare-fun lambda!156999 () Int)

(assert (=> bs!763937 (= (= lt!1635935 (+!1198 lt!1635773 lt!1635776)) (= lambda!156999 lambda!156996))))

(declare-fun bs!763938 () Bool)

(assert (= bs!763938 (and d!1347671 b!4439630)))

(assert (=> bs!763938 (= (= lt!1635935 (+!1198 lt!1635773 lt!1635776)) (= lambda!156999 lambda!156997))))

(assert (=> bs!763938 (= (= lt!1635935 lt!1635949) (= lambda!156999 lambda!156998))))

(assert (=> d!1347671 true))

(declare-fun c!755653 () Bool)

(declare-fun bm!308956 () Bool)

(declare-fun call!308962 () Bool)

(declare-fun forall!9684 (List!49880 Int) Bool)

(assert (=> bm!308956 (= call!308962 (forall!9684 (toList!3627 (+!1198 lt!1635773 lt!1635776)) (ite c!755653 lambda!156996 lambda!156997)))))

(declare-fun b!4439629 () Bool)

(declare-fun res!1837903 () Bool)

(declare-fun e!2764393 () Bool)

(assert (=> b!4439629 (=> (not res!1837903) (not e!2764393))))

(assert (=> b!4439629 (= res!1837903 (forall!9684 (toList!3627 (+!1198 lt!1635773 lt!1635776)) lambda!156999))))

(declare-fun e!2764395 () ListMap!2871)

(assert (=> b!4439630 (= e!2764395 lt!1635949)))

(declare-fun lt!1635937 () ListMap!2871)

(assert (=> b!4439630 (= lt!1635937 (+!1198 (+!1198 lt!1635773 lt!1635776) (h!55475 lt!1635774)))))

(assert (=> b!4439630 (= lt!1635949 (addToMapMapFromBucket!438 (t!356822 lt!1635774) (+!1198 (+!1198 lt!1635773 lt!1635776) (h!55475 lt!1635774))))))

(declare-fun lt!1635941 () Unit!83814)

(declare-fun call!308963 () Unit!83814)

(assert (=> b!4439630 (= lt!1635941 call!308963)))

(assert (=> b!4439630 call!308962))

(declare-fun lt!1635953 () Unit!83814)

(assert (=> b!4439630 (= lt!1635953 lt!1635941)))

(assert (=> b!4439630 (forall!9684 (toList!3627 lt!1635937) lambda!156998)))

(declare-fun lt!1635942 () Unit!83814)

(declare-fun Unit!83821 () Unit!83814)

(assert (=> b!4439630 (= lt!1635942 Unit!83821)))

(assert (=> b!4439630 (forall!9684 (t!356822 lt!1635774) lambda!156998)))

(declare-fun lt!1635940 () Unit!83814)

(declare-fun Unit!83822 () Unit!83814)

(assert (=> b!4439630 (= lt!1635940 Unit!83822)))

(declare-fun lt!1635945 () Unit!83814)

(declare-fun Unit!83823 () Unit!83814)

(assert (=> b!4439630 (= lt!1635945 Unit!83823)))

(declare-fun lt!1635947 () Unit!83814)

(declare-fun forallContained!2140 (List!49880 Int tuple2!49658) Unit!83814)

(assert (=> b!4439630 (= lt!1635947 (forallContained!2140 (toList!3627 lt!1635937) lambda!156998 (h!55475 lt!1635774)))))

(assert (=> b!4439630 (contains!12320 lt!1635937 (_1!28123 (h!55475 lt!1635774)))))

(declare-fun lt!1635939 () Unit!83814)

(declare-fun Unit!83824 () Unit!83814)

(assert (=> b!4439630 (= lt!1635939 Unit!83824)))

(assert (=> b!4439630 (contains!12320 lt!1635949 (_1!28123 (h!55475 lt!1635774)))))

(declare-fun lt!1635944 () Unit!83814)

(declare-fun Unit!83825 () Unit!83814)

(assert (=> b!4439630 (= lt!1635944 Unit!83825)))

(assert (=> b!4439630 (forall!9684 lt!1635774 lambda!156998)))

(declare-fun lt!1635952 () Unit!83814)

(declare-fun Unit!83826 () Unit!83814)

(assert (=> b!4439630 (= lt!1635952 Unit!83826)))

(assert (=> b!4439630 (forall!9684 (toList!3627 lt!1635937) lambda!156998)))

(declare-fun lt!1635943 () Unit!83814)

(declare-fun Unit!83827 () Unit!83814)

(assert (=> b!4439630 (= lt!1635943 Unit!83827)))

(declare-fun lt!1635950 () Unit!83814)

(declare-fun Unit!83828 () Unit!83814)

(assert (=> b!4439630 (= lt!1635950 Unit!83828)))

(declare-fun lt!1635946 () Unit!83814)

(declare-fun addForallContainsKeyThenBeforeAdding!204 (ListMap!2871 ListMap!2871 K!11123 V!11369) Unit!83814)

(assert (=> b!4439630 (= lt!1635946 (addForallContainsKeyThenBeforeAdding!204 (+!1198 lt!1635773 lt!1635776) lt!1635949 (_1!28123 (h!55475 lt!1635774)) (_2!28123 (h!55475 lt!1635774))))))

(assert (=> b!4439630 (forall!9684 (toList!3627 (+!1198 lt!1635773 lt!1635776)) lambda!156998)))

(declare-fun lt!1635936 () Unit!83814)

(assert (=> b!4439630 (= lt!1635936 lt!1635946)))

(declare-fun call!308961 () Bool)

(assert (=> b!4439630 call!308961))

(declare-fun lt!1635938 () Unit!83814)

(declare-fun Unit!83829 () Unit!83814)

(assert (=> b!4439630 (= lt!1635938 Unit!83829)))

(declare-fun res!1837902 () Bool)

(assert (=> b!4439630 (= res!1837902 (forall!9684 lt!1635774 lambda!156998))))

(declare-fun e!2764394 () Bool)

(assert (=> b!4439630 (=> (not res!1837902) (not e!2764394))))

(assert (=> b!4439630 e!2764394))

(declare-fun lt!1635934 () Unit!83814)

(declare-fun Unit!83830 () Unit!83814)

(assert (=> b!4439630 (= lt!1635934 Unit!83830)))

(declare-fun b!4439631 () Bool)

(assert (=> b!4439631 (= e!2764394 (forall!9684 (toList!3627 (+!1198 lt!1635773 lt!1635776)) lambda!156998))))

(assert (=> b!4439632 (= e!2764395 (+!1198 lt!1635773 lt!1635776))))

(declare-fun lt!1635948 () Unit!83814)

(assert (=> b!4439632 (= lt!1635948 call!308963)))

(assert (=> b!4439632 call!308962))

(declare-fun lt!1635951 () Unit!83814)

(assert (=> b!4439632 (= lt!1635951 lt!1635948)))

(assert (=> b!4439632 call!308961))

(declare-fun lt!1635933 () Unit!83814)

(declare-fun Unit!83831 () Unit!83814)

(assert (=> b!4439632 (= lt!1635933 Unit!83831)))

(declare-fun bm!308958 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!204 (ListMap!2871) Unit!83814)

(assert (=> bm!308958 (= call!308963 (lemmaContainsAllItsOwnKeys!204 (+!1198 lt!1635773 lt!1635776)))))

(declare-fun b!4439633 () Bool)

(assert (=> b!4439633 (= e!2764393 (invariantList!837 (toList!3627 lt!1635935)))))

(assert (=> d!1347671 e!2764393))

(declare-fun res!1837904 () Bool)

(assert (=> d!1347671 (=> (not res!1837904) (not e!2764393))))

(assert (=> d!1347671 (= res!1837904 (forall!9684 lt!1635774 lambda!156999))))

(assert (=> d!1347671 (= lt!1635935 e!2764395)))

(assert (=> d!1347671 (= c!755653 (is-Nil!49756 lt!1635774))))

(assert (=> d!1347671 (noDuplicateKeys!820 lt!1635774)))

(assert (=> d!1347671 (= (addToMapMapFromBucket!438 lt!1635774 (+!1198 lt!1635773 lt!1635776)) lt!1635935)))

(declare-fun bm!308957 () Bool)

(assert (=> bm!308957 (= call!308961 (forall!9684 (toList!3627 (+!1198 lt!1635773 lt!1635776)) (ite c!755653 lambda!156996 lambda!156998)))))

(assert (= (and d!1347671 c!755653) b!4439632))

(assert (= (and d!1347671 (not c!755653)) b!4439630))

(assert (= (and b!4439630 res!1837902) b!4439631))

(assert (= (or b!4439632 b!4439630) bm!308958))

(assert (= (or b!4439632 b!4439630) bm!308956))

(assert (= (or b!4439632 b!4439630) bm!308957))

(assert (= (and d!1347671 res!1837904) b!4439629))

(assert (= (and b!4439629 res!1837903) b!4439633))

(assert (=> bm!308958 m!5127985))

(declare-fun m!5128159 () Bool)

(assert (=> bm!308958 m!5128159))

(declare-fun m!5128161 () Bool)

(assert (=> bm!308957 m!5128161))

(declare-fun m!5128163 () Bool)

(assert (=> b!4439631 m!5128163))

(declare-fun m!5128165 () Bool)

(assert (=> b!4439633 m!5128165))

(declare-fun m!5128167 () Bool)

(assert (=> b!4439630 m!5128167))

(declare-fun m!5128169 () Bool)

(assert (=> b!4439630 m!5128169))

(declare-fun m!5128171 () Bool)

(assert (=> b!4439630 m!5128171))

(assert (=> b!4439630 m!5128171))

(declare-fun m!5128173 () Bool)

(assert (=> b!4439630 m!5128173))

(assert (=> b!4439630 m!5127985))

(declare-fun m!5128175 () Bool)

(assert (=> b!4439630 m!5128175))

(assert (=> b!4439630 m!5128163))

(assert (=> b!4439630 m!5127985))

(declare-fun m!5128177 () Bool)

(assert (=> b!4439630 m!5128177))

(declare-fun m!5128179 () Bool)

(assert (=> b!4439630 m!5128179))

(assert (=> b!4439630 m!5128179))

(declare-fun m!5128181 () Bool)

(assert (=> b!4439630 m!5128181))

(assert (=> b!4439630 m!5128177))

(declare-fun m!5128183 () Bool)

(assert (=> b!4439630 m!5128183))

(declare-fun m!5128185 () Bool)

(assert (=> bm!308956 m!5128185))

(declare-fun m!5128187 () Bool)

(assert (=> b!4439629 m!5128187))

(declare-fun m!5128189 () Bool)

(assert (=> d!1347671 m!5128189))

(assert (=> d!1347671 m!5127979))

(assert (=> b!4439432 d!1347671))

(declare-fun d!1347687 () Bool)

(declare-fun e!2764404 () Bool)

(assert (=> d!1347687 e!2764404))

(declare-fun res!1837912 () Bool)

(assert (=> d!1347687 (=> (not res!1837912) (not e!2764404))))

(declare-fun lt!1635974 () ListMap!2871)

(assert (=> d!1347687 (= res!1837912 (contains!12320 lt!1635974 (_1!28123 lt!1635776)))))

(declare-fun lt!1635975 () List!49880)

(assert (=> d!1347687 (= lt!1635974 (ListMap!2872 lt!1635975))))

(declare-fun lt!1635977 () Unit!83814)

(declare-fun lt!1635976 () Unit!83814)

(assert (=> d!1347687 (= lt!1635977 lt!1635976)))

(assert (=> d!1347687 (= (getValueByKey!776 lt!1635975 (_1!28123 lt!1635776)) (Some!10789 (_2!28123 lt!1635776)))))

(declare-fun lemmaContainsTupThenGetReturnValue!506 (List!49880 K!11123 V!11369) Unit!83814)

(assert (=> d!1347687 (= lt!1635976 (lemmaContainsTupThenGetReturnValue!506 lt!1635975 (_1!28123 lt!1635776) (_2!28123 lt!1635776)))))

(declare-fun insertNoDuplicatedKeys!224 (List!49880 K!11123 V!11369) List!49880)

(assert (=> d!1347687 (= lt!1635975 (insertNoDuplicatedKeys!224 (toList!3627 lt!1635773) (_1!28123 lt!1635776) (_2!28123 lt!1635776)))))

(assert (=> d!1347687 (= (+!1198 lt!1635773 lt!1635776) lt!1635974)))

(declare-fun b!4439649 () Bool)

(declare-fun res!1837913 () Bool)

(assert (=> b!4439649 (=> (not res!1837913) (not e!2764404))))

(assert (=> b!4439649 (= res!1837913 (= (getValueByKey!776 (toList!3627 lt!1635974) (_1!28123 lt!1635776)) (Some!10789 (_2!28123 lt!1635776))))))

(declare-fun b!4439650 () Bool)

(declare-fun contains!12324 (List!49880 tuple2!49658) Bool)

(assert (=> b!4439650 (= e!2764404 (contains!12324 (toList!3627 lt!1635974) lt!1635776))))

(assert (= (and d!1347687 res!1837912) b!4439649))

(assert (= (and b!4439649 res!1837913) b!4439650))

(declare-fun m!5128197 () Bool)

(assert (=> d!1347687 m!5128197))

(declare-fun m!5128199 () Bool)

(assert (=> d!1347687 m!5128199))

(declare-fun m!5128201 () Bool)

(assert (=> d!1347687 m!5128201))

(declare-fun m!5128203 () Bool)

(assert (=> d!1347687 m!5128203))

(declare-fun m!5128205 () Bool)

(assert (=> b!4439649 m!5128205))

(declare-fun m!5128207 () Bool)

(assert (=> b!4439650 m!5128207))

(assert (=> b!4439432 d!1347687))

(declare-fun d!1347691 () Bool)

(declare-fun res!1837918 () Bool)

(declare-fun e!2764409 () Bool)

(assert (=> d!1347691 (=> res!1837918 e!2764409)))

(assert (=> d!1347691 (= res!1837918 (and (is-Cons!49756 lt!1635774) (= (_1!28123 (h!55475 lt!1635774)) key!3717)))))

(assert (=> d!1347691 (= (containsKey!1224 lt!1635774 key!3717) e!2764409)))

(declare-fun b!4439655 () Bool)

(declare-fun e!2764410 () Bool)

(assert (=> b!4439655 (= e!2764409 e!2764410)))

(declare-fun res!1837919 () Bool)

(assert (=> b!4439655 (=> (not res!1837919) (not e!2764410))))

(assert (=> b!4439655 (= res!1837919 (is-Cons!49756 lt!1635774))))

(declare-fun b!4439656 () Bool)

(assert (=> b!4439656 (= e!2764410 (containsKey!1224 (t!356822 lt!1635774) key!3717))))

(assert (= (and d!1347691 (not res!1837918)) b!4439655))

(assert (= (and b!4439655 res!1837919) b!4439656))

(declare-fun m!5128209 () Bool)

(assert (=> b!4439656 m!5128209))

(assert (=> b!4439443 d!1347691))

(declare-fun d!1347693 () Bool)

(declare-fun res!1837920 () Bool)

(declare-fun e!2764411 () Bool)

(assert (=> d!1347693 (=> res!1837920 e!2764411)))

(assert (=> d!1347693 (= res!1837920 (is-Nil!49757 (toList!3628 lt!1635777)))))

(assert (=> d!1347693 (= (forall!9682 (toList!3628 lt!1635777) lambda!156949) e!2764411)))

(declare-fun b!4439657 () Bool)

(declare-fun e!2764412 () Bool)

(assert (=> b!4439657 (= e!2764411 e!2764412)))

(declare-fun res!1837921 () Bool)

(assert (=> b!4439657 (=> (not res!1837921) (not e!2764412))))

(assert (=> b!4439657 (= res!1837921 (dynLambda!20902 lambda!156949 (h!55476 (toList!3628 lt!1635777))))))

(declare-fun b!4439658 () Bool)

(assert (=> b!4439658 (= e!2764412 (forall!9682 (t!356823 (toList!3628 lt!1635777)) lambda!156949))))

(assert (= (and d!1347693 (not res!1837920)) b!4439657))

(assert (= (and b!4439657 res!1837921) b!4439658))

(declare-fun b_lambda!144929 () Bool)

(assert (=> (not b_lambda!144929) (not b!4439657)))

(declare-fun m!5128211 () Bool)

(assert (=> b!4439657 m!5128211))

(declare-fun m!5128213 () Bool)

(assert (=> b!4439658 m!5128213))

(assert (=> b!4439444 d!1347693))

(declare-fun d!1347695 () Bool)

(declare-fun e!2764415 () Bool)

(assert (=> d!1347695 e!2764415))

(declare-fun res!1837927 () Bool)

(assert (=> d!1347695 (=> (not res!1837927) (not e!2764415))))

(declare-fun lt!1635988 () ListLongMap!2277)

(assert (=> d!1347695 (= res!1837927 (contains!12319 lt!1635988 (_1!28124 lt!1635771)))))

(declare-fun lt!1635986 () List!49881)

(assert (=> d!1347695 (= lt!1635988 (ListLongMap!2278 lt!1635986))))

(declare-fun lt!1635987 () Unit!83814)

(declare-fun lt!1635989 () Unit!83814)

(assert (=> d!1347695 (= lt!1635987 lt!1635989)))

(assert (=> d!1347695 (= (getValueByKey!775 lt!1635986 (_1!28124 lt!1635771)) (Some!10788 (_2!28124 lt!1635771)))))

(declare-fun lemmaContainsTupThenGetReturnValue!507 (List!49881 (_ BitVec 64) List!49880) Unit!83814)

(assert (=> d!1347695 (= lt!1635989 (lemmaContainsTupThenGetReturnValue!507 lt!1635986 (_1!28124 lt!1635771) (_2!28124 lt!1635771)))))

(declare-fun insertStrictlySorted!291 (List!49881 (_ BitVec 64) List!49880) List!49881)

(assert (=> d!1347695 (= lt!1635986 (insertStrictlySorted!291 (toList!3628 lm!1616) (_1!28124 lt!1635771) (_2!28124 lt!1635771)))))

(assert (=> d!1347695 (= (+!1199 lm!1616 lt!1635771) lt!1635988)))

(declare-fun b!4439663 () Bool)

(declare-fun res!1837926 () Bool)

(assert (=> b!4439663 (=> (not res!1837926) (not e!2764415))))

(assert (=> b!4439663 (= res!1837926 (= (getValueByKey!775 (toList!3628 lt!1635988) (_1!28124 lt!1635771)) (Some!10788 (_2!28124 lt!1635771))))))

(declare-fun b!4439664 () Bool)

(declare-fun contains!12325 (List!49881 tuple2!49660) Bool)

(assert (=> b!4439664 (= e!2764415 (contains!12325 (toList!3628 lt!1635988) lt!1635771))))

(assert (= (and d!1347695 res!1837927) b!4439663))

(assert (= (and b!4439663 res!1837926) b!4439664))

(declare-fun m!5128215 () Bool)

(assert (=> d!1347695 m!5128215))

(declare-fun m!5128217 () Bool)

(assert (=> d!1347695 m!5128217))

(declare-fun m!5128219 () Bool)

(assert (=> d!1347695 m!5128219))

(declare-fun m!5128221 () Bool)

(assert (=> d!1347695 m!5128221))

(declare-fun m!5128223 () Bool)

(assert (=> b!4439663 m!5128223))

(declare-fun m!5128225 () Bool)

(assert (=> b!4439664 m!5128225))

(assert (=> b!4439444 d!1347695))

(declare-fun d!1347697 () Bool)

(assert (=> d!1347697 (forall!9682 (toList!3628 (+!1199 lm!1616 (tuple2!49661 hash!366 newBucket!194))) lambda!156949)))

(declare-fun lt!1635992 () Unit!83814)

(declare-fun choose!28194 (ListLongMap!2277 Int (_ BitVec 64) List!49880) Unit!83814)

(assert (=> d!1347697 (= lt!1635992 (choose!28194 lm!1616 lambda!156949 hash!366 newBucket!194))))

(declare-fun e!2764418 () Bool)

(assert (=> d!1347697 e!2764418))

(declare-fun res!1837930 () Bool)

(assert (=> d!1347697 (=> (not res!1837930) (not e!2764418))))

(assert (=> d!1347697 (= res!1837930 (forall!9682 (toList!3628 lm!1616) lambda!156949))))

(assert (=> d!1347697 (= (addValidProp!458 lm!1616 lambda!156949 hash!366 newBucket!194) lt!1635992)))

(declare-fun b!4439668 () Bool)

(assert (=> b!4439668 (= e!2764418 (dynLambda!20902 lambda!156949 (tuple2!49661 hash!366 newBucket!194)))))

(assert (= (and d!1347697 res!1837930) b!4439668))

(declare-fun b_lambda!144931 () Bool)

(assert (=> (not b_lambda!144931) (not b!4439668)))

(declare-fun m!5128227 () Bool)

(assert (=> d!1347697 m!5128227))

(declare-fun m!5128229 () Bool)

(assert (=> d!1347697 m!5128229))

(declare-fun m!5128231 () Bool)

(assert (=> d!1347697 m!5128231))

(assert (=> d!1347697 m!5127977))

(declare-fun m!5128233 () Bool)

(assert (=> b!4439668 m!5128233))

(assert (=> b!4439444 d!1347697))

(declare-fun d!1347699 () Bool)

(declare-fun res!1837935 () Bool)

(declare-fun e!2764423 () Bool)

(assert (=> d!1347699 (=> res!1837935 e!2764423)))

(assert (=> d!1347699 (= res!1837935 (not (is-Cons!49756 newBucket!194)))))

(assert (=> d!1347699 (= (noDuplicateKeys!820 newBucket!194) e!2764423)))

(declare-fun b!4439673 () Bool)

(declare-fun e!2764424 () Bool)

(assert (=> b!4439673 (= e!2764423 e!2764424)))

(declare-fun res!1837936 () Bool)

(assert (=> b!4439673 (=> (not res!1837936) (not e!2764424))))

(assert (=> b!4439673 (= res!1837936 (not (containsKey!1224 (t!356822 newBucket!194) (_1!28123 (h!55475 newBucket!194)))))))

(declare-fun b!4439674 () Bool)

(assert (=> b!4439674 (= e!2764424 (noDuplicateKeys!820 (t!356822 newBucket!194)))))

(assert (= (and d!1347699 (not res!1837935)) b!4439673))

(assert (= (and b!4439673 res!1837936) b!4439674))

(declare-fun m!5128235 () Bool)

(assert (=> b!4439673 m!5128235))

(declare-fun m!5128237 () Bool)

(assert (=> b!4439674 m!5128237))

(assert (=> b!4439434 d!1347699))

(declare-fun d!1347701 () Bool)

(assert (=> d!1347701 (= (head!9283 (toList!3628 lt!1635777)) (h!55476 (toList!3628 lt!1635777)))))

(assert (=> b!4439445 d!1347701))

(declare-fun bs!763939 () Bool)

(declare-fun b!4439678 () Bool)

(assert (= bs!763939 (and b!4439678 b!4439632)))

(declare-fun lambda!157000 () Int)

(assert (=> bs!763939 (= (= lt!1635773 (+!1198 lt!1635773 lt!1635776)) (= lambda!157000 lambda!156996))))

(declare-fun bs!763940 () Bool)

(assert (= bs!763940 (and b!4439678 b!4439630)))

(assert (=> bs!763940 (= (= lt!1635773 (+!1198 lt!1635773 lt!1635776)) (= lambda!157000 lambda!156997))))

(assert (=> bs!763940 (= (= lt!1635773 lt!1635949) (= lambda!157000 lambda!156998))))

(declare-fun bs!763941 () Bool)

(assert (= bs!763941 (and b!4439678 d!1347671)))

(assert (=> bs!763941 (= (= lt!1635773 lt!1635935) (= lambda!157000 lambda!156999))))

(assert (=> b!4439678 true))

(declare-fun bs!763942 () Bool)

(declare-fun b!4439676 () Bool)

(assert (= bs!763942 (and b!4439676 b!4439630)))

(declare-fun lambda!157001 () Int)

(assert (=> bs!763942 (= (= lt!1635773 lt!1635949) (= lambda!157001 lambda!156998))))

(declare-fun bs!763943 () Bool)

(assert (= bs!763943 (and b!4439676 b!4439632)))

(assert (=> bs!763943 (= (= lt!1635773 (+!1198 lt!1635773 lt!1635776)) (= lambda!157001 lambda!156996))))

(declare-fun bs!763944 () Bool)

(assert (= bs!763944 (and b!4439676 d!1347671)))

(assert (=> bs!763944 (= (= lt!1635773 lt!1635935) (= lambda!157001 lambda!156999))))

(assert (=> bs!763942 (= (= lt!1635773 (+!1198 lt!1635773 lt!1635776)) (= lambda!157001 lambda!156997))))

(declare-fun bs!763945 () Bool)

(assert (= bs!763945 (and b!4439676 b!4439678)))

(assert (=> bs!763945 (= lambda!157001 lambda!157000)))

(assert (=> b!4439676 true))

(declare-fun lt!1636009 () ListMap!2871)

(declare-fun lambda!157002 () Int)

(assert (=> bs!763942 (= (= lt!1636009 lt!1635949) (= lambda!157002 lambda!156998))))

(assert (=> bs!763943 (= (= lt!1636009 (+!1198 lt!1635773 lt!1635776)) (= lambda!157002 lambda!156996))))

(assert (=> bs!763944 (= (= lt!1636009 lt!1635935) (= lambda!157002 lambda!156999))))

(assert (=> bs!763942 (= (= lt!1636009 (+!1198 lt!1635773 lt!1635776)) (= lambda!157002 lambda!156997))))

(assert (=> b!4439676 (= (= lt!1636009 lt!1635773) (= lambda!157002 lambda!157001))))

(assert (=> bs!763945 (= (= lt!1636009 lt!1635773) (= lambda!157002 lambda!157000))))

(assert (=> b!4439676 true))

(declare-fun bs!763946 () Bool)

(declare-fun d!1347703 () Bool)

(assert (= bs!763946 (and d!1347703 b!4439630)))

(declare-fun lt!1635995 () ListMap!2871)

(declare-fun lambda!157003 () Int)

(assert (=> bs!763946 (= (= lt!1635995 lt!1635949) (= lambda!157003 lambda!156998))))

(declare-fun bs!763947 () Bool)

(assert (= bs!763947 (and d!1347703 b!4439676)))

(assert (=> bs!763947 (= (= lt!1635995 lt!1636009) (= lambda!157003 lambda!157002))))

(declare-fun bs!763948 () Bool)

(assert (= bs!763948 (and d!1347703 b!4439632)))

(assert (=> bs!763948 (= (= lt!1635995 (+!1198 lt!1635773 lt!1635776)) (= lambda!157003 lambda!156996))))

(declare-fun bs!763949 () Bool)

(assert (= bs!763949 (and d!1347703 d!1347671)))

(assert (=> bs!763949 (= (= lt!1635995 lt!1635935) (= lambda!157003 lambda!156999))))

(assert (=> bs!763946 (= (= lt!1635995 (+!1198 lt!1635773 lt!1635776)) (= lambda!157003 lambda!156997))))

(assert (=> bs!763947 (= (= lt!1635995 lt!1635773) (= lambda!157003 lambda!157001))))

(declare-fun bs!763950 () Bool)

(assert (= bs!763950 (and d!1347703 b!4439678)))

(assert (=> bs!763950 (= (= lt!1635995 lt!1635773) (= lambda!157003 lambda!157000))))

(assert (=> d!1347703 true))

(declare-fun c!755657 () Bool)

(declare-fun call!308965 () Bool)

(declare-fun bm!308959 () Bool)

(assert (=> bm!308959 (= call!308965 (forall!9684 (toList!3627 lt!1635773) (ite c!755657 lambda!157000 lambda!157001)))))

(declare-fun b!4439675 () Bool)

(declare-fun res!1837938 () Bool)

(declare-fun e!2764425 () Bool)

(assert (=> b!4439675 (=> (not res!1837938) (not e!2764425))))

(assert (=> b!4439675 (= res!1837938 (forall!9684 (toList!3627 lt!1635773) lambda!157003))))

(declare-fun e!2764427 () ListMap!2871)

(assert (=> b!4439676 (= e!2764427 lt!1636009)))

(declare-fun lt!1635997 () ListMap!2871)

(assert (=> b!4439676 (= lt!1635997 (+!1198 lt!1635773 (h!55475 newBucket!194)))))

(assert (=> b!4439676 (= lt!1636009 (addToMapMapFromBucket!438 (t!356822 newBucket!194) (+!1198 lt!1635773 (h!55475 newBucket!194))))))

(declare-fun lt!1636001 () Unit!83814)

(declare-fun call!308966 () Unit!83814)

(assert (=> b!4439676 (= lt!1636001 call!308966)))

(assert (=> b!4439676 call!308965))

(declare-fun lt!1636013 () Unit!83814)

(assert (=> b!4439676 (= lt!1636013 lt!1636001)))

(assert (=> b!4439676 (forall!9684 (toList!3627 lt!1635997) lambda!157002)))

(declare-fun lt!1636002 () Unit!83814)

(declare-fun Unit!83832 () Unit!83814)

(assert (=> b!4439676 (= lt!1636002 Unit!83832)))

(assert (=> b!4439676 (forall!9684 (t!356822 newBucket!194) lambda!157002)))

(declare-fun lt!1636000 () Unit!83814)

(declare-fun Unit!83833 () Unit!83814)

(assert (=> b!4439676 (= lt!1636000 Unit!83833)))

(declare-fun lt!1636005 () Unit!83814)

(declare-fun Unit!83834 () Unit!83814)

(assert (=> b!4439676 (= lt!1636005 Unit!83834)))

(declare-fun lt!1636007 () Unit!83814)

(assert (=> b!4439676 (= lt!1636007 (forallContained!2140 (toList!3627 lt!1635997) lambda!157002 (h!55475 newBucket!194)))))

(assert (=> b!4439676 (contains!12320 lt!1635997 (_1!28123 (h!55475 newBucket!194)))))

(declare-fun lt!1635999 () Unit!83814)

(declare-fun Unit!83835 () Unit!83814)

(assert (=> b!4439676 (= lt!1635999 Unit!83835)))

(assert (=> b!4439676 (contains!12320 lt!1636009 (_1!28123 (h!55475 newBucket!194)))))

(declare-fun lt!1636004 () Unit!83814)

(declare-fun Unit!83836 () Unit!83814)

(assert (=> b!4439676 (= lt!1636004 Unit!83836)))

(assert (=> b!4439676 (forall!9684 newBucket!194 lambda!157002)))

(declare-fun lt!1636012 () Unit!83814)

(declare-fun Unit!83837 () Unit!83814)

(assert (=> b!4439676 (= lt!1636012 Unit!83837)))

(assert (=> b!4439676 (forall!9684 (toList!3627 lt!1635997) lambda!157002)))

(declare-fun lt!1636003 () Unit!83814)

(declare-fun Unit!83838 () Unit!83814)

(assert (=> b!4439676 (= lt!1636003 Unit!83838)))

(declare-fun lt!1636010 () Unit!83814)

(declare-fun Unit!83839 () Unit!83814)

(assert (=> b!4439676 (= lt!1636010 Unit!83839)))

(declare-fun lt!1636006 () Unit!83814)

(assert (=> b!4439676 (= lt!1636006 (addForallContainsKeyThenBeforeAdding!204 lt!1635773 lt!1636009 (_1!28123 (h!55475 newBucket!194)) (_2!28123 (h!55475 newBucket!194))))))

(assert (=> b!4439676 (forall!9684 (toList!3627 lt!1635773) lambda!157002)))

(declare-fun lt!1635996 () Unit!83814)

(assert (=> b!4439676 (= lt!1635996 lt!1636006)))

(declare-fun call!308964 () Bool)

(assert (=> b!4439676 call!308964))

(declare-fun lt!1635998 () Unit!83814)

(declare-fun Unit!83840 () Unit!83814)

(assert (=> b!4439676 (= lt!1635998 Unit!83840)))

(declare-fun res!1837937 () Bool)

(assert (=> b!4439676 (= res!1837937 (forall!9684 newBucket!194 lambda!157002))))

(declare-fun e!2764426 () Bool)

(assert (=> b!4439676 (=> (not res!1837937) (not e!2764426))))

(assert (=> b!4439676 e!2764426))

(declare-fun lt!1635994 () Unit!83814)

(declare-fun Unit!83841 () Unit!83814)

(assert (=> b!4439676 (= lt!1635994 Unit!83841)))

(declare-fun b!4439677 () Bool)

(assert (=> b!4439677 (= e!2764426 (forall!9684 (toList!3627 lt!1635773) lambda!157002))))

(assert (=> b!4439678 (= e!2764427 lt!1635773)))

(declare-fun lt!1636008 () Unit!83814)

(assert (=> b!4439678 (= lt!1636008 call!308966)))

(assert (=> b!4439678 call!308965))

(declare-fun lt!1636011 () Unit!83814)

(assert (=> b!4439678 (= lt!1636011 lt!1636008)))

(assert (=> b!4439678 call!308964))

(declare-fun lt!1635993 () Unit!83814)

(declare-fun Unit!83842 () Unit!83814)

(assert (=> b!4439678 (= lt!1635993 Unit!83842)))

(declare-fun bm!308961 () Bool)

(assert (=> bm!308961 (= call!308966 (lemmaContainsAllItsOwnKeys!204 lt!1635773))))

(declare-fun b!4439679 () Bool)

(assert (=> b!4439679 (= e!2764425 (invariantList!837 (toList!3627 lt!1635995)))))

(assert (=> d!1347703 e!2764425))

(declare-fun res!1837939 () Bool)

(assert (=> d!1347703 (=> (not res!1837939) (not e!2764425))))

(assert (=> d!1347703 (= res!1837939 (forall!9684 newBucket!194 lambda!157003))))

(assert (=> d!1347703 (= lt!1635995 e!2764427)))

(assert (=> d!1347703 (= c!755657 (is-Nil!49756 newBucket!194))))

(assert (=> d!1347703 (noDuplicateKeys!820 newBucket!194)))

(assert (=> d!1347703 (= (addToMapMapFromBucket!438 newBucket!194 lt!1635773) lt!1635995)))

(declare-fun bm!308960 () Bool)

(assert (=> bm!308960 (= call!308964 (forall!9684 (toList!3627 lt!1635773) (ite c!755657 lambda!157000 lambda!157002)))))

(assert (= (and d!1347703 c!755657) b!4439678))

(assert (= (and d!1347703 (not c!755657)) b!4439676))

(assert (= (and b!4439676 res!1837937) b!4439677))

(assert (= (or b!4439678 b!4439676) bm!308961))

(assert (= (or b!4439678 b!4439676) bm!308959))

(assert (= (or b!4439678 b!4439676) bm!308960))

(assert (= (and d!1347703 res!1837939) b!4439675))

(assert (= (and b!4439675 res!1837938) b!4439679))

(declare-fun m!5128239 () Bool)

(assert (=> bm!308961 m!5128239))

(declare-fun m!5128241 () Bool)

(assert (=> bm!308960 m!5128241))

(declare-fun m!5128243 () Bool)

(assert (=> b!4439677 m!5128243))

(declare-fun m!5128245 () Bool)

(assert (=> b!4439679 m!5128245))

(declare-fun m!5128247 () Bool)

(assert (=> b!4439676 m!5128247))

(declare-fun m!5128249 () Bool)

(assert (=> b!4439676 m!5128249))

(declare-fun m!5128251 () Bool)

(assert (=> b!4439676 m!5128251))

(assert (=> b!4439676 m!5128251))

(declare-fun m!5128253 () Bool)

(assert (=> b!4439676 m!5128253))

(declare-fun m!5128255 () Bool)

(assert (=> b!4439676 m!5128255))

(assert (=> b!4439676 m!5128243))

(declare-fun m!5128257 () Bool)

(assert (=> b!4439676 m!5128257))

(declare-fun m!5128259 () Bool)

(assert (=> b!4439676 m!5128259))

(assert (=> b!4439676 m!5128259))

(declare-fun m!5128261 () Bool)

(assert (=> b!4439676 m!5128261))

(assert (=> b!4439676 m!5128257))

(declare-fun m!5128263 () Bool)

(assert (=> b!4439676 m!5128263))

(declare-fun m!5128265 () Bool)

(assert (=> bm!308959 m!5128265))

(declare-fun m!5128267 () Bool)

(assert (=> b!4439675 m!5128267))

(declare-fun m!5128269 () Bool)

(assert (=> d!1347703 m!5128269))

(assert (=> d!1347703 m!5127989))

(assert (=> b!4439435 d!1347703))

(declare-fun bs!763951 () Bool)

(declare-fun d!1347705 () Bool)

(assert (= bs!763951 (and d!1347705 start!434258)))

(declare-fun lambda!157004 () Int)

(assert (=> bs!763951 (= lambda!157004 lambda!156949)))

(declare-fun bs!763952 () Bool)

(assert (= bs!763952 (and d!1347705 d!1347653)))

(assert (=> bs!763952 (not (= lambda!157004 lambda!156961))))

(declare-fun bs!763953 () Bool)

(assert (= bs!763953 (and d!1347705 d!1347669)))

(assert (=> bs!763953 (= lambda!157004 lambda!156964)))

(declare-fun lt!1636014 () ListMap!2871)

(assert (=> d!1347705 (invariantList!837 (toList!3627 lt!1636014))))

(declare-fun e!2764428 () ListMap!2871)

(assert (=> d!1347705 (= lt!1636014 e!2764428)))

(declare-fun c!755658 () Bool)

(assert (=> d!1347705 (= c!755658 (is-Cons!49757 (toList!3628 lt!1635777)))))

(assert (=> d!1347705 (forall!9682 (toList!3628 lt!1635777) lambda!157004)))

(assert (=> d!1347705 (= (extractMap!881 (toList!3628 lt!1635777)) lt!1636014)))

(declare-fun b!4439680 () Bool)

(assert (=> b!4439680 (= e!2764428 (addToMapMapFromBucket!438 (_2!28124 (h!55476 (toList!3628 lt!1635777))) (extractMap!881 (t!356823 (toList!3628 lt!1635777)))))))

(declare-fun b!4439681 () Bool)

(assert (=> b!4439681 (= e!2764428 (ListMap!2872 Nil!49756))))

(assert (= (and d!1347705 c!755658) b!4439680))

(assert (= (and d!1347705 (not c!755658)) b!4439681))

(declare-fun m!5128271 () Bool)

(assert (=> d!1347705 m!5128271))

(declare-fun m!5128273 () Bool)

(assert (=> d!1347705 m!5128273))

(declare-fun m!5128275 () Bool)

(assert (=> b!4439680 m!5128275))

(assert (=> b!4439680 m!5128275))

(declare-fun m!5128277 () Bool)

(assert (=> b!4439680 m!5128277))

(assert (=> b!4439435 d!1347705))

(declare-fun bs!763954 () Bool)

(declare-fun d!1347707 () Bool)

(assert (= bs!763954 (and d!1347707 start!434258)))

(declare-fun lambda!157005 () Int)

(assert (=> bs!763954 (= lambda!157005 lambda!156949)))

(declare-fun bs!763955 () Bool)

(assert (= bs!763955 (and d!1347707 d!1347653)))

(assert (=> bs!763955 (not (= lambda!157005 lambda!156961))))

(declare-fun bs!763956 () Bool)

(assert (= bs!763956 (and d!1347707 d!1347669)))

(assert (=> bs!763956 (= lambda!157005 lambda!156964)))

(declare-fun bs!763957 () Bool)

(assert (= bs!763957 (and d!1347707 d!1347705)))

(assert (=> bs!763957 (= lambda!157005 lambda!157004)))

(declare-fun lt!1636015 () ListMap!2871)

(assert (=> d!1347707 (invariantList!837 (toList!3627 lt!1636015))))

(declare-fun e!2764429 () ListMap!2871)

(assert (=> d!1347707 (= lt!1636015 e!2764429)))

(declare-fun c!755659 () Bool)

(assert (=> d!1347707 (= c!755659 (is-Cons!49757 (t!356823 (toList!3628 lm!1616))))))

(assert (=> d!1347707 (forall!9682 (t!356823 (toList!3628 lm!1616)) lambda!157005)))

(assert (=> d!1347707 (= (extractMap!881 (t!356823 (toList!3628 lm!1616))) lt!1636015)))

(declare-fun b!4439682 () Bool)

(assert (=> b!4439682 (= e!2764429 (addToMapMapFromBucket!438 (_2!28124 (h!55476 (t!356823 (toList!3628 lm!1616)))) (extractMap!881 (t!356823 (t!356823 (toList!3628 lm!1616))))))))

(declare-fun b!4439683 () Bool)

(assert (=> b!4439683 (= e!2764429 (ListMap!2872 Nil!49756))))

(assert (= (and d!1347707 c!755659) b!4439682))

(assert (= (and d!1347707 (not c!755659)) b!4439683))

(declare-fun m!5128279 () Bool)

(assert (=> d!1347707 m!5128279))

(declare-fun m!5128281 () Bool)

(assert (=> d!1347707 m!5128281))

(declare-fun m!5128283 () Bool)

(assert (=> b!4439682 m!5128283))

(assert (=> b!4439682 m!5128283))

(declare-fun m!5128285 () Bool)

(assert (=> b!4439682 m!5128285))

(assert (=> b!4439435 d!1347707))

(assert (=> b!4439446 d!1347651))

(declare-fun d!1347709 () Bool)

(declare-fun res!1837940 () Bool)

(declare-fun e!2764430 () Bool)

(assert (=> d!1347709 (=> res!1837940 e!2764430)))

(assert (=> d!1347709 (= res!1837940 (not (is-Cons!49756 lt!1635774)))))

(assert (=> d!1347709 (= (noDuplicateKeys!820 lt!1635774) e!2764430)))

(declare-fun b!4439684 () Bool)

(declare-fun e!2764431 () Bool)

(assert (=> b!4439684 (= e!2764430 e!2764431)))

(declare-fun res!1837941 () Bool)

(assert (=> b!4439684 (=> (not res!1837941) (not e!2764431))))

(assert (=> b!4439684 (= res!1837941 (not (containsKey!1224 (t!356822 lt!1635774) (_1!28123 (h!55475 lt!1635774)))))))

(declare-fun b!4439685 () Bool)

(assert (=> b!4439685 (= e!2764431 (noDuplicateKeys!820 (t!356822 lt!1635774)))))

(assert (= (and d!1347709 (not res!1837940)) b!4439684))

(assert (= (and b!4439684 res!1837941) b!4439685))

(declare-fun m!5128287 () Bool)

(assert (=> b!4439684 m!5128287))

(declare-fun m!5128289 () Bool)

(assert (=> b!4439685 m!5128289))

(assert (=> b!4439436 d!1347709))

(declare-fun bs!763958 () Bool)

(declare-fun d!1347711 () Bool)

(assert (= bs!763958 (and d!1347711 d!1347703)))

(declare-fun lambda!157008 () Int)

(assert (=> bs!763958 (not (= lambda!157008 lambda!157003))))

(declare-fun bs!763959 () Bool)

(assert (= bs!763959 (and d!1347711 b!4439630)))

(assert (=> bs!763959 (not (= lambda!157008 lambda!156998))))

(declare-fun bs!763960 () Bool)

(assert (= bs!763960 (and d!1347711 b!4439676)))

(assert (=> bs!763960 (not (= lambda!157008 lambda!157002))))

(declare-fun bs!763961 () Bool)

(assert (= bs!763961 (and d!1347711 b!4439632)))

(assert (=> bs!763961 (not (= lambda!157008 lambda!156996))))

(declare-fun bs!763962 () Bool)

(assert (= bs!763962 (and d!1347711 d!1347671)))

(assert (=> bs!763962 (not (= lambda!157008 lambda!156999))))

(assert (=> bs!763959 (not (= lambda!157008 lambda!156997))))

(assert (=> bs!763960 (not (= lambda!157008 lambda!157001))))

(declare-fun bs!763963 () Bool)

(assert (= bs!763963 (and d!1347711 b!4439678)))

(assert (=> bs!763963 (not (= lambda!157008 lambda!157000))))

(assert (=> d!1347711 true))

(assert (=> d!1347711 true))

(assert (=> d!1347711 (= (allKeysSameHash!780 newBucket!194 hash!366 hashF!1220) (forall!9684 newBucket!194 lambda!157008))))

(declare-fun bs!763964 () Bool)

(assert (= bs!763964 d!1347711))

(declare-fun m!5128291 () Bool)

(assert (=> bs!763964 m!5128291))

(assert (=> b!4439447 d!1347711))

(declare-fun b!4439694 () Bool)

(declare-fun e!2764434 () Bool)

(declare-fun tp!1334021 () Bool)

(declare-fun tp!1334022 () Bool)

(assert (=> b!4439694 (= e!2764434 (and tp!1334021 tp!1334022))))

(assert (=> b!4439449 (= tp!1334009 e!2764434)))

(assert (= (and b!4439449 (is-Cons!49757 (toList!3628 lm!1616))) b!4439694))

(declare-fun tp!1334025 () Bool)

(declare-fun e!2764437 () Bool)

(declare-fun b!4439699 () Bool)

(assert (=> b!4439699 (= e!2764437 (and tp_is_empty!26527 tp_is_empty!26525 tp!1334025))))

(assert (=> b!4439450 (= tp!1334010 e!2764437)))

(assert (= (and b!4439450 (is-Cons!49756 (t!356822 newBucket!194))) b!4439699))

(declare-fun b_lambda!144933 () Bool)

(assert (= b_lambda!144931 (or start!434258 b_lambda!144933)))

(declare-fun bs!763965 () Bool)

(declare-fun d!1347713 () Bool)

(assert (= bs!763965 (and d!1347713 start!434258)))

(assert (=> bs!763965 (= (dynLambda!20902 lambda!156949 (tuple2!49661 hash!366 newBucket!194)) (noDuplicateKeys!820 (_2!28124 (tuple2!49661 hash!366 newBucket!194))))))

(declare-fun m!5128293 () Bool)

(assert (=> bs!763965 m!5128293))

(assert (=> b!4439668 d!1347713))

(declare-fun b_lambda!144935 () Bool)

(assert (= b_lambda!144929 (or start!434258 b_lambda!144935)))

(declare-fun bs!763966 () Bool)

(declare-fun d!1347715 () Bool)

(assert (= bs!763966 (and d!1347715 start!434258)))

(assert (=> bs!763966 (= (dynLambda!20902 lambda!156949 (h!55476 (toList!3628 lt!1635777))) (noDuplicateKeys!820 (_2!28124 (h!55476 (toList!3628 lt!1635777)))))))

(declare-fun m!5128295 () Bool)

(assert (=> bs!763966 m!5128295))

(assert (=> b!4439657 d!1347715))

(declare-fun b_lambda!144937 () Bool)

(assert (= b_lambda!144921 (or start!434258 b_lambda!144937)))

(declare-fun bs!763967 () Bool)

(declare-fun d!1347717 () Bool)

(assert (= bs!763967 (and d!1347717 start!434258)))

(assert (=> bs!763967 (= (dynLambda!20902 lambda!156949 (h!55476 (toList!3628 lm!1616))) (noDuplicateKeys!820 (_2!28124 (h!55476 (toList!3628 lm!1616)))))))

(declare-fun m!5128297 () Bool)

(assert (=> bs!763967 m!5128297))

(assert (=> b!4439516 d!1347717))

(push 1)

(assert (not b_lambda!144933))

(assert (not bm!308958))

(assert (not b!4439699))

(assert (not b!4439673))

(assert (not d!1347647))

(assert (not bm!308946))

(assert (not b!4439633))

(assert (not b!4439694))

(assert (not b!4439675))

(assert (not b!4439554))

(assert (not b!4439663))

(assert (not b_lambda!144935))

(assert (not b!4439630))

(assert (not b_lambda!144937))

(assert (not bm!308960))

(assert (not b!4439674))

(assert (not b!4439558))

(assert (not b!4439553))

(assert (not bs!763966))

(assert (not d!1347659))

(assert (not bm!308961))

(assert (not b!4439631))

(assert (not b!4439664))

(assert (not b!4439557))

(assert (not d!1347657))

(assert (not d!1347687))

(assert (not bm!308956))

(assert (not b!4439555))

(assert (not d!1347669))

(assert (not b!4439685))

(assert (not b!4439679))

(assert (not d!1347651))

(assert (not d!1347707))

(assert (not b!4439676))

(assert (not d!1347697))

(assert (not b!4439682))

(assert (not b!4439629))

(assert (not b!4439560))

(assert (not b!4439650))

(assert (not bs!763965))

(assert (not b!4439680))

(assert (not b!4439570))

(assert tp_is_empty!26525)

(assert (not d!1347653))

(assert (not d!1347711))

(assert (not b!4439526))

(assert (not d!1347695))

(assert (not b!4439649))

(assert (not bs!763967))

(assert tp_is_empty!26527)

(assert (not bm!308959))

(assert (not b!4439528))

(assert (not b!4439677))

(assert (not b!4439517))

(assert (not d!1347703))

(assert (not b!4439556))

(assert (not b!4439684))

(assert (not b!4439658))

(assert (not d!1347705))

(assert (not bm!308957))

(assert (not d!1347671))

(assert (not d!1347655))

(assert (not b!4439656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

