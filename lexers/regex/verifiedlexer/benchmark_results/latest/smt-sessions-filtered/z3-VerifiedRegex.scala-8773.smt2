; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468880 () Bool)

(assert start!468880)

(declare-fun tp_is_empty!29885 () Bool)

(declare-fun e!2906117 () Bool)

(declare-fun tp_is_empty!29887 () Bool)

(declare-fun tp!1343386 () Bool)

(declare-fun b!4657635 () Bool)

(assert (=> b!4657635 (= e!2906117 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343386))))

(declare-fun b!4657636 () Bool)

(declare-fun e!2906118 () Bool)

(declare-fun e!2906116 () Bool)

(assert (=> b!4657636 (= e!2906118 e!2906116)))

(declare-fun res!1958714 () Bool)

(assert (=> b!4657636 (=> res!1958714 e!2906116)))

(declare-datatypes ((K!13270 0))(
  ( (K!13271 (val!18887 Int)) )
))
(declare-datatypes ((V!13516 0))(
  ( (V!13517 (val!18888 Int)) )
))
(declare-datatypes ((tuple2!53038 0))(
  ( (tuple2!53039 (_1!29813 K!13270) (_2!29813 V!13516)) )
))
(declare-datatypes ((List!52040 0))(
  ( (Nil!51916) (Cons!51916 (h!58064 tuple2!53038) (t!359156 List!52040)) )
))
(declare-fun oldBucket!40 () List!52040)

(declare-fun key!4968 () K!13270)

(declare-fun containsKey!2734 (List!52040 K!13270) Bool)

(assert (=> b!4657636 (= res!1958714 (not (containsKey!2734 (t!359156 oldBucket!40) key!4968)))))

(assert (=> b!4657636 (containsKey!2734 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!6045 0))(
  ( (HashableExt!6044 (__x!31748 Int)) )
))
(declare-fun hashF!1389 () Hashable!6045)

(declare-datatypes ((Unit!118852 0))(
  ( (Unit!118853) )
))
(declare-fun lt!1820036 () Unit!118852)

(declare-fun lemmaGetPairDefinedThenContainsKey!126 (List!52040 K!13270 Hashable!6045) Unit!118852)

(assert (=> b!4657636 (= lt!1820036 (lemmaGetPairDefinedThenContainsKey!126 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1820044 () List!52040)

(declare-datatypes ((Option!11832 0))(
  ( (None!11831) (Some!11831 (v!46113 tuple2!53038)) )
))
(declare-fun isDefined!9097 (Option!11832) Bool)

(declare-fun getPair!376 (List!52040 K!13270) Option!11832)

(assert (=> b!4657636 (isDefined!9097 (getPair!376 lt!1820044 key!4968))))

(declare-fun lambda!199676 () Int)

(declare-fun lt!1820034 () Unit!118852)

(declare-datatypes ((tuple2!53040 0))(
  ( (tuple2!53041 (_1!29814 (_ BitVec 64)) (_2!29814 List!52040)) )
))
(declare-fun lt!1820043 () tuple2!53040)

(declare-datatypes ((List!52041 0))(
  ( (Nil!51917) (Cons!51917 (h!58065 tuple2!53040) (t!359157 List!52041)) )
))
(declare-fun lt!1820045 () List!52041)

(declare-fun forallContained!3238 (List!52041 Int tuple2!53040) Unit!118852)

(assert (=> b!4657636 (= lt!1820034 (forallContained!3238 lt!1820045 lambda!199676 lt!1820043))))

(declare-fun contains!15063 (List!52041 tuple2!53040) Bool)

(assert (=> b!4657636 (contains!15063 lt!1820045 lt!1820043)))

(declare-fun lt!1820039 () (_ BitVec 64))

(assert (=> b!4657636 (= lt!1820043 (tuple2!53041 lt!1820039 lt!1820044))))

(declare-fun lt!1820040 () Unit!118852)

(declare-datatypes ((ListLongMap!3779 0))(
  ( (ListLongMap!3780 (toList!5225 List!52041)) )
))
(declare-fun lt!1820042 () ListLongMap!3779)

(declare-fun lemmaGetValueImpliesTupleContained!181 (ListLongMap!3779 (_ BitVec 64) List!52040) Unit!118852)

(assert (=> b!4657636 (= lt!1820040 (lemmaGetValueImpliesTupleContained!181 lt!1820042 lt!1820039 lt!1820044))))

(declare-fun apply!12251 (ListLongMap!3779 (_ BitVec 64)) List!52040)

(assert (=> b!4657636 (= lt!1820044 (apply!12251 lt!1820042 lt!1820039))))

(declare-fun contains!15064 (ListLongMap!3779 (_ BitVec 64)) Bool)

(assert (=> b!4657636 (contains!15064 lt!1820042 lt!1820039)))

(declare-fun lt!1820041 () Unit!118852)

(declare-fun lemmaInGenMapThenLongMapContainsHash!582 (ListLongMap!3779 K!13270 Hashable!6045) Unit!118852)

(assert (=> b!4657636 (= lt!1820041 (lemmaInGenMapThenLongMapContainsHash!582 lt!1820042 key!4968 hashF!1389))))

(declare-fun lt!1820035 () Unit!118852)

(declare-fun lemmaInGenMapThenGetPairDefined!172 (ListLongMap!3779 K!13270 Hashable!6045) Unit!118852)

(assert (=> b!4657636 (= lt!1820035 (lemmaInGenMapThenGetPairDefined!172 lt!1820042 key!4968 hashF!1389))))

(assert (=> b!4657636 (= lt!1820042 (ListLongMap!3780 lt!1820045))))

(declare-fun b!4657638 () Bool)

(declare-fun e!2906112 () Bool)

(declare-datatypes ((ListMap!4565 0))(
  ( (ListMap!4566 (toList!5226 List!52040)) )
))
(declare-fun lt!1820037 () ListMap!4565)

(assert (=> b!4657638 (= e!2906112 (= lt!1820037 (ListMap!4566 Nil!51916)))))

(declare-fun b!4657639 () Bool)

(declare-fun e!2906119 () Bool)

(assert (=> b!4657639 (= e!2906119 (not e!2906118))))

(declare-fun res!1958717 () Bool)

(assert (=> b!4657639 (=> res!1958717 e!2906118)))

(get-info :version)

(assert (=> b!4657639 (= res!1958717 (or (and ((_ is Cons!51916) oldBucket!40) (= (_1!29813 (h!58064 oldBucket!40)) key!4968)) (not ((_ is Cons!51916) oldBucket!40)) (= (_1!29813 (h!58064 oldBucket!40)) key!4968)))))

(assert (=> b!4657639 e!2906112))

(declare-fun res!1958718 () Bool)

(assert (=> b!4657639 (=> (not res!1958718) (not e!2906112))))

(declare-fun lt!1820033 () ListMap!4565)

(declare-fun addToMapMapFromBucket!1105 (List!52040 ListMap!4565) ListMap!4565)

(assert (=> b!4657639 (= res!1958718 (= lt!1820033 (addToMapMapFromBucket!1105 oldBucket!40 lt!1820037)))))

(declare-fun extractMap!1704 (List!52041) ListMap!4565)

(assert (=> b!4657639 (= lt!1820037 (extractMap!1704 Nil!51917))))

(assert (=> b!4657639 true))

(declare-fun b!4657640 () Bool)

(declare-fun res!1958712 () Bool)

(declare-fun e!2906120 () Bool)

(assert (=> b!4657640 (=> (not res!1958712) (not e!2906120))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1502 (List!52040 (_ BitVec 64) Hashable!6045) Bool)

(assert (=> b!4657640 (= res!1958712 (allKeysSameHash!1502 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4657641 () Bool)

(declare-fun res!1958710 () Bool)

(declare-fun e!2906115 () Bool)

(assert (=> b!4657641 (=> res!1958710 e!2906115)))

(declare-fun lt!1820038 () List!52040)

(declare-fun removePairForKey!1271 (List!52040 K!13270) List!52040)

(assert (=> b!4657641 (= res!1958710 (not (= (removePairForKey!1271 (t!359156 oldBucket!40) key!4968) lt!1820038)))))

(declare-fun b!4657642 () Bool)

(declare-fun res!1958709 () Bool)

(assert (=> b!4657642 (=> (not res!1958709) (not e!2906120))))

(declare-fun newBucket!224 () List!52040)

(declare-fun noDuplicateKeys!1648 (List!52040) Bool)

(assert (=> b!4657642 (= res!1958709 (noDuplicateKeys!1648 newBucket!224))))

(declare-fun b!4657643 () Bool)

(declare-fun e!2906114 () Bool)

(assert (=> b!4657643 (= e!2906120 e!2906114)))

(declare-fun res!1958720 () Bool)

(assert (=> b!4657643 (=> (not res!1958720) (not e!2906114))))

(declare-fun contains!15065 (ListMap!4565 K!13270) Bool)

(assert (=> b!4657643 (= res!1958720 (contains!15065 lt!1820033 key!4968))))

(assert (=> b!4657643 (= lt!1820033 (extractMap!1704 lt!1820045))))

(assert (=> b!4657643 (= lt!1820045 (Cons!51917 (tuple2!53041 hash!414 oldBucket!40) Nil!51917))))

(declare-fun b!4657644 () Bool)

(declare-fun e!2906113 () Bool)

(declare-fun tp!1343387 () Bool)

(assert (=> b!4657644 (= e!2906113 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343387))))

(declare-fun b!4657637 () Bool)

(assert (=> b!4657637 (= e!2906116 e!2906115)))

(declare-fun res!1958713 () Bool)

(assert (=> b!4657637 (=> res!1958713 e!2906115)))

(declare-fun tail!8251 (List!52040) List!52040)

(assert (=> b!4657637 (= res!1958713 (not (= (removePairForKey!1271 (tail!8251 oldBucket!40) key!4968) lt!1820038)))))

(assert (=> b!4657637 (= lt!1820038 (tail!8251 newBucket!224))))

(declare-fun res!1958715 () Bool)

(assert (=> start!468880 (=> (not res!1958715) (not e!2906120))))

(assert (=> start!468880 (= res!1958715 (noDuplicateKeys!1648 oldBucket!40))))

(assert (=> start!468880 e!2906120))

(assert (=> start!468880 true))

(assert (=> start!468880 e!2906117))

(assert (=> start!468880 tp_is_empty!29885))

(assert (=> start!468880 e!2906113))

(declare-fun b!4657645 () Bool)

(declare-fun res!1958719 () Bool)

(assert (=> b!4657645 (=> (not res!1958719) (not e!2906119))))

(assert (=> b!4657645 (= res!1958719 (allKeysSameHash!1502 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4657646 () Bool)

(declare-fun res!1958716 () Bool)

(assert (=> b!4657646 (=> (not res!1958716) (not e!2906120))))

(assert (=> b!4657646 (= res!1958716 (= (removePairForKey!1271 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4657647 () Bool)

(declare-fun inv!67188 (ListLongMap!3779) Bool)

(assert (=> b!4657647 (= e!2906115 (inv!67188 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917))))))

(declare-fun b!4657648 () Bool)

(assert (=> b!4657648 (= e!2906114 e!2906119)))

(declare-fun res!1958711 () Bool)

(assert (=> b!4657648 (=> (not res!1958711) (not e!2906119))))

(assert (=> b!4657648 (= res!1958711 (= lt!1820039 hash!414))))

(declare-fun hash!3789 (Hashable!6045 K!13270) (_ BitVec 64))

(assert (=> b!4657648 (= lt!1820039 (hash!3789 hashF!1389 key!4968))))

(assert (= (and start!468880 res!1958715) b!4657642))

(assert (= (and b!4657642 res!1958709) b!4657646))

(assert (= (and b!4657646 res!1958716) b!4657640))

(assert (= (and b!4657640 res!1958712) b!4657643))

(assert (= (and b!4657643 res!1958720) b!4657648))

(assert (= (and b!4657648 res!1958711) b!4657645))

(assert (= (and b!4657645 res!1958719) b!4657639))

(assert (= (and b!4657639 res!1958718) b!4657638))

(assert (= (and b!4657639 (not res!1958717)) b!4657636))

(assert (= (and b!4657636 (not res!1958714)) b!4657637))

(assert (= (and b!4657637 (not res!1958713)) b!4657641))

(assert (= (and b!4657641 (not res!1958710)) b!4657647))

(assert (= (and start!468880 ((_ is Cons!51916) oldBucket!40)) b!4657635))

(assert (= (and start!468880 ((_ is Cons!51916) newBucket!224)) b!4657644))

(declare-fun m!5538567 () Bool)

(assert (=> b!4657641 m!5538567))

(declare-fun m!5538569 () Bool)

(assert (=> b!4657642 m!5538569))

(declare-fun m!5538571 () Bool)

(assert (=> b!4657640 m!5538571))

(declare-fun m!5538573 () Bool)

(assert (=> start!468880 m!5538573))

(declare-fun m!5538575 () Bool)

(assert (=> b!4657639 m!5538575))

(declare-fun m!5538577 () Bool)

(assert (=> b!4657639 m!5538577))

(declare-fun m!5538579 () Bool)

(assert (=> b!4657643 m!5538579))

(declare-fun m!5538581 () Bool)

(assert (=> b!4657643 m!5538581))

(declare-fun m!5538583 () Bool)

(assert (=> b!4657645 m!5538583))

(declare-fun m!5538585 () Bool)

(assert (=> b!4657637 m!5538585))

(assert (=> b!4657637 m!5538585))

(declare-fun m!5538587 () Bool)

(assert (=> b!4657637 m!5538587))

(declare-fun m!5538589 () Bool)

(assert (=> b!4657637 m!5538589))

(declare-fun m!5538591 () Bool)

(assert (=> b!4657647 m!5538591))

(declare-fun m!5538593 () Bool)

(assert (=> b!4657648 m!5538593))

(declare-fun m!5538595 () Bool)

(assert (=> b!4657636 m!5538595))

(declare-fun m!5538597 () Bool)

(assert (=> b!4657636 m!5538597))

(declare-fun m!5538599 () Bool)

(assert (=> b!4657636 m!5538599))

(declare-fun m!5538601 () Bool)

(assert (=> b!4657636 m!5538601))

(declare-fun m!5538603 () Bool)

(assert (=> b!4657636 m!5538603))

(declare-fun m!5538605 () Bool)

(assert (=> b!4657636 m!5538605))

(declare-fun m!5538607 () Bool)

(assert (=> b!4657636 m!5538607))

(declare-fun m!5538609 () Bool)

(assert (=> b!4657636 m!5538609))

(declare-fun m!5538611 () Bool)

(assert (=> b!4657636 m!5538611))

(declare-fun m!5538613 () Bool)

(assert (=> b!4657636 m!5538613))

(declare-fun m!5538615 () Bool)

(assert (=> b!4657636 m!5538615))

(assert (=> b!4657636 m!5538615))

(declare-fun m!5538617 () Bool)

(assert (=> b!4657636 m!5538617))

(declare-fun m!5538619 () Bool)

(assert (=> b!4657646 m!5538619))

(check-sat (not b!4657644) (not b!4657648) tp_is_empty!29885 (not b!4657641) tp_is_empty!29887 (not b!4657646) (not b!4657647) (not b!4657640) (not b!4657639) (not b!4657643) (not b!4657635) (not b!4657642) (not start!468880) (not b!4657637) (not b!4657645) (not b!4657636))
(check-sat)
(get-model)

(declare-fun d!1478128 () Bool)

(declare-fun isStrictlySorted!578 (List!52041) Bool)

(assert (=> d!1478128 (= (inv!67188 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917))) (isStrictlySorted!578 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917)))))))

(declare-fun bs!1066206 () Bool)

(assert (= bs!1066206 d!1478128))

(declare-fun m!5538625 () Bool)

(assert (=> bs!1066206 m!5538625))

(assert (=> b!4657647 d!1478128))

(declare-fun b!4657671 () Bool)

(declare-fun e!2906131 () List!52040)

(assert (=> b!4657671 (= e!2906131 (Cons!51916 (h!58064 (tail!8251 oldBucket!40)) (removePairForKey!1271 (t!359156 (tail!8251 oldBucket!40)) key!4968)))))

(declare-fun b!4657672 () Bool)

(assert (=> b!4657672 (= e!2906131 Nil!51916)))

(declare-fun b!4657670 () Bool)

(declare-fun e!2906132 () List!52040)

(assert (=> b!4657670 (= e!2906132 e!2906131)))

(declare-fun c!797227 () Bool)

(assert (=> b!4657670 (= c!797227 ((_ is Cons!51916) (tail!8251 oldBucket!40)))))

(declare-fun d!1478132 () Bool)

(declare-fun lt!1820051 () List!52040)

(assert (=> d!1478132 (not (containsKey!2734 lt!1820051 key!4968))))

(assert (=> d!1478132 (= lt!1820051 e!2906132)))

(declare-fun c!797228 () Bool)

(assert (=> d!1478132 (= c!797228 (and ((_ is Cons!51916) (tail!8251 oldBucket!40)) (= (_1!29813 (h!58064 (tail!8251 oldBucket!40))) key!4968)))))

(assert (=> d!1478132 (noDuplicateKeys!1648 (tail!8251 oldBucket!40))))

(assert (=> d!1478132 (= (removePairForKey!1271 (tail!8251 oldBucket!40) key!4968) lt!1820051)))

(declare-fun b!4657669 () Bool)

(assert (=> b!4657669 (= e!2906132 (t!359156 (tail!8251 oldBucket!40)))))

(assert (= (and d!1478132 c!797228) b!4657669))

(assert (= (and d!1478132 (not c!797228)) b!4657670))

(assert (= (and b!4657670 c!797227) b!4657671))

(assert (= (and b!4657670 (not c!797227)) b!4657672))

(declare-fun m!5538627 () Bool)

(assert (=> b!4657671 m!5538627))

(declare-fun m!5538629 () Bool)

(assert (=> d!1478132 m!5538629))

(assert (=> d!1478132 m!5538585))

(declare-fun m!5538631 () Bool)

(assert (=> d!1478132 m!5538631))

(assert (=> b!4657637 d!1478132))

(declare-fun d!1478134 () Bool)

(assert (=> d!1478134 (= (tail!8251 oldBucket!40) (t!359156 oldBucket!40))))

(assert (=> b!4657637 d!1478134))

(declare-fun d!1478136 () Bool)

(assert (=> d!1478136 (= (tail!8251 newBucket!224) (t!359156 newBucket!224))))

(assert (=> b!4657637 d!1478136))

(declare-fun d!1478138 () Bool)

(declare-fun hash!3791 (Hashable!6045 K!13270) (_ BitVec 64))

(assert (=> d!1478138 (= (hash!3789 hashF!1389 key!4968) (hash!3791 hashF!1389 key!4968))))

(declare-fun bs!1066207 () Bool)

(assert (= bs!1066207 d!1478138))

(declare-fun m!5538633 () Bool)

(assert (=> bs!1066207 m!5538633))

(assert (=> b!4657648 d!1478138))

(declare-fun b!4657675 () Bool)

(declare-fun e!2906133 () List!52040)

(assert (=> b!4657675 (= e!2906133 (Cons!51916 (h!58064 (t!359156 oldBucket!40)) (removePairForKey!1271 (t!359156 (t!359156 oldBucket!40)) key!4968)))))

(declare-fun b!4657676 () Bool)

(assert (=> b!4657676 (= e!2906133 Nil!51916)))

(declare-fun b!4657674 () Bool)

(declare-fun e!2906134 () List!52040)

(assert (=> b!4657674 (= e!2906134 e!2906133)))

(declare-fun c!797229 () Bool)

(assert (=> b!4657674 (= c!797229 ((_ is Cons!51916) (t!359156 oldBucket!40)))))

(declare-fun d!1478140 () Bool)

(declare-fun lt!1820052 () List!52040)

(assert (=> d!1478140 (not (containsKey!2734 lt!1820052 key!4968))))

(assert (=> d!1478140 (= lt!1820052 e!2906134)))

(declare-fun c!797230 () Bool)

(assert (=> d!1478140 (= c!797230 (and ((_ is Cons!51916) (t!359156 oldBucket!40)) (= (_1!29813 (h!58064 (t!359156 oldBucket!40))) key!4968)))))

(assert (=> d!1478140 (noDuplicateKeys!1648 (t!359156 oldBucket!40))))

(assert (=> d!1478140 (= (removePairForKey!1271 (t!359156 oldBucket!40) key!4968) lt!1820052)))

(declare-fun b!4657673 () Bool)

(assert (=> b!4657673 (= e!2906134 (t!359156 (t!359156 oldBucket!40)))))

(assert (= (and d!1478140 c!797230) b!4657673))

(assert (= (and d!1478140 (not c!797230)) b!4657674))

(assert (= (and b!4657674 c!797229) b!4657675))

(assert (= (and b!4657674 (not c!797229)) b!4657676))

(declare-fun m!5538635 () Bool)

(assert (=> b!4657675 m!5538635))

(declare-fun m!5538637 () Bool)

(assert (=> d!1478140 m!5538637))

(declare-fun m!5538639 () Bool)

(assert (=> d!1478140 m!5538639))

(assert (=> b!4657641 d!1478140))

(declare-fun b!4657775 () Bool)

(assert (=> b!4657775 true))

(declare-fun bs!1066222 () Bool)

(declare-fun b!4657774 () Bool)

(assert (= bs!1066222 (and b!4657774 b!4657775)))

(declare-fun lambda!199753 () Int)

(declare-fun lambda!199750 () Int)

(assert (=> bs!1066222 (= lambda!199753 lambda!199750)))

(assert (=> b!4657774 true))

(declare-fun lambda!199754 () Int)

(declare-fun lt!1820205 () ListMap!4565)

(assert (=> bs!1066222 (= (= lt!1820205 lt!1820037) (= lambda!199754 lambda!199750))))

(assert (=> b!4657774 (= (= lt!1820205 lt!1820037) (= lambda!199754 lambda!199753))))

(assert (=> b!4657774 true))

(declare-fun bs!1066227 () Bool)

(declare-fun d!1478142 () Bool)

(assert (= bs!1066227 (and d!1478142 b!4657775)))

(declare-fun lt!1820216 () ListMap!4565)

(declare-fun lambda!199756 () Int)

(assert (=> bs!1066227 (= (= lt!1820216 lt!1820037) (= lambda!199756 lambda!199750))))

(declare-fun bs!1066228 () Bool)

(assert (= bs!1066228 (and d!1478142 b!4657774)))

(assert (=> bs!1066228 (= (= lt!1820216 lt!1820037) (= lambda!199756 lambda!199753))))

(assert (=> bs!1066228 (= (= lt!1820216 lt!1820205) (= lambda!199756 lambda!199754))))

(assert (=> d!1478142 true))

(declare-fun bm!325470 () Bool)

(declare-fun call!325477 () Unit!118852)

(declare-fun lemmaContainsAllItsOwnKeys!602 (ListMap!4565) Unit!118852)

(assert (=> bm!325470 (= call!325477 (lemmaContainsAllItsOwnKeys!602 lt!1820037))))

(declare-fun call!325475 () Bool)

(declare-fun bm!325471 () Bool)

(declare-fun c!797247 () Bool)

(declare-fun forall!11039 (List!52040 Int) Bool)

(assert (=> bm!325471 (= call!325475 (forall!11039 (ite c!797247 (toList!5226 lt!1820037) (t!359156 oldBucket!40)) (ite c!797247 lambda!199750 lambda!199754)))))

(declare-fun b!4657772 () Bool)

(declare-fun e!2906194 () Bool)

(declare-fun invariantList!1302 (List!52040) Bool)

(assert (=> b!4657772 (= e!2906194 (invariantList!1302 (toList!5226 lt!1820216)))))

(declare-fun b!4657773 () Bool)

(declare-fun e!2906193 () Bool)

(declare-fun call!325476 () Bool)

(assert (=> b!4657773 (= e!2906193 call!325476)))

(assert (=> d!1478142 e!2906194))

(declare-fun res!1958779 () Bool)

(assert (=> d!1478142 (=> (not res!1958779) (not e!2906194))))

(assert (=> d!1478142 (= res!1958779 (forall!11039 oldBucket!40 lambda!199756))))

(declare-fun e!2906195 () ListMap!4565)

(assert (=> d!1478142 (= lt!1820216 e!2906195)))

(assert (=> d!1478142 (= c!797247 ((_ is Nil!51916) oldBucket!40))))

(assert (=> d!1478142 (noDuplicateKeys!1648 oldBucket!40)))

(assert (=> d!1478142 (= (addToMapMapFromBucket!1105 oldBucket!40 lt!1820037) lt!1820216)))

(assert (=> b!4657774 (= e!2906195 lt!1820205)))

(declare-fun lt!1820198 () ListMap!4565)

(declare-fun +!1988 (ListMap!4565 tuple2!53038) ListMap!4565)

(assert (=> b!4657774 (= lt!1820198 (+!1988 lt!1820037 (h!58064 oldBucket!40)))))

(assert (=> b!4657774 (= lt!1820205 (addToMapMapFromBucket!1105 (t!359156 oldBucket!40) (+!1988 lt!1820037 (h!58064 oldBucket!40))))))

(declare-fun lt!1820214 () Unit!118852)

(assert (=> b!4657774 (= lt!1820214 call!325477)))

(assert (=> b!4657774 (forall!11039 (toList!5226 lt!1820037) lambda!199753)))

(declare-fun lt!1820213 () Unit!118852)

(assert (=> b!4657774 (= lt!1820213 lt!1820214)))

(assert (=> b!4657774 (forall!11039 (toList!5226 lt!1820198) lambda!199754)))

(declare-fun lt!1820199 () Unit!118852)

(declare-fun Unit!118866 () Unit!118852)

(assert (=> b!4657774 (= lt!1820199 Unit!118866)))

(assert (=> b!4657774 call!325475))

(declare-fun lt!1820217 () Unit!118852)

(declare-fun Unit!118867 () Unit!118852)

(assert (=> b!4657774 (= lt!1820217 Unit!118867)))

(declare-fun lt!1820206 () Unit!118852)

(declare-fun Unit!118868 () Unit!118852)

(assert (=> b!4657774 (= lt!1820206 Unit!118868)))

(declare-fun lt!1820203 () Unit!118852)

(declare-fun forallContained!3240 (List!52040 Int tuple2!53038) Unit!118852)

(assert (=> b!4657774 (= lt!1820203 (forallContained!3240 (toList!5226 lt!1820198) lambda!199754 (h!58064 oldBucket!40)))))

(assert (=> b!4657774 (contains!15065 lt!1820198 (_1!29813 (h!58064 oldBucket!40)))))

(declare-fun lt!1820208 () Unit!118852)

(declare-fun Unit!118869 () Unit!118852)

(assert (=> b!4657774 (= lt!1820208 Unit!118869)))

(assert (=> b!4657774 (contains!15065 lt!1820205 (_1!29813 (h!58064 oldBucket!40)))))

(declare-fun lt!1820210 () Unit!118852)

(declare-fun Unit!118870 () Unit!118852)

(assert (=> b!4657774 (= lt!1820210 Unit!118870)))

(assert (=> b!4657774 (forall!11039 oldBucket!40 lambda!199754)))

(declare-fun lt!1820218 () Unit!118852)

(declare-fun Unit!118871 () Unit!118852)

(assert (=> b!4657774 (= lt!1820218 Unit!118871)))

(assert (=> b!4657774 (forall!11039 (toList!5226 lt!1820198) lambda!199754)))

(declare-fun lt!1820202 () Unit!118852)

(declare-fun Unit!118872 () Unit!118852)

(assert (=> b!4657774 (= lt!1820202 Unit!118872)))

(declare-fun lt!1820209 () Unit!118852)

(declare-fun Unit!118873 () Unit!118852)

(assert (=> b!4657774 (= lt!1820209 Unit!118873)))

(declare-fun lt!1820201 () Unit!118852)

(declare-fun addForallContainsKeyThenBeforeAdding!601 (ListMap!4565 ListMap!4565 K!13270 V!13516) Unit!118852)

(assert (=> b!4657774 (= lt!1820201 (addForallContainsKeyThenBeforeAdding!601 lt!1820037 lt!1820205 (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))))))

(assert (=> b!4657774 (forall!11039 (toList!5226 lt!1820037) lambda!199754)))

(declare-fun lt!1820204 () Unit!118852)

(assert (=> b!4657774 (= lt!1820204 lt!1820201)))

(assert (=> b!4657774 (forall!11039 (toList!5226 lt!1820037) lambda!199754)))

(declare-fun lt!1820212 () Unit!118852)

(declare-fun Unit!118874 () Unit!118852)

(assert (=> b!4657774 (= lt!1820212 Unit!118874)))

(declare-fun res!1958777 () Bool)

(assert (=> b!4657774 (= res!1958777 (forall!11039 oldBucket!40 lambda!199754))))

(assert (=> b!4657774 (=> (not res!1958777) (not e!2906193))))

(assert (=> b!4657774 e!2906193))

(declare-fun lt!1820211 () Unit!118852)

(declare-fun Unit!118875 () Unit!118852)

(assert (=> b!4657774 (= lt!1820211 Unit!118875)))

(assert (=> b!4657775 (= e!2906195 lt!1820037)))

(declare-fun lt!1820207 () Unit!118852)

(assert (=> b!4657775 (= lt!1820207 call!325477)))

(assert (=> b!4657775 call!325475))

(declare-fun lt!1820200 () Unit!118852)

(assert (=> b!4657775 (= lt!1820200 lt!1820207)))

(assert (=> b!4657775 call!325476))

(declare-fun lt!1820215 () Unit!118852)

(declare-fun Unit!118877 () Unit!118852)

(assert (=> b!4657775 (= lt!1820215 Unit!118877)))

(declare-fun b!4657776 () Bool)

(declare-fun res!1958778 () Bool)

(assert (=> b!4657776 (=> (not res!1958778) (not e!2906194))))

(assert (=> b!4657776 (= res!1958778 (forall!11039 (toList!5226 lt!1820037) lambda!199756))))

(declare-fun bm!325472 () Bool)

(assert (=> bm!325472 (= call!325476 (forall!11039 (toList!5226 lt!1820037) (ite c!797247 lambda!199750 lambda!199754)))))

(assert (= (and d!1478142 c!797247) b!4657775))

(assert (= (and d!1478142 (not c!797247)) b!4657774))

(assert (= (and b!4657774 res!1958777) b!4657773))

(assert (= (or b!4657775 b!4657774) bm!325470))

(assert (= (or b!4657775 b!4657773) bm!325472))

(assert (= (or b!4657775 b!4657774) bm!325471))

(assert (= (and d!1478142 res!1958779) b!4657776))

(assert (= (and b!4657776 res!1958778) b!4657772))

(declare-fun m!5538757 () Bool)

(assert (=> bm!325471 m!5538757))

(declare-fun m!5538759 () Bool)

(assert (=> b!4657772 m!5538759))

(declare-fun m!5538761 () Bool)

(assert (=> bm!325472 m!5538761))

(declare-fun m!5538763 () Bool)

(assert (=> bm!325470 m!5538763))

(declare-fun m!5538765 () Bool)

(assert (=> b!4657774 m!5538765))

(declare-fun m!5538767 () Bool)

(assert (=> b!4657774 m!5538767))

(declare-fun m!5538769 () Bool)

(assert (=> b!4657774 m!5538769))

(assert (=> b!4657774 m!5538769))

(declare-fun m!5538771 () Bool)

(assert (=> b!4657774 m!5538771))

(declare-fun m!5538773 () Bool)

(assert (=> b!4657774 m!5538773))

(assert (=> b!4657774 m!5538765))

(declare-fun m!5538775 () Bool)

(assert (=> b!4657774 m!5538775))

(declare-fun m!5538777 () Bool)

(assert (=> b!4657774 m!5538777))

(assert (=> b!4657774 m!5538771))

(declare-fun m!5538779 () Bool)

(assert (=> b!4657774 m!5538779))

(declare-fun m!5538781 () Bool)

(assert (=> b!4657774 m!5538781))

(assert (=> b!4657774 m!5538781))

(declare-fun m!5538783 () Bool)

(assert (=> b!4657774 m!5538783))

(declare-fun m!5538785 () Bool)

(assert (=> d!1478142 m!5538785))

(assert (=> d!1478142 m!5538573))

(declare-fun m!5538787 () Bool)

(assert (=> b!4657776 m!5538787))

(assert (=> b!4657639 d!1478142))

(declare-fun bs!1066235 () Bool)

(declare-fun d!1478178 () Bool)

(assert (= bs!1066235 (and d!1478178 b!4657636)))

(declare-fun lambda!199760 () Int)

(assert (=> bs!1066235 (= lambda!199760 lambda!199676)))

(declare-fun lt!1820240 () ListMap!4565)

(assert (=> d!1478178 (invariantList!1302 (toList!5226 lt!1820240))))

(declare-fun e!2906212 () ListMap!4565)

(assert (=> d!1478178 (= lt!1820240 e!2906212)))

(declare-fun c!797255 () Bool)

(assert (=> d!1478178 (= c!797255 ((_ is Cons!51917) Nil!51917))))

(declare-fun forall!11040 (List!52041 Int) Bool)

(assert (=> d!1478178 (forall!11040 Nil!51917 lambda!199760)))

(assert (=> d!1478178 (= (extractMap!1704 Nil!51917) lt!1820240)))

(declare-fun b!4657802 () Bool)

(assert (=> b!4657802 (= e!2906212 (addToMapMapFromBucket!1105 (_2!29814 (h!58065 Nil!51917)) (extractMap!1704 (t!359157 Nil!51917))))))

(declare-fun b!4657803 () Bool)

(assert (=> b!4657803 (= e!2906212 (ListMap!4566 Nil!51916))))

(assert (= (and d!1478178 c!797255) b!4657802))

(assert (= (and d!1478178 (not c!797255)) b!4657803))

(declare-fun m!5538811 () Bool)

(assert (=> d!1478178 m!5538811))

(declare-fun m!5538813 () Bool)

(assert (=> d!1478178 m!5538813))

(declare-fun m!5538815 () Bool)

(assert (=> b!4657802 m!5538815))

(assert (=> b!4657802 m!5538815))

(declare-fun m!5538817 () Bool)

(assert (=> b!4657802 m!5538817))

(assert (=> b!4657639 d!1478178))

(declare-fun bs!1066236 () Bool)

(declare-fun d!1478190 () Bool)

(assert (= bs!1066236 (and d!1478190 b!4657775)))

(declare-fun lambda!199763 () Int)

(assert (=> bs!1066236 (not (= lambda!199763 lambda!199750))))

(declare-fun bs!1066237 () Bool)

(assert (= bs!1066237 (and d!1478190 b!4657774)))

(assert (=> bs!1066237 (not (= lambda!199763 lambda!199753))))

(assert (=> bs!1066237 (not (= lambda!199763 lambda!199754))))

(declare-fun bs!1066238 () Bool)

(assert (= bs!1066238 (and d!1478190 d!1478142)))

(assert (=> bs!1066238 (not (= lambda!199763 lambda!199756))))

(assert (=> d!1478190 true))

(assert (=> d!1478190 true))

(assert (=> d!1478190 (= (allKeysSameHash!1502 oldBucket!40 hash!414 hashF!1389) (forall!11039 oldBucket!40 lambda!199763))))

(declare-fun bs!1066239 () Bool)

(assert (= bs!1066239 d!1478190))

(declare-fun m!5538819 () Bool)

(assert (=> bs!1066239 m!5538819))

(assert (=> b!4657640 d!1478190))

(declare-fun b!4657863 () Bool)

(declare-datatypes ((List!52043 0))(
  ( (Nil!51919) (Cons!51919 (h!58069 K!13270) (t!359159 List!52043)) )
))
(declare-fun e!2906254 () List!52043)

(declare-fun keys!18398 (ListMap!4565) List!52043)

(assert (=> b!4657863 (= e!2906254 (keys!18398 lt!1820033))))

(declare-fun b!4657864 () Bool)

(declare-fun e!2906252 () Unit!118852)

(declare-fun Unit!118879 () Unit!118852)

(assert (=> b!4657864 (= e!2906252 Unit!118879)))

(declare-fun b!4657865 () Bool)

(declare-fun e!2906250 () Bool)

(declare-fun e!2906251 () Bool)

(assert (=> b!4657865 (= e!2906250 e!2906251)))

(declare-fun res!1958808 () Bool)

(assert (=> b!4657865 (=> (not res!1958808) (not e!2906251))))

(declare-datatypes ((Option!11835 0))(
  ( (None!11834) (Some!11834 (v!46120 V!13516)) )
))
(declare-fun isDefined!9100 (Option!11835) Bool)

(declare-fun getValueByKey!1617 (List!52040 K!13270) Option!11835)

(assert (=> b!4657865 (= res!1958808 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820033) key!4968)))))

(declare-fun b!4657866 () Bool)

(declare-fun e!2906253 () Unit!118852)

(declare-fun lt!1820286 () Unit!118852)

(assert (=> b!4657866 (= e!2906253 lt!1820286)))

(declare-fun lt!1820288 () Unit!118852)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (List!52040 K!13270) Unit!118852)

(assert (=> b!4657866 (= lt!1820288 (lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (toList!5226 lt!1820033) key!4968))))

(assert (=> b!4657866 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820033) key!4968))))

