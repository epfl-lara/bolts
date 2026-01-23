; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470044 () Bool)

(assert start!470044)

(declare-fun b!4663696 () Bool)

(declare-fun res!1962171 () Bool)

(declare-fun e!2910179 () Bool)

(assert (=> b!4663696 (=> (not res!1962171) (not e!2910179))))

(declare-datatypes ((K!13315 0))(
  ( (K!13316 (val!18923 Int)) )
))
(declare-datatypes ((V!13561 0))(
  ( (V!13562 (val!18924 Int)) )
))
(declare-datatypes ((tuple2!53110 0))(
  ( (tuple2!53111 (_1!29849 K!13315) (_2!29849 V!13561)) )
))
(declare-datatypes ((List!52094 0))(
  ( (Nil!51970) (Cons!51970 (h!58136 tuple2!53110) (t!359216 List!52094)) )
))
(declare-fun newBucket!224 () List!52094)

(declare-fun noDuplicateKeys!1666 (List!52094) Bool)

(assert (=> b!4663696 (= res!1962171 (noDuplicateKeys!1666 newBucket!224))))

(declare-fun b!4663698 () Bool)

(declare-fun res!1962182 () Bool)

(declare-fun e!2910182 () Bool)

(assert (=> b!4663698 (=> (not res!1962182) (not e!2910182))))

(declare-datatypes ((Hashable!6063 0))(
  ( (HashableExt!6062 (__x!31766 Int)) )
))
(declare-fun hashF!1389 () Hashable!6063)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1520 (List!52094 (_ BitVec 64) Hashable!6063) Bool)

(assert (=> b!4663698 (= res!1962182 (allKeysSameHash!1520 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4663699 () Bool)

(declare-fun res!1962177 () Bool)

(assert (=> b!4663699 (=> (not res!1962177) (not e!2910179))))

(declare-fun oldBucket!40 () List!52094)

(declare-fun key!4968 () K!13315)

(declare-fun removePairForKey!1289 (List!52094 K!13315) List!52094)

(assert (=> b!4663699 (= res!1962177 (= (removePairForKey!1289 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4663700 () Bool)

(declare-fun e!2910175 () Bool)

(assert (=> b!4663700 (= e!2910182 (not e!2910175))))

(declare-fun res!1962172 () Bool)

(assert (=> b!4663700 (=> res!1962172 e!2910175)))

(get-info :version)

(assert (=> b!4663700 (= res!1962172 (or (and ((_ is Cons!51970) oldBucket!40) (= (_1!29849 (h!58136 oldBucket!40)) key!4968)) (not ((_ is Cons!51970) oldBucket!40)) (= (_1!29849 (h!58136 oldBucket!40)) key!4968)))))

(declare-fun e!2910181 () Bool)

(assert (=> b!4663700 e!2910181))

(declare-fun res!1962170 () Bool)

(assert (=> b!4663700 (=> (not res!1962170) (not e!2910181))))

(declare-datatypes ((ListMap!4601 0))(
  ( (ListMap!4602 (toList!5261 List!52094)) )
))
(declare-fun lt!1825493 () ListMap!4601)

(declare-fun lt!1825501 () ListMap!4601)

(declare-fun addToMapMapFromBucket!1123 (List!52094 ListMap!4601) ListMap!4601)

(assert (=> b!4663700 (= res!1962170 (= lt!1825501 (addToMapMapFromBucket!1123 oldBucket!40 lt!1825493)))))

(declare-datatypes ((tuple2!53112 0))(
  ( (tuple2!53113 (_1!29850 (_ BitVec 64)) (_2!29850 List!52094)) )
))
(declare-datatypes ((List!52095 0))(
  ( (Nil!51971) (Cons!51971 (h!58137 tuple2!53112) (t!359217 List!52095)) )
))
(declare-fun extractMap!1722 (List!52095) ListMap!4601)

(assert (=> b!4663700 (= lt!1825493 (extractMap!1722 Nil!51971))))

(assert (=> b!4663700 true))

(declare-fun b!4663701 () Bool)

(declare-fun e!2910178 () Bool)

(declare-fun e!2910180 () Bool)

(assert (=> b!4663701 (= e!2910178 e!2910180)))

(declare-fun res!1962173 () Bool)

(assert (=> b!4663701 (=> res!1962173 e!2910180)))

(declare-fun lt!1825496 () List!52094)

(declare-fun lt!1825505 () List!52094)

(assert (=> b!4663701 (= res!1962173 (not (= (removePairForKey!1289 lt!1825496 key!4968) lt!1825505)))))

(declare-fun tail!8269 (List!52094) List!52094)

(assert (=> b!4663701 (= lt!1825505 (tail!8269 newBucket!224))))

(assert (=> b!4663701 (= lt!1825496 (tail!8269 oldBucket!40))))

(declare-fun b!4663702 () Bool)

(declare-fun tp_is_empty!29959 () Bool)

(declare-fun tp!1343579 () Bool)

(declare-fun e!2910183 () Bool)

(declare-fun tp_is_empty!29957 () Bool)

(assert (=> b!4663702 (= e!2910183 (and tp_is_empty!29957 tp_is_empty!29959 tp!1343579))))

(declare-fun b!4663703 () Bool)

(declare-fun e!2910184 () Bool)

(assert (=> b!4663703 (= e!2910179 e!2910184)))

(declare-fun res!1962179 () Bool)

(assert (=> b!4663703 (=> (not res!1962179) (not e!2910184))))

(declare-fun contains!15153 (ListMap!4601 K!13315) Bool)

(assert (=> b!4663703 (= res!1962179 (contains!15153 lt!1825501 key!4968))))

(declare-fun lt!1825507 () List!52095)

(assert (=> b!4663703 (= lt!1825501 (extractMap!1722 lt!1825507))))

(assert (=> b!4663703 (= lt!1825507 (Cons!51971 (tuple2!53113 hash!414 oldBucket!40) Nil!51971))))

(declare-fun b!4663704 () Bool)

(assert (=> b!4663704 (= e!2910184 e!2910182)))

(declare-fun res!1962181 () Bool)

(assert (=> b!4663704 (=> (not res!1962181) (not e!2910182))))

(declare-fun lt!1825492 () (_ BitVec 64))

(assert (=> b!4663704 (= res!1962181 (= lt!1825492 hash!414))))

(declare-fun hash!3825 (Hashable!6063 K!13315) (_ BitVec 64))

(assert (=> b!4663704 (= lt!1825492 (hash!3825 hashF!1389 key!4968))))

(declare-fun b!4663705 () Bool)

(declare-fun res!1962169 () Bool)

(assert (=> b!4663705 (=> (not res!1962169) (not e!2910179))))

(assert (=> b!4663705 (= res!1962169 (allKeysSameHash!1520 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4663706 () Bool)

(assert (=> b!4663706 (= e!2910181 (= lt!1825493 (ListMap!4602 Nil!51970)))))

(declare-fun b!4663707 () Bool)

(assert (=> b!4663707 (= e!2910175 e!2910178)))

(declare-fun res!1962174 () Bool)

(assert (=> b!4663707 (=> res!1962174 e!2910178)))

(declare-fun containsKey!2788 (List!52094 K!13315) Bool)

(assert (=> b!4663707 (= res!1962174 (not (containsKey!2788 (t!359216 oldBucket!40) key!4968)))))

(assert (=> b!4663707 (containsKey!2788 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!119640 0))(
  ( (Unit!119641) )
))
(declare-fun lt!1825502 () Unit!119640)

(declare-fun lemmaGetPairDefinedThenContainsKey!144 (List!52094 K!13315 Hashable!6063) Unit!119640)

(assert (=> b!4663707 (= lt!1825502 (lemmaGetPairDefinedThenContainsKey!144 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1825491 () List!52094)

(declare-datatypes ((Option!11886 0))(
  ( (None!11885) (Some!11885 (v!46211 tuple2!53110)) )
))
(declare-fun isDefined!9151 (Option!11886) Bool)

(declare-fun getPair!394 (List!52094 K!13315) Option!11886)

(assert (=> b!4663707 (isDefined!9151 (getPair!394 lt!1825491 key!4968))))

(declare-fun lt!1825503 () Unit!119640)

(declare-fun lt!1825494 () tuple2!53112)

(declare-fun lambda!201036 () Int)

(declare-fun forallContained!3278 (List!52095 Int tuple2!53112) Unit!119640)

(assert (=> b!4663707 (= lt!1825503 (forallContained!3278 lt!1825507 lambda!201036 lt!1825494))))

(declare-fun contains!15154 (List!52095 tuple2!53112) Bool)

(assert (=> b!4663707 (contains!15154 lt!1825507 lt!1825494)))

(assert (=> b!4663707 (= lt!1825494 (tuple2!53113 lt!1825492 lt!1825491))))

(declare-datatypes ((ListLongMap!3815 0))(
  ( (ListLongMap!3816 (toList!5262 List!52095)) )
))
(declare-fun lt!1825500 () ListLongMap!3815)

(declare-fun lt!1825509 () Unit!119640)

(declare-fun lemmaGetValueImpliesTupleContained!199 (ListLongMap!3815 (_ BitVec 64) List!52094) Unit!119640)

(assert (=> b!4663707 (= lt!1825509 (lemmaGetValueImpliesTupleContained!199 lt!1825500 lt!1825492 lt!1825491))))

(declare-fun apply!12269 (ListLongMap!3815 (_ BitVec 64)) List!52094)

(assert (=> b!4663707 (= lt!1825491 (apply!12269 lt!1825500 lt!1825492))))

(declare-fun contains!15155 (ListLongMap!3815 (_ BitVec 64)) Bool)

(assert (=> b!4663707 (contains!15155 lt!1825500 lt!1825492)))

(declare-fun lt!1825499 () Unit!119640)

(declare-fun lemmaInGenMapThenLongMapContainsHash!600 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> b!4663707 (= lt!1825499 (lemmaInGenMapThenLongMapContainsHash!600 lt!1825500 key!4968 hashF!1389))))

(declare-fun lt!1825498 () Unit!119640)

(declare-fun lemmaInGenMapThenGetPairDefined!190 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> b!4663707 (= lt!1825498 (lemmaInGenMapThenGetPairDefined!190 lt!1825500 key!4968 hashF!1389))))

(assert (=> b!4663707 (= lt!1825500 (ListLongMap!3816 lt!1825507))))

(declare-fun res!1962176 () Bool)

(assert (=> start!470044 (=> (not res!1962176) (not e!2910179))))

(assert (=> start!470044 (= res!1962176 (noDuplicateKeys!1666 oldBucket!40))))

(assert (=> start!470044 e!2910179))

(assert (=> start!470044 true))

(assert (=> start!470044 e!2910183))

(assert (=> start!470044 tp_is_empty!29957))

(declare-fun e!2910176 () Bool)

(assert (=> start!470044 e!2910176))

(declare-fun b!4663697 () Bool)

(declare-fun e!2910177 () Bool)

(assert (=> b!4663697 (= e!2910177 (noDuplicateKeys!1666 lt!1825505))))

(declare-fun b!4663708 () Bool)

(assert (=> b!4663708 (= e!2910180 e!2910177)))

(declare-fun res!1962178 () Bool)

(assert (=> b!4663708 (=> res!1962178 e!2910177)))

(declare-fun eq!921 (ListMap!4601 ListMap!4601) Bool)

(declare-fun +!2006 (ListMap!4601 tuple2!53110) ListMap!4601)

(assert (=> b!4663708 (= res!1962178 (not (eq!921 lt!1825501 (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)) (h!58136 oldBucket!40)))))))

(declare-fun lt!1825490 () tuple2!53110)

(assert (=> b!4663708 (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825490 lt!1825505) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825490))))

(declare-fun lt!1825508 () Unit!119640)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!172 (tuple2!53110 List!52094 ListMap!4601) Unit!119640)

(assert (=> b!4663708 (= lt!1825508 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!172 lt!1825490 lt!1825505 (ListMap!4602 Nil!51970)))))

(declare-fun head!9744 (List!52094) tuple2!53110)

(assert (=> b!4663708 (= lt!1825490 (head!9744 newBucket!224))))

(declare-fun lt!1825506 () tuple2!53110)

(assert (=> b!4663708 (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825506 lt!1825496) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825506))))

(declare-fun lt!1825495 () Unit!119640)

(assert (=> b!4663708 (= lt!1825495 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!172 lt!1825506 lt!1825496 (ListMap!4602 Nil!51970)))))

(assert (=> b!4663708 (= lt!1825506 (head!9744 oldBucket!40))))

(declare-fun lt!1825504 () List!52095)

(assert (=> b!4663708 (contains!15153 (extractMap!1722 lt!1825504) key!4968)))

(declare-fun lt!1825497 () Unit!119640)

(declare-fun lemmaListContainsThenExtractedMapContains!400 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> b!4663708 (= lt!1825497 (lemmaListContainsThenExtractedMapContains!400 (ListLongMap!3816 lt!1825504) key!4968 hashF!1389))))

(assert (=> b!4663708 (= lt!1825504 (Cons!51971 (tuple2!53113 hash!414 (t!359216 oldBucket!40)) Nil!51971))))

(declare-fun b!4663709 () Bool)

(declare-fun res!1962175 () Bool)

(assert (=> b!4663709 (=> res!1962175 e!2910180)))

(assert (=> b!4663709 (= res!1962175 (not (= (removePairForKey!1289 (t!359216 oldBucket!40) key!4968) lt!1825505)))))

(declare-fun b!4663710 () Bool)

(declare-fun res!1962180 () Bool)

(assert (=> b!4663710 (=> res!1962180 e!2910177)))

(assert (=> b!4663710 (= res!1962180 (not (noDuplicateKeys!1666 (t!359216 oldBucket!40))))))

(declare-fun b!4663711 () Bool)

(declare-fun tp!1343578 () Bool)

(assert (=> b!4663711 (= e!2910176 (and tp_is_empty!29957 tp_is_empty!29959 tp!1343578))))

(declare-fun b!4663712 () Bool)

(declare-fun res!1962168 () Bool)

(assert (=> b!4663712 (=> res!1962168 e!2910177)))

(assert (=> b!4663712 (= res!1962168 (not (eq!921 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)) (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)) lt!1825490))))))

(assert (= (and start!470044 res!1962176) b!4663696))

(assert (= (and b!4663696 res!1962171) b!4663699))

(assert (= (and b!4663699 res!1962177) b!4663705))

(assert (= (and b!4663705 res!1962169) b!4663703))

(assert (= (and b!4663703 res!1962179) b!4663704))

(assert (= (and b!4663704 res!1962181) b!4663698))

(assert (= (and b!4663698 res!1962182) b!4663700))

(assert (= (and b!4663700 res!1962170) b!4663706))

(assert (= (and b!4663700 (not res!1962172)) b!4663707))

(assert (= (and b!4663707 (not res!1962174)) b!4663701))

(assert (= (and b!4663701 (not res!1962173)) b!4663709))

(assert (= (and b!4663709 (not res!1962175)) b!4663708))

(assert (= (and b!4663708 (not res!1962178)) b!4663712))

(assert (= (and b!4663712 (not res!1962168)) b!4663710))

(assert (= (and b!4663710 (not res!1962180)) b!4663697))

(assert (= (and start!470044 ((_ is Cons!51970) oldBucket!40)) b!4663702))

(assert (= (and start!470044 ((_ is Cons!51970) newBucket!224)) b!4663711))

(declare-fun m!5548717 () Bool)

(assert (=> b!4663707 m!5548717))

(declare-fun m!5548719 () Bool)

(assert (=> b!4663707 m!5548719))

(declare-fun m!5548721 () Bool)

(assert (=> b!4663707 m!5548721))

(declare-fun m!5548723 () Bool)

(assert (=> b!4663707 m!5548723))

(declare-fun m!5548725 () Bool)

(assert (=> b!4663707 m!5548725))

(assert (=> b!4663707 m!5548719))

(declare-fun m!5548727 () Bool)

(assert (=> b!4663707 m!5548727))

(declare-fun m!5548729 () Bool)

(assert (=> b!4663707 m!5548729))

(declare-fun m!5548731 () Bool)

(assert (=> b!4663707 m!5548731))

(declare-fun m!5548733 () Bool)

(assert (=> b!4663707 m!5548733))

(declare-fun m!5548735 () Bool)

(assert (=> b!4663707 m!5548735))

(declare-fun m!5548737 () Bool)

(assert (=> b!4663707 m!5548737))

(declare-fun m!5548739 () Bool)

(assert (=> b!4663707 m!5548739))

(declare-fun m!5548741 () Bool)

(assert (=> b!4663712 m!5548741))

(declare-fun m!5548743 () Bool)

(assert (=> b!4663712 m!5548743))

(assert (=> b!4663712 m!5548743))

(declare-fun m!5548745 () Bool)

(assert (=> b!4663712 m!5548745))

(assert (=> b!4663712 m!5548741))

(assert (=> b!4663712 m!5548745))

(declare-fun m!5548747 () Bool)

(assert (=> b!4663712 m!5548747))

(declare-fun m!5548749 () Bool)

(assert (=> b!4663699 m!5548749))

(declare-fun m!5548751 () Bool)

(assert (=> start!470044 m!5548751))

(declare-fun m!5548753 () Bool)

(assert (=> b!4663704 m!5548753))

(declare-fun m!5548755 () Bool)

(assert (=> b!4663697 m!5548755))

(declare-fun m!5548757 () Bool)

(assert (=> b!4663710 m!5548757))

(declare-fun m!5548759 () Bool)

(assert (=> b!4663698 m!5548759))

(declare-fun m!5548761 () Bool)

(assert (=> b!4663701 m!5548761))

(declare-fun m!5548763 () Bool)

(assert (=> b!4663701 m!5548763))

(declare-fun m!5548765 () Bool)

(assert (=> b!4663701 m!5548765))

(declare-fun m!5548767 () Bool)

(assert (=> b!4663705 m!5548767))

(declare-fun m!5548769 () Bool)

(assert (=> b!4663700 m!5548769))

(declare-fun m!5548771 () Bool)

(assert (=> b!4663700 m!5548771))

(declare-fun m!5548773 () Bool)

(assert (=> b!4663708 m!5548773))

(declare-fun m!5548775 () Bool)

(assert (=> b!4663708 m!5548775))

(declare-fun m!5548777 () Bool)

(assert (=> b!4663708 m!5548777))

(declare-fun m!5548779 () Bool)

(assert (=> b!4663708 m!5548779))

(declare-fun m!5548781 () Bool)

(assert (=> b!4663708 m!5548781))

(declare-fun m!5548783 () Bool)

(assert (=> b!4663708 m!5548783))

(declare-fun m!5548785 () Bool)

(assert (=> b!4663708 m!5548785))

(declare-fun m!5548787 () Bool)

(assert (=> b!4663708 m!5548787))

(declare-fun m!5548789 () Bool)

(assert (=> b!4663708 m!5548789))

(declare-fun m!5548791 () Bool)

(assert (=> b!4663708 m!5548791))

(assert (=> b!4663708 m!5548775))

(declare-fun m!5548793 () Bool)

(assert (=> b!4663708 m!5548793))

(assert (=> b!4663708 m!5548785))

(assert (=> b!4663708 m!5548793))

(assert (=> b!4663708 m!5548777))

(declare-fun m!5548795 () Bool)

(assert (=> b!4663708 m!5548795))

(assert (=> b!4663708 m!5548791))

(declare-fun m!5548797 () Bool)

(assert (=> b!4663708 m!5548797))

(declare-fun m!5548799 () Bool)

(assert (=> b!4663708 m!5548799))

(assert (=> b!4663708 m!5548781))

(declare-fun m!5548801 () Bool)

(assert (=> b!4663708 m!5548801))

(assert (=> b!4663708 m!5548799))

(assert (=> b!4663708 m!5548787))

(declare-fun m!5548803 () Bool)

(assert (=> b!4663708 m!5548803))

(assert (=> b!4663708 m!5548789))

(declare-fun m!5548805 () Bool)

(assert (=> b!4663708 m!5548805))

(declare-fun m!5548807 () Bool)

(assert (=> b!4663708 m!5548807))

(declare-fun m!5548809 () Bool)

(assert (=> b!4663709 m!5548809))

(declare-fun m!5548811 () Bool)

(assert (=> b!4663696 m!5548811))

(declare-fun m!5548813 () Bool)

(assert (=> b!4663703 m!5548813))

(declare-fun m!5548815 () Bool)

(assert (=> b!4663703 m!5548815))

(check-sat (not b!4663699) (not b!4663705) (not b!4663700) tp_is_empty!29959 tp_is_empty!29957 (not b!4663704) (not b!4663709) (not b!4663711) (not b!4663697) (not b!4663701) (not b!4663696) (not b!4663708) (not start!470044) (not b!4663712) (not b!4663710) (not b!4663702) (not b!4663698) (not b!4663707) (not b!4663703))
(check-sat)
(get-model)

(declare-fun b!4663868 () Bool)

(assert (=> b!4663868 true))

(declare-fun bs!1069617 () Bool)

(declare-fun b!4663870 () Bool)

(assert (= bs!1069617 (and b!4663870 b!4663868)))

(declare-fun lambda!201113 () Int)

(declare-fun lambda!201112 () Int)

(assert (=> bs!1069617 (= lambda!201113 lambda!201112)))

(assert (=> b!4663870 true))

(declare-fun lambda!201114 () Int)

(declare-fun lt!1825696 () ListMap!4601)

(assert (=> bs!1069617 (= (= lt!1825696 lt!1825493) (= lambda!201114 lambda!201112))))

(assert (=> b!4663870 (= (= lt!1825696 lt!1825493) (= lambda!201114 lambda!201113))))

(assert (=> b!4663870 true))

(declare-fun bs!1069621 () Bool)

(declare-fun d!1481547 () Bool)

(assert (= bs!1069621 (and d!1481547 b!4663868)))

(declare-fun lambda!201117 () Int)

(declare-fun lt!1825705 () ListMap!4601)

(assert (=> bs!1069621 (= (= lt!1825705 lt!1825493) (= lambda!201117 lambda!201112))))

(declare-fun bs!1069624 () Bool)

(assert (= bs!1069624 (and d!1481547 b!4663870)))

(assert (=> bs!1069624 (= (= lt!1825705 lt!1825493) (= lambda!201117 lambda!201113))))

(assert (=> bs!1069624 (= (= lt!1825705 lt!1825696) (= lambda!201117 lambda!201114))))

(assert (=> d!1481547 true))

(declare-fun b!4663867 () Bool)

(declare-fun e!2910283 () Bool)

(declare-fun forall!11079 (List!52094 Int) Bool)

(assert (=> b!4663867 (= e!2910283 (forall!11079 (toList!5261 lt!1825493) lambda!201114))))

(declare-fun bm!325850 () Bool)

(declare-fun call!325857 () Unit!119640)

(declare-fun lemmaContainsAllItsOwnKeys!620 (ListMap!4601) Unit!119640)

(assert (=> bm!325850 (= call!325857 (lemmaContainsAllItsOwnKeys!620 lt!1825493))))

(declare-fun c!798358 () Bool)

(declare-fun bm!325851 () Bool)

(declare-fun call!325856 () Bool)

(assert (=> bm!325851 (= call!325856 (forall!11079 (ite c!798358 (toList!5261 lt!1825493) (t!359216 oldBucket!40)) (ite c!798358 lambda!201112 lambda!201114)))))

(declare-fun e!2910285 () Bool)

(assert (=> d!1481547 e!2910285))

(declare-fun res!1962263 () Bool)

(assert (=> d!1481547 (=> (not res!1962263) (not e!2910285))))

(assert (=> d!1481547 (= res!1962263 (forall!11079 oldBucket!40 lambda!201117))))

(declare-fun e!2910284 () ListMap!4601)

(assert (=> d!1481547 (= lt!1825705 e!2910284)))

(assert (=> d!1481547 (= c!798358 ((_ is Nil!51970) oldBucket!40))))

(assert (=> d!1481547 (noDuplicateKeys!1666 oldBucket!40)))

(assert (=> d!1481547 (= (addToMapMapFromBucket!1123 oldBucket!40 lt!1825493) lt!1825705)))

(assert (=> b!4663868 (= e!2910284 lt!1825493)))

(declare-fun lt!1825698 () Unit!119640)

(assert (=> b!4663868 (= lt!1825698 call!325857)))

(assert (=> b!4663868 call!325856))

(declare-fun lt!1825700 () Unit!119640)

(assert (=> b!4663868 (= lt!1825700 lt!1825698)))

(declare-fun call!325855 () Bool)

(assert (=> b!4663868 call!325855))

(declare-fun lt!1825703 () Unit!119640)

(declare-fun Unit!119656 () Unit!119640)

(assert (=> b!4663868 (= lt!1825703 Unit!119656)))

(declare-fun bm!325852 () Bool)

(assert (=> bm!325852 (= call!325855 (forall!11079 (toList!5261 lt!1825493) (ite c!798358 lambda!201112 lambda!201113)))))

(declare-fun b!4663869 () Bool)

