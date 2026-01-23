; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495826 () Bool)

(assert start!495826)

(declare-fun res!2042815 () Bool)

(declare-fun e!2999097 () Bool)

(assert (=> start!495826 (=> (not res!2042815) (not e!2999097))))

(declare-datatypes ((K!15909 0))(
  ( (K!15910 (val!21033 Int)) )
))
(declare-datatypes ((V!16155 0))(
  ( (V!16156 (val!21034 Int)) )
))
(declare-datatypes ((tuple2!57040 0))(
  ( (tuple2!57041 (_1!31814 K!15909) (_2!31814 V!16155)) )
))
(declare-datatypes ((List!54462 0))(
  ( (Nil!54338) (Cons!54338 (h!60770 tuple2!57040) (t!361912 List!54462)) )
))
(declare-datatypes ((tuple2!57042 0))(
  ( (tuple2!57043 (_1!31815 (_ BitVec 64)) (_2!31815 List!54462)) )
))
(declare-datatypes ((List!54463 0))(
  ( (Nil!54339) (Cons!54339 (h!60771 tuple2!57042) (t!361913 List!54463)) )
))
(declare-datatypes ((ListLongMap!5437 0))(
  ( (ListLongMap!5438 (toList!7015 List!54463)) )
))
(declare-fun lm!2473 () ListLongMap!5437)

(declare-fun lambda!232719 () Int)

(declare-fun forall!12343 (List!54463 Int) Bool)

(assert (=> start!495826 (= res!2042815 (forall!12343 (toList!7015 lm!2473) lambda!232719))))

(assert (=> start!495826 e!2999097))

(declare-fun e!2999100 () Bool)

(declare-fun inv!69935 (ListLongMap!5437) Bool)

(assert (=> start!495826 (and (inv!69935 lm!2473) e!2999100)))

(assert (=> start!495826 true))

(declare-fun tp_is_empty!33733 () Bool)

(assert (=> start!495826 tp_is_empty!33733))

(declare-fun tp_is_empty!33735 () Bool)

(assert (=> start!495826 tp_is_empty!33735))

(declare-fun b!4802513 () Bool)

(declare-fun res!2042814 () Bool)

(declare-fun e!2999101 () Bool)

(assert (=> b!4802513 (=> res!2042814 e!2999101)))

(get-info :version)

(assert (=> b!4802513 (= res!2042814 (not ((_ is Cons!54339) (toList!7015 lm!2473))))))

(declare-fun b!4802514 () Bool)

(declare-fun key!5896 () K!15909)

(declare-fun lt!1957457 () (_ BitVec 64))

(declare-fun e!2999102 () Bool)

(declare-fun lt!1957451 () ListLongMap!5437)

(declare-datatypes ((Option!13196 0))(
  ( (None!13195) (Some!13195 (v!48528 tuple2!57040)) )
))
(declare-fun isDefined!10337 (Option!13196) Bool)

(declare-fun getPair!940 (List!54462 K!15909) Option!13196)

(declare-fun apply!13041 (ListLongMap!5437 (_ BitVec 64)) List!54462)

(assert (=> b!4802514 (= e!2999102 (isDefined!10337 (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896)))))

(declare-fun b!4802515 () Bool)

(declare-fun res!2042820 () Bool)

(assert (=> b!4802515 (=> (not res!2042820) (not e!2999097))))

(declare-datatypes ((ListMap!6487 0))(
  ( (ListMap!6488 (toList!7016 List!54462)) )
))
(declare-fun contains!17994 (ListMap!6487 K!15909) Bool)

(declare-fun extractMap!2495 (List!54463) ListMap!6487)

(assert (=> b!4802515 (= res!2042820 (contains!17994 (extractMap!2495 (toList!7015 lm!2473)) key!5896))))

(declare-fun b!4802516 () Bool)

(declare-datatypes ((Unit!140855 0))(
  ( (Unit!140856) )
))
(declare-fun e!2999098 () Unit!140855)

(declare-fun Unit!140857 () Unit!140855)

(assert (=> b!4802516 (= e!2999098 Unit!140857)))

(declare-fun b!4802517 () Bool)

(declare-fun lt!1957456 () Unit!140855)

(assert (=> b!4802517 (= e!2999098 lt!1957456)))

(declare-datatypes ((Hashable!6968 0))(
  ( (HashableExt!6967 (__x!32991 Int)) )
))
(declare-fun hashF!1559 () Hashable!6968)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!66 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> b!4802517 (= lt!1957456 (lemmaHashNotInLongMapThenNotInGenerated!66 lt!1957451 key!5896 hashF!1559))))

(assert (=> b!4802517 (not (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896))))

(declare-fun b!4802518 () Bool)

(declare-fun e!2999095 () Bool)

(assert (=> b!4802518 (= e!2999101 e!2999095)))

(declare-fun res!2042810 () Bool)

(assert (=> b!4802518 (=> res!2042810 e!2999095)))

(assert (=> b!4802518 (= res!2042810 (not (forall!12343 (toList!7015 lt!1957451) lambda!232719)))))

(assert (=> b!4802518 (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896)))

(declare-fun lt!1957455 () Unit!140855)

(declare-fun lemmaListContainsThenExtractedMapContains!718 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> b!4802518 (= lt!1957455 (lemmaListContainsThenExtractedMapContains!718 lt!1957451 key!5896 hashF!1559))))

(declare-fun lt!1957453 () Unit!140855)

(assert (=> b!4802518 (= lt!1957453 e!2999098)))

(declare-fun c!818593 () Bool)

(declare-fun lt!1957452 () Bool)

(assert (=> b!4802518 (= c!818593 lt!1957452)))

(declare-fun contains!17995 (ListLongMap!5437 (_ BitVec 64)) Bool)

(assert (=> b!4802518 (= lt!1957452 (not (contains!17995 lt!1957451 lt!1957457)))))

(declare-fun tail!9336 (ListLongMap!5437) ListLongMap!5437)

(assert (=> b!4802518 (= lt!1957451 (tail!9336 lm!2473))))

(declare-fun b!4802519 () Bool)

(declare-fun e!2999099 () Bool)

(assert (=> b!4802519 (= e!2999095 e!2999099)))

(declare-fun res!2042811 () Bool)

(assert (=> b!4802519 (=> res!2042811 e!2999099)))

(declare-fun value!3111 () V!16155)

(declare-fun getValue!156 (List!54463 K!15909) V!16155)

(assert (=> b!4802519 (= res!2042811 (not (= (getValue!156 (toList!7015 lt!1957451) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!610 (List!54463 K!15909) Bool)

(assert (=> b!4802519 (containsKeyBiggerList!610 (toList!7015 lt!1957451) key!5896)))

(declare-fun lt!1957450 () Unit!140855)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!350 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> b!4802519 (= lt!1957450 (lemmaInLongMapThenContainsKeyBiggerList!350 lt!1957451 key!5896 hashF!1559))))

(assert (=> b!4802519 e!2999102))

(declare-fun res!2042819 () Bool)

(assert (=> b!4802519 (=> (not res!2042819) (not e!2999102))))

(assert (=> b!4802519 (= res!2042819 (not lt!1957452))))

(declare-fun lt!1957459 () Unit!140855)

(declare-fun lemmaInGenericMapThenInLongMap!372 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> b!4802519 (= lt!1957459 (lemmaInGenericMapThenInLongMap!372 lt!1957451 key!5896 hashF!1559))))

(declare-fun b!4802520 () Bool)

(declare-fun res!2042812 () Bool)

(assert (=> b!4802520 (=> res!2042812 e!2999101)))

(declare-fun containsKey!4046 (List!54462 K!15909) Bool)

(assert (=> b!4802520 (= res!2042812 (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896))))

(declare-fun b!4802521 () Bool)

(declare-fun size!36366 (List!54463) Int)

(assert (=> b!4802521 (= e!2999099 (< (size!36366 (toList!7015 lt!1957451)) (size!36366 (toList!7015 lm!2473))))))

(declare-fun b!4802522 () Bool)

(declare-fun res!2042818 () Bool)

(assert (=> b!4802522 (=> (not res!2042818) (not e!2999097))))

(declare-fun allKeysSameHashInMap!2373 (ListLongMap!5437 Hashable!6968) Bool)

(assert (=> b!4802522 (= res!2042818 (allKeysSameHashInMap!2373 lm!2473 hashF!1559))))

(declare-fun b!4802523 () Bool)

(declare-fun e!2999096 () Bool)

(assert (=> b!4802523 (= e!2999096 (isDefined!10337 (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896)))))

(declare-fun b!4802524 () Bool)

(assert (=> b!4802524 (= e!2999097 (not e!2999101))))

(declare-fun res!2042817 () Bool)

(assert (=> b!4802524 (=> res!2042817 e!2999101)))

(assert (=> b!4802524 (= res!2042817 (not (= (getValue!156 (toList!7015 lm!2473) key!5896) value!3111)))))

(assert (=> b!4802524 (containsKeyBiggerList!610 (toList!7015 lm!2473) key!5896)))

(declare-fun lt!1957454 () Unit!140855)

(assert (=> b!4802524 (= lt!1957454 (lemmaInLongMapThenContainsKeyBiggerList!350 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4802524 e!2999096))

(declare-fun res!2042816 () Bool)

(assert (=> b!4802524 (=> (not res!2042816) (not e!2999096))))

(assert (=> b!4802524 (= res!2042816 (contains!17995 lm!2473 lt!1957457))))

(declare-fun hash!5028 (Hashable!6968 K!15909) (_ BitVec 64))

(assert (=> b!4802524 (= lt!1957457 (hash!5028 hashF!1559 key!5896))))

(declare-fun lt!1957458 () Unit!140855)

(assert (=> b!4802524 (= lt!1957458 (lemmaInGenericMapThenInLongMap!372 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4802525 () Bool)

(declare-fun tp!1358436 () Bool)

(assert (=> b!4802525 (= e!2999100 tp!1358436)))

(declare-fun b!4802526 () Bool)

(declare-fun res!2042813 () Bool)

(assert (=> b!4802526 (=> res!2042813 e!2999095)))

(assert (=> b!4802526 (= res!2042813 (not (allKeysSameHashInMap!2373 lt!1957451 hashF!1559)))))

(assert (= (and start!495826 res!2042815) b!4802522))

(assert (= (and b!4802522 res!2042818) b!4802515))

(assert (= (and b!4802515 res!2042820) b!4802524))

(assert (= (and b!4802524 res!2042816) b!4802523))

(assert (= (and b!4802524 (not res!2042817)) b!4802513))

(assert (= (and b!4802513 (not res!2042814)) b!4802520))

(assert (= (and b!4802520 (not res!2042812)) b!4802518))

(assert (= (and b!4802518 c!818593) b!4802517))

(assert (= (and b!4802518 (not c!818593)) b!4802516))

(assert (= (and b!4802518 (not res!2042810)) b!4802526))

(assert (= (and b!4802526 (not res!2042813)) b!4802519))

(assert (= (and b!4802519 res!2042819) b!4802514))

(assert (= (and b!4802519 (not res!2042811)) b!4802521))

(assert (= start!495826 b!4802525))

(declare-fun m!5787106 () Bool)

(assert (=> b!4802521 m!5787106))

(declare-fun m!5787108 () Bool)

(assert (=> b!4802521 m!5787108))

(declare-fun m!5787110 () Bool)

(assert (=> b!4802524 m!5787110))

(declare-fun m!5787112 () Bool)

(assert (=> b!4802524 m!5787112))

(declare-fun m!5787114 () Bool)

(assert (=> b!4802524 m!5787114))

(declare-fun m!5787116 () Bool)

(assert (=> b!4802524 m!5787116))

(declare-fun m!5787118 () Bool)

(assert (=> b!4802524 m!5787118))

(declare-fun m!5787120 () Bool)

(assert (=> b!4802524 m!5787120))

(declare-fun m!5787122 () Bool)

(assert (=> b!4802526 m!5787122))

(declare-fun m!5787124 () Bool)

(assert (=> b!4802523 m!5787124))

(assert (=> b!4802523 m!5787124))

(declare-fun m!5787126 () Bool)

(assert (=> b!4802523 m!5787126))

(assert (=> b!4802523 m!5787126))

(declare-fun m!5787128 () Bool)

(assert (=> b!4802523 m!5787128))

(declare-fun m!5787130 () Bool)

(assert (=> b!4802518 m!5787130))

(declare-fun m!5787132 () Bool)

(assert (=> b!4802518 m!5787132))

(declare-fun m!5787134 () Bool)

(assert (=> b!4802518 m!5787134))

(declare-fun m!5787136 () Bool)

(assert (=> b!4802518 m!5787136))

(assert (=> b!4802518 m!5787132))

(declare-fun m!5787138 () Bool)

(assert (=> b!4802518 m!5787138))

(declare-fun m!5787140 () Bool)

(assert (=> b!4802518 m!5787140))

(declare-fun m!5787142 () Bool)

(assert (=> b!4802515 m!5787142))

(assert (=> b!4802515 m!5787142))

(declare-fun m!5787144 () Bool)

(assert (=> b!4802515 m!5787144))

(declare-fun m!5787146 () Bool)

(assert (=> b!4802517 m!5787146))

(assert (=> b!4802517 m!5787132))

(assert (=> b!4802517 m!5787132))

(assert (=> b!4802517 m!5787138))

(declare-fun m!5787148 () Bool)

(assert (=> b!4802520 m!5787148))

(declare-fun m!5787150 () Bool)

(assert (=> start!495826 m!5787150))

(declare-fun m!5787152 () Bool)

(assert (=> start!495826 m!5787152))

(declare-fun m!5787154 () Bool)

(assert (=> b!4802522 m!5787154))

(declare-fun m!5787156 () Bool)

(assert (=> b!4802519 m!5787156))

(declare-fun m!5787158 () Bool)

(assert (=> b!4802519 m!5787158))

(declare-fun m!5787160 () Bool)

(assert (=> b!4802519 m!5787160))

(declare-fun m!5787162 () Bool)

(assert (=> b!4802519 m!5787162))

(declare-fun m!5787164 () Bool)

(assert (=> b!4802514 m!5787164))

(assert (=> b!4802514 m!5787164))

(declare-fun m!5787166 () Bool)

(assert (=> b!4802514 m!5787166))

(assert (=> b!4802514 m!5787166))

(declare-fun m!5787168 () Bool)

(assert (=> b!4802514 m!5787168))

(check-sat (not b!4802523) tp_is_empty!33735 (not b!4802518) (not b!4802515) (not b!4802526) (not b!4802514) (not b!4802522) (not b!4802520) (not b!4802524) (not b!4802519) (not b!4802517) (not b!4802525) (not b!4802521) (not start!495826) tp_is_empty!33733)
(check-sat)
(get-model)

(declare-fun bs!1158083 () Bool)

(declare-fun d!1538035 () Bool)

(assert (= bs!1158083 (and d!1538035 start!495826)))

(declare-fun lambda!232728 () Int)

(assert (=> bs!1158083 (not (= lambda!232728 lambda!232719))))

(assert (=> d!1538035 true))

(assert (=> d!1538035 (= (allKeysSameHashInMap!2373 lm!2473 hashF!1559) (forall!12343 (toList!7015 lm!2473) lambda!232728))))

(declare-fun bs!1158084 () Bool)

(assert (= bs!1158084 d!1538035))

(declare-fun m!5787188 () Bool)

(assert (=> bs!1158084 m!5787188))

(assert (=> b!4802522 d!1538035))

(declare-fun d!1538039 () Bool)

(declare-fun lt!1957477 () Int)

(assert (=> d!1538039 (>= lt!1957477 0)))

(declare-fun e!2999117 () Int)

(assert (=> d!1538039 (= lt!1957477 e!2999117)))

(declare-fun c!818599 () Bool)

(assert (=> d!1538039 (= c!818599 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538039 (= (size!36366 (toList!7015 lt!1957451)) lt!1957477)))

(declare-fun b!4802550 () Bool)

(assert (=> b!4802550 (= e!2999117 0)))

(declare-fun b!4802551 () Bool)

(assert (=> b!4802551 (= e!2999117 (+ 1 (size!36366 (t!361913 (toList!7015 lt!1957451)))))))

(assert (= (and d!1538039 c!818599) b!4802550))

(assert (= (and d!1538039 (not c!818599)) b!4802551))

(declare-fun m!5787190 () Bool)

(assert (=> b!4802551 m!5787190))

(assert (=> b!4802521 d!1538039))

(declare-fun d!1538041 () Bool)

(declare-fun lt!1957478 () Int)

(assert (=> d!1538041 (>= lt!1957478 0)))

(declare-fun e!2999118 () Int)

(assert (=> d!1538041 (= lt!1957478 e!2999118)))

(declare-fun c!818600 () Bool)

(assert (=> d!1538041 (= c!818600 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538041 (= (size!36366 (toList!7015 lm!2473)) lt!1957478)))

(declare-fun b!4802552 () Bool)

(assert (=> b!4802552 (= e!2999118 0)))

(declare-fun b!4802553 () Bool)

(assert (=> b!4802553 (= e!2999118 (+ 1 (size!36366 (t!361913 (toList!7015 lm!2473)))))))

(assert (= (and d!1538041 c!818600) b!4802552))

(assert (= (and d!1538041 (not c!818600)) b!4802553))

(declare-fun m!5787192 () Bool)

(assert (=> b!4802553 m!5787192))

(assert (=> b!4802521 d!1538041))

(declare-fun d!1538043 () Bool)

(declare-fun res!2042840 () Bool)

(declare-fun e!2999135 () Bool)

(assert (=> d!1538043 (=> res!2042840 e!2999135)))

(assert (=> d!1538043 (= res!2042840 (and ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473)))) (= (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))) key!5896)))))

(assert (=> d!1538043 (= (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896) e!2999135)))

(declare-fun b!4802576 () Bool)

(declare-fun e!2999136 () Bool)

(assert (=> b!4802576 (= e!2999135 e!2999136)))

(declare-fun res!2042841 () Bool)

(assert (=> b!4802576 (=> (not res!2042841) (not e!2999136))))

(assert (=> b!4802576 (= res!2042841 ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(declare-fun b!4802577 () Bool)

(assert (=> b!4802577 (= e!2999136 (containsKey!4046 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) key!5896))))

(assert (= (and d!1538043 (not res!2042840)) b!4802576))

(assert (= (and b!4802576 res!2042841) b!4802577))

(declare-fun m!5787194 () Bool)

(assert (=> b!4802577 m!5787194))

(assert (=> b!4802520 d!1538043))

(declare-fun d!1538045 () Bool)

(declare-fun res!2042849 () Bool)

(declare-fun e!2999147 () Bool)

(assert (=> d!1538045 (=> res!2042849 e!2999147)))

(assert (=> d!1538045 (= res!2042849 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538045 (= (forall!12343 (toList!7015 lm!2473) lambda!232719) e!2999147)))

(declare-fun b!4802591 () Bool)

(declare-fun e!2999148 () Bool)

(assert (=> b!4802591 (= e!2999147 e!2999148)))

(declare-fun res!2042850 () Bool)

(assert (=> b!4802591 (=> (not res!2042850) (not e!2999148))))

(declare-fun dynLambda!22097 (Int tuple2!57042) Bool)

(assert (=> b!4802591 (= res!2042850 (dynLambda!22097 lambda!232719 (h!60771 (toList!7015 lm!2473))))))

(declare-fun b!4802592 () Bool)

(assert (=> b!4802592 (= e!2999148 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232719))))

(assert (= (and d!1538045 (not res!2042849)) b!4802591))

(assert (= (and b!4802591 res!2042850) b!4802592))

(declare-fun b_lambda!187805 () Bool)

(assert (=> (not b_lambda!187805) (not b!4802591)))

(declare-fun m!5787216 () Bool)

(assert (=> b!4802591 m!5787216))

(declare-fun m!5787218 () Bool)

(assert (=> b!4802592 m!5787218))

(assert (=> start!495826 d!1538045))

(declare-fun d!1538049 () Bool)

(declare-fun isStrictlySorted!904 (List!54463) Bool)

(assert (=> d!1538049 (= (inv!69935 lm!2473) (isStrictlySorted!904 (toList!7015 lm!2473)))))

(declare-fun bs!1158085 () Bool)

(assert (= bs!1158085 d!1538049))

(declare-fun m!5787220 () Bool)

(assert (=> bs!1158085 m!5787220))

(assert (=> start!495826 d!1538049))

(declare-fun d!1538051 () Bool)

(declare-fun isEmpty!29515 (Option!13196) Bool)

(assert (=> d!1538051 (= (isDefined!10337 (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896)) (not (isEmpty!29515 (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896))))))

(declare-fun bs!1158086 () Bool)

(assert (= bs!1158086 d!1538051))

(assert (=> bs!1158086 m!5787166))

(declare-fun m!5787222 () Bool)

(assert (=> bs!1158086 m!5787222))

(assert (=> b!4802514 d!1538051))

(declare-fun b!4802643 () Bool)

(declare-fun e!2999185 () Bool)

(declare-fun e!2999187 () Bool)

(assert (=> b!4802643 (= e!2999185 e!2999187)))

(declare-fun res!2042875 () Bool)

(assert (=> b!4802643 (=> (not res!2042875) (not e!2999187))))

(declare-fun lt!1957514 () Option!13196)

(assert (=> b!4802643 (= res!2042875 (isDefined!10337 lt!1957514))))

(declare-fun b!4802644 () Bool)

(declare-fun e!2999186 () Option!13196)

(assert (=> b!4802644 (= e!2999186 (Some!13195 (h!60770 (apply!13041 lt!1957451 lt!1957457))))))

(declare-fun b!4802645 () Bool)

(declare-fun contains!17998 (List!54462 tuple2!57040) Bool)

(declare-fun get!18560 (Option!13196) tuple2!57040)

(assert (=> b!4802645 (= e!2999187 (contains!17998 (apply!13041 lt!1957451 lt!1957457) (get!18560 lt!1957514)))))

(declare-fun b!4802646 () Bool)

(declare-fun e!2999183 () Option!13196)

(assert (=> b!4802646 (= e!2999186 e!2999183)))

(declare-fun c!818625 () Bool)

(assert (=> b!4802646 (= c!818625 ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457)))))

(declare-fun b!4802647 () Bool)

(assert (=> b!4802647 (= e!2999183 (getPair!940 (t!361912 (apply!13041 lt!1957451 lt!1957457)) key!5896))))

(declare-fun b!4802649 () Bool)

(assert (=> b!4802649 (= e!2999183 None!13195)))

(declare-fun e!2999184 () Bool)

(declare-fun b!4802650 () Bool)

(assert (=> b!4802650 (= e!2999184 (not (containsKey!4046 (apply!13041 lt!1957451 lt!1957457) key!5896)))))

(declare-fun d!1538053 () Bool)

(assert (=> d!1538053 e!2999185))

(declare-fun res!2042874 () Bool)

(assert (=> d!1538053 (=> res!2042874 e!2999185)))

(assert (=> d!1538053 (= res!2042874 e!2999184)))

(declare-fun res!2042873 () Bool)

(assert (=> d!1538053 (=> (not res!2042873) (not e!2999184))))

(assert (=> d!1538053 (= res!2042873 (isEmpty!29515 lt!1957514))))

(assert (=> d!1538053 (= lt!1957514 e!2999186)))

(declare-fun c!818624 () Bool)

(assert (=> d!1538053 (= c!818624 (and ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457)) (= (_1!31814 (h!60770 (apply!13041 lt!1957451 lt!1957457))) key!5896)))))

(declare-fun noDuplicateKeys!2366 (List!54462) Bool)

(assert (=> d!1538053 (noDuplicateKeys!2366 (apply!13041 lt!1957451 lt!1957457))))

(assert (=> d!1538053 (= (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896) lt!1957514)))

(declare-fun b!4802648 () Bool)

(declare-fun res!2042876 () Bool)

(assert (=> b!4802648 (=> (not res!2042876) (not e!2999187))))

(assert (=> b!4802648 (= res!2042876 (= (_1!31814 (get!18560 lt!1957514)) key!5896))))

(assert (= (and d!1538053 c!818624) b!4802644))

(assert (= (and d!1538053 (not c!818624)) b!4802646))

(assert (= (and b!4802646 c!818625) b!4802647))

(assert (= (and b!4802646 (not c!818625)) b!4802649))

(assert (= (and d!1538053 res!2042873) b!4802650))

(assert (= (and d!1538053 (not res!2042874)) b!4802643))

(assert (= (and b!4802643 res!2042875) b!4802648))

(assert (= (and b!4802648 res!2042876) b!4802645))

(declare-fun m!5787258 () Bool)

(assert (=> d!1538053 m!5787258))

(assert (=> d!1538053 m!5787164))

(declare-fun m!5787260 () Bool)

(assert (=> d!1538053 m!5787260))

(declare-fun m!5787262 () Bool)

(assert (=> b!4802643 m!5787262))

(declare-fun m!5787264 () Bool)

(assert (=> b!4802647 m!5787264))

(declare-fun m!5787266 () Bool)

(assert (=> b!4802648 m!5787266))

(assert (=> b!4802645 m!5787266))

(assert (=> b!4802645 m!5787164))

(assert (=> b!4802645 m!5787266))

(declare-fun m!5787268 () Bool)

(assert (=> b!4802645 m!5787268))

(assert (=> b!4802650 m!5787164))

(declare-fun m!5787270 () Bool)

(assert (=> b!4802650 m!5787270))

(assert (=> b!4802514 d!1538053))

(declare-fun d!1538073 () Bool)

(declare-datatypes ((Option!13199 0))(
  ( (None!13198) (Some!13198 (v!48531 List!54462)) )
))
(declare-fun get!18561 (Option!13199) List!54462)

(declare-fun getValueByKey!2406 (List!54463 (_ BitVec 64)) Option!13199)

(assert (=> d!1538073 (= (apply!13041 lt!1957451 lt!1957457) (get!18561 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457)))))

(declare-fun bs!1158097 () Bool)

(assert (= bs!1158097 d!1538073))

(declare-fun m!5787272 () Bool)

(assert (=> bs!1158097 m!5787272))

(assert (=> bs!1158097 m!5787272))

(declare-fun m!5787274 () Bool)

(assert (=> bs!1158097 m!5787274))

(assert (=> b!4802514 d!1538073))

(declare-fun d!1538075 () Bool)

(declare-fun e!2999210 () Bool)

(assert (=> d!1538075 e!2999210))

(declare-fun res!2042894 () Bool)

(assert (=> d!1538075 (=> res!2042894 e!2999210)))

(declare-fun lt!1957530 () Bool)

(assert (=> d!1538075 (= res!2042894 (not lt!1957530))))

(declare-fun lt!1957533 () Bool)

(assert (=> d!1538075 (= lt!1957530 lt!1957533)))

(declare-fun lt!1957532 () Unit!140855)

(declare-fun e!2999211 () Unit!140855)

(assert (=> d!1538075 (= lt!1957532 e!2999211)))

(declare-fun c!818634 () Bool)

(assert (=> d!1538075 (= c!818634 lt!1957533)))

(declare-fun containsKey!4049 (List!54463 (_ BitVec 64)) Bool)

(assert (=> d!1538075 (= lt!1957533 (containsKey!4049 (toList!7015 lm!2473) lt!1957457))))

(assert (=> d!1538075 (= (contains!17995 lm!2473 lt!1957457) lt!1957530)))

(declare-fun b!4802684 () Bool)

(declare-fun lt!1957531 () Unit!140855)

(assert (=> b!4802684 (= e!2999211 lt!1957531)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (List!54463 (_ BitVec 64)) Unit!140855)

(assert (=> b!4802684 (= lt!1957531 (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lm!2473) lt!1957457))))

(declare-fun isDefined!10340 (Option!13199) Bool)

(assert (=> b!4802684 (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457))))

(declare-fun b!4802685 () Bool)

(declare-fun Unit!140864 () Unit!140855)

(assert (=> b!4802685 (= e!2999211 Unit!140864)))

(declare-fun b!4802686 () Bool)

(assert (=> b!4802686 (= e!2999210 (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457)))))

(assert (= (and d!1538075 c!818634) b!4802684))

(assert (= (and d!1538075 (not c!818634)) b!4802685))

(assert (= (and d!1538075 (not res!2042894)) b!4802686))

(declare-fun m!5787310 () Bool)

(assert (=> d!1538075 m!5787310))

(declare-fun m!5787312 () Bool)

(assert (=> b!4802684 m!5787312))

(declare-fun m!5787314 () Bool)

(assert (=> b!4802684 m!5787314))

(assert (=> b!4802684 m!5787314))

(declare-fun m!5787316 () Bool)

(assert (=> b!4802684 m!5787316))

(assert (=> b!4802686 m!5787314))

(assert (=> b!4802686 m!5787314))

(assert (=> b!4802686 m!5787316))

(assert (=> b!4802524 d!1538075))

(declare-fun d!1538087 () Bool)

(declare-fun res!2042901 () Bool)

(declare-fun e!2999218 () Bool)

(assert (=> d!1538087 (=> res!2042901 e!2999218)))

(declare-fun e!2999220 () Bool)

(assert (=> d!1538087 (= res!2042901 e!2999220)))

(declare-fun res!2042902 () Bool)

(assert (=> d!1538087 (=> (not res!2042902) (not e!2999220))))