(declare-fun lt!1820285 () Unit!118852)

(assert (=> b!4657866 (= lt!1820285 lt!1820288)))

(declare-fun lemmaInListThenGetKeysListContains!748 (List!52040 K!13270) Unit!118852)

(assert (=> b!4657866 (= lt!1820286 (lemmaInListThenGetKeysListContains!748 (toList!5226 lt!1820033) key!4968))))

(declare-fun call!325483 () Bool)

(assert (=> b!4657866 call!325483))

(declare-fun b!4657867 () Bool)

(assert (=> b!4657867 false))

(declare-fun lt!1820283 () Unit!118852)

(declare-fun lt!1820284 () Unit!118852)

(assert (=> b!4657867 (= lt!1820283 lt!1820284)))

(declare-fun containsKey!2737 (List!52040 K!13270) Bool)

(assert (=> b!4657867 (containsKey!2737 (toList!5226 lt!1820033) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!752 (List!52040 K!13270) Unit!118852)

(assert (=> b!4657867 (= lt!1820284 (lemmaInGetKeysListThenContainsKey!752 (toList!5226 lt!1820033) key!4968))))

(declare-fun Unit!118880 () Unit!118852)

(assert (=> b!4657867 (= e!2906252 Unit!118880)))

(declare-fun b!4657869 () Bool)

(declare-fun getKeysList!753 (List!52040) List!52043)

(assert (=> b!4657869 (= e!2906254 (getKeysList!753 (toList!5226 lt!1820033)))))

(declare-fun b!4657870 () Bool)

(declare-fun contains!15068 (List!52043 K!13270) Bool)

(assert (=> b!4657870 (= e!2906251 (contains!15068 (keys!18398 lt!1820033) key!4968))))

(declare-fun b!4657868 () Bool)

(declare-fun e!2906255 () Bool)

(assert (=> b!4657868 (= e!2906255 (not (contains!15068 (keys!18398 lt!1820033) key!4968)))))

(declare-fun d!1478192 () Bool)

(assert (=> d!1478192 e!2906250))

(declare-fun res!1958807 () Bool)

(assert (=> d!1478192 (=> res!1958807 e!2906250)))

(assert (=> d!1478192 (= res!1958807 e!2906255)))

(declare-fun res!1958806 () Bool)

(assert (=> d!1478192 (=> (not res!1958806) (not e!2906255))))

(declare-fun lt!1820282 () Bool)

(assert (=> d!1478192 (= res!1958806 (not lt!1820282))))

(declare-fun lt!1820289 () Bool)

(assert (=> d!1478192 (= lt!1820282 lt!1820289)))

(declare-fun lt!1820287 () Unit!118852)

(assert (=> d!1478192 (= lt!1820287 e!2906253)))

(declare-fun c!797272 () Bool)

(assert (=> d!1478192 (= c!797272 lt!1820289)))

(assert (=> d!1478192 (= lt!1820289 (containsKey!2737 (toList!5226 lt!1820033) key!4968))))

(assert (=> d!1478192 (= (contains!15065 lt!1820033 key!4968) lt!1820282)))

(declare-fun bm!325478 () Bool)

(assert (=> bm!325478 (= call!325483 (contains!15068 e!2906254 key!4968))))

(declare-fun c!797273 () Bool)

(assert (=> bm!325478 (= c!797273 c!797272)))

(declare-fun b!4657871 () Bool)

(assert (=> b!4657871 (= e!2906253 e!2906252)))

(declare-fun c!797274 () Bool)

(assert (=> b!4657871 (= c!797274 call!325483)))

(assert (= (and d!1478192 c!797272) b!4657866))

(assert (= (and d!1478192 (not c!797272)) b!4657871))

(assert (= (and b!4657871 c!797274) b!4657867))

(assert (= (and b!4657871 (not c!797274)) b!4657864))

(assert (= (or b!4657866 b!4657871) bm!325478))

(assert (= (and bm!325478 c!797273) b!4657869))

(assert (= (and bm!325478 (not c!797273)) b!4657863))

(assert (= (and d!1478192 res!1958806) b!4657868))

(assert (= (and d!1478192 (not res!1958807)) b!4657865))

(assert (= (and b!4657865 res!1958808) b!4657870))

(declare-fun m!5538855 () Bool)

(assert (=> b!4657868 m!5538855))

(assert (=> b!4657868 m!5538855))

(declare-fun m!5538857 () Bool)

(assert (=> b!4657868 m!5538857))

(declare-fun m!5538859 () Bool)

(assert (=> b!4657866 m!5538859))

(declare-fun m!5538861 () Bool)

(assert (=> b!4657866 m!5538861))

(assert (=> b!4657866 m!5538861))

(declare-fun m!5538863 () Bool)

(assert (=> b!4657866 m!5538863))

(declare-fun m!5538865 () Bool)

(assert (=> b!4657866 m!5538865))

(declare-fun m!5538867 () Bool)

(assert (=> bm!325478 m!5538867))

(assert (=> b!4657870 m!5538855))

(assert (=> b!4657870 m!5538855))

(assert (=> b!4657870 m!5538857))

(declare-fun m!5538869 () Bool)

(assert (=> b!4657867 m!5538869))

(declare-fun m!5538871 () Bool)

(assert (=> b!4657867 m!5538871))

(assert (=> b!4657865 m!5538861))

(assert (=> b!4657865 m!5538861))

(assert (=> b!4657865 m!5538863))

(assert (=> b!4657863 m!5538855))

(assert (=> d!1478192 m!5538869))

(declare-fun m!5538873 () Bool)

(assert (=> b!4657869 m!5538873))

(assert (=> b!4657643 d!1478192))

(declare-fun bs!1066245 () Bool)

(declare-fun d!1478200 () Bool)

(assert (= bs!1066245 (and d!1478200 b!4657636)))

(declare-fun lambda!199765 () Int)

(assert (=> bs!1066245 (= lambda!199765 lambda!199676)))

(declare-fun bs!1066246 () Bool)

(assert (= bs!1066246 (and d!1478200 d!1478178)))

(assert (=> bs!1066246 (= lambda!199765 lambda!199760)))

(declare-fun lt!1820290 () ListMap!4565)

(assert (=> d!1478200 (invariantList!1302 (toList!5226 lt!1820290))))

(declare-fun e!2906256 () ListMap!4565)

(assert (=> d!1478200 (= lt!1820290 e!2906256)))

(declare-fun c!797275 () Bool)

(assert (=> d!1478200 (= c!797275 ((_ is Cons!51917) lt!1820045))))

(assert (=> d!1478200 (forall!11040 lt!1820045 lambda!199765)))

(assert (=> d!1478200 (= (extractMap!1704 lt!1820045) lt!1820290)))

(declare-fun b!4657872 () Bool)

(assert (=> b!4657872 (= e!2906256 (addToMapMapFromBucket!1105 (_2!29814 (h!58065 lt!1820045)) (extractMap!1704 (t!359157 lt!1820045))))))

(declare-fun b!4657873 () Bool)

(assert (=> b!4657873 (= e!2906256 (ListMap!4566 Nil!51916))))

(assert (= (and d!1478200 c!797275) b!4657872))

(assert (= (and d!1478200 (not c!797275)) b!4657873))

(declare-fun m!5538875 () Bool)

(assert (=> d!1478200 m!5538875))

(declare-fun m!5538877 () Bool)

(assert (=> d!1478200 m!5538877))

(declare-fun m!5538879 () Bool)

(assert (=> b!4657872 m!5538879))

(assert (=> b!4657872 m!5538879))

(declare-fun m!5538881 () Bool)

(assert (=> b!4657872 m!5538881))

(assert (=> b!4657643 d!1478200))

(declare-fun d!1478202 () Bool)

(declare-fun res!1958813 () Bool)

(declare-fun e!2906261 () Bool)

(assert (=> d!1478202 (=> res!1958813 e!2906261)))

(assert (=> d!1478202 (= res!1958813 (not ((_ is Cons!51916) newBucket!224)))))

(assert (=> d!1478202 (= (noDuplicateKeys!1648 newBucket!224) e!2906261)))

(declare-fun b!4657878 () Bool)

(declare-fun e!2906262 () Bool)

(assert (=> b!4657878 (= e!2906261 e!2906262)))

(declare-fun res!1958814 () Bool)

(assert (=> b!4657878 (=> (not res!1958814) (not e!2906262))))

(assert (=> b!4657878 (= res!1958814 (not (containsKey!2734 (t!359156 newBucket!224) (_1!29813 (h!58064 newBucket!224)))))))

(declare-fun b!4657879 () Bool)

(assert (=> b!4657879 (= e!2906262 (noDuplicateKeys!1648 (t!359156 newBucket!224)))))

(assert (= (and d!1478202 (not res!1958813)) b!4657878))

(assert (= (and b!4657878 res!1958814) b!4657879))

(declare-fun m!5538883 () Bool)

(assert (=> b!4657878 m!5538883))

(declare-fun m!5538885 () Bool)

(assert (=> b!4657879 m!5538885))

(assert (=> b!4657642 d!1478202))

(declare-fun b!4657882 () Bool)

(declare-fun e!2906263 () List!52040)

(assert (=> b!4657882 (= e!2906263 (Cons!51916 (h!58064 oldBucket!40) (removePairForKey!1271 (t!359156 oldBucket!40) key!4968)))))

(declare-fun b!4657883 () Bool)

(assert (=> b!4657883 (= e!2906263 Nil!51916)))

(declare-fun b!4657881 () Bool)

(declare-fun e!2906264 () List!52040)

(assert (=> b!4657881 (= e!2906264 e!2906263)))

(declare-fun c!797276 () Bool)

(assert (=> b!4657881 (= c!797276 ((_ is Cons!51916) oldBucket!40))))

(declare-fun d!1478204 () Bool)

(declare-fun lt!1820291 () List!52040)

(assert (=> d!1478204 (not (containsKey!2734 lt!1820291 key!4968))))

(assert (=> d!1478204 (= lt!1820291 e!2906264)))

(declare-fun c!797277 () Bool)

(assert (=> d!1478204 (= c!797277 (and ((_ is Cons!51916) oldBucket!40) (= (_1!29813 (h!58064 oldBucket!40)) key!4968)))))

(assert (=> d!1478204 (noDuplicateKeys!1648 oldBucket!40)))

(assert (=> d!1478204 (= (removePairForKey!1271 oldBucket!40 key!4968) lt!1820291)))

(declare-fun b!4657880 () Bool)

(assert (=> b!4657880 (= e!2906264 (t!359156 oldBucket!40))))

(assert (= (and d!1478204 c!797277) b!4657880))

(assert (= (and d!1478204 (not c!797277)) b!4657881))

(assert (= (and b!4657881 c!797276) b!4657882))

(assert (= (and b!4657881 (not c!797276)) b!4657883))

(assert (=> b!4657882 m!5538567))

(declare-fun m!5538887 () Bool)

(assert (=> d!1478204 m!5538887))

(assert (=> d!1478204 m!5538573))

(assert (=> b!4657646 d!1478204))

(declare-fun d!1478206 () Bool)

(declare-fun e!2906269 () Bool)

(assert (=> d!1478206 e!2906269))

(declare-fun res!1958817 () Bool)

(assert (=> d!1478206 (=> res!1958817 e!2906269)))

(declare-fun lt!1820301 () Bool)

(assert (=> d!1478206 (= res!1958817 (not lt!1820301))))

(declare-fun lt!1820303 () Bool)

(assert (=> d!1478206 (= lt!1820301 lt!1820303)))

(declare-fun lt!1820302 () Unit!118852)

(declare-fun e!2906270 () Unit!118852)

(assert (=> d!1478206 (= lt!1820302 e!2906270)))

(declare-fun c!797280 () Bool)

(assert (=> d!1478206 (= c!797280 lt!1820303)))

(declare-fun containsKey!2738 (List!52041 (_ BitVec 64)) Bool)

(assert (=> d!1478206 (= lt!1820303 (containsKey!2738 (toList!5225 lt!1820042) lt!1820039))))

(assert (=> d!1478206 (= (contains!15064 lt!1820042 lt!1820039) lt!1820301)))

(declare-fun b!4657890 () Bool)

(declare-fun lt!1820300 () Unit!118852)

(assert (=> b!4657890 (= e!2906270 lt!1820300)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1520 (List!52041 (_ BitVec 64)) Unit!118852)

(assert (=> b!4657890 (= lt!1820300 (lemmaContainsKeyImpliesGetValueByKeyDefined!1520 (toList!5225 lt!1820042) lt!1820039))))

(declare-datatypes ((Option!11836 0))(
  ( (None!11835) (Some!11835 (v!46121 List!52040)) )
))
(declare-fun isDefined!9101 (Option!11836) Bool)

(declare-fun getValueByKey!1618 (List!52041 (_ BitVec 64)) Option!11836)

(assert (=> b!4657890 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039))))

(declare-fun b!4657891 () Bool)

(declare-fun Unit!118881 () Unit!118852)

(assert (=> b!4657891 (= e!2906270 Unit!118881)))

(declare-fun b!4657892 () Bool)

(assert (=> b!4657892 (= e!2906269 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039)))))

(assert (= (and d!1478206 c!797280) b!4657890))

(assert (= (and d!1478206 (not c!797280)) b!4657891))

(assert (= (and d!1478206 (not res!1958817)) b!4657892))

(declare-fun m!5538889 () Bool)

(assert (=> d!1478206 m!5538889))

(declare-fun m!5538891 () Bool)

(assert (=> b!4657890 m!5538891))

(declare-fun m!5538893 () Bool)

(assert (=> b!4657890 m!5538893))

(assert (=> b!4657890 m!5538893))

(declare-fun m!5538895 () Bool)

(assert (=> b!4657890 m!5538895))

(assert (=> b!4657892 m!5538893))

(assert (=> b!4657892 m!5538893))

(assert (=> b!4657892 m!5538895))

(assert (=> b!4657636 d!1478206))

(declare-fun d!1478208 () Bool)

(declare-fun get!17278 (Option!11836) List!52040)

(assert (=> d!1478208 (= (apply!12251 lt!1820042 lt!1820039) (get!17278 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039)))))

(declare-fun bs!1066247 () Bool)

(assert (= bs!1066247 d!1478208))

(assert (=> bs!1066247 m!5538893))

(assert (=> bs!1066247 m!5538893))

(declare-fun m!5538897 () Bool)

(assert (=> bs!1066247 m!5538897))

(assert (=> b!4657636 d!1478208))

(declare-fun d!1478210 () Bool)

(declare-fun dynLambda!21600 (Int tuple2!53040) Bool)

(assert (=> d!1478210 (dynLambda!21600 lambda!199676 lt!1820043)))

(declare-fun lt!1820306 () Unit!118852)

(declare-fun choose!32044 (List!52041 Int tuple2!53040) Unit!118852)

(assert (=> d!1478210 (= lt!1820306 (choose!32044 lt!1820045 lambda!199676 lt!1820043))))

(declare-fun e!2906273 () Bool)

(assert (=> d!1478210 e!2906273))

(declare-fun res!1958820 () Bool)

(assert (=> d!1478210 (=> (not res!1958820) (not e!2906273))))

(assert (=> d!1478210 (= res!1958820 (forall!11040 lt!1820045 lambda!199676))))

(assert (=> d!1478210 (= (forallContained!3238 lt!1820045 lambda!199676 lt!1820043) lt!1820306)))

(declare-fun b!4657895 () Bool)

(assert (=> b!4657895 (= e!2906273 (contains!15063 lt!1820045 lt!1820043))))

(assert (= (and d!1478210 res!1958820) b!4657895))

(declare-fun b_lambda!174491 () Bool)

(assert (=> (not b_lambda!174491) (not d!1478210)))

(declare-fun m!5538899 () Bool)

(assert (=> d!1478210 m!5538899))

(declare-fun m!5538901 () Bool)

(assert (=> d!1478210 m!5538901))

(declare-fun m!5538903 () Bool)

(assert (=> d!1478210 m!5538903))

(assert (=> b!4657895 m!5538605))

(assert (=> b!4657636 d!1478210))

(declare-fun bs!1066248 () Bool)

(declare-fun d!1478212 () Bool)

(assert (= bs!1066248 (and d!1478212 b!4657636)))

(declare-fun lambda!199772 () Int)

(assert (=> bs!1066248 (= lambda!199772 lambda!199676)))

(declare-fun bs!1066249 () Bool)

(assert (= bs!1066249 (and d!1478212 d!1478178)))

(assert (=> bs!1066249 (= lambda!199772 lambda!199760)))

(declare-fun bs!1066250 () Bool)

(assert (= bs!1066250 (and d!1478212 d!1478200)))

(assert (=> bs!1066250 (= lambda!199772 lambda!199765)))

(declare-fun e!2906278 () Bool)

(declare-fun b!4657906 () Bool)