(declare-fun invariantList!1320 (List!52094) Bool)

(assert (=> b!4663869 (= e!2910285 (invariantList!1320 (toList!5261 lt!1825705)))))

(assert (=> b!4663870 (= e!2910284 lt!1825696)))

(declare-fun lt!1825697 () ListMap!4601)

(assert (=> b!4663870 (= lt!1825697 (+!2006 lt!1825493 (h!58136 oldBucket!40)))))

(assert (=> b!4663870 (= lt!1825696 (addToMapMapFromBucket!1123 (t!359216 oldBucket!40) (+!2006 lt!1825493 (h!58136 oldBucket!40))))))

(declare-fun lt!1825693 () Unit!119640)

(assert (=> b!4663870 (= lt!1825693 call!325857)))

(assert (=> b!4663870 call!325855))

(declare-fun lt!1825708 () Unit!119640)

(assert (=> b!4663870 (= lt!1825708 lt!1825693)))

(assert (=> b!4663870 (forall!11079 (toList!5261 lt!1825697) lambda!201114)))

(declare-fun lt!1825709 () Unit!119640)

(declare-fun Unit!119657 () Unit!119640)

(assert (=> b!4663870 (= lt!1825709 Unit!119657)))

(assert (=> b!4663870 call!325856))

(declare-fun lt!1825694 () Unit!119640)

(declare-fun Unit!119658 () Unit!119640)

(assert (=> b!4663870 (= lt!1825694 Unit!119658)))

(declare-fun lt!1825699 () Unit!119640)

(declare-fun Unit!119659 () Unit!119640)

(assert (=> b!4663870 (= lt!1825699 Unit!119659)))

(declare-fun lt!1825711 () Unit!119640)

(declare-fun forallContained!3280 (List!52094 Int tuple2!53110) Unit!119640)

(assert (=> b!4663870 (= lt!1825711 (forallContained!3280 (toList!5261 lt!1825697) lambda!201114 (h!58136 oldBucket!40)))))

(assert (=> b!4663870 (contains!15153 lt!1825697 (_1!29849 (h!58136 oldBucket!40)))))

(declare-fun lt!1825713 () Unit!119640)

(declare-fun Unit!119660 () Unit!119640)

(assert (=> b!4663870 (= lt!1825713 Unit!119660)))

(assert (=> b!4663870 (contains!15153 lt!1825696 (_1!29849 (h!58136 oldBucket!40)))))

(declare-fun lt!1825702 () Unit!119640)

(declare-fun Unit!119661 () Unit!119640)

(assert (=> b!4663870 (= lt!1825702 Unit!119661)))

(assert (=> b!4663870 (forall!11079 oldBucket!40 lambda!201114)))

(declare-fun lt!1825712 () Unit!119640)

(declare-fun Unit!119662 () Unit!119640)

(assert (=> b!4663870 (= lt!1825712 Unit!119662)))

(assert (=> b!4663870 (forall!11079 (toList!5261 lt!1825697) lambda!201114)))

(declare-fun lt!1825704 () Unit!119640)

(declare-fun Unit!119663 () Unit!119640)

(assert (=> b!4663870 (= lt!1825704 Unit!119663)))

(declare-fun lt!1825701 () Unit!119640)

(declare-fun Unit!119664 () Unit!119640)

(assert (=> b!4663870 (= lt!1825701 Unit!119664)))

(declare-fun lt!1825710 () Unit!119640)

(declare-fun addForallContainsKeyThenBeforeAdding!619 (ListMap!4601 ListMap!4601 K!13315 V!13561) Unit!119640)

(assert (=> b!4663870 (= lt!1825710 (addForallContainsKeyThenBeforeAdding!619 lt!1825493 lt!1825696 (_1!29849 (h!58136 oldBucket!40)) (_2!29849 (h!58136 oldBucket!40))))))

(assert (=> b!4663870 (forall!11079 (toList!5261 lt!1825493) lambda!201114)))

(declare-fun lt!1825707 () Unit!119640)

(assert (=> b!4663870 (= lt!1825707 lt!1825710)))

(assert (=> b!4663870 (forall!11079 (toList!5261 lt!1825493) lambda!201114)))

(declare-fun lt!1825695 () Unit!119640)

(declare-fun Unit!119665 () Unit!119640)

(assert (=> b!4663870 (= lt!1825695 Unit!119665)))

(declare-fun res!1962262 () Bool)

(assert (=> b!4663870 (= res!1962262 (forall!11079 oldBucket!40 lambda!201114))))

(assert (=> b!4663870 (=> (not res!1962262) (not e!2910283))))

(assert (=> b!4663870 e!2910283))

(declare-fun lt!1825706 () Unit!119640)

(declare-fun Unit!119666 () Unit!119640)

(assert (=> b!4663870 (= lt!1825706 Unit!119666)))

(declare-fun b!4663871 () Bool)

(declare-fun res!1962264 () Bool)

(assert (=> b!4663871 (=> (not res!1962264) (not e!2910285))))

(assert (=> b!4663871 (= res!1962264 (forall!11079 (toList!5261 lt!1825493) lambda!201117))))

(assert (= (and d!1481547 c!798358) b!4663868))

(assert (= (and d!1481547 (not c!798358)) b!4663870))

(assert (= (and b!4663870 res!1962262) b!4663867))

(assert (= (or b!4663868 b!4663870) bm!325850))

(assert (= (or b!4663868 b!4663870) bm!325851))

(assert (= (or b!4663868 b!4663870) bm!325852))

(assert (= (and d!1481547 res!1962263) b!4663871))

(assert (= (and b!4663871 res!1962264) b!4663869))

(declare-fun m!5548975 () Bool)

(assert (=> b!4663870 m!5548975))

(declare-fun m!5548977 () Bool)

(assert (=> b!4663870 m!5548977))

(declare-fun m!5548979 () Bool)

(assert (=> b!4663870 m!5548979))

(declare-fun m!5548981 () Bool)

(assert (=> b!4663870 m!5548981))

(assert (=> b!4663870 m!5548977))

(declare-fun m!5548983 () Bool)

(assert (=> b!4663870 m!5548983))

(declare-fun m!5548985 () Bool)

(assert (=> b!4663870 m!5548985))

(declare-fun m!5548987 () Bool)

(assert (=> b!4663870 m!5548987))

(declare-fun m!5548989 () Bool)

(assert (=> b!4663870 m!5548989))

(assert (=> b!4663870 m!5548979))

(assert (=> b!4663870 m!5548985))

(declare-fun m!5548991 () Bool)

(assert (=> b!4663870 m!5548991))

(assert (=> b!4663870 m!5548983))

(declare-fun m!5548993 () Bool)

(assert (=> bm!325852 m!5548993))

(assert (=> b!4663867 m!5548977))

(declare-fun m!5548995 () Bool)

(assert (=> b!4663869 m!5548995))

(declare-fun m!5548997 () Bool)

(assert (=> bm!325851 m!5548997))

(declare-fun m!5548999 () Bool)

(assert (=> b!4663871 m!5548999))

(declare-fun m!5549001 () Bool)

(assert (=> d!1481547 m!5549001))

(assert (=> d!1481547 m!5548751))

(declare-fun m!5549003 () Bool)

(assert (=> bm!325850 m!5549003))

(assert (=> b!4663700 d!1481547))

(declare-fun bs!1069636 () Bool)

(declare-fun d!1481585 () Bool)

(assert (= bs!1069636 (and d!1481585 b!4663707)))

(declare-fun lambda!201123 () Int)

(assert (=> bs!1069636 (= lambda!201123 lambda!201036)))

(declare-fun lt!1825742 () ListMap!4601)

(assert (=> d!1481585 (invariantList!1320 (toList!5261 lt!1825742))))

(declare-fun e!2910295 () ListMap!4601)

(assert (=> d!1481585 (= lt!1825742 e!2910295)))

(declare-fun c!798363 () Bool)

(assert (=> d!1481585 (= c!798363 ((_ is Cons!51971) Nil!51971))))

(declare-fun forall!11080 (List!52095 Int) Bool)

(assert (=> d!1481585 (forall!11080 Nil!51971 lambda!201123)))

(assert (=> d!1481585 (= (extractMap!1722 Nil!51971) lt!1825742)))

(declare-fun b!4663891 () Bool)

(assert (=> b!4663891 (= e!2910295 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 Nil!51971)) (extractMap!1722 (t!359217 Nil!51971))))))

(declare-fun b!4663892 () Bool)

(assert (=> b!4663892 (= e!2910295 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481585 c!798363) b!4663891))

(assert (= (and d!1481585 (not c!798363)) b!4663892))

(declare-fun m!5549065 () Bool)

(assert (=> d!1481585 m!5549065))

(declare-fun m!5549067 () Bool)

(assert (=> d!1481585 m!5549067))

(declare-fun m!5549069 () Bool)

(assert (=> b!4663891 m!5549069))

(assert (=> b!4663891 m!5549069))

(declare-fun m!5549071 () Bool)

(assert (=> b!4663891 m!5549071))

(assert (=> b!4663700 d!1481585))

(declare-fun d!1481597 () Bool)

(declare-fun res!1962276 () Bool)

(declare-fun e!2910300 () Bool)

(assert (=> d!1481597 (=> res!1962276 e!2910300)))

(assert (=> d!1481597 (= res!1962276 (not ((_ is Cons!51970) (t!359216 oldBucket!40))))))

(assert (=> d!1481597 (= (noDuplicateKeys!1666 (t!359216 oldBucket!40)) e!2910300)))

(declare-fun b!4663897 () Bool)

(declare-fun e!2910301 () Bool)

(assert (=> b!4663897 (= e!2910300 e!2910301)))

(declare-fun res!1962277 () Bool)

(assert (=> b!4663897 (=> (not res!1962277) (not e!2910301))))

(assert (=> b!4663897 (= res!1962277 (not (containsKey!2788 (t!359216 (t!359216 oldBucket!40)) (_1!29849 (h!58136 (t!359216 oldBucket!40))))))))

(declare-fun b!4663898 () Bool)

(assert (=> b!4663898 (= e!2910301 (noDuplicateKeys!1666 (t!359216 (t!359216 oldBucket!40))))))

(assert (= (and d!1481597 (not res!1962276)) b!4663897))

(assert (= (and b!4663897 res!1962277) b!4663898))

(declare-fun m!5549073 () Bool)

(assert (=> b!4663897 m!5549073))

(declare-fun m!5549075 () Bool)

(assert (=> b!4663898 m!5549075))

(assert (=> b!4663710 d!1481597))

(declare-fun d!1481599 () Bool)

(declare-fun lt!1825752 () List!52094)

(assert (=> d!1481599 (not (containsKey!2788 lt!1825752 key!4968))))

(declare-fun e!2910308 () List!52094)

(assert (=> d!1481599 (= lt!1825752 e!2910308)))

(declare-fun c!798369 () Bool)

(assert (=> d!1481599 (= c!798369 (and ((_ is Cons!51970) oldBucket!40) (= (_1!29849 (h!58136 oldBucket!40)) key!4968)))))

(assert (=> d!1481599 (noDuplicateKeys!1666 oldBucket!40)))

(assert (=> d!1481599 (= (removePairForKey!1289 oldBucket!40 key!4968) lt!1825752)))

(declare-fun b!4663910 () Bool)

(declare-fun e!2910307 () List!52094)

(assert (=> b!4663910 (= e!2910308 e!2910307)))

(declare-fun c!798368 () Bool)

(assert (=> b!4663910 (= c!798368 ((_ is Cons!51970) oldBucket!40))))

(declare-fun b!4663911 () Bool)

(assert (=> b!4663911 (= e!2910307 (Cons!51970 (h!58136 oldBucket!40) (removePairForKey!1289 (t!359216 oldBucket!40) key!4968)))))

(declare-fun b!4663909 () Bool)

(assert (=> b!4663909 (= e!2910308 (t!359216 oldBucket!40))))

(declare-fun b!4663912 () Bool)

(assert (=> b!4663912 (= e!2910307 Nil!51970)))

(assert (= (and d!1481599 c!798369) b!4663909))

(assert (= (and d!1481599 (not c!798369)) b!4663910))

(assert (= (and b!4663910 c!798368) b!4663911))

(assert (= (and b!4663910 (not c!798368)) b!4663912))

(declare-fun m!5549097 () Bool)

(assert (=> d!1481599 m!5549097))

(assert (=> d!1481599 m!5548751))

(assert (=> b!4663911 m!5548809))

(assert (=> b!4663699 d!1481599))

(declare-fun bs!1069655 () Bool)

(declare-fun d!1481607 () Bool)

(assert (= bs!1069655 (and d!1481607 b!4663868)))

(declare-fun lambda!201131 () Int)

(assert (=> bs!1069655 (not (= lambda!201131 lambda!201112))))

(declare-fun bs!1069657 () Bool)

(assert (= bs!1069657 (and d!1481607 b!4663870)))

(assert (=> bs!1069657 (not (= lambda!201131 lambda!201113))))

(assert (=> bs!1069657 (not (= lambda!201131 lambda!201114))))

(declare-fun bs!1069658 () Bool)

(assert (= bs!1069658 (and d!1481607 d!1481547)))

(assert (=> bs!1069658 (not (= lambda!201131 lambda!201117))))

(assert (=> d!1481607 true))

(assert (=> d!1481607 true))

(assert (=> d!1481607 (= (allKeysSameHash!1520 newBucket!224 hash!414 hashF!1389) (forall!11079 newBucket!224 lambda!201131))))

(declare-fun bs!1069659 () Bool)

(assert (= bs!1069659 d!1481607))

(declare-fun m!5549099 () Bool)

(assert (=> bs!1069659 m!5549099))

(assert (=> b!4663698 d!1481607))

(declare-fun d!1481609 () Bool)

(declare-fun lt!1825774 () List!52094)

(assert (=> d!1481609 (not (containsKey!2788 lt!1825774 key!4968))))

(declare-fun e!2910313 () List!52094)

(assert (=> d!1481609 (= lt!1825774 e!2910313)))

(declare-fun c!798372 () Bool)

(assert (=> d!1481609 (= c!798372 (and ((_ is Cons!51970) (t!359216 oldBucket!40)) (= (_1!29849 (h!58136 (t!359216 oldBucket!40))) key!4968)))))

(assert (=> d!1481609 (noDuplicateKeys!1666 (t!359216 oldBucket!40))))

(assert (=> d!1481609 (= (removePairForKey!1289 (t!359216 oldBucket!40) key!4968) lt!1825774)))

(declare-fun b!4663923 () Bool)

(declare-fun e!2910312 () List!52094)

(assert (=> b!4663923 (= e!2910313 e!2910312)))

(declare-fun c!798371 () Bool)

(assert (=> b!4663923 (= c!798371 ((_ is Cons!51970) (t!359216 oldBucket!40)))))

(declare-fun b!4663924 () Bool)

(assert (=> b!4663924 (= e!2910312 (Cons!51970 (h!58136 (t!359216 oldBucket!40)) (removePairForKey!1289 (t!359216 (t!359216 oldBucket!40)) key!4968)))))

(declare-fun b!4663922 () Bool)

(assert (=> b!4663922 (= e!2910313 (t!359216 (t!359216 oldBucket!40)))))

(declare-fun b!4663925 () Bool)

(assert (=> b!4663925 (= e!2910312 Nil!51970)))

(assert (= (and d!1481609 c!798372) b!4663922))

(assert (= (and d!1481609 (not c!798372)) b!4663923))

(assert (= (and b!4663923 c!798371) b!4663924))

(assert (= (and b!4663923 (not c!798371)) b!4663925))

(declare-fun m!5549101 () Bool)

(assert (=> d!1481609 m!5549101))

(assert (=> d!1481609 m!5548757))

(declare-fun m!5549103 () Bool)

(assert (=> b!4663924 m!5549103))

(assert (=> b!4663709 d!1481609))

(declare-fun b!4663958 () Bool)

(declare-fun e!2910340 () Bool)

(declare-fun e!2910339 () Bool)

(assert (=> b!4663958 (= e!2910340 e!2910339)))

(declare-fun res!1962295 () Bool)

(assert (=> b!4663958 (=> (not res!1962295) (not e!2910339))))

(declare-datatypes ((Option!11889 0))(
  ( (None!11888) (Some!11888 (v!46218 V!13561)) )
))
(declare-fun isDefined!9154 (Option!11889) Bool)

(declare-fun getValueByKey!1653 (List!52094 K!13315) Option!11889)

(assert (=> b!4663958 (= res!1962295 (isDefined!9154 (getValueByKey!1653 (toList!5261 lt!1825501) key!4968)))))

(declare-fun b!4663959 () Bool)

(declare-datatypes ((List!52097 0))(
  ( (Nil!51973) (Cons!51973 (h!58141 K!13315) (t!359221 List!52097)) )
))
(declare-fun e!2910335 () List!52097)

(declare-fun getKeysList!771 (List!52094) List!52097)

(assert (=> b!4663959 (= e!2910335 (getKeysList!771 (toList!5261 lt!1825501)))))

(declare-fun b!4663960 () Bool)

(declare-fun e!2910336 () Unit!119640)

(declare-fun Unit!119667 () Unit!119640)

(assert (=> b!4663960 (= e!2910336 Unit!119667)))

(declare-fun b!4663961 () Bool)

(declare-fun keys!18436 (ListMap!4601) List!52097)

(assert (=> b!4663961 (= e!2910335 (keys!18436 lt!1825501))))

(declare-fun b!4663962 () Bool)

(declare-fun e!2910337 () Unit!119640)

(assert (=> b!4663962 (= e!2910337 e!2910336)))

(declare-fun c!798383 () Bool)

(declare-fun call!325870 () Bool)

(assert (=> b!4663962 (= c!798383 call!325870)))

(declare-fun b!4663963 () Bool)

(declare-fun contains!15158 (List!52097 K!13315) Bool)

(assert (=> b!4663963 (= e!2910339 (contains!15158 (keys!18436 lt!1825501) key!4968))))

(declare-fun b!4663964 () Bool)

(declare-fun e!2910338 () Bool)

(assert (=> b!4663964 (= e!2910338 (not (contains!15158 (keys!18436 lt!1825501) key!4968)))))

(declare-fun b!4663965 () Bool)

(assert (=> b!4663965 false))

(declare-fun lt!1825826 () Unit!119640)

(declare-fun lt!1825823 () Unit!119640)

(assert (=> b!4663965 (= lt!1825826 lt!1825823)))

(declare-fun containsKey!2791 (List!52094 K!13315) Bool)

(assert (=> b!4663965 (containsKey!2791 (toList!5261 lt!1825501) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!770 (List!52094 K!13315) Unit!119640)

(assert (=> b!4663965 (= lt!1825823 (lemmaInGetKeysListThenContainsKey!770 (toList!5261 lt!1825501) key!4968))))

(declare-fun Unit!119668 () Unit!119640)

(assert (=> b!4663965 (= e!2910336 Unit!119668)))

(declare-fun d!1481611 () Bool)

(assert (=> d!1481611 e!2910340))

(declare-fun res!1962297 () Bool)

(assert (=> d!1481611 (=> res!1962297 e!2910340)))

(assert (=> d!1481611 (= res!1962297 e!2910338)))

(declare-fun res!1962296 () Bool)

(assert (=> d!1481611 (=> (not res!1962296) (not e!2910338))))

(declare-fun lt!1825827 () Bool)

(assert (=> d!1481611 (= res!1962296 (not lt!1825827))))

(declare-fun lt!1825820 () Bool)

(assert (=> d!1481611 (= lt!1825827 lt!1825820)))

(declare-fun lt!1825822 () Unit!119640)

(assert (=> d!1481611 (= lt!1825822 e!2910337)))

(declare-fun c!798384 () Bool)

(assert (=> d!1481611 (= c!798384 lt!1825820)))

(assert (=> d!1481611 (= lt!1825820 (containsKey!2791 (toList!5261 lt!1825501) key!4968))))

(assert (=> d!1481611 (= (contains!15153 lt!1825501 key!4968) lt!1825827)))

(declare-fun b!4663966 () Bool)

(declare-fun lt!1825821 () Unit!119640)

(assert (=> b!4663966 (= e!2910337 lt!1825821)))

(declare-fun lt!1825825 () Unit!119640)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1555 (List!52094 K!13315) Unit!119640)

(assert (=> b!4663966 (= lt!1825825 (lemmaContainsKeyImpliesGetValueByKeyDefined!1555 (toList!5261 lt!1825501) key!4968))))

(assert (=> b!4663966 (isDefined!9154 (getValueByKey!1653 (toList!5261 lt!1825501) key!4968))))

(declare-fun lt!1825824 () Unit!119640)

(assert (=> b!4663966 (= lt!1825824 lt!1825825)))

(declare-fun lemmaInListThenGetKeysListContains!766 (List!52094 K!13315) Unit!119640)

(assert (=> b!4663966 (= lt!1825821 (lemmaInListThenGetKeysListContains!766 (toList!5261 lt!1825501) key!4968))))

(assert (=> b!4663966 call!325870))

(declare-fun bm!325865 () Bool)

(assert (=> bm!325865 (= call!325870 (contains!15158 e!2910335 key!4968))))

(declare-fun c!798385 () Bool)

(assert (=> bm!325865 (= c!798385 c!798384)))

(assert (= (and d!1481611 c!798384) b!4663966))

(assert (= (and d!1481611 (not c!798384)) b!4663962))

(assert (= (and b!4663962 c!798383) b!4663965))

(assert (= (and b!4663962 (not c!798383)) b!4663960))

(assert (= (or b!4663966 b!4663962) bm!325865))

(assert (= (and bm!325865 c!798385) b!4663959))

(assert (= (and bm!325865 (not c!798385)) b!4663961))

(assert (= (and d!1481611 res!1962296) b!4663964))

(assert (= (and d!1481611 (not res!1962297)) b!4663958))

(assert (= (and b!4663958 res!1962295) b!4663963))

(declare-fun m!5549193 () Bool)

(assert (=> b!4663965 m!5549193))

(declare-fun m!5549195 () Bool)

(assert (=> b!4663965 m!5549195))

(declare-fun m!5549197 () Bool)

(assert (=> b!4663958 m!5549197))

(assert (=> b!4663958 m!5549197))

(declare-fun m!5549199 () Bool)

(assert (=> b!4663958 m!5549199))

(declare-fun m!5549201 () Bool)

(assert (=> b!4663959 m!5549201))

(assert (=> d!1481611 m!5549193))

(declare-fun m!5549203 () Bool)

(assert (=> bm!325865 m!5549203))

(declare-fun m!5549205 () Bool)

(assert (=> b!4663966 m!5549205))

(assert (=> b!4663966 m!5549197))

(assert (=> b!4663966 m!5549197))

(assert (=> b!4663966 m!5549199))

(declare-fun m!5549207 () Bool)

(assert (=> b!4663966 m!5549207))

(declare-fun m!5549209 () Bool)

(assert (=> b!4663964 m!5549209))

(assert (=> b!4663964 m!5549209))

(declare-fun m!5549211 () Bool)

(assert (=> b!4663964 m!5549211))

(assert (=> b!4663961 m!5549209))

(assert (=> b!4663963 m!5549209))

(assert (=> b!4663963 m!5549209))

(assert (=> b!4663963 m!5549211))

(assert (=> b!4663703 d!1481611))

(declare-fun bs!1069694 () Bool)

(declare-fun d!1481619 () Bool)

(assert (= bs!1069694 (and d!1481619 b!4663707)))

(declare-fun lambda!201138 () Int)

(assert (=> bs!1069694 (= lambda!201138 lambda!201036)))

(declare-fun bs!1069695 () Bool)

(assert (= bs!1069695 (and d!1481619 d!1481585)))

(assert (=> bs!1069695 (= lambda!201138 lambda!201123)))

(declare-fun lt!1825828 () ListMap!4601)

(assert (=> d!1481619 (invariantList!1320 (toList!5261 lt!1825828))))

(declare-fun e!2910341 () ListMap!4601)

(assert (=> d!1481619 (= lt!1825828 e!2910341)))

(declare-fun c!798386 () Bool)

(assert (=> d!1481619 (= c!798386 ((_ is Cons!51971) lt!1825507))))

(assert (=> d!1481619 (forall!11080 lt!1825507 lambda!201138)))

(assert (=> d!1481619 (= (extractMap!1722 lt!1825507) lt!1825828)))

(declare-fun b!4663967 () Bool)

(assert (=> b!4663967 (= e!2910341 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 lt!1825507)) (extractMap!1722 (t!359217 lt!1825507))))))

(declare-fun b!4663968 () Bool)

(assert (=> b!4663968 (= e!2910341 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481619 c!798386) b!4663967))

(assert (= (and d!1481619 (not c!798386)) b!4663968))

(declare-fun m!5549213 () Bool)

(assert (=> d!1481619 m!5549213))

(declare-fun m!5549215 () Bool)

(assert (=> d!1481619 m!5549215))

(declare-fun m!5549217 () Bool)

(assert (=> b!4663967 m!5549217))