(assert (=> d!1538087 (= res!2042902 ((_ is Cons!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538087 (= (containsKeyBiggerList!610 (toList!7015 lm!2473) key!5896) e!2999218)))

(declare-fun b!4802693 () Bool)

(assert (=> b!4802693 (= e!2999220 (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896))))

(declare-fun b!4802694 () Bool)

(declare-fun e!2999219 () Bool)

(assert (=> b!4802694 (= e!2999218 e!2999219)))

(declare-fun res!2042903 () Bool)

(assert (=> b!4802694 (=> (not res!2042903) (not e!2999219))))

(assert (=> b!4802694 (= res!2042903 ((_ is Cons!54339) (toList!7015 lm!2473)))))

(declare-fun b!4802695 () Bool)

(assert (=> b!4802695 (= e!2999219 (containsKeyBiggerList!610 (t!361913 (toList!7015 lm!2473)) key!5896))))

(assert (= (and d!1538087 res!2042902) b!4802693))

(assert (= (and d!1538087 (not res!2042901)) b!4802694))

(assert (= (and b!4802694 res!2042903) b!4802695))

(assert (=> b!4802693 m!5787148))

(declare-fun m!5787318 () Bool)

(assert (=> b!4802695 m!5787318))

(assert (=> b!4802524 d!1538087))

(declare-fun bs!1158140 () Bool)

(declare-fun d!1538089 () Bool)

(assert (= bs!1158140 (and d!1538089 start!495826)))

(declare-fun lambda!232746 () Int)

(assert (=> bs!1158140 (= lambda!232746 lambda!232719)))

(declare-fun bs!1158141 () Bool)

(assert (= bs!1158141 (and d!1538089 d!1538035)))

(assert (=> bs!1158141 (not (= lambda!232746 lambda!232728))))

(assert (=> d!1538089 (containsKeyBiggerList!610 (toList!7015 lm!2473) key!5896)))

(declare-fun lt!1957542 () Unit!140855)

(declare-fun choose!34725 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> d!1538089 (= lt!1957542 (choose!34725 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538089 (forall!12343 (toList!7015 lm!2473) lambda!232746)))

(assert (=> d!1538089 (= (lemmaInLongMapThenContainsKeyBiggerList!350 lm!2473 key!5896 hashF!1559) lt!1957542)))

(declare-fun bs!1158142 () Bool)

(assert (= bs!1158142 d!1538089))

(assert (=> bs!1158142 m!5787112))

(declare-fun m!5787372 () Bool)

(assert (=> bs!1158142 m!5787372))

(declare-fun m!5787376 () Bool)

(assert (=> bs!1158142 m!5787376))

(assert (=> b!4802524 d!1538089))

(declare-fun bs!1158156 () Bool)

(declare-fun d!1538111 () Bool)

(assert (= bs!1158156 (and d!1538111 start!495826)))

(declare-fun lambda!232750 () Int)

(assert (=> bs!1158156 (= lambda!232750 lambda!232719)))

(declare-fun bs!1158157 () Bool)

(assert (= bs!1158157 (and d!1538111 d!1538035)))

(assert (=> bs!1158157 (not (= lambda!232750 lambda!232728))))

(declare-fun bs!1158158 () Bool)

(assert (= bs!1158158 (and d!1538111 d!1538089)))

(assert (=> bs!1158158 (= lambda!232750 lambda!232746)))

(declare-fun e!2999252 () Bool)

(assert (=> d!1538111 e!2999252))

(declare-fun res!2042925 () Bool)

(assert (=> d!1538111 (=> (not res!2042925) (not e!2999252))))

(assert (=> d!1538111 (= res!2042925 (contains!17995 lm!2473 (hash!5028 hashF!1559 key!5896)))))

(declare-fun lt!1957558 () Unit!140855)

(declare-fun choose!34726 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> d!1538111 (= lt!1957558 (choose!34726 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538111 (forall!12343 (toList!7015 lm!2473) lambda!232750)))

(assert (=> d!1538111 (= (lemmaInGenericMapThenInLongMap!372 lm!2473 key!5896 hashF!1559) lt!1957558)))

(declare-fun b!4802738 () Bool)

(assert (=> b!4802738 (= e!2999252 (isDefined!10337 (getPair!940 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538111 res!2042925) b!4802738))

(assert (=> d!1538111 m!5787114))

(assert (=> d!1538111 m!5787114))

(declare-fun m!5787412 () Bool)

(assert (=> d!1538111 m!5787412))

(declare-fun m!5787414 () Bool)

(assert (=> d!1538111 m!5787414))

(declare-fun m!5787416 () Bool)

(assert (=> d!1538111 m!5787416))

(assert (=> b!4802738 m!5787114))

(assert (=> b!4802738 m!5787114))

(declare-fun m!5787418 () Bool)

(assert (=> b!4802738 m!5787418))

(assert (=> b!4802738 m!5787418))

(declare-fun m!5787420 () Bool)

(assert (=> b!4802738 m!5787420))

(assert (=> b!4802738 m!5787420))

(declare-fun m!5787422 () Bool)

(assert (=> b!4802738 m!5787422))

(assert (=> b!4802524 d!1538111))

(declare-fun d!1538121 () Bool)

(declare-fun c!818645 () Bool)

(declare-fun e!2999258 () Bool)

(assert (=> d!1538121 (= c!818645 e!2999258)))

(declare-fun res!2042928 () Bool)

(assert (=> d!1538121 (=> (not res!2042928) (not e!2999258))))

(assert (=> d!1538121 (= res!2042928 ((_ is Cons!54339) (toList!7015 lm!2473)))))

(declare-fun e!2999257 () V!16155)

(assert (=> d!1538121 (= (getValue!156 (toList!7015 lm!2473) key!5896) e!2999257)))

(declare-fun b!4802747 () Bool)

(assert (=> b!4802747 (= e!2999258 (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896))))

(declare-fun b!4802745 () Bool)

(assert (=> b!4802745 (= e!2999257 (_2!31814 (get!18560 (getPair!940 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896))))))

(declare-fun b!4802746 () Bool)

(assert (=> b!4802746 (= e!2999257 (getValue!156 (t!361913 (toList!7015 lm!2473)) key!5896))))

(assert (= (and d!1538121 res!2042928) b!4802747))

(assert (= (and d!1538121 c!818645) b!4802745))

(assert (= (and d!1538121 (not c!818645)) b!4802746))

(assert (=> b!4802747 m!5787148))

(declare-fun m!5787424 () Bool)

(assert (=> b!4802745 m!5787424))

(assert (=> b!4802745 m!5787424))

(declare-fun m!5787426 () Bool)

(assert (=> b!4802745 m!5787426))

(declare-fun m!5787428 () Bool)

(assert (=> b!4802746 m!5787428))

(assert (=> b!4802524 d!1538121))

(declare-fun d!1538123 () Bool)

(declare-fun hash!5030 (Hashable!6968 K!15909) (_ BitVec 64))

(assert (=> d!1538123 (= (hash!5028 hashF!1559 key!5896) (hash!5030 hashF!1559 key!5896))))

(declare-fun bs!1158159 () Bool)

(assert (= bs!1158159 d!1538123))

(declare-fun m!5787430 () Bool)

(assert (=> bs!1158159 m!5787430))

(assert (=> b!4802524 d!1538123))

(declare-fun d!1538125 () Bool)

(assert (=> d!1538125 (= (isDefined!10337 (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896)) (not (isEmpty!29515 (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896))))))

(declare-fun bs!1158160 () Bool)

(assert (= bs!1158160 d!1538125))

(assert (=> bs!1158160 m!5787126))

(declare-fun m!5787432 () Bool)

(assert (=> bs!1158160 m!5787432))

(assert (=> b!4802523 d!1538125))

(declare-fun b!4802748 () Bool)

(declare-fun e!2999261 () Bool)

(declare-fun e!2999263 () Bool)

(assert (=> b!4802748 (= e!2999261 e!2999263)))

(declare-fun res!2042931 () Bool)

(assert (=> b!4802748 (=> (not res!2042931) (not e!2999263))))

(declare-fun lt!1957559 () Option!13196)

(assert (=> b!4802748 (= res!2042931 (isDefined!10337 lt!1957559))))

(declare-fun b!4802749 () Bool)

(declare-fun e!2999262 () Option!13196)

(assert (=> b!4802749 (= e!2999262 (Some!13195 (h!60770 (apply!13041 lm!2473 lt!1957457))))))

(declare-fun b!4802750 () Bool)

(assert (=> b!4802750 (= e!2999263 (contains!17998 (apply!13041 lm!2473 lt!1957457) (get!18560 lt!1957559)))))

(declare-fun b!4802751 () Bool)

(declare-fun e!2999259 () Option!13196)

(assert (=> b!4802751 (= e!2999262 e!2999259)))

(declare-fun c!818647 () Bool)

(assert (=> b!4802751 (= c!818647 ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457)))))

(declare-fun b!4802752 () Bool)

(assert (=> b!4802752 (= e!2999259 (getPair!940 (t!361912 (apply!13041 lm!2473 lt!1957457)) key!5896))))

(declare-fun b!4802754 () Bool)

(assert (=> b!4802754 (= e!2999259 None!13195)))

(declare-fun e!2999260 () Bool)

(declare-fun b!4802755 () Bool)

(assert (=> b!4802755 (= e!2999260 (not (containsKey!4046 (apply!13041 lm!2473 lt!1957457) key!5896)))))

(declare-fun d!1538127 () Bool)

(assert (=> d!1538127 e!2999261))

(declare-fun res!2042930 () Bool)

(assert (=> d!1538127 (=> res!2042930 e!2999261)))

(assert (=> d!1538127 (= res!2042930 e!2999260)))

(declare-fun res!2042929 () Bool)

(assert (=> d!1538127 (=> (not res!2042929) (not e!2999260))))

(assert (=> d!1538127 (= res!2042929 (isEmpty!29515 lt!1957559))))

(assert (=> d!1538127 (= lt!1957559 e!2999262)))

(declare-fun c!818646 () Bool)

(assert (=> d!1538127 (= c!818646 (and ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457)) (= (_1!31814 (h!60770 (apply!13041 lm!2473 lt!1957457))) key!5896)))))

(assert (=> d!1538127 (noDuplicateKeys!2366 (apply!13041 lm!2473 lt!1957457))))

(assert (=> d!1538127 (= (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896) lt!1957559)))

(declare-fun b!4802753 () Bool)

(declare-fun res!2042932 () Bool)

(assert (=> b!4802753 (=> (not res!2042932) (not e!2999263))))

(assert (=> b!4802753 (= res!2042932 (= (_1!31814 (get!18560 lt!1957559)) key!5896))))

(assert (= (and d!1538127 c!818646) b!4802749))

(assert (= (and d!1538127 (not c!818646)) b!4802751))

(assert (= (and b!4802751 c!818647) b!4802752))

(assert (= (and b!4802751 (not c!818647)) b!4802754))

(assert (= (and d!1538127 res!2042929) b!4802755))

(assert (= (and d!1538127 (not res!2042930)) b!4802748))

(assert (= (and b!4802748 res!2042931) b!4802753))

(assert (= (and b!4802753 res!2042932) b!4802750))

(declare-fun m!5787434 () Bool)

(assert (=> d!1538127 m!5787434))

(assert (=> d!1538127 m!5787124))

(declare-fun m!5787436 () Bool)

(assert (=> d!1538127 m!5787436))

(declare-fun m!5787438 () Bool)

(assert (=> b!4802748 m!5787438))

(declare-fun m!5787440 () Bool)

(assert (=> b!4802752 m!5787440))

(declare-fun m!5787442 () Bool)

(assert (=> b!4802753 m!5787442))

(assert (=> b!4802750 m!5787442))

(assert (=> b!4802750 m!5787124))

(assert (=> b!4802750 m!5787442))

(declare-fun m!5787444 () Bool)

(assert (=> b!4802750 m!5787444))

(assert (=> b!4802755 m!5787124))

(declare-fun m!5787446 () Bool)

(assert (=> b!4802755 m!5787446))

(assert (=> b!4802523 d!1538127))

(declare-fun d!1538129 () Bool)

(assert (=> d!1538129 (= (apply!13041 lm!2473 lt!1957457) (get!18561 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457)))))

(declare-fun bs!1158161 () Bool)

(assert (= bs!1158161 d!1538129))

(assert (=> bs!1158161 m!5787314))

(assert (=> bs!1158161 m!5787314))

(declare-fun m!5787448 () Bool)

(assert (=> bs!1158161 m!5787448))

(assert (=> b!4802523 d!1538129))

(declare-fun b!4802774 () Bool)

(declare-fun e!2999279 () Bool)

(declare-datatypes ((List!54465 0))(
  ( (Nil!54341) (Cons!54341 (h!60773 K!15909) (t!361915 List!54465)) )
))
(declare-fun contains!17999 (List!54465 K!15909) Bool)

(declare-fun keys!19871 (ListMap!6487) List!54465)

(assert (=> b!4802774 (= e!2999279 (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(declare-fun bm!335430 () Bool)

(declare-fun call!335435 () Bool)

(declare-fun e!2999278 () List!54465)

(assert (=> bm!335430 (= call!335435 (contains!17999 e!2999278 key!5896))))

(declare-fun c!818655 () Bool)

(declare-fun c!818654 () Bool)

(assert (=> bm!335430 (= c!818655 c!818654)))

(declare-fun b!4802775 () Bool)

(declare-fun getKeysList!1104 (List!54462) List!54465)

(assert (=> b!4802775 (= e!2999278 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))

(declare-fun b!4802776 () Bool)

(declare-fun e!2999277 () Unit!140855)

(declare-fun Unit!140865 () Unit!140855)

(assert (=> b!4802776 (= e!2999277 Unit!140865)))

(declare-fun b!4802777 () Bool)

(declare-fun e!2999280 () Unit!140855)

(declare-fun lt!1957578 () Unit!140855)

(assert (=> b!4802777 (= e!2999280 lt!1957578)))

(declare-fun lt!1957582 () Unit!140855)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2198 (List!54462 K!15909) Unit!140855)

(assert (=> b!4802777 (= lt!1957582 (lemmaContainsKeyImpliesGetValueByKeyDefined!2198 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(declare-datatypes ((Option!13200 0))(
  ( (None!13199) (Some!13199 (v!48532 V!16155)) )
))
(declare-fun isDefined!10341 (Option!13200) Bool)

(declare-fun getValueByKey!2407 (List!54462 K!15909) Option!13200)

(assert (=> b!4802777 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(declare-fun lt!1957583 () Unit!140855)

(assert (=> b!4802777 (= lt!1957583 lt!1957582)))

(declare-fun lemmaInListThenGetKeysListContains!1099 (List!54462 K!15909) Unit!140855)

(assert (=> b!4802777 (= lt!1957578 (lemmaInListThenGetKeysListContains!1099 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(assert (=> b!4802777 call!335435))

(declare-fun b!4802778 () Bool)

(declare-fun e!2999276 () Bool)

(assert (=> b!4802778 (= e!2999276 e!2999279)))

(declare-fun res!2042940 () Bool)

(assert (=> b!4802778 (=> (not res!2042940) (not e!2999279))))

(assert (=> b!4802778 (= res!2042940 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896)))))

(declare-fun b!4802779 () Bool)

(declare-fun e!2999281 () Bool)

(assert (=> b!4802779 (= e!2999281 (not (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lm!2473))) key!5896)))))

(declare-fun d!1538131 () Bool)

(assert (=> d!1538131 e!2999276))

(declare-fun res!2042941 () Bool)

(assert (=> d!1538131 (=> res!2042941 e!2999276)))

(assert (=> d!1538131 (= res!2042941 e!2999281)))

(declare-fun res!2042939 () Bool)

(assert (=> d!1538131 (=> (not res!2042939) (not e!2999281))))

(declare-fun lt!1957581 () Bool)

(assert (=> d!1538131 (= res!2042939 (not lt!1957581))))

(declare-fun lt!1957579 () Bool)

(assert (=> d!1538131 (= lt!1957581 lt!1957579)))

(declare-fun lt!1957576 () Unit!140855)

(assert (=> d!1538131 (= lt!1957576 e!2999280)))

(assert (=> d!1538131 (= c!818654 lt!1957579)))

(declare-fun containsKey!4050 (List!54462 K!15909) Bool)

(assert (=> d!1538131 (= lt!1957579 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(assert (=> d!1538131 (= (contains!17994 (extractMap!2495 (toList!7015 lm!2473)) key!5896) lt!1957581)))

(declare-fun b!4802780 () Bool)

(assert (=> b!4802780 (= e!2999280 e!2999277)))

(declare-fun c!818656 () Bool)

(assert (=> b!4802780 (= c!818656 call!335435)))

(declare-fun b!4802781 () Bool)

(assert (=> b!4802781 false))

(declare-fun lt!1957577 () Unit!140855)

(declare-fun lt!1957580 () Unit!140855)

(assert (=> b!4802781 (= lt!1957577 lt!1957580)))

(assert (=> b!4802781 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1104 (List!54462 K!15909) Unit!140855)

(assert (=> b!4802781 (= lt!1957580 (lemmaInGetKeysListThenContainsKey!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(declare-fun Unit!140866 () Unit!140855)

(assert (=> b!4802781 (= e!2999277 Unit!140866)))

(declare-fun b!4802782 () Bool)

(assert (=> b!4802782 (= e!2999278 (keys!19871 (extractMap!2495 (toList!7015 lm!2473))))))

(assert (= (and d!1538131 c!818654) b!4802777))

(assert (= (and d!1538131 (not c!818654)) b!4802780))

(assert (= (and b!4802780 c!818656) b!4802781))

(assert (= (and b!4802780 (not c!818656)) b!4802776))

(assert (= (or b!4802777 b!4802780) bm!335430))

(assert (= (and bm!335430 c!818655) b!4802775))

(assert (= (and bm!335430 (not c!818655)) b!4802782))

(assert (= (and d!1538131 res!2042939) b!4802779))

(assert (= (and d!1538131 (not res!2042941)) b!4802778))

(assert (= (and b!4802778 res!2042940) b!4802774))

(assert (=> b!4802782 m!5787142))

(declare-fun m!5787450 () Bool)

(assert (=> b!4802782 m!5787450))

(assert (=> b!4802774 m!5787142))

(assert (=> b!4802774 m!5787450))

(assert (=> b!4802774 m!5787450))

(declare-fun m!5787452 () Bool)

(assert (=> b!4802774 m!5787452))

(assert (=> b!4802779 m!5787142))

(assert (=> b!4802779 m!5787450))

(assert (=> b!4802779 m!5787450))

(assert (=> b!4802779 m!5787452))

(declare-fun m!5787454 () Bool)

(assert (=> d!1538131 m!5787454))

(declare-fun m!5787456 () Bool)

(assert (=> b!4802777 m!5787456))

(declare-fun m!5787458 () Bool)

(assert (=> b!4802777 m!5787458))

(assert (=> b!4802777 m!5787458))

(declare-fun m!5787460 () Bool)

(assert (=> b!4802777 m!5787460))

(declare-fun m!5787462 () Bool)

(assert (=> b!4802777 m!5787462))

(declare-fun m!5787464 () Bool)

(assert (=> b!4802775 m!5787464))

(assert (=> b!4802781 m!5787454))

(declare-fun m!5787466 () Bool)

(assert (=> b!4802781 m!5787466))

(declare-fun m!5787468 () Bool)

(assert (=> bm!335430 m!5787468))

(assert (=> b!4802778 m!5787458))

(assert (=> b!4802778 m!5787458))

(assert (=> b!4802778 m!5787460))

(assert (=> b!4802515 d!1538131))

(declare-fun bs!1158162 () Bool)

(declare-fun d!1538133 () Bool)

(assert (= bs!1158162 (and d!1538133 start!495826)))

(declare-fun lambda!232753 () Int)

(assert (=> bs!1158162 (= lambda!232753 lambda!232719)))

(declare-fun bs!1158163 () Bool)

(assert (= bs!1158163 (and d!1538133 d!1538035)))

(assert (=> bs!1158163 (not (= lambda!232753 lambda!232728))))

(declare-fun bs!1158164 () Bool)

(assert (= bs!1158164 (and d!1538133 d!1538089)))

(assert (=> bs!1158164 (= lambda!232753 lambda!232746)))

(declare-fun bs!1158165 () Bool)

(assert (= bs!1158165 (and d!1538133 d!1538111)))

(assert (=> bs!1158165 (= lambda!232753 lambda!232750)))

(declare-fun lt!1957586 () ListMap!6487)

(declare-fun invariantList!1758 (List!54462) Bool)

(assert (=> d!1538133 (invariantList!1758 (toList!7016 lt!1957586))))

(declare-fun e!2999284 () ListMap!6487)

(assert (=> d!1538133 (= lt!1957586 e!2999284)))

(declare-fun c!818659 () Bool)

(assert (=> d!1538133 (= c!818659 ((_ is Cons!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538133 (forall!12343 (toList!7015 lm!2473) lambda!232753)))

(assert (=> d!1538133 (= (extractMap!2495 (toList!7015 lm!2473)) lt!1957586)))

(declare-fun b!4802787 () Bool)

(declare-fun addToMapMapFromBucket!1735 (List!54462 ListMap!6487) ListMap!6487)

(assert (=> b!4802787 (= e!2999284 (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (toList!7015 lm!2473))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))))))

(declare-fun b!4802788 () Bool)

(assert (=> b!4802788 (= e!2999284 (ListMap!6488 Nil!54338))))

(assert (= (and d!1538133 c!818659) b!4802787))

(assert (= (and d!1538133 (not c!818659)) b!4802788))

(declare-fun m!5787470 () Bool)

(assert (=> d!1538133 m!5787470))

(declare-fun m!5787472 () Bool)

(assert (=> d!1538133 m!5787472))

(declare-fun m!5787474 () Bool)

(assert (=> b!4802787 m!5787474))

(assert (=> b!4802787 m!5787474))

(declare-fun m!5787476 () Bool)

(assert (=> b!4802787 m!5787476))

(assert (=> b!4802515 d!1538133))

(declare-fun bs!1158166 () Bool)

(declare-fun d!1538135 () Bool)

(assert (= bs!1158166 (and d!1538135 start!495826)))

(declare-fun lambda!232754 () Int)

(assert (=> bs!1158166 (not (= lambda!232754 lambda!232719))))

(declare-fun bs!1158167 () Bool)

(assert (= bs!1158167 (and d!1538135 d!1538035)))

(assert (=> bs!1158167 (= lambda!232754 lambda!232728)))

(declare-fun bs!1158168 () Bool)

(assert (= bs!1158168 (and d!1538135 d!1538133)))

(assert (=> bs!1158168 (not (= lambda!232754 lambda!232753))))

(declare-fun bs!1158169 () Bool)

(assert (= bs!1158169 (and d!1538135 d!1538111)))

(assert (=> bs!1158169 (not (= lambda!232754 lambda!232750))))

(declare-fun bs!1158170 () Bool)

(assert (= bs!1158170 (and d!1538135 d!1538089)))

(assert (=> bs!1158170 (not (= lambda!232754 lambda!232746))))

(assert (=> d!1538135 true))

(assert (=> d!1538135 (= (allKeysSameHashInMap!2373 lt!1957451 hashF!1559) (forall!12343 (toList!7015 lt!1957451) lambda!232754))))

(declare-fun bs!1158171 () Bool)

(assert (= bs!1158171 d!1538135))

(declare-fun m!5787478 () Bool)

(assert (=> bs!1158171 m!5787478))

(assert (=> b!4802526 d!1538135))

(declare-fun d!1538137 () Bool)

(declare-fun c!818660 () Bool)

(declare-fun e!2999286 () Bool)

(assert (=> d!1538137 (= c!818660 e!2999286)))

(declare-fun res!2042942 () Bool)

(assert (=> d!1538137 (=> (not res!2042942) (not e!2999286))))

(assert (=> d!1538137 (= res!2042942 ((_ is Cons!54339) (toList!7015 lt!1957451)))))

(declare-fun e!2999285 () V!16155)

(assert (=> d!1538137 (= (getValue!156 (toList!7015 lt!1957451) key!5896) e!2999285)))

(declare-fun b!4802791 () Bool)

(assert (=> b!4802791 (= e!2999286 (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896))))

(declare-fun b!4802789 () Bool)

(assert (=> b!4802789 (= e!2999285 (_2!31814 (get!18560 (getPair!940 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896))))))

(declare-fun b!4802790 () Bool)

(assert (=> b!4802790 (= e!2999285 (getValue!156 (t!361913 (toList!7015 lt!1957451)) key!5896))))

(assert (= (and d!1538137 res!2042942) b!4802791))

(assert (= (and d!1538137 c!818660) b!4802789))

(assert (= (and d!1538137 (not c!818660)) b!4802790))

(declare-fun m!5787480 () Bool)

(assert (=> b!4802791 m!5787480))

(declare-fun m!5787482 () Bool)

(assert (=> b!4802789 m!5787482))

(assert (=> b!4802789 m!5787482))

(declare-fun m!5787484 () Bool)

(assert (=> b!4802789 m!5787484))

(declare-fun m!5787486 () Bool)

(assert (=> b!4802790 m!5787486))

(assert (=> b!4802519 d!1538137))

(declare-fun d!1538139 () Bool)

(declare-fun res!2042943 () Bool)

(declare-fun e!2999287 () Bool)

(assert (=> d!1538139 (=> res!2042943 e!2999287)))

(declare-fun e!2999289 () Bool)

(assert (=> d!1538139 (= res!2042943 e!2999289)))

(declare-fun res!2042944 () Bool)

(assert (=> d!1538139 (=> (not res!2042944) (not e!2999289))))

(assert (=> d!1538139 (= res!2042944 ((_ is Cons!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538139 (= (containsKeyBiggerList!610 (toList!7015 lt!1957451) key!5896) e!2999287)))

(declare-fun b!4802792 () Bool)

(assert (=> b!4802792 (= e!2999289 (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896))))

(declare-fun b!4802793 () Bool)

(declare-fun e!2999288 () Bool)

(assert (=> b!4802793 (= e!2999287 e!2999288)))

(declare-fun res!2042945 () Bool)

(assert (=> b!4802793 (=> (not res!2042945) (not e!2999288))))

(assert (=> b!4802793 (= res!2042945 ((_ is Cons!54339) (toList!7015 lt!1957451)))))

(declare-fun b!4802794 () Bool)

(assert (=> b!4802794 (= e!2999288 (containsKeyBiggerList!610 (t!361913 (toList!7015 lt!1957451)) key!5896))))

(assert (= (and d!1538139 res!2042944) b!4802792))

(assert (= (and d!1538139 (not res!2042943)) b!4802793))

(assert (= (and b!4802793 res!2042945) b!4802794))

(assert (=> b!4802792 m!5787480))

(declare-fun m!5787488 () Bool)

(assert (=> b!4802794 m!5787488))

(assert (=> b!4802519 d!1538139))

(declare-fun bs!1158172 () Bool)

(declare-fun d!1538141 () Bool)

(assert (= bs!1158172 (and d!1538141 start!495826)))

(declare-fun lambda!232755 () Int)

(assert (=> bs!1158172 (= lambda!232755 lambda!232719)))

(declare-fun bs!1158173 () Bool)

(assert (= bs!1158173 (and d!1538141 d!1538035)))

(assert (=> bs!1158173 (not (= lambda!232755 lambda!232728))))

(declare-fun bs!1158174 () Bool)

(assert (= bs!1158174 (and d!1538141 d!1538135)))

(assert (=> bs!1158174 (not (= lambda!232755 lambda!232754))))

(declare-fun bs!1158175 () Bool)

(assert (= bs!1158175 (and d!1538141 d!1538133)))

(assert (=> bs!1158175 (= lambda!232755 lambda!232753)))

(declare-fun bs!1158176 () Bool)

(assert (= bs!1158176 (and d!1538141 d!1538111)))

(assert (=> bs!1158176 (= lambda!232755 lambda!232750)))

(declare-fun bs!1158177 () Bool)

(assert (= bs!1158177 (and d!1538141 d!1538089)))

(assert (=> bs!1158177 (= lambda!232755 lambda!232746)))

(assert (=> d!1538141 (containsKeyBiggerList!610 (toList!7015 lt!1957451) key!5896)))

(declare-fun lt!1957587 () Unit!140855)

(assert (=> d!1538141 (= lt!1957587 (choose!34725 lt!1957451 key!5896 hashF!1559))))

(assert (=> d!1538141 (forall!12343 (toList!7015 lt!1957451) lambda!232755)))

(assert (=> d!1538141 (= (lemmaInLongMapThenContainsKeyBiggerList!350 lt!1957451 key!5896 hashF!1559) lt!1957587)))

(declare-fun bs!1158178 () Bool)

(assert (= bs!1158178 d!1538141))

(assert (=> bs!1158178 m!5787158))

(declare-fun m!5787490 () Bool)

(assert (=> bs!1158178 m!5787490))

(declare-fun m!5787492 () Bool)

(assert (=> bs!1158178 m!5787492))

(assert (=> b!4802519 d!1538141))

(declare-fun bs!1158179 () Bool)

(declare-fun d!1538143 () Bool)

(assert (= bs!1158179 (and d!1538143 d!1538141)))

(declare-fun lambda!232756 () Int)

(assert (=> bs!1158179 (= lambda!232756 lambda!232755)))

(declare-fun bs!1158180 () Bool)

(assert (= bs!1158180 (and d!1538143 start!495826)))

(assert (=> bs!1158180 (= lambda!232756 lambda!232719)))

(declare-fun bs!1158181 () Bool)

(assert (= bs!1158181 (and d!1538143 d!1538035)))

(assert (=> bs!1158181 (not (= lambda!232756 lambda!232728))))

(declare-fun bs!1158182 () Bool)

(assert (= bs!1158182 (and d!1538143 d!1538135)))

(assert (=> bs!1158182 (not (= lambda!232756 lambda!232754))))

(declare-fun bs!1158183 () Bool)

(assert (= bs!1158183 (and d!1538143 d!1538133)))

(assert (=> bs!1158183 (= lambda!232756 lambda!232753)))

(declare-fun bs!1158184 () Bool)

(assert (= bs!1158184 (and d!1538143 d!1538111)))

(assert (=> bs!1158184 (= lambda!232756 lambda!232750)))

(declare-fun bs!1158185 () Bool)

(assert (= bs!1158185 (and d!1538143 d!1538089)))

(assert (=> bs!1158185 (= lambda!232756 lambda!232746)))

(declare-fun e!2999290 () Bool)

(assert (=> d!1538143 e!2999290))

(declare-fun res!2042946 () Bool)

(assert (=> d!1538143 (=> (not res!2042946) (not e!2999290))))

(assert (=> d!1538143 (= res!2042946 (contains!17995 lt!1957451 (hash!5028 hashF!1559 key!5896)))))

(declare-fun lt!1957588 () Unit!140855)

(assert (=> d!1538143 (= lt!1957588 (choose!34726 lt!1957451 key!5896 hashF!1559))))

(assert (=> d!1538143 (forall!12343 (toList!7015 lt!1957451) lambda!232756)))

(assert (=> d!1538143 (= (lemmaInGenericMapThenInLongMap!372 lt!1957451 key!5896 hashF!1559) lt!1957588)))

(declare-fun b!4802795 () Bool)

(assert (=> b!4802795 (= e!2999290 (isDefined!10337 (getPair!940 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538143 res!2042946) b!4802795))

(assert (=> d!1538143 m!5787114))

(assert (=> d!1538143 m!5787114))

(declare-fun m!5787494 () Bool)

(assert (=> d!1538143 m!5787494))

(declare-fun m!5787496 () Bool)

(assert (=> d!1538143 m!5787496))

(declare-fun m!5787498 () Bool)

(assert (=> d!1538143 m!5787498))

(assert (=> b!4802795 m!5787114))

(assert (=> b!4802795 m!5787114))

(declare-fun m!5787500 () Bool)

(assert (=> b!4802795 m!5787500))

(assert (=> b!4802795 m!5787500))

(declare-fun m!5787502 () Bool)

(assert (=> b!4802795 m!5787502))

(assert (=> b!4802795 m!5787502))

(declare-fun m!5787504 () Bool)

(assert (=> b!4802795 m!5787504))

(assert (=> b!4802519 d!1538143))

(declare-fun d!1538145 () Bool)

(declare-fun e!2999291 () Bool)

(assert (=> d!1538145 e!2999291))

(declare-fun res!2042947 () Bool)

(assert (=> d!1538145 (=> res!2042947 e!2999291)))

(declare-fun lt!1957589 () Bool)

(assert (=> d!1538145 (= res!2042947 (not lt!1957589))))

(declare-fun lt!1957592 () Bool)

(assert (=> d!1538145 (= lt!1957589 lt!1957592)))

(declare-fun lt!1957591 () Unit!140855)

(declare-fun e!2999292 () Unit!140855)

(assert (=> d!1538145 (= lt!1957591 e!2999292)))

(declare-fun c!818661 () Bool)

(assert (=> d!1538145 (= c!818661 lt!1957592)))

(assert (=> d!1538145 (= lt!1957592 (containsKey!4049 (toList!7015 lt!1957451) lt!1957457))))

(assert (=> d!1538145 (= (contains!17995 lt!1957451 lt!1957457) lt!1957589)))

(declare-fun b!4802796 () Bool)

(declare-fun lt!1957590 () Unit!140855)

(assert (=> b!4802796 (= e!2999292 lt!1957590)))

(assert (=> b!4802796 (= lt!1957590 (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lt!1957451) lt!1957457))))

(assert (=> b!4802796 (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457))))

(declare-fun b!4802797 () Bool)

(declare-fun Unit!140867 () Unit!140855)

(assert (=> b!4802797 (= e!2999292 Unit!140867)))

(declare-fun b!4802798 () Bool)

(assert (=> b!4802798 (= e!2999291 (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457)))))

(assert (= (and d!1538145 c!818661) b!4802796))

(assert (= (and d!1538145 (not c!818661)) b!4802797))

(assert (= (and d!1538145 (not res!2042947)) b!4802798))

(declare-fun m!5787506 () Bool)

(assert (=> d!1538145 m!5787506))

(declare-fun m!5787508 () Bool)

(assert (=> b!4802796 m!5787508))

(assert (=> b!4802796 m!5787272))

(assert (=> b!4802796 m!5787272))

(declare-fun m!5787510 () Bool)

(assert (=> b!4802796 m!5787510))

(assert (=> b!4802798 m!5787272))

(assert (=> b!4802798 m!5787272))

(assert (=> b!4802798 m!5787510))

(assert (=> b!4802518 d!1538145))

(declare-fun b!4802799 () Bool)

(declare-fun e!2999296 () Bool)

(assert (=> b!4802799 (= e!2999296 (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(declare-fun bm!335431 () Bool)

(declare-fun call!335436 () Bool)

(declare-fun e!2999295 () List!54465)

(assert (=> bm!335431 (= call!335436 (contains!17999 e!2999295 key!5896))))

(declare-fun c!818663 () Bool)

(declare-fun c!818662 () Bool)

(assert (=> bm!335431 (= c!818663 c!818662)))

(declare-fun b!4802800 () Bool)

(assert (=> b!4802800 (= e!2999295 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))

(declare-fun b!4802801 () Bool)

(declare-fun e!2999294 () Unit!140855)

(declare-fun Unit!140868 () Unit!140855)

(assert (=> b!4802801 (= e!2999294 Unit!140868)))

(declare-fun b!4802802 () Bool)

(declare-fun e!2999297 () Unit!140855)

(declare-fun lt!1957595 () Unit!140855)

(assert (=> b!4802802 (= e!2999297 lt!1957595)))

(declare-fun lt!1957599 () Unit!140855)

(assert (=> b!4802802 (= lt!1957599 (lemmaContainsKeyImpliesGetValueByKeyDefined!2198 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> b!4802802 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(declare-fun lt!1957600 () Unit!140855)

(assert (=> b!4802802 (= lt!1957600 lt!1957599)))

(assert (=> b!4802802 (= lt!1957595 (lemmaInListThenGetKeysListContains!1099 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> b!4802802 call!335436))

(declare-fun b!4802803 () Bool)

(declare-fun e!2999293 () Bool)

(assert (=> b!4802803 (= e!2999293 e!2999296)))

(declare-fun res!2042949 () Bool)

(assert (=> b!4802803 (=> (not res!2042949) (not e!2999296))))

(assert (=> b!4802803 (= res!2042949 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896)))))

(declare-fun b!4802804 () Bool)

(declare-fun e!2999298 () Bool)

(assert (=> b!4802804 (= e!2999298 (not (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451))) key!5896)))))

(declare-fun d!1538147 () Bool)

(assert (=> d!1538147 e!2999293))

(declare-fun res!2042950 () Bool)

(assert (=> d!1538147 (=> res!2042950 e!2999293)))

(assert (=> d!1538147 (= res!2042950 e!2999298)))

(declare-fun res!2042948 () Bool)

(assert (=> d!1538147 (=> (not res!2042948) (not e!2999298))))

(declare-fun lt!1957598 () Bool)

(assert (=> d!1538147 (= res!2042948 (not lt!1957598))))

(declare-fun lt!1957596 () Bool)

(assert (=> d!1538147 (= lt!1957598 lt!1957596)))

(declare-fun lt!1957593 () Unit!140855)

(assert (=> d!1538147 (= lt!1957593 e!2999297)))

(assert (=> d!1538147 (= c!818662 lt!1957596)))

(assert (=> d!1538147 (= lt!1957596 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> d!1538147 (= (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896) lt!1957598)))

(declare-fun b!4802805 () Bool)

(assert (=> b!4802805 (= e!2999297 e!2999294)))

(declare-fun c!818664 () Bool)

(assert (=> b!4802805 (= c!818664 call!335436)))

(declare-fun b!4802806 () Bool)

(assert (=> b!4802806 false))

(declare-fun lt!1957594 () Unit!140855)

(declare-fun lt!1957597 () Unit!140855)

(assert (=> b!4802806 (= lt!1957594 lt!1957597)))

(assert (=> b!4802806 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896)))

(assert (=> b!4802806 (= lt!1957597 (lemmaInGetKeysListThenContainsKey!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(declare-fun Unit!140869 () Unit!140855)

(assert (=> b!4802806 (= e!2999294 Unit!140869)))

(declare-fun b!4802807 () Bool)

(assert (=> b!4802807 (= e!2999295 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451))))))

(assert (= (and d!1538147 c!818662) b!4802802))

(assert (= (and d!1538147 (not c!818662)) b!4802805))

(assert (= (and b!4802805 c!818664) b!4802806))

(assert (= (and b!4802805 (not c!818664)) b!4802801))

(assert (= (or b!4802802 b!4802805) bm!335431))

(assert (= (and bm!335431 c!818663) b!4802800))

(assert (= (and bm!335431 (not c!818663)) b!4802807))

(assert (= (and d!1538147 res!2042948) b!4802804))

(assert (= (and d!1538147 (not res!2042950)) b!4802803))

(assert (= (and b!4802803 res!2042949) b!4802799))

(assert (=> b!4802807 m!5787132))

(declare-fun m!5787512 () Bool)

(assert (=> b!4802807 m!5787512))

(assert (=> b!4802799 m!5787132))

(assert (=> b!4802799 m!5787512))

(assert (=> b!4802799 m!5787512))

(declare-fun m!5787514 () Bool)

(assert (=> b!4802799 m!5787514))

(assert (=> b!4802804 m!5787132))

(assert (=> b!4802804 m!5787512))

(assert (=> b!4802804 m!5787512))

(assert (=> b!4802804 m!5787514))

(declare-fun m!5787516 () Bool)

(assert (=> d!1538147 m!5787516))

(declare-fun m!5787518 () Bool)

(assert (=> b!4802802 m!5787518))

(declare-fun m!5787520 () Bool)

(assert (=> b!4802802 m!5787520))

(assert (=> b!4802802 m!5787520))

(declare-fun m!5787522 () Bool)

(assert (=> b!4802802 m!5787522))

(declare-fun m!5787524 () Bool)

(assert (=> b!4802802 m!5787524))

(declare-fun m!5787526 () Bool)

(assert (=> b!4802800 m!5787526))

(assert (=> b!4802806 m!5787516))

(declare-fun m!5787528 () Bool)

(assert (=> b!4802806 m!5787528))

(declare-fun m!5787530 () Bool)

(assert (=> bm!335431 m!5787530))

(assert (=> b!4802803 m!5787520))

(assert (=> b!4802803 m!5787520))

(assert (=> b!4802803 m!5787522))

(assert (=> b!4802518 d!1538147))

(declare-fun bs!1158186 () Bool)

(declare-fun d!1538149 () Bool)

(assert (= bs!1158186 (and d!1538149 d!1538141)))

(declare-fun lambda!232759 () Int)

(assert (=> bs!1158186 (= lambda!232759 lambda!232755)))

(declare-fun bs!1158187 () Bool)

(assert (= bs!1158187 (and d!1538149 start!495826)))

(assert (=> bs!1158187 (= lambda!232759 lambda!232719)))

(declare-fun bs!1158188 () Bool)

(assert (= bs!1158188 (and d!1538149 d!1538035)))

(assert (=> bs!1158188 (not (= lambda!232759 lambda!232728))))

(declare-fun bs!1158189 () Bool)

(assert (= bs!1158189 (and d!1538149 d!1538135)))

(assert (=> bs!1158189 (not (= lambda!232759 lambda!232754))))

(declare-fun bs!1158190 () Bool)

(assert (= bs!1158190 (and d!1538149 d!1538133)))

(assert (=> bs!1158190 (= lambda!232759 lambda!232753)))

(declare-fun bs!1158191 () Bool)

(assert (= bs!1158191 (and d!1538149 d!1538143)))

(assert (=> bs!1158191 (= lambda!232759 lambda!232756)))

(declare-fun bs!1158192 () Bool)

(assert (= bs!1158192 (and d!1538149 d!1538111)))

(assert (=> bs!1158192 (= lambda!232759 lambda!232750)))

(declare-fun bs!1158193 () Bool)

(assert (= bs!1158193 (and d!1538149 d!1538089)))

(assert (=> bs!1158193 (= lambda!232759 lambda!232746)))

(assert (=> d!1538149 (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896)))

(declare-fun lt!1957603 () Unit!140855)

(declare-fun choose!34727 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> d!1538149 (= lt!1957603 (choose!34727 lt!1957451 key!5896 hashF!1559))))

(assert (=> d!1538149 (forall!12343 (toList!7015 lt!1957451) lambda!232759)))

(assert (=> d!1538149 (= (lemmaListContainsThenExtractedMapContains!718 lt!1957451 key!5896 hashF!1559) lt!1957603)))

(declare-fun bs!1158194 () Bool)

(assert (= bs!1158194 d!1538149))

(assert (=> bs!1158194 m!5787132))

(assert (=> bs!1158194 m!5787132))

(assert (=> bs!1158194 m!5787138))

(declare-fun m!5787532 () Bool)

(assert (=> bs!1158194 m!5787532))

(declare-fun m!5787534 () Bool)

(assert (=> bs!1158194 m!5787534))

(assert (=> b!4802518 d!1538149))

(declare-fun d!1538151 () Bool)

(declare-fun res!2042951 () Bool)

(declare-fun e!2999299 () Bool)

(assert (=> d!1538151 (=> res!2042951 e!2999299)))

(assert (=> d!1538151 (= res!2042951 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538151 (= (forall!12343 (toList!7015 lt!1957451) lambda!232719) e!2999299)))

(declare-fun b!4802808 () Bool)

(declare-fun e!2999300 () Bool)

(assert (=> b!4802808 (= e!2999299 e!2999300)))

(declare-fun res!2042952 () Bool)

(assert (=> b!4802808 (=> (not res!2042952) (not e!2999300))))

(assert (=> b!4802808 (= res!2042952 (dynLambda!22097 lambda!232719 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4802809 () Bool)

(assert (=> b!4802809 (= e!2999300 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232719))))

(assert (= (and d!1538151 (not res!2042951)) b!4802808))

(assert (= (and b!4802808 res!2042952) b!4802809))

(declare-fun b_lambda!187813 () Bool)

(assert (=> (not b_lambda!187813) (not b!4802808)))

(declare-fun m!5787536 () Bool)

(assert (=> b!4802808 m!5787536))

(declare-fun m!5787538 () Bool)

(assert (=> b!4802809 m!5787538))

(assert (=> b!4802518 d!1538151))

(declare-fun d!1538153 () Bool)

(declare-fun tail!9338 (List!54463) List!54463)

(assert (=> d!1538153 (= (tail!9336 lm!2473) (ListLongMap!5438 (tail!9338 (toList!7015 lm!2473))))))

(declare-fun bs!1158195 () Bool)

(assert (= bs!1158195 d!1538153))

(declare-fun m!5787540 () Bool)

(assert (=> bs!1158195 m!5787540))

(assert (=> b!4802518 d!1538153))

(declare-fun bs!1158196 () Bool)

(declare-fun d!1538155 () Bool)

(assert (= bs!1158196 (and d!1538155 d!1538149)))

(declare-fun lambda!232760 () Int)

(assert (=> bs!1158196 (= lambda!232760 lambda!232759)))

(declare-fun bs!1158197 () Bool)

(assert (= bs!1158197 (and d!1538155 d!1538141)))

(assert (=> bs!1158197 (= lambda!232760 lambda!232755)))

(declare-fun bs!1158198 () Bool)

(assert (= bs!1158198 (and d!1538155 start!495826)))

(assert (=> bs!1158198 (= lambda!232760 lambda!232719)))

(declare-fun bs!1158199 () Bool)

(assert (= bs!1158199 (and d!1538155 d!1538035)))

(assert (=> bs!1158199 (not (= lambda!232760 lambda!232728))))

(declare-fun bs!1158200 () Bool)

(assert (= bs!1158200 (and d!1538155 d!1538135)))

(assert (=> bs!1158200 (not (= lambda!232760 lambda!232754))))

(declare-fun bs!1158201 () Bool)

(assert (= bs!1158201 (and d!1538155 d!1538133)))

(assert (=> bs!1158201 (= lambda!232760 lambda!232753)))

(declare-fun bs!1158202 () Bool)

(assert (= bs!1158202 (and d!1538155 d!1538143)))

(assert (=> bs!1158202 (= lambda!232760 lambda!232756)))

(declare-fun bs!1158203 () Bool)

(assert (= bs!1158203 (and d!1538155 d!1538111)))

(assert (=> bs!1158203 (= lambda!232760 lambda!232750)))

(declare-fun bs!1158204 () Bool)

(assert (= bs!1158204 (and d!1538155 d!1538089)))

(assert (=> bs!1158204 (= lambda!232760 lambda!232746)))

(declare-fun lt!1957604 () ListMap!6487)

(assert (=> d!1538155 (invariantList!1758 (toList!7016 lt!1957604))))

(declare-fun e!2999301 () ListMap!6487)

(assert (=> d!1538155 (= lt!1957604 e!2999301)))

(declare-fun c!818665 () Bool)

(assert (=> d!1538155 (= c!818665 ((_ is Cons!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538155 (forall!12343 (toList!7015 lt!1957451) lambda!232760)))

(assert (=> d!1538155 (= (extractMap!2495 (toList!7015 lt!1957451)) lt!1957604)))

(declare-fun b!4802810 () Bool)

(assert (=> b!4802810 (= e!2999301 (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))))))

(declare-fun b!4802811 () Bool)

(assert (=> b!4802811 (= e!2999301 (ListMap!6488 Nil!54338))))

(assert (= (and d!1538155 c!818665) b!4802810))

(assert (= (and d!1538155 (not c!818665)) b!4802811))

(declare-fun m!5787542 () Bool)

(assert (=> d!1538155 m!5787542))

(declare-fun m!5787544 () Bool)

(assert (=> d!1538155 m!5787544))

(declare-fun m!5787546 () Bool)

(assert (=> b!4802810 m!5787546))

(assert (=> b!4802810 m!5787546))

(declare-fun m!5787548 () Bool)

(assert (=> b!4802810 m!5787548))

(assert (=> b!4802518 d!1538155))

(declare-fun bs!1158205 () Bool)

(declare-fun d!1538157 () Bool)

(assert (= bs!1158205 (and d!1538157 d!1538149)))

(declare-fun lambda!232763 () Int)

(assert (=> bs!1158205 (= lambda!232763 lambda!232759)))

(declare-fun bs!1158206 () Bool)

(assert (= bs!1158206 (and d!1538157 d!1538141)))

(assert (=> bs!1158206 (= lambda!232763 lambda!232755)))

(declare-fun bs!1158207 () Bool)

(assert (= bs!1158207 (and d!1538157 start!495826)))

(assert (=> bs!1158207 (= lambda!232763 lambda!232719)))

(declare-fun bs!1158208 () Bool)

(assert (= bs!1158208 (and d!1538157 d!1538035)))

(assert (=> bs!1158208 (not (= lambda!232763 lambda!232728))))

(declare-fun bs!1158209 () Bool)

(assert (= bs!1158209 (and d!1538157 d!1538155)))

(assert (=> bs!1158209 (= lambda!232763 lambda!232760)))

(declare-fun bs!1158210 () Bool)

(assert (= bs!1158210 (and d!1538157 d!1538135)))

(assert (=> bs!1158210 (not (= lambda!232763 lambda!232754))))

(declare-fun bs!1158211 () Bool)

(assert (= bs!1158211 (and d!1538157 d!1538133)))

(assert (=> bs!1158211 (= lambda!232763 lambda!232753)))

(declare-fun bs!1158212 () Bool)

(assert (= bs!1158212 (and d!1538157 d!1538143)))

(assert (=> bs!1158212 (= lambda!232763 lambda!232756)))

(declare-fun bs!1158213 () Bool)

(assert (= bs!1158213 (and d!1538157 d!1538111)))

(assert (=> bs!1158213 (= lambda!232763 lambda!232750)))

(declare-fun bs!1158214 () Bool)

(assert (= bs!1158214 (and d!1538157 d!1538089)))

(assert (=> bs!1158214 (= lambda!232763 lambda!232746)))

(assert (=> d!1538157 (not (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896))))

(declare-fun lt!1957607 () Unit!140855)

(declare-fun choose!34728 (ListLongMap!5437 K!15909 Hashable!6968) Unit!140855)

(assert (=> d!1538157 (= lt!1957607 (choose!34728 lt!1957451 key!5896 hashF!1559))))

(assert (=> d!1538157 (forall!12343 (toList!7015 lt!1957451) lambda!232763)))

(assert (=> d!1538157 (= (lemmaHashNotInLongMapThenNotInGenerated!66 lt!1957451 key!5896 hashF!1559) lt!1957607)))

(declare-fun bs!1158215 () Bool)

(assert (= bs!1158215 d!1538157))

(assert (=> bs!1158215 m!5787132))

(assert (=> bs!1158215 m!5787132))

(assert (=> bs!1158215 m!5787138))

(declare-fun m!5787550 () Bool)

(assert (=> bs!1158215 m!5787550))

(declare-fun m!5787552 () Bool)

(assert (=> bs!1158215 m!5787552))

(assert (=> b!4802517 d!1538157))

(assert (=> b!4802517 d!1538147))

(assert (=> b!4802517 d!1538155))

(declare-fun b!4802816 () Bool)

(declare-fun e!2999304 () Bool)

(declare-fun tp!1358447 () Bool)

(declare-fun tp!1358448 () Bool)

(assert (=> b!4802816 (= e!2999304 (and tp!1358447 tp!1358448))))

(assert (=> b!4802525 (= tp!1358436 e!2999304)))

(assert (= (and b!4802525 ((_ is Cons!54339) (toList!7015 lm!2473))) b!4802816))

(declare-fun b_lambda!187815 () Bool)

(assert (= b_lambda!187813 (or start!495826 b_lambda!187815)))

(declare-fun bs!1158216 () Bool)

(declare-fun d!1538159 () Bool)

(assert (= bs!1158216 (and d!1538159 start!495826)))

(assert (=> bs!1158216 (= (dynLambda!22097 lambda!232719 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(declare-fun m!5787554 () Bool)

(assert (=> bs!1158216 m!5787554))

(assert (=> b!4802808 d!1538159))

(declare-fun b_lambda!187817 () Bool)

(assert (= b_lambda!187805 (or start!495826 b_lambda!187817)))

(declare-fun bs!1158217 () Bool)

(declare-fun d!1538161 () Bool)

(assert (= bs!1158217 (and d!1538161 start!495826)))

(assert (=> bs!1158217 (= (dynLambda!22097 lambda!232719 (h!60771 (toList!7015 lm!2473))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(declare-fun m!5787556 () Bool)

(assert (=> bs!1158217 m!5787556))

(assert (=> b!4802591 d!1538161))

(check-sat (not b!4802792) (not b!4802774) (not bs!1158216) (not b!4802796) (not b!4802577) (not b!4802807) (not b!4802592) tp_is_empty!33735 (not b!4802798) (not b!4802746) (not d!1538073) (not b!4802778) (not d!1538131) (not b!4802777) (not b!4802802) (not b!4802809) (not b!4802643) (not d!1538089) (not b!4802787) (not b!4802806) (not b!4802750) (not d!1538145) (not d!1538135) (not b!4802695) (not b!4802748) (not d!1538153) (not b!4802686) (not b!4802799) (not d!1538075) (not b!4802647) (not d!1538111) (not b!4802684) (not b!4802791) (not b!4802781) (not b!4802645) (not d!1538155) (not b!4802789) (not b!4802753) (not b_lambda!187817) (not d!1538147) (not b!4802800) (not d!1538157) (not b!4802553) (not b!4802738) (not bm!335431) (not d!1538127) (not d!1538051) (not d!1538149) (not d!1538141) (not d!1538053) (not b!4802650) (not b_lambda!187815) (not d!1538133) (not b!4802551) (not b!4802803) (not b!4802693) (not d!1538125) (not b!4802794) (not d!1538129) (not b!4802782) (not b!4802648) (not b!4802804) (not d!1538123) (not b!4802790) (not d!1538035) (not bs!1158217) (not bm!335430) (not b!4802810) (not b!4802755) (not b!4802752) (not d!1538049) (not d!1538143) (not b!4802779) (not b!4802775) (not b!4802816) tp_is_empty!33733 (not b!4802745) (not b!4802795) (not b!4802747))
(check-sat)
(get-model)

(declare-fun d!1538227 () Bool)

(declare-fun res!2043041 () Bool)

(declare-fun e!2999399 () Bool)

(assert (=> d!1538227 (=> res!2043041 e!2999399)))

(assert (=> d!1538227 (= res!2043041 (or ((_ is Nil!54339) (toList!7015 lm!2473)) ((_ is Nil!54339) (t!361913 (toList!7015 lm!2473)))))))

(assert (=> d!1538227 (= (isStrictlySorted!904 (toList!7015 lm!2473)) e!2999399)))

(declare-fun b!4802961 () Bool)

(declare-fun e!2999400 () Bool)

(assert (=> b!4802961 (= e!2999399 e!2999400)))

(declare-fun res!2043042 () Bool)

(assert (=> b!4802961 (=> (not res!2043042) (not e!2999400))))

(assert (=> b!4802961 (= res!2043042 (bvslt (_1!31815 (h!60771 (toList!7015 lm!2473))) (_1!31815 (h!60771 (t!361913 (toList!7015 lm!2473))))))))

(declare-fun b!4802962 () Bool)

(assert (=> b!4802962 (= e!2999400 (isStrictlySorted!904 (t!361913 (toList!7015 lm!2473))))))

(assert (= (and d!1538227 (not res!2043041)) b!4802961))

(assert (= (and b!4802961 res!2043042) b!4802962))

(declare-fun m!5787750 () Bool)

(assert (=> b!4802962 m!5787750))

(assert (=> d!1538049 d!1538227))

(declare-fun b!4802980 () Bool)

(assert (=> b!4802980 true))

(declare-fun d!1538239 () Bool)

(declare-fun e!2999413 () Bool)

(assert (=> d!1538239 e!2999413))

(declare-fun res!2043061 () Bool)

(assert (=> d!1538239 (=> (not res!2043061) (not e!2999413))))

(declare-fun lt!1957713 () List!54465)

(declare-fun noDuplicate!939 (List!54465) Bool)

(assert (=> d!1538239 (= res!2043061 (noDuplicate!939 lt!1957713))))

(assert (=> d!1538239 (= lt!1957713 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))

(assert (=> d!1538239 (= (keys!19871 (extractMap!2495 (toList!7015 lt!1957451))) lt!1957713)))

(declare-fun b!4802979 () Bool)

(declare-fun res!2043059 () Bool)

(assert (=> b!4802979 (=> (not res!2043059) (not e!2999413))))

(declare-fun length!734 (List!54465) Int)

(declare-fun length!735 (List!54462) Int)

(assert (=> b!4802979 (= res!2043059 (= (length!734 lt!1957713) (length!735 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))))

(declare-fun res!2043060 () Bool)

(assert (=> b!4802980 (=> (not res!2043060) (not e!2999413))))

(declare-fun lambda!232821 () Int)

(declare-fun forall!12346 (List!54465 Int) Bool)

(assert (=> b!4802980 (= res!2043060 (forall!12346 lt!1957713 lambda!232821))))

(declare-fun lambda!232822 () Int)

(declare-fun b!4802981 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9755 (List!54465) (InoxSet K!15909))

(declare-fun map!12284 (List!54462 Int) List!54465)

(assert (=> b!4802981 (= e!2999413 (= (content!9755 lt!1957713) (content!9755 (map!12284 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) lambda!232822))))))

(assert (= (and d!1538239 res!2043061) b!4802979))

(assert (= (and b!4802979 res!2043059) b!4802980))

(assert (= (and b!4802980 res!2043060) b!4802981))

(declare-fun m!5787770 () Bool)

(assert (=> d!1538239 m!5787770))

(assert (=> d!1538239 m!5787526))

(declare-fun m!5787772 () Bool)

(assert (=> b!4802979 m!5787772))

(declare-fun m!5787774 () Bool)

(assert (=> b!4802979 m!5787774))

(declare-fun m!5787776 () Bool)

(assert (=> b!4802980 m!5787776))

(declare-fun m!5787778 () Bool)

(assert (=> b!4802981 m!5787778))

(declare-fun m!5787780 () Bool)

(assert (=> b!4802981 m!5787780))

(assert (=> b!4802981 m!5787780))

(declare-fun m!5787786 () Bool)

(assert (=> b!4802981 m!5787786))

(assert (=> b!4802807 d!1538239))

(declare-fun b!4803000 () Bool)

(declare-fun e!2999426 () Bool)

(declare-fun e!2999428 () Bool)

(assert (=> b!4803000 (= e!2999426 e!2999428)))

(declare-fun res!2043072 () Bool)

(assert (=> b!4803000 (=> (not res!2043072) (not e!2999428))))

(declare-fun lt!1957716 () Option!13196)

(assert (=> b!4803000 (= res!2043072 (isDefined!10337 lt!1957716))))

(declare-fun b!4803001 () Bool)

(declare-fun e!2999427 () Option!13196)

(assert (=> b!4803001 (= e!2999427 (Some!13195 (h!60770 (t!361912 (apply!13041 lt!1957451 lt!1957457)))))))

(declare-fun b!4803002 () Bool)

(assert (=> b!4803002 (= e!2999428 (contains!17998 (t!361912 (apply!13041 lt!1957451 lt!1957457)) (get!18560 lt!1957716)))))

(declare-fun b!4803003 () Bool)

(declare-fun e!2999424 () Option!13196)

(assert (=> b!4803003 (= e!2999427 e!2999424)))

(declare-fun c!818696 () Bool)

(assert (=> b!4803003 (= c!818696 ((_ is Cons!54338) (t!361912 (apply!13041 lt!1957451 lt!1957457))))))

(declare-fun b!4803004 () Bool)

(assert (=> b!4803004 (= e!2999424 (getPair!940 (t!361912 (t!361912 (apply!13041 lt!1957451 lt!1957457))) key!5896))))

(declare-fun b!4803006 () Bool)

(assert (=> b!4803006 (= e!2999424 None!13195)))

(declare-fun e!2999425 () Bool)

(declare-fun b!4803007 () Bool)

(assert (=> b!4803007 (= e!2999425 (not (containsKey!4046 (t!361912 (apply!13041 lt!1957451 lt!1957457)) key!5896)))))

(declare-fun d!1538253 () Bool)

(assert (=> d!1538253 e!2999426))

(declare-fun res!2043071 () Bool)

(assert (=> d!1538253 (=> res!2043071 e!2999426)))

(assert (=> d!1538253 (= res!2043071 e!2999425)))

(declare-fun res!2043070 () Bool)

(assert (=> d!1538253 (=> (not res!2043070) (not e!2999425))))

(assert (=> d!1538253 (= res!2043070 (isEmpty!29515 lt!1957716))))

(assert (=> d!1538253 (= lt!1957716 e!2999427)))

(declare-fun c!818695 () Bool)

(assert (=> d!1538253 (= c!818695 (and ((_ is Cons!54338) (t!361912 (apply!13041 lt!1957451 lt!1957457))) (= (_1!31814 (h!60770 (t!361912 (apply!13041 lt!1957451 lt!1957457)))) key!5896)))))

(assert (=> d!1538253 (noDuplicateKeys!2366 (t!361912 (apply!13041 lt!1957451 lt!1957457)))))

(assert (=> d!1538253 (= (getPair!940 (t!361912 (apply!13041 lt!1957451 lt!1957457)) key!5896) lt!1957716)))

(declare-fun b!4803005 () Bool)

(declare-fun res!2043073 () Bool)

(assert (=> b!4803005 (=> (not res!2043073) (not e!2999428))))

(assert (=> b!4803005 (= res!2043073 (= (_1!31814 (get!18560 lt!1957716)) key!5896))))

(assert (= (and d!1538253 c!818695) b!4803001))

(assert (= (and d!1538253 (not c!818695)) b!4803003))

(assert (= (and b!4803003 c!818696) b!4803004))

(assert (= (and b!4803003 (not c!818696)) b!4803006))

(assert (= (and d!1538253 res!2043070) b!4803007))

(assert (= (and d!1538253 (not res!2043071)) b!4803000))

(assert (= (and b!4803000 res!2043072) b!4803005))

(assert (= (and b!4803005 res!2043073) b!4803002))

(declare-fun m!5787804 () Bool)

(assert (=> d!1538253 m!5787804))

(declare-fun m!5787806 () Bool)

(assert (=> d!1538253 m!5787806))

(declare-fun m!5787808 () Bool)

(assert (=> b!4803000 m!5787808))

(declare-fun m!5787810 () Bool)

(assert (=> b!4803004 m!5787810))

(declare-fun m!5787812 () Bool)

(assert (=> b!4803005 m!5787812))

(assert (=> b!4803002 m!5787812))

(assert (=> b!4803002 m!5787812))

(declare-fun m!5787814 () Bool)

(assert (=> b!4803002 m!5787814))

(declare-fun m!5787816 () Bool)

(assert (=> b!4803007 m!5787816))

(assert (=> b!4802647 d!1538253))

(declare-fun d!1538261 () Bool)

(assert (=> d!1538261 (= (tail!9338 (toList!7015 lm!2473)) (t!361913 (toList!7015 lm!2473)))))

(assert (=> d!1538153 d!1538261))

(declare-fun lt!1957721 () Bool)

(declare-fun d!1538263 () Bool)

(declare-fun content!9756 (List!54462) (InoxSet tuple2!57040))

(assert (=> d!1538263 (= lt!1957721 (select (content!9756 (apply!13041 lt!1957451 lt!1957457)) (get!18560 lt!1957514)))))

(declare-fun e!2999443 () Bool)

(assert (=> d!1538263 (= lt!1957721 e!2999443)))

(declare-fun res!2043082 () Bool)

(assert (=> d!1538263 (=> (not res!2043082) (not e!2999443))))

(assert (=> d!1538263 (= res!2043082 ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457)))))

(assert (=> d!1538263 (= (contains!17998 (apply!13041 lt!1957451 lt!1957457) (get!18560 lt!1957514)) lt!1957721)))

(declare-fun b!4803029 () Bool)

(declare-fun e!2999444 () Bool)

(assert (=> b!4803029 (= e!2999443 e!2999444)))

(declare-fun res!2043081 () Bool)

(assert (=> b!4803029 (=> res!2043081 e!2999444)))

(assert (=> b!4803029 (= res!2043081 (= (h!60770 (apply!13041 lt!1957451 lt!1957457)) (get!18560 lt!1957514)))))

(declare-fun b!4803030 () Bool)

(assert (=> b!4803030 (= e!2999444 (contains!17998 (t!361912 (apply!13041 lt!1957451 lt!1957457)) (get!18560 lt!1957514)))))

(assert (= (and d!1538263 res!2043082) b!4803029))

(assert (= (and b!4803029 (not res!2043081)) b!4803030))

(assert (=> d!1538263 m!5787164))

(declare-fun m!5787826 () Bool)

(assert (=> d!1538263 m!5787826))

(assert (=> d!1538263 m!5787266))

(declare-fun m!5787828 () Bool)

(assert (=> d!1538263 m!5787828))

(assert (=> b!4803030 m!5787266))

(declare-fun m!5787830 () Bool)

(assert (=> b!4803030 m!5787830))

(assert (=> b!4802645 d!1538263))

(declare-fun d!1538269 () Bool)

(assert (=> d!1538269 (= (get!18560 lt!1957514) (v!48528 lt!1957514))))

(assert (=> b!4802645 d!1538269))

(declare-fun d!1538277 () Bool)

(assert (=> d!1538277 (= (isEmpty!29515 lt!1957514) (not ((_ is Some!13195) lt!1957514)))))

(assert (=> d!1538053 d!1538277))

(declare-fun d!1538279 () Bool)

(declare-fun res!2043092 () Bool)

(declare-fun e!2999454 () Bool)

(assert (=> d!1538279 (=> res!2043092 e!2999454)))

(assert (=> d!1538279 (= res!2043092 (not ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457))))))

(assert (=> d!1538279 (= (noDuplicateKeys!2366 (apply!13041 lt!1957451 lt!1957457)) e!2999454)))

(declare-fun b!4803040 () Bool)

(declare-fun e!2999455 () Bool)

(assert (=> b!4803040 (= e!2999454 e!2999455)))

(declare-fun res!2043093 () Bool)

(assert (=> b!4803040 (=> (not res!2043093) (not e!2999455))))

(assert (=> b!4803040 (= res!2043093 (not (containsKey!4046 (t!361912 (apply!13041 lt!1957451 lt!1957457)) (_1!31814 (h!60770 (apply!13041 lt!1957451 lt!1957457))))))))

(declare-fun b!4803041 () Bool)

(assert (=> b!4803041 (= e!2999455 (noDuplicateKeys!2366 (t!361912 (apply!13041 lt!1957451 lt!1957457))))))

(assert (= (and d!1538279 (not res!2043092)) b!4803040))

(assert (= (and b!4803040 res!2043093) b!4803041))

(declare-fun m!5787840 () Bool)

(assert (=> b!4803040 m!5787840))

(assert (=> b!4803041 m!5787806))

(assert (=> d!1538053 d!1538279))

(declare-fun d!1538283 () Bool)

(declare-fun res!2043094 () Bool)

(declare-fun e!2999456 () Bool)

(assert (=> d!1538283 (=> res!2043094 e!2999456)))

(assert (=> d!1538283 (= res!2043094 (not ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(assert (=> d!1538283 (= (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) e!2999456)))

(declare-fun b!4803042 () Bool)

(declare-fun e!2999457 () Bool)

(assert (=> b!4803042 (= e!2999456 e!2999457)))

(declare-fun res!2043095 () Bool)

(assert (=> b!4803042 (=> (not res!2043095) (not e!2999457))))

(assert (=> b!4803042 (= res!2043095 (not (containsKey!4046 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))))

(declare-fun b!4803043 () Bool)

(assert (=> b!4803043 (= e!2999457 (noDuplicateKeys!2366 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(assert (= (and d!1538283 (not res!2043094)) b!4803042))

(assert (= (and b!4803042 res!2043095) b!4803043))

(declare-fun m!5787842 () Bool)

(assert (=> b!4803042 m!5787842))

(declare-fun m!5787844 () Bool)

(assert (=> b!4803043 m!5787844))

(assert (=> bs!1158216 d!1538283))

(declare-fun d!1538285 () Bool)

(assert (=> d!1538285 (= (get!18560 (getPair!940 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896)) (v!48528 (getPair!940 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896)))))

(assert (=> b!4802745 d!1538285))

(declare-fun b!4803044 () Bool)

(declare-fun e!2999460 () Bool)

(declare-fun e!2999462 () Bool)

(assert (=> b!4803044 (= e!2999460 e!2999462)))

(declare-fun res!2043098 () Bool)

(assert (=> b!4803044 (=> (not res!2043098) (not e!2999462))))

(declare-fun lt!1957729 () Option!13196)

(assert (=> b!4803044 (= res!2043098 (isDefined!10337 lt!1957729))))

(declare-fun b!4803045 () Bool)

(declare-fun e!2999461 () Option!13196)

(assert (=> b!4803045 (= e!2999461 (Some!13195 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(declare-fun b!4803046 () Bool)

(assert (=> b!4803046 (= e!2999462 (contains!17998 (_2!31815 (h!60771 (toList!7015 lm!2473))) (get!18560 lt!1957729)))))

(declare-fun b!4803047 () Bool)

(declare-fun e!2999458 () Option!13196)

(assert (=> b!4803047 (= e!2999461 e!2999458)))

(declare-fun c!818705 () Bool)

(assert (=> b!4803047 (= c!818705 ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(declare-fun b!4803048 () Bool)

(assert (=> b!4803048 (= e!2999458 (getPair!940 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) key!5896))))

(declare-fun b!4803050 () Bool)

(assert (=> b!4803050 (= e!2999458 None!13195)))

(declare-fun b!4803051 () Bool)

(declare-fun e!2999459 () Bool)

(assert (=> b!4803051 (= e!2999459 (not (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896)))))

(declare-fun d!1538287 () Bool)

(assert (=> d!1538287 e!2999460))

(declare-fun res!2043097 () Bool)

(assert (=> d!1538287 (=> res!2043097 e!2999460)))

(assert (=> d!1538287 (= res!2043097 e!2999459)))

(declare-fun res!2043096 () Bool)

(assert (=> d!1538287 (=> (not res!2043096) (not e!2999459))))

(assert (=> d!1538287 (= res!2043096 (isEmpty!29515 lt!1957729))))

(assert (=> d!1538287 (= lt!1957729 e!2999461)))

(declare-fun c!818704 () Bool)

(assert (=> d!1538287 (= c!818704 (and ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473)))) (= (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))) key!5896)))))

(assert (=> d!1538287 (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473))))))

(assert (=> d!1538287 (= (getPair!940 (_2!31815 (h!60771 (toList!7015 lm!2473))) key!5896) lt!1957729)))

(declare-fun b!4803049 () Bool)

(declare-fun res!2043099 () Bool)

(assert (=> b!4803049 (=> (not res!2043099) (not e!2999462))))

(assert (=> b!4803049 (= res!2043099 (= (_1!31814 (get!18560 lt!1957729)) key!5896))))

(assert (= (and d!1538287 c!818704) b!4803045))

(assert (= (and d!1538287 (not c!818704)) b!4803047))

(assert (= (and b!4803047 c!818705) b!4803048))

(assert (= (and b!4803047 (not c!818705)) b!4803050))

(assert (= (and d!1538287 res!2043096) b!4803051))

(assert (= (and d!1538287 (not res!2043097)) b!4803044))

(assert (= (and b!4803044 res!2043098) b!4803049))

(assert (= (and b!4803049 res!2043099) b!4803046))

(declare-fun m!5787856 () Bool)

(assert (=> d!1538287 m!5787856))

(assert (=> d!1538287 m!5787556))

(declare-fun m!5787858 () Bool)

(assert (=> b!4803044 m!5787858))

(declare-fun m!5787860 () Bool)

(assert (=> b!4803048 m!5787860))

(declare-fun m!5787862 () Bool)

(assert (=> b!4803049 m!5787862))

(assert (=> b!4803046 m!5787862))

(assert (=> b!4803046 m!5787862))

(declare-fun m!5787864 () Bool)

(assert (=> b!4803046 m!5787864))

(assert (=> b!4803051 m!5787148))

(assert (=> b!4802745 d!1538287))

(declare-fun d!1538293 () Bool)

(assert (=> d!1538293 (= (isEmpty!29515 (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896)) (not ((_ is Some!13195) (getPair!940 (apply!13041 lt!1957451 lt!1957457) key!5896))))))

(assert (=> d!1538051 d!1538293))

(assert (=> b!4802747 d!1538043))

(declare-fun d!1538295 () Bool)

(declare-fun noDuplicatedKeys!456 (List!54462) Bool)

(assert (=> d!1538295 (= (invariantList!1758 (toList!7016 lt!1957604)) (noDuplicatedKeys!456 (toList!7016 lt!1957604)))))

(declare-fun bs!1158257 () Bool)

(assert (= bs!1158257 d!1538295))

(declare-fun m!5787866 () Bool)

(assert (=> bs!1158257 m!5787866))

(assert (=> d!1538155 d!1538295))

(declare-fun d!1538297 () Bool)

(declare-fun res!2043103 () Bool)

(declare-fun e!2999467 () Bool)

(assert (=> d!1538297 (=> res!2043103 e!2999467)))

(assert (=> d!1538297 (= res!2043103 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538297 (= (forall!12343 (toList!7015 lt!1957451) lambda!232760) e!2999467)))

(declare-fun b!4803057 () Bool)

(declare-fun e!2999468 () Bool)

(assert (=> b!4803057 (= e!2999467 e!2999468)))

(declare-fun res!2043104 () Bool)

(assert (=> b!4803057 (=> (not res!2043104) (not e!2999468))))

(assert (=> b!4803057 (= res!2043104 (dynLambda!22097 lambda!232760 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803058 () Bool)

(assert (=> b!4803058 (= e!2999468 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232760))))

(assert (= (and d!1538297 (not res!2043103)) b!4803057))

(assert (= (and b!4803057 res!2043104) b!4803058))

(declare-fun b_lambda!187823 () Bool)

(assert (=> (not b_lambda!187823) (not b!4803057)))

(declare-fun m!5787868 () Bool)

(assert (=> b!4803057 m!5787868))

(declare-fun m!5787870 () Bool)

(assert (=> b!4803058 m!5787870))

(assert (=> d!1538155 d!1538297))

(declare-fun d!1538299 () Bool)

(assert (=> d!1538299 (= (get!18560 lt!1957559) (v!48528 lt!1957559))))

(assert (=> b!4802753 d!1538299))

(declare-fun d!1538301 () Bool)

(declare-fun lt!1957737 () Bool)

(assert (=> d!1538301 (= lt!1957737 (select (content!9755 e!2999278) key!5896))))

(declare-fun e!2999484 () Bool)

(assert (=> d!1538301 (= lt!1957737 e!2999484)))

(declare-fun res!2043118 () Bool)

(assert (=> d!1538301 (=> (not res!2043118) (not e!2999484))))

(assert (=> d!1538301 (= res!2043118 ((_ is Cons!54341) e!2999278))))

(assert (=> d!1538301 (= (contains!17999 e!2999278 key!5896) lt!1957737)))

(declare-fun b!4803076 () Bool)

(declare-fun e!2999485 () Bool)

(assert (=> b!4803076 (= e!2999484 e!2999485)))

(declare-fun res!2043119 () Bool)

(assert (=> b!4803076 (=> res!2043119 e!2999485)))

(assert (=> b!4803076 (= res!2043119 (= (h!60773 e!2999278) key!5896))))

(declare-fun b!4803077 () Bool)

(assert (=> b!4803077 (= e!2999485 (contains!17999 (t!361915 e!2999278) key!5896))))

(assert (= (and d!1538301 res!2043118) b!4803076))

(assert (= (and b!4803076 (not res!2043119)) b!4803077))

(declare-fun m!5787892 () Bool)

(assert (=> d!1538301 m!5787892))

(declare-fun m!5787894 () Bool)

(assert (=> d!1538301 m!5787894))

(declare-fun m!5787896 () Bool)

(assert (=> b!4803077 m!5787896))

(assert (=> bm!335430 d!1538301))

(declare-fun d!1538317 () Bool)

(declare-fun res!2043120 () Bool)

(declare-fun e!2999486 () Bool)

(assert (=> d!1538317 (=> res!2043120 e!2999486)))

(declare-fun e!2999488 () Bool)

(assert (=> d!1538317 (= res!2043120 e!2999488)))

(declare-fun res!2043121 () Bool)

(assert (=> d!1538317 (=> (not res!2043121) (not e!2999488))))

(assert (=> d!1538317 (= res!2043121 ((_ is Cons!54339) (t!361913 (toList!7015 lt!1957451))))))

(assert (=> d!1538317 (= (containsKeyBiggerList!610 (t!361913 (toList!7015 lt!1957451)) key!5896) e!2999486)))

(declare-fun b!4803078 () Bool)

(assert (=> b!4803078 (= e!2999488 (containsKey!4046 (_2!31815 (h!60771 (t!361913 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun b!4803079 () Bool)

(declare-fun e!2999487 () Bool)

(assert (=> b!4803079 (= e!2999486 e!2999487)))

(declare-fun res!2043122 () Bool)

(assert (=> b!4803079 (=> (not res!2043122) (not e!2999487))))

(assert (=> b!4803079 (= res!2043122 ((_ is Cons!54339) (t!361913 (toList!7015 lt!1957451))))))

(declare-fun b!4803080 () Bool)

(assert (=> b!4803080 (= e!2999487 (containsKeyBiggerList!610 (t!361913 (t!361913 (toList!7015 lt!1957451))) key!5896))))

(assert (= (and d!1538317 res!2043121) b!4803078))

(assert (= (and d!1538317 (not res!2043120)) b!4803079))

(assert (= (and b!4803079 res!2043122) b!4803080))

(declare-fun m!5787898 () Bool)

(assert (=> b!4803078 m!5787898))

(declare-fun m!5787900 () Bool)

(assert (=> b!4803080 m!5787900))

(assert (=> b!4802794 d!1538317))

(declare-fun d!1538319 () Bool)

(assert (=> d!1538319 (= (get!18560 (getPair!940 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896)) (v!48528 (getPair!940 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896)))))

(assert (=> b!4802789 d!1538319))

(declare-fun b!4803081 () Bool)

(declare-fun e!2999491 () Bool)

(declare-fun e!2999493 () Bool)

(assert (=> b!4803081 (= e!2999491 e!2999493)))

(declare-fun res!2043125 () Bool)

(assert (=> b!4803081 (=> (not res!2043125) (not e!2999493))))

(declare-fun lt!1957738 () Option!13196)

(assert (=> b!4803081 (= res!2043125 (isDefined!10337 lt!1957738))))

(declare-fun b!4803082 () Bool)

(declare-fun e!2999492 () Option!13196)

(assert (=> b!4803082 (= e!2999492 (Some!13195 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(declare-fun b!4803083 () Bool)

(assert (=> b!4803083 (= e!2999493 (contains!17998 (_2!31815 (h!60771 (toList!7015 lt!1957451))) (get!18560 lt!1957738)))))

(declare-fun b!4803084 () Bool)

(declare-fun e!2999489 () Option!13196)

(assert (=> b!4803084 (= e!2999492 e!2999489)))

(declare-fun c!818710 () Bool)

(assert (=> b!4803084 (= c!818710 ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(declare-fun b!4803085 () Bool)

(assert (=> b!4803085 (= e!2999489 (getPair!940 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun b!4803087 () Bool)

(assert (=> b!4803087 (= e!2999489 None!13195)))

(declare-fun b!4803088 () Bool)

(declare-fun e!2999490 () Bool)

(assert (=> b!4803088 (= e!2999490 (not (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896)))))

(declare-fun d!1538321 () Bool)

(assert (=> d!1538321 e!2999491))

(declare-fun res!2043124 () Bool)

(assert (=> d!1538321 (=> res!2043124 e!2999491)))

(assert (=> d!1538321 (= res!2043124 e!2999490)))

(declare-fun res!2043123 () Bool)

(assert (=> d!1538321 (=> (not res!2043123) (not e!2999490))))

(assert (=> d!1538321 (= res!2043123 (isEmpty!29515 lt!1957738))))

(assert (=> d!1538321 (= lt!1957738 e!2999492)))

(declare-fun c!818709 () Bool)

(assert (=> d!1538321 (= c!818709 (and ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451)))) (= (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))) key!5896)))))

(assert (=> d!1538321 (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))

(assert (=> d!1538321 (= (getPair!940 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896) lt!1957738)))

(declare-fun b!4803086 () Bool)

(declare-fun res!2043126 () Bool)

(assert (=> b!4803086 (=> (not res!2043126) (not e!2999493))))

(assert (=> b!4803086 (= res!2043126 (= (_1!31814 (get!18560 lt!1957738)) key!5896))))

(assert (= (and d!1538321 c!818709) b!4803082))

(assert (= (and d!1538321 (not c!818709)) b!4803084))

(assert (= (and b!4803084 c!818710) b!4803085))

(assert (= (and b!4803084 (not c!818710)) b!4803087))

(assert (= (and d!1538321 res!2043123) b!4803088))

(assert (= (and d!1538321 (not res!2043124)) b!4803081))

(assert (= (and b!4803081 res!2043125) b!4803086))

(assert (= (and b!4803086 res!2043126) b!4803083))

(declare-fun m!5787902 () Bool)

(assert (=> d!1538321 m!5787902))

(assert (=> d!1538321 m!5787554))

(declare-fun m!5787904 () Bool)

(assert (=> b!4803081 m!5787904))

(declare-fun m!5787906 () Bool)

(assert (=> b!4803085 m!5787906))

(declare-fun m!5787908 () Bool)

(assert (=> b!4803086 m!5787908))

(assert (=> b!4803083 m!5787908))

(assert (=> b!4803083 m!5787908))

(declare-fun m!5787910 () Bool)

(assert (=> b!4803083 m!5787910))

(assert (=> b!4803088 m!5787480))

(assert (=> b!4802789 d!1538321))

(declare-fun d!1538323 () Bool)

(assert (=> d!1538323 (= (get!18561 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457)) (v!48531 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457)))))

(assert (=> d!1538073 d!1538323))

(declare-fun b!4803098 () Bool)

(declare-fun e!2999498 () Option!13199)

(declare-fun e!2999499 () Option!13199)

(assert (=> b!4803098 (= e!2999498 e!2999499)))

(declare-fun c!818716 () Bool)

(assert (=> b!4803098 (= c!818716 (and ((_ is Cons!54339) (toList!7015 lt!1957451)) (not (= (_1!31815 (h!60771 (toList!7015 lt!1957451))) lt!1957457))))))

(declare-fun b!4803099 () Bool)

(assert (=> b!4803099 (= e!2999499 (getValueByKey!2406 (t!361913 (toList!7015 lt!1957451)) lt!1957457))))

(declare-fun d!1538325 () Bool)

(declare-fun c!818715 () Bool)

(assert (=> d!1538325 (= c!818715 (and ((_ is Cons!54339) (toList!7015 lt!1957451)) (= (_1!31815 (h!60771 (toList!7015 lt!1957451))) lt!1957457)))))

(assert (=> d!1538325 (= (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457) e!2999498)))

(declare-fun b!4803097 () Bool)

(assert (=> b!4803097 (= e!2999498 (Some!13198 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(declare-fun b!4803100 () Bool)

(assert (=> b!4803100 (= e!2999499 None!13198)))

(assert (= (and d!1538325 c!818715) b!4803097))

(assert (= (and d!1538325 (not c!818715)) b!4803098))

(assert (= (and b!4803098 c!818716) b!4803099))

(assert (= (and b!4803098 (not c!818716)) b!4803100))

(declare-fun m!5787912 () Bool)

(assert (=> b!4803099 m!5787912))

(assert (=> d!1538073 d!1538325))

(declare-fun d!1538327 () Bool)

(declare-fun res!2043131 () Bool)

(declare-fun e!2999504 () Bool)

(assert (=> d!1538327 (=> res!2043131 e!2999504)))

(assert (=> d!1538327 (= res!2043131 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) key!5896)))))

(assert (=> d!1538327 (= (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) e!2999504)))

(declare-fun b!4803105 () Bool)

(declare-fun e!2999506 () Bool)

(assert (=> b!4803105 (= e!2999504 e!2999506)))

(declare-fun res!2043133 () Bool)

(assert (=> b!4803105 (=> (not res!2043133) (not e!2999506))))

(assert (=> b!4803105 (= res!2043133 ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))

(declare-fun b!4803107 () Bool)

(assert (=> b!4803107 (= e!2999506 (containsKey!4050 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896))))

(assert (= (and d!1538327 (not res!2043131)) b!4803105))

(assert (= (and b!4803105 res!2043133) b!4803107))

(declare-fun m!5787914 () Bool)

(assert (=> b!4803107 m!5787914))

(assert (=> d!1538147 d!1538327))

(declare-fun d!1538331 () Bool)

(assert (=> d!1538331 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(declare-fun lt!1957742 () Unit!140855)

(declare-fun choose!34733 (List!54462 K!15909) Unit!140855)

(assert (=> d!1538331 (= lt!1957742 (choose!34733 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(assert (=> d!1538331 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))

(assert (=> d!1538331 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2198 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896) lt!1957742)))

(declare-fun bs!1158261 () Bool)

(assert (= bs!1158261 d!1538331))

(assert (=> bs!1158261 m!5787458))

(assert (=> bs!1158261 m!5787458))

(assert (=> bs!1158261 m!5787460))

(declare-fun m!5787928 () Bool)

(assert (=> bs!1158261 m!5787928))

(declare-fun m!5787930 () Bool)

(assert (=> bs!1158261 m!5787930))

(assert (=> b!4802777 d!1538331))

(declare-fun d!1538343 () Bool)

(declare-fun isEmpty!29518 (Option!13200) Bool)

(assert (=> d!1538343 (= (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896)) (not (isEmpty!29518 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))))

(declare-fun bs!1158264 () Bool)

(assert (= bs!1158264 d!1538343))

(assert (=> bs!1158264 m!5787458))

(declare-fun m!5787938 () Bool)

(assert (=> bs!1158264 m!5787938))

(assert (=> b!4802777 d!1538343))

(declare-fun b!4803143 () Bool)

(declare-fun e!2999527 () Option!13200)

(declare-fun e!2999528 () Option!13200)

(assert (=> b!4803143 (= e!2999527 e!2999528)))

(declare-fun c!818729 () Bool)

(assert (=> b!4803143 (= c!818729 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (not (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) key!5896))))))

(declare-fun d!1538349 () Bool)

(declare-fun c!818728 () Bool)

(assert (=> d!1538349 (= c!818728 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) key!5896)))))

(assert (=> d!1538349 (= (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896) e!2999527)))

(declare-fun b!4803142 () Bool)

(assert (=> b!4803142 (= e!2999527 (Some!13199 (_2!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))))

(declare-fun b!4803144 () Bool)

(assert (=> b!4803144 (= e!2999528 (getValueByKey!2407 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) key!5896))))

(declare-fun b!4803145 () Bool)

(assert (=> b!4803145 (= e!2999528 None!13199)))

(assert (= (and d!1538349 c!818728) b!4803142))

(assert (= (and d!1538349 (not c!818728)) b!4803143))

(assert (= (and b!4803143 c!818729) b!4803144))

(assert (= (and b!4803143 (not c!818729)) b!4803145))

(declare-fun m!5787956 () Bool)

(assert (=> b!4803144 m!5787956))

(assert (=> b!4802777 d!1538349))

(declare-fun d!1538359 () Bool)

(assert (=> d!1538359 (contains!17999 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) key!5896)))

(declare-fun lt!1957755 () Unit!140855)

(declare-fun choose!34734 (List!54462 K!15909) Unit!140855)

(assert (=> d!1538359 (= lt!1957755 (choose!34734 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(assert (=> d!1538359 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))

(assert (=> d!1538359 (= (lemmaInListThenGetKeysListContains!1099 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896) lt!1957755)))

(declare-fun bs!1158286 () Bool)

(assert (= bs!1158286 d!1538359))

(assert (=> bs!1158286 m!5787464))

(assert (=> bs!1158286 m!5787464))

(declare-fun m!5787984 () Bool)

(assert (=> bs!1158286 m!5787984))

(declare-fun m!5787986 () Bool)

(assert (=> bs!1158286 m!5787986))

(assert (=> bs!1158286 m!5787930))

(assert (=> b!4802777 d!1538359))

(declare-fun d!1538365 () Bool)

(declare-fun res!2043149 () Bool)

(declare-fun e!2999532 () Bool)

(assert (=> d!1538365 (=> res!2043149 e!2999532)))

(assert (=> d!1538365 (= res!2043149 ((_ is Nil!54339) (t!361913 (toList!7015 lm!2473))))))

(assert (=> d!1538365 (= (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232719) e!2999532)))

(declare-fun b!4803149 () Bool)

(declare-fun e!2999533 () Bool)

(assert (=> b!4803149 (= e!2999532 e!2999533)))

(declare-fun res!2043150 () Bool)

(assert (=> b!4803149 (=> (not res!2043150) (not e!2999533))))

(assert (=> b!4803149 (= res!2043150 (dynLambda!22097 lambda!232719 (h!60771 (t!361913 (toList!7015 lm!2473)))))))

(declare-fun b!4803150 () Bool)

(assert (=> b!4803150 (= e!2999533 (forall!12343 (t!361913 (t!361913 (toList!7015 lm!2473))) lambda!232719))))

(assert (= (and d!1538365 (not res!2043149)) b!4803149))

(assert (= (and b!4803149 res!2043150) b!4803150))

(declare-fun b_lambda!187833 () Bool)

(assert (=> (not b_lambda!187833) (not b!4803149)))

(declare-fun m!5787988 () Bool)

(assert (=> b!4803149 m!5787988))

(declare-fun m!5787990 () Bool)

(assert (=> b!4803150 m!5787990))

(assert (=> b!4802592 d!1538365))

(declare-fun d!1538367 () Bool)

(declare-fun lt!1957756 () Bool)

(assert (=> d!1538367 (= lt!1957756 (select (content!9755 e!2999295) key!5896))))

(declare-fun e!2999534 () Bool)

(assert (=> d!1538367 (= lt!1957756 e!2999534)))

(declare-fun res!2043151 () Bool)

(assert (=> d!1538367 (=> (not res!2043151) (not e!2999534))))

(assert (=> d!1538367 (= res!2043151 ((_ is Cons!54341) e!2999295))))

(assert (=> d!1538367 (= (contains!17999 e!2999295 key!5896) lt!1957756)))

(declare-fun b!4803151 () Bool)

(declare-fun e!2999535 () Bool)

(assert (=> b!4803151 (= e!2999534 e!2999535)))

(declare-fun res!2043152 () Bool)

(assert (=> b!4803151 (=> res!2043152 e!2999535)))

(assert (=> b!4803151 (= res!2043152 (= (h!60773 e!2999295) key!5896))))

(declare-fun b!4803152 () Bool)

(assert (=> b!4803152 (= e!2999535 (contains!17999 (t!361915 e!2999295) key!5896))))

(assert (= (and d!1538367 res!2043151) b!4803151))

(assert (= (and b!4803151 (not res!2043152)) b!4803152))

(declare-fun m!5787994 () Bool)

(assert (=> d!1538367 m!5787994))

(declare-fun m!5787996 () Bool)

(assert (=> d!1538367 m!5787996))

(declare-fun m!5787998 () Bool)

(assert (=> b!4803152 m!5787998))

(assert (=> bm!335431 d!1538367))

(declare-fun d!1538371 () Bool)

(declare-fun res!2043155 () Bool)

(declare-fun e!2999538 () Bool)

(assert (=> d!1538371 (=> res!2043155 e!2999538)))

(assert (=> d!1538371 (= res!2043155 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) key!5896)))))

(assert (=> d!1538371 (= (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896) e!2999538)))

(declare-fun b!4803155 () Bool)

(declare-fun e!2999539 () Bool)

(assert (=> b!4803155 (= e!2999538 e!2999539)))

(declare-fun res!2043156 () Bool)

(assert (=> b!4803155 (=> (not res!2043156) (not e!2999539))))

(assert (=> b!4803155 (= res!2043156 ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))

(declare-fun b!4803156 () Bool)

(assert (=> b!4803156 (= e!2999539 (containsKey!4050 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) key!5896))))

(assert (= (and d!1538371 (not res!2043155)) b!4803155))

(assert (= (and b!4803155 res!2043156) b!4803156))

(declare-fun m!5788004 () Bool)

(assert (=> b!4803156 m!5788004))

(assert (=> b!4802781 d!1538371))

(declare-fun d!1538375 () Bool)

(assert (=> d!1538375 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896)))

(declare-fun lt!1957759 () Unit!140855)

(declare-fun choose!34735 (List!54462 K!15909) Unit!140855)

(assert (=> d!1538375 (= lt!1957759 (choose!34735 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896))))

(assert (=> d!1538375 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))

(assert (=> d!1538375 (= (lemmaInGetKeysListThenContainsKey!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) key!5896) lt!1957759)))

(declare-fun bs!1158289 () Bool)

(assert (= bs!1158289 d!1538375))

(assert (=> bs!1158289 m!5787454))

(declare-fun m!5788018 () Bool)

(assert (=> bs!1158289 m!5788018))

(assert (=> bs!1158289 m!5787930))

(assert (=> b!4802781 d!1538375))

(declare-fun d!1538385 () Bool)

(declare-fun res!2043174 () Bool)

(declare-fun e!2999559 () Bool)

(assert (=> d!1538385 (=> res!2043174 e!2999559)))

(assert (=> d!1538385 (= res!2043174 (and ((_ is Cons!54339) (toList!7015 lt!1957451)) (= (_1!31815 (h!60771 (toList!7015 lt!1957451))) lt!1957457)))))

(assert (=> d!1538385 (= (containsKey!4049 (toList!7015 lt!1957451) lt!1957457) e!2999559)))

(declare-fun b!4803180 () Bool)

(declare-fun e!2999560 () Bool)

(assert (=> b!4803180 (= e!2999559 e!2999560)))

(declare-fun res!2043175 () Bool)

(assert (=> b!4803180 (=> (not res!2043175) (not e!2999560))))

(assert (=> b!4803180 (= res!2043175 (and (or (not ((_ is Cons!54339) (toList!7015 lt!1957451))) (bvsle (_1!31815 (h!60771 (toList!7015 lt!1957451))) lt!1957457)) ((_ is Cons!54339) (toList!7015 lt!1957451)) (bvslt (_1!31815 (h!60771 (toList!7015 lt!1957451))) lt!1957457)))))

(declare-fun b!4803181 () Bool)

(assert (=> b!4803181 (= e!2999560 (containsKey!4049 (t!361913 (toList!7015 lt!1957451)) lt!1957457))))

(assert (= (and d!1538385 (not res!2043174)) b!4803180))

(assert (= (and b!4803180 res!2043175) b!4803181))

(declare-fun m!5788044 () Bool)

(assert (=> b!4803181 m!5788044))

(assert (=> d!1538145 d!1538385))

(declare-fun d!1538399 () Bool)

(declare-fun res!2043178 () Bool)

(declare-fun e!2999563 () Bool)

(assert (=> d!1538399 (=> res!2043178 e!2999563)))

(assert (=> d!1538399 (= res!2043178 ((_ is Nil!54339) (t!361913 (toList!7015 lt!1957451))))))

(assert (=> d!1538399 (= (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232719) e!2999563)))

(declare-fun b!4803184 () Bool)

(declare-fun e!2999564 () Bool)

(assert (=> b!4803184 (= e!2999563 e!2999564)))

(declare-fun res!2043179 () Bool)

(assert (=> b!4803184 (=> (not res!2043179) (not e!2999564))))

(assert (=> b!4803184 (= res!2043179 (dynLambda!22097 lambda!232719 (h!60771 (t!361913 (toList!7015 lt!1957451)))))))

(declare-fun b!4803185 () Bool)

(assert (=> b!4803185 (= e!2999564 (forall!12343 (t!361913 (t!361913 (toList!7015 lt!1957451))) lambda!232719))))

(assert (= (and d!1538399 (not res!2043178)) b!4803184))

(assert (= (and b!4803184 res!2043179) b!4803185))

(declare-fun b_lambda!187841 () Bool)

(assert (=> (not b_lambda!187841) (not b!4803184)))

(declare-fun m!5788050 () Bool)

(assert (=> b!4803184 m!5788050))

(declare-fun m!5788052 () Bool)

(assert (=> b!4803185 m!5788052))

(assert (=> b!4802809 d!1538399))

(declare-fun d!1538403 () Bool)

(declare-fun lt!1957768 () Bool)

(assert (=> d!1538403 (= lt!1957768 (select (content!9755 (keys!19871 (extractMap!2495 (toList!7015 lm!2473)))) key!5896))))

(declare-fun e!2999566 () Bool)

(assert (=> d!1538403 (= lt!1957768 e!2999566)))

(declare-fun res!2043180 () Bool)

(assert (=> d!1538403 (=> (not res!2043180) (not e!2999566))))

(assert (=> d!1538403 (= res!2043180 ((_ is Cons!54341) (keys!19871 (extractMap!2495 (toList!7015 lm!2473)))))))

(assert (=> d!1538403 (= (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lm!2473))) key!5896) lt!1957768)))

(declare-fun b!4803188 () Bool)

(declare-fun e!2999567 () Bool)

(assert (=> b!4803188 (= e!2999566 e!2999567)))

(declare-fun res!2043181 () Bool)

(assert (=> b!4803188 (=> res!2043181 e!2999567)))

(assert (=> b!4803188 (= res!2043181 (= (h!60773 (keys!19871 (extractMap!2495 (toList!7015 lm!2473)))) key!5896))))

(declare-fun b!4803189 () Bool)

(assert (=> b!4803189 (= e!2999567 (contains!17999 (t!361915 (keys!19871 (extractMap!2495 (toList!7015 lm!2473)))) key!5896))))

(assert (= (and d!1538403 res!2043180) b!4803188))

(assert (= (and b!4803188 (not res!2043181)) b!4803189))

(assert (=> d!1538403 m!5787450))

(declare-fun m!5788058 () Bool)

(assert (=> d!1538403 m!5788058))

(declare-fun m!5788060 () Bool)

(assert (=> d!1538403 m!5788060))

(declare-fun m!5788062 () Bool)

(assert (=> b!4803189 m!5788062))

(assert (=> b!4802779 d!1538403))

(declare-fun bs!1158294 () Bool)

(declare-fun b!4803193 () Bool)

(assert (= bs!1158294 (and b!4803193 b!4802980)))

(declare-fun lambda!232827 () Int)

(assert (=> bs!1158294 (= (= (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232827 lambda!232821))))

(assert (=> b!4803193 true))

(declare-fun bs!1158295 () Bool)

(declare-fun b!4803194 () Bool)

(assert (= bs!1158295 (and b!4803194 b!4802981)))

(declare-fun lambda!232828 () Int)

(assert (=> bs!1158295 (= lambda!232828 lambda!232822)))

(declare-fun d!1538409 () Bool)

(declare-fun e!2999570 () Bool)

(assert (=> d!1538409 e!2999570))

(declare-fun res!2043186 () Bool)

(assert (=> d!1538409 (=> (not res!2043186) (not e!2999570))))

(declare-fun lt!1957769 () List!54465)

(assert (=> d!1538409 (= res!2043186 (noDuplicate!939 lt!1957769))))

(assert (=> d!1538409 (= lt!1957769 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))

(assert (=> d!1538409 (= (keys!19871 (extractMap!2495 (toList!7015 lm!2473))) lt!1957769)))

(declare-fun b!4803192 () Bool)

(declare-fun res!2043184 () Bool)

(assert (=> b!4803192 (=> (not res!2043184) (not e!2999570))))

(assert (=> b!4803192 (= res!2043184 (= (length!734 lt!1957769) (length!735 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))))

(declare-fun res!2043185 () Bool)

(assert (=> b!4803193 (=> (not res!2043185) (not e!2999570))))

(assert (=> b!4803193 (= res!2043185 (forall!12346 lt!1957769 lambda!232827))))

(assert (=> b!4803194 (= e!2999570 (= (content!9755 lt!1957769) (content!9755 (map!12284 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) lambda!232828))))))

(assert (= (and d!1538409 res!2043186) b!4803192))

(assert (= (and b!4803192 res!2043184) b!4803193))

(assert (= (and b!4803193 res!2043185) b!4803194))

(declare-fun m!5788072 () Bool)

(assert (=> d!1538409 m!5788072))

(assert (=> d!1538409 m!5787464))

(declare-fun m!5788074 () Bool)

(assert (=> b!4803192 m!5788074))

(declare-fun m!5788076 () Bool)

(assert (=> b!4803192 m!5788076))

(declare-fun m!5788078 () Bool)

(assert (=> b!4803193 m!5788078))

(declare-fun m!5788080 () Bool)

(assert (=> b!4803194 m!5788080))

(declare-fun m!5788082 () Bool)

(assert (=> b!4803194 m!5788082))

(assert (=> b!4803194 m!5788082))

(declare-fun m!5788084 () Bool)

(assert (=> b!4803194 m!5788084))

(assert (=> b!4802779 d!1538409))

(declare-fun d!1538417 () Bool)

(assert (=> d!1538417 (= (isDefined!10337 (getPair!940 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29515 (getPair!940 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1158298 () Bool)

(assert (= bs!1158298 d!1538417))

(assert (=> bs!1158298 m!5787420))

(declare-fun m!5788086 () Bool)

(assert (=> bs!1158298 m!5788086))

(assert (=> b!4802738 d!1538417))

(declare-fun b!4803202 () Bool)

(declare-fun e!2999578 () Bool)

(declare-fun e!2999580 () Bool)

(assert (=> b!4803202 (= e!2999578 e!2999580)))

(declare-fun res!2043194 () Bool)

(assert (=> b!4803202 (=> (not res!2043194) (not e!2999580))))

(declare-fun lt!1957791 () Option!13196)

(assert (=> b!4803202 (= res!2043194 (isDefined!10337 lt!1957791))))

(declare-fun b!4803203 () Bool)

(declare-fun e!2999579 () Option!13196)

(assert (=> b!4803203 (= e!2999579 (Some!13195 (h!60770 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)))))))

(declare-fun b!4803204 () Bool)

(assert (=> b!4803204 (= e!2999580 (contains!17998 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) (get!18560 lt!1957791)))))

(declare-fun b!4803205 () Bool)

(declare-fun e!2999576 () Option!13196)

(assert (=> b!4803205 (= e!2999579 e!2999576)))

(declare-fun c!818736 () Bool)

(assert (=> b!4803205 (= c!818736 ((_ is Cons!54338) (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896))))))

(declare-fun b!4803206 () Bool)

(assert (=> b!4803206 (= e!2999576 (getPair!940 (t!361912 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4803208 () Bool)

(assert (=> b!4803208 (= e!2999576 None!13195)))

(declare-fun b!4803209 () Bool)

(declare-fun e!2999577 () Bool)

(assert (=> b!4803209 (= e!2999577 (not (containsKey!4046 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(declare-fun d!1538419 () Bool)

(assert (=> d!1538419 e!2999578))

(declare-fun res!2043193 () Bool)

(assert (=> d!1538419 (=> res!2043193 e!2999578)))

(assert (=> d!1538419 (= res!2043193 e!2999577)))

(declare-fun res!2043192 () Bool)

(assert (=> d!1538419 (=> (not res!2043192) (not e!2999577))))

(assert (=> d!1538419 (= res!2043192 (isEmpty!29515 lt!1957791))))

(assert (=> d!1538419 (= lt!1957791 e!2999579)))

(declare-fun c!818735 () Bool)

(assert (=> d!1538419 (= c!818735 (and ((_ is Cons!54338) (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896))) (= (_1!31814 (h!60770 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1538419 (noDuplicateKeys!2366 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538419 (= (getPair!940 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896) lt!1957791)))

(declare-fun b!4803207 () Bool)

(declare-fun res!2043195 () Bool)

(assert (=> b!4803207 (=> (not res!2043195) (not e!2999580))))

(assert (=> b!4803207 (= res!2043195 (= (_1!31814 (get!18560 lt!1957791)) key!5896))))

(assert (= (and d!1538419 c!818735) b!4803203))

(assert (= (and d!1538419 (not c!818735)) b!4803205))

(assert (= (and b!4803205 c!818736) b!4803206))

(assert (= (and b!4803205 (not c!818736)) b!4803208))

(assert (= (and d!1538419 res!2043192) b!4803209))

(assert (= (and d!1538419 (not res!2043193)) b!4803202))

(assert (= (and b!4803202 res!2043194) b!4803207))

(assert (= (and b!4803207 res!2043195) b!4803204))

(declare-fun m!5788088 () Bool)

(assert (=> d!1538419 m!5788088))

(assert (=> d!1538419 m!5787418))

(declare-fun m!5788090 () Bool)

(assert (=> d!1538419 m!5788090))

(declare-fun m!5788092 () Bool)

(assert (=> b!4803202 m!5788092))

(declare-fun m!5788094 () Bool)

(assert (=> b!4803206 m!5788094))

(declare-fun m!5788096 () Bool)

(assert (=> b!4803207 m!5788096))

(assert (=> b!4803204 m!5788096))

(assert (=> b!4803204 m!5787418))

(assert (=> b!4803204 m!5788096))

(declare-fun m!5788098 () Bool)

(assert (=> b!4803204 m!5788098))

(assert (=> b!4803209 m!5787418))

(declare-fun m!5788100 () Bool)

(assert (=> b!4803209 m!5788100))

(assert (=> b!4802738 d!1538419))

(declare-fun d!1538421 () Bool)

(assert (=> d!1538421 (= (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) (get!18561 (getValueByKey!2406 (toList!7015 lm!2473) (hash!5028 hashF!1559 key!5896))))))

(declare-fun bs!1158304 () Bool)

(assert (= bs!1158304 d!1538421))

(assert (=> bs!1158304 m!5787114))

(declare-fun m!5788102 () Bool)

(assert (=> bs!1158304 m!5788102))

(assert (=> bs!1158304 m!5788102))

(declare-fun m!5788104 () Bool)

(assert (=> bs!1158304 m!5788104))

(assert (=> b!4802738 d!1538421))

(assert (=> b!4802738 d!1538123))

(declare-fun d!1538423 () Bool)

(declare-fun res!2043196 () Bool)

(declare-fun e!2999581 () Bool)

(assert (=> d!1538423 (=> res!2043196 e!2999581)))

(assert (=> d!1538423 (= res!2043196 (and ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451)))) (= (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))) key!5896)))))

(assert (=> d!1538423 (= (containsKey!4046 (_2!31815 (h!60771 (toList!7015 lt!1957451))) key!5896) e!2999581)))

(declare-fun b!4803210 () Bool)

(declare-fun e!2999582 () Bool)

(assert (=> b!4803210 (= e!2999581 e!2999582)))

(declare-fun res!2043197 () Bool)

(assert (=> b!4803210 (=> (not res!2043197) (not e!2999582))))

(assert (=> b!4803210 (= res!2043197 ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(declare-fun b!4803211 () Bool)

(assert (=> b!4803211 (= e!2999582 (containsKey!4046 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) key!5896))))

(assert (= (and d!1538423 (not res!2043196)) b!4803210))

(assert (= (and b!4803210 res!2043197) b!4803211))

(declare-fun m!5788106 () Bool)

(assert (=> b!4803211 m!5788106))

(assert (=> b!4802791 d!1538423))

(assert (=> d!1538131 d!1538371))

(declare-fun d!1538425 () Bool)

(assert (=> d!1538425 (= (invariantList!1758 (toList!7016 lt!1957586)) (noDuplicatedKeys!456 (toList!7016 lt!1957586)))))

(declare-fun bs!1158305 () Bool)

(assert (= bs!1158305 d!1538425))

(declare-fun m!5788108 () Bool)

(assert (=> bs!1158305 m!5788108))

(assert (=> d!1538133 d!1538425))

(declare-fun d!1538427 () Bool)

(declare-fun res!2043198 () Bool)

(declare-fun e!2999583 () Bool)

(assert (=> d!1538427 (=> res!2043198 e!2999583)))

(assert (=> d!1538427 (= res!2043198 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538427 (= (forall!12343 (toList!7015 lm!2473) lambda!232753) e!2999583)))

(declare-fun b!4803212 () Bool)

(declare-fun e!2999584 () Bool)

(assert (=> b!4803212 (= e!2999583 e!2999584)))

(declare-fun res!2043199 () Bool)

(assert (=> b!4803212 (=> (not res!2043199) (not e!2999584))))

(assert (=> b!4803212 (= res!2043199 (dynLambda!22097 lambda!232753 (h!60771 (toList!7015 lm!2473))))))

(declare-fun b!4803213 () Bool)

(assert (=> b!4803213 (= e!2999584 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232753))))

(assert (= (and d!1538427 (not res!2043198)) b!4803212))

(assert (= (and b!4803212 res!2043199) b!4803213))

(declare-fun b_lambda!187847 () Bool)

(assert (=> (not b_lambda!187847) (not b!4803212)))

(declare-fun m!5788110 () Bool)

(assert (=> b!4803212 m!5788110))

(declare-fun m!5788112 () Bool)

(assert (=> b!4803213 m!5788112))

(assert (=> d!1538133 d!1538427))

(assert (=> d!1538141 d!1538139))

(declare-fun d!1538429 () Bool)

(assert (=> d!1538429 (containsKeyBiggerList!610 (toList!7015 lt!1957451) key!5896)))

(assert (=> d!1538429 true))

(declare-fun _$33!895 () Unit!140855)

(assert (=> d!1538429 (= (choose!34725 lt!1957451 key!5896 hashF!1559) _$33!895)))

(declare-fun bs!1158309 () Bool)

(assert (= bs!1158309 d!1538429))

(assert (=> bs!1158309 m!5787158))

(assert (=> d!1538141 d!1538429))

(declare-fun d!1538431 () Bool)

(declare-fun res!2043200 () Bool)

(declare-fun e!2999585 () Bool)

(assert (=> d!1538431 (=> res!2043200 e!2999585)))

(assert (=> d!1538431 (= res!2043200 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538431 (= (forall!12343 (toList!7015 lt!1957451) lambda!232755) e!2999585)))

(declare-fun b!4803214 () Bool)

(declare-fun e!2999586 () Bool)

(assert (=> b!4803214 (= e!2999585 e!2999586)))

(declare-fun res!2043201 () Bool)

(assert (=> b!4803214 (=> (not res!2043201) (not e!2999586))))

(assert (=> b!4803214 (= res!2043201 (dynLambda!22097 lambda!232755 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803215 () Bool)

(assert (=> b!4803215 (= e!2999586 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232755))))

(assert (= (and d!1538431 (not res!2043200)) b!4803214))

(assert (= (and b!4803214 res!2043201) b!4803215))

(declare-fun b_lambda!187849 () Bool)

(assert (=> (not b_lambda!187849) (not b!4803214)))

(declare-fun m!5788114 () Bool)

(assert (=> b!4803214 m!5788114))

(declare-fun m!5788116 () Bool)

(assert (=> b!4803215 m!5788116))

(assert (=> d!1538141 d!1538431))

(assert (=> b!4802693 d!1538043))

(declare-fun b!4803238 () Bool)

(assert (=> b!4803238 true))

(declare-fun bs!1158336 () Bool)

(declare-fun b!4803237 () Bool)

(assert (= bs!1158336 (and b!4803237 b!4803238)))

(declare-fun lambda!232863 () Int)

(declare-fun lambda!232862 () Int)

(assert (=> bs!1158336 (= lambda!232863 lambda!232862)))

(assert (=> b!4803237 true))

(declare-fun lambda!232864 () Int)

(declare-fun lt!1957849 () ListMap!6487)

(assert (=> bs!1158336 (= (= lt!1957849 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232864 lambda!232862))))

(assert (=> b!4803237 (= (= lt!1957849 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232864 lambda!232863))))

(assert (=> b!4803237 true))

(declare-fun bs!1158337 () Bool)

(declare-fun d!1538433 () Bool)

(assert (= bs!1158337 (and d!1538433 b!4803238)))

(declare-fun lt!1957845 () ListMap!6487)

(declare-fun lambda!232865 () Int)

(assert (=> bs!1158337 (= (= lt!1957845 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232865 lambda!232862))))

(declare-fun bs!1158338 () Bool)

(assert (= bs!1158338 (and d!1538433 b!4803237)))

(assert (=> bs!1158338 (= (= lt!1957845 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232865 lambda!232863))))

(assert (=> bs!1158338 (= (= lt!1957845 lt!1957849) (= lambda!232865 lambda!232864))))

(assert (=> d!1538433 true))

(declare-fun b!4803236 () Bool)

(declare-fun res!2043211 () Bool)

(declare-fun e!2999602 () Bool)

(assert (=> b!4803236 (=> (not res!2043211) (not e!2999602))))

(declare-fun forall!12347 (List!54462 Int) Bool)

(assert (=> b!4803236 (= res!2043211 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) lambda!232865))))

(assert (=> d!1538433 e!2999602))

(declare-fun res!2043210 () Bool)

(assert (=> d!1538433 (=> (not res!2043210) (not e!2999602))))

(assert (=> d!1538433 (= res!2043210 (forall!12347 (_2!31815 (h!60771 (toList!7015 lm!2473))) lambda!232865))))

(declare-fun e!2999601 () ListMap!6487)

(assert (=> d!1538433 (= lt!1957845 e!2999601)))

(declare-fun c!818740 () Bool)

(assert (=> d!1538433 (= c!818740 ((_ is Nil!54338) (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(assert (=> d!1538433 (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473))))))

(assert (=> d!1538433 (= (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (toList!7015 lm!2473))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) lt!1957845)))

(declare-fun bm!335450 () Bool)

(declare-fun call!335457 () Bool)

(assert (=> bm!335450 (= call!335457 (forall!12347 (ite c!818740 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (_2!31815 (h!60771 (toList!7015 lm!2473)))) (ite c!818740 lambda!232862 lambda!232864)))))

(assert (=> b!4803237 (= e!2999601 lt!1957849)))

(declare-fun lt!1957835 () ListMap!6487)

(declare-fun +!2509 (ListMap!6487 tuple2!57040) ListMap!6487)

(assert (=> b!4803237 (= lt!1957835 (+!2509 (extractMap!2495 (t!361913 (toList!7015 lm!2473))) (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(assert (=> b!4803237 (= lt!1957849 (addToMapMapFromBucket!1735 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) (+!2509 (extractMap!2495 (t!361913 (toList!7015 lm!2473))) (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))))

(declare-fun lt!1957847 () Unit!140855)

(declare-fun call!335455 () Unit!140855)

(assert (=> b!4803237 (= lt!1957847 call!335455)))

(assert (=> b!4803237 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) lambda!232863)))

(declare-fun lt!1957853 () Unit!140855)

(assert (=> b!4803237 (= lt!1957853 lt!1957847)))

(assert (=> b!4803237 (forall!12347 (toList!7016 lt!1957835) lambda!232864)))

(declare-fun lt!1957843 () Unit!140855)

(declare-fun Unit!140890 () Unit!140855)

(assert (=> b!4803237 (= lt!1957843 Unit!140890)))

(assert (=> b!4803237 (forall!12347 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) lambda!232864)))

(declare-fun lt!1957848 () Unit!140855)

(declare-fun Unit!140891 () Unit!140855)

(assert (=> b!4803237 (= lt!1957848 Unit!140891)))

(declare-fun lt!1957852 () Unit!140855)

(declare-fun Unit!140892 () Unit!140855)

(assert (=> b!4803237 (= lt!1957852 Unit!140892)))

(declare-fun lt!1957838 () Unit!140855)

(declare-fun forallContained!4222 (List!54462 Int tuple2!57040) Unit!140855)

(assert (=> b!4803237 (= lt!1957838 (forallContained!4222 (toList!7016 lt!1957835) lambda!232864 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(assert (=> b!4803237 (contains!17994 lt!1957835 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(declare-fun lt!1957844 () Unit!140855)

(declare-fun Unit!140893 () Unit!140855)

(assert (=> b!4803237 (= lt!1957844 Unit!140893)))

(assert (=> b!4803237 (contains!17994 lt!1957849 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(declare-fun lt!1957841 () Unit!140855)

(declare-fun Unit!140894 () Unit!140855)

(assert (=> b!4803237 (= lt!1957841 Unit!140894)))

(assert (=> b!4803237 call!335457))

(declare-fun lt!1957855 () Unit!140855)

(declare-fun Unit!140895 () Unit!140855)

(assert (=> b!4803237 (= lt!1957855 Unit!140895)))

(assert (=> b!4803237 (forall!12347 (toList!7016 lt!1957835) lambda!232864)))

(declare-fun lt!1957842 () Unit!140855)

(declare-fun Unit!140896 () Unit!140855)

(assert (=> b!4803237 (= lt!1957842 Unit!140896)))

(declare-fun lt!1957837 () Unit!140855)

(declare-fun Unit!140897 () Unit!140855)

(assert (=> b!4803237 (= lt!1957837 Unit!140897)))

(declare-fun lt!1957846 () Unit!140855)

(declare-fun addForallContainsKeyThenBeforeAdding!964 (ListMap!6487 ListMap!6487 K!15909 V!16155) Unit!140855)

(assert (=> b!4803237 (= lt!1957846 (addForallContainsKeyThenBeforeAdding!964 (extractMap!2495 (t!361913 (toList!7015 lm!2473))) lt!1957849 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))) (_2!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))))

(assert (=> b!4803237 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) lambda!232864)))

(declare-fun lt!1957851 () Unit!140855)

(assert (=> b!4803237 (= lt!1957851 lt!1957846)))

(assert (=> b!4803237 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) lambda!232864)))

(declare-fun lt!1957836 () Unit!140855)

(declare-fun Unit!140898 () Unit!140855)

(assert (=> b!4803237 (= lt!1957836 Unit!140898)))

(declare-fun res!2043212 () Bool)

(assert (=> b!4803237 (= res!2043212 (forall!12347 (_2!31815 (h!60771 (toList!7015 lm!2473))) lambda!232864))))

(declare-fun e!2999600 () Bool)

(assert (=> b!4803237 (=> (not res!2043212) (not e!2999600))))

(assert (=> b!4803237 e!2999600))

(declare-fun lt!1957839 () Unit!140855)

(declare-fun Unit!140899 () Unit!140855)

(assert (=> b!4803237 (= lt!1957839 Unit!140899)))

(assert (=> b!4803238 (= e!2999601 (extractMap!2495 (t!361913 (toList!7015 lm!2473))))))

(declare-fun lt!1957854 () Unit!140855)

(assert (=> b!4803238 (= lt!1957854 call!335455)))

(declare-fun call!335456 () Bool)

(assert (=> b!4803238 call!335456))

(declare-fun lt!1957840 () Unit!140855)

(assert (=> b!4803238 (= lt!1957840 lt!1957854)))

(assert (=> b!4803238 call!335457))

(declare-fun lt!1957850 () Unit!140855)

(declare-fun Unit!140900 () Unit!140855)

(assert (=> b!4803238 (= lt!1957850 Unit!140900)))

(declare-fun b!4803239 () Bool)

(assert (=> b!4803239 (= e!2999602 (invariantList!1758 (toList!7016 lt!1957845)))))

(declare-fun b!4803240 () Bool)

(assert (=> b!4803240 (= e!2999600 call!335456)))

(declare-fun bm!335451 () Bool)

(assert (=> bm!335451 (= call!335456 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (ite c!818740 lambda!232862 lambda!232864)))))

(declare-fun bm!335452 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!965 (ListMap!6487) Unit!140855)

(assert (=> bm!335452 (= call!335455 (lemmaContainsAllItsOwnKeys!965 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))))))

(assert (= (and d!1538433 c!818740) b!4803238))

(assert (= (and d!1538433 (not c!818740)) b!4803237))

(assert (= (and b!4803237 res!2043212) b!4803240))

(assert (= (or b!4803238 b!4803240) bm!335451))

(assert (= (or b!4803238 b!4803237) bm!335450))

(assert (= (or b!4803238 b!4803237) bm!335452))

(assert (= (and d!1538433 res!2043210) b!4803236))

(assert (= (and b!4803236 res!2043211) b!4803239))

(declare-fun m!5788170 () Bool)

(assert (=> bm!335451 m!5788170))

(declare-fun m!5788172 () Bool)

(assert (=> bm!335450 m!5788172))

(assert (=> b!4803237 m!5787474))

(declare-fun m!5788174 () Bool)

(assert (=> b!4803237 m!5788174))

(declare-fun m!5788176 () Bool)

(assert (=> b!4803237 m!5788176))

(declare-fun m!5788178 () Bool)

(assert (=> b!4803237 m!5788178))

(declare-fun m!5788180 () Bool)

(assert (=> b!4803237 m!5788180))

(assert (=> b!4803237 m!5787474))

(declare-fun m!5788182 () Bool)

(assert (=> b!4803237 m!5788182))

(declare-fun m!5788184 () Bool)

(assert (=> b!4803237 m!5788184))

(declare-fun m!5788186 () Bool)

(assert (=> b!4803237 m!5788186))

(assert (=> b!4803237 m!5788186))

(declare-fun m!5788188 () Bool)

(assert (=> b!4803237 m!5788188))

(declare-fun m!5788190 () Bool)

(assert (=> b!4803237 m!5788190))

(assert (=> b!4803237 m!5788182))

(declare-fun m!5788192 () Bool)

(assert (=> b!4803237 m!5788192))

(declare-fun m!5788194 () Bool)

(assert (=> b!4803237 m!5788194))

(assert (=> b!4803237 m!5788180))

(declare-fun m!5788196 () Bool)

(assert (=> b!4803239 m!5788196))

(declare-fun m!5788198 () Bool)

(assert (=> b!4803236 m!5788198))

(assert (=> bm!335452 m!5787474))

(declare-fun m!5788200 () Bool)

(assert (=> bm!335452 m!5788200))

(declare-fun m!5788202 () Bool)

(assert (=> d!1538433 m!5788202))

(assert (=> d!1538433 m!5787556))

(assert (=> b!4802787 d!1538433))

(declare-fun bs!1158339 () Bool)

(declare-fun d!1538463 () Bool)

(assert (= bs!1158339 (and d!1538463 d!1538149)))

(declare-fun lambda!232866 () Int)

(assert (=> bs!1158339 (= lambda!232866 lambda!232759)))

(declare-fun bs!1158340 () Bool)

(assert (= bs!1158340 (and d!1538463 d!1538141)))

(assert (=> bs!1158340 (= lambda!232866 lambda!232755)))

(declare-fun bs!1158341 () Bool)

(assert (= bs!1158341 (and d!1538463 d!1538157)))

(assert (=> bs!1158341 (= lambda!232866 lambda!232763)))

(declare-fun bs!1158342 () Bool)

(assert (= bs!1158342 (and d!1538463 start!495826)))

(assert (=> bs!1158342 (= lambda!232866 lambda!232719)))

(declare-fun bs!1158343 () Bool)

(assert (= bs!1158343 (and d!1538463 d!1538035)))

(assert (=> bs!1158343 (not (= lambda!232866 lambda!232728))))

(declare-fun bs!1158344 () Bool)

(assert (= bs!1158344 (and d!1538463 d!1538155)))

(assert (=> bs!1158344 (= lambda!232866 lambda!232760)))

(declare-fun bs!1158345 () Bool)

(assert (= bs!1158345 (and d!1538463 d!1538135)))

(assert (=> bs!1158345 (not (= lambda!232866 lambda!232754))))

(declare-fun bs!1158346 () Bool)

(assert (= bs!1158346 (and d!1538463 d!1538133)))

(assert (=> bs!1158346 (= lambda!232866 lambda!232753)))

(declare-fun bs!1158347 () Bool)

(assert (= bs!1158347 (and d!1538463 d!1538143)))

(assert (=> bs!1158347 (= lambda!232866 lambda!232756)))

(declare-fun bs!1158348 () Bool)

(assert (= bs!1158348 (and d!1538463 d!1538111)))

(assert (=> bs!1158348 (= lambda!232866 lambda!232750)))

(declare-fun bs!1158349 () Bool)

(assert (= bs!1158349 (and d!1538463 d!1538089)))

(assert (=> bs!1158349 (= lambda!232866 lambda!232746)))

(declare-fun lt!1957856 () ListMap!6487)

(assert (=> d!1538463 (invariantList!1758 (toList!7016 lt!1957856))))

(declare-fun e!2999603 () ListMap!6487)

(assert (=> d!1538463 (= lt!1957856 e!2999603)))

(declare-fun c!818741 () Bool)

(assert (=> d!1538463 (= c!818741 ((_ is Cons!54339) (t!361913 (toList!7015 lm!2473))))))

(assert (=> d!1538463 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232866)))

(assert (=> d!1538463 (= (extractMap!2495 (t!361913 (toList!7015 lm!2473))) lt!1957856)))

(declare-fun b!4803243 () Bool)

(assert (=> b!4803243 (= e!2999603 (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (t!361913 (toList!7015 lm!2473)))) (extractMap!2495 (t!361913 (t!361913 (toList!7015 lm!2473))))))))

(declare-fun b!4803244 () Bool)

(assert (=> b!4803244 (= e!2999603 (ListMap!6488 Nil!54338))))

(assert (= (and d!1538463 c!818741) b!4803243))

(assert (= (and d!1538463 (not c!818741)) b!4803244))

(declare-fun m!5788204 () Bool)

(assert (=> d!1538463 m!5788204))

(declare-fun m!5788206 () Bool)

(assert (=> d!1538463 m!5788206))

(declare-fun m!5788208 () Bool)

(assert (=> b!4803243 m!5788208))

(assert (=> b!4803243 m!5788208))

(declare-fun m!5788210 () Bool)

(assert (=> b!4803243 m!5788210))

(assert (=> b!4802787 d!1538463))

(declare-fun d!1538465 () Bool)

(declare-fun res!2043213 () Bool)

(declare-fun e!2999604 () Bool)

(assert (=> d!1538465 (=> res!2043213 e!2999604)))

(declare-fun e!2999606 () Bool)

(assert (=> d!1538465 (= res!2043213 e!2999606)))

(declare-fun res!2043214 () Bool)

(assert (=> d!1538465 (=> (not res!2043214) (not e!2999606))))

(assert (=> d!1538465 (= res!2043214 ((_ is Cons!54339) (t!361913 (toList!7015 lm!2473))))))

(assert (=> d!1538465 (= (containsKeyBiggerList!610 (t!361913 (toList!7015 lm!2473)) key!5896) e!2999604)))

(declare-fun b!4803245 () Bool)

(assert (=> b!4803245 (= e!2999606 (containsKey!4046 (_2!31815 (h!60771 (t!361913 (toList!7015 lm!2473)))) key!5896))))

(declare-fun b!4803246 () Bool)

(declare-fun e!2999605 () Bool)

(assert (=> b!4803246 (= e!2999604 e!2999605)))

(declare-fun res!2043215 () Bool)

(assert (=> b!4803246 (=> (not res!2043215) (not e!2999605))))

(assert (=> b!4803246 (= res!2043215 ((_ is Cons!54339) (t!361913 (toList!7015 lm!2473))))))

(declare-fun b!4803247 () Bool)

(assert (=> b!4803247 (= e!2999605 (containsKeyBiggerList!610 (t!361913 (t!361913 (toList!7015 lm!2473))) key!5896))))

(assert (= (and d!1538465 res!2043214) b!4803245))

(assert (= (and d!1538465 (not res!2043213)) b!4803246))

(assert (= (and b!4803246 res!2043215) b!4803247))

(declare-fun m!5788212 () Bool)

(assert (=> b!4803245 m!5788212))

(declare-fun m!5788214 () Bool)

(assert (=> b!4803247 m!5788214))

(assert (=> b!4802695 d!1538465))

(declare-fun d!1538467 () Bool)

(assert (=> d!1538467 (= (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896)) (not (isEmpty!29518 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))))

(declare-fun bs!1158350 () Bool)

(assert (= bs!1158350 d!1538467))

(assert (=> bs!1158350 m!5787520))

(declare-fun m!5788216 () Bool)

(assert (=> bs!1158350 m!5788216))

(assert (=> b!4802803 d!1538467))

(declare-fun b!4803249 () Bool)

(declare-fun e!2999607 () Option!13200)

(declare-fun e!2999608 () Option!13200)

(assert (=> b!4803249 (= e!2999607 e!2999608)))

(declare-fun c!818743 () Bool)

(assert (=> b!4803249 (= c!818743 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (not (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) key!5896))))))

(declare-fun d!1538469 () Bool)

(declare-fun c!818742 () Bool)

(assert (=> d!1538469 (= c!818742 (and ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) key!5896)))))

(assert (=> d!1538469 (= (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) e!2999607)))

(declare-fun b!4803248 () Bool)

(assert (=> b!4803248 (= e!2999607 (Some!13199 (_2!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))))

(declare-fun b!4803250 () Bool)

(assert (=> b!4803250 (= e!2999608 (getValueByKey!2407 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun b!4803251 () Bool)

(assert (=> b!4803251 (= e!2999608 None!13199)))

(assert (= (and d!1538469 c!818742) b!4803248))

(assert (= (and d!1538469 (not c!818742)) b!4803249))

(assert (= (and b!4803249 c!818743) b!4803250))

(assert (= (and b!4803249 (not c!818743)) b!4803251))

(declare-fun m!5788218 () Bool)

(assert (=> b!4803250 m!5788218))

(assert (=> b!4802803 d!1538469))

(declare-fun d!1538471 () Bool)

(assert (=> d!1538471 (= (isDefined!10337 lt!1957514) (not (isEmpty!29515 lt!1957514)))))

(declare-fun bs!1158351 () Bool)

(assert (= bs!1158351 d!1538471))

(assert (=> bs!1158351 m!5787258))

(assert (=> b!4802643 d!1538471))

(declare-fun d!1538473 () Bool)

(declare-fun e!2999609 () Bool)

(assert (=> d!1538473 e!2999609))

(declare-fun res!2043216 () Bool)

(assert (=> d!1538473 (=> res!2043216 e!2999609)))

(declare-fun lt!1957857 () Bool)

(assert (=> d!1538473 (= res!2043216 (not lt!1957857))))

(declare-fun lt!1957860 () Bool)

(assert (=> d!1538473 (= lt!1957857 lt!1957860)))

(declare-fun lt!1957859 () Unit!140855)

(declare-fun e!2999610 () Unit!140855)

(assert (=> d!1538473 (= lt!1957859 e!2999610)))

(declare-fun c!818744 () Bool)

(assert (=> d!1538473 (= c!818744 lt!1957860)))

(assert (=> d!1538473 (= lt!1957860 (containsKey!4049 (toList!7015 lm!2473) (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538473 (= (contains!17995 lm!2473 (hash!5028 hashF!1559 key!5896)) lt!1957857)))

(declare-fun b!4803252 () Bool)

(declare-fun lt!1957858 () Unit!140855)

(assert (=> b!4803252 (= e!2999610 lt!1957858)))

(assert (=> b!4803252 (= lt!1957858 (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lm!2473) (hash!5028 hashF!1559 key!5896)))))

(assert (=> b!4803252 (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) (hash!5028 hashF!1559 key!5896)))))

(declare-fun b!4803253 () Bool)

(declare-fun Unit!140902 () Unit!140855)

(assert (=> b!4803253 (= e!2999610 Unit!140902)))

(declare-fun b!4803254 () Bool)

(assert (=> b!4803254 (= e!2999609 (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) (hash!5028 hashF!1559 key!5896))))))

(assert (= (and d!1538473 c!818744) b!4803252))

(assert (= (and d!1538473 (not c!818744)) b!4803253))

(assert (= (and d!1538473 (not res!2043216)) b!4803254))

(assert (=> d!1538473 m!5787114))

(declare-fun m!5788220 () Bool)

(assert (=> d!1538473 m!5788220))

(assert (=> b!4803252 m!5787114))

(declare-fun m!5788222 () Bool)

(assert (=> b!4803252 m!5788222))

(assert (=> b!4803252 m!5787114))

(assert (=> b!4803252 m!5788102))

(assert (=> b!4803252 m!5788102))

(declare-fun m!5788224 () Bool)

(assert (=> b!4803252 m!5788224))

(assert (=> b!4803254 m!5787114))

(assert (=> b!4803254 m!5788102))

(assert (=> b!4803254 m!5788102))

(assert (=> b!4803254 m!5788224))

(assert (=> d!1538111 d!1538473))

(assert (=> d!1538111 d!1538123))

(declare-fun d!1538475 () Bool)

(declare-fun e!2999613 () Bool)

(assert (=> d!1538475 e!2999613))

(declare-fun res!2043219 () Bool)

(assert (=> d!1538475 (=> (not res!2043219) (not e!2999613))))

(assert (=> d!1538475 (= res!2043219 (contains!17995 lm!2473 (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538475 true))

(declare-fun _$5!277 () Unit!140855)

(assert (=> d!1538475 (= (choose!34726 lm!2473 key!5896 hashF!1559) _$5!277)))

(declare-fun b!4803257 () Bool)

(assert (=> b!4803257 (= e!2999613 (isDefined!10337 (getPair!940 (apply!13041 lm!2473 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538475 res!2043219) b!4803257))

(assert (=> d!1538475 m!5787114))

(assert (=> d!1538475 m!5787114))

(assert (=> d!1538475 m!5787412))

(assert (=> b!4803257 m!5787114))

(assert (=> b!4803257 m!5787114))

(assert (=> b!4803257 m!5787418))

(assert (=> b!4803257 m!5787418))

(assert (=> b!4803257 m!5787420))

(assert (=> b!4803257 m!5787420))

(assert (=> b!4803257 m!5787422))

(assert (=> d!1538111 d!1538475))

(declare-fun d!1538477 () Bool)

(declare-fun res!2043220 () Bool)

(declare-fun e!2999614 () Bool)

(assert (=> d!1538477 (=> res!2043220 e!2999614)))

(assert (=> d!1538477 (= res!2043220 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538477 (= (forall!12343 (toList!7015 lm!2473) lambda!232750) e!2999614)))

(declare-fun b!4803258 () Bool)

(declare-fun e!2999615 () Bool)

(assert (=> b!4803258 (= e!2999614 e!2999615)))

(declare-fun res!2043221 () Bool)

(assert (=> b!4803258 (=> (not res!2043221) (not e!2999615))))

(assert (=> b!4803258 (= res!2043221 (dynLambda!22097 lambda!232750 (h!60771 (toList!7015 lm!2473))))))

(declare-fun b!4803259 () Bool)

(assert (=> b!4803259 (= e!2999615 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232750))))

(assert (= (and d!1538477 (not res!2043220)) b!4803258))

(assert (= (and b!4803258 res!2043221) b!4803259))

(declare-fun b_lambda!187877 () Bool)

(assert (=> (not b_lambda!187877) (not b!4803258)))

(declare-fun m!5788226 () Bool)

(assert (=> b!4803258 m!5788226))

(declare-fun m!5788228 () Bool)

(assert (=> b!4803259 m!5788228))

(assert (=> d!1538111 d!1538477))

(assert (=> d!1538149 d!1538147))

(assert (=> d!1538149 d!1538155))

(declare-fun d!1538479 () Bool)

(assert (=> d!1538479 (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896)))

(assert (=> d!1538479 true))

(declare-fun _$34!960 () Unit!140855)

(assert (=> d!1538479 (= (choose!34727 lt!1957451 key!5896 hashF!1559) _$34!960)))

(declare-fun bs!1158352 () Bool)

(assert (= bs!1158352 d!1538479))

(assert (=> bs!1158352 m!5787132))

(assert (=> bs!1158352 m!5787132))

(assert (=> bs!1158352 m!5787138))

(assert (=> d!1538149 d!1538479))

(declare-fun d!1538481 () Bool)

(declare-fun res!2043222 () Bool)

(declare-fun e!2999616 () Bool)

(assert (=> d!1538481 (=> res!2043222 e!2999616)))

(assert (=> d!1538481 (= res!2043222 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538481 (= (forall!12343 (toList!7015 lt!1957451) lambda!232759) e!2999616)))

(declare-fun b!4803260 () Bool)

(declare-fun e!2999617 () Bool)

(assert (=> b!4803260 (= e!2999616 e!2999617)))

(declare-fun res!2043223 () Bool)

(assert (=> b!4803260 (=> (not res!2043223) (not e!2999617))))

(assert (=> b!4803260 (= res!2043223 (dynLambda!22097 lambda!232759 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803261 () Bool)

(assert (=> b!4803261 (= e!2999617 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232759))))

(assert (= (and d!1538481 (not res!2043222)) b!4803260))

(assert (= (and b!4803260 res!2043223) b!4803261))

(declare-fun b_lambda!187879 () Bool)

(assert (=> (not b_lambda!187879) (not b!4803260)))

(declare-fun m!5788230 () Bool)

(assert (=> b!4803260 m!5788230))

(declare-fun m!5788232 () Bool)

(assert (=> b!4803261 m!5788232))

(assert (=> d!1538149 d!1538481))

(assert (=> b!4802806 d!1538327))

(declare-fun d!1538483 () Bool)

(assert (=> d!1538483 (containsKey!4050 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896)))

(declare-fun lt!1957861 () Unit!140855)

(assert (=> d!1538483 (= lt!1957861 (choose!34735 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> d!1538483 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))

(assert (=> d!1538483 (= (lemmaInGetKeysListThenContainsKey!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) lt!1957861)))

(declare-fun bs!1158353 () Bool)

(assert (= bs!1158353 d!1538483))

(assert (=> bs!1158353 m!5787516))

(declare-fun m!5788234 () Bool)

(assert (=> bs!1158353 m!5788234))

(declare-fun m!5788236 () Bool)

(assert (=> bs!1158353 m!5788236))

(assert (=> b!4802806 d!1538483))

(declare-fun d!1538485 () Bool)

(declare-fun res!2043224 () Bool)

(declare-fun e!2999618 () Bool)

(assert (=> d!1538485 (=> res!2043224 e!2999618)))

(assert (=> d!1538485 (= res!2043224 (and ((_ is Cons!54338) (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473))))) (= (_1!31814 (h!60770 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))))) key!5896)))))

(assert (=> d!1538485 (= (containsKey!4046 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) key!5896) e!2999618)))

(declare-fun b!4803262 () Bool)

(declare-fun e!2999619 () Bool)

(assert (=> b!4803262 (= e!2999618 e!2999619)))

(declare-fun res!2043225 () Bool)

(assert (=> b!4803262 (=> (not res!2043225) (not e!2999619))))

(assert (=> b!4803262 (= res!2043225 ((_ is Cons!54338) (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(declare-fun b!4803263 () Bool)

(assert (=> b!4803263 (= e!2999619 (containsKey!4046 (t!361912 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473))))) key!5896))))

(assert (= (and d!1538485 (not res!2043224)) b!4803262))

(assert (= (and b!4803262 res!2043225) b!4803263))

(declare-fun m!5788238 () Bool)

(assert (=> b!4803263 m!5788238))

(assert (=> b!4802577 d!1538485))

(declare-fun d!1538487 () Bool)

(declare-fun res!2043226 () Bool)

(declare-fun e!2999620 () Bool)

(assert (=> d!1538487 (=> res!2043226 e!2999620)))

(assert (=> d!1538487 (= res!2043226 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538487 (= (forall!12343 (toList!7015 lm!2473) lambda!232728) e!2999620)))

(declare-fun b!4803264 () Bool)

(declare-fun e!2999621 () Bool)

(assert (=> b!4803264 (= e!2999620 e!2999621)))

(declare-fun res!2043227 () Bool)

(assert (=> b!4803264 (=> (not res!2043227) (not e!2999621))))

(assert (=> b!4803264 (= res!2043227 (dynLambda!22097 lambda!232728 (h!60771 (toList!7015 lm!2473))))))

(declare-fun b!4803265 () Bool)

(assert (=> b!4803265 (= e!2999621 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232728))))

(assert (= (and d!1538487 (not res!2043226)) b!4803264))

(assert (= (and b!4803264 res!2043227) b!4803265))

(declare-fun b_lambda!187881 () Bool)

(assert (=> (not b_lambda!187881) (not b!4803264)))

(declare-fun m!5788240 () Bool)

(assert (=> b!4803264 m!5788240))

(declare-fun m!5788242 () Bool)

(assert (=> b!4803265 m!5788242))

(assert (=> d!1538035 d!1538487))

(declare-fun d!1538489 () Bool)

(declare-fun res!2043228 () Bool)

(declare-fun e!2999622 () Bool)

(assert (=> d!1538489 (=> res!2043228 e!2999622)))

(assert (=> d!1538489 (= res!2043228 (and ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457)) (= (_1!31814 (h!60770 (apply!13041 lt!1957451 lt!1957457))) key!5896)))))

(assert (=> d!1538489 (= (containsKey!4046 (apply!13041 lt!1957451 lt!1957457) key!5896) e!2999622)))

(declare-fun b!4803266 () Bool)

(declare-fun e!2999623 () Bool)

(assert (=> b!4803266 (= e!2999622 e!2999623)))

(declare-fun res!2043229 () Bool)

(assert (=> b!4803266 (=> (not res!2043229) (not e!2999623))))

(assert (=> b!4803266 (= res!2043229 ((_ is Cons!54338) (apply!13041 lt!1957451 lt!1957457)))))

(declare-fun b!4803267 () Bool)

(assert (=> b!4803267 (= e!2999623 (containsKey!4046 (t!361912 (apply!13041 lt!1957451 lt!1957457)) key!5896))))

(assert (= (and d!1538489 (not res!2043228)) b!4803266))

(assert (= (and b!4803266 res!2043229) b!4803267))

(assert (=> b!4803267 m!5787816))

(assert (=> b!4802650 d!1538489))

(declare-fun d!1538491 () Bool)

(declare-fun isEmpty!29519 (Option!13199) Bool)

(assert (=> d!1538491 (= (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457)) (not (isEmpty!29519 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457))))))

(declare-fun bs!1158354 () Bool)

(assert (= bs!1158354 d!1538491))

(assert (=> bs!1158354 m!5787272))

(declare-fun m!5788244 () Bool)

(assert (=> bs!1158354 m!5788244))

(assert (=> b!4802798 d!1538491))

(assert (=> b!4802798 d!1538325))

(assert (=> b!4802648 d!1538269))

(declare-fun d!1538493 () Bool)

(assert (=> d!1538493 (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) lt!1957457))))

(declare-fun lt!1957864 () Unit!140855)

(declare-fun choose!34737 (List!54463 (_ BitVec 64)) Unit!140855)

(assert (=> d!1538493 (= lt!1957864 (choose!34737 (toList!7015 lt!1957451) lt!1957457))))

(declare-fun e!2999626 () Bool)

(assert (=> d!1538493 e!2999626))

(declare-fun res!2043232 () Bool)

(assert (=> d!1538493 (=> (not res!2043232) (not e!2999626))))

(assert (=> d!1538493 (= res!2043232 (isStrictlySorted!904 (toList!7015 lt!1957451)))))

(assert (=> d!1538493 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lt!1957451) lt!1957457) lt!1957864)))

(declare-fun b!4803270 () Bool)

(assert (=> b!4803270 (= e!2999626 (containsKey!4049 (toList!7015 lt!1957451) lt!1957457))))

(assert (= (and d!1538493 res!2043232) b!4803270))

(assert (=> d!1538493 m!5787272))

(assert (=> d!1538493 m!5787272))

(assert (=> d!1538493 m!5787510))

(declare-fun m!5788246 () Bool)

(assert (=> d!1538493 m!5788246))

(declare-fun m!5788248 () Bool)

(assert (=> d!1538493 m!5788248))

(assert (=> b!4803270 m!5787506))

(assert (=> b!4802796 d!1538493))

(assert (=> b!4802796 d!1538491))

(assert (=> b!4802796 d!1538325))

(declare-fun d!1538495 () Bool)

(assert (=> d!1538495 (= (isDefined!10337 lt!1957559) (not (isEmpty!29515 lt!1957559)))))

(declare-fun bs!1158355 () Bool)

(assert (= bs!1158355 d!1538495))

(assert (=> bs!1158355 m!5787434))

(assert (=> b!4802748 d!1538495))

(declare-fun b!4803271 () Bool)

(declare-fun e!2999629 () Bool)

(declare-fun e!2999631 () Bool)

(assert (=> b!4803271 (= e!2999629 e!2999631)))

(declare-fun res!2043235 () Bool)

(assert (=> b!4803271 (=> (not res!2043235) (not e!2999631))))

(declare-fun lt!1957865 () Option!13196)

(assert (=> b!4803271 (= res!2043235 (isDefined!10337 lt!1957865))))

(declare-fun b!4803272 () Bool)

(declare-fun e!2999630 () Option!13196)

(assert (=> b!4803272 (= e!2999630 (Some!13195 (h!60770 (t!361912 (apply!13041 lm!2473 lt!1957457)))))))

(declare-fun b!4803273 () Bool)

(assert (=> b!4803273 (= e!2999631 (contains!17998 (t!361912 (apply!13041 lm!2473 lt!1957457)) (get!18560 lt!1957865)))))

(declare-fun b!4803274 () Bool)

(declare-fun e!2999627 () Option!13196)

(assert (=> b!4803274 (= e!2999630 e!2999627)))

(declare-fun c!818746 () Bool)

(assert (=> b!4803274 (= c!818746 ((_ is Cons!54338) (t!361912 (apply!13041 lm!2473 lt!1957457))))))

(declare-fun b!4803275 () Bool)

(assert (=> b!4803275 (= e!2999627 (getPair!940 (t!361912 (t!361912 (apply!13041 lm!2473 lt!1957457))) key!5896))))

(declare-fun b!4803277 () Bool)

(assert (=> b!4803277 (= e!2999627 None!13195)))

(declare-fun e!2999628 () Bool)

(declare-fun b!4803278 () Bool)

(assert (=> b!4803278 (= e!2999628 (not (containsKey!4046 (t!361912 (apply!13041 lm!2473 lt!1957457)) key!5896)))))

(declare-fun d!1538497 () Bool)

(assert (=> d!1538497 e!2999629))

(declare-fun res!2043234 () Bool)

(assert (=> d!1538497 (=> res!2043234 e!2999629)))

(assert (=> d!1538497 (= res!2043234 e!2999628)))

(declare-fun res!2043233 () Bool)

(assert (=> d!1538497 (=> (not res!2043233) (not e!2999628))))

(assert (=> d!1538497 (= res!2043233 (isEmpty!29515 lt!1957865))))

(assert (=> d!1538497 (= lt!1957865 e!2999630)))

(declare-fun c!818745 () Bool)

(assert (=> d!1538497 (= c!818745 (and ((_ is Cons!54338) (t!361912 (apply!13041 lm!2473 lt!1957457))) (= (_1!31814 (h!60770 (t!361912 (apply!13041 lm!2473 lt!1957457)))) key!5896)))))

(assert (=> d!1538497 (noDuplicateKeys!2366 (t!361912 (apply!13041 lm!2473 lt!1957457)))))

(assert (=> d!1538497 (= (getPair!940 (t!361912 (apply!13041 lm!2473 lt!1957457)) key!5896) lt!1957865)))

(declare-fun b!4803276 () Bool)

(declare-fun res!2043236 () Bool)

(assert (=> b!4803276 (=> (not res!2043236) (not e!2999631))))

(assert (=> b!4803276 (= res!2043236 (= (_1!31814 (get!18560 lt!1957865)) key!5896))))

(assert (= (and d!1538497 c!818745) b!4803272))

(assert (= (and d!1538497 (not c!818745)) b!4803274))

(assert (= (and b!4803274 c!818746) b!4803275))

(assert (= (and b!4803274 (not c!818746)) b!4803277))

(assert (= (and d!1538497 res!2043233) b!4803278))

(assert (= (and d!1538497 (not res!2043234)) b!4803271))

(assert (= (and b!4803271 res!2043235) b!4803276))

(assert (= (and b!4803276 res!2043236) b!4803273))

(declare-fun m!5788250 () Bool)

(assert (=> d!1538497 m!5788250))

(declare-fun m!5788252 () Bool)

(assert (=> d!1538497 m!5788252))

(declare-fun m!5788254 () Bool)

(assert (=> b!4803271 m!5788254))

(declare-fun m!5788256 () Bool)

(assert (=> b!4803275 m!5788256))

(declare-fun m!5788258 () Bool)

(assert (=> b!4803276 m!5788258))

(assert (=> b!4803273 m!5788258))

(assert (=> b!4803273 m!5788258))

(declare-fun m!5788260 () Bool)

(assert (=> b!4803273 m!5788260))

(declare-fun m!5788262 () Bool)

(assert (=> b!4803278 m!5788262))

(assert (=> b!4802752 d!1538497))

(assert (=> b!4802774 d!1538403))

(assert (=> b!4802774 d!1538409))

(declare-fun d!1538499 () Bool)

(declare-fun lt!1957866 () Int)

(assert (=> d!1538499 (>= lt!1957866 0)))

(declare-fun e!2999632 () Int)

(assert (=> d!1538499 (= lt!1957866 e!2999632)))

(declare-fun c!818747 () Bool)

(assert (=> d!1538499 (= c!818747 ((_ is Nil!54339) (t!361913 (toList!7015 lt!1957451))))))

(assert (=> d!1538499 (= (size!36366 (t!361913 (toList!7015 lt!1957451))) lt!1957866)))

(declare-fun b!4803279 () Bool)

(assert (=> b!4803279 (= e!2999632 0)))

(declare-fun b!4803280 () Bool)

(assert (=> b!4803280 (= e!2999632 (+ 1 (size!36366 (t!361913 (t!361913 (toList!7015 lt!1957451))))))))

(assert (= (and d!1538499 c!818747) b!4803279))

(assert (= (and d!1538499 (not c!818747)) b!4803280))

(declare-fun m!5788264 () Bool)

(assert (=> b!4803280 m!5788264))

(assert (=> b!4802551 d!1538499))

(declare-fun d!1538501 () Bool)

(declare-fun lt!1957867 () Bool)

(assert (=> d!1538501 (= lt!1957867 (select (content!9756 (apply!13041 lm!2473 lt!1957457)) (get!18560 lt!1957559)))))

(declare-fun e!2999633 () Bool)

(assert (=> d!1538501 (= lt!1957867 e!2999633)))

(declare-fun res!2043238 () Bool)

(assert (=> d!1538501 (=> (not res!2043238) (not e!2999633))))

(assert (=> d!1538501 (= res!2043238 ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457)))))

(assert (=> d!1538501 (= (contains!17998 (apply!13041 lm!2473 lt!1957457) (get!18560 lt!1957559)) lt!1957867)))

(declare-fun b!4803281 () Bool)

(declare-fun e!2999634 () Bool)

(assert (=> b!4803281 (= e!2999633 e!2999634)))

(declare-fun res!2043237 () Bool)

(assert (=> b!4803281 (=> res!2043237 e!2999634)))

(assert (=> b!4803281 (= res!2043237 (= (h!60770 (apply!13041 lm!2473 lt!1957457)) (get!18560 lt!1957559)))))

(declare-fun b!4803282 () Bool)

(assert (=> b!4803282 (= e!2999634 (contains!17998 (t!361912 (apply!13041 lm!2473 lt!1957457)) (get!18560 lt!1957559)))))

(assert (= (and d!1538501 res!2043238) b!4803281))

(assert (= (and b!4803281 (not res!2043237)) b!4803282))

(assert (=> d!1538501 m!5787124))

(declare-fun m!5788266 () Bool)

(assert (=> d!1538501 m!5788266))

(assert (=> d!1538501 m!5787442))

(declare-fun m!5788268 () Bool)

(assert (=> d!1538501 m!5788268))

(assert (=> b!4803282 m!5787442))

(declare-fun m!5788270 () Bool)

(assert (=> b!4803282 m!5788270))

(assert (=> b!4802750 d!1538501))

(assert (=> b!4802750 d!1538299))

(declare-fun d!1538503 () Bool)

(assert (=> d!1538503 (= (isEmpty!29515 (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896)) (not ((_ is Some!13195) (getPair!940 (apply!13041 lm!2473 lt!1957457) key!5896))))))

(assert (=> d!1538125 d!1538503))

(declare-fun bs!1158356 () Bool)

(declare-fun b!4803303 () Bool)

(assert (= bs!1158356 (and b!4803303 b!4802980)))

(declare-fun lambda!232875 () Int)

(assert (=> bs!1158356 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232875 lambda!232821))))

(declare-fun bs!1158357 () Bool)

(assert (= bs!1158357 (and b!4803303 b!4803193)))

(assert (=> bs!1158357 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232875 lambda!232827))))

(assert (=> b!4803303 true))

(declare-fun bs!1158358 () Bool)

(declare-fun b!4803305 () Bool)

(assert (= bs!1158358 (and b!4803305 b!4802980)))

(declare-fun lambda!232876 () Int)

(assert (=> bs!1158358 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232876 lambda!232821))))

(declare-fun bs!1158359 () Bool)

(assert (= bs!1158359 (and b!4803305 b!4803193)))

(assert (=> bs!1158359 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232876 lambda!232827))))

(declare-fun bs!1158360 () Bool)

(assert (= bs!1158360 (and b!4803305 b!4803303)))

(assert (=> bs!1158360 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (= lambda!232876 lambda!232875))))

(assert (=> b!4803305 true))

(declare-fun bs!1158361 () Bool)

(declare-fun b!4803309 () Bool)

(assert (= bs!1158361 (and b!4803309 b!4802980)))

(declare-fun lambda!232877 () Int)

(assert (=> bs!1158361 (= (= (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232877 lambda!232821))))

(declare-fun bs!1158362 () Bool)

(assert (= bs!1158362 (and b!4803309 b!4803193)))

(assert (=> bs!1158362 (= lambda!232877 lambda!232827)))

(declare-fun bs!1158363 () Bool)

(assert (= bs!1158363 (and b!4803309 b!4803303)))

(assert (=> bs!1158363 (= (= (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (= lambda!232877 lambda!232875))))

(declare-fun bs!1158364 () Bool)

(assert (= bs!1158364 (and b!4803309 b!4803305)))

(assert (=> bs!1158364 (= (= (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))) (= lambda!232877 lambda!232876))))

(assert (=> b!4803309 true))

(declare-fun bs!1158365 () Bool)

(declare-fun b!4803307 () Bool)

(assert (= bs!1158365 (and b!4803307 b!4802981)))

(declare-fun lambda!232878 () Int)

(assert (=> bs!1158365 (= lambda!232878 lambda!232822)))

(declare-fun bs!1158366 () Bool)

(assert (= bs!1158366 (and b!4803307 b!4803194)))

(assert (=> bs!1158366 (= lambda!232878 lambda!232828)))

(declare-fun d!1538505 () Bool)

(declare-fun e!2999644 () Bool)

(assert (=> d!1538505 e!2999644))

(declare-fun res!2043245 () Bool)

(assert (=> d!1538505 (=> (not res!2043245) (not e!2999644))))

(declare-fun lt!1957886 () List!54465)

(assert (=> d!1538505 (= res!2043245 (noDuplicate!939 lt!1957886))))

(declare-fun e!2999646 () List!54465)

(assert (=> d!1538505 (= lt!1957886 e!2999646)))

(declare-fun c!818756 () Bool)

(assert (=> d!1538505 (= c!818756 ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))

(assert (=> d!1538505 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))

(assert (=> d!1538505 (= (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) lt!1957886)))

(declare-fun b!4803301 () Bool)

(assert (=> b!4803301 false))

(declare-fun e!2999645 () Unit!140855)

(declare-fun Unit!140914 () Unit!140855)

(assert (=> b!4803301 (= e!2999645 Unit!140914)))

(declare-fun b!4803302 () Bool)

(assert (=> b!4803302 (= e!2999646 Nil!54341)))

(assert (=> b!4803303 false))

(declare-fun lt!1957884 () Unit!140855)

(declare-fun forallContained!4223 (List!54465 Int K!15909) Unit!140855)

(assert (=> b!4803303 (= lt!1957884 (forallContained!4223 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) lambda!232875 (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))))

(declare-fun e!2999643 () Unit!140855)

(declare-fun Unit!140915 () Unit!140855)

(assert (=> b!4803303 (= e!2999643 Unit!140915)))

(declare-fun b!4803304 () Bool)

(declare-fun Unit!140916 () Unit!140855)

(assert (=> b!4803304 (= e!2999645 Unit!140916)))

(assert (=> b!4803305 (= e!2999646 (Cons!54341 (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))))

(declare-fun c!818754 () Bool)

(assert (=> b!4803305 (= c!818754 (containsKey!4050 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))))

(declare-fun lt!1957888 () Unit!140855)

(assert (=> b!4803305 (= lt!1957888 e!2999645)))

(declare-fun c!818755 () Bool)

(assert (=> b!4803305 (= c!818755 (contains!17999 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))))))

(declare-fun lt!1957887 () Unit!140855)

(assert (=> b!4803305 (= lt!1957887 e!2999643)))

(declare-fun lt!1957883 () List!54465)

(assert (=> b!4803305 (= lt!1957883 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))))

(declare-fun lt!1957882 () Unit!140855)

(declare-fun lemmaForallContainsAddHeadPreserves!354 (List!54462 List!54465 tuple2!57040) Unit!140855)

(assert (=> b!4803305 (= lt!1957882 (lemmaForallContainsAddHeadPreserves!354 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) lt!1957883 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))))

(assert (=> b!4803305 (forall!12346 lt!1957883 lambda!232876)))

(declare-fun lt!1957885 () Unit!140855)

(assert (=> b!4803305 (= lt!1957885 lt!1957882)))

(declare-fun b!4803306 () Bool)

(declare-fun res!2043247 () Bool)

(assert (=> b!4803306 (=> (not res!2043247) (not e!2999644))))

(assert (=> b!4803306 (= res!2043247 (= (length!734 lt!1957886) (length!735 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))))))

(assert (=> b!4803307 (= e!2999644 (= (content!9755 lt!1957886) (content!9755 (map!12284 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))) lambda!232878))))))

(declare-fun b!4803308 () Bool)

(declare-fun Unit!140917 () Unit!140855)

(assert (=> b!4803308 (= e!2999643 Unit!140917)))

(declare-fun res!2043246 () Bool)

(assert (=> b!4803309 (=> (not res!2043246) (not e!2999644))))

(assert (=> b!4803309 (= res!2043246 (forall!12346 lt!1957886 lambda!232877))))

(assert (= (and d!1538505 c!818756) b!4803305))

(assert (= (and d!1538505 (not c!818756)) b!4803302))

(assert (= (and b!4803305 c!818754) b!4803301))

(assert (= (and b!4803305 (not c!818754)) b!4803304))

(assert (= (and b!4803305 c!818755) b!4803303))

(assert (= (and b!4803305 (not c!818755)) b!4803308))

(assert (= (and d!1538505 res!2043245) b!4803306))

(assert (= (and b!4803306 res!2043247) b!4803309))

(assert (= (and b!4803309 res!2043246) b!4803307))

(declare-fun m!5788272 () Bool)

(assert (=> b!4803307 m!5788272))

(declare-fun m!5788274 () Bool)

(assert (=> b!4803307 m!5788274))

(assert (=> b!4803307 m!5788274))

(declare-fun m!5788276 () Bool)

(assert (=> b!4803307 m!5788276))

(declare-fun m!5788278 () Bool)

(assert (=> d!1538505 m!5788278))

(assert (=> d!1538505 m!5787930))

(declare-fun m!5788280 () Bool)

(assert (=> b!4803309 m!5788280))

(declare-fun m!5788282 () Bool)

(assert (=> b!4803305 m!5788282))

(declare-fun m!5788284 () Bool)

(assert (=> b!4803305 m!5788284))

(declare-fun m!5788286 () Bool)

(assert (=> b!4803305 m!5788286))

(assert (=> b!4803305 m!5788282))

(declare-fun m!5788288 () Bool)

(assert (=> b!4803305 m!5788288))

(declare-fun m!5788290 () Bool)

(assert (=> b!4803305 m!5788290))

(declare-fun m!5788292 () Bool)

(assert (=> b!4803306 m!5788292))

(assert (=> b!4803306 m!5788076))

(assert (=> b!4803303 m!5788282))

(assert (=> b!4803303 m!5788282))

(declare-fun m!5788294 () Bool)

(assert (=> b!4803303 m!5788294))

(assert (=> b!4802775 d!1538505))

(assert (=> b!4802792 d!1538423))

(declare-fun d!1538507 () Bool)

(declare-fun c!818757 () Bool)

(declare-fun e!2999648 () Bool)

(assert (=> d!1538507 (= c!818757 e!2999648)))

(declare-fun res!2043248 () Bool)

(assert (=> d!1538507 (=> (not res!2043248) (not e!2999648))))

(assert (=> d!1538507 (= res!2043248 ((_ is Cons!54339) (t!361913 (toList!7015 lm!2473))))))

(declare-fun e!2999647 () V!16155)

(assert (=> d!1538507 (= (getValue!156 (t!361913 (toList!7015 lm!2473)) key!5896) e!2999647)))

(declare-fun b!4803314 () Bool)

(assert (=> b!4803314 (= e!2999648 (containsKey!4046 (_2!31815 (h!60771 (t!361913 (toList!7015 lm!2473)))) key!5896))))

(declare-fun b!4803312 () Bool)

(assert (=> b!4803312 (= e!2999647 (_2!31814 (get!18560 (getPair!940 (_2!31815 (h!60771 (t!361913 (toList!7015 lm!2473)))) key!5896))))))

(declare-fun b!4803313 () Bool)

(assert (=> b!4803313 (= e!2999647 (getValue!156 (t!361913 (t!361913 (toList!7015 lm!2473))) key!5896))))

(assert (= (and d!1538507 res!2043248) b!4803314))

(assert (= (and d!1538507 c!818757) b!4803312))

(assert (= (and d!1538507 (not c!818757)) b!4803313))

(assert (=> b!4803314 m!5788212))

(declare-fun m!5788296 () Bool)

(assert (=> b!4803312 m!5788296))

(assert (=> b!4803312 m!5788296))

(declare-fun m!5788298 () Bool)

(assert (=> b!4803312 m!5788298))

(declare-fun m!5788300 () Bool)

(assert (=> b!4803313 m!5788300))

(assert (=> b!4802746 d!1538507))

(declare-fun d!1538509 () Bool)

(declare-fun res!2043249 () Bool)

(declare-fun e!2999649 () Bool)

(assert (=> d!1538509 (=> res!2043249 e!2999649)))

(assert (=> d!1538509 (= res!2043249 (not ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(assert (=> d!1538509 (= (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473)))) e!2999649)))

(declare-fun b!4803315 () Bool)

(declare-fun e!2999650 () Bool)

(assert (=> b!4803315 (= e!2999649 e!2999650)))

(declare-fun res!2043250 () Bool)

(assert (=> b!4803315 (=> (not res!2043250) (not e!2999650))))

(assert (=> b!4803315 (= res!2043250 (not (containsKey!4046 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473)))) (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))))

(declare-fun b!4803316 () Bool)

(assert (=> b!4803316 (= e!2999650 (noDuplicateKeys!2366 (t!361912 (_2!31815 (h!60771 (toList!7015 lm!2473))))))))

(assert (= (and d!1538509 (not res!2043249)) b!4803315))

(assert (= (and b!4803315 res!2043250) b!4803316))

(declare-fun m!5788302 () Bool)

(assert (=> b!4803315 m!5788302))

(declare-fun m!5788304 () Bool)

(assert (=> b!4803316 m!5788304))

(assert (=> bs!1158217 d!1538509))

(assert (=> d!1538089 d!1538087))

(declare-fun d!1538511 () Bool)

(assert (=> d!1538511 (containsKeyBiggerList!610 (toList!7015 lm!2473) key!5896)))

(assert (=> d!1538511 true))

(declare-fun _$33!896 () Unit!140855)

(assert (=> d!1538511 (= (choose!34725 lm!2473 key!5896 hashF!1559) _$33!896)))

(declare-fun bs!1158367 () Bool)

(assert (= bs!1158367 d!1538511))

(assert (=> bs!1158367 m!5787112))

(assert (=> d!1538089 d!1538511))

(declare-fun d!1538513 () Bool)

(declare-fun res!2043251 () Bool)

(declare-fun e!2999651 () Bool)

(assert (=> d!1538513 (=> res!2043251 e!2999651)))

(assert (=> d!1538513 (= res!2043251 ((_ is Nil!54339) (toList!7015 lm!2473)))))

(assert (=> d!1538513 (= (forall!12343 (toList!7015 lm!2473) lambda!232746) e!2999651)))

(declare-fun b!4803317 () Bool)

(declare-fun e!2999652 () Bool)

(assert (=> b!4803317 (= e!2999651 e!2999652)))

(declare-fun res!2043252 () Bool)

(assert (=> b!4803317 (=> (not res!2043252) (not e!2999652))))

(assert (=> b!4803317 (= res!2043252 (dynLambda!22097 lambda!232746 (h!60771 (toList!7015 lm!2473))))))

(declare-fun b!4803318 () Bool)

(assert (=> b!4803318 (= e!2999652 (forall!12343 (t!361913 (toList!7015 lm!2473)) lambda!232746))))

(assert (= (and d!1538513 (not res!2043251)) b!4803317))

(assert (= (and b!4803317 res!2043252) b!4803318))

(declare-fun b_lambda!187883 () Bool)

(assert (=> (not b_lambda!187883) (not b!4803317)))

(declare-fun m!5788306 () Bool)

(assert (=> b!4803317 m!5788306))

(declare-fun m!5788308 () Bool)

(assert (=> b!4803318 m!5788308))

(assert (=> d!1538089 d!1538513))

(declare-fun d!1538515 () Bool)

(assert (=> d!1538515 (= (get!18561 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457)) (v!48531 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457)))))

(assert (=> d!1538129 d!1538515))

(declare-fun b!4803320 () Bool)

(declare-fun e!2999653 () Option!13199)

(declare-fun e!2999654 () Option!13199)

(assert (=> b!4803320 (= e!2999653 e!2999654)))

(declare-fun c!818759 () Bool)

(assert (=> b!4803320 (= c!818759 (and ((_ is Cons!54339) (toList!7015 lm!2473)) (not (= (_1!31815 (h!60771 (toList!7015 lm!2473))) lt!1957457))))))

(declare-fun b!4803321 () Bool)

(assert (=> b!4803321 (= e!2999654 (getValueByKey!2406 (t!361913 (toList!7015 lm!2473)) lt!1957457))))

(declare-fun d!1538517 () Bool)

(declare-fun c!818758 () Bool)

(assert (=> d!1538517 (= c!818758 (and ((_ is Cons!54339) (toList!7015 lm!2473)) (= (_1!31815 (h!60771 (toList!7015 lm!2473))) lt!1957457)))))

(assert (=> d!1538517 (= (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457) e!2999653)))

(declare-fun b!4803319 () Bool)

(assert (=> b!4803319 (= e!2999653 (Some!13198 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(declare-fun b!4803322 () Bool)

(assert (=> b!4803322 (= e!2999654 None!13198)))

(assert (= (and d!1538517 c!818758) b!4803319))

(assert (= (and d!1538517 (not c!818758)) b!4803320))

(assert (= (and b!4803320 c!818759) b!4803321))

(assert (= (and b!4803320 (not c!818759)) b!4803322))

(declare-fun m!5788310 () Bool)

(assert (=> b!4803321 m!5788310))

(assert (=> d!1538129 d!1538517))

(assert (=> b!4802778 d!1538343))

(assert (=> b!4802778 d!1538349))

(declare-fun d!1538519 () Bool)

(assert (=> d!1538519 (= (isEmpty!29515 lt!1957559) (not ((_ is Some!13195) lt!1957559)))))

(assert (=> d!1538127 d!1538519))

(declare-fun d!1538521 () Bool)

(declare-fun res!2043253 () Bool)

(declare-fun e!2999655 () Bool)

(assert (=> d!1538521 (=> res!2043253 e!2999655)))

(assert (=> d!1538521 (= res!2043253 (not ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457))))))

(assert (=> d!1538521 (= (noDuplicateKeys!2366 (apply!13041 lm!2473 lt!1957457)) e!2999655)))

(declare-fun b!4803323 () Bool)

(declare-fun e!2999656 () Bool)

(assert (=> b!4803323 (= e!2999655 e!2999656)))

(declare-fun res!2043254 () Bool)

(assert (=> b!4803323 (=> (not res!2043254) (not e!2999656))))

(assert (=> b!4803323 (= res!2043254 (not (containsKey!4046 (t!361912 (apply!13041 lm!2473 lt!1957457)) (_1!31814 (h!60770 (apply!13041 lm!2473 lt!1957457))))))))

(declare-fun b!4803324 () Bool)

(assert (=> b!4803324 (= e!2999656 (noDuplicateKeys!2366 (t!361912 (apply!13041 lm!2473 lt!1957457))))))

(assert (= (and d!1538521 (not res!2043253)) b!4803323))

(assert (= (and b!4803323 res!2043254) b!4803324))

(declare-fun m!5788312 () Bool)

(assert (=> b!4803323 m!5788312))

(assert (=> b!4803324 m!5788252))

(assert (=> d!1538127 d!1538521))

(declare-fun d!1538523 () Bool)

(declare-fun e!2999657 () Bool)

(assert (=> d!1538523 e!2999657))

(declare-fun res!2043255 () Bool)

(assert (=> d!1538523 (=> res!2043255 e!2999657)))

(declare-fun lt!1957889 () Bool)

(assert (=> d!1538523 (= res!2043255 (not lt!1957889))))

(declare-fun lt!1957892 () Bool)

(assert (=> d!1538523 (= lt!1957889 lt!1957892)))

(declare-fun lt!1957891 () Unit!140855)

(declare-fun e!2999658 () Unit!140855)

(assert (=> d!1538523 (= lt!1957891 e!2999658)))

(declare-fun c!818760 () Bool)

(assert (=> d!1538523 (= c!818760 lt!1957892)))

(assert (=> d!1538523 (= lt!1957892 (containsKey!4049 (toList!7015 lt!1957451) (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538523 (= (contains!17995 lt!1957451 (hash!5028 hashF!1559 key!5896)) lt!1957889)))

(declare-fun b!4803325 () Bool)

(declare-fun lt!1957890 () Unit!140855)

(assert (=> b!4803325 (= e!2999658 lt!1957890)))

(assert (=> b!4803325 (= lt!1957890 (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lt!1957451) (hash!5028 hashF!1559 key!5896)))))

(assert (=> b!4803325 (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) (hash!5028 hashF!1559 key!5896)))))

(declare-fun b!4803326 () Bool)

(declare-fun Unit!140918 () Unit!140855)

(assert (=> b!4803326 (= e!2999658 Unit!140918)))

(declare-fun b!4803327 () Bool)

(assert (=> b!4803327 (= e!2999657 (isDefined!10340 (getValueByKey!2406 (toList!7015 lt!1957451) (hash!5028 hashF!1559 key!5896))))))

(assert (= (and d!1538523 c!818760) b!4803325))

(assert (= (and d!1538523 (not c!818760)) b!4803326))

(assert (= (and d!1538523 (not res!2043255)) b!4803327))

(assert (=> d!1538523 m!5787114))

(declare-fun m!5788314 () Bool)

(assert (=> d!1538523 m!5788314))

(assert (=> b!4803325 m!5787114))

(declare-fun m!5788316 () Bool)

(assert (=> b!4803325 m!5788316))

(assert (=> b!4803325 m!5787114))

(declare-fun m!5788318 () Bool)

(assert (=> b!4803325 m!5788318))

(assert (=> b!4803325 m!5788318))

(declare-fun m!5788320 () Bool)

(assert (=> b!4803325 m!5788320))

(assert (=> b!4803327 m!5787114))

(assert (=> b!4803327 m!5788318))

(assert (=> b!4803327 m!5788318))

(assert (=> b!4803327 m!5788320))

(assert (=> d!1538143 d!1538523))

(assert (=> d!1538143 d!1538123))

(declare-fun d!1538525 () Bool)

(declare-fun e!2999659 () Bool)

(assert (=> d!1538525 e!2999659))

(declare-fun res!2043256 () Bool)

(assert (=> d!1538525 (=> (not res!2043256) (not e!2999659))))

(assert (=> d!1538525 (= res!2043256 (contains!17995 lt!1957451 (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538525 true))

(declare-fun _$5!278 () Unit!140855)

(assert (=> d!1538525 (= (choose!34726 lt!1957451 key!5896 hashF!1559) _$5!278)))

(declare-fun b!4803328 () Bool)

(assert (=> b!4803328 (= e!2999659 (isDefined!10337 (getPair!940 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538525 res!2043256) b!4803328))

(assert (=> d!1538525 m!5787114))

(assert (=> d!1538525 m!5787114))

(assert (=> d!1538525 m!5787494))

(assert (=> b!4803328 m!5787114))

(assert (=> b!4803328 m!5787114))

(assert (=> b!4803328 m!5787500))

(assert (=> b!4803328 m!5787500))

(assert (=> b!4803328 m!5787502))

(assert (=> b!4803328 m!5787502))

(assert (=> b!4803328 m!5787504))

(assert (=> d!1538143 d!1538525))

(declare-fun d!1538527 () Bool)

(declare-fun res!2043257 () Bool)

(declare-fun e!2999660 () Bool)

(assert (=> d!1538527 (=> res!2043257 e!2999660)))

(assert (=> d!1538527 (= res!2043257 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538527 (= (forall!12343 (toList!7015 lt!1957451) lambda!232756) e!2999660)))

(declare-fun b!4803329 () Bool)

(declare-fun e!2999661 () Bool)

(assert (=> b!4803329 (= e!2999660 e!2999661)))

(declare-fun res!2043258 () Bool)

(assert (=> b!4803329 (=> (not res!2043258) (not e!2999661))))

(assert (=> b!4803329 (= res!2043258 (dynLambda!22097 lambda!232756 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803330 () Bool)

(assert (=> b!4803330 (= e!2999661 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232756))))

(assert (= (and d!1538527 (not res!2043257)) b!4803329))

(assert (= (and b!4803329 res!2043258) b!4803330))

(declare-fun b_lambda!187885 () Bool)

(assert (=> (not b_lambda!187885) (not b!4803329)))

(declare-fun m!5788322 () Bool)

(assert (=> b!4803329 m!5788322))

(declare-fun m!5788324 () Bool)

(assert (=> b!4803330 m!5788324))

(assert (=> d!1538143 d!1538527))

(declare-fun d!1538529 () Bool)

(declare-fun res!2043259 () Bool)

(declare-fun e!2999662 () Bool)

(assert (=> d!1538529 (=> res!2043259 e!2999662)))

(assert (=> d!1538529 (= res!2043259 (and ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457)) (= (_1!31814 (h!60770 (apply!13041 lm!2473 lt!1957457))) key!5896)))))

(assert (=> d!1538529 (= (containsKey!4046 (apply!13041 lm!2473 lt!1957457) key!5896) e!2999662)))

(declare-fun b!4803331 () Bool)

(declare-fun e!2999663 () Bool)

(assert (=> b!4803331 (= e!2999662 e!2999663)))

(declare-fun res!2043260 () Bool)

(assert (=> b!4803331 (=> (not res!2043260) (not e!2999663))))

(assert (=> b!4803331 (= res!2043260 ((_ is Cons!54338) (apply!13041 lm!2473 lt!1957457)))))

(declare-fun b!4803332 () Bool)

(assert (=> b!4803332 (= e!2999663 (containsKey!4046 (t!361912 (apply!13041 lm!2473 lt!1957457)) key!5896))))

(assert (= (and d!1538529 (not res!2043259)) b!4803331))

(assert (= (and b!4803331 res!2043260) b!4803332))

(assert (=> b!4803332 m!5788262))

(assert (=> b!4802755 d!1538529))

(declare-fun d!1538531 () Bool)

(assert (=> d!1538531 (= (isDefined!10337 (getPair!940 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29515 (getPair!940 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1158368 () Bool)

(assert (= bs!1158368 d!1538531))

(assert (=> bs!1158368 m!5787502))

(declare-fun m!5788326 () Bool)

(assert (=> bs!1158368 m!5788326))

(assert (=> b!4802795 d!1538531))

(declare-fun b!4803333 () Bool)

(declare-fun e!2999666 () Bool)

(declare-fun e!2999668 () Bool)

(assert (=> b!4803333 (= e!2999666 e!2999668)))

(declare-fun res!2043263 () Bool)

(assert (=> b!4803333 (=> (not res!2043263) (not e!2999668))))

(declare-fun lt!1957893 () Option!13196)

(assert (=> b!4803333 (= res!2043263 (isDefined!10337 lt!1957893))))

(declare-fun b!4803334 () Bool)

(declare-fun e!2999667 () Option!13196)

(assert (=> b!4803334 (= e!2999667 (Some!13195 (h!60770 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)))))))

(declare-fun b!4803335 () Bool)

(assert (=> b!4803335 (= e!2999668 (contains!17998 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) (get!18560 lt!1957893)))))

(declare-fun b!4803336 () Bool)

(declare-fun e!2999664 () Option!13196)

(assert (=> b!4803336 (= e!2999667 e!2999664)))

(declare-fun c!818762 () Bool)

(assert (=> b!4803336 (= c!818762 ((_ is Cons!54338) (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896))))))

(declare-fun b!4803337 () Bool)

(assert (=> b!4803337 (= e!2999664 (getPair!940 (t!361912 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4803339 () Bool)

(assert (=> b!4803339 (= e!2999664 None!13195)))

(declare-fun e!2999665 () Bool)

(declare-fun b!4803340 () Bool)

(assert (=> b!4803340 (= e!2999665 (not (containsKey!4046 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896)))))

(declare-fun d!1538533 () Bool)

(assert (=> d!1538533 e!2999666))

(declare-fun res!2043262 () Bool)

(assert (=> d!1538533 (=> res!2043262 e!2999666)))

(assert (=> d!1538533 (= res!2043262 e!2999665)))

(declare-fun res!2043261 () Bool)

(assert (=> d!1538533 (=> (not res!2043261) (not e!2999665))))

(assert (=> d!1538533 (= res!2043261 (isEmpty!29515 lt!1957893))))

(assert (=> d!1538533 (= lt!1957893 e!2999667)))

(declare-fun c!818761 () Bool)

(assert (=> d!1538533 (= c!818761 (and ((_ is Cons!54338) (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896))) (= (_1!31814 (h!60770 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1538533 (noDuplicateKeys!2366 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)))))

(assert (=> d!1538533 (= (getPair!940 (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) key!5896) lt!1957893)))

(declare-fun b!4803338 () Bool)

(declare-fun res!2043264 () Bool)

(assert (=> b!4803338 (=> (not res!2043264) (not e!2999668))))

(assert (=> b!4803338 (= res!2043264 (= (_1!31814 (get!18560 lt!1957893)) key!5896))))

(assert (= (and d!1538533 c!818761) b!4803334))

(assert (= (and d!1538533 (not c!818761)) b!4803336))

(assert (= (and b!4803336 c!818762) b!4803337))

(assert (= (and b!4803336 (not c!818762)) b!4803339))

(assert (= (and d!1538533 res!2043261) b!4803340))

(assert (= (and d!1538533 (not res!2043262)) b!4803333))

(assert (= (and b!4803333 res!2043263) b!4803338))

(assert (= (and b!4803338 res!2043264) b!4803335))

(declare-fun m!5788328 () Bool)

(assert (=> d!1538533 m!5788328))

(assert (=> d!1538533 m!5787500))

(declare-fun m!5788330 () Bool)

(assert (=> d!1538533 m!5788330))

(declare-fun m!5788332 () Bool)

(assert (=> b!4803333 m!5788332))

(declare-fun m!5788334 () Bool)

(assert (=> b!4803337 m!5788334))

(declare-fun m!5788336 () Bool)

(assert (=> b!4803338 m!5788336))

(assert (=> b!4803335 m!5788336))

(assert (=> b!4803335 m!5787500))

(assert (=> b!4803335 m!5788336))

(declare-fun m!5788338 () Bool)

(assert (=> b!4803335 m!5788338))

(assert (=> b!4803340 m!5787500))

(declare-fun m!5788340 () Bool)

(assert (=> b!4803340 m!5788340))

(assert (=> b!4802795 d!1538533))

(declare-fun d!1538535 () Bool)

(assert (=> d!1538535 (= (apply!13041 lt!1957451 (hash!5028 hashF!1559 key!5896)) (get!18561 (getValueByKey!2406 (toList!7015 lt!1957451) (hash!5028 hashF!1559 key!5896))))))

(declare-fun bs!1158369 () Bool)

(assert (= bs!1158369 d!1538535))

(assert (=> bs!1158369 m!5787114))

(assert (=> bs!1158369 m!5788318))

(assert (=> bs!1158369 m!5788318))

(declare-fun m!5788342 () Bool)

(assert (=> bs!1158369 m!5788342))

(assert (=> b!4802795 d!1538535))

(assert (=> b!4802795 d!1538123))

(declare-fun d!1538537 () Bool)

(declare-fun lt!1957894 () Int)

(assert (=> d!1538537 (>= lt!1957894 0)))

(declare-fun e!2999669 () Int)

(assert (=> d!1538537 (= lt!1957894 e!2999669)))

(declare-fun c!818763 () Bool)

(assert (=> d!1538537 (= c!818763 ((_ is Nil!54339) (t!361913 (toList!7015 lm!2473))))))

(assert (=> d!1538537 (= (size!36366 (t!361913 (toList!7015 lm!2473))) lt!1957894)))

(declare-fun b!4803341 () Bool)

(assert (=> b!4803341 (= e!2999669 0)))

(declare-fun b!4803342 () Bool)

(assert (=> b!4803342 (= e!2999669 (+ 1 (size!36366 (t!361913 (t!361913 (toList!7015 lm!2473))))))))

(assert (= (and d!1538537 c!818763) b!4803341))

(assert (= (and d!1538537 (not c!818763)) b!4803342))

(declare-fun m!5788344 () Bool)

(assert (=> b!4803342 m!5788344))

(assert (=> b!4802553 d!1538537))

(declare-fun bs!1158370 () Bool)

(declare-fun b!4803345 () Bool)

(assert (= bs!1158370 (and b!4803345 b!4803309)))

(declare-fun lambda!232879 () Int)

(assert (=> bs!1158370 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232879 lambda!232877))))

(declare-fun bs!1158371 () Bool)

(assert (= bs!1158371 (and b!4803345 b!4802980)))

(assert (=> bs!1158371 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232879 lambda!232821))))

(declare-fun bs!1158372 () Bool)

(assert (= bs!1158372 (and b!4803345 b!4803305)))

(assert (=> bs!1158372 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))) (= lambda!232879 lambda!232876))))

(declare-fun bs!1158373 () Bool)

(assert (= bs!1158373 (and b!4803345 b!4803303)))

(assert (=> bs!1158373 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (= lambda!232879 lambda!232875))))

(declare-fun bs!1158374 () Bool)

(assert (= bs!1158374 (and b!4803345 b!4803193)))

(assert (=> bs!1158374 (= (= (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232879 lambda!232827))))

(assert (=> b!4803345 true))

(declare-fun bs!1158375 () Bool)

(declare-fun b!4803347 () Bool)

(assert (= bs!1158375 (and b!4803347 b!4803345)))

(declare-fun lambda!232880 () Int)

(assert (=> bs!1158375 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (= lambda!232880 lambda!232879))))

(declare-fun bs!1158376 () Bool)

(assert (= bs!1158376 (and b!4803347 b!4803309)))

(assert (=> bs!1158376 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232880 lambda!232877))))

(declare-fun bs!1158377 () Bool)

(assert (= bs!1158377 (and b!4803347 b!4802980)))

(assert (=> bs!1158377 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (= lambda!232880 lambda!232821))))

(declare-fun bs!1158378 () Bool)

(assert (= bs!1158378 (and b!4803347 b!4803305)))

(assert (=> bs!1158378 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))) (= lambda!232880 lambda!232876))))

(declare-fun bs!1158379 () Bool)

(assert (= bs!1158379 (and b!4803347 b!4803303)))

(assert (=> bs!1158379 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (= lambda!232880 lambda!232875))))

(declare-fun bs!1158380 () Bool)

(assert (= bs!1158380 (and b!4803347 b!4803193)))

(assert (=> bs!1158380 (= (= (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232880 lambda!232827))))

(assert (=> b!4803347 true))

(declare-fun bs!1158381 () Bool)

(declare-fun b!4803351 () Bool)

(assert (= bs!1158381 (and b!4803351 b!4803345)))

(declare-fun lambda!232881 () Int)

(assert (=> bs!1158381 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (= lambda!232881 lambda!232879))))

(declare-fun bs!1158382 () Bool)

(assert (= bs!1158382 (and b!4803351 b!4803309)))

(assert (=> bs!1158382 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232881 lambda!232877))))

(declare-fun bs!1158383 () Bool)

(assert (= bs!1158383 (and b!4803351 b!4802980)))

(assert (=> bs!1158383 (= lambda!232881 lambda!232821)))

(declare-fun bs!1158384 () Bool)

(assert (= bs!1158384 (and b!4803351 b!4803305)))

(assert (=> bs!1158384 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))))) (= lambda!232881 lambda!232876))))

(declare-fun bs!1158385 () Bool)

(assert (= bs!1158385 (and b!4803351 b!4803347)))

(assert (=> bs!1158385 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (Cons!54338 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))) (= lambda!232881 lambda!232880))))

(declare-fun bs!1158386 () Bool)

(assert (= bs!1158386 (and b!4803351 b!4803303)))

(assert (=> bs!1158386 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lm!2473))))) (= lambda!232881 lambda!232875))))

(declare-fun bs!1158387 () Bool)

(assert (= bs!1158387 (and b!4803351 b!4803193)))

(assert (=> bs!1158387 (= (= (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) (toList!7016 (extractMap!2495 (toList!7015 lm!2473)))) (= lambda!232881 lambda!232827))))

(assert (=> b!4803351 true))

(declare-fun bs!1158388 () Bool)

(declare-fun b!4803349 () Bool)

(assert (= bs!1158388 (and b!4803349 b!4802981)))

(declare-fun lambda!232882 () Int)

(assert (=> bs!1158388 (= lambda!232882 lambda!232822)))

(declare-fun bs!1158389 () Bool)

(assert (= bs!1158389 (and b!4803349 b!4803194)))

(assert (=> bs!1158389 (= lambda!232882 lambda!232828)))

(declare-fun bs!1158390 () Bool)

(assert (= bs!1158390 (and b!4803349 b!4803307)))

(assert (=> bs!1158390 (= lambda!232882 lambda!232878)))

(declare-fun d!1538539 () Bool)

(declare-fun e!2999671 () Bool)

(assert (=> d!1538539 e!2999671))

(declare-fun res!2043265 () Bool)

(assert (=> d!1538539 (=> (not res!2043265) (not e!2999671))))

(declare-fun lt!1957899 () List!54465)

(assert (=> d!1538539 (= res!2043265 (noDuplicate!939 lt!1957899))))

(declare-fun e!2999673 () List!54465)

(assert (=> d!1538539 (= lt!1957899 e!2999673)))

(declare-fun c!818766 () Bool)

(assert (=> d!1538539 (= c!818766 ((_ is Cons!54338) (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))

(assert (=> d!1538539 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))

(assert (=> d!1538539 (= (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) lt!1957899)))

(declare-fun b!4803343 () Bool)

(assert (=> b!4803343 false))

(declare-fun e!2999672 () Unit!140855)

(declare-fun Unit!140919 () Unit!140855)

(assert (=> b!4803343 (= e!2999672 Unit!140919)))

(declare-fun b!4803344 () Bool)

(assert (=> b!4803344 (= e!2999673 Nil!54341)))

(assert (=> b!4803345 false))

(declare-fun lt!1957897 () Unit!140855)

(assert (=> b!4803345 (= lt!1957897 (forallContained!4223 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) lambda!232879 (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))))

(declare-fun e!2999670 () Unit!140855)

(declare-fun Unit!140920 () Unit!140855)

(assert (=> b!4803345 (= e!2999670 Unit!140920)))

(declare-fun b!4803346 () Bool)

(declare-fun Unit!140921 () Unit!140855)

(assert (=> b!4803346 (= e!2999672 Unit!140921)))

(assert (=> b!4803347 (= e!2999673 (Cons!54341 (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))))

(declare-fun c!818764 () Bool)

(assert (=> b!4803347 (= c!818764 (containsKey!4050 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))))

(declare-fun lt!1957901 () Unit!140855)

(assert (=> b!4803347 (= lt!1957901 e!2999672)))

(declare-fun c!818765 () Bool)

(assert (=> b!4803347 (= c!818765 (contains!17999 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))) (_1!31814 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))))))))

(declare-fun lt!1957900 () Unit!140855)

(assert (=> b!4803347 (= lt!1957900 e!2999670)))

(declare-fun lt!1957896 () List!54465)

(assert (=> b!4803347 (= lt!1957896 (getKeysList!1104 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))))

(declare-fun lt!1957895 () Unit!140855)

(assert (=> b!4803347 (= lt!1957895 (lemmaForallContainsAddHeadPreserves!354 (t!361912 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) lt!1957896 (h!60770 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))))

(assert (=> b!4803347 (forall!12346 lt!1957896 lambda!232880)))

(declare-fun lt!1957898 () Unit!140855)

(assert (=> b!4803347 (= lt!1957898 lt!1957895)))

(declare-fun b!4803348 () Bool)

(declare-fun res!2043267 () Bool)

(assert (=> b!4803348 (=> (not res!2043267) (not e!2999671))))

(assert (=> b!4803348 (= res!2043267 (= (length!734 lt!1957899) (length!735 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))))

(assert (=> b!4803349 (= e!2999671 (= (content!9755 lt!1957899) (content!9755 (map!12284 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) lambda!232882))))))

(declare-fun b!4803350 () Bool)

(declare-fun Unit!140922 () Unit!140855)

(assert (=> b!4803350 (= e!2999670 Unit!140922)))

(declare-fun res!2043266 () Bool)

(assert (=> b!4803351 (=> (not res!2043266) (not e!2999671))))

(assert (=> b!4803351 (= res!2043266 (forall!12346 lt!1957899 lambda!232881))))

(assert (= (and d!1538539 c!818766) b!4803347))

(assert (= (and d!1538539 (not c!818766)) b!4803344))

(assert (= (and b!4803347 c!818764) b!4803343))

(assert (= (and b!4803347 (not c!818764)) b!4803346))

(assert (= (and b!4803347 c!818765) b!4803345))

(assert (= (and b!4803347 (not c!818765)) b!4803350))

(assert (= (and d!1538539 res!2043265) b!4803348))

(assert (= (and b!4803348 res!2043267) b!4803351))

(assert (= (and b!4803351 res!2043266) b!4803349))

(declare-fun m!5788346 () Bool)

(assert (=> b!4803349 m!5788346))

(declare-fun m!5788348 () Bool)

(assert (=> b!4803349 m!5788348))

(assert (=> b!4803349 m!5788348))

(declare-fun m!5788350 () Bool)

(assert (=> b!4803349 m!5788350))

(declare-fun m!5788352 () Bool)

(assert (=> d!1538539 m!5788352))

(assert (=> d!1538539 m!5788236))

(declare-fun m!5788354 () Bool)

(assert (=> b!4803351 m!5788354))

(declare-fun m!5788356 () Bool)

(assert (=> b!4803347 m!5788356))

(declare-fun m!5788358 () Bool)

(assert (=> b!4803347 m!5788358))

(declare-fun m!5788360 () Bool)

(assert (=> b!4803347 m!5788360))

(assert (=> b!4803347 m!5788356))

(declare-fun m!5788362 () Bool)

(assert (=> b!4803347 m!5788362))

(declare-fun m!5788364 () Bool)

(assert (=> b!4803347 m!5788364))

(declare-fun m!5788366 () Bool)

(assert (=> b!4803348 m!5788366))

(assert (=> b!4803348 m!5787774))

(assert (=> b!4803345 m!5788356))

(assert (=> b!4803345 m!5788356))

(declare-fun m!5788368 () Bool)

(assert (=> b!4803345 m!5788368))

(assert (=> b!4802800 d!1538539))

(declare-fun d!1538541 () Bool)

(declare-fun c!818767 () Bool)

(declare-fun e!2999675 () Bool)

(assert (=> d!1538541 (= c!818767 e!2999675)))

(declare-fun res!2043268 () Bool)

(assert (=> d!1538541 (=> (not res!2043268) (not e!2999675))))

(assert (=> d!1538541 (= res!2043268 ((_ is Cons!54339) (t!361913 (toList!7015 lt!1957451))))))

(declare-fun e!2999674 () V!16155)

(assert (=> d!1538541 (= (getValue!156 (t!361913 (toList!7015 lt!1957451)) key!5896) e!2999674)))

(declare-fun b!4803354 () Bool)

(assert (=> b!4803354 (= e!2999675 (containsKey!4046 (_2!31815 (h!60771 (t!361913 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun b!4803352 () Bool)

(assert (=> b!4803352 (= e!2999674 (_2!31814 (get!18560 (getPair!940 (_2!31815 (h!60771 (t!361913 (toList!7015 lt!1957451)))) key!5896))))))

(declare-fun b!4803353 () Bool)

(assert (=> b!4803353 (= e!2999674 (getValue!156 (t!361913 (t!361913 (toList!7015 lt!1957451))) key!5896))))

(assert (= (and d!1538541 res!2043268) b!4803354))

(assert (= (and d!1538541 c!818767) b!4803352))

(assert (= (and d!1538541 (not c!818767)) b!4803353))

(assert (=> b!4803354 m!5787898))

(declare-fun m!5788370 () Bool)

(assert (=> b!4803352 m!5788370))

(assert (=> b!4803352 m!5788370))

(declare-fun m!5788372 () Bool)

(assert (=> b!4803352 m!5788372))

(declare-fun m!5788374 () Bool)

(assert (=> b!4803353 m!5788374))

(assert (=> b!4802790 d!1538541))

(declare-fun d!1538543 () Bool)

(declare-fun lt!1957902 () Bool)

(assert (=> d!1538543 (= lt!1957902 (select (content!9755 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun e!2999676 () Bool)

(assert (=> d!1538543 (= lt!1957902 e!2999676)))

(declare-fun res!2043269 () Bool)

(assert (=> d!1538543 (=> (not res!2043269) (not e!2999676))))

(assert (=> d!1538543 (= res!2043269 ((_ is Cons!54341) (keys!19871 (extractMap!2495 (toList!7015 lt!1957451)))))))

(assert (=> d!1538543 (= (contains!17999 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) lt!1957902)))

(declare-fun b!4803355 () Bool)

(declare-fun e!2999677 () Bool)

(assert (=> b!4803355 (= e!2999676 e!2999677)))

(declare-fun res!2043270 () Bool)

(assert (=> b!4803355 (=> res!2043270 e!2999677)))

(assert (=> b!4803355 (= res!2043270 (= (h!60773 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896))))

(declare-fun b!4803356 () Bool)

(assert (=> b!4803356 (= e!2999677 (contains!17999 (t!361915 (keys!19871 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896))))

(assert (= (and d!1538543 res!2043269) b!4803355))

(assert (= (and b!4803355 (not res!2043270)) b!4803356))

(assert (=> d!1538543 m!5787512))

(declare-fun m!5788376 () Bool)

(assert (=> d!1538543 m!5788376))

(declare-fun m!5788378 () Bool)

(assert (=> d!1538543 m!5788378))

(declare-fun m!5788380 () Bool)

(assert (=> b!4803356 m!5788380))

(assert (=> b!4802799 d!1538543))

(assert (=> b!4802799 d!1538239))

(assert (=> d!1538157 d!1538147))

(assert (=> d!1538157 d!1538155))

(declare-fun d!1538545 () Bool)

(assert (=> d!1538545 (not (contains!17994 (extractMap!2495 (toList!7015 lt!1957451)) key!5896))))

(assert (=> d!1538545 true))

(declare-fun _$28!865 () Unit!140855)

(assert (=> d!1538545 (= (choose!34728 lt!1957451 key!5896 hashF!1559) _$28!865)))

(declare-fun bs!1158391 () Bool)

(assert (= bs!1158391 d!1538545))

(assert (=> bs!1158391 m!5787132))

(assert (=> bs!1158391 m!5787132))

(assert (=> bs!1158391 m!5787138))

(assert (=> d!1538157 d!1538545))

(declare-fun d!1538547 () Bool)

(declare-fun res!2043271 () Bool)

(declare-fun e!2999678 () Bool)

(assert (=> d!1538547 (=> res!2043271 e!2999678)))

(assert (=> d!1538547 (= res!2043271 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538547 (= (forall!12343 (toList!7015 lt!1957451) lambda!232763) e!2999678)))

(declare-fun b!4803357 () Bool)

(declare-fun e!2999679 () Bool)

(assert (=> b!4803357 (= e!2999678 e!2999679)))

(declare-fun res!2043272 () Bool)

(assert (=> b!4803357 (=> (not res!2043272) (not e!2999679))))

(assert (=> b!4803357 (= res!2043272 (dynLambda!22097 lambda!232763 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803358 () Bool)

(assert (=> b!4803358 (= e!2999679 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232763))))

(assert (= (and d!1538547 (not res!2043271)) b!4803357))

(assert (= (and b!4803357 res!2043272) b!4803358))

(declare-fun b_lambda!187887 () Bool)

(assert (=> (not b_lambda!187887) (not b!4803357)))

(declare-fun m!5788382 () Bool)

(assert (=> b!4803357 m!5788382))

(declare-fun m!5788384 () Bool)

(assert (=> b!4803358 m!5788384))

(assert (=> d!1538157 d!1538547))

(declare-fun bs!1158392 () Bool)

(declare-fun b!4803361 () Bool)

(assert (= bs!1158392 (and b!4803361 b!4803238)))

(declare-fun lambda!232883 () Int)

(assert (=> bs!1158392 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232883 lambda!232862))))

(declare-fun bs!1158393 () Bool)

(assert (= bs!1158393 (and b!4803361 b!4803237)))

(assert (=> bs!1158393 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232883 lambda!232863))))

(assert (=> bs!1158393 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957849) (= lambda!232883 lambda!232864))))

(declare-fun bs!1158394 () Bool)

(assert (= bs!1158394 (and b!4803361 d!1538433)))

(assert (=> bs!1158394 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957845) (= lambda!232883 lambda!232865))))

(assert (=> b!4803361 true))

(declare-fun bs!1158395 () Bool)

(declare-fun b!4803360 () Bool)

(assert (= bs!1158395 (and b!4803360 b!4803238)))

(declare-fun lambda!232884 () Int)

(assert (=> bs!1158395 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232884 lambda!232862))))

(declare-fun bs!1158396 () Bool)

(assert (= bs!1158396 (and b!4803360 b!4803237)))

(assert (=> bs!1158396 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957849) (= lambda!232884 lambda!232864))))

(declare-fun bs!1158397 () Bool)

(assert (= bs!1158397 (and b!4803360 b!4803361)))

(assert (=> bs!1158397 (= lambda!232884 lambda!232883)))

(declare-fun bs!1158398 () Bool)

(assert (= bs!1158398 (and b!4803360 d!1538433)))

(assert (=> bs!1158398 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957845) (= lambda!232884 lambda!232865))))

(assert (=> bs!1158396 (= (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232884 lambda!232863))))

(assert (=> b!4803360 true))

(declare-fun lt!1957917 () ListMap!6487)

(declare-fun lambda!232885 () Int)

(assert (=> bs!1158395 (= (= lt!1957917 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232885 lambda!232862))))

(assert (=> bs!1158396 (= (= lt!1957917 lt!1957849) (= lambda!232885 lambda!232864))))

(assert (=> bs!1158397 (= (= lt!1957917 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (= lambda!232885 lambda!232883))))

(assert (=> b!4803360 (= (= lt!1957917 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (= lambda!232885 lambda!232884))))

(assert (=> bs!1158398 (= (= lt!1957917 lt!1957845) (= lambda!232885 lambda!232865))))

(assert (=> bs!1158396 (= (= lt!1957917 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232885 lambda!232863))))

(assert (=> b!4803360 true))

(declare-fun bs!1158399 () Bool)

(declare-fun d!1538549 () Bool)

(assert (= bs!1158399 (and d!1538549 b!4803238)))

(declare-fun lambda!232886 () Int)

(declare-fun lt!1957913 () ListMap!6487)

(assert (=> bs!1158399 (= (= lt!1957913 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232886 lambda!232862))))

(declare-fun bs!1158400 () Bool)

(assert (= bs!1158400 (and d!1538549 b!4803237)))

(assert (=> bs!1158400 (= (= lt!1957913 lt!1957849) (= lambda!232886 lambda!232864))))

(declare-fun bs!1158401 () Bool)

(assert (= bs!1158401 (and d!1538549 b!4803361)))

(assert (=> bs!1158401 (= (= lt!1957913 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (= lambda!232886 lambda!232883))))

(declare-fun bs!1158402 () Bool)

(assert (= bs!1158402 (and d!1538549 b!4803360)))

(assert (=> bs!1158402 (= (= lt!1957913 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (= lambda!232886 lambda!232884))))

(declare-fun bs!1158403 () Bool)

(assert (= bs!1158403 (and d!1538549 d!1538433)))

(assert (=> bs!1158403 (= (= lt!1957913 lt!1957845) (= lambda!232886 lambda!232865))))

(assert (=> bs!1158402 (= (= lt!1957913 lt!1957917) (= lambda!232886 lambda!232885))))

(assert (=> bs!1158400 (= (= lt!1957913 (extractMap!2495 (t!361913 (toList!7015 lm!2473)))) (= lambda!232886 lambda!232863))))

(assert (=> d!1538549 true))

(declare-fun b!4803359 () Bool)

(declare-fun res!2043274 () Bool)

(declare-fun e!2999682 () Bool)

(assert (=> b!4803359 (=> (not res!2043274) (not e!2999682))))

(assert (=> b!4803359 (= res!2043274 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) lambda!232886))))

(assert (=> d!1538549 e!2999682))

(declare-fun res!2043273 () Bool)

(assert (=> d!1538549 (=> (not res!2043273) (not e!2999682))))

(assert (=> d!1538549 (= res!2043273 (forall!12347 (_2!31815 (h!60771 (toList!7015 lt!1957451))) lambda!232886))))

(declare-fun e!2999681 () ListMap!6487)

(assert (=> d!1538549 (= lt!1957913 e!2999681)))

(declare-fun c!818768 () Bool)

(assert (=> d!1538549 (= c!818768 ((_ is Nil!54338) (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> d!1538549 (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))

(assert (=> d!1538549 (= (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (toList!7015 lt!1957451))) (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) lt!1957913)))

(declare-fun call!335460 () Bool)

(declare-fun bm!335453 () Bool)

(assert (=> bm!335453 (= call!335460 (forall!12347 (ite c!818768 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (_2!31815 (h!60771 (toList!7015 lt!1957451)))) (ite c!818768 lambda!232883 lambda!232885)))))

(assert (=> b!4803360 (= e!2999681 lt!1957917)))

(declare-fun lt!1957903 () ListMap!6487)

(assert (=> b!4803360 (= lt!1957903 (+!2509 (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(assert (=> b!4803360 (= lt!1957917 (addToMapMapFromBucket!1735 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) (+!2509 (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))))

(declare-fun lt!1957915 () Unit!140855)

(declare-fun call!335458 () Unit!140855)

(assert (=> b!4803360 (= lt!1957915 call!335458)))

(assert (=> b!4803360 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) lambda!232884)))

(declare-fun lt!1957921 () Unit!140855)

(assert (=> b!4803360 (= lt!1957921 lt!1957915)))

(assert (=> b!4803360 (forall!12347 (toList!7016 lt!1957903) lambda!232885)))

(declare-fun lt!1957911 () Unit!140855)

(declare-fun Unit!140923 () Unit!140855)

(assert (=> b!4803360 (= lt!1957911 Unit!140923)))

(assert (=> b!4803360 (forall!12347 (t!361912 (_2!31815 (h!60771 (toList!7015 lt!1957451)))) lambda!232885)))

(declare-fun lt!1957916 () Unit!140855)

(declare-fun Unit!140924 () Unit!140855)

(assert (=> b!4803360 (= lt!1957916 Unit!140924)))

(declare-fun lt!1957920 () Unit!140855)

(declare-fun Unit!140925 () Unit!140855)

(assert (=> b!4803360 (= lt!1957920 Unit!140925)))

(declare-fun lt!1957906 () Unit!140855)

(assert (=> b!4803360 (= lt!1957906 (forallContained!4222 (toList!7016 lt!1957903) lambda!232885 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(assert (=> b!4803360 (contains!17994 lt!1957903 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(declare-fun lt!1957912 () Unit!140855)

(declare-fun Unit!140926 () Unit!140855)

(assert (=> b!4803360 (= lt!1957912 Unit!140926)))

(assert (=> b!4803360 (contains!17994 lt!1957917 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))))))

(declare-fun lt!1957909 () Unit!140855)

(declare-fun Unit!140927 () Unit!140855)

(assert (=> b!4803360 (= lt!1957909 Unit!140927)))

(assert (=> b!4803360 call!335460))

(declare-fun lt!1957923 () Unit!140855)

(declare-fun Unit!140928 () Unit!140855)

(assert (=> b!4803360 (= lt!1957923 Unit!140928)))

(assert (=> b!4803360 (forall!12347 (toList!7016 lt!1957903) lambda!232885)))

(declare-fun lt!1957910 () Unit!140855)

(declare-fun Unit!140929 () Unit!140855)

(assert (=> b!4803360 (= lt!1957910 Unit!140929)))

(declare-fun lt!1957905 () Unit!140855)

(declare-fun Unit!140930 () Unit!140855)

(assert (=> b!4803360 (= lt!1957905 Unit!140930)))

(declare-fun lt!1957914 () Unit!140855)

(assert (=> b!4803360 (= lt!1957914 (addForallContainsKeyThenBeforeAdding!964 (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957917 (_1!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451))))) (_2!31814 (h!60770 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))))

(assert (=> b!4803360 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) lambda!232885)))

(declare-fun lt!1957919 () Unit!140855)

(assert (=> b!4803360 (= lt!1957919 lt!1957914)))

(assert (=> b!4803360 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) lambda!232885)))

(declare-fun lt!1957904 () Unit!140855)

(declare-fun Unit!140931 () Unit!140855)

(assert (=> b!4803360 (= lt!1957904 Unit!140931)))

(declare-fun res!2043275 () Bool)

(assert (=> b!4803360 (= res!2043275 (forall!12347 (_2!31815 (h!60771 (toList!7015 lt!1957451))) lambda!232885))))

(declare-fun e!2999680 () Bool)

(assert (=> b!4803360 (=> (not res!2043275) (not e!2999680))))

(assert (=> b!4803360 e!2999680))

(declare-fun lt!1957907 () Unit!140855)

(declare-fun Unit!140932 () Unit!140855)

(assert (=> b!4803360 (= lt!1957907 Unit!140932)))

(assert (=> b!4803361 (= e!2999681 (extractMap!2495 (t!361913 (toList!7015 lt!1957451))))))

(declare-fun lt!1957922 () Unit!140855)

(assert (=> b!4803361 (= lt!1957922 call!335458)))

(declare-fun call!335459 () Bool)

(assert (=> b!4803361 call!335459))

(declare-fun lt!1957908 () Unit!140855)

(assert (=> b!4803361 (= lt!1957908 lt!1957922)))

(assert (=> b!4803361 call!335460))

(declare-fun lt!1957918 () Unit!140855)

(declare-fun Unit!140933 () Unit!140855)

(assert (=> b!4803361 (= lt!1957918 Unit!140933)))

(declare-fun b!4803362 () Bool)

(assert (=> b!4803362 (= e!2999682 (invariantList!1758 (toList!7016 lt!1957913)))))

(declare-fun b!4803363 () Bool)

(assert (=> b!4803363 (= e!2999680 call!335459)))

(declare-fun bm!335454 () Bool)

(assert (=> bm!335454 (= call!335459 (forall!12347 (toList!7016 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))) (ite c!818768 lambda!232883 lambda!232885)))))

(declare-fun bm!335455 () Bool)

(assert (=> bm!335455 (= call!335458 (lemmaContainsAllItsOwnKeys!965 (extractMap!2495 (t!361913 (toList!7015 lt!1957451)))))))

(assert (= (and d!1538549 c!818768) b!4803361))

(assert (= (and d!1538549 (not c!818768)) b!4803360))

(assert (= (and b!4803360 res!2043275) b!4803363))

(assert (= (or b!4803361 b!4803363) bm!335454))

(assert (= (or b!4803361 b!4803360) bm!335453))

(assert (= (or b!4803361 b!4803360) bm!335455))

(assert (= (and d!1538549 res!2043273) b!4803359))

(assert (= (and b!4803359 res!2043274) b!4803362))

(declare-fun m!5788386 () Bool)

(assert (=> bm!335454 m!5788386))

(declare-fun m!5788388 () Bool)

(assert (=> bm!335453 m!5788388))

(assert (=> b!4803360 m!5787546))

(declare-fun m!5788390 () Bool)

(assert (=> b!4803360 m!5788390))

(declare-fun m!5788392 () Bool)

(assert (=> b!4803360 m!5788392))

(declare-fun m!5788394 () Bool)

(assert (=> b!4803360 m!5788394))

(declare-fun m!5788396 () Bool)

(assert (=> b!4803360 m!5788396))

(assert (=> b!4803360 m!5787546))

(declare-fun m!5788398 () Bool)

(assert (=> b!4803360 m!5788398))

(declare-fun m!5788400 () Bool)

(assert (=> b!4803360 m!5788400))

(declare-fun m!5788402 () Bool)

(assert (=> b!4803360 m!5788402))

(assert (=> b!4803360 m!5788402))

(declare-fun m!5788404 () Bool)

(assert (=> b!4803360 m!5788404))

(declare-fun m!5788406 () Bool)

(assert (=> b!4803360 m!5788406))

(assert (=> b!4803360 m!5788398))

(declare-fun m!5788408 () Bool)

(assert (=> b!4803360 m!5788408))

(declare-fun m!5788410 () Bool)

(assert (=> b!4803360 m!5788410))

(assert (=> b!4803360 m!5788396))

(declare-fun m!5788412 () Bool)

(assert (=> b!4803362 m!5788412))

(declare-fun m!5788414 () Bool)

(assert (=> b!4803359 m!5788414))

(assert (=> bm!335455 m!5787546))

(declare-fun m!5788416 () Bool)

(assert (=> bm!335455 m!5788416))

(declare-fun m!5788418 () Bool)

(assert (=> d!1538549 m!5788418))

(assert (=> d!1538549 m!5787554))

(assert (=> b!4802810 d!1538549))

(declare-fun bs!1158404 () Bool)

(declare-fun d!1538551 () Bool)

(assert (= bs!1158404 (and d!1538551 d!1538149)))

(declare-fun lambda!232887 () Int)

(assert (=> bs!1158404 (= lambda!232887 lambda!232759)))

(declare-fun bs!1158405 () Bool)

(assert (= bs!1158405 (and d!1538551 d!1538141)))

(assert (=> bs!1158405 (= lambda!232887 lambda!232755)))

(declare-fun bs!1158406 () Bool)

(assert (= bs!1158406 (and d!1538551 d!1538463)))

(assert (=> bs!1158406 (= lambda!232887 lambda!232866)))

(declare-fun bs!1158407 () Bool)

(assert (= bs!1158407 (and d!1538551 d!1538157)))

(assert (=> bs!1158407 (= lambda!232887 lambda!232763)))

(declare-fun bs!1158408 () Bool)

(assert (= bs!1158408 (and d!1538551 start!495826)))

(assert (=> bs!1158408 (= lambda!232887 lambda!232719)))

(declare-fun bs!1158409 () Bool)

(assert (= bs!1158409 (and d!1538551 d!1538035)))

(assert (=> bs!1158409 (not (= lambda!232887 lambda!232728))))

(declare-fun bs!1158410 () Bool)

(assert (= bs!1158410 (and d!1538551 d!1538155)))

(assert (=> bs!1158410 (= lambda!232887 lambda!232760)))

(declare-fun bs!1158411 () Bool)

(assert (= bs!1158411 (and d!1538551 d!1538135)))

(assert (=> bs!1158411 (not (= lambda!232887 lambda!232754))))

(declare-fun bs!1158412 () Bool)

(assert (= bs!1158412 (and d!1538551 d!1538133)))

(assert (=> bs!1158412 (= lambda!232887 lambda!232753)))

(declare-fun bs!1158413 () Bool)

(assert (= bs!1158413 (and d!1538551 d!1538143)))

(assert (=> bs!1158413 (= lambda!232887 lambda!232756)))

(declare-fun bs!1158414 () Bool)

(assert (= bs!1158414 (and d!1538551 d!1538111)))

(assert (=> bs!1158414 (= lambda!232887 lambda!232750)))

(declare-fun bs!1158415 () Bool)

(assert (= bs!1158415 (and d!1538551 d!1538089)))

(assert (=> bs!1158415 (= lambda!232887 lambda!232746)))

(declare-fun lt!1957924 () ListMap!6487)

(assert (=> d!1538551 (invariantList!1758 (toList!7016 lt!1957924))))

(declare-fun e!2999683 () ListMap!6487)

(assert (=> d!1538551 (= lt!1957924 e!2999683)))

(declare-fun c!818769 () Bool)

(assert (=> d!1538551 (= c!818769 ((_ is Cons!54339) (t!361913 (toList!7015 lt!1957451))))))

(assert (=> d!1538551 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232887)))

(assert (=> d!1538551 (= (extractMap!2495 (t!361913 (toList!7015 lt!1957451))) lt!1957924)))

(declare-fun b!4803364 () Bool)

(assert (=> b!4803364 (= e!2999683 (addToMapMapFromBucket!1735 (_2!31815 (h!60771 (t!361913 (toList!7015 lt!1957451)))) (extractMap!2495 (t!361913 (t!361913 (toList!7015 lt!1957451))))))))

(declare-fun b!4803365 () Bool)

(assert (=> b!4803365 (= e!2999683 (ListMap!6488 Nil!54338))))

(assert (= (and d!1538551 c!818769) b!4803364))

(assert (= (and d!1538551 (not c!818769)) b!4803365))

(declare-fun m!5788420 () Bool)

(assert (=> d!1538551 m!5788420))

(declare-fun m!5788422 () Bool)

(assert (=> d!1538551 m!5788422))

(declare-fun m!5788424 () Bool)

(assert (=> b!4803364 m!5788424))

(assert (=> b!4803364 m!5788424))

(declare-fun m!5788426 () Bool)

(assert (=> b!4803364 m!5788426))

(assert (=> b!4802810 d!1538551))

(declare-fun d!1538553 () Bool)

(declare-fun res!2043276 () Bool)

(declare-fun e!2999684 () Bool)

(assert (=> d!1538553 (=> res!2043276 e!2999684)))

(assert (=> d!1538553 (= res!2043276 ((_ is Nil!54339) (toList!7015 lt!1957451)))))

(assert (=> d!1538553 (= (forall!12343 (toList!7015 lt!1957451) lambda!232754) e!2999684)))

(declare-fun b!4803366 () Bool)

(declare-fun e!2999685 () Bool)

(assert (=> b!4803366 (= e!2999684 e!2999685)))

(declare-fun res!2043277 () Bool)

(assert (=> b!4803366 (=> (not res!2043277) (not e!2999685))))

(assert (=> b!4803366 (= res!2043277 (dynLambda!22097 lambda!232754 (h!60771 (toList!7015 lt!1957451))))))

(declare-fun b!4803367 () Bool)

(assert (=> b!4803367 (= e!2999685 (forall!12343 (t!361913 (toList!7015 lt!1957451)) lambda!232754))))

(assert (= (and d!1538553 (not res!2043276)) b!4803366))

(assert (= (and b!4803366 res!2043277) b!4803367))

(declare-fun b_lambda!187889 () Bool)

(assert (=> (not b_lambda!187889) (not b!4803366)))

(declare-fun m!5788428 () Bool)

(assert (=> b!4803366 m!5788428))

(declare-fun m!5788430 () Bool)

(assert (=> b!4803367 m!5788430))

(assert (=> d!1538135 d!1538553))

(declare-fun d!1538555 () Bool)

(declare-fun choose!34738 (Hashable!6968 K!15909) (_ BitVec 64))

(assert (=> d!1538555 (= (hash!5030 hashF!1559 key!5896) (choose!34738 hashF!1559 key!5896))))

(declare-fun bs!1158416 () Bool)

(assert (= bs!1158416 d!1538555))

(declare-fun m!5788432 () Bool)

(assert (=> bs!1158416 m!5788432))

(assert (=> d!1538123 d!1538555))

(declare-fun d!1538557 () Bool)

(assert (=> d!1538557 (isDefined!10341 (getValueByKey!2407 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(declare-fun lt!1957925 () Unit!140855)

(assert (=> d!1538557 (= lt!1957925 (choose!34733 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> d!1538557 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))

(assert (=> d!1538557 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2198 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) lt!1957925)))

(declare-fun bs!1158417 () Bool)

(assert (= bs!1158417 d!1538557))

(assert (=> bs!1158417 m!5787520))

(assert (=> bs!1158417 m!5787520))

(assert (=> bs!1158417 m!5787522))

(declare-fun m!5788434 () Bool)

(assert (=> bs!1158417 m!5788434))

(assert (=> bs!1158417 m!5788236))

(assert (=> b!4802802 d!1538557))

(assert (=> b!4802802 d!1538467))

(assert (=> b!4802802 d!1538469))

(declare-fun d!1538559 () Bool)

(assert (=> d!1538559 (contains!17999 (getKeysList!1104 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451)))) key!5896)))

(declare-fun lt!1957926 () Unit!140855)

(assert (=> d!1538559 (= lt!1957926 (choose!34734 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896))))

(assert (=> d!1538559 (invariantList!1758 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))))))

(assert (=> d!1538559 (= (lemmaInListThenGetKeysListContains!1099 (toList!7016 (extractMap!2495 (toList!7015 lt!1957451))) key!5896) lt!1957926)))

(declare-fun bs!1158418 () Bool)

(assert (= bs!1158418 d!1538559))

(assert (=> bs!1158418 m!5787526))

(assert (=> bs!1158418 m!5787526))

(declare-fun m!5788436 () Bool)

(assert (=> bs!1158418 m!5788436))

(declare-fun m!5788438 () Bool)

(assert (=> bs!1158418 m!5788438))

(assert (=> bs!1158418 m!5788236))

(assert (=> b!4802802 d!1538559))

(assert (=> b!4802782 d!1538409))

(declare-fun d!1538561 () Bool)

(assert (=> d!1538561 (= (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457)) (not (isEmpty!29519 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457))))))

(declare-fun bs!1158419 () Bool)

(assert (= bs!1158419 d!1538561))

(assert (=> bs!1158419 m!5787314))

(declare-fun m!5788440 () Bool)

(assert (=> bs!1158419 m!5788440))

(assert (=> b!4802686 d!1538561))

(assert (=> b!4802686 d!1538517))

(declare-fun d!1538563 () Bool)

(assert (=> d!1538563 (isDefined!10340 (getValueByKey!2406 (toList!7015 lm!2473) lt!1957457))))

(declare-fun lt!1957927 () Unit!140855)

(assert (=> d!1538563 (= lt!1957927 (choose!34737 (toList!7015 lm!2473) lt!1957457))))

(declare-fun e!2999686 () Bool)

(assert (=> d!1538563 e!2999686))

(declare-fun res!2043278 () Bool)

(assert (=> d!1538563 (=> (not res!2043278) (not e!2999686))))

(assert (=> d!1538563 (= res!2043278 (isStrictlySorted!904 (toList!7015 lm!2473)))))

(assert (=> d!1538563 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2197 (toList!7015 lm!2473) lt!1957457) lt!1957927)))

(declare-fun b!4803368 () Bool)

(assert (=> b!4803368 (= e!2999686 (containsKey!4049 (toList!7015 lm!2473) lt!1957457))))

(assert (= (and d!1538563 res!2043278) b!4803368))

(assert (=> d!1538563 m!5787314))

(assert (=> d!1538563 m!5787314))

(assert (=> d!1538563 m!5787316))

(declare-fun m!5788442 () Bool)

(assert (=> d!1538563 m!5788442))

(assert (=> d!1538563 m!5787220))

(assert (=> b!4803368 m!5787310))

(assert (=> b!4802684 d!1538563))

(assert (=> b!4802684 d!1538561))

(assert (=> b!4802684 d!1538517))

(declare-fun d!1538565 () Bool)

(declare-fun res!2043279 () Bool)

(declare-fun e!2999687 () Bool)

(assert (=> d!1538565 (=> res!2043279 e!2999687)))

(assert (=> d!1538565 (= res!2043279 (and ((_ is Cons!54339) (toList!7015 lm!2473)) (= (_1!31815 (h!60771 (toList!7015 lm!2473))) lt!1957457)))))

(assert (=> d!1538565 (= (containsKey!4049 (toList!7015 lm!2473) lt!1957457) e!2999687)))

(declare-fun b!4803369 () Bool)

(declare-fun e!2999688 () Bool)

(assert (=> b!4803369 (= e!2999687 e!2999688)))

(declare-fun res!2043280 () Bool)

(assert (=> b!4803369 (=> (not res!2043280) (not e!2999688))))

(assert (=> b!4803369 (= res!2043280 (and (or (not ((_ is Cons!54339) (toList!7015 lm!2473))) (bvsle (_1!31815 (h!60771 (toList!7015 lm!2473))) lt!1957457)) ((_ is Cons!54339) (toList!7015 lm!2473)) (bvslt (_1!31815 (h!60771 (toList!7015 lm!2473))) lt!1957457)))))

(declare-fun b!4803370 () Bool)

(assert (=> b!4803370 (= e!2999688 (containsKey!4049 (t!361913 (toList!7015 lm!2473)) lt!1957457))))

(assert (= (and d!1538565 (not res!2043279)) b!4803369))

(assert (= (and b!4803369 res!2043280) b!4803370))

(declare-fun m!5788444 () Bool)

(assert (=> b!4803370 m!5788444))

(assert (=> d!1538075 d!1538565))

(assert (=> b!4802804 d!1538543))

(assert (=> b!4802804 d!1538239))

(declare-fun e!2999691 () Bool)

(declare-fun tp!1358456 () Bool)

(declare-fun b!4803375 () Bool)

(assert (=> b!4803375 (= e!2999691 (and tp_is_empty!33733 tp_is_empty!33735 tp!1358456))))

(assert (=> b!4802816 (= tp!1358447 e!2999691)))

(assert (= (and b!4802816 ((_ is Cons!54338) (_2!31815 (h!60771 (toList!7015 lm!2473))))) b!4803375))

(declare-fun b!4803376 () Bool)

(declare-fun e!2999692 () Bool)

(declare-fun tp!1358457 () Bool)

(declare-fun tp!1358458 () Bool)

(assert (=> b!4803376 (= e!2999692 (and tp!1358457 tp!1358458))))

(assert (=> b!4802816 (= tp!1358448 e!2999692)))

(assert (= (and b!4802816 ((_ is Cons!54339) (t!361913 (toList!7015 lm!2473)))) b!4803376))

(declare-fun b_lambda!187891 () Bool)

(assert (= b_lambda!187847 (or d!1538133 b_lambda!187891)))

(declare-fun bs!1158420 () Bool)

(declare-fun d!1538567 () Bool)

(assert (= bs!1158420 (and d!1538567 d!1538133)))

(assert (=> bs!1158420 (= (dynLambda!22097 lambda!232753 (h!60771 (toList!7015 lm!2473))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(assert (=> bs!1158420 m!5787556))

(assert (=> b!4803212 d!1538567))

(declare-fun b_lambda!187893 () Bool)

(assert (= b_lambda!187877 (or d!1538111 b_lambda!187893)))

(declare-fun bs!1158421 () Bool)

(declare-fun d!1538569 () Bool)

(assert (= bs!1158421 (and d!1538569 d!1538111)))

(assert (=> bs!1158421 (= (dynLambda!22097 lambda!232750 (h!60771 (toList!7015 lm!2473))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(assert (=> bs!1158421 m!5787556))

(assert (=> b!4803258 d!1538569))

(declare-fun b_lambda!187895 () Bool)

(assert (= b_lambda!187887 (or d!1538157 b_lambda!187895)))

(declare-fun bs!1158422 () Bool)

(declare-fun d!1538571 () Bool)

(assert (= bs!1158422 (and d!1538571 d!1538157)))

(assert (=> bs!1158422 (= (dynLambda!22097 lambda!232763 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> bs!1158422 m!5787554))

(assert (=> b!4803357 d!1538571))

(declare-fun b_lambda!187897 () Bool)

(assert (= b_lambda!187889 (or d!1538135 b_lambda!187897)))

(declare-fun bs!1158423 () Bool)

(declare-fun d!1538573 () Bool)

(assert (= bs!1158423 (and d!1538573 d!1538135)))

(declare-fun allKeysSameHash!1980 (List!54462 (_ BitVec 64) Hashable!6968) Bool)

(assert (=> bs!1158423 (= (dynLambda!22097 lambda!232754 (h!60771 (toList!7015 lt!1957451))) (allKeysSameHash!1980 (_2!31815 (h!60771 (toList!7015 lt!1957451))) (_1!31815 (h!60771 (toList!7015 lt!1957451))) hashF!1559))))

(declare-fun m!5788446 () Bool)

(assert (=> bs!1158423 m!5788446))

(assert (=> b!4803366 d!1538573))

(declare-fun b_lambda!187899 () Bool)

(assert (= b_lambda!187833 (or start!495826 b_lambda!187899)))

(declare-fun bs!1158424 () Bool)

(declare-fun d!1538575 () Bool)

(assert (= bs!1158424 (and d!1538575 start!495826)))

(assert (=> bs!1158424 (= (dynLambda!22097 lambda!232719 (h!60771 (t!361913 (toList!7015 lm!2473)))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (t!361913 (toList!7015 lm!2473))))))))

(declare-fun m!5788448 () Bool)

(assert (=> bs!1158424 m!5788448))

(assert (=> b!4803149 d!1538575))

(declare-fun b_lambda!187901 () Bool)

(assert (= b_lambda!187885 (or d!1538143 b_lambda!187901)))

(declare-fun bs!1158425 () Bool)

(declare-fun d!1538577 () Bool)

(assert (= bs!1158425 (and d!1538577 d!1538143)))

(assert (=> bs!1158425 (= (dynLambda!22097 lambda!232756 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> bs!1158425 m!5787554))

(assert (=> b!4803329 d!1538577))

(declare-fun b_lambda!187903 () Bool)

(assert (= b_lambda!187841 (or start!495826 b_lambda!187903)))

(declare-fun bs!1158426 () Bool)

(declare-fun d!1538579 () Bool)

(assert (= bs!1158426 (and d!1538579 start!495826)))

(assert (=> bs!1158426 (= (dynLambda!22097 lambda!232719 (h!60771 (t!361913 (toList!7015 lt!1957451)))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (t!361913 (toList!7015 lt!1957451))))))))

(declare-fun m!5788450 () Bool)

(assert (=> bs!1158426 m!5788450))

(assert (=> b!4803184 d!1538579))

(declare-fun b_lambda!187905 () Bool)

(assert (= b_lambda!187879 (or d!1538149 b_lambda!187905)))

(declare-fun bs!1158427 () Bool)

(declare-fun d!1538581 () Bool)

(assert (= bs!1158427 (and d!1538581 d!1538149)))

(assert (=> bs!1158427 (= (dynLambda!22097 lambda!232759 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> bs!1158427 m!5787554))

(assert (=> b!4803260 d!1538581))

(declare-fun b_lambda!187907 () Bool)

(assert (= b_lambda!187881 (or d!1538035 b_lambda!187907)))

(declare-fun bs!1158428 () Bool)

(declare-fun d!1538583 () Bool)

(assert (= bs!1158428 (and d!1538583 d!1538035)))

(assert (=> bs!1158428 (= (dynLambda!22097 lambda!232728 (h!60771 (toList!7015 lm!2473))) (allKeysSameHash!1980 (_2!31815 (h!60771 (toList!7015 lm!2473))) (_1!31815 (h!60771 (toList!7015 lm!2473))) hashF!1559))))

(declare-fun m!5788452 () Bool)

(assert (=> bs!1158428 m!5788452))

(assert (=> b!4803264 d!1538583))

(declare-fun b_lambda!187909 () Bool)

(assert (= b_lambda!187849 (or d!1538141 b_lambda!187909)))

(declare-fun bs!1158429 () Bool)

(declare-fun d!1538585 () Bool)

(assert (= bs!1158429 (and d!1538585 d!1538141)))

(assert (=> bs!1158429 (= (dynLambda!22097 lambda!232755 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> bs!1158429 m!5787554))

(assert (=> b!4803214 d!1538585))

(declare-fun b_lambda!187911 () Bool)

(assert (= b_lambda!187823 (or d!1538155 b_lambda!187911)))

(declare-fun bs!1158430 () Bool)

(declare-fun d!1538587 () Bool)

(assert (= bs!1158430 (and d!1538587 d!1538155)))

(assert (=> bs!1158430 (= (dynLambda!22097 lambda!232760 (h!60771 (toList!7015 lt!1957451))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lt!1957451)))))))

(assert (=> bs!1158430 m!5787554))

(assert (=> b!4803057 d!1538587))

(declare-fun b_lambda!187913 () Bool)

(assert (= b_lambda!187883 (or d!1538089 b_lambda!187913)))

(declare-fun bs!1158431 () Bool)

(declare-fun d!1538589 () Bool)

(assert (= bs!1158431 (and d!1538589 d!1538089)))

(assert (=> bs!1158431 (= (dynLambda!22097 lambda!232746 (h!60771 (toList!7015 lm!2473))) (noDuplicateKeys!2366 (_2!31815 (h!60771 (toList!7015 lm!2473)))))))

(assert (=> bs!1158431 m!5787556))

(assert (=> b!4803317 d!1538589))

(check-sat (not bs!1158425) (not b!4803353) (not d!1538433) (not b!4803030) (not b!4803243) (not bs!1158429) (not d!1538295) (not b!4803345) (not d!1538473) tp_is_empty!33735 (not b!4803352) (not d!1538419) (not b!4803211) (not d!1538555) (not bs!1158422) (not b!4803263) (not b!4803000) (not b!4803209) (not bs!1158428) (not b!4803237) (not bm!335453) (not b!4803236) (not b!4803315) (not b!4803278) (not d!1538495) (not b_lambda!187903) (not d!1538531) (not b!4803312) (not b!4803328) (not d!1538321) (not d!1538331) (not d!1538467) (not b!4803005) (not d!1538561) (not b_lambda!187901) (not b!4803049) (not b!4803080) (not b!4803333) (not b!4803046) (not d!1538403) (not b!4803257) (not b!4803349) (not b!4803318) (not b!4803156) (not d!1538533) (not b_lambda!187899) (not b!4803356) (not b!4803250) (not b!4803316) (not b!4803206) (not b!4803247) (not b_lambda!187893) (not b!4803265) (not b!4803189) (not b!4803044) (not d!1538557) (not b!4802980) (not d!1538525) (not d!1538559) (not d!1538375) (not b!4803185) (not b!4803337) (not b!4803270) (not b!4803342) (not b!4803348) (not b_lambda!187905) (not d!1538551) (not b!4803375) (not d!1538287) (not b!4803058) (not b!4803338) (not d!1538417) (not b_lambda!187913) (not b!4803282) (not b!4803321) (not b!4803309) (not d!1538545) (not bm!335455) (not d!1538511) (not b_lambda!187895) (not d!1538475) (not d!1538549) (not b!4803192) (not bm!335451) (not b!4803324) (not d!1538409) (not b!4803043) (not d!1538359) (not d!1538471) (not b!4803083) (not b!4803207) (not b_lambda!187817) (not d!1538301) (not b!4803086) (not d!1538497) (not bs!1158421) (not b_lambda!187907) (not b!4803107) (not bm!335452) (not b!4803193) (not bs!1158430) (not bs!1158423) (not b!4803077) (not d!1538539) (not b!4803002) (not b!4803362) (not b!4803150) (not b_lambda!187815) (not b!4803306) (not b!4803314) (not b!4803354) (not b_lambda!187911) (not b_lambda!187909) (not b!4803359) (not b!4803004) (not b!4803041) (not b_lambda!187897) (not b!4803239) (not b!4803307) (not bm!335454) (not d!1538501) (not b!4803252) (not b!4803245) (not b!4803313) (not bs!1158420) (not b!4803330) (not b!4803051) (not d!1538429) (not b!4803327) (not b!4803367) (not b!4803347) (not b!4803085) (not d!1538563) (not b!4803204) (not d!1538483) (not b!4803213) (not d!1538463) (not b!4802962) (not b!4803364) (not b!4803280) (not b!4803261) (not d!1538543) (not d!1538253) (not bs!1158431) (not b!4803323) (not b!4803007) (not b!4803088) (not d!1538491) (not d!1538425) (not b!4803325) (not b!4803042) (not b!4803202) (not bs!1158424) (not b!4803194) (not b!4803267) (not bs!1158427) (not d!1538505) (not b!4803332) (not b!4803081) (not b!4803181) (not d!1538343) (not b!4803048) (not d!1538523) (not b!4803276) (not b!4803335) (not b!4803271) (not b!4803275) (not b!4803305) (not b!4803144) (not b!4803040) (not b!4803078) (not d!1538535) (not b!4802979) (not b!4803358) (not bs!1158426) (not bm!335450) (not d!1538263) (not b!4803254) (not b!4803340) (not b!4803360) (not b!4802981) (not d!1538367) (not b_lambda!187891) (not b!4803351) (not d!1538493) (not d!1538421) (not b!4803259) (not b!4803370) (not d!1538479) tp_is_empty!33733 (not b!4803303) (not d!1538239) (not b!4803368) (not b!4803152) (not b!4803099) (not b!4803215) (not b!4803376) (not b!4803273))
(check-sat)