(assert (=> b!4657906 (= e!2906278 (isDefined!9097 (getPair!376 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1820326 () Unit!118852)

(assert (=> b!4657906 (= lt!1820326 (forallContained!3238 (toList!5225 lt!1820042) lambda!199772 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))))

(declare-fun lt!1820324 () Unit!118852)

(declare-fun lt!1820328 () Unit!118852)

(assert (=> b!4657906 (= lt!1820324 lt!1820328)))

(declare-fun lt!1820330 () (_ BitVec 64))

(declare-fun lt!1820323 () List!52040)

(assert (=> b!4657906 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820330 lt!1820323))))

(assert (=> b!4657906 (= lt!1820328 (lemmaGetValueImpliesTupleContained!181 lt!1820042 lt!1820330 lt!1820323))))

(declare-fun e!2906279 () Bool)

(assert (=> b!4657906 e!2906279))

(declare-fun res!1958832 () Bool)

(assert (=> b!4657906 (=> (not res!1958832) (not e!2906279))))

(assert (=> b!4657906 (= res!1958832 (contains!15064 lt!1820042 lt!1820330))))

(assert (=> b!4657906 (= lt!1820323 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))

(assert (=> b!4657906 (= lt!1820330 (hash!3789 hashF!1389 key!4968))))

(declare-fun lt!1820325 () Unit!118852)

(declare-fun lt!1820327 () Unit!118852)

(assert (=> b!4657906 (= lt!1820325 lt!1820327)))

(assert (=> b!4657906 (contains!15064 lt!1820042 (hash!3789 hashF!1389 key!4968))))

(assert (=> b!4657906 (= lt!1820327 (lemmaInGenMapThenLongMapContainsHash!582 lt!1820042 key!4968 hashF!1389))))

(declare-fun b!4657904 () Bool)

(declare-fun res!1958830 () Bool)

(assert (=> b!4657904 (=> (not res!1958830) (not e!2906278))))

(declare-fun allKeysSameHashInMap!1604 (ListLongMap!3779 Hashable!6045) Bool)

(assert (=> b!4657904 (= res!1958830 (allKeysSameHashInMap!1604 lt!1820042 hashF!1389))))

(declare-fun b!4657907 () Bool)

(assert (=> b!4657907 (= e!2906279 (= (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820330) (Some!11835 lt!1820323)))))

(declare-fun b!4657905 () Bool)

(declare-fun res!1958831 () Bool)

(assert (=> b!4657905 (=> (not res!1958831) (not e!2906278))))

(assert (=> b!4657905 (= res!1958831 (contains!15065 (extractMap!1704 (toList!5225 lt!1820042)) key!4968))))

(assert (=> d!1478212 e!2906278))

(declare-fun res!1958829 () Bool)

(assert (=> d!1478212 (=> (not res!1958829) (not e!2906278))))

(assert (=> d!1478212 (= res!1958829 (forall!11040 (toList!5225 lt!1820042) lambda!199772))))

(declare-fun lt!1820329 () Unit!118852)

(declare-fun choose!32045 (ListLongMap!3779 K!13270 Hashable!6045) Unit!118852)

(assert (=> d!1478212 (= lt!1820329 (choose!32045 lt!1820042 key!4968 hashF!1389))))

(assert (=> d!1478212 (forall!11040 (toList!5225 lt!1820042) lambda!199772)))

(assert (=> d!1478212 (= (lemmaInGenMapThenGetPairDefined!172 lt!1820042 key!4968 hashF!1389) lt!1820329)))

(assert (= (and d!1478212 res!1958829) b!4657904))

(assert (= (and b!4657904 res!1958830) b!4657905))

(assert (= (and b!4657905 res!1958831) b!4657906))

(assert (= (and b!4657906 res!1958832) b!4657907))

(declare-fun m!5538905 () Bool)

(assert (=> b!4657904 m!5538905))

(declare-fun m!5538907 () Bool)

(assert (=> d!1478212 m!5538907))

(declare-fun m!5538909 () Bool)

(assert (=> d!1478212 m!5538909))

(assert (=> d!1478212 m!5538907))

(assert (=> b!4657906 m!5538601))

(declare-fun m!5538911 () Bool)

(assert (=> b!4657906 m!5538911))

(declare-fun m!5538913 () Bool)

(assert (=> b!4657906 m!5538913))

(declare-fun m!5538915 () Bool)

(assert (=> b!4657906 m!5538915))

(declare-fun m!5538917 () Bool)

(assert (=> b!4657906 m!5538917))

(assert (=> b!4657906 m!5538593))

(assert (=> b!4657906 m!5538911))

(assert (=> b!4657906 m!5538913))

(declare-fun m!5538919 () Bool)

(assert (=> b!4657906 m!5538919))

(assert (=> b!4657906 m!5538593))

(declare-fun m!5538921 () Bool)

(assert (=> b!4657906 m!5538921))

(declare-fun m!5538923 () Bool)

(assert (=> b!4657906 m!5538923))

(assert (=> b!4657906 m!5538593))

(declare-fun m!5538925 () Bool)

(assert (=> b!4657906 m!5538925))

(declare-fun m!5538927 () Bool)

(assert (=> b!4657907 m!5538927))

(declare-fun m!5538929 () Bool)

(assert (=> b!4657905 m!5538929))

(assert (=> b!4657905 m!5538929))

(declare-fun m!5538931 () Bool)

(assert (=> b!4657905 m!5538931))

(assert (=> b!4657636 d!1478212))

(declare-fun b!4657924 () Bool)

(declare-fun e!2906291 () Bool)

(declare-fun e!2906293 () Bool)

(assert (=> b!4657924 (= e!2906291 e!2906293)))

(declare-fun res!1958842 () Bool)

(assert (=> b!4657924 (=> (not res!1958842) (not e!2906293))))

(declare-fun lt!1820333 () Option!11832)

(assert (=> b!4657924 (= res!1958842 (isDefined!9097 lt!1820333))))

(declare-fun b!4657925 () Bool)

(declare-fun res!1958844 () Bool)

(assert (=> b!4657925 (=> (not res!1958844) (not e!2906293))))

(declare-fun get!17279 (Option!11832) tuple2!53038)

(assert (=> b!4657925 (= res!1958844 (= (_1!29813 (get!17279 lt!1820333)) key!4968))))

(declare-fun b!4657926 () Bool)

(declare-fun e!2906294 () Option!11832)

(assert (=> b!4657926 (= e!2906294 (getPair!376 (t!359156 lt!1820044) key!4968))))

(declare-fun b!4657927 () Bool)

(assert (=> b!4657927 (= e!2906294 None!11831)))

(declare-fun b!4657928 () Bool)

(declare-fun e!2906292 () Option!11832)

(assert (=> b!4657928 (= e!2906292 e!2906294)))

(declare-fun c!797285 () Bool)

(assert (=> b!4657928 (= c!797285 ((_ is Cons!51916) lt!1820044))))

(declare-fun d!1478214 () Bool)

(assert (=> d!1478214 e!2906291))

(declare-fun res!1958843 () Bool)

(assert (=> d!1478214 (=> res!1958843 e!2906291)))

(declare-fun e!2906290 () Bool)

(assert (=> d!1478214 (= res!1958843 e!2906290)))

(declare-fun res!1958841 () Bool)

(assert (=> d!1478214 (=> (not res!1958841) (not e!2906290))))

(declare-fun isEmpty!29013 (Option!11832) Bool)

(assert (=> d!1478214 (= res!1958841 (isEmpty!29013 lt!1820333))))

(assert (=> d!1478214 (= lt!1820333 e!2906292)))

(declare-fun c!797286 () Bool)

(assert (=> d!1478214 (= c!797286 (and ((_ is Cons!51916) lt!1820044) (= (_1!29813 (h!58064 lt!1820044)) key!4968)))))

(assert (=> d!1478214 (noDuplicateKeys!1648 lt!1820044)))

(assert (=> d!1478214 (= (getPair!376 lt!1820044 key!4968) lt!1820333)))

(declare-fun b!4657929 () Bool)

(declare-fun contains!15069 (List!52040 tuple2!53038) Bool)

(assert (=> b!4657929 (= e!2906293 (contains!15069 lt!1820044 (get!17279 lt!1820333)))))

(declare-fun b!4657930 () Bool)

(assert (=> b!4657930 (= e!2906292 (Some!11831 (h!58064 lt!1820044)))))

(declare-fun b!4657931 () Bool)

(assert (=> b!4657931 (= e!2906290 (not (containsKey!2734 lt!1820044 key!4968)))))

(assert (= (and d!1478214 c!797286) b!4657930))

(assert (= (and d!1478214 (not c!797286)) b!4657928))

(assert (= (and b!4657928 c!797285) b!4657926))

(assert (= (and b!4657928 (not c!797285)) b!4657927))

(assert (= (and d!1478214 res!1958841) b!4657931))

(assert (= (and d!1478214 (not res!1958843)) b!4657924))

(assert (= (and b!4657924 res!1958842) b!4657925))

(assert (= (and b!4657925 res!1958844) b!4657929))

(declare-fun m!5538933 () Bool)

(assert (=> d!1478214 m!5538933))

(declare-fun m!5538935 () Bool)

(assert (=> d!1478214 m!5538935))

(declare-fun m!5538937 () Bool)

(assert (=> b!4657925 m!5538937))

(assert (=> b!4657929 m!5538937))

(assert (=> b!4657929 m!5538937))

(declare-fun m!5538939 () Bool)

(assert (=> b!4657929 m!5538939))

(declare-fun m!5538941 () Bool)

(assert (=> b!4657926 m!5538941))

(declare-fun m!5538943 () Bool)

(assert (=> b!4657931 m!5538943))

(declare-fun m!5538945 () Bool)

(assert (=> b!4657924 m!5538945))

(assert (=> b!4657636 d!1478214))

(declare-fun d!1478216 () Bool)

(declare-fun res!1958849 () Bool)

(declare-fun e!2906299 () Bool)

(assert (=> d!1478216 (=> res!1958849 e!2906299)))

(assert (=> d!1478216 (= res!1958849 (and ((_ is Cons!51916) (t!359156 oldBucket!40)) (= (_1!29813 (h!58064 (t!359156 oldBucket!40))) key!4968)))))

(assert (=> d!1478216 (= (containsKey!2734 (t!359156 oldBucket!40) key!4968) e!2906299)))

(declare-fun b!4657936 () Bool)

(declare-fun e!2906300 () Bool)

(assert (=> b!4657936 (= e!2906299 e!2906300)))

(declare-fun res!1958850 () Bool)

(assert (=> b!4657936 (=> (not res!1958850) (not e!2906300))))

(assert (=> b!4657936 (= res!1958850 ((_ is Cons!51916) (t!359156 oldBucket!40)))))

(declare-fun b!4657937 () Bool)

(assert (=> b!4657937 (= e!2906300 (containsKey!2734 (t!359156 (t!359156 oldBucket!40)) key!4968))))

(assert (= (and d!1478216 (not res!1958849)) b!4657936))

(assert (= (and b!4657936 res!1958850) b!4657937))

(declare-fun m!5538947 () Bool)

(assert (=> b!4657937 m!5538947))

(assert (=> b!4657636 d!1478216))

(declare-fun d!1478218 () Bool)

(assert (=> d!1478218 (= (isDefined!9097 (getPair!376 lt!1820044 key!4968)) (not (isEmpty!29013 (getPair!376 lt!1820044 key!4968))))))

(declare-fun bs!1066251 () Bool)

(assert (= bs!1066251 d!1478218))

(assert (=> bs!1066251 m!5538615))

(declare-fun m!5538949 () Bool)

(assert (=> bs!1066251 m!5538949))

(assert (=> b!4657636 d!1478218))

(declare-fun d!1478220 () Bool)

(assert (=> d!1478220 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820039 lt!1820044))))

(declare-fun lt!1820336 () Unit!118852)

(declare-fun choose!32046 (ListLongMap!3779 (_ BitVec 64) List!52040) Unit!118852)

(assert (=> d!1478220 (= lt!1820336 (choose!32046 lt!1820042 lt!1820039 lt!1820044))))

(assert (=> d!1478220 (contains!15064 lt!1820042 lt!1820039)))

(assert (=> d!1478220 (= (lemmaGetValueImpliesTupleContained!181 lt!1820042 lt!1820039 lt!1820044) lt!1820336)))

(declare-fun bs!1066252 () Bool)

(assert (= bs!1066252 d!1478220))

(declare-fun m!5538951 () Bool)

(assert (=> bs!1066252 m!5538951))

(declare-fun m!5538953 () Bool)

(assert (=> bs!1066252 m!5538953))

(assert (=> bs!1066252 m!5538595))

(assert (=> b!4657636 d!1478220))

(declare-fun d!1478222 () Bool)

(declare-fun lt!1820339 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9005 (List!52041) (InoxSet tuple2!53040))

(assert (=> d!1478222 (= lt!1820339 (select (content!9005 lt!1820045) lt!1820043))))

(declare-fun e!2906305 () Bool)

(assert (=> d!1478222 (= lt!1820339 e!2906305)))

(declare-fun res!1958856 () Bool)

(assert (=> d!1478222 (=> (not res!1958856) (not e!2906305))))

(assert (=> d!1478222 (= res!1958856 ((_ is Cons!51917) lt!1820045))))

(assert (=> d!1478222 (= (contains!15063 lt!1820045 lt!1820043) lt!1820339)))

(declare-fun b!4657943 () Bool)

(declare-fun e!2906306 () Bool)

(assert (=> b!4657943 (= e!2906305 e!2906306)))

(declare-fun res!1958855 () Bool)

(assert (=> b!4657943 (=> res!1958855 e!2906306)))

(assert (=> b!4657943 (= res!1958855 (= (h!58065 lt!1820045) lt!1820043))))

(declare-fun b!4657944 () Bool)

(assert (=> b!4657944 (= e!2906306 (contains!15063 (t!359157 lt!1820045) lt!1820043))))

(assert (= (and d!1478222 res!1958856) b!4657943))

(assert (= (and b!4657943 (not res!1958855)) b!4657944))

(declare-fun m!5538955 () Bool)

(assert (=> d!1478222 m!5538955))

(declare-fun m!5538957 () Bool)

(assert (=> d!1478222 m!5538957))

(declare-fun m!5538959 () Bool)

(assert (=> b!4657944 m!5538959))

(assert (=> b!4657636 d!1478222))

(declare-fun d!1478224 () Bool)

(assert (=> d!1478224 (containsKey!2734 oldBucket!40 key!4968)))

(declare-fun lt!1820342 () Unit!118852)

(declare-fun choose!32047 (List!52040 K!13270 Hashable!6045) Unit!118852)

(assert (=> d!1478224 (= lt!1820342 (choose!32047 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1478224 (noDuplicateKeys!1648 oldBucket!40)))

(assert (=> d!1478224 (= (lemmaGetPairDefinedThenContainsKey!126 oldBucket!40 key!4968 hashF!1389) lt!1820342)))

(declare-fun bs!1066253 () Bool)

(assert (= bs!1066253 d!1478224))

(assert (=> bs!1066253 m!5538603))

(declare-fun m!5538961 () Bool)

(assert (=> bs!1066253 m!5538961))

(assert (=> bs!1066253 m!5538573))

(assert (=> b!4657636 d!1478224))

(declare-fun d!1478226 () Bool)

(declare-fun res!1958857 () Bool)

(declare-fun e!2906307 () Bool)

(assert (=> d!1478226 (=> res!1958857 e!2906307)))

(assert (=> d!1478226 (= res!1958857 (and ((_ is Cons!51916) oldBucket!40) (= (_1!29813 (h!58064 oldBucket!40)) key!4968)))))

(assert (=> d!1478226 (= (containsKey!2734 oldBucket!40 key!4968) e!2906307)))

(declare-fun b!4657945 () Bool)

(declare-fun e!2906308 () Bool)

(assert (=> b!4657945 (= e!2906307 e!2906308)))

(declare-fun res!1958858 () Bool)

(assert (=> b!4657945 (=> (not res!1958858) (not e!2906308))))

(assert (=> b!4657945 (= res!1958858 ((_ is Cons!51916) oldBucket!40))))

(declare-fun b!4657946 () Bool)

(assert (=> b!4657946 (= e!2906308 (containsKey!2734 (t!359156 oldBucket!40) key!4968))))

(assert (= (and d!1478226 (not res!1958857)) b!4657945))

(assert (= (and b!4657945 res!1958858) b!4657946))

(assert (=> b!4657946 m!5538607))

(assert (=> b!4657636 d!1478226))

(declare-fun bs!1066254 () Bool)

(declare-fun d!1478228 () Bool)

(assert (= bs!1066254 (and d!1478228 b!4657636)))

(declare-fun lambda!199775 () Int)

(assert (=> bs!1066254 (= lambda!199775 lambda!199676)))

(declare-fun bs!1066255 () Bool)

(assert (= bs!1066255 (and d!1478228 d!1478178)))

(assert (=> bs!1066255 (= lambda!199775 lambda!199760)))

(declare-fun bs!1066256 () Bool)

(assert (= bs!1066256 (and d!1478228 d!1478200)))

(assert (=> bs!1066256 (= lambda!199775 lambda!199765)))

(declare-fun bs!1066257 () Bool)

(assert (= bs!1066257 (and d!1478228 d!1478212)))

(assert (=> bs!1066257 (= lambda!199775 lambda!199772)))

(assert (=> d!1478228 (contains!15064 lt!1820042 (hash!3789 hashF!1389 key!4968))))

(declare-fun lt!1820345 () Unit!118852)

(declare-fun choose!32048 (ListLongMap!3779 K!13270 Hashable!6045) Unit!118852)

(assert (=> d!1478228 (= lt!1820345 (choose!32048 lt!1820042 key!4968 hashF!1389))))

(assert (=> d!1478228 (forall!11040 (toList!5225 lt!1820042) lambda!199775)))

(assert (=> d!1478228 (= (lemmaInGenMapThenLongMapContainsHash!582 lt!1820042 key!4968 hashF!1389) lt!1820345)))

(declare-fun bs!1066258 () Bool)

(assert (= bs!1066258 d!1478228))

(assert (=> bs!1066258 m!5538593))

(assert (=> bs!1066258 m!5538593))

(assert (=> bs!1066258 m!5538921))

(declare-fun m!5538963 () Bool)

(assert (=> bs!1066258 m!5538963))

(declare-fun m!5538965 () Bool)

(assert (=> bs!1066258 m!5538965))

(assert (=> b!4657636 d!1478228))

(declare-fun bs!1066259 () Bool)

(declare-fun d!1478230 () Bool)

(assert (= bs!1066259 (and d!1478230 b!4657775)))

(declare-fun lambda!199776 () Int)

(assert (=> bs!1066259 (not (= lambda!199776 lambda!199750))))

(declare-fun bs!1066260 () Bool)

(assert (= bs!1066260 (and d!1478230 b!4657774)))

(assert (=> bs!1066260 (not (= lambda!199776 lambda!199754))))

(declare-fun bs!1066261 () Bool)

(assert (= bs!1066261 (and d!1478230 d!1478142)))

(assert (=> bs!1066261 (not (= lambda!199776 lambda!199756))))

(declare-fun bs!1066262 () Bool)

(assert (= bs!1066262 (and d!1478230 d!1478190)))

(assert (=> bs!1066262 (= lambda!199776 lambda!199763)))

(assert (=> bs!1066260 (not (= lambda!199776 lambda!199753))))

(assert (=> d!1478230 true))

(assert (=> d!1478230 true))

(assert (=> d!1478230 (= (allKeysSameHash!1502 newBucket!224 hash!414 hashF!1389) (forall!11039 newBucket!224 lambda!199776))))

(declare-fun bs!1066263 () Bool)

(assert (= bs!1066263 d!1478230))

(declare-fun m!5538967 () Bool)

(assert (=> bs!1066263 m!5538967))

(assert (=> b!4657645 d!1478230))

(declare-fun d!1478232 () Bool)

(declare-fun res!1958859 () Bool)

(declare-fun e!2906309 () Bool)

(assert (=> d!1478232 (=> res!1958859 e!2906309)))

(assert (=> d!1478232 (= res!1958859 (not ((_ is Cons!51916) oldBucket!40)))))

(assert (=> d!1478232 (= (noDuplicateKeys!1648 oldBucket!40) e!2906309)))

(declare-fun b!4657947 () Bool)

(declare-fun e!2906310 () Bool)

(assert (=> b!4657947 (= e!2906309 e!2906310)))

(declare-fun res!1958860 () Bool)

(assert (=> b!4657947 (=> (not res!1958860) (not e!2906310))))

(assert (=> b!4657947 (= res!1958860 (not (containsKey!2734 (t!359156 oldBucket!40) (_1!29813 (h!58064 oldBucket!40)))))))

(declare-fun b!4657948 () Bool)

(assert (=> b!4657948 (= e!2906310 (noDuplicateKeys!1648 (t!359156 oldBucket!40)))))

(assert (= (and d!1478232 (not res!1958859)) b!4657947))

(assert (= (and b!4657947 res!1958860) b!4657948))

(declare-fun m!5538969 () Bool)

(assert (=> b!4657947 m!5538969))

(assert (=> b!4657948 m!5538639))

(assert (=> start!468880 d!1478232))

(declare-fun b!4657953 () Bool)

(declare-fun e!2906313 () Bool)

(declare-fun tp!1343394 () Bool)

(assert (=> b!4657953 (= e!2906313 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343394))))

(assert (=> b!4657644 (= tp!1343387 e!2906313)))

(assert (= (and b!4657644 ((_ is Cons!51916) (t!359156 newBucket!224))) b!4657953))

(declare-fun e!2906314 () Bool)

(declare-fun tp!1343395 () Bool)

(declare-fun b!4657954 () Bool)

(assert (=> b!4657954 (= e!2906314 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343395))))

(assert (=> b!4657635 (= tp!1343386 e!2906314)))

(assert (= (and b!4657635 ((_ is Cons!51916) (t!359156 oldBucket!40))) b!4657954))

(declare-fun b_lambda!174493 () Bool)

(assert (= b_lambda!174491 (or b!4657636 b_lambda!174493)))

(declare-fun bs!1066264 () Bool)

(declare-fun d!1478234 () Bool)

(assert (= bs!1066264 (and d!1478234 b!4657636)))

(assert (=> bs!1066264 (= (dynLambda!21600 lambda!199676 lt!1820043) (noDuplicateKeys!1648 (_2!29814 lt!1820043)))))

(declare-fun m!5538971 () Bool)

(assert (=> bs!1066264 m!5538971))

(assert (=> d!1478210 d!1478234))

(check-sat (not b!4657906) (not b!4657772) (not b!4657946) (not b!4657890) (not d!1478192) (not b!4657892) (not b!4657802) (not b!4657865) (not b!4657904) (not bm!325471) (not b!4657879) (not d!1478218) (not bm!325478) (not d!1478200) (not d!1478142) (not b!4657931) (not d!1478138) (not b!4657929) (not b!4657948) (not b!4657774) (not b_lambda!174493) (not b!4657776) (not d!1478214) tp_is_empty!29885 (not b!4657868) (not b!4657863) (not b!4657878) (not bm!325470) (not d!1478208) (not b!4657895) (not bs!1066264) (not d!1478190) (not b!4657869) (not b!4657926) (not d!1478132) (not b!4657924) (not bm!325472) (not b!4657867) (not d!1478228) (not b!4657671) (not d!1478210) (not b!4657905) (not d!1478220) (not d!1478224) (not d!1478230) (not b!4657937) (not b!4657870) tp_is_empty!29887 (not b!4657675) (not b!4657953) (not d!1478206) (not d!1478178) (not d!1478140) (not b!4657882) (not b!4657954) (not b!4657907) (not d!1478128) (not b!4657872) (not b!4657925) (not b!4657866) (not d!1478204) (not b!4657947) (not d!1478222) (not d!1478212) (not b!4657944))
(check-sat)
(get-model)

(declare-fun d!1478262 () Bool)

(declare-fun res!1958890 () Bool)

(declare-fun e!2906340 () Bool)

(assert (=> d!1478262 (=> res!1958890 e!2906340)))

(assert (=> d!1478262 (= res!1958890 (and ((_ is Cons!51916) lt!1820051) (= (_1!29813 (h!58064 lt!1820051)) key!4968)))))

(assert (=> d!1478262 (= (containsKey!2734 lt!1820051 key!4968) e!2906340)))

(declare-fun b!4657991 () Bool)

(declare-fun e!2906341 () Bool)

(assert (=> b!4657991 (= e!2906340 e!2906341)))

(declare-fun res!1958891 () Bool)

(assert (=> b!4657991 (=> (not res!1958891) (not e!2906341))))

(assert (=> b!4657991 (= res!1958891 ((_ is Cons!51916) lt!1820051))))

(declare-fun b!4657992 () Bool)

(assert (=> b!4657992 (= e!2906341 (containsKey!2734 (t!359156 lt!1820051) key!4968))))

(assert (= (and d!1478262 (not res!1958890)) b!4657991))

(assert (= (and b!4657991 res!1958891) b!4657992))

(declare-fun m!5539019 () Bool)

(assert (=> b!4657992 m!5539019))

(assert (=> d!1478132 d!1478262))

(declare-fun d!1478264 () Bool)

(declare-fun res!1958892 () Bool)

(declare-fun e!2906342 () Bool)

(assert (=> d!1478264 (=> res!1958892 e!2906342)))

(assert (=> d!1478264 (= res!1958892 (not ((_ is Cons!51916) (tail!8251 oldBucket!40))))))

(assert (=> d!1478264 (= (noDuplicateKeys!1648 (tail!8251 oldBucket!40)) e!2906342)))

(declare-fun b!4657993 () Bool)

(declare-fun e!2906343 () Bool)

(assert (=> b!4657993 (= e!2906342 e!2906343)))

(declare-fun res!1958893 () Bool)

(assert (=> b!4657993 (=> (not res!1958893) (not e!2906343))))

(assert (=> b!4657993 (= res!1958893 (not (containsKey!2734 (t!359156 (tail!8251 oldBucket!40)) (_1!29813 (h!58064 (tail!8251 oldBucket!40))))))))

(declare-fun b!4657994 () Bool)

(assert (=> b!4657994 (= e!2906343 (noDuplicateKeys!1648 (t!359156 (tail!8251 oldBucket!40))))))

(assert (= (and d!1478264 (not res!1958892)) b!4657993))

(assert (= (and b!4657993 res!1958893) b!4657994))

(declare-fun m!5539021 () Bool)

(assert (=> b!4657993 m!5539021))

(declare-fun m!5539023 () Bool)

(assert (=> b!4657994 m!5539023))

(assert (=> d!1478132 d!1478264))

(declare-fun b!4657997 () Bool)

(declare-fun e!2906344 () List!52040)

(assert (=> b!4657997 (= e!2906344 (Cons!51916 (h!58064 (t!359156 (t!359156 oldBucket!40))) (removePairForKey!1271 (t!359156 (t!359156 (t!359156 oldBucket!40))) key!4968)))))

(declare-fun b!4657998 () Bool)

(assert (=> b!4657998 (= e!2906344 Nil!51916)))

(declare-fun b!4657996 () Bool)

(declare-fun e!2906345 () List!52040)

(assert (=> b!4657996 (= e!2906345 e!2906344)))

(declare-fun c!797289 () Bool)

(assert (=> b!4657996 (= c!797289 ((_ is Cons!51916) (t!359156 (t!359156 oldBucket!40))))))

(declare-fun d!1478266 () Bool)

(declare-fun lt!1820354 () List!52040)

(assert (=> d!1478266 (not (containsKey!2734 lt!1820354 key!4968))))

(assert (=> d!1478266 (= lt!1820354 e!2906345)))

(declare-fun c!797290 () Bool)

(assert (=> d!1478266 (= c!797290 (and ((_ is Cons!51916) (t!359156 (t!359156 oldBucket!40))) (= (_1!29813 (h!58064 (t!359156 (t!359156 oldBucket!40)))) key!4968)))))

(assert (=> d!1478266 (noDuplicateKeys!1648 (t!359156 (t!359156 oldBucket!40)))))

(assert (=> d!1478266 (= (removePairForKey!1271 (t!359156 (t!359156 oldBucket!40)) key!4968) lt!1820354)))

(declare-fun b!4657995 () Bool)

(assert (=> b!4657995 (= e!2906345 (t!359156 (t!359156 (t!359156 oldBucket!40))))))

(assert (= (and d!1478266 c!797290) b!4657995))

(assert (= (and d!1478266 (not c!797290)) b!4657996))

(assert (= (and b!4657996 c!797289) b!4657997))

(assert (= (and b!4657996 (not c!797289)) b!4657998))

(declare-fun m!5539025 () Bool)

(assert (=> b!4657997 m!5539025))

(declare-fun m!5539027 () Bool)

(assert (=> d!1478266 m!5539027))

(declare-fun m!5539029 () Bool)

(assert (=> d!1478266 m!5539029))

(assert (=> b!4657675 d!1478266))

(declare-fun d!1478268 () Bool)

(declare-fun res!1958898 () Bool)

(declare-fun e!2906350 () Bool)

(assert (=> d!1478268 (=> res!1958898 e!2906350)))

(assert (=> d!1478268 (= res!1958898 (and ((_ is Cons!51916) (toList!5226 lt!1820033)) (= (_1!29813 (h!58064 (toList!5226 lt!1820033))) key!4968)))))

(assert (=> d!1478268 (= (containsKey!2737 (toList!5226 lt!1820033) key!4968) e!2906350)))

(declare-fun b!4658003 () Bool)

(declare-fun e!2906351 () Bool)

(assert (=> b!4658003 (= e!2906350 e!2906351)))

(declare-fun res!1958899 () Bool)

(assert (=> b!4658003 (=> (not res!1958899) (not e!2906351))))

(assert (=> b!4658003 (= res!1958899 ((_ is Cons!51916) (toList!5226 lt!1820033)))))

(declare-fun b!4658004 () Bool)

(assert (=> b!4658004 (= e!2906351 (containsKey!2737 (t!359156 (toList!5226 lt!1820033)) key!4968))))

(assert (= (and d!1478268 (not res!1958898)) b!4658003))

(assert (= (and b!4658003 res!1958899) b!4658004))

(declare-fun m!5539031 () Bool)

(assert (=> b!4658004 m!5539031))

(assert (=> b!4657867 d!1478268))

(declare-fun d!1478270 () Bool)

(assert (=> d!1478270 (containsKey!2737 (toList!5226 lt!1820033) key!4968)))

(declare-fun lt!1820360 () Unit!118852)

(declare-fun choose!32049 (List!52040 K!13270) Unit!118852)

(assert (=> d!1478270 (= lt!1820360 (choose!32049 (toList!5226 lt!1820033) key!4968))))

(assert (=> d!1478270 (invariantList!1302 (toList!5226 lt!1820033))))

(assert (=> d!1478270 (= (lemmaInGetKeysListThenContainsKey!752 (toList!5226 lt!1820033) key!4968) lt!1820360)))

(declare-fun bs!1066273 () Bool)

(assert (= bs!1066273 d!1478270))

(assert (=> bs!1066273 m!5538869))

(declare-fun m!5539037 () Bool)

(assert (=> bs!1066273 m!5539037))

(declare-fun m!5539039 () Bool)

(assert (=> bs!1066273 m!5539039))

(assert (=> b!4657867 d!1478270))

(declare-fun d!1478276 () Bool)

(declare-fun res!1958900 () Bool)

(declare-fun e!2906352 () Bool)

(assert (=> d!1478276 (=> res!1958900 e!2906352)))

(assert (=> d!1478276 (= res!1958900 (and ((_ is Cons!51916) (t!359156 newBucket!224)) (= (_1!29813 (h!58064 (t!359156 newBucket!224))) (_1!29813 (h!58064 newBucket!224)))))))

(assert (=> d!1478276 (= (containsKey!2734 (t!359156 newBucket!224) (_1!29813 (h!58064 newBucket!224))) e!2906352)))

(declare-fun b!4658005 () Bool)

(declare-fun e!2906353 () Bool)

(assert (=> b!4658005 (= e!2906352 e!2906353)))

(declare-fun res!1958901 () Bool)

(assert (=> b!4658005 (=> (not res!1958901) (not e!2906353))))

(assert (=> b!4658005 (= res!1958901 ((_ is Cons!51916) (t!359156 newBucket!224)))))

(declare-fun b!4658006 () Bool)

(assert (=> b!4658006 (= e!2906353 (containsKey!2734 (t!359156 (t!359156 newBucket!224)) (_1!29813 (h!58064 newBucket!224))))))

(assert (= (and d!1478276 (not res!1958900)) b!4658005))

(assert (= (and b!4658005 res!1958901) b!4658006))

(declare-fun m!5539041 () Bool)

(assert (=> b!4658006 m!5539041))

(assert (=> b!4657878 d!1478276))

(assert (=> b!4657946 d!1478216))

(declare-fun b!4658070 () Bool)

(assert (=> b!4658070 true))

(declare-fun bs!1066295 () Bool)

(declare-fun b!4658073 () Bool)

(assert (= bs!1066295 (and b!4658073 b!4658070)))

(declare-fun lambda!199803 () Int)

(declare-fun lambda!199802 () Int)

(assert (=> bs!1066295 (= (= (Cons!51916 (h!58064 (toList!5226 lt!1820033)) (t!359156 (toList!5226 lt!1820033))) (t!359156 (toList!5226 lt!1820033))) (= lambda!199803 lambda!199802))))

(assert (=> b!4658073 true))

(declare-fun bs!1066296 () Bool)

(declare-fun b!4658071 () Bool)

(assert (= bs!1066296 (and b!4658071 b!4658070)))

(declare-fun lambda!199804 () Int)

(assert (=> bs!1066296 (= (= (toList!5226 lt!1820033) (t!359156 (toList!5226 lt!1820033))) (= lambda!199804 lambda!199802))))

(declare-fun bs!1066297 () Bool)

(assert (= bs!1066297 (and b!4658071 b!4658073)))

(assert (=> bs!1066297 (= (= (toList!5226 lt!1820033) (Cons!51916 (h!58064 (toList!5226 lt!1820033)) (t!359156 (toList!5226 lt!1820033)))) (= lambda!199804 lambda!199803))))

(assert (=> b!4658071 true))

(declare-fun b!4658069 () Bool)

(declare-fun e!2906392 () Unit!118852)

(declare-fun Unit!118882 () Unit!118852)

(assert (=> b!4658069 (= e!2906392 Unit!118882)))

(assert (=> b!4658070 false))

(declare-fun lt!1820420 () Unit!118852)

(declare-fun forallContained!3241 (List!52043 Int K!13270) Unit!118852)

(assert (=> b!4658070 (= lt!1820420 (forallContained!3241 (getKeysList!753 (t!359156 (toList!5226 lt!1820033))) lambda!199802 (_1!29813 (h!58064 (toList!5226 lt!1820033)))))))

(declare-fun Unit!118883 () Unit!118852)

(assert (=> b!4658070 (= e!2906392 Unit!118883)))

(declare-fun d!1478278 () Bool)

(declare-fun e!2906394 () Bool)

(assert (=> d!1478278 e!2906394))

(declare-fun res!1958927 () Bool)

(assert (=> d!1478278 (=> (not res!1958927) (not e!2906394))))

(declare-fun lt!1820417 () List!52043)

(declare-fun noDuplicate!842 (List!52043) Bool)

(assert (=> d!1478278 (= res!1958927 (noDuplicate!842 lt!1820417))))

(declare-fun e!2906391 () List!52043)

(assert (=> d!1478278 (= lt!1820417 e!2906391)))

(declare-fun c!797311 () Bool)

(assert (=> d!1478278 (= c!797311 ((_ is Cons!51916) (toList!5226 lt!1820033)))))

(assert (=> d!1478278 (invariantList!1302 (toList!5226 lt!1820033))))

(assert (=> d!1478278 (= (getKeysList!753 (toList!5226 lt!1820033)) lt!1820417)))

(declare-fun res!1958925 () Bool)

(assert (=> b!4658071 (=> (not res!1958925) (not e!2906394))))

(declare-fun forall!11042 (List!52043 Int) Bool)

(assert (=> b!4658071 (= res!1958925 (forall!11042 lt!1820417 lambda!199804))))

(declare-fun b!4658072 () Bool)

(assert (=> b!4658072 (= e!2906391 Nil!51919)))

(assert (=> b!4658073 (= e!2906391 (Cons!51919 (_1!29813 (h!58064 (toList!5226 lt!1820033))) (getKeysList!753 (t!359156 (toList!5226 lt!1820033)))))))

(declare-fun c!797310 () Bool)

(assert (=> b!4658073 (= c!797310 (containsKey!2737 (t!359156 (toList!5226 lt!1820033)) (_1!29813 (h!58064 (toList!5226 lt!1820033)))))))

(declare-fun lt!1820414 () Unit!118852)

(declare-fun e!2906393 () Unit!118852)

(assert (=> b!4658073 (= lt!1820414 e!2906393)))

(declare-fun c!797312 () Bool)

(assert (=> b!4658073 (= c!797312 (contains!15068 (getKeysList!753 (t!359156 (toList!5226 lt!1820033))) (_1!29813 (h!58064 (toList!5226 lt!1820033)))))))

(declare-fun lt!1820419 () Unit!118852)

(assert (=> b!4658073 (= lt!1820419 e!2906392)))

(declare-fun lt!1820415 () List!52043)

(assert (=> b!4658073 (= lt!1820415 (getKeysList!753 (t!359156 (toList!5226 lt!1820033))))))

(declare-fun lt!1820416 () Unit!118852)

(declare-fun lemmaForallContainsAddHeadPreserves!261 (List!52040 List!52043 tuple2!53038) Unit!118852)

(assert (=> b!4658073 (= lt!1820416 (lemmaForallContainsAddHeadPreserves!261 (t!359156 (toList!5226 lt!1820033)) lt!1820415 (h!58064 (toList!5226 lt!1820033))))))

(assert (=> b!4658073 (forall!11042 lt!1820415 lambda!199803)))

(declare-fun lt!1820418 () Unit!118852)

(assert (=> b!4658073 (= lt!1820418 lt!1820416)))

(declare-fun b!4658074 () Bool)

(declare-fun res!1958926 () Bool)

(assert (=> b!4658074 (=> (not res!1958926) (not e!2906394))))

(declare-fun length!540 (List!52043) Int)

(declare-fun length!541 (List!52040) Int)

(assert (=> b!4658074 (= res!1958926 (= (length!540 lt!1820417) (length!541 (toList!5226 lt!1820033))))))

(declare-fun b!4658075 () Bool)

(declare-fun Unit!118884 () Unit!118852)

(assert (=> b!4658075 (= e!2906393 Unit!118884)))

(declare-fun b!4658076 () Bool)

(declare-fun lambda!199806 () Int)

(declare-fun content!9007 (List!52043) (InoxSet K!13270))

(declare-fun map!11479 (List!52040 Int) List!52043)

(assert (=> b!4658076 (= e!2906394 (= (content!9007 lt!1820417) (content!9007 (map!11479 (toList!5226 lt!1820033) lambda!199806))))))

(declare-fun b!4658077 () Bool)

(assert (=> b!4658077 false))

(declare-fun Unit!118885 () Unit!118852)

(assert (=> b!4658077 (= e!2906393 Unit!118885)))

(assert (= (and d!1478278 c!797311) b!4658073))

(assert (= (and d!1478278 (not c!797311)) b!4658072))

(assert (= (and b!4658073 c!797310) b!4658077))

(assert (= (and b!4658073 (not c!797310)) b!4658075))

(assert (= (and b!4658073 c!797312) b!4658070))

(assert (= (and b!4658073 (not c!797312)) b!4658069))

(assert (= (and d!1478278 res!1958927) b!4658074))

(assert (= (and b!4658074 res!1958926) b!4658071))

(assert (= (and b!4658071 res!1958925) b!4658076))

(declare-fun m!5539125 () Bool)

(assert (=> d!1478278 m!5539125))

(assert (=> d!1478278 m!5539039))

(declare-fun m!5539127 () Bool)

(assert (=> b!4658073 m!5539127))

(declare-fun m!5539129 () Bool)

(assert (=> b!4658073 m!5539129))

(declare-fun m!5539131 () Bool)

(assert (=> b!4658073 m!5539131))

(declare-fun m!5539133 () Bool)

(assert (=> b!4658073 m!5539133))

(declare-fun m!5539135 () Bool)

(assert (=> b!4658073 m!5539135))

(assert (=> b!4658073 m!5539133))

(declare-fun m!5539137 () Bool)

(assert (=> b!4658071 m!5539137))

(declare-fun m!5539139 () Bool)

(assert (=> b!4658074 m!5539139))

(declare-fun m!5539141 () Bool)

(assert (=> b!4658074 m!5539141))

(declare-fun m!5539143 () Bool)

(assert (=> b!4658076 m!5539143))

(declare-fun m!5539145 () Bool)

(assert (=> b!4658076 m!5539145))

(assert (=> b!4658076 m!5539145))

(declare-fun m!5539147 () Bool)

(assert (=> b!4658076 m!5539147))

(assert (=> b!4658070 m!5539133))

(assert (=> b!4658070 m!5539133))

(declare-fun m!5539149 () Bool)

(assert (=> b!4658070 m!5539149))

(assert (=> b!4657869 d!1478278))

(declare-fun d!1478292 () Bool)

(declare-fun choose!32051 (Hashable!6045 K!13270) (_ BitVec 64))

(assert (=> d!1478292 (= (hash!3791 hashF!1389 key!4968) (choose!32051 hashF!1389 key!4968))))

(declare-fun bs!1066308 () Bool)

(assert (= bs!1066308 d!1478292))

(declare-fun m!5539159 () Bool)

(assert (=> bs!1066308 m!5539159))

(assert (=> d!1478138 d!1478292))

(declare-fun d!1478296 () Bool)

(declare-fun res!1958928 () Bool)

(declare-fun e!2906395 () Bool)

(assert (=> d!1478296 (=> res!1958928 e!2906395)))

(assert (=> d!1478296 (= res!1958928 (not ((_ is Cons!51916) (t!359156 oldBucket!40))))))

(assert (=> d!1478296 (= (noDuplicateKeys!1648 (t!359156 oldBucket!40)) e!2906395)))

(declare-fun b!4658080 () Bool)

(declare-fun e!2906396 () Bool)

(assert (=> b!4658080 (= e!2906395 e!2906396)))

(declare-fun res!1958929 () Bool)

(assert (=> b!4658080 (=> (not res!1958929) (not e!2906396))))

(assert (=> b!4658080 (= res!1958929 (not (containsKey!2734 (t!359156 (t!359156 oldBucket!40)) (_1!29813 (h!58064 (t!359156 oldBucket!40))))))))

(declare-fun b!4658081 () Bool)

(assert (=> b!4658081 (= e!2906396 (noDuplicateKeys!1648 (t!359156 (t!359156 oldBucket!40))))))

(assert (= (and d!1478296 (not res!1958928)) b!4658080))

(assert (= (and b!4658080 res!1958929) b!4658081))

(declare-fun m!5539161 () Bool)

(assert (=> b!4658080 m!5539161))

(assert (=> b!4658081 m!5539029))

(assert (=> b!4657948 d!1478296))

(declare-fun d!1478298 () Bool)

(declare-fun lt!1820424 () Bool)

(assert (=> d!1478298 (= lt!1820424 (select (content!9007 e!2906254) key!4968))))

(declare-fun e!2906401 () Bool)

(assert (=> d!1478298 (= lt!1820424 e!2906401)))

(declare-fun res!1958935 () Bool)

(assert (=> d!1478298 (=> (not res!1958935) (not e!2906401))))

(assert (=> d!1478298 (= res!1958935 ((_ is Cons!51919) e!2906254))))

(assert (=> d!1478298 (= (contains!15068 e!2906254 key!4968) lt!1820424)))

(declare-fun b!4658086 () Bool)

(declare-fun e!2906402 () Bool)

(assert (=> b!4658086 (= e!2906401 e!2906402)))

(declare-fun res!1958934 () Bool)

(assert (=> b!4658086 (=> res!1958934 e!2906402)))

(assert (=> b!4658086 (= res!1958934 (= (h!58069 e!2906254) key!4968))))

(declare-fun b!4658087 () Bool)

(assert (=> b!4658087 (= e!2906402 (contains!15068 (t!359159 e!2906254) key!4968))))

(assert (= (and d!1478298 res!1958935) b!4658086))

(assert (= (and b!4658086 (not res!1958934)) b!4658087))

(declare-fun m!5539163 () Bool)

(assert (=> d!1478298 m!5539163))

(declare-fun m!5539165 () Bool)

(assert (=> d!1478298 m!5539165))

(declare-fun m!5539167 () Bool)

(assert (=> b!4658087 m!5539167))

(assert (=> bm!325478 d!1478298))

(declare-fun d!1478300 () Bool)

(declare-fun e!2906403 () Bool)

(assert (=> d!1478300 e!2906403))

(declare-fun res!1958936 () Bool)

(assert (=> d!1478300 (=> res!1958936 e!2906403)))

(declare-fun lt!1820426 () Bool)

(assert (=> d!1478300 (= res!1958936 (not lt!1820426))))

(declare-fun lt!1820428 () Bool)

(assert (=> d!1478300 (= lt!1820426 lt!1820428)))

(declare-fun lt!1820427 () Unit!118852)

(declare-fun e!2906404 () Unit!118852)

(assert (=> d!1478300 (= lt!1820427 e!2906404)))

(declare-fun c!797313 () Bool)

(assert (=> d!1478300 (= c!797313 lt!1820428)))

(assert (=> d!1478300 (= lt!1820428 (containsKey!2738 (toList!5225 lt!1820042) (hash!3789 hashF!1389 key!4968)))))

(assert (=> d!1478300 (= (contains!15064 lt!1820042 (hash!3789 hashF!1389 key!4968)) lt!1820426)))

(declare-fun b!4658088 () Bool)

(declare-fun lt!1820425 () Unit!118852)

(assert (=> b!4658088 (= e!2906404 lt!1820425)))

(assert (=> b!4658088 (= lt!1820425 (lemmaContainsKeyImpliesGetValueByKeyDefined!1520 (toList!5225 lt!1820042) (hash!3789 hashF!1389 key!4968)))))

(assert (=> b!4658088 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) (hash!3789 hashF!1389 key!4968)))))

(declare-fun b!4658089 () Bool)

(declare-fun Unit!118889 () Unit!118852)

(assert (=> b!4658089 (= e!2906404 Unit!118889)))

(declare-fun b!4658090 () Bool)

(assert (=> b!4658090 (= e!2906403 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) (hash!3789 hashF!1389 key!4968))))))

(assert (= (and d!1478300 c!797313) b!4658088))

(assert (= (and d!1478300 (not c!797313)) b!4658089))

(assert (= (and d!1478300 (not res!1958936)) b!4658090))

(assert (=> d!1478300 m!5538593))

(declare-fun m!5539169 () Bool)

(assert (=> d!1478300 m!5539169))

(assert (=> b!4658088 m!5538593))

(declare-fun m!5539171 () Bool)

(assert (=> b!4658088 m!5539171))

(assert (=> b!4658088 m!5538593))

(declare-fun m!5539173 () Bool)

(assert (=> b!4658088 m!5539173))

(assert (=> b!4658088 m!5539173))

(declare-fun m!5539175 () Bool)

(assert (=> b!4658088 m!5539175))

(assert (=> b!4658090 m!5538593))

(assert (=> b!4658090 m!5539173))

(assert (=> b!4658090 m!5539173))

(assert (=> b!4658090 m!5539175))

(assert (=> d!1478228 d!1478300))

(assert (=> d!1478228 d!1478138))

(declare-fun d!1478302 () Bool)

(assert (=> d!1478302 (contains!15064 lt!1820042 (hash!3789 hashF!1389 key!4968))))

(assert (=> d!1478302 true))

(declare-fun _$27!1491 () Unit!118852)

(assert (=> d!1478302 (= (choose!32048 lt!1820042 key!4968 hashF!1389) _$27!1491)))

(declare-fun bs!1066309 () Bool)

(assert (= bs!1066309 d!1478302))

(assert (=> bs!1066309 m!5538593))

(assert (=> bs!1066309 m!5538593))

(assert (=> bs!1066309 m!5538921))

(assert (=> d!1478228 d!1478302))

(declare-fun d!1478304 () Bool)

(declare-fun res!1958945 () Bool)

(declare-fun e!2906411 () Bool)

(assert (=> d!1478304 (=> res!1958945 e!2906411)))

(assert (=> d!1478304 (= res!1958945 ((_ is Nil!51917) (toList!5225 lt!1820042)))))

(assert (=> d!1478304 (= (forall!11040 (toList!5225 lt!1820042) lambda!199775) e!2906411)))

(declare-fun b!4658099 () Bool)

(declare-fun e!2906412 () Bool)

(assert (=> b!4658099 (= e!2906411 e!2906412)))

(declare-fun res!1958946 () Bool)