(assert (=> b!4663967 m!5549217))

(declare-fun m!5549219 () Bool)

(assert (=> b!4663967 m!5549219))

(assert (=> b!4663703 d!1481619))

(declare-fun d!1481621 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9038 (List!52094) (InoxSet tuple2!53110))

(assert (=> d!1481621 (= (eq!921 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)) (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)) lt!1825490)) (= (content!9038 (toList!5261 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)))) (content!9038 (toList!5261 (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)) lt!1825490)))))))

(declare-fun bs!1069696 () Bool)

(assert (= bs!1069696 d!1481621))

(declare-fun m!5549221 () Bool)

(assert (=> bs!1069696 m!5549221))

(declare-fun m!5549223 () Bool)

(assert (=> bs!1069696 m!5549223))

(assert (=> b!4663712 d!1481621))

(declare-fun bs!1069697 () Bool)

(declare-fun d!1481623 () Bool)

(assert (= bs!1069697 (and d!1481623 b!4663707)))

(declare-fun lambda!201139 () Int)

(assert (=> bs!1069697 (= lambda!201139 lambda!201036)))

(declare-fun bs!1069698 () Bool)

(assert (= bs!1069698 (and d!1481623 d!1481585)))

(assert (=> bs!1069698 (= lambda!201139 lambda!201123)))

(declare-fun bs!1069699 () Bool)

(assert (= bs!1069699 (and d!1481623 d!1481619)))

(assert (=> bs!1069699 (= lambda!201139 lambda!201138)))

(declare-fun lt!1825829 () ListMap!4601)

(assert (=> d!1481623 (invariantList!1320 (toList!5261 lt!1825829))))

(declare-fun e!2910342 () ListMap!4601)

(assert (=> d!1481623 (= lt!1825829 e!2910342)))

(declare-fun c!798387 () Bool)

(assert (=> d!1481623 (= c!798387 ((_ is Cons!51971) (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)))))

(assert (=> d!1481623 (forall!11080 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971) lambda!201139)))

(assert (=> d!1481623 (= (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)) lt!1825829)))

(declare-fun b!4663969 () Bool)

(assert (=> b!4663969 (= e!2910342 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971))) (extractMap!1722 (t!359217 (Cons!51971 (tuple2!53113 hash!414 newBucket!224) Nil!51971)))))))

(declare-fun b!4663970 () Bool)

(assert (=> b!4663970 (= e!2910342 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481623 c!798387) b!4663969))

(assert (= (and d!1481623 (not c!798387)) b!4663970))

(declare-fun m!5549225 () Bool)

(assert (=> d!1481623 m!5549225))

(declare-fun m!5549227 () Bool)

(assert (=> d!1481623 m!5549227))

(declare-fun m!5549229 () Bool)

(assert (=> b!4663969 m!5549229))

(assert (=> b!4663969 m!5549229))

(declare-fun m!5549231 () Bool)

(assert (=> b!4663969 m!5549231))

(assert (=> b!4663712 d!1481623))

(declare-fun d!1481625 () Bool)

(declare-fun e!2910348 () Bool)

(assert (=> d!1481625 e!2910348))

(declare-fun res!1962305 () Bool)

(assert (=> d!1481625 (=> (not res!1962305) (not e!2910348))))

(declare-fun lt!1825863 () ListMap!4601)

(assert (=> d!1481625 (= res!1962305 (contains!15153 lt!1825863 (_1!29849 lt!1825490)))))

(declare-fun lt!1825862 () List!52094)

(assert (=> d!1481625 (= lt!1825863 (ListMap!4602 lt!1825862))))

(declare-fun lt!1825864 () Unit!119640)

(declare-fun lt!1825865 () Unit!119640)

(assert (=> d!1481625 (= lt!1825864 lt!1825865)))

(assert (=> d!1481625 (= (getValueByKey!1653 lt!1825862 (_1!29849 lt!1825490)) (Some!11888 (_2!29849 lt!1825490)))))

(declare-fun lemmaContainsTupThenGetReturnValue!938 (List!52094 K!13315 V!13561) Unit!119640)

(assert (=> d!1481625 (= lt!1825865 (lemmaContainsTupThenGetReturnValue!938 lt!1825862 (_1!29849 lt!1825490) (_2!29849 lt!1825490)))))

(declare-fun insertNoDuplicatedKeys!446 (List!52094 K!13315 V!13561) List!52094)

(assert (=> d!1481625 (= lt!1825862 (insertNoDuplicatedKeys!446 (toList!5261 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971))) (_1!29849 lt!1825490) (_2!29849 lt!1825490)))))

(assert (=> d!1481625 (= (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)) lt!1825490) lt!1825863)))

(declare-fun b!4663980 () Bool)

(declare-fun res!1962306 () Bool)

(assert (=> b!4663980 (=> (not res!1962306) (not e!2910348))))

(assert (=> b!4663980 (= res!1962306 (= (getValueByKey!1653 (toList!5261 lt!1825863) (_1!29849 lt!1825490)) (Some!11888 (_2!29849 lt!1825490))))))

(declare-fun b!4663981 () Bool)

(declare-fun contains!15159 (List!52094 tuple2!53110) Bool)

(assert (=> b!4663981 (= e!2910348 (contains!15159 (toList!5261 lt!1825863) lt!1825490))))

(assert (= (and d!1481625 res!1962305) b!4663980))

(assert (= (and b!4663980 res!1962306) b!4663981))

(declare-fun m!5549249 () Bool)

(assert (=> d!1481625 m!5549249))

(declare-fun m!5549253 () Bool)

(assert (=> d!1481625 m!5549253))

(declare-fun m!5549257 () Bool)

(assert (=> d!1481625 m!5549257))

(declare-fun m!5549261 () Bool)

(assert (=> d!1481625 m!5549261))

(declare-fun m!5549266 () Bool)

(assert (=> b!4663980 m!5549266))

(declare-fun m!5549269 () Bool)

(assert (=> b!4663981 m!5549269))

(assert (=> b!4663712 d!1481625))

(declare-fun bs!1069737 () Bool)

(declare-fun d!1481629 () Bool)

(assert (= bs!1069737 (and d!1481629 b!4663707)))

(declare-fun lambda!201144 () Int)

(assert (=> bs!1069737 (= lambda!201144 lambda!201036)))

(declare-fun bs!1069738 () Bool)

(assert (= bs!1069738 (and d!1481629 d!1481585)))

(assert (=> bs!1069738 (= lambda!201144 lambda!201123)))

(declare-fun bs!1069739 () Bool)

(assert (= bs!1069739 (and d!1481629 d!1481619)))

(assert (=> bs!1069739 (= lambda!201144 lambda!201138)))

(declare-fun bs!1069740 () Bool)

(assert (= bs!1069740 (and d!1481629 d!1481623)))

(assert (=> bs!1069740 (= lambda!201144 lambda!201139)))

(declare-fun lt!1825866 () ListMap!4601)

(assert (=> d!1481629 (invariantList!1320 (toList!5261 lt!1825866))))

(declare-fun e!2910349 () ListMap!4601)

(assert (=> d!1481629 (= lt!1825866 e!2910349)))

(declare-fun c!798389 () Bool)

(assert (=> d!1481629 (= c!798389 ((_ is Cons!51971) (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)))))

(assert (=> d!1481629 (forall!11080 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971) lambda!201144)))

(assert (=> d!1481629 (= (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)) lt!1825866)))

(declare-fun b!4663982 () Bool)

(assert (=> b!4663982 (= e!2910349 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971))) (extractMap!1722 (t!359217 (Cons!51971 (tuple2!53113 hash!414 lt!1825505) Nil!51971)))))))

(declare-fun b!4663983 () Bool)

(assert (=> b!4663983 (= e!2910349 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481629 c!798389) b!4663982))

(assert (= (and d!1481629 (not c!798389)) b!4663983))

(declare-fun m!5549287 () Bool)

(assert (=> d!1481629 m!5549287))

(declare-fun m!5549291 () Bool)

(assert (=> d!1481629 m!5549291))

(declare-fun m!5549295 () Bool)

(assert (=> b!4663982 m!5549295))

(assert (=> b!4663982 m!5549295))

(declare-fun m!5549299 () Bool)

(assert (=> b!4663982 m!5549299))

(assert (=> b!4663712 d!1481629))

(declare-fun d!1481637 () Bool)

(declare-fun lt!1825871 () List!52094)

(assert (=> d!1481637 (not (containsKey!2788 lt!1825871 key!4968))))

(declare-fun e!2910352 () List!52094)

(assert (=> d!1481637 (= lt!1825871 e!2910352)))

(declare-fun c!798391 () Bool)

(assert (=> d!1481637 (= c!798391 (and ((_ is Cons!51970) lt!1825496) (= (_1!29849 (h!58136 lt!1825496)) key!4968)))))

(assert (=> d!1481637 (noDuplicateKeys!1666 lt!1825496)))

(assert (=> d!1481637 (= (removePairForKey!1289 lt!1825496 key!4968) lt!1825871)))

(declare-fun b!4663987 () Bool)

(declare-fun e!2910351 () List!52094)

(assert (=> b!4663987 (= e!2910352 e!2910351)))

(declare-fun c!798390 () Bool)

(assert (=> b!4663987 (= c!798390 ((_ is Cons!51970) lt!1825496))))

(declare-fun b!4663988 () Bool)

(assert (=> b!4663988 (= e!2910351 (Cons!51970 (h!58136 lt!1825496) (removePairForKey!1289 (t!359216 lt!1825496) key!4968)))))

(declare-fun b!4663986 () Bool)

(assert (=> b!4663986 (= e!2910352 (t!359216 lt!1825496))))

(declare-fun b!4663989 () Bool)

(assert (=> b!4663989 (= e!2910351 Nil!51970)))

(assert (= (and d!1481637 c!798391) b!4663986))

(assert (= (and d!1481637 (not c!798391)) b!4663987))

(assert (= (and b!4663987 c!798390) b!4663988))

(assert (= (and b!4663987 (not c!798390)) b!4663989))

(declare-fun m!5549305 () Bool)

(assert (=> d!1481637 m!5549305))

(declare-fun m!5549307 () Bool)

(assert (=> d!1481637 m!5549307))

(declare-fun m!5549309 () Bool)

(assert (=> b!4663988 m!5549309))

(assert (=> b!4663701 d!1481637))

(declare-fun d!1481641 () Bool)

(assert (=> d!1481641 (= (tail!8269 newBucket!224) (t!359216 newBucket!224))))

(assert (=> b!4663701 d!1481641))

(declare-fun d!1481643 () Bool)

(assert (=> d!1481643 (= (tail!8269 oldBucket!40) (t!359216 oldBucket!40))))

(assert (=> b!4663701 d!1481643))

(declare-fun bs!1069750 () Bool)

(declare-fun d!1481645 () Bool)

(assert (= bs!1069750 (and d!1481645 b!4663870)))

(declare-fun lambda!201146 () Int)

(assert (=> bs!1069750 (not (= lambda!201146 lambda!201113))))

(assert (=> bs!1069750 (not (= lambda!201146 lambda!201114))))

(declare-fun bs!1069751 () Bool)

(assert (= bs!1069751 (and d!1481645 b!4663868)))

(assert (=> bs!1069751 (not (= lambda!201146 lambda!201112))))

(declare-fun bs!1069752 () Bool)

(assert (= bs!1069752 (and d!1481645 d!1481547)))

(assert (=> bs!1069752 (not (= lambda!201146 lambda!201117))))

(declare-fun bs!1069753 () Bool)

(assert (= bs!1069753 (and d!1481645 d!1481607)))

(assert (=> bs!1069753 (= lambda!201146 lambda!201131)))

(assert (=> d!1481645 true))

(assert (=> d!1481645 true))

(assert (=> d!1481645 (= (allKeysSameHash!1520 oldBucket!40 hash!414 hashF!1389) (forall!11079 oldBucket!40 lambda!201146))))

(declare-fun bs!1069755 () Bool)

(assert (= bs!1069755 d!1481645))

(declare-fun m!5549321 () Bool)

(assert (=> bs!1069755 m!5549321))

(assert (=> b!4663705 d!1481645))

(declare-fun d!1481649 () Bool)

(declare-fun hash!3827 (Hashable!6063 K!13315) (_ BitVec 64))

(assert (=> d!1481649 (= (hash!3825 hashF!1389 key!4968) (hash!3827 hashF!1389 key!4968))))

(declare-fun bs!1069756 () Bool)

(assert (= bs!1069756 d!1481649))

(declare-fun m!5549325 () Bool)

(assert (=> bs!1069756 m!5549325))

(assert (=> b!4663704 d!1481649))

(declare-fun d!1481653 () Bool)

(declare-fun res!1962312 () Bool)

(declare-fun e!2910357 () Bool)

(assert (=> d!1481653 (=> res!1962312 e!2910357)))

(assert (=> d!1481653 (= res!1962312 (not ((_ is Cons!51970) oldBucket!40)))))

(assert (=> d!1481653 (= (noDuplicateKeys!1666 oldBucket!40) e!2910357)))

(declare-fun b!4663997 () Bool)

(declare-fun e!2910358 () Bool)

(assert (=> b!4663997 (= e!2910357 e!2910358)))

(declare-fun res!1962313 () Bool)

(assert (=> b!4663997 (=> (not res!1962313) (not e!2910358))))

(assert (=> b!4663997 (= res!1962313 (not (containsKey!2788 (t!359216 oldBucket!40) (_1!29849 (h!58136 oldBucket!40)))))))

(declare-fun b!4663998 () Bool)

(assert (=> b!4663998 (= e!2910358 (noDuplicateKeys!1666 (t!359216 oldBucket!40)))))

(assert (= (and d!1481653 (not res!1962312)) b!4663997))

(assert (= (and b!4663997 res!1962313) b!4663998))

(declare-fun m!5549327 () Bool)

(assert (=> b!4663997 m!5549327))

(assert (=> b!4663998 m!5548757))

(assert (=> start!470044 d!1481653))

(declare-fun d!1481655 () Bool)

(declare-fun e!2910359 () Bool)

(assert (=> d!1481655 e!2910359))

(declare-fun res!1962314 () Bool)

(assert (=> d!1481655 (=> (not res!1962314) (not e!2910359))))

(declare-fun lt!1825895 () ListMap!4601)

(assert (=> d!1481655 (= res!1962314 (contains!15153 lt!1825895 (_1!29849 lt!1825506)))))

(declare-fun lt!1825894 () List!52094)

(assert (=> d!1481655 (= lt!1825895 (ListMap!4602 lt!1825894))))

(declare-fun lt!1825896 () Unit!119640)

(declare-fun lt!1825897 () Unit!119640)

(assert (=> d!1481655 (= lt!1825896 lt!1825897)))

(assert (=> d!1481655 (= (getValueByKey!1653 lt!1825894 (_1!29849 lt!1825506)) (Some!11888 (_2!29849 lt!1825506)))))

(assert (=> d!1481655 (= lt!1825897 (lemmaContainsTupThenGetReturnValue!938 lt!1825894 (_1!29849 lt!1825506) (_2!29849 lt!1825506)))))

(assert (=> d!1481655 (= lt!1825894 (insertNoDuplicatedKeys!446 (toList!5261 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970))) (_1!29849 lt!1825506) (_2!29849 lt!1825506)))))

(assert (=> d!1481655 (= (+!2006 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825506) lt!1825895)))

(declare-fun b!4663999 () Bool)

(declare-fun res!1962315 () Bool)

(assert (=> b!4663999 (=> (not res!1962315) (not e!2910359))))

(assert (=> b!4663999 (= res!1962315 (= (getValueByKey!1653 (toList!5261 lt!1825895) (_1!29849 lt!1825506)) (Some!11888 (_2!29849 lt!1825506))))))

(declare-fun b!4664000 () Bool)

(assert (=> b!4664000 (= e!2910359 (contains!15159 (toList!5261 lt!1825895) lt!1825506))))

(assert (= (and d!1481655 res!1962314) b!4663999))

(assert (= (and b!4663999 res!1962315) b!4664000))

(declare-fun m!5549329 () Bool)

(assert (=> d!1481655 m!5549329))

(declare-fun m!5549331 () Bool)

(assert (=> d!1481655 m!5549331))

(declare-fun m!5549333 () Bool)

(assert (=> d!1481655 m!5549333))

(declare-fun m!5549335 () Bool)

(assert (=> d!1481655 m!5549335))

(declare-fun m!5549337 () Bool)

(assert (=> b!4663999 m!5549337))

(declare-fun m!5549339 () Bool)

(assert (=> b!4664000 m!5549339))

(assert (=> b!4663708 d!1481655))

(declare-fun d!1481657 () Bool)

(declare-fun e!2910360 () Bool)

(assert (=> d!1481657 e!2910360))

(declare-fun res!1962316 () Bool)

(assert (=> d!1481657 (=> (not res!1962316) (not e!2910360))))

(declare-fun lt!1825899 () ListMap!4601)

(assert (=> d!1481657 (= res!1962316 (contains!15153 lt!1825899 (_1!29849 lt!1825490)))))

(declare-fun lt!1825898 () List!52094)

(assert (=> d!1481657 (= lt!1825899 (ListMap!4602 lt!1825898))))

(declare-fun lt!1825900 () Unit!119640)

(declare-fun lt!1825901 () Unit!119640)

(assert (=> d!1481657 (= lt!1825900 lt!1825901)))

(assert (=> d!1481657 (= (getValueByKey!1653 lt!1825898 (_1!29849 lt!1825490)) (Some!11888 (_2!29849 lt!1825490)))))

(assert (=> d!1481657 (= lt!1825901 (lemmaContainsTupThenGetReturnValue!938 lt!1825898 (_1!29849 lt!1825490) (_2!29849 lt!1825490)))))

(assert (=> d!1481657 (= lt!1825898 (insertNoDuplicatedKeys!446 (toList!5261 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970))) (_1!29849 lt!1825490) (_2!29849 lt!1825490)))))

(assert (=> d!1481657 (= (+!2006 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825490) lt!1825899)))

(declare-fun b!4664001 () Bool)

(declare-fun res!1962317 () Bool)

(assert (=> b!4664001 (=> (not res!1962317) (not e!2910360))))

(assert (=> b!4664001 (= res!1962317 (= (getValueByKey!1653 (toList!5261 lt!1825899) (_1!29849 lt!1825490)) (Some!11888 (_2!29849 lt!1825490))))))

(declare-fun b!4664002 () Bool)

(assert (=> b!4664002 (= e!2910360 (contains!15159 (toList!5261 lt!1825899) lt!1825490))))

(assert (= (and d!1481657 res!1962316) b!4664001))

(assert (= (and b!4664001 res!1962317) b!4664002))

(declare-fun m!5549341 () Bool)

(assert (=> d!1481657 m!5549341))

(declare-fun m!5549343 () Bool)

(assert (=> d!1481657 m!5549343))

(declare-fun m!5549345 () Bool)

(assert (=> d!1481657 m!5549345))

(declare-fun m!5549347 () Bool)

(assert (=> d!1481657 m!5549347))

(declare-fun m!5549349 () Bool)

(assert (=> b!4664001 m!5549349))

(declare-fun m!5549351 () Bool)

(assert (=> b!4664002 m!5549351))

(assert (=> b!4663708 d!1481657))

(declare-fun d!1481659 () Bool)

(assert (=> d!1481659 (= (head!9744 oldBucket!40) (h!58136 oldBucket!40))))

(assert (=> b!4663708 d!1481659))

(declare-fun d!1481661 () Bool)

(assert (=> d!1481661 (= (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825490 lt!1825505) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825490)) (= (content!9038 (toList!5261 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825490 lt!1825505) (ListMap!4602 Nil!51970)))) (content!9038 (toList!5261 (+!2006 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825490)))))))

(declare-fun bs!1069778 () Bool)

(assert (= bs!1069778 d!1481661))

(declare-fun m!5549353 () Bool)

(assert (=> bs!1069778 m!5549353))

(declare-fun m!5549355 () Bool)

(assert (=> bs!1069778 m!5549355))

(assert (=> b!4663708 d!1481661))

(declare-fun d!1481663 () Bool)

(declare-fun e!2910361 () Bool)

(assert (=> d!1481663 e!2910361))

(declare-fun res!1962318 () Bool)

(assert (=> d!1481663 (=> (not res!1962318) (not e!2910361))))

(declare-fun lt!1825903 () ListMap!4601)

(assert (=> d!1481663 (= res!1962318 (contains!15153 lt!1825903 (_1!29849 (h!58136 oldBucket!40))))))

(declare-fun lt!1825902 () List!52094)

(assert (=> d!1481663 (= lt!1825903 (ListMap!4602 lt!1825902))))

(declare-fun lt!1825904 () Unit!119640)

(declare-fun lt!1825905 () Unit!119640)

(assert (=> d!1481663 (= lt!1825904 lt!1825905)))

(assert (=> d!1481663 (= (getValueByKey!1653 lt!1825902 (_1!29849 (h!58136 oldBucket!40))) (Some!11888 (_2!29849 (h!58136 oldBucket!40))))))

(assert (=> d!1481663 (= lt!1825905 (lemmaContainsTupThenGetReturnValue!938 lt!1825902 (_1!29849 (h!58136 oldBucket!40)) (_2!29849 (h!58136 oldBucket!40))))))

(assert (=> d!1481663 (= lt!1825902 (insertNoDuplicatedKeys!446 (toList!5261 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971))) (_1!29849 (h!58136 oldBucket!40)) (_2!29849 (h!58136 oldBucket!40))))))

(assert (=> d!1481663 (= (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)) (h!58136 oldBucket!40)) lt!1825903)))

(declare-fun b!4664003 () Bool)

(declare-fun res!1962319 () Bool)

(assert (=> b!4664003 (=> (not res!1962319) (not e!2910361))))

(assert (=> b!4664003 (= res!1962319 (= (getValueByKey!1653 (toList!5261 lt!1825903) (_1!29849 (h!58136 oldBucket!40))) (Some!11888 (_2!29849 (h!58136 oldBucket!40)))))))

(declare-fun b!4664004 () Bool)

(assert (=> b!4664004 (= e!2910361 (contains!15159 (toList!5261 lt!1825903) (h!58136 oldBucket!40)))))

(assert (= (and d!1481663 res!1962318) b!4664003))

(assert (= (and b!4664003 res!1962319) b!4664004))

(declare-fun m!5549357 () Bool)

(assert (=> d!1481663 m!5549357))

(declare-fun m!5549359 () Bool)

(assert (=> d!1481663 m!5549359))

(declare-fun m!5549361 () Bool)

(assert (=> d!1481663 m!5549361))

(declare-fun m!5549363 () Bool)

(assert (=> d!1481663 m!5549363))

(declare-fun m!5549365 () Bool)

(assert (=> b!4664003 m!5549365))

(declare-fun m!5549367 () Bool)

(assert (=> b!4664004 m!5549367))

(assert (=> b!4663708 d!1481663))

(declare-fun d!1481665 () Bool)

(assert (=> d!1481665 (= (head!9744 newBucket!224) (h!58136 newBucket!224))))

(assert (=> b!4663708 d!1481665))

(declare-fun d!1481667 () Bool)

(assert (=> d!1481667 (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825490 lt!1825505) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825490))))

(declare-fun lt!1825911 () Unit!119640)

(declare-fun choose!32189 (tuple2!53110 List!52094 ListMap!4601) Unit!119640)

(assert (=> d!1481667 (= lt!1825911 (choose!32189 lt!1825490 lt!1825505 (ListMap!4602 Nil!51970)))))

(assert (=> d!1481667 (noDuplicateKeys!1666 lt!1825505)))

(assert (=> d!1481667 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!172 lt!1825490 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825911)))

(declare-fun bs!1069814 () Bool)

(assert (= bs!1069814 d!1481667))

(assert (=> bs!1069814 m!5548793))

(assert (=> bs!1069814 m!5548777))

(assert (=> bs!1069814 m!5548775))

(assert (=> bs!1069814 m!5548793))

(declare-fun m!5549421 () Bool)

(assert (=> bs!1069814 m!5549421))

(assert (=> bs!1069814 m!5548755))

(assert (=> bs!1069814 m!5548775))

(assert (=> bs!1069814 m!5548777))

(assert (=> bs!1069814 m!5548779))

(assert (=> b!4663708 d!1481667))

(declare-fun b!4664018 () Bool)

(declare-fun e!2910375 () Bool)

(declare-fun e!2910374 () Bool)

(assert (=> b!4664018 (= e!2910375 e!2910374)))

(declare-fun res!1962322 () Bool)

(assert (=> b!4664018 (=> (not res!1962322) (not e!2910374))))

(assert (=> b!4664018 (= res!1962322 (isDefined!9154 (getValueByKey!1653 (toList!5261 (extractMap!1722 lt!1825504)) key!4968)))))

(declare-fun b!4664019 () Bool)

(declare-fun e!2910370 () List!52097)

(assert (=> b!4664019 (= e!2910370 (getKeysList!771 (toList!5261 (extractMap!1722 lt!1825504))))))