(assert (=> b!4658099 (=> (not res!1958946) (not e!2906412))))

(assert (=> b!4658099 (= res!1958946 (dynLambda!21600 lambda!199775 (h!58065 (toList!5225 lt!1820042))))))

(declare-fun b!4658100 () Bool)

(assert (=> b!4658100 (= e!2906412 (forall!11040 (t!359157 (toList!5225 lt!1820042)) lambda!199775))))

(assert (= (and d!1478304 (not res!1958945)) b!4658099))

(assert (= (and b!4658099 res!1958946) b!4658100))

(declare-fun b_lambda!174503 () Bool)

(assert (=> (not b_lambda!174503) (not b!4658099)))

(declare-fun m!5539177 () Bool)

(assert (=> b!4658099 m!5539177))

(declare-fun m!5539179 () Bool)

(assert (=> b!4658100 m!5539179))

(assert (=> d!1478228 d!1478304))

(declare-fun d!1478306 () Bool)

(assert (=> d!1478306 (= (get!17279 lt!1820333) (v!46113 lt!1820333))))

(assert (=> b!4657925 d!1478306))

(declare-fun bs!1066310 () Bool)

(declare-fun d!1478308 () Bool)

(assert (= bs!1066310 (and d!1478308 b!4657775)))

(declare-fun lambda!199809 () Int)

(assert (=> bs!1066310 (= lambda!199809 lambda!199750)))

(declare-fun bs!1066311 () Bool)

(assert (= bs!1066311 (and d!1478308 b!4657774)))

(assert (=> bs!1066311 (= (= lt!1820037 lt!1820205) (= lambda!199809 lambda!199754))))

(declare-fun bs!1066312 () Bool)

(assert (= bs!1066312 (and d!1478308 d!1478142)))

(assert (=> bs!1066312 (= (= lt!1820037 lt!1820216) (= lambda!199809 lambda!199756))))

(declare-fun bs!1066313 () Bool)

(assert (= bs!1066313 (and d!1478308 d!1478230)))

(assert (=> bs!1066313 (not (= lambda!199809 lambda!199776))))

(declare-fun bs!1066314 () Bool)

(assert (= bs!1066314 (and d!1478308 d!1478190)))

(assert (=> bs!1066314 (not (= lambda!199809 lambda!199763))))

(assert (=> bs!1066311 (= lambda!199809 lambda!199753)))

(assert (=> d!1478308 true))

(assert (=> d!1478308 (forall!11039 (toList!5226 lt!1820037) lambda!199809)))

(declare-fun lt!1820446 () Unit!118852)

(declare-fun choose!32052 (ListMap!4565) Unit!118852)

(assert (=> d!1478308 (= lt!1820446 (choose!32052 lt!1820037))))

(assert (=> d!1478308 (= (lemmaContainsAllItsOwnKeys!602 lt!1820037) lt!1820446)))

(declare-fun bs!1066315 () Bool)

(assert (= bs!1066315 d!1478308))

(declare-fun m!5539203 () Bool)

(assert (=> bs!1066315 m!5539203))

(declare-fun m!5539205 () Bool)

(assert (=> bs!1066315 m!5539205))

(assert (=> bm!325470 d!1478308))

(declare-fun d!1478318 () Bool)

(declare-fun noDuplicatedKeys!355 (List!52040) Bool)

(assert (=> d!1478318 (= (invariantList!1302 (toList!5226 lt!1820216)) (noDuplicatedKeys!355 (toList!5226 lt!1820216)))))

(declare-fun bs!1066316 () Bool)

(assert (= bs!1066316 d!1478318))

(declare-fun m!5539207 () Bool)

(assert (=> bs!1066316 m!5539207))

(assert (=> b!4657772 d!1478318))

(declare-fun d!1478320 () Bool)

(assert (=> d!1478320 (= (invariantList!1302 (toList!5226 lt!1820290)) (noDuplicatedKeys!355 (toList!5226 lt!1820290)))))

(declare-fun bs!1066317 () Bool)

(assert (= bs!1066317 d!1478320))

(declare-fun m!5539209 () Bool)

(assert (=> bs!1066317 m!5539209))

(assert (=> d!1478200 d!1478320))

(declare-fun d!1478322 () Bool)

(declare-fun res!1958960 () Bool)

(declare-fun e!2906425 () Bool)

(assert (=> d!1478322 (=> res!1958960 e!2906425)))

(assert (=> d!1478322 (= res!1958960 ((_ is Nil!51917) lt!1820045))))

(assert (=> d!1478322 (= (forall!11040 lt!1820045 lambda!199765) e!2906425)))

(declare-fun b!4658114 () Bool)

(declare-fun e!2906426 () Bool)

(assert (=> b!4658114 (= e!2906425 e!2906426)))

(declare-fun res!1958961 () Bool)

(assert (=> b!4658114 (=> (not res!1958961) (not e!2906426))))

(assert (=> b!4658114 (= res!1958961 (dynLambda!21600 lambda!199765 (h!58065 lt!1820045)))))

(declare-fun b!4658115 () Bool)

(assert (=> b!4658115 (= e!2906426 (forall!11040 (t!359157 lt!1820045) lambda!199765))))

(assert (= (and d!1478322 (not res!1958960)) b!4658114))

(assert (= (and b!4658114 res!1958961) b!4658115))

(declare-fun b_lambda!174511 () Bool)

(assert (=> (not b_lambda!174511) (not b!4658114)))

(declare-fun m!5539211 () Bool)

(assert (=> b!4658114 m!5539211))

(declare-fun m!5539213 () Bool)

(assert (=> b!4658115 m!5539213))

(assert (=> d!1478200 d!1478322))

(declare-fun d!1478324 () Bool)

(declare-fun res!1958962 () Bool)

(declare-fun e!2906427 () Bool)

(assert (=> d!1478324 (=> res!1958962 e!2906427)))

(assert (=> d!1478324 (= res!1958962 (not ((_ is Cons!51916) (_2!29814 lt!1820043))))))

(assert (=> d!1478324 (= (noDuplicateKeys!1648 (_2!29814 lt!1820043)) e!2906427)))

(declare-fun b!4658116 () Bool)

(declare-fun e!2906428 () Bool)

(assert (=> b!4658116 (= e!2906427 e!2906428)))

(declare-fun res!1958963 () Bool)

(assert (=> b!4658116 (=> (not res!1958963) (not e!2906428))))

(assert (=> b!4658116 (= res!1958963 (not (containsKey!2734 (t!359156 (_2!29814 lt!1820043)) (_1!29813 (h!58064 (_2!29814 lt!1820043))))))))

(declare-fun b!4658117 () Bool)

(assert (=> b!4658117 (= e!2906428 (noDuplicateKeys!1648 (t!359156 (_2!29814 lt!1820043))))))

(assert (= (and d!1478324 (not res!1958962)) b!4658116))

(assert (= (and b!4658116 res!1958963) b!4658117))

(declare-fun m!5539215 () Bool)

(assert (=> b!4658116 m!5539215))

(declare-fun m!5539217 () Bool)

(assert (=> b!4658117 m!5539217))

(assert (=> bs!1066264 d!1478324))

(declare-fun d!1478326 () Bool)

(declare-fun lt!1820449 () Bool)

(declare-fun content!9008 (List!52040) (InoxSet tuple2!53038))

(assert (=> d!1478326 (= lt!1820449 (select (content!9008 lt!1820044) (get!17279 lt!1820333)))))

(declare-fun e!2906442 () Bool)

(assert (=> d!1478326 (= lt!1820449 e!2906442)))

(declare-fun res!1958977 () Bool)

(assert (=> d!1478326 (=> (not res!1958977) (not e!2906442))))

(assert (=> d!1478326 (= res!1958977 ((_ is Cons!51916) lt!1820044))))

(assert (=> d!1478326 (= (contains!15069 lt!1820044 (get!17279 lt!1820333)) lt!1820449)))

(declare-fun b!4658130 () Bool)

(declare-fun e!2906441 () Bool)

(assert (=> b!4658130 (= e!2906442 e!2906441)))

(declare-fun res!1958976 () Bool)

(assert (=> b!4658130 (=> res!1958976 e!2906441)))

(assert (=> b!4658130 (= res!1958976 (= (h!58064 lt!1820044) (get!17279 lt!1820333)))))

(declare-fun b!4658131 () Bool)

(assert (=> b!4658131 (= e!2906441 (contains!15069 (t!359156 lt!1820044) (get!17279 lt!1820333)))))

(assert (= (and d!1478326 res!1958977) b!4658130))

(assert (= (and b!4658130 (not res!1958976)) b!4658131))

(declare-fun m!5539223 () Bool)

(assert (=> d!1478326 m!5539223))

(assert (=> d!1478326 m!5538937))

(declare-fun m!5539225 () Bool)

(assert (=> d!1478326 m!5539225))

(assert (=> b!4658131 m!5538937))

(declare-fun m!5539227 () Bool)

(assert (=> b!4658131 m!5539227))

(assert (=> b!4657929 d!1478326))

(assert (=> b!4657929 d!1478306))

(declare-fun d!1478332 () Bool)

(declare-fun res!1958982 () Bool)

(declare-fun e!2906447 () Bool)

(assert (=> d!1478332 (=> res!1958982 e!2906447)))

(assert (=> d!1478332 (= res!1958982 ((_ is Nil!51916) oldBucket!40))))

(assert (=> d!1478332 (= (forall!11039 oldBucket!40 lambda!199754) e!2906447)))

(declare-fun b!4658138 () Bool)

(declare-fun e!2906448 () Bool)

(assert (=> b!4658138 (= e!2906447 e!2906448)))

(declare-fun res!1958983 () Bool)

(assert (=> b!4658138 (=> (not res!1958983) (not e!2906448))))

(declare-fun dynLambda!21602 (Int tuple2!53038) Bool)

(assert (=> b!4658138 (= res!1958983 (dynLambda!21602 lambda!199754 (h!58064 oldBucket!40)))))

(declare-fun b!4658139 () Bool)

(assert (=> b!4658139 (= e!2906448 (forall!11039 (t!359156 oldBucket!40) lambda!199754))))

(assert (= (and d!1478332 (not res!1958982)) b!4658138))

(assert (= (and b!4658138 res!1958983) b!4658139))

(declare-fun b_lambda!174513 () Bool)

(assert (=> (not b_lambda!174513) (not b!4658138)))

(declare-fun m!5539229 () Bool)

(assert (=> b!4658138 m!5539229))

(declare-fun m!5539233 () Bool)

(assert (=> b!4658139 m!5539233))

(assert (=> b!4657774 d!1478332))

(declare-fun b!4658142 () Bool)

(declare-fun e!2906455 () List!52043)

(assert (=> b!4658142 (= e!2906455 (keys!18398 lt!1820198))))

(declare-fun b!4658143 () Bool)

(declare-fun e!2906452 () Unit!118852)

(declare-fun Unit!118891 () Unit!118852)

(assert (=> b!4658143 (= e!2906452 Unit!118891)))

(declare-fun b!4658144 () Bool)

(declare-fun e!2906449 () Bool)

(declare-fun e!2906450 () Bool)

(assert (=> b!4658144 (= e!2906449 e!2906450)))

(declare-fun res!1958988 () Bool)

(assert (=> b!4658144 (=> (not res!1958988) (not e!2906450))))

(assert (=> b!4658144 (= res!1958988 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40)))))))

(declare-fun b!4658145 () Bool)

(declare-fun e!2906454 () Unit!118852)

(declare-fun lt!1820454 () Unit!118852)

(assert (=> b!4658145 (= e!2906454 lt!1820454)))

(declare-fun lt!1820456 () Unit!118852)

(assert (=> b!4658145 (= lt!1820456 (lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(assert (=> b!4658145 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun lt!1820453 () Unit!118852)

(assert (=> b!4658145 (= lt!1820453 lt!1820456)))

(assert (=> b!4658145 (= lt!1820454 (lemmaInListThenGetKeysListContains!748 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun call!325489 () Bool)

(assert (=> b!4658145 call!325489))

(declare-fun b!4658146 () Bool)

(assert (=> b!4658146 false))

(declare-fun lt!1820451 () Unit!118852)

(declare-fun lt!1820452 () Unit!118852)

(assert (=> b!4658146 (= lt!1820451 lt!1820452)))

(assert (=> b!4658146 (containsKey!2737 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40)))))

(assert (=> b!4658146 (= lt!1820452 (lemmaInGetKeysListThenContainsKey!752 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun Unit!118892 () Unit!118852)

(assert (=> b!4658146 (= e!2906452 Unit!118892)))

(declare-fun b!4658148 () Bool)

(assert (=> b!4658148 (= e!2906455 (getKeysList!753 (toList!5226 lt!1820198)))))

(declare-fun b!4658149 () Bool)

(assert (=> b!4658149 (= e!2906450 (contains!15068 (keys!18398 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun b!4658147 () Bool)

(declare-fun e!2906456 () Bool)

(assert (=> b!4658147 (= e!2906456 (not (contains!15068 (keys!18398 lt!1820198) (_1!29813 (h!58064 oldBucket!40)))))))

(declare-fun d!1478334 () Bool)

(assert (=> d!1478334 e!2906449))

(declare-fun res!1958987 () Bool)

(assert (=> d!1478334 (=> res!1958987 e!2906449)))

(assert (=> d!1478334 (= res!1958987 e!2906456)))

(declare-fun res!1958984 () Bool)

(assert (=> d!1478334 (=> (not res!1958984) (not e!2906456))))

(declare-fun lt!1820450 () Bool)

(assert (=> d!1478334 (= res!1958984 (not lt!1820450))))

(declare-fun lt!1820457 () Bool)

(assert (=> d!1478334 (= lt!1820450 lt!1820457)))

(declare-fun lt!1820455 () Unit!118852)

(assert (=> d!1478334 (= lt!1820455 e!2906454)))

(declare-fun c!797314 () Bool)

(assert (=> d!1478334 (= c!797314 lt!1820457)))

(assert (=> d!1478334 (= lt!1820457 (containsKey!2737 (toList!5226 lt!1820198) (_1!29813 (h!58064 oldBucket!40))))))

(assert (=> d!1478334 (= (contains!15065 lt!1820198 (_1!29813 (h!58064 oldBucket!40))) lt!1820450)))

(declare-fun bm!325484 () Bool)

(assert (=> bm!325484 (= call!325489 (contains!15068 e!2906455 (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun c!797315 () Bool)

(assert (=> bm!325484 (= c!797315 c!797314)))

(declare-fun b!4658150 () Bool)

(assert (=> b!4658150 (= e!2906454 e!2906452)))

(declare-fun c!797316 () Bool)

(assert (=> b!4658150 (= c!797316 call!325489)))

(assert (= (and d!1478334 c!797314) b!4658145))

(assert (= (and d!1478334 (not c!797314)) b!4658150))

(assert (= (and b!4658150 c!797316) b!4658146))

(assert (= (and b!4658150 (not c!797316)) b!4658143))

(assert (= (or b!4658145 b!4658150) bm!325484))

(assert (= (and bm!325484 c!797315) b!4658148))

(assert (= (and bm!325484 (not c!797315)) b!4658142))

(assert (= (and d!1478334 res!1958984) b!4658147))

(assert (= (and d!1478334 (not res!1958987)) b!4658144))

(assert (= (and b!4658144 res!1958988) b!4658149))

(declare-fun m!5539239 () Bool)

(assert (=> b!4658147 m!5539239))

(assert (=> b!4658147 m!5539239))

(declare-fun m!5539241 () Bool)

(assert (=> b!4658147 m!5539241))

(declare-fun m!5539243 () Bool)

(assert (=> b!4658145 m!5539243))

(declare-fun m!5539245 () Bool)

(assert (=> b!4658145 m!5539245))

(assert (=> b!4658145 m!5539245))

(declare-fun m!5539247 () Bool)

(assert (=> b!4658145 m!5539247))

(declare-fun m!5539249 () Bool)

(assert (=> b!4658145 m!5539249))

(declare-fun m!5539251 () Bool)

(assert (=> bm!325484 m!5539251))

(assert (=> b!4658149 m!5539239))

(assert (=> b!4658149 m!5539239))

(assert (=> b!4658149 m!5539241))

(declare-fun m!5539253 () Bool)

(assert (=> b!4658146 m!5539253))

(declare-fun m!5539257 () Bool)

(assert (=> b!4658146 m!5539257))

(assert (=> b!4658144 m!5539245))

(assert (=> b!4658144 m!5539245))

(assert (=> b!4658144 m!5539247))

(assert (=> b!4658142 m!5539239))

(assert (=> d!1478334 m!5539253))

(declare-fun m!5539267 () Bool)

(assert (=> b!4658148 m!5539267))

(assert (=> b!4657774 d!1478334))

(declare-fun d!1478340 () Bool)

(declare-fun res!1958992 () Bool)

(declare-fun e!2906463 () Bool)

(assert (=> d!1478340 (=> res!1958992 e!2906463)))

(assert (=> d!1478340 (= res!1958992 ((_ is Nil!51916) (toList!5226 lt!1820037)))))

(assert (=> d!1478340 (= (forall!11039 (toList!5226 lt!1820037) lambda!199753) e!2906463)))

(declare-fun b!4658160 () Bool)

(declare-fun e!2906464 () Bool)

(assert (=> b!4658160 (= e!2906463 e!2906464)))

(declare-fun res!1958993 () Bool)

(assert (=> b!4658160 (=> (not res!1958993) (not e!2906464))))

(assert (=> b!4658160 (= res!1958993 (dynLambda!21602 lambda!199753 (h!58064 (toList!5226 lt!1820037))))))

(declare-fun b!4658161 () Bool)

(assert (=> b!4658161 (= e!2906464 (forall!11039 (t!359156 (toList!5226 lt!1820037)) lambda!199753))))

(assert (= (and d!1478340 (not res!1958992)) b!4658160))

(assert (= (and b!4658160 res!1958993) b!4658161))

(declare-fun b_lambda!174517 () Bool)

(assert (=> (not b_lambda!174517) (not b!4658160)))

(declare-fun m!5539279 () Bool)

(assert (=> b!4658160 m!5539279))

(declare-fun m!5539281 () Bool)

(assert (=> b!4658161 m!5539281))

(assert (=> b!4657774 d!1478340))

(declare-fun d!1478344 () Bool)

(declare-fun e!2906488 () Bool)

(assert (=> d!1478344 e!2906488))

(declare-fun res!1959013 () Bool)

(assert (=> d!1478344 (=> (not res!1959013) (not e!2906488))))

(declare-fun lt!1820479 () ListMap!4565)

(assert (=> d!1478344 (= res!1959013 (contains!15065 lt!1820479 (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun lt!1820478 () List!52040)

(assert (=> d!1478344 (= lt!1820479 (ListMap!4566 lt!1820478))))

(declare-fun lt!1820481 () Unit!118852)

(declare-fun lt!1820480 () Unit!118852)

(assert (=> d!1478344 (= lt!1820481 lt!1820480)))

(assert (=> d!1478344 (= (getValueByKey!1617 lt!1820478 (_1!29813 (h!58064 oldBucket!40))) (Some!11834 (_2!29813 (h!58064 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!927 (List!52040 K!13270 V!13516) Unit!118852)

(assert (=> d!1478344 (= lt!1820480 (lemmaContainsTupThenGetReturnValue!927 lt!1820478 (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!435 (List!52040 K!13270 V!13516) List!52040)

(assert (=> d!1478344 (= lt!1820478 (insertNoDuplicatedKeys!435 (toList!5226 lt!1820037) (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))))))

(assert (=> d!1478344 (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820479)))

(declare-fun b!4658193 () Bool)

(declare-fun res!1959014 () Bool)

(assert (=> b!4658193 (=> (not res!1959014) (not e!2906488))))

(assert (=> b!4658193 (= res!1959014 (= (getValueByKey!1617 (toList!5226 lt!1820479) (_1!29813 (h!58064 oldBucket!40))) (Some!11834 (_2!29813 (h!58064 oldBucket!40)))))))

(declare-fun b!4658194 () Bool)

(assert (=> b!4658194 (= e!2906488 (contains!15069 (toList!5226 lt!1820479) (h!58064 oldBucket!40)))))

(assert (= (and d!1478344 res!1959013) b!4658193))

(assert (= (and b!4658193 res!1959014) b!4658194))

(declare-fun m!5539321 () Bool)

(assert (=> d!1478344 m!5539321))

(declare-fun m!5539323 () Bool)

(assert (=> d!1478344 m!5539323))

(declare-fun m!5539325 () Bool)

(assert (=> d!1478344 m!5539325))

(declare-fun m!5539327 () Bool)

(assert (=> d!1478344 m!5539327))

(declare-fun m!5539329 () Bool)

(assert (=> b!4658193 m!5539329))

(declare-fun m!5539331 () Bool)

(assert (=> b!4658194 m!5539331))

(assert (=> b!4657774 d!1478344))

(declare-fun b!4658195 () Bool)

(declare-fun e!2906493 () List!52043)

(assert (=> b!4658195 (= e!2906493 (keys!18398 lt!1820205))))

(declare-fun b!4658196 () Bool)

(declare-fun e!2906491 () Unit!118852)

(declare-fun Unit!118904 () Unit!118852)

(assert (=> b!4658196 (= e!2906491 Unit!118904)))

(declare-fun b!4658197 () Bool)

(declare-fun e!2906489 () Bool)

(declare-fun e!2906490 () Bool)

(assert (=> b!4658197 (= e!2906489 e!2906490)))

(declare-fun res!1959017 () Bool)

(assert (=> b!4658197 (=> (not res!1959017) (not e!2906490))))

(assert (=> b!4658197 (= res!1959017 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40)))))))

(declare-fun b!4658198 () Bool)

(declare-fun e!2906492 () Unit!118852)

(declare-fun lt!1820486 () Unit!118852)

(assert (=> b!4658198 (= e!2906492 lt!1820486)))

(declare-fun lt!1820488 () Unit!118852)

(assert (=> b!4658198 (= lt!1820488 (lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(assert (=> b!4658198 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun lt!1820485 () Unit!118852)

(assert (=> b!4658198 (= lt!1820485 lt!1820488)))

(assert (=> b!4658198 (= lt!1820486 (lemmaInListThenGetKeysListContains!748 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun call!325491 () Bool)

(assert (=> b!4658198 call!325491))

(declare-fun b!4658199 () Bool)

(assert (=> b!4658199 false))

(declare-fun lt!1820483 () Unit!118852)

(declare-fun lt!1820484 () Unit!118852)

(assert (=> b!4658199 (= lt!1820483 lt!1820484)))

(assert (=> b!4658199 (containsKey!2737 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40)))))

(assert (=> b!4658199 (= lt!1820484 (lemmaInGetKeysListThenContainsKey!752 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun Unit!118905 () Unit!118852)

(assert (=> b!4658199 (= e!2906491 Unit!118905)))

(declare-fun b!4658201 () Bool)

(assert (=> b!4658201 (= e!2906493 (getKeysList!753 (toList!5226 lt!1820205)))))

(declare-fun b!4658202 () Bool)

(assert (=> b!4658202 (= e!2906490 (contains!15068 (keys!18398 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun b!4658200 () Bool)

(declare-fun e!2906494 () Bool)

(assert (=> b!4658200 (= e!2906494 (not (contains!15068 (keys!18398 lt!1820205) (_1!29813 (h!58064 oldBucket!40)))))))

(declare-fun d!1478370 () Bool)

(assert (=> d!1478370 e!2906489))

(declare-fun res!1959016 () Bool)

(assert (=> d!1478370 (=> res!1959016 e!2906489)))

(assert (=> d!1478370 (= res!1959016 e!2906494)))

(declare-fun res!1959015 () Bool)

(assert (=> d!1478370 (=> (not res!1959015) (not e!2906494))))

(declare-fun lt!1820482 () Bool)

(assert (=> d!1478370 (= res!1959015 (not lt!1820482))))

(declare-fun lt!1820489 () Bool)

(assert (=> d!1478370 (= lt!1820482 lt!1820489)))

(declare-fun lt!1820487 () Unit!118852)

(assert (=> d!1478370 (= lt!1820487 e!2906492)))

(declare-fun c!797326 () Bool)

(assert (=> d!1478370 (= c!797326 lt!1820489)))

(assert (=> d!1478370 (= lt!1820489 (containsKey!2737 (toList!5226 lt!1820205) (_1!29813 (h!58064 oldBucket!40))))))

(assert (=> d!1478370 (= (contains!15065 lt!1820205 (_1!29813 (h!58064 oldBucket!40))) lt!1820482)))

(declare-fun bm!325486 () Bool)

(assert (=> bm!325486 (= call!325491 (contains!15068 e!2906493 (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun c!797327 () Bool)

(assert (=> bm!325486 (= c!797327 c!797326)))

(declare-fun b!4658203 () Bool)

(assert (=> b!4658203 (= e!2906492 e!2906491)))

(declare-fun c!797328 () Bool)

(assert (=> b!4658203 (= c!797328 call!325491)))

(assert (= (and d!1478370 c!797326) b!4658198))

(assert (= (and d!1478370 (not c!797326)) b!4658203))

(assert (= (and b!4658203 c!797328) b!4658199))

(assert (= (and b!4658203 (not c!797328)) b!4658196))

(assert (= (or b!4658198 b!4658203) bm!325486))

(assert (= (and bm!325486 c!797327) b!4658201))

(assert (= (and bm!325486 (not c!797327)) b!4658195))

(assert (= (and d!1478370 res!1959015) b!4658200))

(assert (= (and d!1478370 (not res!1959016)) b!4658197))

(assert (= (and b!4658197 res!1959017) b!4658202))

(declare-fun m!5539335 () Bool)

(assert (=> b!4658200 m!5539335))

(assert (=> b!4658200 m!5539335))

(declare-fun m!5539337 () Bool)

(assert (=> b!4658200 m!5539337))

(declare-fun m!5539339 () Bool)

(assert (=> b!4658198 m!5539339))

(declare-fun m!5539341 () Bool)

(assert (=> b!4658198 m!5539341))

(assert (=> b!4658198 m!5539341))

(declare-fun m!5539343 () Bool)

(assert (=> b!4658198 m!5539343))

(declare-fun m!5539345 () Bool)

(assert (=> b!4658198 m!5539345))

(declare-fun m!5539347 () Bool)

(assert (=> bm!325486 m!5539347))

(assert (=> b!4658202 m!5539335))

(assert (=> b!4658202 m!5539335))

(assert (=> b!4658202 m!5539337))

(declare-fun m!5539349 () Bool)

(assert (=> b!4658199 m!5539349))

(declare-fun m!5539351 () Bool)

(assert (=> b!4658199 m!5539351))

(assert (=> b!4658197 m!5539341))

(assert (=> b!4658197 m!5539341))

(assert (=> b!4658197 m!5539343))

(assert (=> b!4658195 m!5539335))

(assert (=> d!1478370 m!5539349))

(declare-fun m!5539353 () Bool)

(assert (=> b!4658201 m!5539353))

(assert (=> b!4657774 d!1478370))

(declare-fun bs!1066334 () Bool)

(declare-fun b!4658207 () Bool)

(assert (= bs!1066334 (and b!4658207 b!4657775)))

(declare-fun lambda!199814 () Int)

(assert (=> bs!1066334 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199814 lambda!199750))))

(declare-fun bs!1066335 () Bool)

(assert (= bs!1066335 (and b!4658207 b!4657774)))

(assert (=> bs!1066335 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820205) (= lambda!199814 lambda!199754))))

(declare-fun bs!1066336 () Bool)

(assert (= bs!1066336 (and b!4658207 d!1478142)))

(assert (=> bs!1066336 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820216) (= lambda!199814 lambda!199756))))

(declare-fun bs!1066337 () Bool)

(assert (= bs!1066337 (and b!4658207 d!1478230)))

(assert (=> bs!1066337 (not (= lambda!199814 lambda!199776))))

(assert (=> bs!1066335 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199814 lambda!199753))))

(declare-fun bs!1066338 () Bool)

(assert (= bs!1066338 (and b!4658207 d!1478190)))

(assert (=> bs!1066338 (not (= lambda!199814 lambda!199763))))

(declare-fun bs!1066339 () Bool)

(assert (= bs!1066339 (and b!4658207 d!1478308)))

(assert (=> bs!1066339 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199814 lambda!199809))))

(assert (=> b!4658207 true))

(declare-fun bs!1066340 () Bool)

(declare-fun b!4658206 () Bool)

(assert (= bs!1066340 (and b!4658206 b!4657775)))

(declare-fun lambda!199815 () Int)

(assert (=> bs!1066340 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199815 lambda!199750))))

(declare-fun bs!1066341 () Bool)

(assert (= bs!1066341 (and b!4658206 b!4657774)))

(assert (=> bs!1066341 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820205) (= lambda!199815 lambda!199754))))

(declare-fun bs!1066342 () Bool)

(assert (= bs!1066342 (and b!4658206 d!1478142)))

(assert (=> bs!1066342 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820216) (= lambda!199815 lambda!199756))))

(declare-fun bs!1066343 () Bool)

(assert (= bs!1066343 (and b!4658206 b!4658207)))

(assert (=> bs!1066343 (= lambda!199815 lambda!199814)))

(declare-fun bs!1066344 () Bool)

(assert (= bs!1066344 (and b!4658206 d!1478230)))

(assert (=> bs!1066344 (not (= lambda!199815 lambda!199776))))

(assert (=> bs!1066341 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199815 lambda!199753))))

(declare-fun bs!1066345 () Bool)

(assert (= bs!1066345 (and b!4658206 d!1478190)))

(assert (=> bs!1066345 (not (= lambda!199815 lambda!199763))))

(declare-fun bs!1066346 () Bool)

(assert (= bs!1066346 (and b!4658206 d!1478308)))

(assert (=> bs!1066346 (= (= (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820037) (= lambda!199815 lambda!199809))))

(assert (=> b!4658206 true))

(declare-fun lambda!199816 () Int)

(declare-fun lt!1820497 () ListMap!4565)

(assert (=> bs!1066340 (= (= lt!1820497 lt!1820037) (= lambda!199816 lambda!199750))))

(assert (=> bs!1066341 (= (= lt!1820497 lt!1820205) (= lambda!199816 lambda!199754))))

(assert (=> bs!1066342 (= (= lt!1820497 lt!1820216) (= lambda!199816 lambda!199756))))

(assert (=> bs!1066343 (= (= lt!1820497 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199816 lambda!199814))))

(assert (=> bs!1066344 (not (= lambda!199816 lambda!199776))))

(assert (=> b!4658206 (= (= lt!1820497 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199816 lambda!199815))))

(assert (=> bs!1066341 (= (= lt!1820497 lt!1820037) (= lambda!199816 lambda!199753))))

(assert (=> bs!1066345 (not (= lambda!199816 lambda!199763))))

(assert (=> bs!1066346 (= (= lt!1820497 lt!1820037) (= lambda!199816 lambda!199809))))

(assert (=> b!4658206 true))

(declare-fun bs!1066347 () Bool)

(declare-fun d!1478376 () Bool)

(assert (= bs!1066347 (and d!1478376 b!4657775)))

(declare-fun lambda!199817 () Int)

(declare-fun lt!1820508 () ListMap!4565)

(assert (=> bs!1066347 (= (= lt!1820508 lt!1820037) (= lambda!199817 lambda!199750))))

(declare-fun bs!1066348 () Bool)

(assert (= bs!1066348 (and d!1478376 b!4657774)))

(assert (=> bs!1066348 (= (= lt!1820508 lt!1820205) (= lambda!199817 lambda!199754))))

(declare-fun bs!1066349 () Bool)

(assert (= bs!1066349 (and d!1478376 d!1478142)))

(assert (=> bs!1066349 (= (= lt!1820508 lt!1820216) (= lambda!199817 lambda!199756))))

(declare-fun bs!1066350 () Bool)

(assert (= bs!1066350 (and d!1478376 b!4658207)))

(assert (=> bs!1066350 (= (= lt!1820508 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199817 lambda!199814))))

(declare-fun bs!1066351 () Bool)

(assert (= bs!1066351 (and d!1478376 d!1478230)))

(assert (=> bs!1066351 (not (= lambda!199817 lambda!199776))))

(declare-fun bs!1066352 () Bool)

(assert (= bs!1066352 (and d!1478376 b!4658206)))

(assert (=> bs!1066352 (= (= lt!1820508 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199817 lambda!199815))))

(assert (=> bs!1066348 (= (= lt!1820508 lt!1820037) (= lambda!199817 lambda!199753))))

(assert (=> bs!1066352 (= (= lt!1820508 lt!1820497) (= lambda!199817 lambda!199816))))

(declare-fun bs!1066353 () Bool)

(assert (= bs!1066353 (and d!1478376 d!1478190)))

(assert (=> bs!1066353 (not (= lambda!199817 lambda!199763))))

(declare-fun bs!1066354 () Bool)

(assert (= bs!1066354 (and d!1478376 d!1478308)))

(assert (=> bs!1066354 (= (= lt!1820508 lt!1820037) (= lambda!199817 lambda!199809))))

(assert (=> d!1478376 true))

(declare-fun bm!325487 () Bool)

(declare-fun call!325494 () Unit!118852)

(assert (=> bm!325487 (= call!325494 (lemmaContainsAllItsOwnKeys!602 (+!1988 lt!1820037 (h!58064 oldBucket!40))))))

(declare-fun bm!325488 () Bool)

(declare-fun call!325492 () Bool)

(declare-fun c!797329 () Bool)

(assert (=> bm!325488 (= call!325492 (forall!11039 (ite c!797329 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (t!359156 (t!359156 oldBucket!40))) (ite c!797329 lambda!199814 lambda!199816)))))

(declare-fun b!4658204 () Bool)

(declare-fun e!2906496 () Bool)

(assert (=> b!4658204 (= e!2906496 (invariantList!1302 (toList!5226 lt!1820508)))))

(declare-fun b!4658205 () Bool)

(declare-fun e!2906495 () Bool)

(declare-fun call!325493 () Bool)

(assert (=> b!4658205 (= e!2906495 call!325493)))

(assert (=> d!1478376 e!2906496))

(declare-fun res!1959020 () Bool)

(assert (=> d!1478376 (=> (not res!1959020) (not e!2906496))))

(assert (=> d!1478376 (= res!1959020 (forall!11039 (t!359156 oldBucket!40) lambda!199817))))

(declare-fun e!2906497 () ListMap!4565)

(assert (=> d!1478376 (= lt!1820508 e!2906497)))

(assert (=> d!1478376 (= c!797329 ((_ is Nil!51916) (t!359156 oldBucket!40)))))

(assert (=> d!1478376 (noDuplicateKeys!1648 (t!359156 oldBucket!40))))

(assert (=> d!1478376 (= (addToMapMapFromBucket!1105 (t!359156 oldBucket!40) (+!1988 lt!1820037 (h!58064 oldBucket!40))) lt!1820508)))

(assert (=> b!4658206 (= e!2906497 lt!1820497)))

(declare-fun lt!1820490 () ListMap!4565)

(assert (=> b!4658206 (= lt!1820490 (+!1988 (+!1988 lt!1820037 (h!58064 oldBucket!40)) (h!58064 (t!359156 oldBucket!40))))))

(assert (=> b!4658206 (= lt!1820497 (addToMapMapFromBucket!1105 (t!359156 (t!359156 oldBucket!40)) (+!1988 (+!1988 lt!1820037 (h!58064 oldBucket!40)) (h!58064 (t!359156 oldBucket!40)))))))

(declare-fun lt!1820506 () Unit!118852)

(assert (=> b!4658206 (= lt!1820506 call!325494)))

(assert (=> b!4658206 (forall!11039 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) lambda!199815)))

(declare-fun lt!1820505 () Unit!118852)

(assert (=> b!4658206 (= lt!1820505 lt!1820506)))

(assert (=> b!4658206 (forall!11039 (toList!5226 lt!1820490) lambda!199816)))

(declare-fun lt!1820491 () Unit!118852)

(declare-fun Unit!118906 () Unit!118852)

(assert (=> b!4658206 (= lt!1820491 Unit!118906)))

(assert (=> b!4658206 call!325492))

(declare-fun lt!1820509 () Unit!118852)

(declare-fun Unit!118907 () Unit!118852)

(assert (=> b!4658206 (= lt!1820509 Unit!118907)))

(declare-fun lt!1820498 () Unit!118852)

(declare-fun Unit!118908 () Unit!118852)

(assert (=> b!4658206 (= lt!1820498 Unit!118908)))

(declare-fun lt!1820495 () Unit!118852)

(assert (=> b!4658206 (= lt!1820495 (forallContained!3240 (toList!5226 lt!1820490) lambda!199816 (h!58064 (t!359156 oldBucket!40))))))

(assert (=> b!4658206 (contains!15065 lt!1820490 (_1!29813 (h!58064 (t!359156 oldBucket!40))))))

(declare-fun lt!1820500 () Unit!118852)

(declare-fun Unit!118909 () Unit!118852)

(assert (=> b!4658206 (= lt!1820500 Unit!118909)))

(assert (=> b!4658206 (contains!15065 lt!1820497 (_1!29813 (h!58064 (t!359156 oldBucket!40))))))

(declare-fun lt!1820502 () Unit!118852)

(declare-fun Unit!118910 () Unit!118852)

(assert (=> b!4658206 (= lt!1820502 Unit!118910)))

(assert (=> b!4658206 (forall!11039 (t!359156 oldBucket!40) lambda!199816)))

(declare-fun lt!1820510 () Unit!118852)

(declare-fun Unit!118911 () Unit!118852)

(assert (=> b!4658206 (= lt!1820510 Unit!118911)))

(assert (=> b!4658206 (forall!11039 (toList!5226 lt!1820490) lambda!199816)))

(declare-fun lt!1820494 () Unit!118852)

(declare-fun Unit!118912 () Unit!118852)

(assert (=> b!4658206 (= lt!1820494 Unit!118912)))

(declare-fun lt!1820501 () Unit!118852)

(declare-fun Unit!118913 () Unit!118852)

(assert (=> b!4658206 (= lt!1820501 Unit!118913)))

(declare-fun lt!1820493 () Unit!118852)

(assert (=> b!4658206 (= lt!1820493 (addForallContainsKeyThenBeforeAdding!601 (+!1988 lt!1820037 (h!58064 oldBucket!40)) lt!1820497 (_1!29813 (h!58064 (t!359156 oldBucket!40))) (_2!29813 (h!58064 (t!359156 oldBucket!40)))))))

(assert (=> b!4658206 (forall!11039 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) lambda!199816)))

(declare-fun lt!1820496 () Unit!118852)

(assert (=> b!4658206 (= lt!1820496 lt!1820493)))

(assert (=> b!4658206 (forall!11039 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) lambda!199816)))

(declare-fun lt!1820504 () Unit!118852)

(declare-fun Unit!118914 () Unit!118852)

(assert (=> b!4658206 (= lt!1820504 Unit!118914)))

(declare-fun res!1959018 () Bool)

(assert (=> b!4658206 (= res!1959018 (forall!11039 (t!359156 oldBucket!40) lambda!199816))))

(assert (=> b!4658206 (=> (not res!1959018) (not e!2906495))))

(assert (=> b!4658206 e!2906495))

(declare-fun lt!1820503 () Unit!118852)

(declare-fun Unit!118915 () Unit!118852)

(assert (=> b!4658206 (= lt!1820503 Unit!118915)))

(assert (=> b!4658207 (= e!2906497 (+!1988 lt!1820037 (h!58064 oldBucket!40)))))

(declare-fun lt!1820499 () Unit!118852)

(assert (=> b!4658207 (= lt!1820499 call!325494)))

(assert (=> b!4658207 call!325492))

(declare-fun lt!1820492 () Unit!118852)

(assert (=> b!4658207 (= lt!1820492 lt!1820499)))

(assert (=> b!4658207 call!325493))

(declare-fun lt!1820507 () Unit!118852)

(declare-fun Unit!118916 () Unit!118852)

(assert (=> b!4658207 (= lt!1820507 Unit!118916)))

(declare-fun b!4658208 () Bool)

(declare-fun res!1959019 () Bool)

(assert (=> b!4658208 (=> (not res!1959019) (not e!2906496))))

(assert (=> b!4658208 (= res!1959019 (forall!11039 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) lambda!199817))))

(declare-fun bm!325489 () Bool)

(assert (=> bm!325489 (= call!325493 (forall!11039 (toList!5226 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (ite c!797329 lambda!199814 lambda!199816)))))

(assert (= (and d!1478376 c!797329) b!4658207))

(assert (= (and d!1478376 (not c!797329)) b!4658206))

(assert (= (and b!4658206 res!1959018) b!4658205))

(assert (= (or b!4658207 b!4658206) bm!325487))

(assert (= (or b!4658207 b!4658205) bm!325489))

(assert (= (or b!4658207 b!4658206) bm!325488))

(assert (= (and d!1478376 res!1959020) b!4658208))

(assert (= (and b!4658208 res!1959019) b!4658204))

(declare-fun m!5539373 () Bool)

(assert (=> bm!325488 m!5539373))

(declare-fun m!5539375 () Bool)

(assert (=> b!4658204 m!5539375))

(declare-fun m!5539377 () Bool)

(assert (=> bm!325489 m!5539377))

(assert (=> bm!325487 m!5538765))

(declare-fun m!5539379 () Bool)

(assert (=> bm!325487 m!5539379))

(assert (=> b!4658206 m!5538765))

(declare-fun m!5539381 () Bool)

(assert (=> b!4658206 m!5539381))

(declare-fun m!5539383 () Bool)

(assert (=> b!4658206 m!5539383))

(declare-fun m!5539385 () Bool)

(assert (=> b!4658206 m!5539385))

(assert (=> b!4658206 m!5539385))

(declare-fun m!5539387 () Bool)

(assert (=> b!4658206 m!5539387))

(declare-fun m!5539389 () Bool)

(assert (=> b!4658206 m!5539389))

(assert (=> b!4658206 m!5539381))

(declare-fun m!5539391 () Bool)

(assert (=> b!4658206 m!5539391))

(declare-fun m!5539393 () Bool)

(assert (=> b!4658206 m!5539393))

(assert (=> b!4658206 m!5539387))

(declare-fun m!5539395 () Bool)

(assert (=> b!4658206 m!5539395))

(declare-fun m!5539397 () Bool)

(assert (=> b!4658206 m!5539397))

(assert (=> b!4658206 m!5539397))

(assert (=> b!4658206 m!5538765))

(declare-fun m!5539399 () Bool)

(assert (=> b!4658206 m!5539399))

(declare-fun m!5539401 () Bool)

(assert (=> d!1478376 m!5539401))

(assert (=> d!1478376 m!5538639))

(declare-fun m!5539403 () Bool)

(assert (=> b!4658208 m!5539403))

(assert (=> b!4657774 d!1478376))

(declare-fun bs!1066380 () Bool)

(declare-fun d!1478392 () Bool)

(assert (= bs!1066380 (and d!1478392 b!4657775)))

(declare-fun lambda!199825 () Int)

(assert (=> bs!1066380 (= (= lt!1820205 lt!1820037) (= lambda!199825 lambda!199750))))

(declare-fun bs!1066381 () Bool)

(assert (= bs!1066381 (and d!1478392 b!4657774)))

(assert (=> bs!1066381 (= lambda!199825 lambda!199754)))

(declare-fun bs!1066382 () Bool)

(assert (= bs!1066382 (and d!1478392 d!1478142)))

(assert (=> bs!1066382 (= (= lt!1820205 lt!1820216) (= lambda!199825 lambda!199756))))

(declare-fun bs!1066383 () Bool)

(assert (= bs!1066383 (and d!1478392 b!4658207)))

(assert (=> bs!1066383 (= (= lt!1820205 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199825 lambda!199814))))

(declare-fun bs!1066384 () Bool)

(assert (= bs!1066384 (and d!1478392 b!4658206)))

(assert (=> bs!1066384 (= (= lt!1820205 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199825 lambda!199815))))

(assert (=> bs!1066381 (= (= lt!1820205 lt!1820037) (= lambda!199825 lambda!199753))))

(assert (=> bs!1066384 (= (= lt!1820205 lt!1820497) (= lambda!199825 lambda!199816))))

(declare-fun bs!1066385 () Bool)

(assert (= bs!1066385 (and d!1478392 d!1478376)))

(assert (=> bs!1066385 (= (= lt!1820205 lt!1820508) (= lambda!199825 lambda!199817))))

(declare-fun bs!1066386 () Bool)

(assert (= bs!1066386 (and d!1478392 d!1478230)))

(assert (=> bs!1066386 (not (= lambda!199825 lambda!199776))))

(declare-fun bs!1066387 () Bool)

(assert (= bs!1066387 (and d!1478392 d!1478190)))

(assert (=> bs!1066387 (not (= lambda!199825 lambda!199763))))

(declare-fun bs!1066388 () Bool)

(assert (= bs!1066388 (and d!1478392 d!1478308)))

(assert (=> bs!1066388 (= (= lt!1820205 lt!1820037) (= lambda!199825 lambda!199809))))

(assert (=> d!1478392 true))

(assert (=> d!1478392 (forall!11039 (toList!5226 lt!1820037) lambda!199825)))

(declare-fun lt!1820544 () Unit!118852)

(declare-fun choose!32055 (ListMap!4565 ListMap!4565 K!13270 V!13516) Unit!118852)

(assert (=> d!1478392 (= lt!1820544 (choose!32055 lt!1820037 lt!1820205 (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))))))

(assert (=> d!1478392 (forall!11039 (toList!5226 (+!1988 lt!1820037 (tuple2!53039 (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))))) lambda!199825)))

(assert (=> d!1478392 (= (addForallContainsKeyThenBeforeAdding!601 lt!1820037 lt!1820205 (_1!29813 (h!58064 oldBucket!40)) (_2!29813 (h!58064 oldBucket!40))) lt!1820544)))

(declare-fun bs!1066389 () Bool)

(assert (= bs!1066389 d!1478392))

(declare-fun m!5539423 () Bool)

(assert (=> bs!1066389 m!5539423))

(declare-fun m!5539425 () Bool)

(assert (=> bs!1066389 m!5539425))

(declare-fun m!5539427 () Bool)

(assert (=> bs!1066389 m!5539427))

(declare-fun m!5539429 () Bool)

(assert (=> bs!1066389 m!5539429))

(assert (=> b!4657774 d!1478392))

(declare-fun d!1478406 () Bool)

(declare-fun res!1959036 () Bool)

(declare-fun e!2906519 () Bool)

(assert (=> d!1478406 (=> res!1959036 e!2906519)))

(assert (=> d!1478406 (= res!1959036 ((_ is Nil!51916) (toList!5226 lt!1820198)))))

(assert (=> d!1478406 (= (forall!11039 (toList!5226 lt!1820198) lambda!199754) e!2906519)))

(declare-fun b!4658239 () Bool)

(declare-fun e!2906520 () Bool)

(assert (=> b!4658239 (= e!2906519 e!2906520)))

(declare-fun res!1959037 () Bool)

(assert (=> b!4658239 (=> (not res!1959037) (not e!2906520))))

(assert (=> b!4658239 (= res!1959037 (dynLambda!21602 lambda!199754 (h!58064 (toList!5226 lt!1820198))))))

(declare-fun b!4658240 () Bool)

(assert (=> b!4658240 (= e!2906520 (forall!11039 (t!359156 (toList!5226 lt!1820198)) lambda!199754))))

(assert (= (and d!1478406 (not res!1959036)) b!4658239))

(assert (= (and b!4658239 res!1959037) b!4658240))

(declare-fun b_lambda!174527 () Bool)

(assert (=> (not b_lambda!174527) (not b!4658239)))

(declare-fun m!5539431 () Bool)

(assert (=> b!4658239 m!5539431))

(declare-fun m!5539433 () Bool)

(assert (=> b!4658240 m!5539433))

(assert (=> b!4657774 d!1478406))

(declare-fun d!1478408 () Bool)

(assert (=> d!1478408 (dynLambda!21602 lambda!199754 (h!58064 oldBucket!40))))

(declare-fun lt!1820547 () Unit!118852)

(declare-fun choose!32056 (List!52040 Int tuple2!53038) Unit!118852)

(assert (=> d!1478408 (= lt!1820547 (choose!32056 (toList!5226 lt!1820198) lambda!199754 (h!58064 oldBucket!40)))))

(declare-fun e!2906523 () Bool)

(assert (=> d!1478408 e!2906523))

(declare-fun res!1959040 () Bool)

(assert (=> d!1478408 (=> (not res!1959040) (not e!2906523))))

(assert (=> d!1478408 (= res!1959040 (forall!11039 (toList!5226 lt!1820198) lambda!199754))))

(assert (=> d!1478408 (= (forallContained!3240 (toList!5226 lt!1820198) lambda!199754 (h!58064 oldBucket!40)) lt!1820547)))

(declare-fun b!4658243 () Bool)

(assert (=> b!4658243 (= e!2906523 (contains!15069 (toList!5226 lt!1820198) (h!58064 oldBucket!40)))))

(assert (= (and d!1478408 res!1959040) b!4658243))

(declare-fun b_lambda!174529 () Bool)

(assert (=> (not b_lambda!174529) (not d!1478408)))

(assert (=> d!1478408 m!5539229))

(declare-fun m!5539449 () Bool)

(assert (=> d!1478408 m!5539449))

(assert (=> d!1478408 m!5538781))

(declare-fun m!5539455 () Bool)

(assert (=> b!4658243 m!5539455))

(assert (=> b!4657774 d!1478408))

(declare-fun d!1478410 () Bool)

(declare-fun res!1959041 () Bool)

(declare-fun e!2906524 () Bool)

(assert (=> d!1478410 (=> res!1959041 e!2906524)))

(assert (=> d!1478410 (= res!1959041 ((_ is Nil!51916) (toList!5226 lt!1820037)))))

(assert (=> d!1478410 (= (forall!11039 (toList!5226 lt!1820037) lambda!199754) e!2906524)))

(declare-fun b!4658244 () Bool)

(declare-fun e!2906525 () Bool)

(assert (=> b!4658244 (= e!2906524 e!2906525)))

(declare-fun res!1959042 () Bool)

(assert (=> b!4658244 (=> (not res!1959042) (not e!2906525))))

(assert (=> b!4658244 (= res!1959042 (dynLambda!21602 lambda!199754 (h!58064 (toList!5226 lt!1820037))))))

(declare-fun b!4658245 () Bool)

(assert (=> b!4658245 (= e!2906525 (forall!11039 (t!359156 (toList!5226 lt!1820037)) lambda!199754))))

(assert (= (and d!1478410 (not res!1959041)) b!4658244))

(assert (= (and b!4658244 res!1959042) b!4658245))

(declare-fun b_lambda!174531 () Bool)

(assert (=> (not b_lambda!174531) (not b!4658244)))

(declare-fun m!5539473 () Bool)

(assert (=> b!4658244 m!5539473))

(declare-fun m!5539475 () Bool)

(assert (=> b!4658245 m!5539475))

(assert (=> b!4657774 d!1478410))

(declare-fun d!1478414 () Bool)

(declare-fun res!1959043 () Bool)

(declare-fun e!2906527 () Bool)

(assert (=> d!1478414 (=> res!1959043 e!2906527)))

(assert (=> d!1478414 (= res!1959043 ((_ is Nil!51917) (toList!5225 lt!1820042)))))

(assert (=> d!1478414 (= (forall!11040 (toList!5225 lt!1820042) lambda!199772) e!2906527)))

(declare-fun b!4658248 () Bool)

(declare-fun e!2906528 () Bool)

(assert (=> b!4658248 (= e!2906527 e!2906528)))

(declare-fun res!1959044 () Bool)

(assert (=> b!4658248 (=> (not res!1959044) (not e!2906528))))

(assert (=> b!4658248 (= res!1959044 (dynLambda!21600 lambda!199772 (h!58065 (toList!5225 lt!1820042))))))

(declare-fun b!4658249 () Bool)

(assert (=> b!4658249 (= e!2906528 (forall!11040 (t!359157 (toList!5225 lt!1820042)) lambda!199772))))

(assert (= (and d!1478414 (not res!1959043)) b!4658248))

(assert (= (and b!4658248 res!1959044) b!4658249))

(declare-fun b_lambda!174533 () Bool)

(assert (=> (not b_lambda!174533) (not b!4658248)))

(declare-fun m!5539477 () Bool)

(assert (=> b!4658248 m!5539477))

(declare-fun m!5539479 () Bool)

(assert (=> b!4658249 m!5539479))

(assert (=> d!1478212 d!1478414))

(declare-fun bs!1066413 () Bool)

(declare-fun d!1478416 () Bool)

(assert (= bs!1066413 (and d!1478416 d!1478200)))

(declare-fun lambda!199830 () Int)

(assert (=> bs!1066413 (= lambda!199830 lambda!199765)))

(declare-fun bs!1066414 () Bool)

(assert (= bs!1066414 (and d!1478416 b!4657636)))

(assert (=> bs!1066414 (= lambda!199830 lambda!199676)))

(declare-fun bs!1066415 () Bool)

(assert (= bs!1066415 (and d!1478416 d!1478178)))

(assert (=> bs!1066415 (= lambda!199830 lambda!199760)))

(declare-fun bs!1066416 () Bool)

(assert (= bs!1066416 (and d!1478416 d!1478228)))

(assert (=> bs!1066416 (= lambda!199830 lambda!199775)))

(declare-fun bs!1066417 () Bool)

(assert (= bs!1066417 (and d!1478416 d!1478212)))

(assert (=> bs!1066417 (= lambda!199830 lambda!199772)))

(assert (=> d!1478416 (isDefined!9097 (getPair!376 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968))))

(declare-fun lt!1820576 () Unit!118852)

(assert (=> d!1478416 (= lt!1820576 (forallContained!3238 (toList!5225 lt!1820042) lambda!199830 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))))

(declare-fun lt!1820580 () Unit!118852)

(declare-fun lt!1820578 () Unit!118852)

(assert (=> d!1478416 (= lt!1820580 lt!1820578)))

(declare-fun lt!1820581 () (_ BitVec 64))

(declare-fun lt!1820577 () List!52040)

(assert (=> d!1478416 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820581 lt!1820577))))

(assert (=> d!1478416 (= lt!1820578 (lemmaGetValueImpliesTupleContained!181 lt!1820042 lt!1820581 lt!1820577))))

(assert (=> d!1478416 (= lt!1820577 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))

(assert (=> d!1478416 (= lt!1820581 (hash!3789 hashF!1389 key!4968))))

(declare-fun lt!1820579 () Unit!118852)

(declare-fun lt!1820575 () Unit!118852)

(assert (=> d!1478416 (= lt!1820579 lt!1820575)))

(assert (=> d!1478416 (contains!15064 lt!1820042 (hash!3789 hashF!1389 key!4968))))

(assert (=> d!1478416 (= lt!1820575 (lemmaInGenMapThenLongMapContainsHash!582 lt!1820042 key!4968 hashF!1389))))

(assert (=> d!1478416 true))

(declare-fun _$25!226 () Unit!118852)

(assert (=> d!1478416 (= (choose!32045 lt!1820042 key!4968 hashF!1389) _$25!226)))

(declare-fun bs!1066418 () Bool)

(assert (= bs!1066418 d!1478416))

(assert (=> bs!1066418 m!5538593))

(assert (=> bs!1066418 m!5538911))

(declare-fun m!5539543 () Bool)

(assert (=> bs!1066418 m!5539543))

(assert (=> bs!1066418 m!5538601))

(assert (=> bs!1066418 m!5538593))

(assert (=> bs!1066418 m!5538921))

(assert (=> bs!1066418 m!5538911))

(assert (=> bs!1066418 m!5538913))

(declare-fun m!5539547 () Bool)

(assert (=> bs!1066418 m!5539547))

(assert (=> bs!1066418 m!5538593))

(declare-fun m!5539549 () Bool)

(assert (=> bs!1066418 m!5539549))

(assert (=> bs!1066418 m!5538913))

(assert (=> bs!1066418 m!5538919))

(assert (=> d!1478212 d!1478416))

(declare-fun d!1478444 () Bool)

(assert (=> d!1478444 (= (isEmpty!29013 (getPair!376 lt!1820044 key!4968)) (not ((_ is Some!11831) (getPair!376 lt!1820044 key!4968))))))

(assert (=> d!1478218 d!1478444))

(declare-fun d!1478448 () Bool)

(declare-fun res!1959068 () Bool)

(declare-fun e!2906558 () Bool)

(assert (=> d!1478448 (=> res!1959068 e!2906558)))

(assert (=> d!1478448 (= res!1959068 ((_ is Nil!51916) (toList!5226 lt!1820037)))))

(assert (=> d!1478448 (= (forall!11039 (toList!5226 lt!1820037) (ite c!797247 lambda!199750 lambda!199754)) e!2906558)))

(declare-fun b!4658289 () Bool)

(declare-fun e!2906559 () Bool)

(assert (=> b!4658289 (= e!2906558 e!2906559)))

(declare-fun res!1959069 () Bool)

(assert (=> b!4658289 (=> (not res!1959069) (not e!2906559))))

(assert (=> b!4658289 (= res!1959069 (dynLambda!21602 (ite c!797247 lambda!199750 lambda!199754) (h!58064 (toList!5226 lt!1820037))))))

(declare-fun b!4658290 () Bool)

(assert (=> b!4658290 (= e!2906559 (forall!11039 (t!359156 (toList!5226 lt!1820037)) (ite c!797247 lambda!199750 lambda!199754)))))

(assert (= (and d!1478448 (not res!1959068)) b!4658289))

(assert (= (and b!4658289 res!1959069) b!4658290))

(declare-fun b_lambda!174541 () Bool)

(assert (=> (not b_lambda!174541) (not b!4658289)))

(declare-fun m!5539565 () Bool)

(assert (=> b!4658289 m!5539565))

(declare-fun m!5539567 () Bool)

(assert (=> b!4658290 m!5539567))

(assert (=> bm!325472 d!1478448))

(declare-fun d!1478452 () Bool)

(assert (=> d!1478452 (dynLambda!21600 lambda!199772 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968))))))

(declare-fun lt!1820584 () Unit!118852)

(assert (=> d!1478452 (= lt!1820584 (choose!32044 (toList!5225 lt!1820042) lambda!199772 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))))

(declare-fun e!2906560 () Bool)

(assert (=> d!1478452 e!2906560))

(declare-fun res!1959070 () Bool)

(assert (=> d!1478452 (=> (not res!1959070) (not e!2906560))))

(assert (=> d!1478452 (= res!1959070 (forall!11040 (toList!5225 lt!1820042) lambda!199772))))

(assert (=> d!1478452 (= (forallContained!3238 (toList!5225 lt!1820042) lambda!199772 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))) lt!1820584)))

(declare-fun b!4658291 () Bool)

(assert (=> b!4658291 (= e!2906560 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))))

(assert (= (and d!1478452 res!1959070) b!4658291))

(declare-fun b_lambda!174543 () Bool)

(assert (=> (not b_lambda!174543) (not d!1478452)))

(declare-fun m!5539569 () Bool)

(assert (=> d!1478452 m!5539569))

(declare-fun m!5539571 () Bool)

(assert (=> d!1478452 m!5539571))

(assert (=> d!1478452 m!5538907))

(declare-fun m!5539573 () Bool)

(assert (=> b!4658291 m!5539573))

(assert (=> b!4657906 d!1478452))

(declare-fun b!4658292 () Bool)

(declare-fun e!2906562 () Bool)

(declare-fun e!2906564 () Bool)

(assert (=> b!4658292 (= e!2906562 e!2906564)))

(declare-fun res!1959072 () Bool)

(assert (=> b!4658292 (=> (not res!1959072) (not e!2906564))))

(declare-fun lt!1820585 () Option!11832)

(assert (=> b!4658292 (= res!1959072 (isDefined!9097 lt!1820585))))

(declare-fun b!4658293 () Bool)

(declare-fun res!1959074 () Bool)

(assert (=> b!4658293 (=> (not res!1959074) (not e!2906564))))

(assert (=> b!4658293 (= res!1959074 (= (_1!29813 (get!17279 lt!1820585)) key!4968))))

(declare-fun e!2906565 () Option!11832)

(declare-fun b!4658294 () Bool)

(assert (=> b!4658294 (= e!2906565 (getPair!376 (t!359156 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968))) key!4968))))

(declare-fun b!4658295 () Bool)

(assert (=> b!4658295 (= e!2906565 None!11831)))

(declare-fun b!4658296 () Bool)

(declare-fun e!2906563 () Option!11832)

(assert (=> b!4658296 (= e!2906563 e!2906565)))

(declare-fun c!797346 () Bool)

(assert (=> b!4658296 (= c!797346 ((_ is Cons!51916) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968))))))

(declare-fun d!1478454 () Bool)

(assert (=> d!1478454 e!2906562))

(declare-fun res!1959073 () Bool)

(assert (=> d!1478454 (=> res!1959073 e!2906562)))

(declare-fun e!2906561 () Bool)

(assert (=> d!1478454 (= res!1959073 e!2906561)))

(declare-fun res!1959071 () Bool)

(assert (=> d!1478454 (=> (not res!1959071) (not e!2906561))))

(assert (=> d!1478454 (= res!1959071 (isEmpty!29013 lt!1820585))))

(assert (=> d!1478454 (= lt!1820585 e!2906563)))

(declare-fun c!797347 () Bool)

(assert (=> d!1478454 (= c!797347 (and ((_ is Cons!51916) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968))) (= (_1!29813 (h!58064 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))) key!4968)))))

(assert (=> d!1478454 (noDuplicateKeys!1648 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))

(assert (=> d!1478454 (= (getPair!376 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968) lt!1820585)))

(declare-fun b!4658297 () Bool)

(assert (=> b!4658297 (= e!2906564 (contains!15069 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) (get!17279 lt!1820585)))))

(declare-fun b!4658298 () Bool)

(assert (=> b!4658298 (= e!2906563 (Some!11831 (h!58064 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))))))

(declare-fun b!4658299 () Bool)

(assert (=> b!4658299 (= e!2906561 (not (containsKey!2734 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968)))))

(assert (= (and d!1478454 c!797347) b!4658298))

(assert (= (and d!1478454 (not c!797347)) b!4658296))

(assert (= (and b!4658296 c!797346) b!4658294))

(assert (= (and b!4658296 (not c!797346)) b!4658295))

(assert (= (and d!1478454 res!1959071) b!4658299))

(assert (= (and d!1478454 (not res!1959073)) b!4658292))

(assert (= (and b!4658292 res!1959072) b!4658293))

(assert (= (and b!4658293 res!1959074) b!4658297))

(declare-fun m!5539575 () Bool)

(assert (=> d!1478454 m!5539575))

(assert (=> d!1478454 m!5538911))

(declare-fun m!5539577 () Bool)

(assert (=> d!1478454 m!5539577))

(declare-fun m!5539579 () Bool)

(assert (=> b!4658293 m!5539579))

(assert (=> b!4658297 m!5539579))

(assert (=> b!4658297 m!5538911))

(assert (=> b!4658297 m!5539579))

(declare-fun m!5539581 () Bool)

(assert (=> b!4658297 m!5539581))

(declare-fun m!5539583 () Bool)

(assert (=> b!4658294 m!5539583))

(assert (=> b!4658299 m!5538911))

(declare-fun m!5539585 () Bool)

(assert (=> b!4658299 m!5539585))

(declare-fun m!5539587 () Bool)

(assert (=> b!4658292 m!5539587))

(assert (=> b!4657906 d!1478454))

(assert (=> b!4657906 d!1478228))

(declare-fun d!1478456 () Bool)

(assert (=> d!1478456 (= (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) (get!17278 (getValueByKey!1618 (toList!5225 lt!1820042) (hash!3789 hashF!1389 key!4968))))))

(declare-fun bs!1066419 () Bool)

(assert (= bs!1066419 d!1478456))

(assert (=> bs!1066419 m!5538593))

(assert (=> bs!1066419 m!5539173))

(assert (=> bs!1066419 m!5539173))

(declare-fun m!5539589 () Bool)

(assert (=> bs!1066419 m!5539589))

(assert (=> b!4657906 d!1478456))

(declare-fun d!1478458 () Bool)

(declare-fun e!2906566 () Bool)

(assert (=> d!1478458 e!2906566))

(declare-fun res!1959075 () Bool)

(assert (=> d!1478458 (=> res!1959075 e!2906566)))

(declare-fun lt!1820587 () Bool)

(assert (=> d!1478458 (= res!1959075 (not lt!1820587))))

(declare-fun lt!1820589 () Bool)

(assert (=> d!1478458 (= lt!1820587 lt!1820589)))

(declare-fun lt!1820588 () Unit!118852)

(declare-fun e!2906567 () Unit!118852)

(assert (=> d!1478458 (= lt!1820588 e!2906567)))

(declare-fun c!797348 () Bool)

(assert (=> d!1478458 (= c!797348 lt!1820589)))

(assert (=> d!1478458 (= lt!1820589 (containsKey!2738 (toList!5225 lt!1820042) lt!1820330))))

(assert (=> d!1478458 (= (contains!15064 lt!1820042 lt!1820330) lt!1820587)))

(declare-fun b!4658300 () Bool)

(declare-fun lt!1820586 () Unit!118852)

(assert (=> b!4658300 (= e!2906567 lt!1820586)))

(assert (=> b!4658300 (= lt!1820586 (lemmaContainsKeyImpliesGetValueByKeyDefined!1520 (toList!5225 lt!1820042) lt!1820330))))

(assert (=> b!4658300 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820330))))

(declare-fun b!4658301 () Bool)

(declare-fun Unit!118919 () Unit!118852)

(assert (=> b!4658301 (= e!2906567 Unit!118919)))

(declare-fun b!4658302 () Bool)

(assert (=> b!4658302 (= e!2906566 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820330)))))

(assert (= (and d!1478458 c!797348) b!4658300))

(assert (= (and d!1478458 (not c!797348)) b!4658301))

(assert (= (and d!1478458 (not res!1959075)) b!4658302))

(declare-fun m!5539591 () Bool)

(assert (=> d!1478458 m!5539591))

(declare-fun m!5539593 () Bool)

(assert (=> b!4658300 m!5539593))

(assert (=> b!4658300 m!5538927))

(assert (=> b!4658300 m!5538927))

(declare-fun m!5539595 () Bool)

(assert (=> b!4658300 m!5539595))

(assert (=> b!4658302 m!5538927))

(assert (=> b!4658302 m!5538927))

(assert (=> b!4658302 m!5539595))

(assert (=> b!4657906 d!1478458))

(declare-fun d!1478460 () Bool)

(assert (=> d!1478460 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820330 lt!1820323))))

(declare-fun lt!1820590 () Unit!118852)

(assert (=> d!1478460 (= lt!1820590 (choose!32046 lt!1820042 lt!1820330 lt!1820323))))

(assert (=> d!1478460 (contains!15064 lt!1820042 lt!1820330)))

(assert (=> d!1478460 (= (lemmaGetValueImpliesTupleContained!181 lt!1820042 lt!1820330 lt!1820323) lt!1820590)))

(declare-fun bs!1066420 () Bool)

(assert (= bs!1066420 d!1478460))

(assert (=> bs!1066420 m!5538915))

(declare-fun m!5539597 () Bool)

(assert (=> bs!1066420 m!5539597))

(assert (=> bs!1066420 m!5538917))

(assert (=> b!4657906 d!1478460))

(declare-fun d!1478462 () Bool)

(assert (=> d!1478462 (= (isDefined!9097 (getPair!376 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968)) (not (isEmpty!29013 (getPair!376 (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)) key!4968))))))

(declare-fun bs!1066421 () Bool)

(assert (= bs!1066421 d!1478462))

(assert (=> bs!1066421 m!5538913))

(declare-fun m!5539599 () Bool)

(assert (=> bs!1066421 m!5539599))

(assert (=> b!4657906 d!1478462))

(declare-fun d!1478464 () Bool)

(declare-fun lt!1820591 () Bool)

(assert (=> d!1478464 (= lt!1820591 (select (content!9005 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820330 lt!1820323)))))

(declare-fun e!2906568 () Bool)

(assert (=> d!1478464 (= lt!1820591 e!2906568)))

(declare-fun res!1959077 () Bool)

(assert (=> d!1478464 (=> (not res!1959077) (not e!2906568))))

(assert (=> d!1478464 (= res!1959077 ((_ is Cons!51917) (toList!5225 lt!1820042)))))