(declare-fun b!4664020 () Bool)

(declare-fun e!2910371 () Unit!119640)

(declare-fun Unit!119682 () Unit!119640)

(assert (=> b!4664020 (= e!2910371 Unit!119682)))

(declare-fun b!4664021 () Bool)

(assert (=> b!4664021 (= e!2910370 (keys!18436 (extractMap!1722 lt!1825504)))))

(declare-fun b!4664022 () Bool)

(declare-fun e!2910372 () Unit!119640)

(assert (=> b!4664022 (= e!2910372 e!2910371)))

(declare-fun c!798397 () Bool)

(declare-fun call!325877 () Bool)

(assert (=> b!4664022 (= c!798397 call!325877)))

(declare-fun b!4664023 () Bool)

(assert (=> b!4664023 (= e!2910374 (contains!15158 (keys!18436 (extractMap!1722 lt!1825504)) key!4968))))

(declare-fun b!4664024 () Bool)

(declare-fun e!2910373 () Bool)

(assert (=> b!4664024 (= e!2910373 (not (contains!15158 (keys!18436 (extractMap!1722 lt!1825504)) key!4968)))))

(declare-fun b!4664025 () Bool)

(assert (=> b!4664025 false))

(declare-fun lt!1825918 () Unit!119640)

(declare-fun lt!1825915 () Unit!119640)

(assert (=> b!4664025 (= lt!1825918 lt!1825915)))

(assert (=> b!4664025 (containsKey!2791 (toList!5261 (extractMap!1722 lt!1825504)) key!4968)))

(assert (=> b!4664025 (= lt!1825915 (lemmaInGetKeysListThenContainsKey!770 (toList!5261 (extractMap!1722 lt!1825504)) key!4968))))

(declare-fun Unit!119684 () Unit!119640)

(assert (=> b!4664025 (= e!2910371 Unit!119684)))

(declare-fun d!1481679 () Bool)

(assert (=> d!1481679 e!2910375))

(declare-fun res!1962324 () Bool)

(assert (=> d!1481679 (=> res!1962324 e!2910375)))

(assert (=> d!1481679 (= res!1962324 e!2910373)))

(declare-fun res!1962323 () Bool)

(assert (=> d!1481679 (=> (not res!1962323) (not e!2910373))))

(declare-fun lt!1825919 () Bool)

(assert (=> d!1481679 (= res!1962323 (not lt!1825919))))

(declare-fun lt!1825912 () Bool)

(assert (=> d!1481679 (= lt!1825919 lt!1825912)))

(declare-fun lt!1825914 () Unit!119640)

(assert (=> d!1481679 (= lt!1825914 e!2910372)))

(declare-fun c!798398 () Bool)

(assert (=> d!1481679 (= c!798398 lt!1825912)))

(assert (=> d!1481679 (= lt!1825912 (containsKey!2791 (toList!5261 (extractMap!1722 lt!1825504)) key!4968))))

(assert (=> d!1481679 (= (contains!15153 (extractMap!1722 lt!1825504) key!4968) lt!1825919)))

(declare-fun b!4664026 () Bool)

(declare-fun lt!1825913 () Unit!119640)

(assert (=> b!4664026 (= e!2910372 lt!1825913)))

(declare-fun lt!1825917 () Unit!119640)

(assert (=> b!4664026 (= lt!1825917 (lemmaContainsKeyImpliesGetValueByKeyDefined!1555 (toList!5261 (extractMap!1722 lt!1825504)) key!4968))))

(assert (=> b!4664026 (isDefined!9154 (getValueByKey!1653 (toList!5261 (extractMap!1722 lt!1825504)) key!4968))))

(declare-fun lt!1825916 () Unit!119640)

(assert (=> b!4664026 (= lt!1825916 lt!1825917)))

(assert (=> b!4664026 (= lt!1825913 (lemmaInListThenGetKeysListContains!766 (toList!5261 (extractMap!1722 lt!1825504)) key!4968))))

(assert (=> b!4664026 call!325877))

(declare-fun bm!325872 () Bool)

(assert (=> bm!325872 (= call!325877 (contains!15158 e!2910370 key!4968))))

(declare-fun c!798399 () Bool)

(assert (=> bm!325872 (= c!798399 c!798398)))

(assert (= (and d!1481679 c!798398) b!4664026))

(assert (= (and d!1481679 (not c!798398)) b!4664022))

(assert (= (and b!4664022 c!798397) b!4664025))

(assert (= (and b!4664022 (not c!798397)) b!4664020))

(assert (= (or b!4664026 b!4664022) bm!325872))

(assert (= (and bm!325872 c!798399) b!4664019))

(assert (= (and bm!325872 (not c!798399)) b!4664021))

(assert (= (and d!1481679 res!1962323) b!4664024))

(assert (= (and d!1481679 (not res!1962324)) b!4664018))

(assert (= (and b!4664018 res!1962322) b!4664023))

(declare-fun m!5549425 () Bool)

(assert (=> b!4664025 m!5549425))

(declare-fun m!5549427 () Bool)

(assert (=> b!4664025 m!5549427))

(declare-fun m!5549429 () Bool)

(assert (=> b!4664018 m!5549429))

(assert (=> b!4664018 m!5549429))

(declare-fun m!5549431 () Bool)

(assert (=> b!4664018 m!5549431))

(declare-fun m!5549433 () Bool)

(assert (=> b!4664019 m!5549433))

(assert (=> d!1481679 m!5549425))

(declare-fun m!5549435 () Bool)

(assert (=> bm!325872 m!5549435))

(declare-fun m!5549437 () Bool)

(assert (=> b!4664026 m!5549437))

(assert (=> b!4664026 m!5549429))

(assert (=> b!4664026 m!5549429))

(assert (=> b!4664026 m!5549431))

(declare-fun m!5549439 () Bool)

(assert (=> b!4664026 m!5549439))

(assert (=> b!4664024 m!5548781))

(declare-fun m!5549441 () Bool)

(assert (=> b!4664024 m!5549441))

(assert (=> b!4664024 m!5549441))

(declare-fun m!5549443 () Bool)

(assert (=> b!4664024 m!5549443))

(assert (=> b!4664021 m!5548781))

(assert (=> b!4664021 m!5549441))

(assert (=> b!4664023 m!5548781))

(assert (=> b!4664023 m!5549441))

(assert (=> b!4664023 m!5549441))

(assert (=> b!4664023 m!5549443))

(assert (=> b!4663708 d!1481679))

(declare-fun bs!1069816 () Bool)

(declare-fun b!4664029 () Bool)

(assert (= bs!1069816 (and b!4664029 b!4663870)))

(declare-fun lambda!201152 () Int)

(assert (=> bs!1069816 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201152 lambda!201113))))

(declare-fun bs!1069817 () Bool)

(assert (= bs!1069817 (and b!4664029 b!4663868)))

(assert (=> bs!1069817 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201152 lambda!201112))))

(declare-fun bs!1069818 () Bool)

(assert (= bs!1069818 (and b!4664029 d!1481547)))

(assert (=> bs!1069818 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201152 lambda!201117))))

(declare-fun bs!1069819 () Bool)

(assert (= bs!1069819 (and b!4664029 d!1481607)))

(assert (=> bs!1069819 (not (= lambda!201152 lambda!201131))))

(declare-fun bs!1069820 () Bool)

(assert (= bs!1069820 (and b!4664029 d!1481645)))

(assert (=> bs!1069820 (not (= lambda!201152 lambda!201146))))

(assert (=> bs!1069816 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201152 lambda!201114))))

(assert (=> b!4664029 true))

(declare-fun bs!1069821 () Bool)

(declare-fun b!4664031 () Bool)

(assert (= bs!1069821 (and b!4664031 b!4663870)))

(declare-fun lambda!201153 () Int)

(assert (=> bs!1069821 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201153 lambda!201113))))

(declare-fun bs!1069822 () Bool)

(assert (= bs!1069822 (and b!4664031 b!4663868)))

(assert (=> bs!1069822 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201153 lambda!201112))))

(declare-fun bs!1069823 () Bool)

(assert (= bs!1069823 (and b!4664031 b!4664029)))

(assert (=> bs!1069823 (= lambda!201153 lambda!201152)))

(declare-fun bs!1069824 () Bool)

(assert (= bs!1069824 (and b!4664031 d!1481547)))

(assert (=> bs!1069824 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201153 lambda!201117))))

(declare-fun bs!1069825 () Bool)

(assert (= bs!1069825 (and b!4664031 d!1481607)))

(assert (=> bs!1069825 (not (= lambda!201153 lambda!201131))))

(declare-fun bs!1069826 () Bool)

(assert (= bs!1069826 (and b!4664031 d!1481645)))

(assert (=> bs!1069826 (not (= lambda!201153 lambda!201146))))

(assert (=> bs!1069821 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201153 lambda!201114))))

(assert (=> b!4664031 true))

(declare-fun lambda!201154 () Int)

(declare-fun lt!1825923 () ListMap!4601)

(assert (=> bs!1069821 (= (= lt!1825923 lt!1825493) (= lambda!201154 lambda!201113))))

(assert (=> bs!1069822 (= (= lt!1825923 lt!1825493) (= lambda!201154 lambda!201112))))

(assert (=> b!4664031 (= (= lt!1825923 (ListMap!4602 Nil!51970)) (= lambda!201154 lambda!201153))))

(assert (=> bs!1069823 (= (= lt!1825923 (ListMap!4602 Nil!51970)) (= lambda!201154 lambda!201152))))

(assert (=> bs!1069824 (= (= lt!1825923 lt!1825705) (= lambda!201154 lambda!201117))))

(assert (=> bs!1069825 (not (= lambda!201154 lambda!201131))))

(assert (=> bs!1069826 (not (= lambda!201154 lambda!201146))))

(assert (=> bs!1069821 (= (= lt!1825923 lt!1825696) (= lambda!201154 lambda!201114))))

(assert (=> b!4664031 true))

(declare-fun bs!1069827 () Bool)

(declare-fun d!1481683 () Bool)

(assert (= bs!1069827 (and d!1481683 b!4663870)))

(declare-fun lt!1825932 () ListMap!4601)

(declare-fun lambda!201155 () Int)

(assert (=> bs!1069827 (= (= lt!1825932 lt!1825493) (= lambda!201155 lambda!201113))))

(declare-fun bs!1069828 () Bool)

(assert (= bs!1069828 (and d!1481683 b!4664031)))

(assert (=> bs!1069828 (= (= lt!1825932 (ListMap!4602 Nil!51970)) (= lambda!201155 lambda!201153))))

(declare-fun bs!1069829 () Bool)

(assert (= bs!1069829 (and d!1481683 b!4664029)))

(assert (=> bs!1069829 (= (= lt!1825932 (ListMap!4602 Nil!51970)) (= lambda!201155 lambda!201152))))

(declare-fun bs!1069830 () Bool)

(assert (= bs!1069830 (and d!1481683 d!1481547)))

(assert (=> bs!1069830 (= (= lt!1825932 lt!1825705) (= lambda!201155 lambda!201117))))

(declare-fun bs!1069831 () Bool)

(assert (= bs!1069831 (and d!1481683 d!1481607)))

(assert (=> bs!1069831 (not (= lambda!201155 lambda!201131))))

(declare-fun bs!1069832 () Bool)

(assert (= bs!1069832 (and d!1481683 d!1481645)))

(assert (=> bs!1069832 (not (= lambda!201155 lambda!201146))))

(assert (=> bs!1069827 (= (= lt!1825932 lt!1825696) (= lambda!201155 lambda!201114))))

(declare-fun bs!1069833 () Bool)

(assert (= bs!1069833 (and d!1481683 b!4663868)))

(assert (=> bs!1069833 (= (= lt!1825932 lt!1825493) (= lambda!201155 lambda!201112))))

(assert (=> bs!1069828 (= (= lt!1825932 lt!1825923) (= lambda!201155 lambda!201154))))

(assert (=> d!1481683 true))

(declare-fun b!4664028 () Bool)

(declare-fun e!2910377 () Bool)

(assert (=> b!4664028 (= e!2910377 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201154))))

(declare-fun bm!325873 () Bool)

(declare-fun call!325880 () Unit!119640)

(assert (=> bm!325873 (= call!325880 (lemmaContainsAllItsOwnKeys!620 (ListMap!4602 Nil!51970)))))

(declare-fun bm!325874 () Bool)

(declare-fun c!798400 () Bool)

(declare-fun call!325879 () Bool)

(assert (=> bm!325874 (= call!325879 (forall!11079 (ite c!798400 (toList!5261 (ListMap!4602 Nil!51970)) (t!359216 (Cons!51970 lt!1825506 lt!1825496))) (ite c!798400 lambda!201152 lambda!201154)))))

(declare-fun e!2910379 () Bool)

(assert (=> d!1481683 e!2910379))

(declare-fun res!1962326 () Bool)

(assert (=> d!1481683 (=> (not res!1962326) (not e!2910379))))

(assert (=> d!1481683 (= res!1962326 (forall!11079 (Cons!51970 lt!1825506 lt!1825496) lambda!201155))))

(declare-fun e!2910378 () ListMap!4601)

(assert (=> d!1481683 (= lt!1825932 e!2910378)))

(assert (=> d!1481683 (= c!798400 ((_ is Nil!51970) (Cons!51970 lt!1825506 lt!1825496)))))

(assert (=> d!1481683 (noDuplicateKeys!1666 (Cons!51970 lt!1825506 lt!1825496))))

(assert (=> d!1481683 (= (addToMapMapFromBucket!1123 (Cons!51970 lt!1825506 lt!1825496) (ListMap!4602 Nil!51970)) lt!1825932)))

(assert (=> b!4664029 (= e!2910378 (ListMap!4602 Nil!51970))))

(declare-fun lt!1825925 () Unit!119640)

(assert (=> b!4664029 (= lt!1825925 call!325880)))

(assert (=> b!4664029 call!325879))

(declare-fun lt!1825927 () Unit!119640)

(assert (=> b!4664029 (= lt!1825927 lt!1825925)))

(declare-fun call!325878 () Bool)

(assert (=> b!4664029 call!325878))

(declare-fun lt!1825930 () Unit!119640)

(declare-fun Unit!119695 () Unit!119640)

(assert (=> b!4664029 (= lt!1825930 Unit!119695)))

(declare-fun bm!325875 () Bool)

(assert (=> bm!325875 (= call!325878 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) (ite c!798400 lambda!201152 lambda!201153)))))

(declare-fun b!4664030 () Bool)

(assert (=> b!4664030 (= e!2910379 (invariantList!1320 (toList!5261 lt!1825932)))))

(assert (=> b!4664031 (= e!2910378 lt!1825923)))

(declare-fun lt!1825924 () ListMap!4601)

(assert (=> b!4664031 (= lt!1825924 (+!2006 (ListMap!4602 Nil!51970) (h!58136 (Cons!51970 lt!1825506 lt!1825496))))))

(assert (=> b!4664031 (= lt!1825923 (addToMapMapFromBucket!1123 (t!359216 (Cons!51970 lt!1825506 lt!1825496)) (+!2006 (ListMap!4602 Nil!51970) (h!58136 (Cons!51970 lt!1825506 lt!1825496)))))))

(declare-fun lt!1825920 () Unit!119640)

(assert (=> b!4664031 (= lt!1825920 call!325880)))

(assert (=> b!4664031 call!325878))

(declare-fun lt!1825935 () Unit!119640)

(assert (=> b!4664031 (= lt!1825935 lt!1825920)))

(assert (=> b!4664031 (forall!11079 (toList!5261 lt!1825924) lambda!201154)))

(declare-fun lt!1825936 () Unit!119640)

(declare-fun Unit!119696 () Unit!119640)

(assert (=> b!4664031 (= lt!1825936 Unit!119696)))

(assert (=> b!4664031 call!325879))

(declare-fun lt!1825921 () Unit!119640)

(declare-fun Unit!119697 () Unit!119640)

(assert (=> b!4664031 (= lt!1825921 Unit!119697)))

(declare-fun lt!1825926 () Unit!119640)

(declare-fun Unit!119698 () Unit!119640)

(assert (=> b!4664031 (= lt!1825926 Unit!119698)))

(declare-fun lt!1825938 () Unit!119640)

(assert (=> b!4664031 (= lt!1825938 (forallContained!3280 (toList!5261 lt!1825924) lambda!201154 (h!58136 (Cons!51970 lt!1825506 lt!1825496))))))

(assert (=> b!4664031 (contains!15153 lt!1825924 (_1!29849 (h!58136 (Cons!51970 lt!1825506 lt!1825496))))))

(declare-fun lt!1825940 () Unit!119640)

(declare-fun Unit!119699 () Unit!119640)

(assert (=> b!4664031 (= lt!1825940 Unit!119699)))

(assert (=> b!4664031 (contains!15153 lt!1825923 (_1!29849 (h!58136 (Cons!51970 lt!1825506 lt!1825496))))))

(declare-fun lt!1825929 () Unit!119640)

(declare-fun Unit!119700 () Unit!119640)

(assert (=> b!4664031 (= lt!1825929 Unit!119700)))

(assert (=> b!4664031 (forall!11079 (Cons!51970 lt!1825506 lt!1825496) lambda!201154)))

(declare-fun lt!1825939 () Unit!119640)

(declare-fun Unit!119701 () Unit!119640)

(assert (=> b!4664031 (= lt!1825939 Unit!119701)))

(assert (=> b!4664031 (forall!11079 (toList!5261 lt!1825924) lambda!201154)))

(declare-fun lt!1825931 () Unit!119640)

(declare-fun Unit!119702 () Unit!119640)

(assert (=> b!4664031 (= lt!1825931 Unit!119702)))

(declare-fun lt!1825928 () Unit!119640)

(declare-fun Unit!119703 () Unit!119640)

(assert (=> b!4664031 (= lt!1825928 Unit!119703)))

(declare-fun lt!1825937 () Unit!119640)

(assert (=> b!4664031 (= lt!1825937 (addForallContainsKeyThenBeforeAdding!619 (ListMap!4602 Nil!51970) lt!1825923 (_1!29849 (h!58136 (Cons!51970 lt!1825506 lt!1825496))) (_2!29849 (h!58136 (Cons!51970 lt!1825506 lt!1825496)))))))

(assert (=> b!4664031 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201154)))

(declare-fun lt!1825934 () Unit!119640)

(assert (=> b!4664031 (= lt!1825934 lt!1825937)))

(assert (=> b!4664031 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201154)))

(declare-fun lt!1825922 () Unit!119640)

(declare-fun Unit!119704 () Unit!119640)

(assert (=> b!4664031 (= lt!1825922 Unit!119704)))

(declare-fun res!1962325 () Bool)

(assert (=> b!4664031 (= res!1962325 (forall!11079 (Cons!51970 lt!1825506 lt!1825496) lambda!201154))))

(assert (=> b!4664031 (=> (not res!1962325) (not e!2910377))))

(assert (=> b!4664031 e!2910377))

(declare-fun lt!1825933 () Unit!119640)

(declare-fun Unit!119705 () Unit!119640)

(assert (=> b!4664031 (= lt!1825933 Unit!119705)))

(declare-fun b!4664032 () Bool)

(declare-fun res!1962327 () Bool)

(assert (=> b!4664032 (=> (not res!1962327) (not e!2910379))))

(assert (=> b!4664032 (= res!1962327 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201155))))

(assert (= (and d!1481683 c!798400) b!4664029))

(assert (= (and d!1481683 (not c!798400)) b!4664031))

(assert (= (and b!4664031 res!1962325) b!4664028))

(assert (= (or b!4664029 b!4664031) bm!325873))

(assert (= (or b!4664029 b!4664031) bm!325874))

(assert (= (or b!4664029 b!4664031) bm!325875))

(assert (= (and d!1481683 res!1962326) b!4664032))

(assert (= (and b!4664032 res!1962327) b!4664030))

(declare-fun m!5549445 () Bool)

(assert (=> b!4664031 m!5549445))

(declare-fun m!5549447 () Bool)

(assert (=> b!4664031 m!5549447))

(declare-fun m!5549449 () Bool)

(assert (=> b!4664031 m!5549449))

(declare-fun m!5549451 () Bool)

(assert (=> b!4664031 m!5549451))

(assert (=> b!4664031 m!5549447))

(declare-fun m!5549453 () Bool)

(assert (=> b!4664031 m!5549453))

(declare-fun m!5549455 () Bool)

(assert (=> b!4664031 m!5549455))

(declare-fun m!5549457 () Bool)

(assert (=> b!4664031 m!5549457))

(declare-fun m!5549459 () Bool)

(assert (=> b!4664031 m!5549459))

(assert (=> b!4664031 m!5549449))

(assert (=> b!4664031 m!5549455))

(declare-fun m!5549461 () Bool)

(assert (=> b!4664031 m!5549461))

(assert (=> b!4664031 m!5549453))

(declare-fun m!5549463 () Bool)

(assert (=> bm!325875 m!5549463))

(assert (=> b!4664028 m!5549447))

(declare-fun m!5549465 () Bool)

(assert (=> b!4664030 m!5549465))

(declare-fun m!5549467 () Bool)

(assert (=> bm!325874 m!5549467))

(declare-fun m!5549469 () Bool)

(assert (=> b!4664032 m!5549469))

(declare-fun m!5549471 () Bool)

(assert (=> d!1481683 m!5549471))

(declare-fun m!5549473 () Bool)

(assert (=> d!1481683 m!5549473))

(declare-fun m!5549475 () Bool)

(assert (=> bm!325873 m!5549475))

(assert (=> b!4663708 d!1481683))

(declare-fun bs!1069834 () Bool)

(declare-fun b!4664034 () Bool)

(assert (= bs!1069834 (and b!4664034 d!1481683)))

(declare-fun lambda!201156 () Int)

(assert (=> bs!1069834 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201156 lambda!201155))))

(declare-fun bs!1069835 () Bool)

(assert (= bs!1069835 (and b!4664034 b!4663870)))

(assert (=> bs!1069835 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201156 lambda!201113))))

(declare-fun bs!1069836 () Bool)

(assert (= bs!1069836 (and b!4664034 b!4664031)))

(assert (=> bs!1069836 (= lambda!201156 lambda!201153)))

(declare-fun bs!1069837 () Bool)

(assert (= bs!1069837 (and b!4664034 b!4664029)))

(assert (=> bs!1069837 (= lambda!201156 lambda!201152)))

(declare-fun bs!1069838 () Bool)

(assert (= bs!1069838 (and b!4664034 d!1481547)))

(assert (=> bs!1069838 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201156 lambda!201117))))

(declare-fun bs!1069839 () Bool)

(assert (= bs!1069839 (and b!4664034 d!1481607)))

(assert (=> bs!1069839 (not (= lambda!201156 lambda!201131))))

(declare-fun bs!1069840 () Bool)

(assert (= bs!1069840 (and b!4664034 d!1481645)))

(assert (=> bs!1069840 (not (= lambda!201156 lambda!201146))))

(assert (=> bs!1069835 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201156 lambda!201114))))

(declare-fun bs!1069841 () Bool)

(assert (= bs!1069841 (and b!4664034 b!4663868)))

(assert (=> bs!1069841 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201156 lambda!201112))))

(assert (=> bs!1069836 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201156 lambda!201154))))

(assert (=> b!4664034 true))

(declare-fun bs!1069842 () Bool)

(declare-fun b!4664036 () Bool)

(assert (= bs!1069842 (and b!4664036 d!1481683)))

(declare-fun lambda!201157 () Int)

(assert (=> bs!1069842 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201157 lambda!201155))))

(declare-fun bs!1069843 () Bool)

(assert (= bs!1069843 (and b!4664036 b!4663870)))

(assert (=> bs!1069843 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201157 lambda!201113))))

(declare-fun bs!1069844 () Bool)

(assert (= bs!1069844 (and b!4664036 b!4664031)))

(assert (=> bs!1069844 (= lambda!201157 lambda!201153)))

(declare-fun bs!1069845 () Bool)

(assert (= bs!1069845 (and b!4664036 b!4664034)))

(assert (=> bs!1069845 (= lambda!201157 lambda!201156)))

(declare-fun bs!1069846 () Bool)

(assert (= bs!1069846 (and b!4664036 b!4664029)))

(assert (=> bs!1069846 (= lambda!201157 lambda!201152)))

(declare-fun bs!1069847 () Bool)

(assert (= bs!1069847 (and b!4664036 d!1481547)))

(assert (=> bs!1069847 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201157 lambda!201117))))

(declare-fun bs!1069848 () Bool)

(assert (= bs!1069848 (and b!4664036 d!1481607)))

(assert (=> bs!1069848 (not (= lambda!201157 lambda!201131))))

(declare-fun bs!1069849 () Bool)

(assert (= bs!1069849 (and b!4664036 d!1481645)))

(assert (=> bs!1069849 (not (= lambda!201157 lambda!201146))))

(assert (=> bs!1069843 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201157 lambda!201114))))

(declare-fun bs!1069850 () Bool)

(assert (= bs!1069850 (and b!4664036 b!4663868)))