(assert (=> d!1478464 (= (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820330 lt!1820323)) lt!1820591)))

(declare-fun b!4658303 () Bool)

(declare-fun e!2906569 () Bool)

(assert (=> b!4658303 (= e!2906568 e!2906569)))

(declare-fun res!1959076 () Bool)

(assert (=> b!4658303 (=> res!1959076 e!2906569)))

(assert (=> b!4658303 (= res!1959076 (= (h!58065 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820330 lt!1820323)))))

(declare-fun b!4658304 () Bool)

(assert (=> b!4658304 (= e!2906569 (contains!15063 (t!359157 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820330 lt!1820323)))))

(assert (= (and d!1478464 res!1959077) b!4658303))

(assert (= (and b!4658303 (not res!1959076)) b!4658304))

(declare-fun m!5539601 () Bool)

(assert (=> d!1478464 m!5539601))

(declare-fun m!5539603 () Bool)

(assert (=> d!1478464 m!5539603))

(declare-fun m!5539605 () Bool)

(assert (=> b!4658304 m!5539605))

(assert (=> b!4657906 d!1478464))

(assert (=> b!4657906 d!1478138))

(assert (=> b!4657906 d!1478300))

(declare-fun d!1478466 () Bool)

(declare-fun res!1959078 () Bool)

(declare-fun e!2906570 () Bool)

(assert (=> d!1478466 (=> res!1959078 e!2906570)))

(assert (=> d!1478466 (= res!1959078 (and ((_ is Cons!51916) lt!1820052) (= (_1!29813 (h!58064 lt!1820052)) key!4968)))))

(assert (=> d!1478466 (= (containsKey!2734 lt!1820052 key!4968) e!2906570)))

(declare-fun b!4658305 () Bool)

(declare-fun e!2906571 () Bool)

(assert (=> b!4658305 (= e!2906570 e!2906571)))

(declare-fun res!1959079 () Bool)

(assert (=> b!4658305 (=> (not res!1959079) (not e!2906571))))

(assert (=> b!4658305 (= res!1959079 ((_ is Cons!51916) lt!1820052))))

(declare-fun b!4658306 () Bool)

(assert (=> b!4658306 (= e!2906571 (containsKey!2734 (t!359156 lt!1820052) key!4968))))

(assert (= (and d!1478466 (not res!1959078)) b!4658305))

(assert (= (and b!4658305 res!1959079) b!4658306))

(declare-fun m!5539607 () Bool)

(assert (=> b!4658306 m!5539607))

(assert (=> d!1478140 d!1478466))

(assert (=> d!1478140 d!1478296))

(assert (=> b!4657882 d!1478140))

(declare-fun bs!1066422 () Bool)

(declare-fun b!4658314 () Bool)

(assert (= bs!1066422 (and b!4658314 b!4658070)))

(declare-fun lambda!199835 () Int)

(assert (=> bs!1066422 (= (= (toList!5226 lt!1820033) (t!359156 (toList!5226 lt!1820033))) (= lambda!199835 lambda!199802))))

(declare-fun bs!1066423 () Bool)

(assert (= bs!1066423 (and b!4658314 b!4658073)))

(assert (=> bs!1066423 (= (= (toList!5226 lt!1820033) (Cons!51916 (h!58064 (toList!5226 lt!1820033)) (t!359156 (toList!5226 lt!1820033)))) (= lambda!199835 lambda!199803))))

(declare-fun bs!1066424 () Bool)

(assert (= bs!1066424 (and b!4658314 b!4658071)))

(assert (=> bs!1066424 (= lambda!199835 lambda!199804)))

(assert (=> b!4658314 true))

(declare-fun bs!1066425 () Bool)

(declare-fun b!4658315 () Bool)

(assert (= bs!1066425 (and b!4658315 b!4658076)))

(declare-fun lambda!199836 () Int)

(assert (=> bs!1066425 (= lambda!199836 lambda!199806)))

(declare-fun d!1478468 () Bool)

(declare-fun e!2906574 () Bool)

(assert (=> d!1478468 e!2906574))

(declare-fun res!1959088 () Bool)

(assert (=> d!1478468 (=> (not res!1959088) (not e!2906574))))

(declare-fun lt!1820594 () List!52043)

(assert (=> d!1478468 (= res!1959088 (noDuplicate!842 lt!1820594))))

(assert (=> d!1478468 (= lt!1820594 (getKeysList!753 (toList!5226 lt!1820033)))))

(assert (=> d!1478468 (= (keys!18398 lt!1820033) lt!1820594)))

(declare-fun b!4658313 () Bool)

(declare-fun res!1959086 () Bool)

(assert (=> b!4658313 (=> (not res!1959086) (not e!2906574))))

(assert (=> b!4658313 (= res!1959086 (= (length!540 lt!1820594) (length!541 (toList!5226 lt!1820033))))))

(declare-fun res!1959087 () Bool)

(assert (=> b!4658314 (=> (not res!1959087) (not e!2906574))))

(assert (=> b!4658314 (= res!1959087 (forall!11042 lt!1820594 lambda!199835))))

(assert (=> b!4658315 (= e!2906574 (= (content!9007 lt!1820594) (content!9007 (map!11479 (toList!5226 lt!1820033) lambda!199836))))))

(assert (= (and d!1478468 res!1959088) b!4658313))

(assert (= (and b!4658313 res!1959086) b!4658314))

(assert (= (and b!4658314 res!1959087) b!4658315))

(declare-fun m!5539609 () Bool)

(assert (=> d!1478468 m!5539609))

(assert (=> d!1478468 m!5538873))

(declare-fun m!5539611 () Bool)

(assert (=> b!4658313 m!5539611))

(assert (=> b!4658313 m!5539141))

(declare-fun m!5539613 () Bool)

(assert (=> b!4658314 m!5539613))

(declare-fun m!5539615 () Bool)

(assert (=> b!4658315 m!5539615))

(declare-fun m!5539617 () Bool)

(assert (=> b!4658315 m!5539617))

(assert (=> b!4658315 m!5539617))

(declare-fun m!5539619 () Bool)

(assert (=> b!4658315 m!5539619))

(assert (=> b!4657863 d!1478468))

(declare-fun d!1478470 () Bool)

(assert (=> d!1478470 (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039))))

(declare-fun lt!1820605 () Unit!118852)

(declare-fun choose!32061 (List!52041 (_ BitVec 64)) Unit!118852)

(assert (=> d!1478470 (= lt!1820605 (choose!32061 (toList!5225 lt!1820042) lt!1820039))))

(declare-fun e!2906583 () Bool)

(assert (=> d!1478470 e!2906583))

(declare-fun res!1959091 () Bool)

(assert (=> d!1478470 (=> (not res!1959091) (not e!2906583))))

(assert (=> d!1478470 (= res!1959091 (isStrictlySorted!578 (toList!5225 lt!1820042)))))

(assert (=> d!1478470 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1520 (toList!5225 lt!1820042) lt!1820039) lt!1820605)))

(declare-fun b!4658332 () Bool)

(assert (=> b!4658332 (= e!2906583 (containsKey!2738 (toList!5225 lt!1820042) lt!1820039))))

(assert (= (and d!1478470 res!1959091) b!4658332))

(assert (=> d!1478470 m!5538893))

(assert (=> d!1478470 m!5538893))

(assert (=> d!1478470 m!5538895))

(declare-fun m!5539621 () Bool)

(assert (=> d!1478470 m!5539621))

(declare-fun m!5539623 () Bool)

(assert (=> d!1478470 m!5539623))

(assert (=> b!4658332 m!5538889))

(assert (=> b!4657890 d!1478470))

(declare-fun d!1478472 () Bool)

(declare-fun isEmpty!29016 (Option!11836) Bool)

(assert (=> d!1478472 (= (isDefined!9101 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039)) (not (isEmpty!29016 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039))))))

(declare-fun bs!1066426 () Bool)

(assert (= bs!1066426 d!1478472))

(assert (=> bs!1066426 m!5538893))

(declare-fun m!5539625 () Bool)

(assert (=> bs!1066426 m!5539625))

(assert (=> b!4657890 d!1478472))

(declare-fun b!4658350 () Bool)

(declare-fun e!2906591 () Option!11836)

(assert (=> b!4658350 (= e!2906591 None!11835)))

(declare-fun b!4658347 () Bool)

(declare-fun e!2906590 () Option!11836)

(assert (=> b!4658347 (= e!2906590 (Some!11835 (_2!29814 (h!58065 (toList!5225 lt!1820042)))))))

(declare-fun b!4658349 () Bool)

(assert (=> b!4658349 (= e!2906591 (getValueByKey!1618 (t!359157 (toList!5225 lt!1820042)) lt!1820039))))

(declare-fun b!4658348 () Bool)

(assert (=> b!4658348 (= e!2906590 e!2906591)))

(declare-fun c!797360 () Bool)

(assert (=> b!4658348 (= c!797360 (and ((_ is Cons!51917) (toList!5225 lt!1820042)) (not (= (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820039))))))

(declare-fun d!1478474 () Bool)

(declare-fun c!797359 () Bool)

(assert (=> d!1478474 (= c!797359 (and ((_ is Cons!51917) (toList!5225 lt!1820042)) (= (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820039)))))

(assert (=> d!1478474 (= (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039) e!2906590)))

(assert (= (and d!1478474 c!797359) b!4658347))

(assert (= (and d!1478474 (not c!797359)) b!4658348))

(assert (= (and b!4658348 c!797360) b!4658349))

(assert (= (and b!4658348 (not c!797360)) b!4658350))

(declare-fun m!5539627 () Bool)

(assert (=> b!4658349 m!5539627))

(assert (=> b!4657890 d!1478474))

(declare-fun d!1478476 () Bool)

(declare-fun isEmpty!29017 (Option!11835) Bool)

(assert (=> d!1478476 (= (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820033) key!4968)) (not (isEmpty!29017 (getValueByKey!1617 (toList!5226 lt!1820033) key!4968))))))

(declare-fun bs!1066427 () Bool)

(assert (= bs!1066427 d!1478476))

(assert (=> bs!1066427 m!5538861))

(declare-fun m!5539629 () Bool)

(assert (=> bs!1066427 m!5539629))

(assert (=> b!4657865 d!1478476))

(declare-fun b!4658372 () Bool)

(declare-fun e!2906601 () Option!11835)

(assert (=> b!4658372 (= e!2906601 (getValueByKey!1617 (t!359156 (toList!5226 lt!1820033)) key!4968))))

(declare-fun b!4658373 () Bool)

(assert (=> b!4658373 (= e!2906601 None!11834)))

(declare-fun b!4658370 () Bool)

(declare-fun e!2906600 () Option!11835)

(assert (=> b!4658370 (= e!2906600 (Some!11834 (_2!29813 (h!58064 (toList!5226 lt!1820033)))))))

(declare-fun b!4658371 () Bool)

(assert (=> b!4658371 (= e!2906600 e!2906601)))

(declare-fun c!797369 () Bool)

(assert (=> b!4658371 (= c!797369 (and ((_ is Cons!51916) (toList!5226 lt!1820033)) (not (= (_1!29813 (h!58064 (toList!5226 lt!1820033))) key!4968))))))

(declare-fun d!1478478 () Bool)

(declare-fun c!797368 () Bool)

(assert (=> d!1478478 (= c!797368 (and ((_ is Cons!51916) (toList!5226 lt!1820033)) (= (_1!29813 (h!58064 (toList!5226 lt!1820033))) key!4968)))))

(assert (=> d!1478478 (= (getValueByKey!1617 (toList!5226 lt!1820033) key!4968) e!2906600)))

(assert (= (and d!1478478 c!797368) b!4658370))

(assert (= (and d!1478478 (not c!797368)) b!4658371))

(assert (= (and b!4658371 c!797369) b!4658372))

(assert (= (and b!4658371 (not c!797369)) b!4658373))

(declare-fun m!5539631 () Bool)

(assert (=> b!4658372 m!5539631))

(assert (=> b!4657865 d!1478478))

(assert (=> b!4657892 d!1478472))

(assert (=> b!4657892 d!1478474))

(declare-fun d!1478480 () Bool)

(declare-fun res!1959105 () Bool)

(declare-fun e!2906606 () Bool)

(assert (=> d!1478480 (=> res!1959105 e!2906606)))

(assert (=> d!1478480 (= res!1959105 (or ((_ is Nil!51917) (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917)))) ((_ is Nil!51917) (t!359157 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917)))))))))

(assert (=> d!1478480 (= (isStrictlySorted!578 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917)))) e!2906606)))

(declare-fun b!4658378 () Bool)

(declare-fun e!2906607 () Bool)

(assert (=> b!4658378 (= e!2906606 e!2906607)))

(declare-fun res!1959106 () Bool)

(assert (=> b!4658378 (=> (not res!1959106) (not e!2906607))))

(assert (=> b!4658378 (= res!1959106 (bvslt (_1!29814 (h!58065 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917))))) (_1!29814 (h!58065 (t!359157 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917))))))))))

(declare-fun b!4658379 () Bool)

(assert (=> b!4658379 (= e!2906607 (isStrictlySorted!578 (t!359157 (toList!5225 (ListLongMap!3780 (Cons!51917 (tuple2!53041 hash!414 (t!359156 oldBucket!40)) Nil!51917))))))))

(assert (= (and d!1478480 (not res!1959105)) b!4658378))

(assert (= (and b!4658378 res!1959106) b!4658379))

(declare-fun m!5539657 () Bool)

(assert (=> b!4658379 m!5539657))

(assert (=> d!1478128 d!1478480))

(declare-fun d!1478484 () Bool)

(assert (=> d!1478484 (= (invariantList!1302 (toList!5226 lt!1820240)) (noDuplicatedKeys!355 (toList!5226 lt!1820240)))))

(declare-fun bs!1066435 () Bool)

(assert (= bs!1066435 d!1478484))

(declare-fun m!5539659 () Bool)

(assert (=> bs!1066435 m!5539659))

(assert (=> d!1478178 d!1478484))

(declare-fun d!1478486 () Bool)

(declare-fun res!1959109 () Bool)

(declare-fun e!2906610 () Bool)

(assert (=> d!1478486 (=> res!1959109 e!2906610)))

(assert (=> d!1478486 (= res!1959109 ((_ is Nil!51917) Nil!51917))))

(assert (=> d!1478486 (= (forall!11040 Nil!51917 lambda!199760) e!2906610)))

(declare-fun b!4658382 () Bool)

(declare-fun e!2906611 () Bool)

(assert (=> b!4658382 (= e!2906610 e!2906611)))

(declare-fun res!1959110 () Bool)

(assert (=> b!4658382 (=> (not res!1959110) (not e!2906611))))

(assert (=> b!4658382 (= res!1959110 (dynLambda!21600 lambda!199760 (h!58065 Nil!51917)))))

(declare-fun b!4658383 () Bool)

(assert (=> b!4658383 (= e!2906611 (forall!11040 (t!359157 Nil!51917) lambda!199760))))

(assert (= (and d!1478486 (not res!1959109)) b!4658382))

(assert (= (and b!4658382 res!1959110) b!4658383))

(declare-fun b_lambda!174545 () Bool)

(assert (=> (not b_lambda!174545) (not b!4658382)))

(declare-fun m!5539661 () Bool)

(assert (=> b!4658382 m!5539661))

(declare-fun m!5539663 () Bool)

(assert (=> b!4658383 m!5539663))

(assert (=> d!1478178 d!1478486))

(declare-fun d!1478488 () Bool)

(declare-fun res!1959119 () Bool)

(declare-fun e!2906620 () Bool)

(assert (=> d!1478488 (=> res!1959119 e!2906620)))

(assert (=> d!1478488 (= res!1959119 (and ((_ is Cons!51917) (toList!5225 lt!1820042)) (= (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820039)))))

(assert (=> d!1478488 (= (containsKey!2738 (toList!5225 lt!1820042) lt!1820039) e!2906620)))

(declare-fun b!4658392 () Bool)

(declare-fun e!2906621 () Bool)

(assert (=> b!4658392 (= e!2906620 e!2906621)))

(declare-fun res!1959120 () Bool)

(assert (=> b!4658392 (=> (not res!1959120) (not e!2906621))))

(assert (=> b!4658392 (= res!1959120 (and (or (not ((_ is Cons!51917) (toList!5225 lt!1820042))) (bvsle (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820039)) ((_ is Cons!51917) (toList!5225 lt!1820042)) (bvslt (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820039)))))

(declare-fun b!4658393 () Bool)

(assert (=> b!4658393 (= e!2906621 (containsKey!2738 (t!359157 (toList!5225 lt!1820042)) lt!1820039))))

(assert (= (and d!1478488 (not res!1959119)) b!4658392))

(assert (= (and b!4658392 res!1959120) b!4658393))

(declare-fun m!5539671 () Bool)

(assert (=> b!4658393 m!5539671))

(assert (=> d!1478206 d!1478488))

(declare-fun d!1478494 () Bool)

(declare-fun res!1959121 () Bool)

(declare-fun e!2906622 () Bool)

(assert (=> d!1478494 (=> res!1959121 e!2906622)))

(assert (=> d!1478494 (= res!1959121 ((_ is Nil!51916) oldBucket!40))))

(assert (=> d!1478494 (= (forall!11039 oldBucket!40 lambda!199763) e!2906622)))

(declare-fun b!4658394 () Bool)

(declare-fun e!2906623 () Bool)

(assert (=> b!4658394 (= e!2906622 e!2906623)))

(declare-fun res!1959122 () Bool)

(assert (=> b!4658394 (=> (not res!1959122) (not e!2906623))))

(assert (=> b!4658394 (= res!1959122 (dynLambda!21602 lambda!199763 (h!58064 oldBucket!40)))))

(declare-fun b!4658395 () Bool)

(assert (=> b!4658395 (= e!2906623 (forall!11039 (t!359156 oldBucket!40) lambda!199763))))

(assert (= (and d!1478494 (not res!1959121)) b!4658394))

(assert (= (and b!4658394 res!1959122) b!4658395))

(declare-fun b_lambda!174547 () Bool)

(assert (=> (not b_lambda!174547) (not b!4658394)))

(declare-fun m!5539673 () Bool)

(assert (=> b!4658394 m!5539673))

(declare-fun m!5539675 () Bool)

(assert (=> b!4658395 m!5539675))

(assert (=> d!1478190 d!1478494))

(declare-fun d!1478498 () Bool)

(assert (=> d!1478498 (isDefined!9100 (getValueByKey!1617 (toList!5226 lt!1820033) key!4968))))

(declare-fun lt!1820624 () Unit!118852)

(declare-fun choose!32062 (List!52040 K!13270) Unit!118852)

(assert (=> d!1478498 (= lt!1820624 (choose!32062 (toList!5226 lt!1820033) key!4968))))

(assert (=> d!1478498 (invariantList!1302 (toList!5226 lt!1820033))))

(assert (=> d!1478498 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (toList!5226 lt!1820033) key!4968) lt!1820624)))

(declare-fun bs!1066437 () Bool)

(assert (= bs!1066437 d!1478498))

(assert (=> bs!1066437 m!5538861))

(assert (=> bs!1066437 m!5538861))

(assert (=> bs!1066437 m!5538863))

(declare-fun m!5539687 () Bool)

(assert (=> bs!1066437 m!5539687))

(assert (=> bs!1066437 m!5539039))

(assert (=> b!4657866 d!1478498))

(assert (=> b!4657866 d!1478476))

(assert (=> b!4657866 d!1478478))

(declare-fun d!1478506 () Bool)

(assert (=> d!1478506 (contains!15068 (getKeysList!753 (toList!5226 lt!1820033)) key!4968)))

(declare-fun lt!1820627 () Unit!118852)

(declare-fun choose!32063 (List!52040 K!13270) Unit!118852)

(assert (=> d!1478506 (= lt!1820627 (choose!32063 (toList!5226 lt!1820033) key!4968))))

(assert (=> d!1478506 (invariantList!1302 (toList!5226 lt!1820033))))

(assert (=> d!1478506 (= (lemmaInListThenGetKeysListContains!748 (toList!5226 lt!1820033) key!4968) lt!1820627)))

(declare-fun bs!1066438 () Bool)

(assert (= bs!1066438 d!1478506))

(assert (=> bs!1066438 m!5538873))

(assert (=> bs!1066438 m!5538873))

(declare-fun m!5539689 () Bool)

(assert (=> bs!1066438 m!5539689))

(declare-fun m!5539691 () Bool)

(assert (=> bs!1066438 m!5539691))

(assert (=> bs!1066438 m!5539039))

(assert (=> b!4657866 d!1478506))

(declare-fun d!1478508 () Bool)

(declare-fun lt!1820628 () Bool)

(assert (=> d!1478508 (= lt!1820628 (select (content!9007 (keys!18398 lt!1820033)) key!4968))))

(declare-fun e!2906630 () Bool)

(assert (=> d!1478508 (= lt!1820628 e!2906630)))

(declare-fun res!1959130 () Bool)

(assert (=> d!1478508 (=> (not res!1959130) (not e!2906630))))

(assert (=> d!1478508 (= res!1959130 ((_ is Cons!51919) (keys!18398 lt!1820033)))))

(assert (=> d!1478508 (= (contains!15068 (keys!18398 lt!1820033) key!4968) lt!1820628)))

(declare-fun b!4658402 () Bool)

(declare-fun e!2906631 () Bool)

(assert (=> b!4658402 (= e!2906630 e!2906631)))

(declare-fun res!1959129 () Bool)

(assert (=> b!4658402 (=> res!1959129 e!2906631)))

(assert (=> b!4658402 (= res!1959129 (= (h!58069 (keys!18398 lt!1820033)) key!4968))))

(declare-fun b!4658403 () Bool)

(assert (=> b!4658403 (= e!2906631 (contains!15068 (t!359159 (keys!18398 lt!1820033)) key!4968))))

(assert (= (and d!1478508 res!1959130) b!4658402))

(assert (= (and b!4658402 (not res!1959129)) b!4658403))

(assert (=> d!1478508 m!5538855))

(declare-fun m!5539693 () Bool)

(assert (=> d!1478508 m!5539693))

(declare-fun m!5539695 () Bool)

(assert (=> d!1478508 m!5539695))

(declare-fun m!5539697 () Bool)

(assert (=> b!4658403 m!5539697))

(assert (=> b!4657868 d!1478508))

(assert (=> b!4657868 d!1478468))

(assert (=> b!4657895 d!1478222))

(declare-fun d!1478510 () Bool)

(declare-fun res!1959131 () Bool)

(declare-fun e!2906632 () Bool)

(assert (=> d!1478510 (=> res!1959131 e!2906632)))

(assert (=> d!1478510 (= res!1959131 (and ((_ is Cons!51916) (t!359156 oldBucket!40)) (= (_1!29813 (h!58064 (t!359156 oldBucket!40))) (_1!29813 (h!58064 oldBucket!40)))))))

(assert (=> d!1478510 (= (containsKey!2734 (t!359156 oldBucket!40) (_1!29813 (h!58064 oldBucket!40))) e!2906632)))

(declare-fun b!4658404 () Bool)

(declare-fun e!2906633 () Bool)

(assert (=> b!4658404 (= e!2906632 e!2906633)))

(declare-fun res!1959132 () Bool)

(assert (=> b!4658404 (=> (not res!1959132) (not e!2906633))))

(assert (=> b!4658404 (= res!1959132 ((_ is Cons!51916) (t!359156 oldBucket!40)))))

(declare-fun b!4658405 () Bool)

(assert (=> b!4658405 (= e!2906633 (containsKey!2734 (t!359156 (t!359156 oldBucket!40)) (_1!29813 (h!58064 oldBucket!40))))))

(assert (= (and d!1478510 (not res!1959131)) b!4658404))

(assert (= (and b!4658404 res!1959132) b!4658405))

(declare-fun m!5539699 () Bool)

(assert (=> b!4658405 m!5539699))

(assert (=> b!4657947 d!1478510))

(declare-fun d!1478512 () Bool)

(declare-fun res!1959133 () Bool)

(declare-fun e!2906634 () Bool)

(assert (=> d!1478512 (=> res!1959133 e!2906634)))

(assert (=> d!1478512 (= res!1959133 (not ((_ is Cons!51916) (t!359156 newBucket!224))))))

(assert (=> d!1478512 (= (noDuplicateKeys!1648 (t!359156 newBucket!224)) e!2906634)))

(declare-fun b!4658406 () Bool)

(declare-fun e!2906635 () Bool)

(assert (=> b!4658406 (= e!2906634 e!2906635)))

(declare-fun res!1959134 () Bool)

(assert (=> b!4658406 (=> (not res!1959134) (not e!2906635))))

(assert (=> b!4658406 (= res!1959134 (not (containsKey!2734 (t!359156 (t!359156 newBucket!224)) (_1!29813 (h!58064 (t!359156 newBucket!224))))))))

(declare-fun b!4658407 () Bool)

(assert (=> b!4658407 (= e!2906635 (noDuplicateKeys!1648 (t!359156 (t!359156 newBucket!224))))))

(assert (= (and d!1478512 (not res!1959133)) b!4658406))

(assert (= (and b!4658406 res!1959134) b!4658407))

(declare-fun m!5539701 () Bool)

(assert (=> b!4658406 m!5539701))

(declare-fun m!5539703 () Bool)

(assert (=> b!4658407 m!5539703))

(assert (=> b!4657879 d!1478512))

(assert (=> d!1478224 d!1478226))

(declare-fun d!1478514 () Bool)

(assert (=> d!1478514 (containsKey!2734 oldBucket!40 key!4968)))

(assert (=> d!1478514 true))

(declare-fun _$38!347 () Unit!118852)

(assert (=> d!1478514 (= (choose!32047 oldBucket!40 key!4968 hashF!1389) _$38!347)))

(declare-fun bs!1066439 () Bool)

(assert (= bs!1066439 d!1478514))

(assert (=> bs!1066439 m!5538603))

(assert (=> d!1478224 d!1478514))

(assert (=> d!1478224 d!1478232))

(assert (=> b!4657870 d!1478508))

(assert (=> b!4657870 d!1478468))

(declare-fun d!1478516 () Bool)

(assert (=> d!1478516 (= (isDefined!9097 lt!1820333) (not (isEmpty!29013 lt!1820333)))))

(declare-fun bs!1066440 () Bool)

(assert (= bs!1066440 d!1478516))

(assert (=> bs!1066440 m!5538933))

(assert (=> b!4657924 d!1478516))

(declare-fun d!1478518 () Bool)

(declare-fun res!1959135 () Bool)

(declare-fun e!2906636 () Bool)

(assert (=> d!1478518 (=> res!1959135 e!2906636)))

(assert (=> d!1478518 (= res!1959135 ((_ is Nil!51916) (ite c!797247 (toList!5226 lt!1820037) (t!359156 oldBucket!40))))))

(assert (=> d!1478518 (= (forall!11039 (ite c!797247 (toList!5226 lt!1820037) (t!359156 oldBucket!40)) (ite c!797247 lambda!199750 lambda!199754)) e!2906636)))

(declare-fun b!4658408 () Bool)

(declare-fun e!2906637 () Bool)

(assert (=> b!4658408 (= e!2906636 e!2906637)))

(declare-fun res!1959136 () Bool)

(assert (=> b!4658408 (=> (not res!1959136) (not e!2906637))))

(assert (=> b!4658408 (= res!1959136 (dynLambda!21602 (ite c!797247 lambda!199750 lambda!199754) (h!58064 (ite c!797247 (toList!5226 lt!1820037) (t!359156 oldBucket!40)))))))

(declare-fun b!4658409 () Bool)

(assert (=> b!4658409 (= e!2906637 (forall!11039 (t!359156 (ite c!797247 (toList!5226 lt!1820037) (t!359156 oldBucket!40))) (ite c!797247 lambda!199750 lambda!199754)))))

(assert (= (and d!1478518 (not res!1959135)) b!4658408))

(assert (= (and b!4658408 res!1959136) b!4658409))

(declare-fun b_lambda!174553 () Bool)

(assert (=> (not b_lambda!174553) (not b!4658408)))

(declare-fun m!5539705 () Bool)

(assert (=> b!4658408 m!5539705))

(declare-fun m!5539707 () Bool)

(assert (=> b!4658409 m!5539707))

(assert (=> bm!325471 d!1478518))

(declare-fun b!4658410 () Bool)

(declare-fun e!2906639 () Bool)

(declare-fun e!2906641 () Bool)

(assert (=> b!4658410 (= e!2906639 e!2906641)))

(declare-fun res!1959138 () Bool)

(assert (=> b!4658410 (=> (not res!1959138) (not e!2906641))))

(declare-fun lt!1820643 () Option!11832)

(assert (=> b!4658410 (= res!1959138 (isDefined!9097 lt!1820643))))

(declare-fun b!4658411 () Bool)

(declare-fun res!1959140 () Bool)

(assert (=> b!4658411 (=> (not res!1959140) (not e!2906641))))

(assert (=> b!4658411 (= res!1959140 (= (_1!29813 (get!17279 lt!1820643)) key!4968))))

(declare-fun b!4658412 () Bool)

(declare-fun e!2906642 () Option!11832)

(assert (=> b!4658412 (= e!2906642 (getPair!376 (t!359156 (t!359156 lt!1820044)) key!4968))))

(declare-fun b!4658413 () Bool)

(assert (=> b!4658413 (= e!2906642 None!11831)))

(declare-fun b!4658414 () Bool)

(declare-fun e!2906640 () Option!11832)

(assert (=> b!4658414 (= e!2906640 e!2906642)))

(declare-fun c!797370 () Bool)

(assert (=> b!4658414 (= c!797370 ((_ is Cons!51916) (t!359156 lt!1820044)))))

(declare-fun d!1478520 () Bool)

(assert (=> d!1478520 e!2906639))

(declare-fun res!1959139 () Bool)

(assert (=> d!1478520 (=> res!1959139 e!2906639)))

(declare-fun e!2906638 () Bool)

(assert (=> d!1478520 (= res!1959139 e!2906638)))

(declare-fun res!1959137 () Bool)

(assert (=> d!1478520 (=> (not res!1959137) (not e!2906638))))

(assert (=> d!1478520 (= res!1959137 (isEmpty!29013 lt!1820643))))

(assert (=> d!1478520 (= lt!1820643 e!2906640)))

(declare-fun c!797371 () Bool)

(assert (=> d!1478520 (= c!797371 (and ((_ is Cons!51916) (t!359156 lt!1820044)) (= (_1!29813 (h!58064 (t!359156 lt!1820044))) key!4968)))))

(assert (=> d!1478520 (noDuplicateKeys!1648 (t!359156 lt!1820044))))

(assert (=> d!1478520 (= (getPair!376 (t!359156 lt!1820044) key!4968) lt!1820643)))

(declare-fun b!4658415 () Bool)

(assert (=> b!4658415 (= e!2906641 (contains!15069 (t!359156 lt!1820044) (get!17279 lt!1820643)))))

(declare-fun b!4658416 () Bool)

(assert (=> b!4658416 (= e!2906640 (Some!11831 (h!58064 (t!359156 lt!1820044))))))

(declare-fun b!4658417 () Bool)

(assert (=> b!4658417 (= e!2906638 (not (containsKey!2734 (t!359156 lt!1820044) key!4968)))))

(assert (= (and d!1478520 c!797371) b!4658416))

(assert (= (and d!1478520 (not c!797371)) b!4658414))

(assert (= (and b!4658414 c!797370) b!4658412))

(assert (= (and b!4658414 (not c!797370)) b!4658413))

(assert (= (and d!1478520 res!1959137) b!4658417))

(assert (= (and d!1478520 (not res!1959139)) b!4658410))

(assert (= (and b!4658410 res!1959138) b!4658411))

(assert (= (and b!4658411 res!1959140) b!4658415))

(declare-fun m!5539709 () Bool)

(assert (=> d!1478520 m!5539709))

(declare-fun m!5539711 () Bool)

(assert (=> d!1478520 m!5539711))

(declare-fun m!5539713 () Bool)

(assert (=> b!4658411 m!5539713))

(assert (=> b!4658415 m!5539713))

(assert (=> b!4658415 m!5539713))

(declare-fun m!5539715 () Bool)

(assert (=> b!4658415 m!5539715))

(declare-fun m!5539717 () Bool)

(assert (=> b!4658412 m!5539717))

(declare-fun m!5539719 () Bool)

(assert (=> b!4658417 m!5539719))

(declare-fun m!5539721 () Bool)

(assert (=> b!4658410 m!5539721))

(assert (=> b!4657926 d!1478520))

(declare-fun d!1478522 () Bool)

(declare-fun res!1959141 () Bool)

(declare-fun e!2906643 () Bool)

(assert (=> d!1478522 (=> res!1959141 e!2906643)))

(assert (=> d!1478522 (= res!1959141 (and ((_ is Cons!51916) (t!359156 (t!359156 oldBucket!40))) (= (_1!29813 (h!58064 (t!359156 (t!359156 oldBucket!40)))) key!4968)))))

(assert (=> d!1478522 (= (containsKey!2734 (t!359156 (t!359156 oldBucket!40)) key!4968) e!2906643)))

(declare-fun b!4658418 () Bool)

(declare-fun e!2906644 () Bool)

(assert (=> b!4658418 (= e!2906643 e!2906644)))

(declare-fun res!1959142 () Bool)

(assert (=> b!4658418 (=> (not res!1959142) (not e!2906644))))

(assert (=> b!4658418 (= res!1959142 ((_ is Cons!51916) (t!359156 (t!359156 oldBucket!40))))))

(declare-fun b!4658419 () Bool)

(assert (=> b!4658419 (= e!2906644 (containsKey!2734 (t!359156 (t!359156 (t!359156 oldBucket!40))) key!4968))))

(assert (= (and d!1478522 (not res!1959141)) b!4658418))

(assert (= (and b!4658418 res!1959142) b!4658419))

(declare-fun m!5539723 () Bool)

(assert (=> b!4658419 m!5539723))

(assert (=> b!4657937 d!1478522))

(declare-fun d!1478524 () Bool)

(declare-fun res!1959143 () Bool)

(declare-fun e!2906645 () Bool)

(assert (=> d!1478524 (=> res!1959143 e!2906645)))

(assert (=> d!1478524 (= res!1959143 (and ((_ is Cons!51916) lt!1820291) (= (_1!29813 (h!58064 lt!1820291)) key!4968)))))

(assert (=> d!1478524 (= (containsKey!2734 lt!1820291 key!4968) e!2906645)))

(declare-fun b!4658420 () Bool)

(declare-fun e!2906646 () Bool)

(assert (=> b!4658420 (= e!2906645 e!2906646)))

(declare-fun res!1959144 () Bool)

(assert (=> b!4658420 (=> (not res!1959144) (not e!2906646))))

(assert (=> b!4658420 (= res!1959144 ((_ is Cons!51916) lt!1820291))))

(declare-fun b!4658421 () Bool)

(assert (=> b!4658421 (= e!2906646 (containsKey!2734 (t!359156 lt!1820291) key!4968))))

(assert (= (and d!1478524 (not res!1959143)) b!4658420))

(assert (= (and b!4658420 res!1959144) b!4658421))

(declare-fun m!5539725 () Bool)

(assert (=> b!4658421 m!5539725))

(assert (=> d!1478204 d!1478524))

(assert (=> d!1478204 d!1478232))

(declare-fun d!1478526 () Bool)

(assert (not d!1478526))

(assert (=> b!4657802 d!1478526))

(declare-fun d!1478528 () Bool)

(assert (not d!1478528))

(assert (=> b!4657802 d!1478528))

(declare-fun b!4658424 () Bool)

(declare-fun e!2906647 () List!52040)

(assert (=> b!4658424 (= e!2906647 (Cons!51916 (h!58064 (t!359156 (tail!8251 oldBucket!40))) (removePairForKey!1271 (t!359156 (t!359156 (tail!8251 oldBucket!40))) key!4968)))))

(declare-fun b!4658425 () Bool)

(assert (=> b!4658425 (= e!2906647 Nil!51916)))

(declare-fun b!4658423 () Bool)

(declare-fun e!2906648 () List!52040)

(assert (=> b!4658423 (= e!2906648 e!2906647)))

(declare-fun c!797372 () Bool)

(assert (=> b!4658423 (= c!797372 ((_ is Cons!51916) (t!359156 (tail!8251 oldBucket!40))))))

(declare-fun d!1478530 () Bool)

(declare-fun lt!1820651 () List!52040)

(assert (=> d!1478530 (not (containsKey!2734 lt!1820651 key!4968))))

(assert (=> d!1478530 (= lt!1820651 e!2906648)))

(declare-fun c!797373 () Bool)

(assert (=> d!1478530 (= c!797373 (and ((_ is Cons!51916) (t!359156 (tail!8251 oldBucket!40))) (= (_1!29813 (h!58064 (t!359156 (tail!8251 oldBucket!40)))) key!4968)))))

(assert (=> d!1478530 (noDuplicateKeys!1648 (t!359156 (tail!8251 oldBucket!40)))))

(assert (=> d!1478530 (= (removePairForKey!1271 (t!359156 (tail!8251 oldBucket!40)) key!4968) lt!1820651)))

(declare-fun b!4658422 () Bool)

(assert (=> b!4658422 (= e!2906648 (t!359156 (t!359156 (tail!8251 oldBucket!40))))))

(assert (= (and d!1478530 c!797373) b!4658422))

(assert (= (and d!1478530 (not c!797373)) b!4658423))

(assert (= (and b!4658423 c!797372) b!4658424))

(assert (= (and b!4658423 (not c!797372)) b!4658425))

(declare-fun m!5539727 () Bool)

(assert (=> b!4658424 m!5539727))

(declare-fun m!5539729 () Bool)

(assert (=> d!1478530 m!5539729))

(assert (=> d!1478530 m!5539023))

(assert (=> b!4657671 d!1478530))

(declare-fun d!1478532 () Bool)

(assert (=> d!1478532 (= (get!17278 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039)) (v!46121 (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820039)))))

(assert (=> d!1478208 d!1478532))

(assert (=> d!1478208 d!1478474))

(declare-fun d!1478534 () Bool)

(declare-fun res!1959145 () Bool)

(declare-fun e!2906649 () Bool)

(assert (=> d!1478534 (=> res!1959145 e!2906649)))

(assert (=> d!1478534 (= res!1959145 ((_ is Nil!51916) newBucket!224))))

(assert (=> d!1478534 (= (forall!11039 newBucket!224 lambda!199776) e!2906649)))

(declare-fun b!4658426 () Bool)

(declare-fun e!2906650 () Bool)

(assert (=> b!4658426 (= e!2906649 e!2906650)))

(declare-fun res!1959146 () Bool)

(assert (=> b!4658426 (=> (not res!1959146) (not e!2906650))))

(assert (=> b!4658426 (= res!1959146 (dynLambda!21602 lambda!199776 (h!58064 newBucket!224)))))

(declare-fun b!4658427 () Bool)

(assert (=> b!4658427 (= e!2906650 (forall!11039 (t!359156 newBucket!224) lambda!199776))))

(assert (= (and d!1478534 (not res!1959145)) b!4658426))

(assert (= (and b!4658426 res!1959146) b!4658427))

(declare-fun b_lambda!174555 () Bool)

(assert (=> (not b_lambda!174555) (not b!4658426)))

(declare-fun m!5539731 () Bool)

(assert (=> b!4658426 m!5539731))

(declare-fun m!5539733 () Bool)

(assert (=> b!4658427 m!5539733))

(assert (=> d!1478230 d!1478534))

(declare-fun bs!1066452 () Bool)

(declare-fun d!1478536 () Bool)

(assert (= bs!1066452 (and d!1478536 d!1478200)))

(declare-fun lambda!199854 () Int)

(assert (=> bs!1066452 (not (= lambda!199854 lambda!199765))))

(declare-fun bs!1066453 () Bool)

(assert (= bs!1066453 (and d!1478536 b!4657636)))

(assert (=> bs!1066453 (not (= lambda!199854 lambda!199676))))

(declare-fun bs!1066454 () Bool)

(assert (= bs!1066454 (and d!1478536 d!1478178)))

(assert (=> bs!1066454 (not (= lambda!199854 lambda!199760))))

(declare-fun bs!1066455 () Bool)

(assert (= bs!1066455 (and d!1478536 d!1478416)))

(assert (=> bs!1066455 (not (= lambda!199854 lambda!199830))))

(declare-fun bs!1066456 () Bool)

(assert (= bs!1066456 (and d!1478536 d!1478228)))

(assert (=> bs!1066456 (not (= lambda!199854 lambda!199775))))

(declare-fun bs!1066457 () Bool)

(assert (= bs!1066457 (and d!1478536 d!1478212)))

(assert (=> bs!1066457 (not (= lambda!199854 lambda!199772))))

(assert (=> d!1478536 true))

(assert (=> d!1478536 (= (allKeysSameHashInMap!1604 lt!1820042 hashF!1389) (forall!11040 (toList!5225 lt!1820042) lambda!199854))))

(declare-fun bs!1066460 () Bool)

(assert (= bs!1066460 d!1478536))

(declare-fun m!5539755 () Bool)

(assert (=> bs!1066460 m!5539755))

(assert (=> b!4657904 d!1478536))

(declare-fun d!1478552 () Bool)

(declare-fun res!1959153 () Bool)

(declare-fun e!2906659 () Bool)

(assert (=> d!1478552 (=> res!1959153 e!2906659)))

(assert (=> d!1478552 (= res!1959153 ((_ is Nil!51916) oldBucket!40))))

(assert (=> d!1478552 (= (forall!11039 oldBucket!40 lambda!199756) e!2906659)))

(declare-fun b!4658438 () Bool)

(declare-fun e!2906660 () Bool)

(assert (=> b!4658438 (= e!2906659 e!2906660)))

(declare-fun res!1959154 () Bool)

(assert (=> b!4658438 (=> (not res!1959154) (not e!2906660))))

(assert (=> b!4658438 (= res!1959154 (dynLambda!21602 lambda!199756 (h!58064 oldBucket!40)))))

(declare-fun b!4658439 () Bool)

(assert (=> b!4658439 (= e!2906660 (forall!11039 (t!359156 oldBucket!40) lambda!199756))))

(assert (= (and d!1478552 (not res!1959153)) b!4658438))

(assert (= (and b!4658438 res!1959154) b!4658439))

(declare-fun b_lambda!174591 () Bool)

(assert (=> (not b_lambda!174591) (not b!4658438)))

(declare-fun m!5539765 () Bool)

(assert (=> b!4658438 m!5539765))

(declare-fun m!5539767 () Bool)

(assert (=> b!4658439 m!5539767))

(assert (=> d!1478142 d!1478552))

(assert (=> d!1478142 d!1478232))

(declare-fun d!1478562 () Bool)

(assert (=> d!1478562 (= (isEmpty!29013 lt!1820333) (not ((_ is Some!11831) lt!1820333)))))

(assert (=> d!1478214 d!1478562))

(declare-fun d!1478566 () Bool)

(declare-fun res!1959155 () Bool)

(declare-fun e!2906661 () Bool)

(assert (=> d!1478566 (=> res!1959155 e!2906661)))

(assert (=> d!1478566 (= res!1959155 (not ((_ is Cons!51916) lt!1820044)))))

(assert (=> d!1478566 (= (noDuplicateKeys!1648 lt!1820044) e!2906661)))

(declare-fun b!4658440 () Bool)

(declare-fun e!2906662 () Bool)

(assert (=> b!4658440 (= e!2906661 e!2906662)))

(declare-fun res!1959156 () Bool)

(assert (=> b!4658440 (=> (not res!1959156) (not e!2906662))))

(assert (=> b!4658440 (= res!1959156 (not (containsKey!2734 (t!359156 lt!1820044) (_1!29813 (h!58064 lt!1820044)))))))

(declare-fun b!4658441 () Bool)

(assert (=> b!4658441 (= e!2906662 (noDuplicateKeys!1648 (t!359156 lt!1820044)))))

(assert (= (and d!1478566 (not res!1959155)) b!4658440))

(assert (= (and b!4658440 res!1959156) b!4658441))

(declare-fun m!5539771 () Bool)

(assert (=> b!4658440 m!5539771))

(assert (=> b!4658441 m!5539711))

(assert (=> d!1478214 d!1478566))

(assert (=> d!1478192 d!1478268))

(declare-fun d!1478574 () Bool)

(declare-fun res!1959157 () Bool)

(declare-fun e!2906663 () Bool)

(assert (=> d!1478574 (=> res!1959157 e!2906663)))

(assert (=> d!1478574 (= res!1959157 (and ((_ is Cons!51916) lt!1820044) (= (_1!29813 (h!58064 lt!1820044)) key!4968)))))

(assert (=> d!1478574 (= (containsKey!2734 lt!1820044 key!4968) e!2906663)))

(declare-fun b!4658442 () Bool)

(declare-fun e!2906664 () Bool)

(assert (=> b!4658442 (= e!2906663 e!2906664)))

(declare-fun res!1959158 () Bool)

(assert (=> b!4658442 (=> (not res!1959158) (not e!2906664))))

(assert (=> b!4658442 (= res!1959158 ((_ is Cons!51916) lt!1820044))))

(declare-fun b!4658443 () Bool)

(assert (=> b!4658443 (= e!2906664 (containsKey!2734 (t!359156 lt!1820044) key!4968))))

(assert (= (and d!1478574 (not res!1959157)) b!4658442))

(assert (= (and b!4658442 res!1959158) b!4658443))

(assert (=> b!4658443 m!5539719))

(assert (=> b!4657931 d!1478574))

(declare-fun d!1478582 () Bool)

(declare-fun res!1959159 () Bool)

(declare-fun e!2906665 () Bool)

(assert (=> d!1478582 (=> res!1959159 e!2906665)))

(assert (=> d!1478582 (= res!1959159 ((_ is Nil!51916) (toList!5226 lt!1820037)))))

(assert (=> d!1478582 (= (forall!11039 (toList!5226 lt!1820037) lambda!199756) e!2906665)))

(declare-fun b!4658444 () Bool)

(declare-fun e!2906666 () Bool)

(assert (=> b!4658444 (= e!2906665 e!2906666)))

(declare-fun res!1959160 () Bool)

(assert (=> b!4658444 (=> (not res!1959160) (not e!2906666))))

(assert (=> b!4658444 (= res!1959160 (dynLambda!21602 lambda!199756 (h!58064 (toList!5226 lt!1820037))))))

(declare-fun b!4658445 () Bool)

(assert (=> b!4658445 (= e!2906666 (forall!11039 (t!359156 (toList!5226 lt!1820037)) lambda!199756))))

(assert (= (and d!1478582 (not res!1959159)) b!4658444))

(assert (= (and b!4658444 res!1959160) b!4658445))

(declare-fun b_lambda!174593 () Bool)

(assert (=> (not b_lambda!174593) (not b!4658444)))

(declare-fun m!5539783 () Bool)

(assert (=> b!4658444 m!5539783))

(declare-fun m!5539785 () Bool)

(assert (=> b!4658445 m!5539785))

(assert (=> b!4657776 d!1478582))

(declare-fun bs!1066473 () Bool)

(declare-fun b!4658449 () Bool)

(assert (= bs!1066473 (and b!4658449 b!4657775)))

(declare-fun lambda!199855 () Int)

(assert (=> bs!1066473 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199855 lambda!199750))))

(declare-fun bs!1066474 () Bool)

(assert (= bs!1066474 (and b!4658449 b!4657774)))

(assert (=> bs!1066474 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820205) (= lambda!199855 lambda!199754))))

(declare-fun bs!1066475 () Bool)

(assert (= bs!1066475 (and b!4658449 d!1478142)))

(assert (=> bs!1066475 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820216) (= lambda!199855 lambda!199756))))

(declare-fun bs!1066476 () Bool)

(assert (= bs!1066476 (and b!4658449 b!4658207)))

(assert (=> bs!1066476 (= (= (extractMap!1704 (t!359157 lt!1820045)) (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199855 lambda!199814))))

(declare-fun bs!1066477 () Bool)

(assert (= bs!1066477 (and b!4658449 b!4658206)))

(assert (=> bs!1066477 (= (= (extractMap!1704 (t!359157 lt!1820045)) (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199855 lambda!199815))))

(assert (=> bs!1066474 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199855 lambda!199753))))

(declare-fun bs!1066478 () Bool)

(assert (= bs!1066478 (and b!4658449 d!1478392)))

(assert (=> bs!1066478 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820205) (= lambda!199855 lambda!199825))))

(assert (=> bs!1066477 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820497) (= lambda!199855 lambda!199816))))

(declare-fun bs!1066479 () Bool)

(assert (= bs!1066479 (and b!4658449 d!1478376)))

(assert (=> bs!1066479 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820508) (= lambda!199855 lambda!199817))))

(declare-fun bs!1066480 () Bool)

(assert (= bs!1066480 (and b!4658449 d!1478230)))

(assert (=> bs!1066480 (not (= lambda!199855 lambda!199776))))

(declare-fun bs!1066481 () Bool)

(assert (= bs!1066481 (and b!4658449 d!1478190)))

(assert (=> bs!1066481 (not (= lambda!199855 lambda!199763))))

(declare-fun bs!1066482 () Bool)

(assert (= bs!1066482 (and b!4658449 d!1478308)))

(assert (=> bs!1066482 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199855 lambda!199809))))

(assert (=> b!4658449 true))

(declare-fun bs!1066483 () Bool)

(declare-fun b!4658448 () Bool)

(assert (= bs!1066483 (and b!4658448 b!4657775)))

(declare-fun lambda!199856 () Int)

(assert (=> bs!1066483 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199856 lambda!199750))))

(declare-fun bs!1066484 () Bool)

(assert (= bs!1066484 (and b!4658448 b!4657774)))

(assert (=> bs!1066484 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820205) (= lambda!199856 lambda!199754))))

(declare-fun bs!1066485 () Bool)

(assert (= bs!1066485 (and b!4658448 d!1478142)))

(assert (=> bs!1066485 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820216) (= lambda!199856 lambda!199756))))

(declare-fun bs!1066486 () Bool)

(assert (= bs!1066486 (and b!4658448 b!4658449)))

(assert (=> bs!1066486 (= lambda!199856 lambda!199855)))

(declare-fun bs!1066487 () Bool)

(assert (= bs!1066487 (and b!4658448 b!4658207)))

(assert (=> bs!1066487 (= (= (extractMap!1704 (t!359157 lt!1820045)) (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199856 lambda!199814))))

(declare-fun bs!1066488 () Bool)

(assert (= bs!1066488 (and b!4658448 b!4658206)))

(assert (=> bs!1066488 (= (= (extractMap!1704 (t!359157 lt!1820045)) (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199856 lambda!199815))))

(assert (=> bs!1066484 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199856 lambda!199753))))

(declare-fun bs!1066489 () Bool)

(assert (= bs!1066489 (and b!4658448 d!1478392)))

(assert (=> bs!1066489 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820205) (= lambda!199856 lambda!199825))))

(assert (=> bs!1066488 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820497) (= lambda!199856 lambda!199816))))

(declare-fun bs!1066490 () Bool)

(assert (= bs!1066490 (and b!4658448 d!1478376)))

(assert (=> bs!1066490 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820508) (= lambda!199856 lambda!199817))))

(declare-fun bs!1066491 () Bool)

(assert (= bs!1066491 (and b!4658448 d!1478230)))

(assert (=> bs!1066491 (not (= lambda!199856 lambda!199776))))

(declare-fun bs!1066492 () Bool)

(assert (= bs!1066492 (and b!4658448 d!1478190)))

(assert (=> bs!1066492 (not (= lambda!199856 lambda!199763))))

(declare-fun bs!1066493 () Bool)

(assert (= bs!1066493 (and b!4658448 d!1478308)))

(assert (=> bs!1066493 (= (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820037) (= lambda!199856 lambda!199809))))

(assert (=> b!4658448 true))

(declare-fun lambda!199857 () Int)

(declare-fun lt!1820660 () ListMap!4565)

(assert (=> bs!1066483 (= (= lt!1820660 lt!1820037) (= lambda!199857 lambda!199750))))

(assert (=> b!4658448 (= (= lt!1820660 (extractMap!1704 (t!359157 lt!1820045))) (= lambda!199857 lambda!199856))))

(assert (=> bs!1066484 (= (= lt!1820660 lt!1820205) (= lambda!199857 lambda!199754))))

(assert (=> bs!1066485 (= (= lt!1820660 lt!1820216) (= lambda!199857 lambda!199756))))

(assert (=> bs!1066486 (= (= lt!1820660 (extractMap!1704 (t!359157 lt!1820045))) (= lambda!199857 lambda!199855))))

(assert (=> bs!1066487 (= (= lt!1820660 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199857 lambda!199814))))

(assert (=> bs!1066488 (= (= lt!1820660 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199857 lambda!199815))))

(assert (=> bs!1066484 (= (= lt!1820660 lt!1820037) (= lambda!199857 lambda!199753))))

(assert (=> bs!1066489 (= (= lt!1820660 lt!1820205) (= lambda!199857 lambda!199825))))

(assert (=> bs!1066488 (= (= lt!1820660 lt!1820497) (= lambda!199857 lambda!199816))))

(assert (=> bs!1066490 (= (= lt!1820660 lt!1820508) (= lambda!199857 lambda!199817))))

(assert (=> bs!1066491 (not (= lambda!199857 lambda!199776))))

(assert (=> bs!1066492 (not (= lambda!199857 lambda!199763))))

(assert (=> bs!1066493 (= (= lt!1820660 lt!1820037) (= lambda!199857 lambda!199809))))

(assert (=> b!4658448 true))

(declare-fun bs!1066494 () Bool)

(declare-fun d!1478586 () Bool)

(assert (= bs!1066494 (and d!1478586 b!4657775)))

(declare-fun lt!1820671 () ListMap!4565)

(declare-fun lambda!199858 () Int)

(assert (=> bs!1066494 (= (= lt!1820671 lt!1820037) (= lambda!199858 lambda!199750))))

(declare-fun bs!1066495 () Bool)

(assert (= bs!1066495 (and d!1478586 b!4658448)))

(assert (=> bs!1066495 (= (= lt!1820671 (extractMap!1704 (t!359157 lt!1820045))) (= lambda!199858 lambda!199856))))

(declare-fun bs!1066496 () Bool)

(assert (= bs!1066496 (and d!1478586 b!4657774)))

(assert (=> bs!1066496 (= (= lt!1820671 lt!1820205) (= lambda!199858 lambda!199754))))

(declare-fun bs!1066497 () Bool)

(assert (= bs!1066497 (and d!1478586 d!1478142)))

(assert (=> bs!1066497 (= (= lt!1820671 lt!1820216) (= lambda!199858 lambda!199756))))

(declare-fun bs!1066498 () Bool)

(assert (= bs!1066498 (and d!1478586 b!4658449)))

(assert (=> bs!1066498 (= (= lt!1820671 (extractMap!1704 (t!359157 lt!1820045))) (= lambda!199858 lambda!199855))))

(declare-fun bs!1066499 () Bool)

(assert (= bs!1066499 (and d!1478586 b!4658207)))

(assert (=> bs!1066499 (= (= lt!1820671 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199858 lambda!199814))))

(declare-fun bs!1066500 () Bool)

(assert (= bs!1066500 (and d!1478586 b!4658206)))

(assert (=> bs!1066500 (= (= lt!1820671 (+!1988 lt!1820037 (h!58064 oldBucket!40))) (= lambda!199858 lambda!199815))))

(assert (=> bs!1066496 (= (= lt!1820671 lt!1820037) (= lambda!199858 lambda!199753))))

(assert (=> bs!1066495 (= (= lt!1820671 lt!1820660) (= lambda!199858 lambda!199857))))

(declare-fun bs!1066501 () Bool)

(assert (= bs!1066501 (and d!1478586 d!1478392)))

(assert (=> bs!1066501 (= (= lt!1820671 lt!1820205) (= lambda!199858 lambda!199825))))

(assert (=> bs!1066500 (= (= lt!1820671 lt!1820497) (= lambda!199858 lambda!199816))))

(declare-fun bs!1066502 () Bool)

(assert (= bs!1066502 (and d!1478586 d!1478376)))

(assert (=> bs!1066502 (= (= lt!1820671 lt!1820508) (= lambda!199858 lambda!199817))))

(declare-fun bs!1066503 () Bool)

(assert (= bs!1066503 (and d!1478586 d!1478230)))

(assert (=> bs!1066503 (not (= lambda!199858 lambda!199776))))

(declare-fun bs!1066504 () Bool)

(assert (= bs!1066504 (and d!1478586 d!1478190)))

(assert (=> bs!1066504 (not (= lambda!199858 lambda!199763))))

(declare-fun bs!1066505 () Bool)

(assert (= bs!1066505 (and d!1478586 d!1478308)))

(assert (=> bs!1066505 (= (= lt!1820671 lt!1820037) (= lambda!199858 lambda!199809))))

(assert (=> d!1478586 true))

(declare-fun bm!325493 () Bool)

(declare-fun call!325500 () Unit!118852)

(assert (=> bm!325493 (= call!325500 (lemmaContainsAllItsOwnKeys!602 (extractMap!1704 (t!359157 lt!1820045))))))

(declare-fun c!797374 () Bool)

(declare-fun bm!325494 () Bool)

(declare-fun call!325498 () Bool)

(assert (=> bm!325494 (= call!325498 (forall!11039 (ite c!797374 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) (t!359156 (_2!29814 (h!58065 lt!1820045)))) (ite c!797374 lambda!199855 lambda!199857)))))

(declare-fun b!4658446 () Bool)

(declare-fun e!2906668 () Bool)

(assert (=> b!4658446 (= e!2906668 (invariantList!1302 (toList!5226 lt!1820671)))))

(declare-fun b!4658447 () Bool)

(declare-fun e!2906667 () Bool)

(declare-fun call!325499 () Bool)

(assert (=> b!4658447 (= e!2906667 call!325499)))

(assert (=> d!1478586 e!2906668))

(declare-fun res!1959163 () Bool)

(assert (=> d!1478586 (=> (not res!1959163) (not e!2906668))))

(assert (=> d!1478586 (= res!1959163 (forall!11039 (_2!29814 (h!58065 lt!1820045)) lambda!199858))))

(declare-fun e!2906669 () ListMap!4565)

(assert (=> d!1478586 (= lt!1820671 e!2906669)))

(assert (=> d!1478586 (= c!797374 ((_ is Nil!51916) (_2!29814 (h!58065 lt!1820045))))))

(assert (=> d!1478586 (noDuplicateKeys!1648 (_2!29814 (h!58065 lt!1820045)))))

(assert (=> d!1478586 (= (addToMapMapFromBucket!1105 (_2!29814 (h!58065 lt!1820045)) (extractMap!1704 (t!359157 lt!1820045))) lt!1820671)))

(assert (=> b!4658448 (= e!2906669 lt!1820660)))

(declare-fun lt!1820653 () ListMap!4565)

(assert (=> b!4658448 (= lt!1820653 (+!1988 (extractMap!1704 (t!359157 lt!1820045)) (h!58064 (_2!29814 (h!58065 lt!1820045)))))))

(assert (=> b!4658448 (= lt!1820660 (addToMapMapFromBucket!1105 (t!359156 (_2!29814 (h!58065 lt!1820045))) (+!1988 (extractMap!1704 (t!359157 lt!1820045)) (h!58064 (_2!29814 (h!58065 lt!1820045))))))))

(declare-fun lt!1820669 () Unit!118852)

(assert (=> b!4658448 (= lt!1820669 call!325500)))

(assert (=> b!4658448 (forall!11039 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) lambda!199856)))

(declare-fun lt!1820668 () Unit!118852)

(assert (=> b!4658448 (= lt!1820668 lt!1820669)))

(assert (=> b!4658448 (forall!11039 (toList!5226 lt!1820653) lambda!199857)))

(declare-fun lt!1820654 () Unit!118852)

(declare-fun Unit!118933 () Unit!118852)

(assert (=> b!4658448 (= lt!1820654 Unit!118933)))

(assert (=> b!4658448 call!325498))

(declare-fun lt!1820672 () Unit!118852)

(declare-fun Unit!118934 () Unit!118852)

(assert (=> b!4658448 (= lt!1820672 Unit!118934)))

(declare-fun lt!1820661 () Unit!118852)

(declare-fun Unit!118935 () Unit!118852)

(assert (=> b!4658448 (= lt!1820661 Unit!118935)))

(declare-fun lt!1820658 () Unit!118852)

(assert (=> b!4658448 (= lt!1820658 (forallContained!3240 (toList!5226 lt!1820653) lambda!199857 (h!58064 (_2!29814 (h!58065 lt!1820045)))))))

(assert (=> b!4658448 (contains!15065 lt!1820653 (_1!29813 (h!58064 (_2!29814 (h!58065 lt!1820045)))))))

(declare-fun lt!1820663 () Unit!118852)

(declare-fun Unit!118936 () Unit!118852)

(assert (=> b!4658448 (= lt!1820663 Unit!118936)))

(assert (=> b!4658448 (contains!15065 lt!1820660 (_1!29813 (h!58064 (_2!29814 (h!58065 lt!1820045)))))))

(declare-fun lt!1820665 () Unit!118852)

(declare-fun Unit!118937 () Unit!118852)

(assert (=> b!4658448 (= lt!1820665 Unit!118937)))

(assert (=> b!4658448 (forall!11039 (_2!29814 (h!58065 lt!1820045)) lambda!199857)))

(declare-fun lt!1820673 () Unit!118852)

(declare-fun Unit!118938 () Unit!118852)

(assert (=> b!4658448 (= lt!1820673 Unit!118938)))

(assert (=> b!4658448 (forall!11039 (toList!5226 lt!1820653) lambda!199857)))

(declare-fun lt!1820657 () Unit!118852)

(declare-fun Unit!118939 () Unit!118852)

(assert (=> b!4658448 (= lt!1820657 Unit!118939)))

(declare-fun lt!1820664 () Unit!118852)

(declare-fun Unit!118940 () Unit!118852)

(assert (=> b!4658448 (= lt!1820664 Unit!118940)))

(declare-fun lt!1820656 () Unit!118852)

(assert (=> b!4658448 (= lt!1820656 (addForallContainsKeyThenBeforeAdding!601 (extractMap!1704 (t!359157 lt!1820045)) lt!1820660 (_1!29813 (h!58064 (_2!29814 (h!58065 lt!1820045)))) (_2!29813 (h!58064 (_2!29814 (h!58065 lt!1820045))))))))

(assert (=> b!4658448 (forall!11039 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) lambda!199857)))

(declare-fun lt!1820659 () Unit!118852)

(assert (=> b!4658448 (= lt!1820659 lt!1820656)))

(assert (=> b!4658448 (forall!11039 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) lambda!199857)))

(declare-fun lt!1820667 () Unit!118852)

(declare-fun Unit!118941 () Unit!118852)

(assert (=> b!4658448 (= lt!1820667 Unit!118941)))

(declare-fun res!1959161 () Bool)

(assert (=> b!4658448 (= res!1959161 (forall!11039 (_2!29814 (h!58065 lt!1820045)) lambda!199857))))

(assert (=> b!4658448 (=> (not res!1959161) (not e!2906667))))

(assert (=> b!4658448 e!2906667))

(declare-fun lt!1820666 () Unit!118852)

(declare-fun Unit!118942 () Unit!118852)

(assert (=> b!4658448 (= lt!1820666 Unit!118942)))

(assert (=> b!4658449 (= e!2906669 (extractMap!1704 (t!359157 lt!1820045)))))

(declare-fun lt!1820662 () Unit!118852)

(assert (=> b!4658449 (= lt!1820662 call!325500)))

(assert (=> b!4658449 call!325498))

(declare-fun lt!1820655 () Unit!118852)

(assert (=> b!4658449 (= lt!1820655 lt!1820662)))

(assert (=> b!4658449 call!325499))

(declare-fun lt!1820670 () Unit!118852)

(declare-fun Unit!118943 () Unit!118852)

(assert (=> b!4658449 (= lt!1820670 Unit!118943)))

(declare-fun b!4658450 () Bool)

(declare-fun res!1959162 () Bool)

(assert (=> b!4658450 (=> (not res!1959162) (not e!2906668))))

(assert (=> b!4658450 (= res!1959162 (forall!11039 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) lambda!199858))))

(declare-fun bm!325495 () Bool)

(assert (=> bm!325495 (= call!325499 (forall!11039 (toList!5226 (extractMap!1704 (t!359157 lt!1820045))) (ite c!797374 lambda!199855 lambda!199857)))))

(assert (= (and d!1478586 c!797374) b!4658449))

(assert (= (and d!1478586 (not c!797374)) b!4658448))

(assert (= (and b!4658448 res!1959161) b!4658447))

(assert (= (or b!4658449 b!4658448) bm!325493))

(assert (= (or b!4658449 b!4658447) bm!325495))

(assert (= (or b!4658449 b!4658448) bm!325494))

(assert (= (and d!1478586 res!1959163) b!4658450))

(assert (= (and b!4658450 res!1959162) b!4658446))

(declare-fun m!5539787 () Bool)

(assert (=> bm!325494 m!5539787))

(declare-fun m!5539789 () Bool)

(assert (=> b!4658446 m!5539789))

(declare-fun m!5539791 () Bool)

(assert (=> bm!325495 m!5539791))

(assert (=> bm!325493 m!5538879))

(declare-fun m!5539793 () Bool)

(assert (=> bm!325493 m!5539793))

(assert (=> b!4658448 m!5538879))

(declare-fun m!5539795 () Bool)

(assert (=> b!4658448 m!5539795))

(declare-fun m!5539797 () Bool)

(assert (=> b!4658448 m!5539797))

(declare-fun m!5539799 () Bool)

(assert (=> b!4658448 m!5539799))

(assert (=> b!4658448 m!5539799))

(declare-fun m!5539801 () Bool)

(assert (=> b!4658448 m!5539801))

(declare-fun m!5539803 () Bool)

(assert (=> b!4658448 m!5539803))

(assert (=> b!4658448 m!5539795))

(declare-fun m!5539805 () Bool)

(assert (=> b!4658448 m!5539805))

(declare-fun m!5539807 () Bool)

(assert (=> b!4658448 m!5539807))

(assert (=> b!4658448 m!5539801))

(declare-fun m!5539809 () Bool)

(assert (=> b!4658448 m!5539809))

(declare-fun m!5539811 () Bool)

(assert (=> b!4658448 m!5539811))

(assert (=> b!4658448 m!5539811))

(assert (=> b!4658448 m!5538879))

(declare-fun m!5539813 () Bool)

(assert (=> b!4658448 m!5539813))

(declare-fun m!5539815 () Bool)

(assert (=> d!1478586 m!5539815))

(declare-fun m!5539817 () Bool)

(assert (=> d!1478586 m!5539817))

(declare-fun m!5539819 () Bool)

(assert (=> b!4658450 m!5539819))

(assert (=> b!4657872 d!1478586))

(declare-fun bs!1066506 () Bool)

(declare-fun d!1478588 () Bool)

(assert (= bs!1066506 (and d!1478588 d!1478200)))

(declare-fun lambda!199859 () Int)

(assert (=> bs!1066506 (= lambda!199859 lambda!199765)))

(declare-fun bs!1066507 () Bool)

(assert (= bs!1066507 (and d!1478588 b!4657636)))

(assert (=> bs!1066507 (= lambda!199859 lambda!199676)))

(declare-fun bs!1066508 () Bool)

(assert (= bs!1066508 (and d!1478588 d!1478536)))

(assert (=> bs!1066508 (not (= lambda!199859 lambda!199854))))

(declare-fun bs!1066509 () Bool)

(assert (= bs!1066509 (and d!1478588 d!1478178)))

(assert (=> bs!1066509 (= lambda!199859 lambda!199760)))

(declare-fun bs!1066510 () Bool)

(assert (= bs!1066510 (and d!1478588 d!1478416)))

(assert (=> bs!1066510 (= lambda!199859 lambda!199830)))

(declare-fun bs!1066511 () Bool)

(assert (= bs!1066511 (and d!1478588 d!1478228)))

(assert (=> bs!1066511 (= lambda!199859 lambda!199775)))

(declare-fun bs!1066512 () Bool)

(assert (= bs!1066512 (and d!1478588 d!1478212)))

(assert (=> bs!1066512 (= lambda!199859 lambda!199772)))

(declare-fun lt!1820674 () ListMap!4565)

(assert (=> d!1478588 (invariantList!1302 (toList!5226 lt!1820674))))

(declare-fun e!2906670 () ListMap!4565)