(assert (=> bs!1069850 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201157 lambda!201112))))

(assert (=> bs!1069844 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201157 lambda!201154))))

(assert (=> b!4664036 true))

(declare-fun lambda!201158 () Int)

(declare-fun lt!1825944 () ListMap!4601)

(assert (=> bs!1069842 (= (= lt!1825944 lt!1825932) (= lambda!201158 lambda!201155))))

(assert (=> bs!1069843 (= (= lt!1825944 lt!1825493) (= lambda!201158 lambda!201113))))

(assert (=> b!4664036 (= (= lt!1825944 (ListMap!4602 Nil!51970)) (= lambda!201158 lambda!201157))))

(assert (=> bs!1069844 (= (= lt!1825944 (ListMap!4602 Nil!51970)) (= lambda!201158 lambda!201153))))

(assert (=> bs!1069845 (= (= lt!1825944 (ListMap!4602 Nil!51970)) (= lambda!201158 lambda!201156))))

(assert (=> bs!1069846 (= (= lt!1825944 (ListMap!4602 Nil!51970)) (= lambda!201158 lambda!201152))))

(assert (=> bs!1069847 (= (= lt!1825944 lt!1825705) (= lambda!201158 lambda!201117))))

(assert (=> bs!1069848 (not (= lambda!201158 lambda!201131))))

(assert (=> bs!1069849 (not (= lambda!201158 lambda!201146))))

(assert (=> bs!1069843 (= (= lt!1825944 lt!1825696) (= lambda!201158 lambda!201114))))

(assert (=> bs!1069850 (= (= lt!1825944 lt!1825493) (= lambda!201158 lambda!201112))))

(assert (=> bs!1069844 (= (= lt!1825944 lt!1825923) (= lambda!201158 lambda!201154))))

(assert (=> b!4664036 true))

(declare-fun bs!1069851 () Bool)

(declare-fun d!1481685 () Bool)

(assert (= bs!1069851 (and d!1481685 d!1481683)))

(declare-fun lambda!201159 () Int)

(declare-fun lt!1825953 () ListMap!4601)

(assert (=> bs!1069851 (= (= lt!1825953 lt!1825932) (= lambda!201159 lambda!201155))))

(declare-fun bs!1069852 () Bool)

(assert (= bs!1069852 (and d!1481685 b!4663870)))

(assert (=> bs!1069852 (= (= lt!1825953 lt!1825493) (= lambda!201159 lambda!201113))))

(declare-fun bs!1069853 () Bool)

(assert (= bs!1069853 (and d!1481685 b!4664036)))

(assert (=> bs!1069853 (= (= lt!1825953 (ListMap!4602 Nil!51970)) (= lambda!201159 lambda!201157))))

(declare-fun bs!1069854 () Bool)

(assert (= bs!1069854 (and d!1481685 b!4664031)))

(assert (=> bs!1069854 (= (= lt!1825953 (ListMap!4602 Nil!51970)) (= lambda!201159 lambda!201153))))

(declare-fun bs!1069855 () Bool)

(assert (= bs!1069855 (and d!1481685 b!4664034)))

(assert (=> bs!1069855 (= (= lt!1825953 (ListMap!4602 Nil!51970)) (= lambda!201159 lambda!201156))))

(declare-fun bs!1069856 () Bool)

(assert (= bs!1069856 (and d!1481685 b!4664029)))

(assert (=> bs!1069856 (= (= lt!1825953 (ListMap!4602 Nil!51970)) (= lambda!201159 lambda!201152))))

(declare-fun bs!1069857 () Bool)

(assert (= bs!1069857 (and d!1481685 d!1481547)))

(assert (=> bs!1069857 (= (= lt!1825953 lt!1825705) (= lambda!201159 lambda!201117))))

(declare-fun bs!1069858 () Bool)

(assert (= bs!1069858 (and d!1481685 d!1481607)))

(assert (=> bs!1069858 (not (= lambda!201159 lambda!201131))))

(declare-fun bs!1069859 () Bool)

(assert (= bs!1069859 (and d!1481685 d!1481645)))

(assert (=> bs!1069859 (not (= lambda!201159 lambda!201146))))

(assert (=> bs!1069853 (= (= lt!1825953 lt!1825944) (= lambda!201159 lambda!201158))))

(assert (=> bs!1069852 (= (= lt!1825953 lt!1825696) (= lambda!201159 lambda!201114))))

(declare-fun bs!1069860 () Bool)

(assert (= bs!1069860 (and d!1481685 b!4663868)))

(assert (=> bs!1069860 (= (= lt!1825953 lt!1825493) (= lambda!201159 lambda!201112))))

(assert (=> bs!1069854 (= (= lt!1825953 lt!1825923) (= lambda!201159 lambda!201154))))

(assert (=> d!1481685 true))

(declare-fun b!4664033 () Bool)

(declare-fun e!2910380 () Bool)

(assert (=> b!4664033 (= e!2910380 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201158))))

(declare-fun bm!325876 () Bool)

(declare-fun call!325883 () Unit!119640)

(assert (=> bm!325876 (= call!325883 (lemmaContainsAllItsOwnKeys!620 (ListMap!4602 Nil!51970)))))

(declare-fun c!798401 () Bool)

(declare-fun call!325882 () Bool)

(declare-fun bm!325877 () Bool)

(assert (=> bm!325877 (= call!325882 (forall!11079 (ite c!798401 (toList!5261 (ListMap!4602 Nil!51970)) (t!359216 lt!1825496)) (ite c!798401 lambda!201156 lambda!201158)))))

(declare-fun e!2910382 () Bool)

(assert (=> d!1481685 e!2910382))

(declare-fun res!1962329 () Bool)

(assert (=> d!1481685 (=> (not res!1962329) (not e!2910382))))

(assert (=> d!1481685 (= res!1962329 (forall!11079 lt!1825496 lambda!201159))))

(declare-fun e!2910381 () ListMap!4601)

(assert (=> d!1481685 (= lt!1825953 e!2910381)))

(assert (=> d!1481685 (= c!798401 ((_ is Nil!51970) lt!1825496))))

(assert (=> d!1481685 (noDuplicateKeys!1666 lt!1825496)))

(assert (=> d!1481685 (= (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825953)))

(assert (=> b!4664034 (= e!2910381 (ListMap!4602 Nil!51970))))

(declare-fun lt!1825946 () Unit!119640)

(assert (=> b!4664034 (= lt!1825946 call!325883)))

(assert (=> b!4664034 call!325882))

(declare-fun lt!1825948 () Unit!119640)

(assert (=> b!4664034 (= lt!1825948 lt!1825946)))

(declare-fun call!325881 () Bool)

(assert (=> b!4664034 call!325881))

(declare-fun lt!1825951 () Unit!119640)

(declare-fun Unit!119717 () Unit!119640)

(assert (=> b!4664034 (= lt!1825951 Unit!119717)))

(declare-fun bm!325878 () Bool)

(assert (=> bm!325878 (= call!325881 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) (ite c!798401 lambda!201156 lambda!201157)))))

(declare-fun b!4664035 () Bool)

(assert (=> b!4664035 (= e!2910382 (invariantList!1320 (toList!5261 lt!1825953)))))

(assert (=> b!4664036 (= e!2910381 lt!1825944)))

(declare-fun lt!1825945 () ListMap!4601)

(assert (=> b!4664036 (= lt!1825945 (+!2006 (ListMap!4602 Nil!51970) (h!58136 lt!1825496)))))

(assert (=> b!4664036 (= lt!1825944 (addToMapMapFromBucket!1123 (t!359216 lt!1825496) (+!2006 (ListMap!4602 Nil!51970) (h!58136 lt!1825496))))))

(declare-fun lt!1825941 () Unit!119640)

(assert (=> b!4664036 (= lt!1825941 call!325883)))

(assert (=> b!4664036 call!325881))

(declare-fun lt!1825956 () Unit!119640)

(assert (=> b!4664036 (= lt!1825956 lt!1825941)))

(assert (=> b!4664036 (forall!11079 (toList!5261 lt!1825945) lambda!201158)))

(declare-fun lt!1825957 () Unit!119640)

(declare-fun Unit!119718 () Unit!119640)

(assert (=> b!4664036 (= lt!1825957 Unit!119718)))

(assert (=> b!4664036 call!325882))

(declare-fun lt!1825942 () Unit!119640)

(declare-fun Unit!119719 () Unit!119640)

(assert (=> b!4664036 (= lt!1825942 Unit!119719)))

(declare-fun lt!1825947 () Unit!119640)

(declare-fun Unit!119720 () Unit!119640)

(assert (=> b!4664036 (= lt!1825947 Unit!119720)))

(declare-fun lt!1825959 () Unit!119640)

(assert (=> b!4664036 (= lt!1825959 (forallContained!3280 (toList!5261 lt!1825945) lambda!201158 (h!58136 lt!1825496)))))

(assert (=> b!4664036 (contains!15153 lt!1825945 (_1!29849 (h!58136 lt!1825496)))))

(declare-fun lt!1825961 () Unit!119640)

(declare-fun Unit!119721 () Unit!119640)

(assert (=> b!4664036 (= lt!1825961 Unit!119721)))

(assert (=> b!4664036 (contains!15153 lt!1825944 (_1!29849 (h!58136 lt!1825496)))))

(declare-fun lt!1825950 () Unit!119640)

(declare-fun Unit!119722 () Unit!119640)

(assert (=> b!4664036 (= lt!1825950 Unit!119722)))

(assert (=> b!4664036 (forall!11079 lt!1825496 lambda!201158)))

(declare-fun lt!1825960 () Unit!119640)

(declare-fun Unit!119723 () Unit!119640)

(assert (=> b!4664036 (= lt!1825960 Unit!119723)))

(assert (=> b!4664036 (forall!11079 (toList!5261 lt!1825945) lambda!201158)))

(declare-fun lt!1825952 () Unit!119640)

(declare-fun Unit!119724 () Unit!119640)

(assert (=> b!4664036 (= lt!1825952 Unit!119724)))

(declare-fun lt!1825949 () Unit!119640)

(declare-fun Unit!119725 () Unit!119640)

(assert (=> b!4664036 (= lt!1825949 Unit!119725)))

(declare-fun lt!1825958 () Unit!119640)

(assert (=> b!4664036 (= lt!1825958 (addForallContainsKeyThenBeforeAdding!619 (ListMap!4602 Nil!51970) lt!1825944 (_1!29849 (h!58136 lt!1825496)) (_2!29849 (h!58136 lt!1825496))))))

(assert (=> b!4664036 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201158)))

(declare-fun lt!1825955 () Unit!119640)

(assert (=> b!4664036 (= lt!1825955 lt!1825958)))

(assert (=> b!4664036 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201158)))

(declare-fun lt!1825943 () Unit!119640)

(declare-fun Unit!119726 () Unit!119640)

(assert (=> b!4664036 (= lt!1825943 Unit!119726)))

(declare-fun res!1962328 () Bool)

(assert (=> b!4664036 (= res!1962328 (forall!11079 lt!1825496 lambda!201158))))

(assert (=> b!4664036 (=> (not res!1962328) (not e!2910380))))

(assert (=> b!4664036 e!2910380))

(declare-fun lt!1825954 () Unit!119640)

(declare-fun Unit!119727 () Unit!119640)

(assert (=> b!4664036 (= lt!1825954 Unit!119727)))

(declare-fun b!4664037 () Bool)

(declare-fun res!1962330 () Bool)

(assert (=> b!4664037 (=> (not res!1962330) (not e!2910382))))

(assert (=> b!4664037 (= res!1962330 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201159))))

(assert (= (and d!1481685 c!798401) b!4664034))

(assert (= (and d!1481685 (not c!798401)) b!4664036))

(assert (= (and b!4664036 res!1962328) b!4664033))

(assert (= (or b!4664034 b!4664036) bm!325876))

(assert (= (or b!4664034 b!4664036) bm!325877))

(assert (= (or b!4664034 b!4664036) bm!325878))

(assert (= (and d!1481685 res!1962329) b!4664037))

(assert (= (and b!4664037 res!1962330) b!4664035))

(declare-fun m!5549477 () Bool)

(assert (=> b!4664036 m!5549477))

(declare-fun m!5549479 () Bool)

(assert (=> b!4664036 m!5549479))

(declare-fun m!5549481 () Bool)

(assert (=> b!4664036 m!5549481))

(declare-fun m!5549483 () Bool)

(assert (=> b!4664036 m!5549483))

(assert (=> b!4664036 m!5549479))

(declare-fun m!5549485 () Bool)

(assert (=> b!4664036 m!5549485))

(declare-fun m!5549487 () Bool)

(assert (=> b!4664036 m!5549487))

(declare-fun m!5549489 () Bool)

(assert (=> b!4664036 m!5549489))

(declare-fun m!5549491 () Bool)

(assert (=> b!4664036 m!5549491))

(assert (=> b!4664036 m!5549481))

(assert (=> b!4664036 m!5549487))

(declare-fun m!5549493 () Bool)

(assert (=> b!4664036 m!5549493))

(assert (=> b!4664036 m!5549485))

(declare-fun m!5549495 () Bool)

(assert (=> bm!325878 m!5549495))

(assert (=> b!4664033 m!5549479))

(declare-fun m!5549497 () Bool)

(assert (=> b!4664035 m!5549497))

(declare-fun m!5549499 () Bool)

(assert (=> bm!325877 m!5549499))

(declare-fun m!5549501 () Bool)

(assert (=> b!4664037 m!5549501))

(declare-fun m!5549503 () Bool)

(assert (=> d!1481685 m!5549503))

(assert (=> d!1481685 m!5549307))

(assert (=> bm!325876 m!5549475))

(assert (=> b!4663708 d!1481685))

(declare-fun bs!1069861 () Bool)

(declare-fun b!4664039 () Bool)

(assert (= bs!1069861 (and b!4664039 d!1481683)))

(declare-fun lambda!201160 () Int)

(assert (=> bs!1069861 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201160 lambda!201155))))

(declare-fun bs!1069862 () Bool)

(assert (= bs!1069862 (and b!4664039 b!4663870)))

(assert (=> bs!1069862 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201160 lambda!201113))))

(declare-fun bs!1069863 () Bool)

(assert (= bs!1069863 (and b!4664039 b!4664036)))

(assert (=> bs!1069863 (= lambda!201160 lambda!201157)))

(declare-fun bs!1069864 () Bool)

(assert (= bs!1069864 (and b!4664039 b!4664031)))

(assert (=> bs!1069864 (= lambda!201160 lambda!201153)))

(declare-fun bs!1069865 () Bool)

(assert (= bs!1069865 (and b!4664039 b!4664029)))

(assert (=> bs!1069865 (= lambda!201160 lambda!201152)))

(declare-fun bs!1069866 () Bool)

(assert (= bs!1069866 (and b!4664039 d!1481547)))

(assert (=> bs!1069866 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201160 lambda!201117))))

(declare-fun bs!1069867 () Bool)

(assert (= bs!1069867 (and b!4664039 d!1481607)))

(assert (=> bs!1069867 (not (= lambda!201160 lambda!201131))))

(declare-fun bs!1069868 () Bool)

(assert (= bs!1069868 (and b!4664039 d!1481645)))

(assert (=> bs!1069868 (not (= lambda!201160 lambda!201146))))

(assert (=> bs!1069863 (= (= (ListMap!4602 Nil!51970) lt!1825944) (= lambda!201160 lambda!201158))))

(assert (=> bs!1069862 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201160 lambda!201114))))

(declare-fun bs!1069869 () Bool)

(assert (= bs!1069869 (and b!4664039 b!4663868)))

(assert (=> bs!1069869 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201160 lambda!201112))))

(assert (=> bs!1069864 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201160 lambda!201154))))

(declare-fun bs!1069870 () Bool)

(assert (= bs!1069870 (and b!4664039 d!1481685)))

(assert (=> bs!1069870 (= (= (ListMap!4602 Nil!51970) lt!1825953) (= lambda!201160 lambda!201159))))

(declare-fun bs!1069871 () Bool)

(assert (= bs!1069871 (and b!4664039 b!4664034)))

(assert (=> bs!1069871 (= lambda!201160 lambda!201156)))

(assert (=> b!4664039 true))

(declare-fun bs!1069872 () Bool)

(declare-fun b!4664041 () Bool)

(assert (= bs!1069872 (and b!4664041 d!1481683)))

(declare-fun lambda!201161 () Int)

(assert (=> bs!1069872 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201161 lambda!201155))))

(declare-fun bs!1069873 () Bool)

(assert (= bs!1069873 (and b!4664041 b!4663870)))

(assert (=> bs!1069873 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201161 lambda!201113))))

(declare-fun bs!1069874 () Bool)

(assert (= bs!1069874 (and b!4664041 b!4664036)))

(assert (=> bs!1069874 (= lambda!201161 lambda!201157)))

(declare-fun bs!1069875 () Bool)

(assert (= bs!1069875 (and b!4664041 b!4664031)))

(assert (=> bs!1069875 (= lambda!201161 lambda!201153)))

(declare-fun bs!1069876 () Bool)

(assert (= bs!1069876 (and b!4664041 b!4664029)))

(assert (=> bs!1069876 (= lambda!201161 lambda!201152)))

(declare-fun bs!1069877 () Bool)

(assert (= bs!1069877 (and b!4664041 d!1481547)))

(assert (=> bs!1069877 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201161 lambda!201117))))

(declare-fun bs!1069878 () Bool)

(assert (= bs!1069878 (and b!4664041 d!1481607)))

(assert (=> bs!1069878 (not (= lambda!201161 lambda!201131))))

(declare-fun bs!1069879 () Bool)

(assert (= bs!1069879 (and b!4664041 b!4664039)))

(assert (=> bs!1069879 (= lambda!201161 lambda!201160)))

(declare-fun bs!1069880 () Bool)

(assert (= bs!1069880 (and b!4664041 d!1481645)))

(assert (=> bs!1069880 (not (= lambda!201161 lambda!201146))))

(assert (=> bs!1069874 (= (= (ListMap!4602 Nil!51970) lt!1825944) (= lambda!201161 lambda!201158))))

(assert (=> bs!1069873 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201161 lambda!201114))))

(declare-fun bs!1069881 () Bool)

(assert (= bs!1069881 (and b!4664041 b!4663868)))

(assert (=> bs!1069881 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201161 lambda!201112))))

(assert (=> bs!1069875 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201161 lambda!201154))))

(declare-fun bs!1069882 () Bool)

(assert (= bs!1069882 (and b!4664041 d!1481685)))

(assert (=> bs!1069882 (= (= (ListMap!4602 Nil!51970) lt!1825953) (= lambda!201161 lambda!201159))))

(declare-fun bs!1069883 () Bool)

(assert (= bs!1069883 (and b!4664041 b!4664034)))

(assert (=> bs!1069883 (= lambda!201161 lambda!201156)))

(assert (=> b!4664041 true))

(declare-fun lambda!201162 () Int)

(declare-fun lt!1825965 () ListMap!4601)

(assert (=> bs!1069872 (= (= lt!1825965 lt!1825932) (= lambda!201162 lambda!201155))))

(assert (=> bs!1069873 (= (= lt!1825965 lt!1825493) (= lambda!201162 lambda!201113))))

(assert (=> bs!1069874 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201157))))

(assert (=> bs!1069875 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201153))))

(assert (=> bs!1069876 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201152))))

(assert (=> bs!1069877 (= (= lt!1825965 lt!1825705) (= lambda!201162 lambda!201117))))

(assert (=> b!4664041 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201161))))

(assert (=> bs!1069878 (not (= lambda!201162 lambda!201131))))

(assert (=> bs!1069879 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201160))))

(assert (=> bs!1069880 (not (= lambda!201162 lambda!201146))))

(assert (=> bs!1069874 (= (= lt!1825965 lt!1825944) (= lambda!201162 lambda!201158))))

(assert (=> bs!1069873 (= (= lt!1825965 lt!1825696) (= lambda!201162 lambda!201114))))

(assert (=> bs!1069881 (= (= lt!1825965 lt!1825493) (= lambda!201162 lambda!201112))))

(assert (=> bs!1069875 (= (= lt!1825965 lt!1825923) (= lambda!201162 lambda!201154))))

(assert (=> bs!1069882 (= (= lt!1825965 lt!1825953) (= lambda!201162 lambda!201159))))

(assert (=> bs!1069883 (= (= lt!1825965 (ListMap!4602 Nil!51970)) (= lambda!201162 lambda!201156))))

(assert (=> b!4664041 true))

(declare-fun bs!1069884 () Bool)

(declare-fun d!1481687 () Bool)

(assert (= bs!1069884 (and d!1481687 d!1481683)))

(declare-fun lt!1825974 () ListMap!4601)

(declare-fun lambda!201163 () Int)

(assert (=> bs!1069884 (= (= lt!1825974 lt!1825932) (= lambda!201163 lambda!201155))))

(declare-fun bs!1069885 () Bool)

(assert (= bs!1069885 (and d!1481687 b!4663870)))

(assert (=> bs!1069885 (= (= lt!1825974 lt!1825493) (= lambda!201163 lambda!201113))))

(declare-fun bs!1069886 () Bool)

(assert (= bs!1069886 (and d!1481687 b!4664036)))

(assert (=> bs!1069886 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201157))))

(declare-fun bs!1069887 () Bool)

(assert (= bs!1069887 (and d!1481687 b!4664031)))

(assert (=> bs!1069887 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201153))))

(declare-fun bs!1069888 () Bool)

(assert (= bs!1069888 (and d!1481687 b!4664029)))

(assert (=> bs!1069888 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201152))))

(declare-fun bs!1069889 () Bool)

(assert (= bs!1069889 (and d!1481687 b!4664041)))

(assert (=> bs!1069889 (= (= lt!1825974 lt!1825965) (= lambda!201163 lambda!201162))))

(declare-fun bs!1069890 () Bool)

(assert (= bs!1069890 (and d!1481687 d!1481547)))

(assert (=> bs!1069890 (= (= lt!1825974 lt!1825705) (= lambda!201163 lambda!201117))))

(assert (=> bs!1069889 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201161))))

(declare-fun bs!1069891 () Bool)

(assert (= bs!1069891 (and d!1481687 d!1481607)))

(assert (=> bs!1069891 (not (= lambda!201163 lambda!201131))))

(declare-fun bs!1069892 () Bool)

(assert (= bs!1069892 (and d!1481687 b!4664039)))

(assert (=> bs!1069892 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201160))))

(declare-fun bs!1069893 () Bool)

(assert (= bs!1069893 (and d!1481687 d!1481645)))

(assert (=> bs!1069893 (not (= lambda!201163 lambda!201146))))

(assert (=> bs!1069886 (= (= lt!1825974 lt!1825944) (= lambda!201163 lambda!201158))))

(assert (=> bs!1069885 (= (= lt!1825974 lt!1825696) (= lambda!201163 lambda!201114))))

(declare-fun bs!1069894 () Bool)

(assert (= bs!1069894 (and d!1481687 b!4663868)))

(assert (=> bs!1069894 (= (= lt!1825974 lt!1825493) (= lambda!201163 lambda!201112))))

(assert (=> bs!1069887 (= (= lt!1825974 lt!1825923) (= lambda!201163 lambda!201154))))

(declare-fun bs!1069895 () Bool)

(assert (= bs!1069895 (and d!1481687 d!1481685)))

(assert (=> bs!1069895 (= (= lt!1825974 lt!1825953) (= lambda!201163 lambda!201159))))

(declare-fun bs!1069896 () Bool)

(assert (= bs!1069896 (and d!1481687 b!4664034)))

(assert (=> bs!1069896 (= (= lt!1825974 (ListMap!4602 Nil!51970)) (= lambda!201163 lambda!201156))))

(assert (=> d!1481687 true))

(declare-fun b!4664038 () Bool)

(declare-fun e!2910383 () Bool)

(assert (=> b!4664038 (= e!2910383 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201162))))

(declare-fun bm!325879 () Bool)

(declare-fun call!325886 () Unit!119640)

(assert (=> bm!325879 (= call!325886 (lemmaContainsAllItsOwnKeys!620 (ListMap!4602 Nil!51970)))))

(declare-fun bm!325880 () Bool)

(declare-fun c!798402 () Bool)

(declare-fun call!325885 () Bool)

(assert (=> bm!325880 (= call!325885 (forall!11079 (ite c!798402 (toList!5261 (ListMap!4602 Nil!51970)) (t!359216 lt!1825505)) (ite c!798402 lambda!201160 lambda!201162)))))

(declare-fun e!2910385 () Bool)

(assert (=> d!1481687 e!2910385))

(declare-fun res!1962332 () Bool)

(assert (=> d!1481687 (=> (not res!1962332) (not e!2910385))))

(assert (=> d!1481687 (= res!1962332 (forall!11079 lt!1825505 lambda!201163))))

(declare-fun e!2910384 () ListMap!4601)

(assert (=> d!1481687 (= lt!1825974 e!2910384)))

(assert (=> d!1481687 (= c!798402 ((_ is Nil!51970) lt!1825505))))

(assert (=> d!1481687 (noDuplicateKeys!1666 lt!1825505)))

(assert (=> d!1481687 (= (addToMapMapFromBucket!1123 lt!1825505 (ListMap!4602 Nil!51970)) lt!1825974)))

(assert (=> b!4664039 (= e!2910384 (ListMap!4602 Nil!51970))))

(declare-fun lt!1825967 () Unit!119640)

(assert (=> b!4664039 (= lt!1825967 call!325886)))

(assert (=> b!4664039 call!325885))

(declare-fun lt!1825969 () Unit!119640)

(assert (=> b!4664039 (= lt!1825969 lt!1825967)))

(declare-fun call!325884 () Bool)

(assert (=> b!4664039 call!325884))

(declare-fun lt!1825972 () Unit!119640)

(declare-fun Unit!119728 () Unit!119640)

(assert (=> b!4664039 (= lt!1825972 Unit!119728)))

(declare-fun bm!325881 () Bool)

(assert (=> bm!325881 (= call!325884 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) (ite c!798402 lambda!201160 lambda!201161)))))

(declare-fun b!4664040 () Bool)

(assert (=> b!4664040 (= e!2910385 (invariantList!1320 (toList!5261 lt!1825974)))))

(assert (=> b!4664041 (= e!2910384 lt!1825965)))

(declare-fun lt!1825966 () ListMap!4601)

(assert (=> b!4664041 (= lt!1825966 (+!2006 (ListMap!4602 Nil!51970) (h!58136 lt!1825505)))))

(assert (=> b!4664041 (= lt!1825965 (addToMapMapFromBucket!1123 (t!359216 lt!1825505) (+!2006 (ListMap!4602 Nil!51970) (h!58136 lt!1825505))))))

(declare-fun lt!1825962 () Unit!119640)

(assert (=> b!4664041 (= lt!1825962 call!325886)))

(assert (=> b!4664041 call!325884))

(declare-fun lt!1825977 () Unit!119640)

(assert (=> b!4664041 (= lt!1825977 lt!1825962)))

(assert (=> b!4664041 (forall!11079 (toList!5261 lt!1825966) lambda!201162)))

(declare-fun lt!1825978 () Unit!119640)

(declare-fun Unit!119729 () Unit!119640)

(assert (=> b!4664041 (= lt!1825978 Unit!119729)))

(assert (=> b!4664041 call!325885))

(declare-fun lt!1825963 () Unit!119640)

(declare-fun Unit!119730 () Unit!119640)

(assert (=> b!4664041 (= lt!1825963 Unit!119730)))

(declare-fun lt!1825968 () Unit!119640)

(declare-fun Unit!119731 () Unit!119640)

(assert (=> b!4664041 (= lt!1825968 Unit!119731)))

(declare-fun lt!1825980 () Unit!119640)

(assert (=> b!4664041 (= lt!1825980 (forallContained!3280 (toList!5261 lt!1825966) lambda!201162 (h!58136 lt!1825505)))))

(assert (=> b!4664041 (contains!15153 lt!1825966 (_1!29849 (h!58136 lt!1825505)))))

(declare-fun lt!1825982 () Unit!119640)

(declare-fun Unit!119732 () Unit!119640)

(assert (=> b!4664041 (= lt!1825982 Unit!119732)))

(assert (=> b!4664041 (contains!15153 lt!1825965 (_1!29849 (h!58136 lt!1825505)))))

(declare-fun lt!1825971 () Unit!119640)

(declare-fun Unit!119733 () Unit!119640)

(assert (=> b!4664041 (= lt!1825971 Unit!119733)))

(assert (=> b!4664041 (forall!11079 lt!1825505 lambda!201162)))

(declare-fun lt!1825981 () Unit!119640)

(declare-fun Unit!119734 () Unit!119640)

(assert (=> b!4664041 (= lt!1825981 Unit!119734)))

(assert (=> b!4664041 (forall!11079 (toList!5261 lt!1825966) lambda!201162)))

(declare-fun lt!1825973 () Unit!119640)

(declare-fun Unit!119735 () Unit!119640)

(assert (=> b!4664041 (= lt!1825973 Unit!119735)))

(declare-fun lt!1825970 () Unit!119640)

(declare-fun Unit!119736 () Unit!119640)

(assert (=> b!4664041 (= lt!1825970 Unit!119736)))

(declare-fun lt!1825979 () Unit!119640)

(assert (=> b!4664041 (= lt!1825979 (addForallContainsKeyThenBeforeAdding!619 (ListMap!4602 Nil!51970) lt!1825965 (_1!29849 (h!58136 lt!1825505)) (_2!29849 (h!58136 lt!1825505))))))

(assert (=> b!4664041 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201162)))

(declare-fun lt!1825976 () Unit!119640)

(assert (=> b!4664041 (= lt!1825976 lt!1825979)))

(assert (=> b!4664041 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201162)))

(declare-fun lt!1825964 () Unit!119640)

(declare-fun Unit!119737 () Unit!119640)

(assert (=> b!4664041 (= lt!1825964 Unit!119737)))

(declare-fun res!1962331 () Bool)

(assert (=> b!4664041 (= res!1962331 (forall!11079 lt!1825505 lambda!201162))))

(assert (=> b!4664041 (=> (not res!1962331) (not e!2910383))))

(assert (=> b!4664041 e!2910383))

(declare-fun lt!1825975 () Unit!119640)

(declare-fun Unit!119738 () Unit!119640)

(assert (=> b!4664041 (= lt!1825975 Unit!119738)))

(declare-fun b!4664042 () Bool)

(declare-fun res!1962333 () Bool)

(assert (=> b!4664042 (=> (not res!1962333) (not e!2910385))))

(assert (=> b!4664042 (= res!1962333 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201163))))

(assert (= (and d!1481687 c!798402) b!4664039))

(assert (= (and d!1481687 (not c!798402)) b!4664041))

(assert (= (and b!4664041 res!1962331) b!4664038))

(assert (= (or b!4664039 b!4664041) bm!325879))

(assert (= (or b!4664039 b!4664041) bm!325880))

(assert (= (or b!4664039 b!4664041) bm!325881))

(assert (= (and d!1481687 res!1962332) b!4664042))

(assert (= (and b!4664042 res!1962333) b!4664040))

(declare-fun m!5549505 () Bool)

(assert (=> b!4664041 m!5549505))

(declare-fun m!5549507 () Bool)

(assert (=> b!4664041 m!5549507))

(declare-fun m!5549509 () Bool)

(assert (=> b!4664041 m!5549509))

(declare-fun m!5549511 () Bool)

(assert (=> b!4664041 m!5549511))

(assert (=> b!4664041 m!5549507))

(declare-fun m!5549513 () Bool)

(assert (=> b!4664041 m!5549513))

(declare-fun m!5549515 () Bool)

(assert (=> b!4664041 m!5549515))

(declare-fun m!5549517 () Bool)

(assert (=> b!4664041 m!5549517))

(declare-fun m!5549519 () Bool)

(assert (=> b!4664041 m!5549519))

(assert (=> b!4664041 m!5549509))

(assert (=> b!4664041 m!5549515))

(declare-fun m!5549521 () Bool)

(assert (=> b!4664041 m!5549521))

(assert (=> b!4664041 m!5549513))

(declare-fun m!5549523 () Bool)

(assert (=> bm!325881 m!5549523))

(assert (=> b!4664038 m!5549507))

(declare-fun m!5549525 () Bool)

(assert (=> b!4664040 m!5549525))

(declare-fun m!5549527 () Bool)

(assert (=> bm!325880 m!5549527))

(declare-fun m!5549529 () Bool)

(assert (=> b!4664042 m!5549529))

(declare-fun m!5549531 () Bool)

(assert (=> d!1481687 m!5549531))

(assert (=> d!1481687 m!5548755))

(assert (=> bm!325879 m!5549475))

(assert (=> b!4663708 d!1481687))

(declare-fun d!1481689 () Bool)

(assert (=> d!1481689 (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825506 lt!1825496) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825506))))

(declare-fun lt!1825983 () Unit!119640)

(assert (=> d!1481689 (= lt!1825983 (choose!32189 lt!1825506 lt!1825496 (ListMap!4602 Nil!51970)))))

(assert (=> d!1481689 (noDuplicateKeys!1666 lt!1825496)))

(assert (=> d!1481689 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!172 lt!1825506 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825983)))

(declare-fun bs!1069897 () Bool)

(assert (= bs!1069897 d!1481689))

(assert (=> bs!1069897 m!5548785))

(assert (=> bs!1069897 m!5548787))

(assert (=> bs!1069897 m!5548799))

(assert (=> bs!1069897 m!5548785))

(declare-fun m!5549533 () Bool)

(assert (=> bs!1069897 m!5549533))

(assert (=> bs!1069897 m!5549307))

(assert (=> bs!1069897 m!5548799))

(assert (=> bs!1069897 m!5548787))

(assert (=> bs!1069897 m!5548803))

(assert (=> b!4663708 d!1481689))

(declare-fun bs!1069898 () Bool)

(declare-fun d!1481691 () Bool)

(assert (= bs!1069898 (and d!1481691 d!1481619)))

(declare-fun lambda!201164 () Int)

(assert (=> bs!1069898 (= lambda!201164 lambda!201138)))

(declare-fun bs!1069899 () Bool)

(assert (= bs!1069899 (and d!1481691 d!1481623)))

(assert (=> bs!1069899 (= lambda!201164 lambda!201139)))

(declare-fun bs!1069900 () Bool)

(assert (= bs!1069900 (and d!1481691 b!4663707)))

(assert (=> bs!1069900 (= lambda!201164 lambda!201036)))

(declare-fun bs!1069901 () Bool)

(assert (= bs!1069901 (and d!1481691 d!1481585)))

(assert (=> bs!1069901 (= lambda!201164 lambda!201123)))

(declare-fun bs!1069902 () Bool)

(assert (= bs!1069902 (and d!1481691 d!1481629)))

(assert (=> bs!1069902 (= lambda!201164 lambda!201144)))

(declare-fun lt!1825984 () ListMap!4601)

(assert (=> d!1481691 (invariantList!1320 (toList!5261 lt!1825984))))

(declare-fun e!2910386 () ListMap!4601)

(assert (=> d!1481691 (= lt!1825984 e!2910386)))

(declare-fun c!798403 () Bool)

(assert (=> d!1481691 (= c!798403 ((_ is Cons!51971) lt!1825504))))

(assert (=> d!1481691 (forall!11080 lt!1825504 lambda!201164)))

(assert (=> d!1481691 (= (extractMap!1722 lt!1825504) lt!1825984)))

(declare-fun b!4664043 () Bool)

(assert (=> b!4664043 (= e!2910386 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 lt!1825504)) (extractMap!1722 (t!359217 lt!1825504))))))

(declare-fun b!4664044 () Bool)

(assert (=> b!4664044 (= e!2910386 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481691 c!798403) b!4664043))

(assert (= (and d!1481691 (not c!798403)) b!4664044))

(declare-fun m!5549535 () Bool)

(assert (=> d!1481691 m!5549535))

(declare-fun m!5549537 () Bool)

(assert (=> d!1481691 m!5549537))

(declare-fun m!5549539 () Bool)

(assert (=> b!4664043 m!5549539))

(assert (=> b!4664043 m!5549539))

(declare-fun m!5549541 () Bool)

(assert (=> b!4664043 m!5549541))

(assert (=> b!4663708 d!1481691))

(declare-fun bs!1069903 () Bool)

(declare-fun d!1481693 () Bool)

(assert (= bs!1069903 (and d!1481693 d!1481619)))

(declare-fun lambda!201167 () Int)

(assert (=> bs!1069903 (= lambda!201167 lambda!201138)))

(declare-fun bs!1069904 () Bool)

(assert (= bs!1069904 (and d!1481693 d!1481623)))

(assert (=> bs!1069904 (= lambda!201167 lambda!201139)))

(declare-fun bs!1069905 () Bool)

(assert (= bs!1069905 (and d!1481693 d!1481585)))

(assert (=> bs!1069905 (= lambda!201167 lambda!201123)))

(declare-fun bs!1069906 () Bool)

(assert (= bs!1069906 (and d!1481693 d!1481629)))

(assert (=> bs!1069906 (= lambda!201167 lambda!201144)))

(declare-fun bs!1069907 () Bool)

(assert (= bs!1069907 (and d!1481693 d!1481691)))

(assert (=> bs!1069907 (= lambda!201167 lambda!201164)))

(declare-fun bs!1069908 () Bool)

(assert (= bs!1069908 (and d!1481693 b!4663707)))

(assert (=> bs!1069908 (= lambda!201167 lambda!201036)))

(assert (=> d!1481693 (contains!15153 (extractMap!1722 (toList!5262 (ListLongMap!3816 lt!1825504))) key!4968)))

(declare-fun lt!1825987 () Unit!119640)

(declare-fun choose!32191 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> d!1481693 (= lt!1825987 (choose!32191 (ListLongMap!3816 lt!1825504) key!4968 hashF!1389))))

(assert (=> d!1481693 (forall!11080 (toList!5262 (ListLongMap!3816 lt!1825504)) lambda!201167)))

(assert (=> d!1481693 (= (lemmaListContainsThenExtractedMapContains!400 (ListLongMap!3816 lt!1825504) key!4968 hashF!1389) lt!1825987)))

(declare-fun bs!1069909 () Bool)

(assert (= bs!1069909 d!1481693))

(declare-fun m!5549543 () Bool)

(assert (=> bs!1069909 m!5549543))

(assert (=> bs!1069909 m!5549543))

(declare-fun m!5549545 () Bool)

(assert (=> bs!1069909 m!5549545))

(declare-fun m!5549547 () Bool)

(assert (=> bs!1069909 m!5549547))

(declare-fun m!5549549 () Bool)

(assert (=> bs!1069909 m!5549549))

(assert (=> b!4663708 d!1481693))

(declare-fun bs!1069910 () Bool)

(declare-fun d!1481695 () Bool)

(assert (= bs!1069910 (and d!1481695 d!1481619)))

(declare-fun lambda!201168 () Int)

(assert (=> bs!1069910 (= lambda!201168 lambda!201138)))

(declare-fun bs!1069911 () Bool)

(assert (= bs!1069911 (and d!1481695 d!1481623)))

(assert (=> bs!1069911 (= lambda!201168 lambda!201139)))

(declare-fun bs!1069912 () Bool)

(assert (= bs!1069912 (and d!1481695 d!1481585)))

(assert (=> bs!1069912 (= lambda!201168 lambda!201123)))

(declare-fun bs!1069913 () Bool)

(assert (= bs!1069913 (and d!1481695 d!1481629)))

(assert (=> bs!1069913 (= lambda!201168 lambda!201144)))

(declare-fun bs!1069914 () Bool)

(assert (= bs!1069914 (and d!1481695 d!1481691)))

(assert (=> bs!1069914 (= lambda!201168 lambda!201164)))

(declare-fun bs!1069915 () Bool)

(assert (= bs!1069915 (and d!1481695 b!4663707)))

(assert (=> bs!1069915 (= lambda!201168 lambda!201036)))

(declare-fun bs!1069916 () Bool)

(assert (= bs!1069916 (and d!1481695 d!1481693)))

(assert (=> bs!1069916 (= lambda!201168 lambda!201167)))

(declare-fun lt!1825988 () ListMap!4601)

(assert (=> d!1481695 (invariantList!1320 (toList!5261 lt!1825988))))

(declare-fun e!2910387 () ListMap!4601)

(assert (=> d!1481695 (= lt!1825988 e!2910387)))

(declare-fun c!798404 () Bool)

(assert (=> d!1481695 (= c!798404 ((_ is Cons!51971) (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)))))

(assert (=> d!1481695 (forall!11080 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971) lambda!201168)))

(assert (=> d!1481695 (= (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)) lt!1825988)))

(declare-fun b!4664045 () Bool)

(assert (=> b!4664045 (= e!2910387 (addToMapMapFromBucket!1123 (_2!29850 (h!58137 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971))) (extractMap!1722 (t!359217 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)))))))

(declare-fun b!4664046 () Bool)

(assert (=> b!4664046 (= e!2910387 (ListMap!4602 Nil!51970))))

(assert (= (and d!1481695 c!798404) b!4664045))

(assert (= (and d!1481695 (not c!798404)) b!4664046))

(declare-fun m!5549551 () Bool)

(assert (=> d!1481695 m!5549551))

(declare-fun m!5549553 () Bool)

(assert (=> d!1481695 m!5549553))

(declare-fun m!5549555 () Bool)

(assert (=> b!4664045 m!5549555))

(assert (=> b!4664045 m!5549555))

(declare-fun m!5549557 () Bool)

(assert (=> b!4664045 m!5549557))

(assert (=> b!4663708 d!1481695))

(declare-fun bs!1069917 () Bool)

(declare-fun b!4664048 () Bool)

(assert (= bs!1069917 (and b!4664048 d!1481683)))

(declare-fun lambda!201169 () Int)

(assert (=> bs!1069917 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201169 lambda!201155))))

(declare-fun bs!1069918 () Bool)

(assert (= bs!1069918 (and b!4664048 b!4663870)))

(assert (=> bs!1069918 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201169 lambda!201113))))

(declare-fun bs!1069919 () Bool)

(assert (= bs!1069919 (and b!4664048 b!4664036)))

(assert (=> bs!1069919 (= lambda!201169 lambda!201157)))

(declare-fun bs!1069920 () Bool)

(assert (= bs!1069920 (and b!4664048 b!4664031)))

(assert (=> bs!1069920 (= lambda!201169 lambda!201153)))

(declare-fun bs!1069921 () Bool)

(assert (= bs!1069921 (and b!4664048 b!4664029)))

(assert (=> bs!1069921 (= lambda!201169 lambda!201152)))

(declare-fun bs!1069922 () Bool)

(assert (= bs!1069922 (and b!4664048 d!1481687)))

(assert (=> bs!1069922 (= (= (ListMap!4602 Nil!51970) lt!1825974) (= lambda!201169 lambda!201163))))

(declare-fun bs!1069923 () Bool)

(assert (= bs!1069923 (and b!4664048 b!4664041)))

(assert (=> bs!1069923 (= (= (ListMap!4602 Nil!51970) lt!1825965) (= lambda!201169 lambda!201162))))

(declare-fun bs!1069924 () Bool)

(assert (= bs!1069924 (and b!4664048 d!1481547)))

(assert (=> bs!1069924 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201169 lambda!201117))))

(assert (=> bs!1069923 (= lambda!201169 lambda!201161)))

(declare-fun bs!1069925 () Bool)

(assert (= bs!1069925 (and b!4664048 d!1481607)))

(assert (=> bs!1069925 (not (= lambda!201169 lambda!201131))))

(declare-fun bs!1069926 () Bool)

(assert (= bs!1069926 (and b!4664048 b!4664039)))

(assert (=> bs!1069926 (= lambda!201169 lambda!201160)))

(declare-fun bs!1069927 () Bool)

(assert (= bs!1069927 (and b!4664048 d!1481645)))

(assert (=> bs!1069927 (not (= lambda!201169 lambda!201146))))

(assert (=> bs!1069919 (= (= (ListMap!4602 Nil!51970) lt!1825944) (= lambda!201169 lambda!201158))))

(assert (=> bs!1069918 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201169 lambda!201114))))

(declare-fun bs!1069928 () Bool)

(assert (= bs!1069928 (and b!4664048 b!4663868)))

(assert (=> bs!1069928 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201169 lambda!201112))))

(assert (=> bs!1069920 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201169 lambda!201154))))

(declare-fun bs!1069929 () Bool)

(assert (= bs!1069929 (and b!4664048 d!1481685)))

(assert (=> bs!1069929 (= (= (ListMap!4602 Nil!51970) lt!1825953) (= lambda!201169 lambda!201159))))

(declare-fun bs!1069930 () Bool)

(assert (= bs!1069930 (and b!4664048 b!4664034)))

(assert (=> bs!1069930 (= lambda!201169 lambda!201156)))

(assert (=> b!4664048 true))

(declare-fun bs!1069931 () Bool)

(declare-fun b!4664050 () Bool)

(assert (= bs!1069931 (and b!4664050 d!1481683)))

(declare-fun lambda!201170 () Int)

(assert (=> bs!1069931 (= (= (ListMap!4602 Nil!51970) lt!1825932) (= lambda!201170 lambda!201155))))

(declare-fun bs!1069932 () Bool)

(assert (= bs!1069932 (and b!4664050 b!4663870)))

(assert (=> bs!1069932 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201170 lambda!201113))))

(declare-fun bs!1069933 () Bool)

(assert (= bs!1069933 (and b!4664050 b!4664036)))

(assert (=> bs!1069933 (= lambda!201170 lambda!201157)))

(declare-fun bs!1069934 () Bool)

(assert (= bs!1069934 (and b!4664050 b!4664031)))

(assert (=> bs!1069934 (= lambda!201170 lambda!201153)))

(declare-fun bs!1069935 () Bool)

(assert (= bs!1069935 (and b!4664050 b!4664048)))

(assert (=> bs!1069935 (= lambda!201170 lambda!201169)))

(declare-fun bs!1069936 () Bool)

(assert (= bs!1069936 (and b!4664050 b!4664029)))

(assert (=> bs!1069936 (= lambda!201170 lambda!201152)))

(declare-fun bs!1069937 () Bool)

(assert (= bs!1069937 (and b!4664050 d!1481687)))

(assert (=> bs!1069937 (= (= (ListMap!4602 Nil!51970) lt!1825974) (= lambda!201170 lambda!201163))))

(declare-fun bs!1069938 () Bool)

(assert (= bs!1069938 (and b!4664050 b!4664041)))

(assert (=> bs!1069938 (= (= (ListMap!4602 Nil!51970) lt!1825965) (= lambda!201170 lambda!201162))))

(declare-fun bs!1069939 () Bool)

(assert (= bs!1069939 (and b!4664050 d!1481547)))

(assert (=> bs!1069939 (= (= (ListMap!4602 Nil!51970) lt!1825705) (= lambda!201170 lambda!201117))))

(assert (=> bs!1069938 (= lambda!201170 lambda!201161)))

(declare-fun bs!1069940 () Bool)

(assert (= bs!1069940 (and b!4664050 d!1481607)))

(assert (=> bs!1069940 (not (= lambda!201170 lambda!201131))))

(declare-fun bs!1069941 () Bool)

(assert (= bs!1069941 (and b!4664050 b!4664039)))

(assert (=> bs!1069941 (= lambda!201170 lambda!201160)))

(declare-fun bs!1069942 () Bool)

(assert (= bs!1069942 (and b!4664050 d!1481645)))

(assert (=> bs!1069942 (not (= lambda!201170 lambda!201146))))

(assert (=> bs!1069933 (= (= (ListMap!4602 Nil!51970) lt!1825944) (= lambda!201170 lambda!201158))))

(assert (=> bs!1069932 (= (= (ListMap!4602 Nil!51970) lt!1825696) (= lambda!201170 lambda!201114))))

(declare-fun bs!1069943 () Bool)

(assert (= bs!1069943 (and b!4664050 b!4663868)))

(assert (=> bs!1069943 (= (= (ListMap!4602 Nil!51970) lt!1825493) (= lambda!201170 lambda!201112))))

(assert (=> bs!1069934 (= (= (ListMap!4602 Nil!51970) lt!1825923) (= lambda!201170 lambda!201154))))

(declare-fun bs!1069944 () Bool)

(assert (= bs!1069944 (and b!4664050 d!1481685)))

(assert (=> bs!1069944 (= (= (ListMap!4602 Nil!51970) lt!1825953) (= lambda!201170 lambda!201159))))

(declare-fun bs!1069945 () Bool)

(assert (= bs!1069945 (and b!4664050 b!4664034)))

(assert (=> bs!1069945 (= lambda!201170 lambda!201156)))

(assert (=> b!4664050 true))

(declare-fun lambda!201171 () Int)

(declare-fun lt!1825992 () ListMap!4601)

(assert (=> bs!1069931 (= (= lt!1825992 lt!1825932) (= lambda!201171 lambda!201155))))

(assert (=> bs!1069932 (= (= lt!1825992 lt!1825493) (= lambda!201171 lambda!201113))))

(assert (=> bs!1069933 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201157))))

(assert (=> bs!1069934 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201153))))

(assert (=> b!4664050 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201170))))

(assert (=> bs!1069935 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201169))))

(assert (=> bs!1069936 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201152))))

(assert (=> bs!1069937 (= (= lt!1825992 lt!1825974) (= lambda!201171 lambda!201163))))

(assert (=> bs!1069938 (= (= lt!1825992 lt!1825965) (= lambda!201171 lambda!201162))))

(assert (=> bs!1069939 (= (= lt!1825992 lt!1825705) (= lambda!201171 lambda!201117))))

(assert (=> bs!1069938 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201161))))

(assert (=> bs!1069940 (not (= lambda!201171 lambda!201131))))