(assert (=> d!1478588 (= lt!1820674 e!2906670)))

(declare-fun c!797375 () Bool)

(assert (=> d!1478588 (= c!797375 ((_ is Cons!51917) (t!359157 lt!1820045)))))

(assert (=> d!1478588 (forall!11040 (t!359157 lt!1820045) lambda!199859)))

(assert (=> d!1478588 (= (extractMap!1704 (t!359157 lt!1820045)) lt!1820674)))

(declare-fun b!4658451 () Bool)

(assert (=> b!4658451 (= e!2906670 (addToMapMapFromBucket!1105 (_2!29814 (h!58065 (t!359157 lt!1820045))) (extractMap!1704 (t!359157 (t!359157 lt!1820045)))))))

(declare-fun b!4658452 () Bool)

(assert (=> b!4658452 (= e!2906670 (ListMap!4566 Nil!51916))))

(assert (= (and d!1478588 c!797375) b!4658451))

(assert (= (and d!1478588 (not c!797375)) b!4658452))

(declare-fun m!5539821 () Bool)

(assert (=> d!1478588 m!5539821))

(declare-fun m!5539823 () Bool)

(assert (=> d!1478588 m!5539823))

(declare-fun m!5539825 () Bool)

(assert (=> b!4658451 m!5539825))

(assert (=> b!4658451 m!5539825))

(declare-fun m!5539827 () Bool)

(assert (=> b!4658451 m!5539827))

(assert (=> b!4657872 d!1478588))

(declare-fun b!4658453 () Bool)

(declare-fun e!2906675 () List!52043)

(assert (=> b!4658453 (= e!2906675 (keys!18398 (extractMap!1704 (toList!5225 lt!1820042))))))

(declare-fun b!4658454 () Bool)

(declare-fun e!2906673 () Unit!118852)

(declare-fun Unit!118944 () Unit!118852)

(assert (=> b!4658454 (= e!2906673 Unit!118944)))

(declare-fun b!4658455 () Bool)

(declare-fun e!2906671 () Bool)

(declare-fun e!2906672 () Bool)

(assert (=> b!4658455 (= e!2906671 e!2906672)))

(declare-fun res!1959166 () Bool)

(assert (=> b!4658455 (=> (not res!1959166) (not e!2906672))))

(assert (=> b!4658455 (= res!1959166 (isDefined!9100 (getValueByKey!1617 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968)))))

(declare-fun b!4658456 () Bool)

(declare-fun e!2906674 () Unit!118852)

(declare-fun lt!1820679 () Unit!118852)

(assert (=> b!4658456 (= e!2906674 lt!1820679)))

(declare-fun lt!1820681 () Unit!118852)

(assert (=> b!4658456 (= lt!1820681 (lemmaContainsKeyImpliesGetValueByKeyDefined!1519 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(assert (=> b!4658456 (isDefined!9100 (getValueByKey!1617 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(declare-fun lt!1820678 () Unit!118852)

(assert (=> b!4658456 (= lt!1820678 lt!1820681)))

(assert (=> b!4658456 (= lt!1820679 (lemmaInListThenGetKeysListContains!748 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(declare-fun call!325501 () Bool)

(assert (=> b!4658456 call!325501))

(declare-fun b!4658457 () Bool)

(assert (=> b!4658457 false))

(declare-fun lt!1820676 () Unit!118852)

(declare-fun lt!1820677 () Unit!118852)

(assert (=> b!4658457 (= lt!1820676 lt!1820677)))

(assert (=> b!4658457 (containsKey!2737 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968)))

(assert (=> b!4658457 (= lt!1820677 (lemmaInGetKeysListThenContainsKey!752 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(declare-fun Unit!118945 () Unit!118852)

(assert (=> b!4658457 (= e!2906673 Unit!118945)))

(declare-fun b!4658459 () Bool)

(assert (=> b!4658459 (= e!2906675 (getKeysList!753 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042)))))))

(declare-fun b!4658460 () Bool)

(assert (=> b!4658460 (= e!2906672 (contains!15068 (keys!18398 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(declare-fun b!4658458 () Bool)

(declare-fun e!2906676 () Bool)

(assert (=> b!4658458 (= e!2906676 (not (contains!15068 (keys!18398 (extractMap!1704 (toList!5225 lt!1820042))) key!4968)))))

(declare-fun d!1478590 () Bool)

(assert (=> d!1478590 e!2906671))

(declare-fun res!1959165 () Bool)

(assert (=> d!1478590 (=> res!1959165 e!2906671)))

(assert (=> d!1478590 (= res!1959165 e!2906676)))

(declare-fun res!1959164 () Bool)

(assert (=> d!1478590 (=> (not res!1959164) (not e!2906676))))

(declare-fun lt!1820675 () Bool)

(assert (=> d!1478590 (= res!1959164 (not lt!1820675))))

(declare-fun lt!1820682 () Bool)

(assert (=> d!1478590 (= lt!1820675 lt!1820682)))

(declare-fun lt!1820680 () Unit!118852)

(assert (=> d!1478590 (= lt!1820680 e!2906674)))

(declare-fun c!797376 () Bool)

(assert (=> d!1478590 (= c!797376 lt!1820682)))

(assert (=> d!1478590 (= lt!1820682 (containsKey!2737 (toList!5226 (extractMap!1704 (toList!5225 lt!1820042))) key!4968))))

(assert (=> d!1478590 (= (contains!15065 (extractMap!1704 (toList!5225 lt!1820042)) key!4968) lt!1820675)))

(declare-fun bm!325496 () Bool)

(assert (=> bm!325496 (= call!325501 (contains!15068 e!2906675 key!4968))))

(declare-fun c!797377 () Bool)

(assert (=> bm!325496 (= c!797377 c!797376)))

(declare-fun b!4658461 () Bool)

(assert (=> b!4658461 (= e!2906674 e!2906673)))

(declare-fun c!797378 () Bool)

(assert (=> b!4658461 (= c!797378 call!325501)))

(assert (= (and d!1478590 c!797376) b!4658456))

(assert (= (and d!1478590 (not c!797376)) b!4658461))

(assert (= (and b!4658461 c!797378) b!4658457))

(assert (= (and b!4658461 (not c!797378)) b!4658454))

(assert (= (or b!4658456 b!4658461) bm!325496))

(assert (= (and bm!325496 c!797377) b!4658459))

(assert (= (and bm!325496 (not c!797377)) b!4658453))

(assert (= (and d!1478590 res!1959164) b!4658458))

(assert (= (and d!1478590 (not res!1959165)) b!4658455))

(assert (= (and b!4658455 res!1959166) b!4658460))

(assert (=> b!4658458 m!5538929))

(declare-fun m!5539829 () Bool)

(assert (=> b!4658458 m!5539829))

(assert (=> b!4658458 m!5539829))

(declare-fun m!5539831 () Bool)

(assert (=> b!4658458 m!5539831))

(declare-fun m!5539833 () Bool)

(assert (=> b!4658456 m!5539833))

(declare-fun m!5539835 () Bool)

(assert (=> b!4658456 m!5539835))

(assert (=> b!4658456 m!5539835))

(declare-fun m!5539837 () Bool)

(assert (=> b!4658456 m!5539837))

(declare-fun m!5539839 () Bool)

(assert (=> b!4658456 m!5539839))

(declare-fun m!5539841 () Bool)

(assert (=> bm!325496 m!5539841))

(assert (=> b!4658460 m!5538929))

(assert (=> b!4658460 m!5539829))

(assert (=> b!4658460 m!5539829))

(assert (=> b!4658460 m!5539831))

(declare-fun m!5539843 () Bool)

(assert (=> b!4658457 m!5539843))

(declare-fun m!5539845 () Bool)

(assert (=> b!4658457 m!5539845))

(assert (=> b!4658455 m!5539835))

(assert (=> b!4658455 m!5539835))

(assert (=> b!4658455 m!5539837))

(assert (=> b!4658453 m!5538929))

(assert (=> b!4658453 m!5539829))

(assert (=> d!1478590 m!5539843))

(declare-fun m!5539847 () Bool)

(assert (=> b!4658459 m!5539847))

(assert (=> b!4657905 d!1478590))

(declare-fun bs!1066513 () Bool)

(declare-fun d!1478592 () Bool)

(assert (= bs!1066513 (and d!1478592 d!1478200)))

(declare-fun lambda!199860 () Int)

(assert (=> bs!1066513 (= lambda!199860 lambda!199765)))

(declare-fun bs!1066514 () Bool)

(assert (= bs!1066514 (and d!1478592 b!4657636)))

(assert (=> bs!1066514 (= lambda!199860 lambda!199676)))

(declare-fun bs!1066515 () Bool)

(assert (= bs!1066515 (and d!1478592 d!1478588)))

(assert (=> bs!1066515 (= lambda!199860 lambda!199859)))

(declare-fun bs!1066516 () Bool)

(assert (= bs!1066516 (and d!1478592 d!1478536)))

(assert (=> bs!1066516 (not (= lambda!199860 lambda!199854))))

(declare-fun bs!1066517 () Bool)

(assert (= bs!1066517 (and d!1478592 d!1478178)))

(assert (=> bs!1066517 (= lambda!199860 lambda!199760)))

(declare-fun bs!1066518 () Bool)

(assert (= bs!1066518 (and d!1478592 d!1478416)))

(assert (=> bs!1066518 (= lambda!199860 lambda!199830)))

(declare-fun bs!1066519 () Bool)

(assert (= bs!1066519 (and d!1478592 d!1478228)))

(assert (=> bs!1066519 (= lambda!199860 lambda!199775)))

(declare-fun bs!1066520 () Bool)

(assert (= bs!1066520 (and d!1478592 d!1478212)))

(assert (=> bs!1066520 (= lambda!199860 lambda!199772)))

(declare-fun lt!1820683 () ListMap!4565)

(assert (=> d!1478592 (invariantList!1302 (toList!5226 lt!1820683))))

(declare-fun e!2906677 () ListMap!4565)

(assert (=> d!1478592 (= lt!1820683 e!2906677)))

(declare-fun c!797379 () Bool)

(assert (=> d!1478592 (= c!797379 ((_ is Cons!51917) (toList!5225 lt!1820042)))))

(assert (=> d!1478592 (forall!11040 (toList!5225 lt!1820042) lambda!199860)))

(assert (=> d!1478592 (= (extractMap!1704 (toList!5225 lt!1820042)) lt!1820683)))

(declare-fun b!4658462 () Bool)

(assert (=> b!4658462 (= e!2906677 (addToMapMapFromBucket!1105 (_2!29814 (h!58065 (toList!5225 lt!1820042))) (extractMap!1704 (t!359157 (toList!5225 lt!1820042)))))))

(declare-fun b!4658463 () Bool)

(assert (=> b!4658463 (= e!2906677 (ListMap!4566 Nil!51916))))

(assert (= (and d!1478592 c!797379) b!4658462))

(assert (= (and d!1478592 (not c!797379)) b!4658463))

(declare-fun m!5539849 () Bool)

(assert (=> d!1478592 m!5539849))

(declare-fun m!5539851 () Bool)

(assert (=> d!1478592 m!5539851))

(declare-fun m!5539853 () Bool)

(assert (=> b!4658462 m!5539853))

(assert (=> b!4658462 m!5539853))

(declare-fun m!5539855 () Bool)

(assert (=> b!4658462 m!5539855))

(assert (=> b!4657905 d!1478592))

(declare-fun b!4658467 () Bool)

(declare-fun e!2906679 () Option!11836)

(assert (=> b!4658467 (= e!2906679 None!11835)))

(declare-fun b!4658464 () Bool)

(declare-fun e!2906678 () Option!11836)

(assert (=> b!4658464 (= e!2906678 (Some!11835 (_2!29814 (h!58065 (toList!5225 lt!1820042)))))))

(declare-fun b!4658466 () Bool)

(assert (=> b!4658466 (= e!2906679 (getValueByKey!1618 (t!359157 (toList!5225 lt!1820042)) lt!1820330))))

(declare-fun b!4658465 () Bool)

(assert (=> b!4658465 (= e!2906678 e!2906679)))

(declare-fun c!797381 () Bool)

(assert (=> b!4658465 (= c!797381 (and ((_ is Cons!51917) (toList!5225 lt!1820042)) (not (= (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820330))))))

(declare-fun d!1478594 () Bool)

(declare-fun c!797380 () Bool)

(assert (=> d!1478594 (= c!797380 (and ((_ is Cons!51917) (toList!5225 lt!1820042)) (= (_1!29814 (h!58065 (toList!5225 lt!1820042))) lt!1820330)))))

(assert (=> d!1478594 (= (getValueByKey!1618 (toList!5225 lt!1820042) lt!1820330) e!2906678)))

(assert (= (and d!1478594 c!797380) b!4658464))

(assert (= (and d!1478594 (not c!797380)) b!4658465))

(assert (= (and b!4658465 c!797381) b!4658466))

(assert (= (and b!4658465 (not c!797381)) b!4658467))

(declare-fun m!5539857 () Bool)

(assert (=> b!4658466 m!5539857))

(assert (=> b!4657907 d!1478594))

(declare-fun d!1478596 () Bool)

(declare-fun c!797384 () Bool)

(assert (=> d!1478596 (= c!797384 ((_ is Nil!51917) lt!1820045))))

(declare-fun e!2906682 () (InoxSet tuple2!53040))

(assert (=> d!1478596 (= (content!9005 lt!1820045) e!2906682)))

(declare-fun b!4658472 () Bool)

(assert (=> b!4658472 (= e!2906682 ((as const (Array tuple2!53040 Bool)) false))))

(declare-fun b!4658473 () Bool)

(assert (=> b!4658473 (= e!2906682 ((_ map or) (store ((as const (Array tuple2!53040 Bool)) false) (h!58065 lt!1820045) true) (content!9005 (t!359157 lt!1820045))))))

(assert (= (and d!1478596 c!797384) b!4658472))

(assert (= (and d!1478596 (not c!797384)) b!4658473))

(declare-fun m!5539859 () Bool)

(assert (=> b!4658473 m!5539859))

(declare-fun m!5539861 () Bool)

(assert (=> b!4658473 m!5539861))

(assert (=> d!1478222 d!1478596))

(declare-fun d!1478598 () Bool)

(declare-fun lt!1820684 () Bool)

(assert (=> d!1478598 (= lt!1820684 (select (content!9005 (t!359157 lt!1820045)) lt!1820043))))

(declare-fun e!2906683 () Bool)

(assert (=> d!1478598 (= lt!1820684 e!2906683)))

(declare-fun res!1959168 () Bool)

(assert (=> d!1478598 (=> (not res!1959168) (not e!2906683))))

(assert (=> d!1478598 (= res!1959168 ((_ is Cons!51917) (t!359157 lt!1820045)))))

(assert (=> d!1478598 (= (contains!15063 (t!359157 lt!1820045) lt!1820043) lt!1820684)))

(declare-fun b!4658474 () Bool)

(declare-fun e!2906684 () Bool)

(assert (=> b!4658474 (= e!2906683 e!2906684)))

(declare-fun res!1959167 () Bool)

(assert (=> b!4658474 (=> res!1959167 e!2906684)))

(assert (=> b!4658474 (= res!1959167 (= (h!58065 (t!359157 lt!1820045)) lt!1820043))))

(declare-fun b!4658475 () Bool)

(assert (=> b!4658475 (= e!2906684 (contains!15063 (t!359157 (t!359157 lt!1820045)) lt!1820043))))

(assert (= (and d!1478598 res!1959168) b!4658474))

(assert (= (and b!4658474 (not res!1959167)) b!4658475))

(assert (=> d!1478598 m!5539861))

(declare-fun m!5539863 () Bool)

(assert (=> d!1478598 m!5539863))

(declare-fun m!5539865 () Bool)

(assert (=> b!4658475 m!5539865))

(assert (=> b!4657944 d!1478598))

(declare-fun d!1478600 () Bool)

(declare-fun lt!1820685 () Bool)

(assert (=> d!1478600 (= lt!1820685 (select (content!9005 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820039 lt!1820044)))))

(declare-fun e!2906685 () Bool)

(assert (=> d!1478600 (= lt!1820685 e!2906685)))

(declare-fun res!1959170 () Bool)

(assert (=> d!1478600 (=> (not res!1959170) (not e!2906685))))

(assert (=> d!1478600 (= res!1959170 ((_ is Cons!51917) (toList!5225 lt!1820042)))))

(assert (=> d!1478600 (= (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820039 lt!1820044)) lt!1820685)))

(declare-fun b!4658476 () Bool)

(declare-fun e!2906686 () Bool)

(assert (=> b!4658476 (= e!2906685 e!2906686)))

(declare-fun res!1959169 () Bool)

(assert (=> b!4658476 (=> res!1959169 e!2906686)))

(assert (=> b!4658476 (= res!1959169 (= (h!58065 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820039 lt!1820044)))))

(declare-fun b!4658477 () Bool)

(assert (=> b!4658477 (= e!2906686 (contains!15063 (t!359157 (toList!5225 lt!1820042)) (tuple2!53041 lt!1820039 lt!1820044)))))

(assert (= (and d!1478600 res!1959170) b!4658476))

(assert (= (and b!4658476 (not res!1959169)) b!4658477))

(assert (=> d!1478600 m!5539601))

(declare-fun m!5539867 () Bool)

(assert (=> d!1478600 m!5539867))

(declare-fun m!5539869 () Bool)

(assert (=> b!4658477 m!5539869))

(assert (=> d!1478220 d!1478600))

(declare-fun d!1478602 () Bool)

(assert (=> d!1478602 (contains!15063 (toList!5225 lt!1820042) (tuple2!53041 lt!1820039 lt!1820044))))

(assert (=> d!1478602 true))

(declare-fun _$41!389 () Unit!118852)

(assert (=> d!1478602 (= (choose!32046 lt!1820042 lt!1820039 lt!1820044) _$41!389)))

(declare-fun bs!1066521 () Bool)

(assert (= bs!1066521 d!1478602))

(assert (=> bs!1066521 m!5538951))

(assert (=> d!1478220 d!1478602))

(assert (=> d!1478220 d!1478206))

(declare-fun d!1478604 () Bool)

(assert (=> d!1478604 (dynLambda!21600 lambda!199676 lt!1820043)))

(assert (=> d!1478604 true))

(declare-fun _$7!2211 () Unit!118852)

(assert (=> d!1478604 (= (choose!32044 lt!1820045 lambda!199676 lt!1820043) _$7!2211)))

(declare-fun b_lambda!174595 () Bool)

(assert (=> (not b_lambda!174595) (not d!1478604)))

(declare-fun bs!1066522 () Bool)

(assert (= bs!1066522 d!1478604))

(assert (=> bs!1066522 m!5538899))

(assert (=> d!1478210 d!1478604))

(declare-fun d!1478606 () Bool)

(declare-fun res!1959171 () Bool)

(declare-fun e!2906687 () Bool)

(assert (=> d!1478606 (=> res!1959171 e!2906687)))

(assert (=> d!1478606 (= res!1959171 ((_ is Nil!51917) lt!1820045))))

(assert (=> d!1478606 (= (forall!11040 lt!1820045 lambda!199676) e!2906687)))

(declare-fun b!4658479 () Bool)

(declare-fun e!2906688 () Bool)

(assert (=> b!4658479 (= e!2906687 e!2906688)))

(declare-fun res!1959172 () Bool)

(assert (=> b!4658479 (=> (not res!1959172) (not e!2906688))))

(assert (=> b!4658479 (= res!1959172 (dynLambda!21600 lambda!199676 (h!58065 lt!1820045)))))

(declare-fun b!4658480 () Bool)

(assert (=> b!4658480 (= e!2906688 (forall!11040 (t!359157 lt!1820045) lambda!199676))))

(assert (= (and d!1478606 (not res!1959171)) b!4658479))

(assert (= (and b!4658479 res!1959172) b!4658480))

(declare-fun b_lambda!174597 () Bool)

(assert (=> (not b_lambda!174597) (not b!4658479)))

(declare-fun m!5539871 () Bool)

(assert (=> b!4658479 m!5539871))

(declare-fun m!5539873 () Bool)

(assert (=> b!4658480 m!5539873))

(assert (=> d!1478210 d!1478606))

(declare-fun e!2906689 () Bool)

(declare-fun tp!1343398 () Bool)

(declare-fun b!4658481 () Bool)

(assert (=> b!4658481 (= e!2906689 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343398))))

(assert (=> b!4657953 (= tp!1343394 e!2906689)))

(assert (= (and b!4657953 ((_ is Cons!51916) (t!359156 (t!359156 newBucket!224)))) b!4658481))

(declare-fun tp!1343399 () Bool)

(declare-fun e!2906690 () Bool)

(declare-fun b!4658482 () Bool)

(assert (=> b!4658482 (= e!2906690 (and tp_is_empty!29885 tp_is_empty!29887 tp!1343399))))

(assert (=> b!4657954 (= tp!1343395 e!2906690)))

(assert (= (and b!4657954 ((_ is Cons!51916) (t!359156 (t!359156 oldBucket!40)))) b!4658482))

(declare-fun b_lambda!174599 () Bool)

(assert (= b_lambda!174527 (or b!4657774 b_lambda!174599)))

(declare-fun bs!1066523 () Bool)

(declare-fun d!1478608 () Bool)

(assert (= bs!1066523 (and d!1478608 b!4657774)))

(assert (=> bs!1066523 (= (dynLambda!21602 lambda!199754 (h!58064 (toList!5226 lt!1820198))) (contains!15065 lt!1820205 (_1!29813 (h!58064 (toList!5226 lt!1820198)))))))

(declare-fun m!5539875 () Bool)

(assert (=> bs!1066523 m!5539875))

(assert (=> b!4658239 d!1478608))

(declare-fun b_lambda!174601 () Bool)

(assert (= b_lambda!174545 (or d!1478178 b_lambda!174601)))

(declare-fun bs!1066524 () Bool)

(declare-fun d!1478610 () Bool)

(assert (= bs!1066524 (and d!1478610 d!1478178)))

(assert (=> bs!1066524 (= (dynLambda!21600 lambda!199760 (h!58065 Nil!51917)) (noDuplicateKeys!1648 (_2!29814 (h!58065 Nil!51917))))))

(declare-fun m!5539877 () Bool)

(assert (=> bs!1066524 m!5539877))

(assert (=> b!4658382 d!1478610))

(declare-fun b_lambda!174603 () Bool)

(assert (= b_lambda!174511 (or d!1478200 b_lambda!174603)))

(declare-fun bs!1066525 () Bool)

(declare-fun d!1478612 () Bool)

(assert (= bs!1066525 (and d!1478612 d!1478200)))

(assert (=> bs!1066525 (= (dynLambda!21600 lambda!199765 (h!58065 lt!1820045)) (noDuplicateKeys!1648 (_2!29814 (h!58065 lt!1820045))))))

(assert (=> bs!1066525 m!5539817))

(assert (=> b!4658114 d!1478612))

(declare-fun b_lambda!174605 () Bool)

(assert (= b_lambda!174597 (or b!4657636 b_lambda!174605)))

(declare-fun bs!1066526 () Bool)

(declare-fun d!1478614 () Bool)

(assert (= bs!1066526 (and d!1478614 b!4657636)))

(assert (=> bs!1066526 (= (dynLambda!21600 lambda!199676 (h!58065 lt!1820045)) (noDuplicateKeys!1648 (_2!29814 (h!58065 lt!1820045))))))

(assert (=> bs!1066526 m!5539817))

(assert (=> b!4658479 d!1478614))

(declare-fun b_lambda!174607 () Bool)

(assert (= b_lambda!174513 (or b!4657774 b_lambda!174607)))

(declare-fun bs!1066527 () Bool)

(declare-fun d!1478616 () Bool)

(assert (= bs!1066527 (and d!1478616 b!4657774)))

(assert (=> bs!1066527 (= (dynLambda!21602 lambda!199754 (h!58064 oldBucket!40)) (contains!15065 lt!1820205 (_1!29813 (h!58064 oldBucket!40))))))

(assert (=> bs!1066527 m!5538767))

(assert (=> b!4658138 d!1478616))

(declare-fun b_lambda!174609 () Bool)

(assert (= b_lambda!174517 (or b!4657774 b_lambda!174609)))

(declare-fun bs!1066528 () Bool)

(declare-fun d!1478618 () Bool)

(assert (= bs!1066528 (and d!1478618 b!4657774)))

(assert (=> bs!1066528 (= (dynLambda!21602 lambda!199753 (h!58064 (toList!5226 lt!1820037))) (contains!15065 lt!1820037 (_1!29813 (h!58064 (toList!5226 lt!1820037)))))))

(declare-fun m!5539879 () Bool)

(assert (=> bs!1066528 m!5539879))

(assert (=> b!4658160 d!1478618))

(declare-fun b_lambda!174611 () Bool)

(assert (= b_lambda!174543 (or d!1478212 b_lambda!174611)))

(declare-fun bs!1066529 () Bool)

(declare-fun d!1478620 () Bool)

(assert (= bs!1066529 (and d!1478620 d!1478212)))

(assert (=> bs!1066529 (= (dynLambda!21600 lambda!199772 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968)))) (noDuplicateKeys!1648 (_2!29814 (tuple2!53041 (hash!3789 hashF!1389 key!4968) (apply!12251 lt!1820042 (hash!3789 hashF!1389 key!4968))))))))

(declare-fun m!5539881 () Bool)

(assert (=> bs!1066529 m!5539881))

(assert (=> d!1478452 d!1478620))

(declare-fun b_lambda!174613 () Bool)

(assert (= b_lambda!174593 (or d!1478142 b_lambda!174613)))

(declare-fun bs!1066530 () Bool)

(declare-fun d!1478622 () Bool)

(assert (= bs!1066530 (and d!1478622 d!1478142)))

(assert (=> bs!1066530 (= (dynLambda!21602 lambda!199756 (h!58064 (toList!5226 lt!1820037))) (contains!15065 lt!1820216 (_1!29813 (h!58064 (toList!5226 lt!1820037)))))))

(declare-fun m!5539883 () Bool)

(assert (=> bs!1066530 m!5539883))

(assert (=> b!4658444 d!1478622))

(declare-fun b_lambda!174615 () Bool)

(assert (= b_lambda!174591 (or d!1478142 b_lambda!174615)))

(declare-fun bs!1066531 () Bool)

(declare-fun d!1478624 () Bool)

(assert (= bs!1066531 (and d!1478624 d!1478142)))

(assert (=> bs!1066531 (= (dynLambda!21602 lambda!199756 (h!58064 oldBucket!40)) (contains!15065 lt!1820216 (_1!29813 (h!58064 oldBucket!40))))))

(declare-fun m!5539885 () Bool)

(assert (=> bs!1066531 m!5539885))

(assert (=> b!4658438 d!1478624))

(declare-fun b_lambda!174617 () Bool)

(assert (= b_lambda!174555 (or d!1478230 b_lambda!174617)))

(declare-fun bs!1066532 () Bool)

(declare-fun d!1478626 () Bool)

(assert (= bs!1066532 (and d!1478626 d!1478230)))

(assert (=> bs!1066532 (= (dynLambda!21602 lambda!199776 (h!58064 newBucket!224)) (= (hash!3789 hashF!1389 (_1!29813 (h!58064 newBucket!224))) hash!414))))

(declare-fun m!5539887 () Bool)

(assert (=> bs!1066532 m!5539887))

(assert (=> b!4658426 d!1478626))

(declare-fun b_lambda!174619 () Bool)

(assert (= b_lambda!174595 (or b!4657636 b_lambda!174619)))

(assert (=> d!1478604 d!1478234))

(declare-fun b_lambda!174621 () Bool)

(assert (= b_lambda!174503 (or d!1478228 b_lambda!174621)))

(declare-fun bs!1066533 () Bool)

(declare-fun d!1478628 () Bool)

(assert (= bs!1066533 (and d!1478628 d!1478228)))

(assert (=> bs!1066533 (= (dynLambda!21600 lambda!199775 (h!58065 (toList!5225 lt!1820042))) (noDuplicateKeys!1648 (_2!29814 (h!58065 (toList!5225 lt!1820042)))))))

(declare-fun m!5539889 () Bool)

(assert (=> bs!1066533 m!5539889))

(assert (=> b!4658099 d!1478628))

(declare-fun b_lambda!174623 () Bool)

(assert (= b_lambda!174547 (or d!1478190 b_lambda!174623)))

(declare-fun bs!1066534 () Bool)

(declare-fun d!1478630 () Bool)

(assert (= bs!1066534 (and d!1478630 d!1478190)))

(assert (=> bs!1066534 (= (dynLambda!21602 lambda!199763 (h!58064 oldBucket!40)) (= (hash!3789 hashF!1389 (_1!29813 (h!58064 oldBucket!40))) hash!414))))

(declare-fun m!5539891 () Bool)

(assert (=> bs!1066534 m!5539891))

(assert (=> b!4658394 d!1478630))

(declare-fun b_lambda!174625 () Bool)

(assert (= b_lambda!174529 (or b!4657774 b_lambda!174625)))

(assert (=> d!1478408 d!1478616))

(declare-fun b_lambda!174627 () Bool)

(assert (= b_lambda!174533 (or d!1478212 b_lambda!174627)))

(declare-fun bs!1066535 () Bool)

(declare-fun d!1478632 () Bool)

(assert (= bs!1066535 (and d!1478632 d!1478212)))

(assert (=> bs!1066535 (= (dynLambda!21600 lambda!199772 (h!58065 (toList!5225 lt!1820042))) (noDuplicateKeys!1648 (_2!29814 (h!58065 (toList!5225 lt!1820042)))))))

(assert (=> bs!1066535 m!5539889))

(assert (=> b!4658248 d!1478632))

(declare-fun b_lambda!174629 () Bool)

(assert (= b_lambda!174531 (or b!4657774 b_lambda!174629)))

(declare-fun bs!1066536 () Bool)

(declare-fun d!1478634 () Bool)

(assert (= bs!1066536 (and d!1478634 b!4657774)))

(assert (=> bs!1066536 (= (dynLambda!21602 lambda!199754 (h!58064 (toList!5226 lt!1820037))) (contains!15065 lt!1820205 (_1!29813 (h!58064 (toList!5226 lt!1820037)))))))

(declare-fun m!5539893 () Bool)

(assert (=> bs!1066536 m!5539893))

(assert (=> b!4658244 d!1478634))

(check-sat (not b!4658302) (not b!4658202) (not bs!1066525) (not b!4658076) (not d!1478376) (not b!4658460) (not b!4658292) (not b!4658201) (not d!1478452) (not b!4658147) (not b!4658482) (not b!4658193) (not b!4658409) (not b_lambda!174601) (not b_lambda!174553) (not b!4658395) (not d!1478530) (not b!4658206) (not b!4658291) (not b!4658199) (not b!4658406) (not b!4658245) (not b_lambda!174611) (not bm!325495) (not b!4658070) (not b!4658148) (not b!4658144) (not b!4658415) (not bs!1066529) (not b_lambda!174621) (not b!4658200) (not bm!325496) (not d!1478514) (not d!1478536) (not b!4658407) (not b!4657994) (not bm!325486) (not b_lambda!174625) (not b!4658116) (not b!4658456) (not b!4658448) (not b!4658131) (not d!1478506) (not bs!1066530) (not d!1478476) (not bs!1066524) (not d!1478270) (not b!4658249) (not b_lambda!174493) (not d!1478300) (not b!4658139) (not b!4658446) (not b!4658304) (not bm!325493) tp_is_empty!29885 (not b_lambda!174619) (not b!4658194) (not b!4658088) (not b!4658458) (not d!1478602) (not bm!325488) (not b!4658315) (not d!1478392) (not b!4658297) (not b!4658204) (not d!1478370) (not d!1478266) (not d!1478292) (not bs!1066536) (not b!4658443) (not bs!1066534) (not d!1478590) (not b_lambda!174607) (not b!4658100) (not bs!1066523) (not b!4658427) (not d!1478484) (not b!4658451) (not b!4658417) (not bs!1066527) (not b!4658198) (not bs!1066533) (not d!1478456) (not b!4658332) (not d!1478320) (not d!1478472) (not b!4658149) (not d!1478498) (not d!1478298) (not d!1478508) (not bs!1066531) (not d!1478588) (not b!4658462) (not b!4658441) (not b!4658466) (not b!4658412) (not b!4658475) (not b_lambda!174599) (not d!1478308) (not bm!325489) (not b_lambda!174609) (not b!4658145) (not b!4658314) (not b!4658142) (not b!4658243) (not b!4658306) (not b!4658421) (not b!4658410) (not b!4658313) (not d!1478516) (not bm!325494) (not b!4657992) (not b!4658208) (not d!1478520) tp_is_empty!29887 (not b!4658240) (not d!1478408) (not b!4658115) (not b_lambda!174613) (not b!4658480) (not d!1478586) (not b!4658459) (not b_lambda!174627) (not d!1478344) (not d!1478458) (not d!1478454) (not d!1478470) (not bm!325487) (not b!4658290) (not d!1478302) (not b!4658080) (not b!4658372) (not b!4658071) (not d!1478318) (not d!1478592) (not b!4658379) (not b!4658195) (not d!1478334) (not b!4658405) (not b!4658440) (not bs!1066528) (not b!4658294) (not b!4658450) (not b_lambda!174615) (not d!1478600) (not b_lambda!174617) (not b!4658073) (not bs!1066535) (not d!1478278) (not d!1478416) (not b!4658146) (not d!1478462) (not b_lambda!174541) (not b!4658439) (not b!4657997) (not b!4658453) (not b_lambda!174603) (not b!4658445) (not b!4658455) (not d!1478468) (not b!4658090) (not b!4658300) (not b!4658393) (not b!4658473) (not b_lambda!174623) (not b!4657993) (not bs!1066526) (not d!1478464) (not b!4658419) (not d!1478460) (not bs!1066532) (not b!4658383) (not bm!325484) (not b!4658006) (not d!1478598) (not d!1478326) (not b!4658349) (not b!4658481) (not b_lambda!174605) (not b!4658299) (not b!4658087) (not b!4658197) (not b!4658411) (not b_lambda!174629) (not b!4658074) (not b!4658457) (not b!4658424) (not b!4658161) (not b!4658081) (not b!4658293) (not b!4658477) (not b!4658403) (not b!4658117) (not b!4658004))
(check-sat)