(assert (=> bs!1069941 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201160))))

(assert (=> bs!1069942 (not (= lambda!201171 lambda!201146))))

(assert (=> bs!1069933 (= (= lt!1825992 lt!1825944) (= lambda!201171 lambda!201158))))

(assert (=> bs!1069932 (= (= lt!1825992 lt!1825696) (= lambda!201171 lambda!201114))))

(assert (=> bs!1069943 (= (= lt!1825992 lt!1825493) (= lambda!201171 lambda!201112))))

(assert (=> bs!1069934 (= (= lt!1825992 lt!1825923) (= lambda!201171 lambda!201154))))

(assert (=> bs!1069944 (= (= lt!1825992 lt!1825953) (= lambda!201171 lambda!201159))))

(assert (=> bs!1069945 (= (= lt!1825992 (ListMap!4602 Nil!51970)) (= lambda!201171 lambda!201156))))

(assert (=> b!4664050 true))

(declare-fun bs!1069946 () Bool)

(declare-fun d!1481697 () Bool)

(assert (= bs!1069946 (and d!1481697 d!1481683)))

(declare-fun lt!1826001 () ListMap!4601)

(declare-fun lambda!201172 () Int)

(assert (=> bs!1069946 (= (= lt!1826001 lt!1825932) (= lambda!201172 lambda!201155))))

(declare-fun bs!1069947 () Bool)

(assert (= bs!1069947 (and d!1481697 b!4664050)))

(assert (=> bs!1069947 (= (= lt!1826001 lt!1825992) (= lambda!201172 lambda!201171))))

(declare-fun bs!1069948 () Bool)

(assert (= bs!1069948 (and d!1481697 b!4663870)))

(assert (=> bs!1069948 (= (= lt!1826001 lt!1825493) (= lambda!201172 lambda!201113))))

(declare-fun bs!1069949 () Bool)

(assert (= bs!1069949 (and d!1481697 b!4664036)))

(assert (=> bs!1069949 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201157))))

(declare-fun bs!1069950 () Bool)

(assert (= bs!1069950 (and d!1481697 b!4664031)))

(assert (=> bs!1069950 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201153))))

(assert (=> bs!1069947 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201170))))

(declare-fun bs!1069951 () Bool)

(assert (= bs!1069951 (and d!1481697 b!4664048)))

(assert (=> bs!1069951 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201169))))

(declare-fun bs!1069952 () Bool)

(assert (= bs!1069952 (and d!1481697 b!4664029)))

(assert (=> bs!1069952 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201152))))

(declare-fun bs!1069953 () Bool)

(assert (= bs!1069953 (and d!1481697 d!1481687)))

(assert (=> bs!1069953 (= (= lt!1826001 lt!1825974) (= lambda!201172 lambda!201163))))

(declare-fun bs!1069954 () Bool)

(assert (= bs!1069954 (and d!1481697 b!4664041)))

(assert (=> bs!1069954 (= (= lt!1826001 lt!1825965) (= lambda!201172 lambda!201162))))

(declare-fun bs!1069955 () Bool)

(assert (= bs!1069955 (and d!1481697 d!1481547)))

(assert (=> bs!1069955 (= (= lt!1826001 lt!1825705) (= lambda!201172 lambda!201117))))

(assert (=> bs!1069954 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201161))))

(declare-fun bs!1069956 () Bool)

(assert (= bs!1069956 (and d!1481697 d!1481607)))

(assert (=> bs!1069956 (not (= lambda!201172 lambda!201131))))

(declare-fun bs!1069957 () Bool)

(assert (= bs!1069957 (and d!1481697 b!4664039)))

(assert (=> bs!1069957 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201160))))

(declare-fun bs!1069958 () Bool)

(assert (= bs!1069958 (and d!1481697 d!1481645)))

(assert (=> bs!1069958 (not (= lambda!201172 lambda!201146))))

(assert (=> bs!1069949 (= (= lt!1826001 lt!1825944) (= lambda!201172 lambda!201158))))

(assert (=> bs!1069948 (= (= lt!1826001 lt!1825696) (= lambda!201172 lambda!201114))))

(declare-fun bs!1069959 () Bool)

(assert (= bs!1069959 (and d!1481697 b!4663868)))

(assert (=> bs!1069959 (= (= lt!1826001 lt!1825493) (= lambda!201172 lambda!201112))))

(assert (=> bs!1069950 (= (= lt!1826001 lt!1825923) (= lambda!201172 lambda!201154))))

(declare-fun bs!1069960 () Bool)

(assert (= bs!1069960 (and d!1481697 d!1481685)))

(assert (=> bs!1069960 (= (= lt!1826001 lt!1825953) (= lambda!201172 lambda!201159))))

(declare-fun bs!1069961 () Bool)

(assert (= bs!1069961 (and d!1481697 b!4664034)))

(assert (=> bs!1069961 (= (= lt!1826001 (ListMap!4602 Nil!51970)) (= lambda!201172 lambda!201156))))

(assert (=> d!1481697 true))

(declare-fun b!4664047 () Bool)

(declare-fun e!2910388 () Bool)

(assert (=> b!4664047 (= e!2910388 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201171))))

(declare-fun bm!325882 () Bool)

(declare-fun call!325889 () Unit!119640)

(assert (=> bm!325882 (= call!325889 (lemmaContainsAllItsOwnKeys!620 (ListMap!4602 Nil!51970)))))

(declare-fun bm!325883 () Bool)

(declare-fun c!798405 () Bool)

(declare-fun call!325888 () Bool)

(assert (=> bm!325883 (= call!325888 (forall!11079 (ite c!798405 (toList!5261 (ListMap!4602 Nil!51970)) (t!359216 (Cons!51970 lt!1825490 lt!1825505))) (ite c!798405 lambda!201169 lambda!201171)))))

(declare-fun e!2910390 () Bool)

(assert (=> d!1481697 e!2910390))

(declare-fun res!1962335 () Bool)

(assert (=> d!1481697 (=> (not res!1962335) (not e!2910390))))

(assert (=> d!1481697 (= res!1962335 (forall!11079 (Cons!51970 lt!1825490 lt!1825505) lambda!201172))))

(declare-fun e!2910389 () ListMap!4601)

(assert (=> d!1481697 (= lt!1826001 e!2910389)))

(assert (=> d!1481697 (= c!798405 ((_ is Nil!51970) (Cons!51970 lt!1825490 lt!1825505)))))

(assert (=> d!1481697 (noDuplicateKeys!1666 (Cons!51970 lt!1825490 lt!1825505))))

(assert (=> d!1481697 (= (addToMapMapFromBucket!1123 (Cons!51970 lt!1825490 lt!1825505) (ListMap!4602 Nil!51970)) lt!1826001)))

(assert (=> b!4664048 (= e!2910389 (ListMap!4602 Nil!51970))))

(declare-fun lt!1825994 () Unit!119640)

(assert (=> b!4664048 (= lt!1825994 call!325889)))

(assert (=> b!4664048 call!325888))

(declare-fun lt!1825996 () Unit!119640)

(assert (=> b!4664048 (= lt!1825996 lt!1825994)))

(declare-fun call!325887 () Bool)

(assert (=> b!4664048 call!325887))

(declare-fun lt!1825999 () Unit!119640)

(declare-fun Unit!119750 () Unit!119640)

(assert (=> b!4664048 (= lt!1825999 Unit!119750)))

(declare-fun bm!325884 () Bool)

(assert (=> bm!325884 (= call!325887 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) (ite c!798405 lambda!201169 lambda!201170)))))

(declare-fun b!4664049 () Bool)

(assert (=> b!4664049 (= e!2910390 (invariantList!1320 (toList!5261 lt!1826001)))))

(assert (=> b!4664050 (= e!2910389 lt!1825992)))

(declare-fun lt!1825993 () ListMap!4601)

(assert (=> b!4664050 (= lt!1825993 (+!2006 (ListMap!4602 Nil!51970) (h!58136 (Cons!51970 lt!1825490 lt!1825505))))))

(assert (=> b!4664050 (= lt!1825992 (addToMapMapFromBucket!1123 (t!359216 (Cons!51970 lt!1825490 lt!1825505)) (+!2006 (ListMap!4602 Nil!51970) (h!58136 (Cons!51970 lt!1825490 lt!1825505)))))))

(declare-fun lt!1825989 () Unit!119640)

(assert (=> b!4664050 (= lt!1825989 call!325889)))

(assert (=> b!4664050 call!325887))

(declare-fun lt!1826004 () Unit!119640)

(assert (=> b!4664050 (= lt!1826004 lt!1825989)))

(assert (=> b!4664050 (forall!11079 (toList!5261 lt!1825993) lambda!201171)))

(declare-fun lt!1826005 () Unit!119640)

(declare-fun Unit!119751 () Unit!119640)

(assert (=> b!4664050 (= lt!1826005 Unit!119751)))

(assert (=> b!4664050 call!325888))

(declare-fun lt!1825990 () Unit!119640)

(declare-fun Unit!119752 () Unit!119640)

(assert (=> b!4664050 (= lt!1825990 Unit!119752)))

(declare-fun lt!1825995 () Unit!119640)

(declare-fun Unit!119753 () Unit!119640)

(assert (=> b!4664050 (= lt!1825995 Unit!119753)))

(declare-fun lt!1826007 () Unit!119640)

(assert (=> b!4664050 (= lt!1826007 (forallContained!3280 (toList!5261 lt!1825993) lambda!201171 (h!58136 (Cons!51970 lt!1825490 lt!1825505))))))

(assert (=> b!4664050 (contains!15153 lt!1825993 (_1!29849 (h!58136 (Cons!51970 lt!1825490 lt!1825505))))))

(declare-fun lt!1826009 () Unit!119640)

(declare-fun Unit!119754 () Unit!119640)

(assert (=> b!4664050 (= lt!1826009 Unit!119754)))

(assert (=> b!4664050 (contains!15153 lt!1825992 (_1!29849 (h!58136 (Cons!51970 lt!1825490 lt!1825505))))))

(declare-fun lt!1825998 () Unit!119640)

(declare-fun Unit!119755 () Unit!119640)

(assert (=> b!4664050 (= lt!1825998 Unit!119755)))

(assert (=> b!4664050 (forall!11079 (Cons!51970 lt!1825490 lt!1825505) lambda!201171)))

(declare-fun lt!1826008 () Unit!119640)

(declare-fun Unit!119756 () Unit!119640)

(assert (=> b!4664050 (= lt!1826008 Unit!119756)))

(assert (=> b!4664050 (forall!11079 (toList!5261 lt!1825993) lambda!201171)))

(declare-fun lt!1826000 () Unit!119640)

(declare-fun Unit!119757 () Unit!119640)

(assert (=> b!4664050 (= lt!1826000 Unit!119757)))

(declare-fun lt!1825997 () Unit!119640)

(declare-fun Unit!119758 () Unit!119640)

(assert (=> b!4664050 (= lt!1825997 Unit!119758)))

(declare-fun lt!1826006 () Unit!119640)

(assert (=> b!4664050 (= lt!1826006 (addForallContainsKeyThenBeforeAdding!619 (ListMap!4602 Nil!51970) lt!1825992 (_1!29849 (h!58136 (Cons!51970 lt!1825490 lt!1825505))) (_2!29849 (h!58136 (Cons!51970 lt!1825490 lt!1825505)))))))

(assert (=> b!4664050 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201171)))

(declare-fun lt!1826003 () Unit!119640)

(assert (=> b!4664050 (= lt!1826003 lt!1826006)))

(assert (=> b!4664050 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201171)))

(declare-fun lt!1825991 () Unit!119640)

(declare-fun Unit!119759 () Unit!119640)

(assert (=> b!4664050 (= lt!1825991 Unit!119759)))

(declare-fun res!1962334 () Bool)

(assert (=> b!4664050 (= res!1962334 (forall!11079 (Cons!51970 lt!1825490 lt!1825505) lambda!201171))))

(assert (=> b!4664050 (=> (not res!1962334) (not e!2910388))))

(assert (=> b!4664050 e!2910388))

(declare-fun lt!1826002 () Unit!119640)

(declare-fun Unit!119760 () Unit!119640)

(assert (=> b!4664050 (= lt!1826002 Unit!119760)))

(declare-fun b!4664051 () Bool)

(declare-fun res!1962336 () Bool)

(assert (=> b!4664051 (=> (not res!1962336) (not e!2910390))))

(assert (=> b!4664051 (= res!1962336 (forall!11079 (toList!5261 (ListMap!4602 Nil!51970)) lambda!201172))))

(assert (= (and d!1481697 c!798405) b!4664048))

(assert (= (and d!1481697 (not c!798405)) b!4664050))

(assert (= (and b!4664050 res!1962334) b!4664047))

(assert (= (or b!4664048 b!4664050) bm!325882))

(assert (= (or b!4664048 b!4664050) bm!325883))

(assert (= (or b!4664048 b!4664050) bm!325884))

(assert (= (and d!1481697 res!1962335) b!4664051))

(assert (= (and b!4664051 res!1962336) b!4664049))

(declare-fun m!5549559 () Bool)

(assert (=> b!4664050 m!5549559))

(declare-fun m!5549561 () Bool)

(assert (=> b!4664050 m!5549561))

(declare-fun m!5549563 () Bool)

(assert (=> b!4664050 m!5549563))

(declare-fun m!5549565 () Bool)

(assert (=> b!4664050 m!5549565))

(assert (=> b!4664050 m!5549561))

(declare-fun m!5549567 () Bool)

(assert (=> b!4664050 m!5549567))

(declare-fun m!5549569 () Bool)

(assert (=> b!4664050 m!5549569))

(declare-fun m!5549571 () Bool)

(assert (=> b!4664050 m!5549571))

(declare-fun m!5549573 () Bool)

(assert (=> b!4664050 m!5549573))

(assert (=> b!4664050 m!5549563))

(assert (=> b!4664050 m!5549569))

(declare-fun m!5549575 () Bool)

(assert (=> b!4664050 m!5549575))

(assert (=> b!4664050 m!5549567))

(declare-fun m!5549577 () Bool)

(assert (=> bm!325884 m!5549577))

(assert (=> b!4664047 m!5549561))

(declare-fun m!5549579 () Bool)

(assert (=> b!4664049 m!5549579))

(declare-fun m!5549581 () Bool)

(assert (=> bm!325883 m!5549581))

(declare-fun m!5549583 () Bool)

(assert (=> b!4664051 m!5549583))

(declare-fun m!5549585 () Bool)

(assert (=> d!1481697 m!5549585))

(declare-fun m!5549587 () Bool)

(assert (=> d!1481697 m!5549587))

(assert (=> bm!325882 m!5549475))

(assert (=> b!4663708 d!1481697))

(declare-fun d!1481699 () Bool)

(assert (=> d!1481699 (= (eq!921 lt!1825501 (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)) (h!58136 oldBucket!40))) (= (content!9038 (toList!5261 lt!1825501)) (content!9038 (toList!5261 (+!2006 (extractMap!1722 (Cons!51971 (tuple2!53113 hash!414 lt!1825496) Nil!51971)) (h!58136 oldBucket!40))))))))

(declare-fun bs!1069962 () Bool)

(assert (= bs!1069962 d!1481699))

(declare-fun m!5549589 () Bool)

(assert (=> bs!1069962 m!5549589))

(declare-fun m!5549591 () Bool)

(assert (=> bs!1069962 m!5549591))

(assert (=> b!4663708 d!1481699))

(declare-fun d!1481701 () Bool)

(assert (=> d!1481701 (= (eq!921 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825506 lt!1825496) (ListMap!4602 Nil!51970)) (+!2006 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825506)) (= (content!9038 (toList!5261 (addToMapMapFromBucket!1123 (Cons!51970 lt!1825506 lt!1825496) (ListMap!4602 Nil!51970)))) (content!9038 (toList!5261 (+!2006 (addToMapMapFromBucket!1123 lt!1825496 (ListMap!4602 Nil!51970)) lt!1825506)))))))

(declare-fun bs!1069963 () Bool)

(assert (= bs!1069963 d!1481701))

(declare-fun m!5549593 () Bool)

(assert (=> bs!1069963 m!5549593))

(declare-fun m!5549595 () Bool)

(assert (=> bs!1069963 m!5549595))

(assert (=> b!4663708 d!1481701))

(declare-fun d!1481703 () Bool)

(declare-fun res!1962337 () Bool)

(declare-fun e!2910391 () Bool)

(assert (=> d!1481703 (=> res!1962337 e!2910391)))

(assert (=> d!1481703 (= res!1962337 (not ((_ is Cons!51970) lt!1825505)))))

(assert (=> d!1481703 (= (noDuplicateKeys!1666 lt!1825505) e!2910391)))

(declare-fun b!4664052 () Bool)

(declare-fun e!2910392 () Bool)

(assert (=> b!4664052 (= e!2910391 e!2910392)))

(declare-fun res!1962338 () Bool)

(assert (=> b!4664052 (=> (not res!1962338) (not e!2910392))))

(assert (=> b!4664052 (= res!1962338 (not (containsKey!2788 (t!359216 lt!1825505) (_1!29849 (h!58136 lt!1825505)))))))

(declare-fun b!4664053 () Bool)

(assert (=> b!4664053 (= e!2910392 (noDuplicateKeys!1666 (t!359216 lt!1825505)))))

(assert (= (and d!1481703 (not res!1962337)) b!4664052))

(assert (= (and b!4664052 res!1962338) b!4664053))

(declare-fun m!5549597 () Bool)

(assert (=> b!4664052 m!5549597))

(declare-fun m!5549599 () Bool)

(assert (=> b!4664053 m!5549599))

(assert (=> b!4663697 d!1481703))

(declare-fun d!1481705 () Bool)

(declare-fun res!1962339 () Bool)

(declare-fun e!2910393 () Bool)

(assert (=> d!1481705 (=> res!1962339 e!2910393)))

(assert (=> d!1481705 (= res!1962339 (not ((_ is Cons!51970) newBucket!224)))))

(assert (=> d!1481705 (= (noDuplicateKeys!1666 newBucket!224) e!2910393)))

(declare-fun b!4664054 () Bool)

(declare-fun e!2910394 () Bool)

(assert (=> b!4664054 (= e!2910393 e!2910394)))

(declare-fun res!1962340 () Bool)

(assert (=> b!4664054 (=> (not res!1962340) (not e!2910394))))

(assert (=> b!4664054 (= res!1962340 (not (containsKey!2788 (t!359216 newBucket!224) (_1!29849 (h!58136 newBucket!224)))))))

(declare-fun b!4664055 () Bool)

(assert (=> b!4664055 (= e!2910394 (noDuplicateKeys!1666 (t!359216 newBucket!224)))))

(assert (= (and d!1481705 (not res!1962339)) b!4664054))

(assert (= (and b!4664054 res!1962340) b!4664055))

(declare-fun m!5549601 () Bool)

(assert (=> b!4664054 m!5549601))

(declare-fun m!5549603 () Bool)

(assert (=> b!4664055 m!5549603))

(assert (=> b!4663696 d!1481705))

(declare-fun b!4664072 () Bool)

(declare-fun res!1962351 () Bool)

(declare-fun e!2910409 () Bool)

(assert (=> b!4664072 (=> (not res!1962351) (not e!2910409))))

(declare-fun lt!1826012 () Option!11886)

(declare-fun get!17323 (Option!11886) tuple2!53110)

(assert (=> b!4664072 (= res!1962351 (= (_1!29849 (get!17323 lt!1826012)) key!4968))))

(declare-fun d!1481707 () Bool)

(declare-fun e!2910407 () Bool)

(assert (=> d!1481707 e!2910407))

(declare-fun res!1962350 () Bool)

(assert (=> d!1481707 (=> res!1962350 e!2910407)))

(declare-fun e!2910405 () Bool)

(assert (=> d!1481707 (= res!1962350 e!2910405)))

(declare-fun res!1962349 () Bool)

(assert (=> d!1481707 (=> (not res!1962349) (not e!2910405))))

(declare-fun isEmpty!29039 (Option!11886) Bool)

(assert (=> d!1481707 (= res!1962349 (isEmpty!29039 lt!1826012))))

(declare-fun e!2910408 () Option!11886)

(assert (=> d!1481707 (= lt!1826012 e!2910408)))

(declare-fun c!798411 () Bool)

(assert (=> d!1481707 (= c!798411 (and ((_ is Cons!51970) lt!1825491) (= (_1!29849 (h!58136 lt!1825491)) key!4968)))))

(assert (=> d!1481707 (noDuplicateKeys!1666 lt!1825491)))

(assert (=> d!1481707 (= (getPair!394 lt!1825491 key!4968) lt!1826012)))

(declare-fun b!4664073 () Bool)

(assert (=> b!4664073 (= e!2910405 (not (containsKey!2788 lt!1825491 key!4968)))))

(declare-fun b!4664074 () Bool)

(declare-fun e!2910406 () Option!11886)

(assert (=> b!4664074 (= e!2910406 (getPair!394 (t!359216 lt!1825491) key!4968))))

(declare-fun b!4664075 () Bool)

(assert (=> b!4664075 (= e!2910408 e!2910406)))

(declare-fun c!798410 () Bool)

(assert (=> b!4664075 (= c!798410 ((_ is Cons!51970) lt!1825491))))

(declare-fun b!4664076 () Bool)

(assert (=> b!4664076 (= e!2910407 e!2910409)))

(declare-fun res!1962352 () Bool)

(assert (=> b!4664076 (=> (not res!1962352) (not e!2910409))))

(assert (=> b!4664076 (= res!1962352 (isDefined!9151 lt!1826012))))

(declare-fun b!4664077 () Bool)

(assert (=> b!4664077 (= e!2910409 (contains!15159 lt!1825491 (get!17323 lt!1826012)))))

(declare-fun b!4664078 () Bool)

(assert (=> b!4664078 (= e!2910406 None!11885)))

(declare-fun b!4664079 () Bool)

(assert (=> b!4664079 (= e!2910408 (Some!11885 (h!58136 lt!1825491)))))

(assert (= (and d!1481707 c!798411) b!4664079))

(assert (= (and d!1481707 (not c!798411)) b!4664075))

(assert (= (and b!4664075 c!798410) b!4664074))

(assert (= (and b!4664075 (not c!798410)) b!4664078))

(assert (= (and d!1481707 res!1962349) b!4664073))

(assert (= (and d!1481707 (not res!1962350)) b!4664076))

(assert (= (and b!4664076 res!1962352) b!4664072))

(assert (= (and b!4664072 res!1962351) b!4664077))

(declare-fun m!5549605 () Bool)

(assert (=> b!4664077 m!5549605))

(assert (=> b!4664077 m!5549605))

(declare-fun m!5549607 () Bool)

(assert (=> b!4664077 m!5549607))

(declare-fun m!5549609 () Bool)

(assert (=> b!4664076 m!5549609))

(declare-fun m!5549611 () Bool)

(assert (=> b!4664073 m!5549611))

(declare-fun m!5549613 () Bool)

(assert (=> b!4664074 m!5549613))

(assert (=> b!4664072 m!5549605))

(declare-fun m!5549615 () Bool)

(assert (=> d!1481707 m!5549615))

(declare-fun m!5549617 () Bool)

(assert (=> d!1481707 m!5549617))

(assert (=> b!4663707 d!1481707))

(declare-fun d!1481709 () Bool)

(declare-fun lt!1826015 () Bool)

(declare-fun content!9039 (List!52095) (InoxSet tuple2!53112))

(assert (=> d!1481709 (= lt!1826015 (select (content!9039 lt!1825507) lt!1825494))))

(declare-fun e!2910415 () Bool)

(assert (=> d!1481709 (= lt!1826015 e!2910415)))

(declare-fun res!1962357 () Bool)

(assert (=> d!1481709 (=> (not res!1962357) (not e!2910415))))

(assert (=> d!1481709 (= res!1962357 ((_ is Cons!51971) lt!1825507))))

(assert (=> d!1481709 (= (contains!15154 lt!1825507 lt!1825494) lt!1826015)))

(declare-fun b!4664084 () Bool)

(declare-fun e!2910414 () Bool)

(assert (=> b!4664084 (= e!2910415 e!2910414)))

(declare-fun res!1962358 () Bool)

(assert (=> b!4664084 (=> res!1962358 e!2910414)))

(assert (=> b!4664084 (= res!1962358 (= (h!58137 lt!1825507) lt!1825494))))

(declare-fun b!4664085 () Bool)

(assert (=> b!4664085 (= e!2910414 (contains!15154 (t!359217 lt!1825507) lt!1825494))))

(assert (= (and d!1481709 res!1962357) b!4664084))

(assert (= (and b!4664084 (not res!1962358)) b!4664085))

(declare-fun m!5549619 () Bool)

(assert (=> d!1481709 m!5549619))

(declare-fun m!5549621 () Bool)

(assert (=> d!1481709 m!5549621))

(declare-fun m!5549623 () Bool)

(assert (=> b!4664085 m!5549623))

(assert (=> b!4663707 d!1481709))

(declare-fun d!1481711 () Bool)

(assert (=> d!1481711 (containsKey!2788 oldBucket!40 key!4968)))

(declare-fun lt!1826018 () Unit!119640)

(declare-fun choose!32192 (List!52094 K!13315 Hashable!6063) Unit!119640)

(assert (=> d!1481711 (= lt!1826018 (choose!32192 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1481711 (noDuplicateKeys!1666 oldBucket!40)))

(assert (=> d!1481711 (= (lemmaGetPairDefinedThenContainsKey!144 oldBucket!40 key!4968 hashF!1389) lt!1826018)))

(declare-fun bs!1069964 () Bool)

(assert (= bs!1069964 d!1481711))

(assert (=> bs!1069964 m!5548729))

(declare-fun m!5549625 () Bool)

(assert (=> bs!1069964 m!5549625))

(assert (=> bs!1069964 m!5548751))

(assert (=> b!4663707 d!1481711))

(declare-fun d!1481713 () Bool)

(declare-fun res!1962363 () Bool)

(declare-fun e!2910420 () Bool)

(assert (=> d!1481713 (=> res!1962363 e!2910420)))

(assert (=> d!1481713 (= res!1962363 (and ((_ is Cons!51970) (t!359216 oldBucket!40)) (= (_1!29849 (h!58136 (t!359216 oldBucket!40))) key!4968)))))

(assert (=> d!1481713 (= (containsKey!2788 (t!359216 oldBucket!40) key!4968) e!2910420)))

(declare-fun b!4664090 () Bool)

(declare-fun e!2910421 () Bool)

(assert (=> b!4664090 (= e!2910420 e!2910421)))

(declare-fun res!1962364 () Bool)

(assert (=> b!4664090 (=> (not res!1962364) (not e!2910421))))

(assert (=> b!4664090 (= res!1962364 ((_ is Cons!51970) (t!359216 oldBucket!40)))))

(declare-fun b!4664091 () Bool)

(assert (=> b!4664091 (= e!2910421 (containsKey!2788 (t!359216 (t!359216 oldBucket!40)) key!4968))))

(assert (= (and d!1481713 (not res!1962363)) b!4664090))

(assert (= (and b!4664090 res!1962364) b!4664091))

(declare-fun m!5549627 () Bool)

(assert (=> b!4664091 m!5549627))

(assert (=> b!4663707 d!1481713))

(declare-fun d!1481715 () Bool)

(assert (=> d!1481715 (= (isDefined!9151 (getPair!394 lt!1825491 key!4968)) (not (isEmpty!29039 (getPair!394 lt!1825491 key!4968))))))

(declare-fun bs!1069965 () Bool)

(assert (= bs!1069965 d!1481715))

(assert (=> bs!1069965 m!5548719))

(declare-fun m!5549629 () Bool)

(assert (=> bs!1069965 m!5549629))

(assert (=> b!4663707 d!1481715))

(declare-fun d!1481717 () Bool)

(declare-fun dynLambda!21626 (Int tuple2!53112) Bool)

(assert (=> d!1481717 (dynLambda!21626 lambda!201036 lt!1825494)))

(declare-fun lt!1826021 () Unit!119640)

(declare-fun choose!32193 (List!52095 Int tuple2!53112) Unit!119640)

(assert (=> d!1481717 (= lt!1826021 (choose!32193 lt!1825507 lambda!201036 lt!1825494))))

(declare-fun e!2910424 () Bool)

(assert (=> d!1481717 e!2910424))

(declare-fun res!1962367 () Bool)

(assert (=> d!1481717 (=> (not res!1962367) (not e!2910424))))

(assert (=> d!1481717 (= res!1962367 (forall!11080 lt!1825507 lambda!201036))))

(assert (=> d!1481717 (= (forallContained!3278 lt!1825507 lambda!201036 lt!1825494) lt!1826021)))

(declare-fun b!4664094 () Bool)

(assert (=> b!4664094 (= e!2910424 (contains!15154 lt!1825507 lt!1825494))))

(assert (= (and d!1481717 res!1962367) b!4664094))

(declare-fun b_lambda!175275 () Bool)

(assert (=> (not b_lambda!175275) (not d!1481717)))

(declare-fun m!5549631 () Bool)

(assert (=> d!1481717 m!5549631))

(declare-fun m!5549633 () Bool)

(assert (=> d!1481717 m!5549633))

(declare-fun m!5549635 () Bool)

(assert (=> d!1481717 m!5549635))

(assert (=> b!4664094 m!5548725))

(assert (=> b!4663707 d!1481717))

(declare-fun bs!1069966 () Bool)

(declare-fun d!1481719 () Bool)

(assert (= bs!1069966 (and d!1481719 d!1481619)))

(declare-fun lambda!201179 () Int)

(assert (=> bs!1069966 (= lambda!201179 lambda!201138)))

(declare-fun bs!1069967 () Bool)

(assert (= bs!1069967 (and d!1481719 d!1481623)))

(assert (=> bs!1069967 (= lambda!201179 lambda!201139)))

(declare-fun bs!1069968 () Bool)

(assert (= bs!1069968 (and d!1481719 d!1481695)))

(assert (=> bs!1069968 (= lambda!201179 lambda!201168)))

(declare-fun bs!1069969 () Bool)

(assert (= bs!1069969 (and d!1481719 d!1481585)))

(assert (=> bs!1069969 (= lambda!201179 lambda!201123)))

(declare-fun bs!1069970 () Bool)

(assert (= bs!1069970 (and d!1481719 d!1481629)))

(assert (=> bs!1069970 (= lambda!201179 lambda!201144)))

(declare-fun bs!1069971 () Bool)

(assert (= bs!1069971 (and d!1481719 d!1481691)))

(assert (=> bs!1069971 (= lambda!201179 lambda!201164)))

(declare-fun bs!1069972 () Bool)

(assert (= bs!1069972 (and d!1481719 b!4663707)))

(assert (=> bs!1069972 (= lambda!201179 lambda!201036)))

(declare-fun bs!1069973 () Bool)

(assert (= bs!1069973 (and d!1481719 d!1481693)))

(assert (=> bs!1069973 (= lambda!201179 lambda!201167)))

(declare-fun e!2910429 () Bool)

(declare-fun lt!1826038 () List!52094)

(declare-fun b!4664106 () Bool)

(declare-fun lt!1826043 () (_ BitVec 64))

(declare-datatypes ((Option!11890 0))(
  ( (None!11889) (Some!11889 (v!46219 List!52094)) )
))
(declare-fun getValueByKey!1654 (List!52095 (_ BitVec 64)) Option!11890)

(assert (=> b!4664106 (= e!2910429 (= (getValueByKey!1654 (toList!5262 lt!1825500) lt!1826043) (Some!11889 lt!1826038)))))

(declare-fun e!2910430 () Bool)

(declare-fun b!4664105 () Bool)

(assert (=> b!4664105 (= e!2910430 (isDefined!9151 (getPair!394 (apply!12269 lt!1825500 (hash!3825 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1826039 () Unit!119640)

(assert (=> b!4664105 (= lt!1826039 (forallContained!3278 (toList!5262 lt!1825500) lambda!201179 (tuple2!53113 (hash!3825 hashF!1389 key!4968) (apply!12269 lt!1825500 (hash!3825 hashF!1389 key!4968)))))))

(declare-fun lt!1826040 () Unit!119640)

(declare-fun lt!1826042 () Unit!119640)

(assert (=> b!4664105 (= lt!1826040 lt!1826042)))

(assert (=> b!4664105 (contains!15154 (toList!5262 lt!1825500) (tuple2!53113 lt!1826043 lt!1826038))))

(assert (=> b!4664105 (= lt!1826042 (lemmaGetValueImpliesTupleContained!199 lt!1825500 lt!1826043 lt!1826038))))

(assert (=> b!4664105 e!2910429))

(declare-fun res!1962378 () Bool)

(assert (=> b!4664105 (=> (not res!1962378) (not e!2910429))))

(assert (=> b!4664105 (= res!1962378 (contains!15155 lt!1825500 lt!1826043))))

(assert (=> b!4664105 (= lt!1826038 (apply!12269 lt!1825500 (hash!3825 hashF!1389 key!4968)))))

(assert (=> b!4664105 (= lt!1826043 (hash!3825 hashF!1389 key!4968))))

(declare-fun lt!1826041 () Unit!119640)

(declare-fun lt!1826045 () Unit!119640)

(assert (=> b!4664105 (= lt!1826041 lt!1826045)))

(assert (=> b!4664105 (contains!15155 lt!1825500 (hash!3825 hashF!1389 key!4968))))

(assert (=> b!4664105 (= lt!1826045 (lemmaInGenMapThenLongMapContainsHash!600 lt!1825500 key!4968 hashF!1389))))

(declare-fun b!4664103 () Bool)

(declare-fun res!1962376 () Bool)

(assert (=> b!4664103 (=> (not res!1962376) (not e!2910430))))

(declare-fun allKeysSameHashInMap!1622 (ListLongMap!3815 Hashable!6063) Bool)

(assert (=> b!4664103 (= res!1962376 (allKeysSameHashInMap!1622 lt!1825500 hashF!1389))))

(declare-fun b!4664104 () Bool)

(declare-fun res!1962377 () Bool)

(assert (=> b!4664104 (=> (not res!1962377) (not e!2910430))))

(assert (=> b!4664104 (= res!1962377 (contains!15153 (extractMap!1722 (toList!5262 lt!1825500)) key!4968))))

(assert (=> d!1481719 e!2910430))

(declare-fun res!1962379 () Bool)

(assert (=> d!1481719 (=> (not res!1962379) (not e!2910430))))

(assert (=> d!1481719 (= res!1962379 (forall!11080 (toList!5262 lt!1825500) lambda!201179))))

(declare-fun lt!1826044 () Unit!119640)

(declare-fun choose!32194 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> d!1481719 (= lt!1826044 (choose!32194 lt!1825500 key!4968 hashF!1389))))

(assert (=> d!1481719 (forall!11080 (toList!5262 lt!1825500) lambda!201179)))

(assert (=> d!1481719 (= (lemmaInGenMapThenGetPairDefined!190 lt!1825500 key!4968 hashF!1389) lt!1826044)))

(assert (= (and d!1481719 res!1962379) b!4664103))

(assert (= (and b!4664103 res!1962376) b!4664104))

(assert (= (and b!4664104 res!1962377) b!4664105))

(assert (= (and b!4664105 res!1962378) b!4664106))

(declare-fun m!5549637 () Bool)

(assert (=> b!4664103 m!5549637))

(declare-fun m!5549639 () Bool)

(assert (=> b!4664106 m!5549639))

(declare-fun m!5549641 () Bool)

(assert (=> d!1481719 m!5549641))

(declare-fun m!5549643 () Bool)

(assert (=> d!1481719 m!5549643))

(assert (=> d!1481719 m!5549641))

(declare-fun m!5549645 () Bool)

(assert (=> b!4664105 m!5549645))

(declare-fun m!5549647 () Bool)

(assert (=> b!4664105 m!5549647))

(declare-fun m!5549649 () Bool)

(assert (=> b!4664105 m!5549649))

(assert (=> b!4664105 m!5548753))

(declare-fun m!5549651 () Bool)

(assert (=> b!4664105 m!5549651))

(assert (=> b!4664105 m!5548717))

(declare-fun m!5549653 () Bool)

(assert (=> b!4664105 m!5549653))

(declare-fun m!5549655 () Bool)

(assert (=> b!4664105 m!5549655))

(assert (=> b!4664105 m!5549651))

(assert (=> b!4664105 m!5549647))

(assert (=> b!4664105 m!5548753))

(declare-fun m!5549657 () Bool)

(assert (=> b!4664105 m!5549657))

(declare-fun m!5549659 () Bool)

(assert (=> b!4664105 m!5549659))

(assert (=> b!4664105 m!5548753))

(declare-fun m!5549661 () Bool)

(assert (=> b!4664104 m!5549661))

(assert (=> b!4664104 m!5549661))

(declare-fun m!5549663 () Bool)

(assert (=> b!4664104 m!5549663))

(assert (=> b!4663707 d!1481719))

(declare-fun d!1481721 () Bool)

(declare-fun e!2910436 () Bool)

(assert (=> d!1481721 e!2910436))

(declare-fun res!1962382 () Bool)

(assert (=> d!1481721 (=> res!1962382 e!2910436)))

(declare-fun lt!1826054 () Bool)

(assert (=> d!1481721 (= res!1962382 (not lt!1826054))))

(declare-fun lt!1826056 () Bool)

(assert (=> d!1481721 (= lt!1826054 lt!1826056)))

(declare-fun lt!1826055 () Unit!119640)

(declare-fun e!2910435 () Unit!119640)

(assert (=> d!1481721 (= lt!1826055 e!2910435)))

(declare-fun c!798414 () Bool)

(assert (=> d!1481721 (= c!798414 lt!1826056)))

(declare-fun containsKey!2792 (List!52095 (_ BitVec 64)) Bool)

(assert (=> d!1481721 (= lt!1826056 (containsKey!2792 (toList!5262 lt!1825500) lt!1825492))))

(assert (=> d!1481721 (= (contains!15155 lt!1825500 lt!1825492) lt!1826054)))

(declare-fun b!4664113 () Bool)

(declare-fun lt!1826057 () Unit!119640)

(assert (=> b!4664113 (= e!2910435 lt!1826057)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1556 (List!52095 (_ BitVec 64)) Unit!119640)

(assert (=> b!4664113 (= lt!1826057 (lemmaContainsKeyImpliesGetValueByKeyDefined!1556 (toList!5262 lt!1825500) lt!1825492))))

(declare-fun isDefined!9155 (Option!11890) Bool)

(assert (=> b!4664113 (isDefined!9155 (getValueByKey!1654 (toList!5262 lt!1825500) lt!1825492))))

(declare-fun b!4664114 () Bool)

(declare-fun Unit!119761 () Unit!119640)

(assert (=> b!4664114 (= e!2910435 Unit!119761)))

(declare-fun b!4664115 () Bool)

(assert (=> b!4664115 (= e!2910436 (isDefined!9155 (getValueByKey!1654 (toList!5262 lt!1825500) lt!1825492)))))

(assert (= (and d!1481721 c!798414) b!4664113))

(assert (= (and d!1481721 (not c!798414)) b!4664114))

(assert (= (and d!1481721 (not res!1962382)) b!4664115))

(declare-fun m!5549665 () Bool)

(assert (=> d!1481721 m!5549665))

(declare-fun m!5549667 () Bool)

(assert (=> b!4664113 m!5549667))

(declare-fun m!5549669 () Bool)

(assert (=> b!4664113 m!5549669))

(assert (=> b!4664113 m!5549669))

(declare-fun m!5549671 () Bool)

(assert (=> b!4664113 m!5549671))

(assert (=> b!4664115 m!5549669))

(assert (=> b!4664115 m!5549669))

(assert (=> b!4664115 m!5549671))

(assert (=> b!4663707 d!1481721))

(declare-fun d!1481723 () Bool)

(assert (=> d!1481723 (contains!15154 (toList!5262 lt!1825500) (tuple2!53113 lt!1825492 lt!1825491))))

(declare-fun lt!1826060 () Unit!119640)

(declare-fun choose!32195 (ListLongMap!3815 (_ BitVec 64) List!52094) Unit!119640)

(assert (=> d!1481723 (= lt!1826060 (choose!32195 lt!1825500 lt!1825492 lt!1825491))))

(assert (=> d!1481723 (contains!15155 lt!1825500 lt!1825492)))

(assert (=> d!1481723 (= (lemmaGetValueImpliesTupleContained!199 lt!1825500 lt!1825492 lt!1825491) lt!1826060)))

(declare-fun bs!1069974 () Bool)

(assert (= bs!1069974 d!1481723))

(declare-fun m!5549673 () Bool)

(assert (=> bs!1069974 m!5549673))

(declare-fun m!5549675 () Bool)

(assert (=> bs!1069974 m!5549675))

(assert (=> bs!1069974 m!5548733))

(assert (=> b!4663707 d!1481723))

(declare-fun d!1481725 () Bool)

(declare-fun res!1962383 () Bool)

(declare-fun e!2910437 () Bool)

(assert (=> d!1481725 (=> res!1962383 e!2910437)))

(assert (=> d!1481725 (= res!1962383 (and ((_ is Cons!51970) oldBucket!40) (= (_1!29849 (h!58136 oldBucket!40)) key!4968)))))

(assert (=> d!1481725 (= (containsKey!2788 oldBucket!40 key!4968) e!2910437)))

(declare-fun b!4664117 () Bool)

(declare-fun e!2910438 () Bool)

(assert (=> b!4664117 (= e!2910437 e!2910438)))

(declare-fun res!1962384 () Bool)

(assert (=> b!4664117 (=> (not res!1962384) (not e!2910438))))

(assert (=> b!4664117 (= res!1962384 ((_ is Cons!51970) oldBucket!40))))

(declare-fun b!4664118 () Bool)

(assert (=> b!4664118 (= e!2910438 (containsKey!2788 (t!359216 oldBucket!40) key!4968))))

(assert (= (and d!1481725 (not res!1962383)) b!4664117))

(assert (= (and b!4664117 res!1962384) b!4664118))

(assert (=> b!4664118 m!5548735))

(assert (=> b!4663707 d!1481725))

(declare-fun d!1481727 () Bool)

(declare-fun get!17324 (Option!11890) List!52094)

(assert (=> d!1481727 (= (apply!12269 lt!1825500 lt!1825492) (get!17324 (getValueByKey!1654 (toList!5262 lt!1825500) lt!1825492)))))

(declare-fun bs!1069975 () Bool)

(assert (= bs!1069975 d!1481727))

(assert (=> bs!1069975 m!5549669))

(assert (=> bs!1069975 m!5549669))

(declare-fun m!5549677 () Bool)

(assert (=> bs!1069975 m!5549677))

(assert (=> b!4663707 d!1481727))

(declare-fun bs!1069976 () Bool)

(declare-fun d!1481729 () Bool)

(assert (= bs!1069976 (and d!1481729 d!1481619)))

(declare-fun lambda!201182 () Int)

(assert (=> bs!1069976 (= lambda!201182 lambda!201138)))

(declare-fun bs!1069977 () Bool)

(assert (= bs!1069977 (and d!1481729 d!1481623)))

(assert (=> bs!1069977 (= lambda!201182 lambda!201139)))

(declare-fun bs!1069978 () Bool)

(assert (= bs!1069978 (and d!1481729 d!1481695)))

(assert (=> bs!1069978 (= lambda!201182 lambda!201168)))

(declare-fun bs!1069979 () Bool)

(assert (= bs!1069979 (and d!1481729 d!1481585)))

(assert (=> bs!1069979 (= lambda!201182 lambda!201123)))

(declare-fun bs!1069980 () Bool)

(assert (= bs!1069980 (and d!1481729 d!1481719)))

(assert (=> bs!1069980 (= lambda!201182 lambda!201179)))

(declare-fun bs!1069981 () Bool)

(assert (= bs!1069981 (and d!1481729 d!1481629)))

(assert (=> bs!1069981 (= lambda!201182 lambda!201144)))

(declare-fun bs!1069982 () Bool)

(assert (= bs!1069982 (and d!1481729 d!1481691)))

(assert (=> bs!1069982 (= lambda!201182 lambda!201164)))

(declare-fun bs!1069983 () Bool)

(assert (= bs!1069983 (and d!1481729 b!4663707)))

(assert (=> bs!1069983 (= lambda!201182 lambda!201036)))

(declare-fun bs!1069984 () Bool)

(assert (= bs!1069984 (and d!1481729 d!1481693)))

(assert (=> bs!1069984 (= lambda!201182 lambda!201167)))

(assert (=> d!1481729 (contains!15155 lt!1825500 (hash!3825 hashF!1389 key!4968))))

(declare-fun lt!1826063 () Unit!119640)

(declare-fun choose!32196 (ListLongMap!3815 K!13315 Hashable!6063) Unit!119640)

(assert (=> d!1481729 (= lt!1826063 (choose!32196 lt!1825500 key!4968 hashF!1389))))

(assert (=> d!1481729 (forall!11080 (toList!5262 lt!1825500) lambda!201182)))

(assert (=> d!1481729 (= (lemmaInGenMapThenLongMapContainsHash!600 lt!1825500 key!4968 hashF!1389) lt!1826063)))

(declare-fun bs!1069985 () Bool)

(assert (= bs!1069985 d!1481729))

(assert (=> bs!1069985 m!5548753))

(assert (=> bs!1069985 m!5548753))

(assert (=> bs!1069985 m!5549657))

(declare-fun m!5549679 () Bool)

(assert (=> bs!1069985 m!5549679))

(declare-fun m!5549681 () Bool)

(assert (=> bs!1069985 m!5549681))

(assert (=> b!4663707 d!1481729))

(declare-fun b!4664123 () Bool)

(declare-fun tp!1343586 () Bool)

(declare-fun e!2910441 () Bool)

(assert (=> b!4664123 (= e!2910441 (and tp_is_empty!29957 tp_is_empty!29959 tp!1343586))))

(assert (=> b!4663711 (= tp!1343578 e!2910441)))

(assert (= (and b!4663711 ((_ is Cons!51970) (t!359216 newBucket!224))) b!4664123))

(declare-fun tp!1343587 () Bool)

(declare-fun b!4664124 () Bool)

(declare-fun e!2910442 () Bool)

(assert (=> b!4664124 (= e!2910442 (and tp_is_empty!29957 tp_is_empty!29959 tp!1343587))))

(assert (=> b!4663702 (= tp!1343579 e!2910442)))

(assert (= (and b!4663702 ((_ is Cons!51970) (t!359216 oldBucket!40))) b!4664124))

(declare-fun b_lambda!175277 () Bool)

(assert (= b_lambda!175275 (or b!4663707 b_lambda!175277)))

(declare-fun bs!1069986 () Bool)

(declare-fun d!1481731 () Bool)

(assert (= bs!1069986 (and d!1481731 b!4663707)))

(assert (=> bs!1069986 (= (dynLambda!21626 lambda!201036 lt!1825494) (noDuplicateKeys!1666 (_2!29850 lt!1825494)))))

(declare-fun m!5549683 () Bool)

(assert (=> bs!1069986 m!5549683))

(assert (=> d!1481717 d!1481731))

(check-sat (not d!1481645) (not b!4663959) (not bm!325884) (not d!1481709) (not b!4663961) (not bm!325883) (not b!4664002) (not d!1481693) (not bm!325872) (not b!4663969) (not b!4664105) (not b!4664003) (not b!4664072) (not d!1481655) (not d!1481699) (not d!1481679) (not b!4664118) (not b!4664018) (not b!4663963) (not bm!325851) (not b!4664052) (not d!1481629) (not b!4664025) (not d!1481691) (not b!4664043) (not b!4664094) (not b!4663997) (not b_lambda!175277) (not bm!325878) (not b!4664001) (not bm!325876) (not b!4663981) (not b!4663964) (not bm!325850) (not bm!325874) (not b!4664091) (not b!4663911) (not b!4663898) (not d!1481621) (not b!4664047) (not d!1481607) (not b!4664055) tp_is_empty!29959 (not b!4663967) (not b!4664054) (not b!4664077) (not d!1481697) (not b!4663988) (not d!1481729) (not b!4664050) (not d!1481625) (not d!1481723) (not b!4664004) (not b!4663870) (not b!4664049) (not d!1481649) (not b!4663924) tp_is_empty!29957 (not b!4663965) (not bs!1069986) (not b!4664123) (not b!4664085) (not b!4664031) (not b!4663869) (not b!4664103) (not b!4664000) (not b!4664113) (not bm!325880) (not d!1481683) (not b!4663998) (not d!1481657) (not d!1481609) (not b!4663966) (not b!4664041) (not bm!325882) (not d!1481715) (not b!4663980) (not d!1481689) (not b!4664037) (not d!1481719) (not b!4664104) (not b!4664074) (not b!4664021) (not d!1481711) (not d!1481663) (not b!4664030) (not bm!325879) (not b!4663867) (not bm!325881) (not d!1481717) (not bm!325873) (not b!4664106) (not b!4663897) (not b!4664076) (not b!4664124) (not d!1481611) (not d!1481667) (not b!4664115) (not b!4663999) (not d!1481661) (not d!1481619) (not b!4664019) (not b!4664024) (not b!4664073) (not b!4664023) (not bm!325865) (not d!1481623) (not d!1481585) (not b!4664032) (not b!4664040) (not b!4663891) (not b!4664038) (not b!4663871) (not b!4664028) (not d!1481707) (not b!4664051) (not bm!325875) (not b!4664036) (not bm!325877) (not b!4664042) (not d!1481599) (not d!1481547) (not b!4663958) (not b!4664053) (not d!1481721) (not b!4664035) (not b!4663982) (not d!1481701) (not d!1481695) (not d!1481687) (not b!4664033) (not b!4664045) (not b!4664026) (not bm!325852) (not d!1481637) (not d!1481727) (not d!1481685))
(check-sat)
