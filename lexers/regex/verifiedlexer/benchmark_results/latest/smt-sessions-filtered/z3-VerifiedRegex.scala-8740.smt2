; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466304 () Bool)

(assert start!466304)

(declare-fun b!4639186 () Bool)

(declare-fun e!2893978 () Bool)

(declare-fun e!2893975 () Bool)

(assert (=> b!4639186 (= e!2893978 e!2893975)))

(declare-fun res!1948134 () Bool)

(assert (=> b!4639186 (=> res!1948134 e!2893975)))

(declare-datatypes ((K!13105 0))(
  ( (K!13106 (val!18755 Int)) )
))
(declare-datatypes ((V!13351 0))(
  ( (V!13352 (val!18756 Int)) )
))
(declare-datatypes ((tuple2!52774 0))(
  ( (tuple2!52775 (_1!29681 K!13105) (_2!29681 V!13351)) )
))
(declare-datatypes ((List!51860 0))(
  ( (Nil!51736) (Cons!51736 (h!57836 tuple2!52774) (t!358940 List!51860)) )
))
(declare-datatypes ((ListMap!4433 0))(
  ( (ListMap!4434 (toList!5109 List!51860)) )
))
(declare-fun lt!1801816 () ListMap!4433)

(declare-fun lt!1801808 () ListMap!4433)

(declare-fun eq!883 (ListMap!4433 ListMap!4433) Bool)

(assert (=> b!4639186 (= res!1948134 (not (eq!883 lt!1801816 lt!1801808)))))

(declare-fun oldBucket!40 () List!51860)

(declare-fun addToMapMapFromBucket!1041 (List!51860 ListMap!4433) ListMap!4433)

(assert (=> b!4639186 (= lt!1801808 (addToMapMapFromBucket!1041 oldBucket!40 (ListMap!4434 Nil!51736)))))

(declare-fun lt!1801823 () ListMap!4433)

(declare-fun +!1936 (ListMap!4433 tuple2!52774) ListMap!4433)

(assert (=> b!4639186 (= lt!1801816 (+!1936 lt!1801823 (h!57836 oldBucket!40)))))

(declare-fun lt!1801811 () tuple2!52774)

(declare-fun lt!1801820 () List!51860)

(assert (=> b!4639186 (eq!883 (addToMapMapFromBucket!1041 (Cons!51736 lt!1801811 lt!1801820) (ListMap!4434 Nil!51736)) (+!1936 lt!1801823 lt!1801811))))

(declare-datatypes ((Unit!115027 0))(
  ( (Unit!115028) )
))
(declare-fun lt!1801815 () Unit!115027)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!134 (tuple2!52774 List!51860 ListMap!4433) Unit!115027)

(assert (=> b!4639186 (= lt!1801815 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!134 lt!1801811 lt!1801820 (ListMap!4434 Nil!51736)))))

(declare-fun head!9702 (List!51860) tuple2!52774)

(assert (=> b!4639186 (= lt!1801811 (head!9702 oldBucket!40))))

(declare-fun b!4639187 () Bool)

(declare-fun e!2893979 () Bool)

(declare-fun lt!1801818 () ListMap!4433)

(declare-fun lt!1801812 () ListMap!4433)

(assert (=> b!4639187 (= e!2893979 (eq!883 lt!1801818 lt!1801812))))

(declare-fun b!4639188 () Bool)

(declare-fun e!2893981 () Bool)

(assert (=> b!4639188 (= e!2893981 e!2893978)))

(declare-fun res!1948132 () Bool)

(assert (=> b!4639188 (=> res!1948132 e!2893978)))

(declare-fun newBucket!224 () List!51860)

(assert (=> b!4639188 (= res!1948132 (not (= lt!1801823 (addToMapMapFromBucket!1041 newBucket!224 (ListMap!4434 Nil!51736)))))))

(assert (=> b!4639188 (= lt!1801823 (addToMapMapFromBucket!1041 lt!1801820 (ListMap!4434 Nil!51736)))))

(declare-fun b!4639189 () Bool)

(declare-fun res!1948126 () Bool)

(assert (=> b!4639189 (=> res!1948126 e!2893975)))

(declare-fun lt!1801822 () ListMap!4433)

(assert (=> b!4639189 (= res!1948126 (not (= lt!1801823 lt!1801822)))))

(declare-fun b!4639190 () Bool)

(declare-fun res!1948124 () Bool)

(declare-fun e!2893972 () Bool)

(assert (=> b!4639190 (=> (not res!1948124) (not e!2893972))))

(declare-datatypes ((Hashable!5979 0))(
  ( (HashableExt!5978 (__x!31682 Int)) )
))
(declare-fun hashF!1389 () Hashable!5979)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1436 (List!51860 (_ BitVec 64) Hashable!5979) Bool)

(assert (=> b!4639190 (= res!1948124 (allKeysSameHash!1436 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4639191 () Bool)

(declare-fun e!2893976 () Bool)

(assert (=> b!4639191 (= e!2893972 e!2893976)))

(declare-fun res!1948120 () Bool)

(assert (=> b!4639191 (=> (not res!1948120) (not e!2893976))))

(declare-fun lt!1801819 () ListMap!4433)

(declare-fun key!4968 () K!13105)

(declare-fun contains!14841 (ListMap!4433 K!13105) Bool)

(assert (=> b!4639191 (= res!1948120 (contains!14841 lt!1801819 key!4968))))

(declare-datatypes ((tuple2!52776 0))(
  ( (tuple2!52777 (_1!29682 (_ BitVec 64)) (_2!29682 List!51860)) )
))
(declare-datatypes ((List!51861 0))(
  ( (Nil!51737) (Cons!51737 (h!57837 tuple2!52776) (t!358941 List!51861)) )
))
(declare-fun extractMap!1638 (List!51861) ListMap!4433)

(assert (=> b!4639191 (= lt!1801819 (extractMap!1638 (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737)))))

(declare-fun b!4639193 () Bool)

(declare-fun res!1948128 () Bool)

(assert (=> b!4639193 (=> (not res!1948128) (not e!2893976))))

(assert (=> b!4639193 (= res!1948128 (allKeysSameHash!1436 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4639194 () Bool)

(declare-fun res!1948131 () Bool)

(assert (=> b!4639194 (=> (not res!1948131) (not e!2893972))))

(declare-fun removePairForKey!1205 (List!51860 K!13105) List!51860)

(assert (=> b!4639194 (= res!1948131 (= (removePairForKey!1205 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4639195 () Bool)

(declare-fun res!1948133 () Bool)

(assert (=> b!4639195 (=> (not res!1948133) (not e!2893972))))

(declare-fun noDuplicateKeys!1582 (List!51860) Bool)

(assert (=> b!4639195 (= res!1948133 (noDuplicateKeys!1582 newBucket!224))))

(declare-fun b!4639196 () Bool)

(declare-fun e!2893982 () Bool)

(assert (=> b!4639196 (= e!2893982 e!2893981)))

(declare-fun res!1948135 () Bool)

(assert (=> b!4639196 (=> res!1948135 e!2893981)))

(assert (=> b!4639196 (= res!1948135 (not (= lt!1801822 lt!1801812)))))

(assert (=> b!4639196 (= lt!1801812 (extractMap!1638 (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737)))))

(declare-fun lt!1801817 () List!51861)

(assert (=> b!4639196 (= lt!1801822 (extractMap!1638 lt!1801817))))

(assert (=> b!4639196 (= lt!1801817 (Cons!51737 (tuple2!52777 hash!414 lt!1801820) Nil!51737))))

(declare-fun b!4639197 () Bool)

(declare-fun res!1948130 () Bool)

(assert (=> b!4639197 (=> res!1948130 e!2893975)))

(declare-fun containsKey!2602 (List!51860 K!13105) Bool)

(assert (=> b!4639197 (= res!1948130 (containsKey!2602 lt!1801820 key!4968))))

(declare-fun b!4639198 () Bool)

(declare-fun e!2893983 () Bool)

(assert (=> b!4639198 (= e!2893975 e!2893983)))

(declare-fun res!1948125 () Bool)

(assert (=> b!4639198 (=> res!1948125 e!2893983)))

(assert (=> b!4639198 (= res!1948125 (contains!14841 lt!1801823 key!4968))))

(assert (=> b!4639198 (not (contains!14841 lt!1801822 key!4968))))

(declare-fun lt!1801821 () Unit!115027)

(declare-datatypes ((ListLongMap!3679 0))(
  ( (ListLongMap!3680 (toList!5110 List!51861)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!374 (ListLongMap!3679 K!13105 Hashable!5979) Unit!115027)

(assert (=> b!4639198 (= lt!1801821 (lemmaNotInItsHashBucketThenNotInMap!374 (ListLongMap!3680 lt!1801817) key!4968 hashF!1389))))

(declare-fun tp!1342763 () Bool)

(declare-fun b!4639199 () Bool)

(declare-fun tp_is_empty!29623 () Bool)

(declare-fun e!2893977 () Bool)

(declare-fun tp_is_empty!29621 () Bool)

(assert (=> b!4639199 (= e!2893977 (and tp_is_empty!29621 tp_is_empty!29623 tp!1342763))))

(declare-fun b!4639200 () Bool)

(declare-fun e!2893984 () Bool)

(assert (=> b!4639200 (= e!2893976 (not e!2893984))))

(declare-fun res!1948129 () Bool)

(assert (=> b!4639200 (=> res!1948129 e!2893984)))

(get-info :version)

(assert (=> b!4639200 (= res!1948129 (or (not ((_ is Cons!51736) oldBucket!40)) (not (= (_1!29681 (h!57836 oldBucket!40)) key!4968))))))

(declare-fun e!2893974 () Bool)

(assert (=> b!4639200 e!2893974))

(declare-fun res!1948119 () Bool)

(assert (=> b!4639200 (=> (not res!1948119) (not e!2893974))))

(declare-fun lt!1801814 () ListMap!4433)

(assert (=> b!4639200 (= res!1948119 (= lt!1801819 (addToMapMapFromBucket!1041 oldBucket!40 lt!1801814)))))

(assert (=> b!4639200 (= lt!1801814 (extractMap!1638 Nil!51737))))

(assert (=> b!4639200 true))

(declare-fun b!4639201 () Bool)

(declare-fun res!1948122 () Bool)

(assert (=> b!4639201 (=> (not res!1948122) (not e!2893976))))

(declare-fun hash!3666 (Hashable!5979 K!13105) (_ BitVec 64))

(assert (=> b!4639201 (= res!1948122 (= (hash!3666 hashF!1389 key!4968) hash!414))))

(declare-fun b!4639202 () Bool)

(assert (=> b!4639202 (= e!2893974 (= lt!1801814 (ListMap!4434 Nil!51736)))))

(declare-fun b!4639192 () Bool)

(assert (=> b!4639192 (= e!2893984 e!2893982)))

(declare-fun res!1948118 () Bool)

(assert (=> b!4639192 (=> res!1948118 e!2893982)))

(assert (=> b!4639192 (= res!1948118 (not (= lt!1801820 newBucket!224)))))

(declare-fun tail!8209 (List!51860) List!51860)

(assert (=> b!4639192 (= lt!1801820 (tail!8209 oldBucket!40))))

(declare-fun res!1948121 () Bool)

(assert (=> start!466304 (=> (not res!1948121) (not e!2893972))))

(assert (=> start!466304 (= res!1948121 (noDuplicateKeys!1582 oldBucket!40))))

(assert (=> start!466304 e!2893972))

(assert (=> start!466304 true))

(declare-fun e!2893980 () Bool)

(assert (=> start!466304 e!2893980))

(assert (=> start!466304 tp_is_empty!29621))

(assert (=> start!466304 e!2893977))

(declare-fun b!4639203 () Bool)

(declare-fun res!1948136 () Bool)

(declare-fun e!2893973 () Bool)

(assert (=> b!4639203 (=> res!1948136 e!2893973)))

(assert (=> b!4639203 (= res!1948136 (not (eq!883 lt!1801816 lt!1801819)))))

(declare-fun b!4639204 () Bool)

(assert (=> b!4639204 (= e!2893983 e!2893973)))

(declare-fun res!1948123 () Bool)

(assert (=> b!4639204 (=> res!1948123 e!2893973)))

(declare-fun lt!1801809 () ListMap!4433)

(assert (=> b!4639204 (= res!1948123 (or (not (= lt!1801809 lt!1801823)) (not (= lt!1801819 lt!1801808))))))

(declare-fun -!600 (ListMap!4433 K!13105) ListMap!4433)

(assert (=> b!4639204 (= lt!1801809 (-!600 lt!1801816 key!4968))))

(assert (=> b!4639204 (= (-!600 (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) key!4968) lt!1801823)))

(declare-fun lt!1801813 () Unit!115027)

(declare-fun addThenRemoveForNewKeyIsSame!31 (ListMap!4433 K!13105 V!13351) Unit!115027)

(assert (=> b!4639204 (= lt!1801813 (addThenRemoveForNewKeyIsSame!31 lt!1801823 key!4968 (_2!29681 (h!57836 oldBucket!40))))))

(declare-fun b!4639205 () Bool)

(assert (=> b!4639205 (= e!2893973 e!2893979)))

(declare-fun res!1948127 () Bool)

(assert (=> b!4639205 (=> res!1948127 e!2893979)))

(assert (=> b!4639205 (= res!1948127 (not (= lt!1801812 lt!1801823)))))

(assert (=> b!4639205 (eq!883 lt!1801809 lt!1801818)))

(assert (=> b!4639205 (= lt!1801818 (-!600 lt!1801819 key!4968))))

(declare-fun lt!1801810 () Unit!115027)

(declare-fun lemmaRemovePreservesEq!50 (ListMap!4433 ListMap!4433 K!13105) Unit!115027)

(assert (=> b!4639205 (= lt!1801810 (lemmaRemovePreservesEq!50 lt!1801816 lt!1801819 key!4968))))

(declare-fun tp!1342762 () Bool)

(declare-fun b!4639206 () Bool)

(assert (=> b!4639206 (= e!2893980 (and tp_is_empty!29621 tp_is_empty!29623 tp!1342762))))

(assert (= (and start!466304 res!1948121) b!4639195))

(assert (= (and b!4639195 res!1948133) b!4639194))

(assert (= (and b!4639194 res!1948131) b!4639190))

(assert (= (and b!4639190 res!1948124) b!4639191))

(assert (= (and b!4639191 res!1948120) b!4639201))

(assert (= (and b!4639201 res!1948122) b!4639193))

(assert (= (and b!4639193 res!1948128) b!4639200))

(assert (= (and b!4639200 res!1948119) b!4639202))

(assert (= (and b!4639200 (not res!1948129)) b!4639192))

(assert (= (and b!4639192 (not res!1948118)) b!4639196))

(assert (= (and b!4639196 (not res!1948135)) b!4639188))

(assert (= (and b!4639188 (not res!1948132)) b!4639186))

(assert (= (and b!4639186 (not res!1948134)) b!4639197))

(assert (= (and b!4639197 (not res!1948130)) b!4639189))

(assert (= (and b!4639189 (not res!1948126)) b!4639198))

(assert (= (and b!4639198 (not res!1948125)) b!4639204))

(assert (= (and b!4639204 (not res!1948123)) b!4639203))

(assert (= (and b!4639203 (not res!1948136)) b!4639205))

(assert (= (and b!4639205 (not res!1948127)) b!4639187))

(assert (= (and start!466304 ((_ is Cons!51736) oldBucket!40)) b!4639206))

(assert (= (and start!466304 ((_ is Cons!51736) newBucket!224)) b!4639199))

(declare-fun m!5498073 () Bool)

(assert (=> b!4639197 m!5498073))

(declare-fun m!5498075 () Bool)

(assert (=> b!4639194 m!5498075))

(declare-fun m!5498077 () Bool)

(assert (=> b!4639200 m!5498077))

(declare-fun m!5498079 () Bool)

(assert (=> b!4639200 m!5498079))

(declare-fun m!5498081 () Bool)

(assert (=> b!4639192 m!5498081))

(declare-fun m!5498083 () Bool)

(assert (=> b!4639205 m!5498083))

(declare-fun m!5498085 () Bool)

(assert (=> b!4639205 m!5498085))

(declare-fun m!5498087 () Bool)

(assert (=> b!4639205 m!5498087))

(declare-fun m!5498089 () Bool)

(assert (=> b!4639191 m!5498089))

(declare-fun m!5498091 () Bool)

(assert (=> b!4639191 m!5498091))

(declare-fun m!5498093 () Bool)

(assert (=> b!4639198 m!5498093))

(declare-fun m!5498095 () Bool)

(assert (=> b!4639198 m!5498095))

(declare-fun m!5498097 () Bool)

(assert (=> b!4639198 m!5498097))

(declare-fun m!5498099 () Bool)

(assert (=> b!4639203 m!5498099))

(declare-fun m!5498101 () Bool)

(assert (=> b!4639188 m!5498101))

(declare-fun m!5498103 () Bool)

(assert (=> b!4639188 m!5498103))

(declare-fun m!5498105 () Bool)

(assert (=> b!4639201 m!5498105))

(declare-fun m!5498107 () Bool)

(assert (=> b!4639196 m!5498107))

(declare-fun m!5498109 () Bool)

(assert (=> b!4639196 m!5498109))

(declare-fun m!5498111 () Bool)

(assert (=> b!4639190 m!5498111))

(declare-fun m!5498113 () Bool)

(assert (=> b!4639195 m!5498113))

(declare-fun m!5498115 () Bool)

(assert (=> b!4639193 m!5498115))

(declare-fun m!5498117 () Bool)

(assert (=> b!4639186 m!5498117))

(declare-fun m!5498119 () Bool)

(assert (=> b!4639186 m!5498119))

(declare-fun m!5498121 () Bool)

(assert (=> b!4639186 m!5498121))

(declare-fun m!5498123 () Bool)

(assert (=> b!4639186 m!5498123))

(declare-fun m!5498125 () Bool)

(assert (=> b!4639186 m!5498125))

(declare-fun m!5498127 () Bool)

(assert (=> b!4639186 m!5498127))

(declare-fun m!5498129 () Bool)

(assert (=> b!4639186 m!5498129))

(assert (=> b!4639186 m!5498125))

(assert (=> b!4639186 m!5498129))

(declare-fun m!5498131 () Bool)

(assert (=> b!4639186 m!5498131))

(declare-fun m!5498133 () Bool)

(assert (=> start!466304 m!5498133))

(declare-fun m!5498135 () Bool)

(assert (=> b!4639187 m!5498135))

(declare-fun m!5498137 () Bool)

(assert (=> b!4639204 m!5498137))

(declare-fun m!5498139 () Bool)

(assert (=> b!4639204 m!5498139))

(assert (=> b!4639204 m!5498139))

(declare-fun m!5498141 () Bool)

(assert (=> b!4639204 m!5498141))

(declare-fun m!5498143 () Bool)

(assert (=> b!4639204 m!5498143))

(check-sat (not b!4639196) (not b!4639188) (not b!4639199) (not b!4639205) (not b!4639192) (not start!466304) (not b!4639193) (not b!4639190) (not b!4639200) (not b!4639194) (not b!4639186) tp_is_empty!29623 (not b!4639198) (not b!4639206) (not b!4639197) (not b!4639204) (not b!4639187) (not b!4639195) (not b!4639201) (not b!4639203) (not b!4639191) tp_is_empty!29621)
(check-sat)
(get-model)

(declare-fun b!4639215 () Bool)

(declare-fun e!2893990 () List!51860)

(assert (=> b!4639215 (= e!2893990 (t!358940 oldBucket!40))))

(declare-fun b!4639216 () Bool)

(declare-fun e!2893989 () List!51860)

(assert (=> b!4639216 (= e!2893990 e!2893989)))

(declare-fun c!793852 () Bool)

(assert (=> b!4639216 (= c!793852 ((_ is Cons!51736) oldBucket!40))))

(declare-fun d!1462599 () Bool)

(declare-fun lt!1801826 () List!51860)

(assert (=> d!1462599 (not (containsKey!2602 lt!1801826 key!4968))))

(assert (=> d!1462599 (= lt!1801826 e!2893990)))

(declare-fun c!793851 () Bool)

(assert (=> d!1462599 (= c!793851 (and ((_ is Cons!51736) oldBucket!40) (= (_1!29681 (h!57836 oldBucket!40)) key!4968)))))

(assert (=> d!1462599 (noDuplicateKeys!1582 oldBucket!40)))

(assert (=> d!1462599 (= (removePairForKey!1205 oldBucket!40 key!4968) lt!1801826)))

(declare-fun b!4639218 () Bool)

(assert (=> b!4639218 (= e!2893989 Nil!51736)))

(declare-fun b!4639217 () Bool)

(assert (=> b!4639217 (= e!2893989 (Cons!51736 (h!57836 oldBucket!40) (removePairForKey!1205 (t!358940 oldBucket!40) key!4968)))))

(assert (= (and d!1462599 c!793851) b!4639215))

(assert (= (and d!1462599 (not c!793851)) b!4639216))

(assert (= (and b!4639216 c!793852) b!4639217))

(assert (= (and b!4639216 (not c!793852)) b!4639218))

(declare-fun m!5498145 () Bool)

(assert (=> d!1462599 m!5498145))

(assert (=> d!1462599 m!5498133))

(declare-fun m!5498147 () Bool)

(assert (=> b!4639217 m!5498147))

(assert (=> b!4639194 d!1462599))

(declare-fun d!1462601 () Bool)

(declare-fun e!2893993 () Bool)

(assert (=> d!1462601 e!2893993))

(declare-fun res!1948139 () Bool)

(assert (=> d!1462601 (=> (not res!1948139) (not e!2893993))))

(declare-fun lt!1801829 () ListMap!4433)

(assert (=> d!1462601 (= res!1948139 (not (contains!14841 lt!1801829 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!294 (List!51860 K!13105) List!51860)

(assert (=> d!1462601 (= lt!1801829 (ListMap!4434 (removePresrvNoDuplicatedKeys!294 (toList!5109 lt!1801816) key!4968)))))

(assert (=> d!1462601 (= (-!600 lt!1801816 key!4968) lt!1801829)))

(declare-fun b!4639221 () Bool)

(declare-datatypes ((List!51862 0))(
  ( (Nil!51738) (Cons!51738 (h!57840 K!13105) (t!358944 List!51862)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8927 (List!51862) (InoxSet K!13105))

(declare-fun keys!18279 (ListMap!4433) List!51862)

(assert (=> b!4639221 (= e!2893993 (= ((_ map and) (content!8927 (keys!18279 lt!1801816)) ((_ map not) (store ((as const (Array K!13105 Bool)) false) key!4968 true))) (content!8927 (keys!18279 lt!1801829))))))

(assert (= (and d!1462601 res!1948139) b!4639221))

(declare-fun m!5498149 () Bool)

(assert (=> d!1462601 m!5498149))

(declare-fun m!5498151 () Bool)

(assert (=> d!1462601 m!5498151))

(declare-fun m!5498153 () Bool)

(assert (=> b!4639221 m!5498153))

(declare-fun m!5498155 () Bool)

(assert (=> b!4639221 m!5498155))

(assert (=> b!4639221 m!5498153))

(declare-fun m!5498157 () Bool)

(assert (=> b!4639221 m!5498157))

(declare-fun m!5498159 () Bool)

(assert (=> b!4639221 m!5498159))

(assert (=> b!4639221 m!5498157))

(declare-fun m!5498161 () Bool)

(assert (=> b!4639221 m!5498161))

(assert (=> b!4639204 d!1462601))

(declare-fun d!1462603 () Bool)

(declare-fun e!2893994 () Bool)

(assert (=> d!1462603 e!2893994))

(declare-fun res!1948140 () Bool)

(assert (=> d!1462603 (=> (not res!1948140) (not e!2893994))))

(declare-fun lt!1801830 () ListMap!4433)

(assert (=> d!1462603 (= res!1948140 (not (contains!14841 lt!1801830 key!4968)))))

(assert (=> d!1462603 (= lt!1801830 (ListMap!4434 (removePresrvNoDuplicatedKeys!294 (toList!5109 (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))) key!4968)))))

(assert (=> d!1462603 (= (-!600 (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) key!4968) lt!1801830)))

(declare-fun b!4639222 () Bool)

(assert (=> b!4639222 (= e!2893994 (= ((_ map and) (content!8927 (keys!18279 (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!13105 Bool)) false) key!4968 true))) (content!8927 (keys!18279 lt!1801830))))))

(assert (= (and d!1462603 res!1948140) b!4639222))

(declare-fun m!5498163 () Bool)

(assert (=> d!1462603 m!5498163))

(declare-fun m!5498165 () Bool)

(assert (=> d!1462603 m!5498165))

(declare-fun m!5498167 () Bool)

(assert (=> b!4639222 m!5498167))

(declare-fun m!5498169 () Bool)

(assert (=> b!4639222 m!5498169))

(assert (=> b!4639222 m!5498167))

(assert (=> b!4639222 m!5498139))

(declare-fun m!5498171 () Bool)

(assert (=> b!4639222 m!5498171))

(assert (=> b!4639222 m!5498159))

(assert (=> b!4639222 m!5498171))

(declare-fun m!5498173 () Bool)

(assert (=> b!4639222 m!5498173))

(assert (=> b!4639204 d!1462603))

(declare-fun d!1462605 () Bool)

(declare-fun e!2893997 () Bool)

(assert (=> d!1462605 e!2893997))

(declare-fun res!1948146 () Bool)

(assert (=> d!1462605 (=> (not res!1948146) (not e!2893997))))

(declare-fun lt!1801841 () ListMap!4433)

(assert (=> d!1462605 (= res!1948146 (contains!14841 lt!1801841 (_1!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))))))

(declare-fun lt!1801840 () List!51860)

(assert (=> d!1462605 (= lt!1801841 (ListMap!4434 lt!1801840))))

(declare-fun lt!1801839 () Unit!115027)

(declare-fun lt!1801842 () Unit!115027)

(assert (=> d!1462605 (= lt!1801839 lt!1801842)))

(declare-datatypes ((Option!11726 0))(
  ( (None!11725) (Some!11725 (v!45935 V!13351)) )
))
(declare-fun getValueByKey!1542 (List!51860 K!13105) Option!11726)

(assert (=> d!1462605 (= (getValueByKey!1542 lt!1801840 (_1!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))) (Some!11725 (_2!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!896 (List!51860 K!13105 V!13351) Unit!115027)

(assert (=> d!1462605 (= lt!1801842 (lemmaContainsTupThenGetReturnValue!896 lt!1801840 (_1!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) (_2!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))))))

(declare-fun insertNoDuplicatedKeys!404 (List!51860 K!13105 V!13351) List!51860)

(assert (=> d!1462605 (= lt!1801840 (insertNoDuplicatedKeys!404 (toList!5109 lt!1801823) (_1!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) (_2!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))))))

(assert (=> d!1462605 (= (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) lt!1801841)))

(declare-fun b!4639227 () Bool)

(declare-fun res!1948145 () Bool)

(assert (=> b!4639227 (=> (not res!1948145) (not e!2893997))))

(assert (=> b!4639227 (= res!1948145 (= (getValueByKey!1542 (toList!5109 lt!1801841) (_1!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40))))) (Some!11725 (_2!29681 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))))))))

(declare-fun b!4639228 () Bool)

(declare-fun contains!14843 (List!51860 tuple2!52774) Bool)

(assert (=> b!4639228 (= e!2893997 (contains!14843 (toList!5109 lt!1801841) (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))))))

(assert (= (and d!1462605 res!1948146) b!4639227))

(assert (= (and b!4639227 res!1948145) b!4639228))

(declare-fun m!5498175 () Bool)

(assert (=> d!1462605 m!5498175))

(declare-fun m!5498177 () Bool)

(assert (=> d!1462605 m!5498177))

(declare-fun m!5498179 () Bool)

(assert (=> d!1462605 m!5498179))

(declare-fun m!5498181 () Bool)

(assert (=> d!1462605 m!5498181))

(declare-fun m!5498183 () Bool)

(assert (=> b!4639227 m!5498183))

(declare-fun m!5498185 () Bool)

(assert (=> b!4639228 m!5498185))

(assert (=> b!4639204 d!1462605))

(declare-fun d!1462607 () Bool)

(assert (=> d!1462607 (= (-!600 (+!1936 lt!1801823 (tuple2!52775 key!4968 (_2!29681 (h!57836 oldBucket!40)))) key!4968) lt!1801823)))

(declare-fun lt!1801845 () Unit!115027)

(declare-fun choose!31728 (ListMap!4433 K!13105 V!13351) Unit!115027)

(assert (=> d!1462607 (= lt!1801845 (choose!31728 lt!1801823 key!4968 (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> d!1462607 (not (contains!14841 lt!1801823 key!4968))))

(assert (=> d!1462607 (= (addThenRemoveForNewKeyIsSame!31 lt!1801823 key!4968 (_2!29681 (h!57836 oldBucket!40))) lt!1801845)))

(declare-fun bs!1032722 () Bool)

(assert (= bs!1032722 d!1462607))

(assert (=> bs!1032722 m!5498139))

(assert (=> bs!1032722 m!5498139))

(assert (=> bs!1032722 m!5498141))

(declare-fun m!5498187 () Bool)

(assert (=> bs!1032722 m!5498187))

(assert (=> bs!1032722 m!5498093))

(assert (=> b!4639204 d!1462607))

(declare-fun d!1462609 () Bool)

(assert (=> d!1462609 true))

(assert (=> d!1462609 true))

(declare-fun lambda!195738 () Int)

(declare-fun forall!10926 (List!51860 Int) Bool)

(assert (=> d!1462609 (= (allKeysSameHash!1436 newBucket!224 hash!414 hashF!1389) (forall!10926 newBucket!224 lambda!195738))))

(declare-fun bs!1032805 () Bool)

(assert (= bs!1032805 d!1462609))

(declare-fun m!5498355 () Bool)

(assert (=> bs!1032805 m!5498355))

(assert (=> b!4639193 d!1462609))

(declare-fun d!1462633 () Bool)

(declare-fun res!1948177 () Bool)

(declare-fun e!2894030 () Bool)

(assert (=> d!1462633 (=> res!1948177 e!2894030)))

(assert (=> d!1462633 (= res!1948177 (not ((_ is Cons!51736) newBucket!224)))))

(assert (=> d!1462633 (= (noDuplicateKeys!1582 newBucket!224) e!2894030)))

(declare-fun b!4639293 () Bool)

(declare-fun e!2894031 () Bool)

(assert (=> b!4639293 (= e!2894030 e!2894031)))

(declare-fun res!1948178 () Bool)

(assert (=> b!4639293 (=> (not res!1948178) (not e!2894031))))

(assert (=> b!4639293 (= res!1948178 (not (containsKey!2602 (t!358940 newBucket!224) (_1!29681 (h!57836 newBucket!224)))))))

(declare-fun b!4639294 () Bool)

(assert (=> b!4639294 (= e!2894031 (noDuplicateKeys!1582 (t!358940 newBucket!224)))))

(assert (= (and d!1462633 (not res!1948177)) b!4639293))

(assert (= (and b!4639293 res!1948178) b!4639294))

(declare-fun m!5498363 () Bool)

(assert (=> b!4639293 m!5498363))

(declare-fun m!5498365 () Bool)

(assert (=> b!4639294 m!5498365))

(assert (=> b!4639195 d!1462633))

(declare-fun d!1462639 () Bool)

(declare-fun content!8929 (List!51860) (InoxSet tuple2!52774))

(assert (=> d!1462639 (= (eq!883 lt!1801809 lt!1801818) (= (content!8929 (toList!5109 lt!1801809)) (content!8929 (toList!5109 lt!1801818))))))

(declare-fun bs!1032820 () Bool)

(assert (= bs!1032820 d!1462639))

(declare-fun m!5498367 () Bool)

(assert (=> bs!1032820 m!5498367))

(declare-fun m!5498369 () Bool)

(assert (=> bs!1032820 m!5498369))

(assert (=> b!4639205 d!1462639))

(declare-fun d!1462641 () Bool)

(declare-fun e!2894036 () Bool)

(assert (=> d!1462641 e!2894036))

(declare-fun res!1948183 () Bool)

(assert (=> d!1462641 (=> (not res!1948183) (not e!2894036))))

(declare-fun lt!1801994 () ListMap!4433)

(assert (=> d!1462641 (= res!1948183 (not (contains!14841 lt!1801994 key!4968)))))

(assert (=> d!1462641 (= lt!1801994 (ListMap!4434 (removePresrvNoDuplicatedKeys!294 (toList!5109 lt!1801819) key!4968)))))

(assert (=> d!1462641 (= (-!600 lt!1801819 key!4968) lt!1801994)))

(declare-fun b!4639299 () Bool)

(assert (=> b!4639299 (= e!2894036 (= ((_ map and) (content!8927 (keys!18279 lt!1801819)) ((_ map not) (store ((as const (Array K!13105 Bool)) false) key!4968 true))) (content!8927 (keys!18279 lt!1801994))))))

(assert (= (and d!1462641 res!1948183) b!4639299))

(declare-fun m!5498371 () Bool)

(assert (=> d!1462641 m!5498371))

(declare-fun m!5498373 () Bool)

(assert (=> d!1462641 m!5498373))

(declare-fun m!5498375 () Bool)

(assert (=> b!4639299 m!5498375))

(declare-fun m!5498377 () Bool)

(assert (=> b!4639299 m!5498377))

(assert (=> b!4639299 m!5498375))

(declare-fun m!5498379 () Bool)

(assert (=> b!4639299 m!5498379))

(assert (=> b!4639299 m!5498159))

(assert (=> b!4639299 m!5498379))

(declare-fun m!5498381 () Bool)

(assert (=> b!4639299 m!5498381))

(assert (=> b!4639205 d!1462641))

(declare-fun d!1462643 () Bool)

(assert (=> d!1462643 (eq!883 (-!600 lt!1801816 key!4968) (-!600 lt!1801819 key!4968))))

(declare-fun lt!1801999 () Unit!115027)

(declare-fun choose!31730 (ListMap!4433 ListMap!4433 K!13105) Unit!115027)

(assert (=> d!1462643 (= lt!1801999 (choose!31730 lt!1801816 lt!1801819 key!4968))))

(assert (=> d!1462643 (eq!883 lt!1801816 lt!1801819)))

(assert (=> d!1462643 (= (lemmaRemovePreservesEq!50 lt!1801816 lt!1801819 key!4968) lt!1801999)))

(declare-fun bs!1032821 () Bool)

(assert (= bs!1032821 d!1462643))

(assert (=> bs!1032821 m!5498085))

(assert (=> bs!1032821 m!5498137))

(assert (=> bs!1032821 m!5498137))

(assert (=> bs!1032821 m!5498085))

(declare-fun m!5498385 () Bool)

(assert (=> bs!1032821 m!5498385))

(assert (=> bs!1032821 m!5498099))

(declare-fun m!5498387 () Bool)

(assert (=> bs!1032821 m!5498387))

(assert (=> b!4639205 d!1462643))

(declare-fun d!1462647 () Bool)

(assert (=> d!1462647 (= (eq!883 (addToMapMapFromBucket!1041 (Cons!51736 lt!1801811 lt!1801820) (ListMap!4434 Nil!51736)) (+!1936 lt!1801823 lt!1801811)) (= (content!8929 (toList!5109 (addToMapMapFromBucket!1041 (Cons!51736 lt!1801811 lt!1801820) (ListMap!4434 Nil!51736)))) (content!8929 (toList!5109 (+!1936 lt!1801823 lt!1801811)))))))

(declare-fun bs!1032822 () Bool)

(assert (= bs!1032822 d!1462647))

(declare-fun m!5498389 () Bool)

(assert (=> bs!1032822 m!5498389))

(declare-fun m!5498391 () Bool)

(assert (=> bs!1032822 m!5498391))

(assert (=> b!4639186 d!1462647))

(declare-fun bs!1032885 () Bool)

(declare-fun b!4639399 () Bool)

(assert (= bs!1032885 (and b!4639399 d!1462609)))

(declare-fun lambda!195781 () Int)

(assert (=> bs!1032885 (not (= lambda!195781 lambda!195738))))

(assert (=> b!4639399 true))

(declare-fun bs!1032886 () Bool)

(declare-fun b!4639397 () Bool)

(assert (= bs!1032886 (and b!4639397 d!1462609)))

(declare-fun lambda!195782 () Int)

(assert (=> bs!1032886 (not (= lambda!195782 lambda!195738))))

(declare-fun bs!1032887 () Bool)

(assert (= bs!1032887 (and b!4639397 b!4639399)))

(assert (=> bs!1032887 (= lambda!195782 lambda!195781)))

(assert (=> b!4639397 true))

(declare-fun lambda!195783 () Int)

(assert (=> bs!1032886 (not (= lambda!195783 lambda!195738))))

(declare-fun lt!1802139 () ListMap!4433)

(assert (=> bs!1032887 (= (= lt!1802139 (ListMap!4434 Nil!51736)) (= lambda!195783 lambda!195781))))

(assert (=> b!4639397 (= (= lt!1802139 (ListMap!4434 Nil!51736)) (= lambda!195783 lambda!195782))))

(assert (=> b!4639397 true))

(declare-fun bs!1032888 () Bool)

(declare-fun d!1462649 () Bool)

(assert (= bs!1032888 (and d!1462649 d!1462609)))

(declare-fun lambda!195784 () Int)

(assert (=> bs!1032888 (not (= lambda!195784 lambda!195738))))

(declare-fun bs!1032889 () Bool)

(assert (= bs!1032889 (and d!1462649 b!4639399)))

(declare-fun lt!1802131 () ListMap!4433)

(assert (=> bs!1032889 (= (= lt!1802131 (ListMap!4434 Nil!51736)) (= lambda!195784 lambda!195781))))

(declare-fun bs!1032890 () Bool)

(assert (= bs!1032890 (and d!1462649 b!4639397)))

(assert (=> bs!1032890 (= (= lt!1802131 (ListMap!4434 Nil!51736)) (= lambda!195784 lambda!195782))))

(assert (=> bs!1032890 (= (= lt!1802131 lt!1802139) (= lambda!195784 lambda!195783))))

(assert (=> d!1462649 true))

(declare-fun b!4639395 () Bool)

(declare-fun e!2894102 () Bool)

(declare-fun invariantList!1254 (List!51860) Bool)

(assert (=> b!4639395 (= e!2894102 (invariantList!1254 (toList!5109 lt!1802131)))))

(declare-fun b!4639396 () Bool)

(declare-fun res!1948227 () Bool)

(assert (=> b!4639396 (=> (not res!1948227) (not e!2894102))))

(assert (=> b!4639396 (= res!1948227 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195784))))

(declare-fun e!2894104 () ListMap!4433)

(assert (=> b!4639397 (= e!2894104 lt!1802139)))

(declare-fun lt!1802142 () ListMap!4433)

(assert (=> b!4639397 (= lt!1802142 (+!1936 (ListMap!4434 Nil!51736) (h!57836 (Cons!51736 lt!1801811 lt!1801820))))))

(assert (=> b!4639397 (= lt!1802139 (addToMapMapFromBucket!1041 (t!358940 (Cons!51736 lt!1801811 lt!1801820)) (+!1936 (ListMap!4434 Nil!51736) (h!57836 (Cons!51736 lt!1801811 lt!1801820)))))))

(declare-fun lt!1802128 () Unit!115027)

(declare-fun call!323854 () Unit!115027)

(assert (=> b!4639397 (= lt!1802128 call!323854)))

(assert (=> b!4639397 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195782)))

(declare-fun lt!1802129 () Unit!115027)

(assert (=> b!4639397 (= lt!1802129 lt!1802128)))

(declare-fun call!323853 () Bool)

(assert (=> b!4639397 call!323853))

(declare-fun lt!1802141 () Unit!115027)

(declare-fun Unit!115077 () Unit!115027)

(assert (=> b!4639397 (= lt!1802141 Unit!115077)))

(assert (=> b!4639397 (forall!10926 (t!358940 (Cons!51736 lt!1801811 lt!1801820)) lambda!195783)))

(declare-fun lt!1802144 () Unit!115027)

(declare-fun Unit!115078 () Unit!115027)

(assert (=> b!4639397 (= lt!1802144 Unit!115078)))

(declare-fun lt!1802134 () Unit!115027)

(declare-fun Unit!115079 () Unit!115027)

(assert (=> b!4639397 (= lt!1802134 Unit!115079)))

(declare-fun lt!1802145 () Unit!115027)

(declare-fun forallContained!3146 (List!51860 Int tuple2!52774) Unit!115027)

(assert (=> b!4639397 (= lt!1802145 (forallContained!3146 (toList!5109 lt!1802142) lambda!195783 (h!57836 (Cons!51736 lt!1801811 lt!1801820))))))

(assert (=> b!4639397 (contains!14841 lt!1802142 (_1!29681 (h!57836 (Cons!51736 lt!1801811 lt!1801820))))))

(declare-fun lt!1802130 () Unit!115027)

(declare-fun Unit!115080 () Unit!115027)

(assert (=> b!4639397 (= lt!1802130 Unit!115080)))

(assert (=> b!4639397 (contains!14841 lt!1802139 (_1!29681 (h!57836 (Cons!51736 lt!1801811 lt!1801820))))))

(declare-fun lt!1802136 () Unit!115027)

(declare-fun Unit!115081 () Unit!115027)

(assert (=> b!4639397 (= lt!1802136 Unit!115081)))

(assert (=> b!4639397 (forall!10926 (Cons!51736 lt!1801811 lt!1801820) lambda!195783)))

(declare-fun lt!1802143 () Unit!115027)

(declare-fun Unit!115082 () Unit!115027)

(assert (=> b!4639397 (= lt!1802143 Unit!115082)))

(assert (=> b!4639397 (forall!10926 (toList!5109 lt!1802142) lambda!195783)))

(declare-fun lt!1802132 () Unit!115027)

(declare-fun Unit!115083 () Unit!115027)

(assert (=> b!4639397 (= lt!1802132 Unit!115083)))

(declare-fun lt!1802140 () Unit!115027)

(declare-fun Unit!115084 () Unit!115027)

(assert (=> b!4639397 (= lt!1802140 Unit!115084)))

(declare-fun lt!1802135 () Unit!115027)

(declare-fun addForallContainsKeyThenBeforeAdding!555 (ListMap!4433 ListMap!4433 K!13105 V!13351) Unit!115027)

(assert (=> b!4639397 (= lt!1802135 (addForallContainsKeyThenBeforeAdding!555 (ListMap!4434 Nil!51736) lt!1802139 (_1!29681 (h!57836 (Cons!51736 lt!1801811 lt!1801820))) (_2!29681 (h!57836 (Cons!51736 lt!1801811 lt!1801820)))))))

(assert (=> b!4639397 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195783)))

(declare-fun lt!1802133 () Unit!115027)

(assert (=> b!4639397 (= lt!1802133 lt!1802135)))

(assert (=> b!4639397 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195783)))

(declare-fun lt!1802127 () Unit!115027)

(declare-fun Unit!115085 () Unit!115027)

(assert (=> b!4639397 (= lt!1802127 Unit!115085)))

(declare-fun res!1948226 () Bool)

(declare-fun call!323852 () Bool)

(assert (=> b!4639397 (= res!1948226 call!323852)))

(declare-fun e!2894103 () Bool)

(assert (=> b!4639397 (=> (not res!1948226) (not e!2894103))))

(assert (=> b!4639397 e!2894103))

(declare-fun lt!1802138 () Unit!115027)

(declare-fun Unit!115086 () Unit!115027)

(assert (=> b!4639397 (= lt!1802138 Unit!115086)))

(declare-fun b!4639398 () Bool)

(assert (=> b!4639398 (= e!2894103 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195783))))

(declare-fun bm!323847 () Bool)

(declare-fun c!793889 () Bool)

(assert (=> bm!323847 (= call!323852 (forall!10926 (ite c!793889 (toList!5109 (ListMap!4434 Nil!51736)) (Cons!51736 lt!1801811 lt!1801820)) (ite c!793889 lambda!195781 lambda!195783)))))

(assert (=> b!4639399 (= e!2894104 (ListMap!4434 Nil!51736))))

(declare-fun lt!1802137 () Unit!115027)

(assert (=> b!4639399 (= lt!1802137 call!323854)))

(assert (=> b!4639399 call!323853))

(declare-fun lt!1802126 () Unit!115027)

(assert (=> b!4639399 (= lt!1802126 lt!1802137)))

(assert (=> b!4639399 call!323852))

(declare-fun lt!1802125 () Unit!115027)

(declare-fun Unit!115087 () Unit!115027)

(assert (=> b!4639399 (= lt!1802125 Unit!115087)))

(assert (=> d!1462649 e!2894102))

(declare-fun res!1948225 () Bool)

(assert (=> d!1462649 (=> (not res!1948225) (not e!2894102))))

(assert (=> d!1462649 (= res!1948225 (forall!10926 (Cons!51736 lt!1801811 lt!1801820) lambda!195784))))

(assert (=> d!1462649 (= lt!1802131 e!2894104)))

(assert (=> d!1462649 (= c!793889 ((_ is Nil!51736) (Cons!51736 lt!1801811 lt!1801820)))))

(assert (=> d!1462649 (noDuplicateKeys!1582 (Cons!51736 lt!1801811 lt!1801820))))

(assert (=> d!1462649 (= (addToMapMapFromBucket!1041 (Cons!51736 lt!1801811 lt!1801820) (ListMap!4434 Nil!51736)) lt!1802131)))

(declare-fun bm!323848 () Bool)

(assert (=> bm!323848 (= call!323853 (forall!10926 (ite c!793889 (toList!5109 (ListMap!4434 Nil!51736)) (toList!5109 lt!1802142)) (ite c!793889 lambda!195781 lambda!195783)))))

(declare-fun bm!323849 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!556 (ListMap!4433) Unit!115027)

(assert (=> bm!323849 (= call!323854 (lemmaContainsAllItsOwnKeys!556 (ListMap!4434 Nil!51736)))))

(assert (= (and d!1462649 c!793889) b!4639399))

(assert (= (and d!1462649 (not c!793889)) b!4639397))

(assert (= (and b!4639397 res!1948226) b!4639398))

(assert (= (or b!4639399 b!4639397) bm!323849))

(assert (= (or b!4639399 b!4639397) bm!323848))

(assert (= (or b!4639399 b!4639397) bm!323847))

(assert (= (and d!1462649 res!1948225) b!4639396))

(assert (= (and b!4639396 res!1948227) b!4639395))

(declare-fun m!5498597 () Bool)

(assert (=> b!4639398 m!5498597))

(declare-fun m!5498599 () Bool)

(assert (=> bm!323848 m!5498599))

(declare-fun m!5498601 () Bool)

(assert (=> bm!323847 m!5498601))

(declare-fun m!5498603 () Bool)

(assert (=> b!4639395 m!5498603))

(declare-fun m!5498605 () Bool)

(assert (=> d!1462649 m!5498605))

(declare-fun m!5498607 () Bool)

(assert (=> d!1462649 m!5498607))

(declare-fun m!5498609 () Bool)

(assert (=> bm!323849 m!5498609))

(declare-fun m!5498611 () Bool)

(assert (=> b!4639397 m!5498611))

(declare-fun m!5498613 () Bool)

(assert (=> b!4639397 m!5498613))

(declare-fun m!5498615 () Bool)

(assert (=> b!4639397 m!5498615))

(declare-fun m!5498617 () Bool)

(assert (=> b!4639397 m!5498617))

(assert (=> b!4639397 m!5498611))

(declare-fun m!5498619 () Bool)

(assert (=> b!4639397 m!5498619))

(declare-fun m!5498621 () Bool)

(assert (=> b!4639397 m!5498621))

(declare-fun m!5498623 () Bool)

(assert (=> b!4639397 m!5498623))

(declare-fun m!5498625 () Bool)

(assert (=> b!4639397 m!5498625))

(declare-fun m!5498627 () Bool)

(assert (=> b!4639397 m!5498627))

(assert (=> b!4639397 m!5498597))

(declare-fun m!5498629 () Bool)

(assert (=> b!4639397 m!5498629))

(assert (=> b!4639397 m!5498597))

(declare-fun m!5498631 () Bool)

(assert (=> b!4639396 m!5498631))

(assert (=> b!4639186 d!1462649))

(declare-fun d!1462693 () Bool)

(assert (=> d!1462693 (= (head!9702 oldBucket!40) (h!57836 oldBucket!40))))

(assert (=> b!4639186 d!1462693))

(declare-fun bs!1032891 () Bool)

(declare-fun b!4639406 () Bool)

(assert (= bs!1032891 (and b!4639406 b!4639397)))

(declare-fun lambda!195785 () Int)

(assert (=> bs!1032891 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195785 lambda!195783))))

(declare-fun bs!1032892 () Bool)

(assert (= bs!1032892 (and b!4639406 d!1462649)))

(assert (=> bs!1032892 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195785 lambda!195784))))

(declare-fun bs!1032893 () Bool)

(assert (= bs!1032893 (and b!4639406 d!1462609)))

(assert (=> bs!1032893 (not (= lambda!195785 lambda!195738))))

(declare-fun bs!1032894 () Bool)

(assert (= bs!1032894 (and b!4639406 b!4639399)))

(assert (=> bs!1032894 (= lambda!195785 lambda!195781)))

(assert (=> bs!1032891 (= lambda!195785 lambda!195782)))

(assert (=> b!4639406 true))

(declare-fun bs!1032895 () Bool)

(declare-fun b!4639404 () Bool)

(assert (= bs!1032895 (and b!4639404 b!4639397)))

(declare-fun lambda!195786 () Int)

(assert (=> bs!1032895 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195786 lambda!195783))))

(declare-fun bs!1032896 () Bool)

(assert (= bs!1032896 (and b!4639404 d!1462649)))

(assert (=> bs!1032896 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195786 lambda!195784))))

(declare-fun bs!1032897 () Bool)

(assert (= bs!1032897 (and b!4639404 d!1462609)))

(assert (=> bs!1032897 (not (= lambda!195786 lambda!195738))))

(declare-fun bs!1032898 () Bool)

(assert (= bs!1032898 (and b!4639404 b!4639399)))

(assert (=> bs!1032898 (= lambda!195786 lambda!195781)))

(declare-fun bs!1032899 () Bool)

(assert (= bs!1032899 (and b!4639404 b!4639406)))

(assert (=> bs!1032899 (= lambda!195786 lambda!195785)))

(assert (=> bs!1032895 (= lambda!195786 lambda!195782)))

(assert (=> b!4639404 true))

(declare-fun lambda!195787 () Int)

(declare-fun lt!1802160 () ListMap!4433)

(assert (=> bs!1032895 (= (= lt!1802160 lt!1802139) (= lambda!195787 lambda!195783))))

(assert (=> bs!1032896 (= (= lt!1802160 lt!1802131) (= lambda!195787 lambda!195784))))

(assert (=> bs!1032897 (not (= lambda!195787 lambda!195738))))

(assert (=> bs!1032898 (= (= lt!1802160 (ListMap!4434 Nil!51736)) (= lambda!195787 lambda!195781))))

(assert (=> b!4639404 (= (= lt!1802160 (ListMap!4434 Nil!51736)) (= lambda!195787 lambda!195786))))

(assert (=> bs!1032899 (= (= lt!1802160 (ListMap!4434 Nil!51736)) (= lambda!195787 lambda!195785))))

(assert (=> bs!1032895 (= (= lt!1802160 (ListMap!4434 Nil!51736)) (= lambda!195787 lambda!195782))))

(assert (=> b!4639404 true))

(declare-fun bs!1032900 () Bool)

(declare-fun d!1462695 () Bool)

(assert (= bs!1032900 (and d!1462695 b!4639404)))

(declare-fun lambda!195788 () Int)

(declare-fun lt!1802152 () ListMap!4433)

(assert (=> bs!1032900 (= (= lt!1802152 lt!1802160) (= lambda!195788 lambda!195787))))

(declare-fun bs!1032901 () Bool)

(assert (= bs!1032901 (and d!1462695 b!4639397)))

(assert (=> bs!1032901 (= (= lt!1802152 lt!1802139) (= lambda!195788 lambda!195783))))

(declare-fun bs!1032902 () Bool)

(assert (= bs!1032902 (and d!1462695 d!1462649)))

(assert (=> bs!1032902 (= (= lt!1802152 lt!1802131) (= lambda!195788 lambda!195784))))

(declare-fun bs!1032903 () Bool)

(assert (= bs!1032903 (and d!1462695 d!1462609)))

(assert (=> bs!1032903 (not (= lambda!195788 lambda!195738))))

(declare-fun bs!1032904 () Bool)

(assert (= bs!1032904 (and d!1462695 b!4639399)))

(assert (=> bs!1032904 (= (= lt!1802152 (ListMap!4434 Nil!51736)) (= lambda!195788 lambda!195781))))

(assert (=> bs!1032900 (= (= lt!1802152 (ListMap!4434 Nil!51736)) (= lambda!195788 lambda!195786))))

(declare-fun bs!1032905 () Bool)

(assert (= bs!1032905 (and d!1462695 b!4639406)))

(assert (=> bs!1032905 (= (= lt!1802152 (ListMap!4434 Nil!51736)) (= lambda!195788 lambda!195785))))

(assert (=> bs!1032901 (= (= lt!1802152 (ListMap!4434 Nil!51736)) (= lambda!195788 lambda!195782))))

(assert (=> d!1462695 true))

(declare-fun b!4639402 () Bool)

(declare-fun e!2894105 () Bool)

(assert (=> b!4639402 (= e!2894105 (invariantList!1254 (toList!5109 lt!1802152)))))

(declare-fun b!4639403 () Bool)

(declare-fun res!1948230 () Bool)

(assert (=> b!4639403 (=> (not res!1948230) (not e!2894105))))

(assert (=> b!4639403 (= res!1948230 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195788))))

(declare-fun e!2894107 () ListMap!4433)

(assert (=> b!4639404 (= e!2894107 lt!1802160)))

(declare-fun lt!1802163 () ListMap!4433)

(assert (=> b!4639404 (= lt!1802163 (+!1936 (ListMap!4434 Nil!51736) (h!57836 oldBucket!40)))))

(assert (=> b!4639404 (= lt!1802160 (addToMapMapFromBucket!1041 (t!358940 oldBucket!40) (+!1936 (ListMap!4434 Nil!51736) (h!57836 oldBucket!40))))))

(declare-fun lt!1802149 () Unit!115027)

(declare-fun call!323857 () Unit!115027)

(assert (=> b!4639404 (= lt!1802149 call!323857)))

(assert (=> b!4639404 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195786)))

(declare-fun lt!1802150 () Unit!115027)

(assert (=> b!4639404 (= lt!1802150 lt!1802149)))

(declare-fun call!323856 () Bool)

(assert (=> b!4639404 call!323856))

(declare-fun lt!1802162 () Unit!115027)

(declare-fun Unit!115090 () Unit!115027)

(assert (=> b!4639404 (= lt!1802162 Unit!115090)))

(assert (=> b!4639404 (forall!10926 (t!358940 oldBucket!40) lambda!195787)))

(declare-fun lt!1802165 () Unit!115027)

(declare-fun Unit!115091 () Unit!115027)

(assert (=> b!4639404 (= lt!1802165 Unit!115091)))

(declare-fun lt!1802155 () Unit!115027)

(declare-fun Unit!115092 () Unit!115027)

(assert (=> b!4639404 (= lt!1802155 Unit!115092)))

(declare-fun lt!1802166 () Unit!115027)

(assert (=> b!4639404 (= lt!1802166 (forallContained!3146 (toList!5109 lt!1802163) lambda!195787 (h!57836 oldBucket!40)))))

(assert (=> b!4639404 (contains!14841 lt!1802163 (_1!29681 (h!57836 oldBucket!40)))))

(declare-fun lt!1802151 () Unit!115027)

(declare-fun Unit!115093 () Unit!115027)

(assert (=> b!4639404 (= lt!1802151 Unit!115093)))

(assert (=> b!4639404 (contains!14841 lt!1802160 (_1!29681 (h!57836 oldBucket!40)))))

(declare-fun lt!1802157 () Unit!115027)

(declare-fun Unit!115094 () Unit!115027)

(assert (=> b!4639404 (= lt!1802157 Unit!115094)))

(assert (=> b!4639404 (forall!10926 oldBucket!40 lambda!195787)))

(declare-fun lt!1802164 () Unit!115027)

(declare-fun Unit!115095 () Unit!115027)

(assert (=> b!4639404 (= lt!1802164 Unit!115095)))

(assert (=> b!4639404 (forall!10926 (toList!5109 lt!1802163) lambda!195787)))

(declare-fun lt!1802153 () Unit!115027)

(declare-fun Unit!115096 () Unit!115027)

(assert (=> b!4639404 (= lt!1802153 Unit!115096)))

(declare-fun lt!1802161 () Unit!115027)

(declare-fun Unit!115097 () Unit!115027)

(assert (=> b!4639404 (= lt!1802161 Unit!115097)))

(declare-fun lt!1802156 () Unit!115027)

(assert (=> b!4639404 (= lt!1802156 (addForallContainsKeyThenBeforeAdding!555 (ListMap!4434 Nil!51736) lt!1802160 (_1!29681 (h!57836 oldBucket!40)) (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> b!4639404 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195787)))

(declare-fun lt!1802154 () Unit!115027)

(assert (=> b!4639404 (= lt!1802154 lt!1802156)))

(assert (=> b!4639404 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195787)))

(declare-fun lt!1802148 () Unit!115027)

(declare-fun Unit!115098 () Unit!115027)

(assert (=> b!4639404 (= lt!1802148 Unit!115098)))

(declare-fun res!1948229 () Bool)

(declare-fun call!323855 () Bool)

(assert (=> b!4639404 (= res!1948229 call!323855)))

(declare-fun e!2894106 () Bool)

(assert (=> b!4639404 (=> (not res!1948229) (not e!2894106))))

(assert (=> b!4639404 e!2894106))

(declare-fun lt!1802159 () Unit!115027)

(declare-fun Unit!115099 () Unit!115027)

(assert (=> b!4639404 (= lt!1802159 Unit!115099)))

(declare-fun b!4639405 () Bool)

(assert (=> b!4639405 (= e!2894106 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195787))))

(declare-fun c!793890 () Bool)

(declare-fun bm!323850 () Bool)

(assert (=> bm!323850 (= call!323855 (forall!10926 (ite c!793890 (toList!5109 (ListMap!4434 Nil!51736)) oldBucket!40) (ite c!793890 lambda!195785 lambda!195787)))))

(assert (=> b!4639406 (= e!2894107 (ListMap!4434 Nil!51736))))

(declare-fun lt!1802158 () Unit!115027)

(assert (=> b!4639406 (= lt!1802158 call!323857)))

(assert (=> b!4639406 call!323856))

(declare-fun lt!1802147 () Unit!115027)

(assert (=> b!4639406 (= lt!1802147 lt!1802158)))

(assert (=> b!4639406 call!323855))

(declare-fun lt!1802146 () Unit!115027)

(declare-fun Unit!115100 () Unit!115027)

(assert (=> b!4639406 (= lt!1802146 Unit!115100)))

(assert (=> d!1462695 e!2894105))

(declare-fun res!1948228 () Bool)

(assert (=> d!1462695 (=> (not res!1948228) (not e!2894105))))

(assert (=> d!1462695 (= res!1948228 (forall!10926 oldBucket!40 lambda!195788))))

(assert (=> d!1462695 (= lt!1802152 e!2894107)))

(assert (=> d!1462695 (= c!793890 ((_ is Nil!51736) oldBucket!40))))

(assert (=> d!1462695 (noDuplicateKeys!1582 oldBucket!40)))

(assert (=> d!1462695 (= (addToMapMapFromBucket!1041 oldBucket!40 (ListMap!4434 Nil!51736)) lt!1802152)))

(declare-fun bm!323851 () Bool)

(assert (=> bm!323851 (= call!323856 (forall!10926 (ite c!793890 (toList!5109 (ListMap!4434 Nil!51736)) (toList!5109 lt!1802163)) (ite c!793890 lambda!195785 lambda!195787)))))

(declare-fun bm!323852 () Bool)

(assert (=> bm!323852 (= call!323857 (lemmaContainsAllItsOwnKeys!556 (ListMap!4434 Nil!51736)))))

(assert (= (and d!1462695 c!793890) b!4639406))

(assert (= (and d!1462695 (not c!793890)) b!4639404))

(assert (= (and b!4639404 res!1948229) b!4639405))

(assert (= (or b!4639406 b!4639404) bm!323852))

(assert (= (or b!4639406 b!4639404) bm!323851))

(assert (= (or b!4639406 b!4639404) bm!323850))

(assert (= (and d!1462695 res!1948228) b!4639403))

(assert (= (and b!4639403 res!1948230) b!4639402))

(declare-fun m!5498633 () Bool)

(assert (=> b!4639405 m!5498633))

(declare-fun m!5498635 () Bool)

(assert (=> bm!323851 m!5498635))

(declare-fun m!5498637 () Bool)

(assert (=> bm!323850 m!5498637))

(declare-fun m!5498639 () Bool)

(assert (=> b!4639402 m!5498639))

(declare-fun m!5498641 () Bool)

(assert (=> d!1462695 m!5498641))

(assert (=> d!1462695 m!5498133))

(assert (=> bm!323852 m!5498609))

(declare-fun m!5498643 () Bool)

(assert (=> b!4639404 m!5498643))

(declare-fun m!5498645 () Bool)

(assert (=> b!4639404 m!5498645))

(declare-fun m!5498647 () Bool)

(assert (=> b!4639404 m!5498647))

(declare-fun m!5498649 () Bool)

(assert (=> b!4639404 m!5498649))

(assert (=> b!4639404 m!5498643))

(declare-fun m!5498651 () Bool)

(assert (=> b!4639404 m!5498651))

(declare-fun m!5498653 () Bool)

(assert (=> b!4639404 m!5498653))

(declare-fun m!5498655 () Bool)

(assert (=> b!4639404 m!5498655))

(declare-fun m!5498657 () Bool)

(assert (=> b!4639404 m!5498657))

(declare-fun m!5498659 () Bool)

(assert (=> b!4639404 m!5498659))

(assert (=> b!4639404 m!5498633))

(declare-fun m!5498661 () Bool)

(assert (=> b!4639404 m!5498661))

(assert (=> b!4639404 m!5498633))

(declare-fun m!5498663 () Bool)

(assert (=> b!4639403 m!5498663))

(assert (=> b!4639186 d!1462695))

(declare-fun d!1462697 () Bool)

(declare-fun e!2894108 () Bool)

(assert (=> d!1462697 e!2894108))

(declare-fun res!1948232 () Bool)

(assert (=> d!1462697 (=> (not res!1948232) (not e!2894108))))

(declare-fun lt!1802169 () ListMap!4433)

(assert (=> d!1462697 (= res!1948232 (contains!14841 lt!1802169 (_1!29681 lt!1801811)))))

(declare-fun lt!1802168 () List!51860)

(assert (=> d!1462697 (= lt!1802169 (ListMap!4434 lt!1802168))))

(declare-fun lt!1802167 () Unit!115027)

(declare-fun lt!1802170 () Unit!115027)

(assert (=> d!1462697 (= lt!1802167 lt!1802170)))

(assert (=> d!1462697 (= (getValueByKey!1542 lt!1802168 (_1!29681 lt!1801811)) (Some!11725 (_2!29681 lt!1801811)))))

(assert (=> d!1462697 (= lt!1802170 (lemmaContainsTupThenGetReturnValue!896 lt!1802168 (_1!29681 lt!1801811) (_2!29681 lt!1801811)))))

(assert (=> d!1462697 (= lt!1802168 (insertNoDuplicatedKeys!404 (toList!5109 lt!1801823) (_1!29681 lt!1801811) (_2!29681 lt!1801811)))))

(assert (=> d!1462697 (= (+!1936 lt!1801823 lt!1801811) lt!1802169)))

(declare-fun b!4639407 () Bool)

(declare-fun res!1948231 () Bool)

(assert (=> b!4639407 (=> (not res!1948231) (not e!2894108))))

(assert (=> b!4639407 (= res!1948231 (= (getValueByKey!1542 (toList!5109 lt!1802169) (_1!29681 lt!1801811)) (Some!11725 (_2!29681 lt!1801811))))))

(declare-fun b!4639408 () Bool)

(assert (=> b!4639408 (= e!2894108 (contains!14843 (toList!5109 lt!1802169) lt!1801811))))

(assert (= (and d!1462697 res!1948232) b!4639407))

(assert (= (and b!4639407 res!1948231) b!4639408))

(declare-fun m!5498665 () Bool)

(assert (=> d!1462697 m!5498665))

(declare-fun m!5498667 () Bool)

(assert (=> d!1462697 m!5498667))

(declare-fun m!5498669 () Bool)

(assert (=> d!1462697 m!5498669))

(declare-fun m!5498671 () Bool)

(assert (=> d!1462697 m!5498671))

(declare-fun m!5498673 () Bool)

(assert (=> b!4639407 m!5498673))

(declare-fun m!5498675 () Bool)

(assert (=> b!4639408 m!5498675))

(assert (=> b!4639186 d!1462697))

(declare-fun d!1462699 () Bool)

(assert (=> d!1462699 (= (eq!883 lt!1801816 lt!1801808) (= (content!8929 (toList!5109 lt!1801816)) (content!8929 (toList!5109 lt!1801808))))))

(declare-fun bs!1032906 () Bool)

(assert (= bs!1032906 d!1462699))

(declare-fun m!5498677 () Bool)

(assert (=> bs!1032906 m!5498677))

(declare-fun m!5498679 () Bool)

(assert (=> bs!1032906 m!5498679))

(assert (=> b!4639186 d!1462699))

(declare-fun d!1462701 () Bool)

(declare-fun e!2894109 () Bool)

(assert (=> d!1462701 e!2894109))

(declare-fun res!1948234 () Bool)

(assert (=> d!1462701 (=> (not res!1948234) (not e!2894109))))

(declare-fun lt!1802173 () ListMap!4433)

(assert (=> d!1462701 (= res!1948234 (contains!14841 lt!1802173 (_1!29681 (h!57836 oldBucket!40))))))

(declare-fun lt!1802172 () List!51860)

(assert (=> d!1462701 (= lt!1802173 (ListMap!4434 lt!1802172))))

(declare-fun lt!1802171 () Unit!115027)

(declare-fun lt!1802174 () Unit!115027)

(assert (=> d!1462701 (= lt!1802171 lt!1802174)))

(assert (=> d!1462701 (= (getValueByKey!1542 lt!1802172 (_1!29681 (h!57836 oldBucket!40))) (Some!11725 (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> d!1462701 (= lt!1802174 (lemmaContainsTupThenGetReturnValue!896 lt!1802172 (_1!29681 (h!57836 oldBucket!40)) (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> d!1462701 (= lt!1802172 (insertNoDuplicatedKeys!404 (toList!5109 lt!1801823) (_1!29681 (h!57836 oldBucket!40)) (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> d!1462701 (= (+!1936 lt!1801823 (h!57836 oldBucket!40)) lt!1802173)))

(declare-fun b!4639409 () Bool)

(declare-fun res!1948233 () Bool)

(assert (=> b!4639409 (=> (not res!1948233) (not e!2894109))))

(assert (=> b!4639409 (= res!1948233 (= (getValueByKey!1542 (toList!5109 lt!1802173) (_1!29681 (h!57836 oldBucket!40))) (Some!11725 (_2!29681 (h!57836 oldBucket!40)))))))

(declare-fun b!4639410 () Bool)

(assert (=> b!4639410 (= e!2894109 (contains!14843 (toList!5109 lt!1802173) (h!57836 oldBucket!40)))))

(assert (= (and d!1462701 res!1948234) b!4639409))

(assert (= (and b!4639409 res!1948233) b!4639410))

(declare-fun m!5498681 () Bool)

(assert (=> d!1462701 m!5498681))

(declare-fun m!5498683 () Bool)

(assert (=> d!1462701 m!5498683))

(declare-fun m!5498685 () Bool)

(assert (=> d!1462701 m!5498685))

(declare-fun m!5498687 () Bool)

(assert (=> d!1462701 m!5498687))

(declare-fun m!5498689 () Bool)

(assert (=> b!4639409 m!5498689))

(declare-fun m!5498691 () Bool)

(assert (=> b!4639410 m!5498691))

(assert (=> b!4639186 d!1462701))

(declare-fun d!1462703 () Bool)

(assert (=> d!1462703 (eq!883 (addToMapMapFromBucket!1041 (Cons!51736 lt!1801811 lt!1801820) (ListMap!4434 Nil!51736)) (+!1936 (addToMapMapFromBucket!1041 lt!1801820 (ListMap!4434 Nil!51736)) lt!1801811))))

(declare-fun lt!1802177 () Unit!115027)

(declare-fun choose!31733 (tuple2!52774 List!51860 ListMap!4433) Unit!115027)

(assert (=> d!1462703 (= lt!1802177 (choose!31733 lt!1801811 lt!1801820 (ListMap!4434 Nil!51736)))))

(assert (=> d!1462703 (noDuplicateKeys!1582 lt!1801820)))

(assert (=> d!1462703 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!134 lt!1801811 lt!1801820 (ListMap!4434 Nil!51736)) lt!1802177)))

(declare-fun bs!1032907 () Bool)

(assert (= bs!1032907 d!1462703))

(assert (=> bs!1032907 m!5498103))

(assert (=> bs!1032907 m!5498103))

(declare-fun m!5498693 () Bool)

(assert (=> bs!1032907 m!5498693))

(declare-fun m!5498695 () Bool)

(assert (=> bs!1032907 m!5498695))

(assert (=> bs!1032907 m!5498125))

(assert (=> bs!1032907 m!5498125))

(assert (=> bs!1032907 m!5498693))

(declare-fun m!5498697 () Bool)

(assert (=> bs!1032907 m!5498697))

(declare-fun m!5498699 () Bool)

(assert (=> bs!1032907 m!5498699))

(assert (=> b!4639186 d!1462703))

(declare-fun d!1462705 () Bool)

(declare-fun res!1948235 () Bool)

(declare-fun e!2894110 () Bool)

(assert (=> d!1462705 (=> res!1948235 e!2894110)))

(assert (=> d!1462705 (= res!1948235 (not ((_ is Cons!51736) oldBucket!40)))))

(assert (=> d!1462705 (= (noDuplicateKeys!1582 oldBucket!40) e!2894110)))

(declare-fun b!4639411 () Bool)

(declare-fun e!2894111 () Bool)

(assert (=> b!4639411 (= e!2894110 e!2894111)))

(declare-fun res!1948236 () Bool)

(assert (=> b!4639411 (=> (not res!1948236) (not e!2894111))))

(assert (=> b!4639411 (= res!1948236 (not (containsKey!2602 (t!358940 oldBucket!40) (_1!29681 (h!57836 oldBucket!40)))))))

(declare-fun b!4639412 () Bool)

(assert (=> b!4639412 (= e!2894111 (noDuplicateKeys!1582 (t!358940 oldBucket!40)))))

(assert (= (and d!1462705 (not res!1948235)) b!4639411))

(assert (= (and b!4639411 res!1948236) b!4639412))

(declare-fun m!5498701 () Bool)

(assert (=> b!4639411 m!5498701))

(declare-fun m!5498703 () Bool)

(assert (=> b!4639412 m!5498703))

(assert (=> start!466304 d!1462705))

(declare-fun d!1462707 () Bool)

(declare-fun lt!1802180 () ListMap!4433)

(assert (=> d!1462707 (invariantList!1254 (toList!5109 lt!1802180))))

(declare-fun e!2894114 () ListMap!4433)

(assert (=> d!1462707 (= lt!1802180 e!2894114)))

(declare-fun c!793893 () Bool)

(assert (=> d!1462707 (= c!793893 ((_ is Cons!51737) (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737)))))

(declare-fun lambda!195791 () Int)

(declare-fun forall!10928 (List!51861 Int) Bool)

(assert (=> d!1462707 (forall!10928 (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737) lambda!195791)))

(assert (=> d!1462707 (= (extractMap!1638 (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737)) lt!1802180)))

(declare-fun b!4639417 () Bool)

(assert (=> b!4639417 (= e!2894114 (addToMapMapFromBucket!1041 (_2!29682 (h!57837 (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737))) (extractMap!1638 (t!358941 (Cons!51737 (tuple2!52777 hash!414 newBucket!224) Nil!51737)))))))

(declare-fun b!4639418 () Bool)

(assert (=> b!4639418 (= e!2894114 (ListMap!4434 Nil!51736))))

(assert (= (and d!1462707 c!793893) b!4639417))

(assert (= (and d!1462707 (not c!793893)) b!4639418))

(declare-fun m!5498705 () Bool)

(assert (=> d!1462707 m!5498705))

(declare-fun m!5498707 () Bool)

(assert (=> d!1462707 m!5498707))

(declare-fun m!5498709 () Bool)

(assert (=> b!4639417 m!5498709))

(assert (=> b!4639417 m!5498709))

(declare-fun m!5498711 () Bool)

(assert (=> b!4639417 m!5498711))

(assert (=> b!4639196 d!1462707))

(declare-fun bs!1032908 () Bool)

(declare-fun d!1462709 () Bool)

(assert (= bs!1032908 (and d!1462709 d!1462707)))

(declare-fun lambda!195792 () Int)

(assert (=> bs!1032908 (= lambda!195792 lambda!195791)))

(declare-fun lt!1802181 () ListMap!4433)

(assert (=> d!1462709 (invariantList!1254 (toList!5109 lt!1802181))))

(declare-fun e!2894115 () ListMap!4433)

(assert (=> d!1462709 (= lt!1802181 e!2894115)))

(declare-fun c!793894 () Bool)

(assert (=> d!1462709 (= c!793894 ((_ is Cons!51737) lt!1801817))))

(assert (=> d!1462709 (forall!10928 lt!1801817 lambda!195792)))

(assert (=> d!1462709 (= (extractMap!1638 lt!1801817) lt!1802181)))

(declare-fun b!4639419 () Bool)

(assert (=> b!4639419 (= e!2894115 (addToMapMapFromBucket!1041 (_2!29682 (h!57837 lt!1801817)) (extractMap!1638 (t!358941 lt!1801817))))))

(declare-fun b!4639420 () Bool)

(assert (=> b!4639420 (= e!2894115 (ListMap!4434 Nil!51736))))

(assert (= (and d!1462709 c!793894) b!4639419))

(assert (= (and d!1462709 (not c!793894)) b!4639420))

(declare-fun m!5498713 () Bool)

(assert (=> d!1462709 m!5498713))

(declare-fun m!5498715 () Bool)

(assert (=> d!1462709 m!5498715))

(declare-fun m!5498717 () Bool)

(assert (=> b!4639419 m!5498717))

(assert (=> b!4639419 m!5498717))

(declare-fun m!5498719 () Bool)

(assert (=> b!4639419 m!5498719))

(assert (=> b!4639196 d!1462709))

(declare-fun b!4639439 () Bool)

(declare-fun e!2894132 () List!51862)

(declare-fun getKeysList!705 (List!51860) List!51862)

(assert (=> b!4639439 (= e!2894132 (getKeysList!705 (toList!5109 lt!1801823)))))

(declare-fun b!4639440 () Bool)

(declare-fun e!2894128 () Unit!115027)

(declare-fun Unit!115101 () Unit!115027)

(assert (=> b!4639440 (= e!2894128 Unit!115101)))

(declare-fun bm!323855 () Bool)

(declare-fun call!323860 () Bool)

(declare-fun contains!14845 (List!51862 K!13105) Bool)

(assert (=> bm!323855 (= call!323860 (contains!14845 e!2894132 key!4968))))

(declare-fun c!793901 () Bool)

(declare-fun c!793903 () Bool)

(assert (=> bm!323855 (= c!793901 c!793903)))

(declare-fun d!1462711 () Bool)

(declare-fun e!2894133 () Bool)

(assert (=> d!1462711 e!2894133))

(declare-fun res!1948243 () Bool)

(assert (=> d!1462711 (=> res!1948243 e!2894133)))

(declare-fun e!2894130 () Bool)

(assert (=> d!1462711 (= res!1948243 e!2894130)))

(declare-fun res!1948245 () Bool)

(assert (=> d!1462711 (=> (not res!1948245) (not e!2894130))))

(declare-fun lt!1802203 () Bool)

(assert (=> d!1462711 (= res!1948245 (not lt!1802203))))

(declare-fun lt!1802201 () Bool)

(assert (=> d!1462711 (= lt!1802203 lt!1802201)))

(declare-fun lt!1802199 () Unit!115027)

(declare-fun e!2894129 () Unit!115027)

(assert (=> d!1462711 (= lt!1802199 e!2894129)))

(assert (=> d!1462711 (= c!793903 lt!1802201)))

(declare-fun containsKey!2604 (List!51860 K!13105) Bool)

(assert (=> d!1462711 (= lt!1802201 (containsKey!2604 (toList!5109 lt!1801823) key!4968))))

(assert (=> d!1462711 (= (contains!14841 lt!1801823 key!4968) lt!1802203)))

(declare-fun b!4639441 () Bool)

(declare-fun lt!1802205 () Unit!115027)

(assert (=> b!4639441 (= e!2894129 lt!1802205)))

(declare-fun lt!1802202 () Unit!115027)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1444 (List!51860 K!13105) Unit!115027)

(assert (=> b!4639441 (= lt!1802202 (lemmaContainsKeyImpliesGetValueByKeyDefined!1444 (toList!5109 lt!1801823) key!4968))))

(declare-fun isDefined!8991 (Option!11726) Bool)

(assert (=> b!4639441 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801823) key!4968))))

(declare-fun lt!1802198 () Unit!115027)

(assert (=> b!4639441 (= lt!1802198 lt!1802202)))

(declare-fun lemmaInListThenGetKeysListContains!700 (List!51860 K!13105) Unit!115027)

(assert (=> b!4639441 (= lt!1802205 (lemmaInListThenGetKeysListContains!700 (toList!5109 lt!1801823) key!4968))))

(assert (=> b!4639441 call!323860))

(declare-fun b!4639442 () Bool)

(assert (=> b!4639442 false))

(declare-fun lt!1802200 () Unit!115027)

(declare-fun lt!1802204 () Unit!115027)

(assert (=> b!4639442 (= lt!1802200 lt!1802204)))

(assert (=> b!4639442 (containsKey!2604 (toList!5109 lt!1801823) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!704 (List!51860 K!13105) Unit!115027)

(assert (=> b!4639442 (= lt!1802204 (lemmaInGetKeysListThenContainsKey!704 (toList!5109 lt!1801823) key!4968))))

(declare-fun Unit!115102 () Unit!115027)

(assert (=> b!4639442 (= e!2894128 Unit!115102)))

(declare-fun b!4639443 () Bool)

(assert (=> b!4639443 (= e!2894129 e!2894128)))

(declare-fun c!793902 () Bool)

(assert (=> b!4639443 (= c!793902 call!323860)))

(declare-fun b!4639444 () Bool)

(assert (=> b!4639444 (= e!2894130 (not (contains!14845 (keys!18279 lt!1801823) key!4968)))))

(declare-fun b!4639445 () Bool)

(declare-fun e!2894131 () Bool)

(assert (=> b!4639445 (= e!2894131 (contains!14845 (keys!18279 lt!1801823) key!4968))))

(declare-fun b!4639446 () Bool)

(assert (=> b!4639446 (= e!2894133 e!2894131)))

(declare-fun res!1948244 () Bool)

(assert (=> b!4639446 (=> (not res!1948244) (not e!2894131))))

(assert (=> b!4639446 (= res!1948244 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801823) key!4968)))))

(declare-fun b!4639447 () Bool)

(assert (=> b!4639447 (= e!2894132 (keys!18279 lt!1801823))))

(assert (= (and d!1462711 c!793903) b!4639441))

(assert (= (and d!1462711 (not c!793903)) b!4639443))

(assert (= (and b!4639443 c!793902) b!4639442))

(assert (= (and b!4639443 (not c!793902)) b!4639440))

(assert (= (or b!4639441 b!4639443) bm!323855))

(assert (= (and bm!323855 c!793901) b!4639439))

(assert (= (and bm!323855 (not c!793901)) b!4639447))

(assert (= (and d!1462711 res!1948245) b!4639444))

(assert (= (and d!1462711 (not res!1948243)) b!4639446))

(assert (= (and b!4639446 res!1948244) b!4639445))

(declare-fun m!5498721 () Bool)

(assert (=> b!4639441 m!5498721))

(declare-fun m!5498723 () Bool)

(assert (=> b!4639441 m!5498723))

(assert (=> b!4639441 m!5498723))

(declare-fun m!5498725 () Bool)

(assert (=> b!4639441 m!5498725))

(declare-fun m!5498727 () Bool)

(assert (=> b!4639441 m!5498727))

(declare-fun m!5498729 () Bool)

(assert (=> d!1462711 m!5498729))

(declare-fun m!5498731 () Bool)

(assert (=> b!4639445 m!5498731))

(assert (=> b!4639445 m!5498731))

(declare-fun m!5498733 () Bool)

(assert (=> b!4639445 m!5498733))

(assert (=> b!4639446 m!5498723))

(assert (=> b!4639446 m!5498723))

(assert (=> b!4639446 m!5498725))

(assert (=> b!4639442 m!5498729))

(declare-fun m!5498735 () Bool)

(assert (=> b!4639442 m!5498735))

(declare-fun m!5498737 () Bool)

(assert (=> b!4639439 m!5498737))

(assert (=> b!4639444 m!5498731))

(assert (=> b!4639444 m!5498731))

(assert (=> b!4639444 m!5498733))

(declare-fun m!5498739 () Bool)

(assert (=> bm!323855 m!5498739))

(assert (=> b!4639447 m!5498731))

(assert (=> b!4639198 d!1462711))

(declare-fun b!4639448 () Bool)

(declare-fun e!2894138 () List!51862)

(assert (=> b!4639448 (= e!2894138 (getKeysList!705 (toList!5109 lt!1801822)))))

(declare-fun b!4639449 () Bool)

(declare-fun e!2894134 () Unit!115027)

(declare-fun Unit!115103 () Unit!115027)

(assert (=> b!4639449 (= e!2894134 Unit!115103)))

(declare-fun bm!323856 () Bool)

(declare-fun call!323861 () Bool)

(assert (=> bm!323856 (= call!323861 (contains!14845 e!2894138 key!4968))))

(declare-fun c!793904 () Bool)

(declare-fun c!793906 () Bool)

(assert (=> bm!323856 (= c!793904 c!793906)))

(declare-fun d!1462713 () Bool)

(declare-fun e!2894139 () Bool)

(assert (=> d!1462713 e!2894139))

(declare-fun res!1948246 () Bool)

(assert (=> d!1462713 (=> res!1948246 e!2894139)))

(declare-fun e!2894136 () Bool)

(assert (=> d!1462713 (= res!1948246 e!2894136)))

(declare-fun res!1948248 () Bool)

(assert (=> d!1462713 (=> (not res!1948248) (not e!2894136))))

(declare-fun lt!1802211 () Bool)

(assert (=> d!1462713 (= res!1948248 (not lt!1802211))))

(declare-fun lt!1802209 () Bool)

(assert (=> d!1462713 (= lt!1802211 lt!1802209)))

(declare-fun lt!1802207 () Unit!115027)

(declare-fun e!2894135 () Unit!115027)

(assert (=> d!1462713 (= lt!1802207 e!2894135)))

(assert (=> d!1462713 (= c!793906 lt!1802209)))

(assert (=> d!1462713 (= lt!1802209 (containsKey!2604 (toList!5109 lt!1801822) key!4968))))

(assert (=> d!1462713 (= (contains!14841 lt!1801822 key!4968) lt!1802211)))

(declare-fun b!4639450 () Bool)

(declare-fun lt!1802213 () Unit!115027)

(assert (=> b!4639450 (= e!2894135 lt!1802213)))

(declare-fun lt!1802210 () Unit!115027)

(assert (=> b!4639450 (= lt!1802210 (lemmaContainsKeyImpliesGetValueByKeyDefined!1444 (toList!5109 lt!1801822) key!4968))))

(assert (=> b!4639450 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801822) key!4968))))

(declare-fun lt!1802206 () Unit!115027)

(assert (=> b!4639450 (= lt!1802206 lt!1802210)))

(assert (=> b!4639450 (= lt!1802213 (lemmaInListThenGetKeysListContains!700 (toList!5109 lt!1801822) key!4968))))

(assert (=> b!4639450 call!323861))

(declare-fun b!4639451 () Bool)

(assert (=> b!4639451 false))

(declare-fun lt!1802208 () Unit!115027)

(declare-fun lt!1802212 () Unit!115027)

(assert (=> b!4639451 (= lt!1802208 lt!1802212)))

(assert (=> b!4639451 (containsKey!2604 (toList!5109 lt!1801822) key!4968)))

(assert (=> b!4639451 (= lt!1802212 (lemmaInGetKeysListThenContainsKey!704 (toList!5109 lt!1801822) key!4968))))

(declare-fun Unit!115104 () Unit!115027)

(assert (=> b!4639451 (= e!2894134 Unit!115104)))

(declare-fun b!4639452 () Bool)

(assert (=> b!4639452 (= e!2894135 e!2894134)))

(declare-fun c!793905 () Bool)

(assert (=> b!4639452 (= c!793905 call!323861)))

(declare-fun b!4639453 () Bool)

(assert (=> b!4639453 (= e!2894136 (not (contains!14845 (keys!18279 lt!1801822) key!4968)))))

(declare-fun b!4639454 () Bool)

(declare-fun e!2894137 () Bool)

(assert (=> b!4639454 (= e!2894137 (contains!14845 (keys!18279 lt!1801822) key!4968))))

(declare-fun b!4639455 () Bool)

(assert (=> b!4639455 (= e!2894139 e!2894137)))

(declare-fun res!1948247 () Bool)

(assert (=> b!4639455 (=> (not res!1948247) (not e!2894137))))

(assert (=> b!4639455 (= res!1948247 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801822) key!4968)))))

(declare-fun b!4639456 () Bool)

(assert (=> b!4639456 (= e!2894138 (keys!18279 lt!1801822))))

(assert (= (and d!1462713 c!793906) b!4639450))

(assert (= (and d!1462713 (not c!793906)) b!4639452))

(assert (= (and b!4639452 c!793905) b!4639451))

(assert (= (and b!4639452 (not c!793905)) b!4639449))

(assert (= (or b!4639450 b!4639452) bm!323856))

(assert (= (and bm!323856 c!793904) b!4639448))

(assert (= (and bm!323856 (not c!793904)) b!4639456))

(assert (= (and d!1462713 res!1948248) b!4639453))

(assert (= (and d!1462713 (not res!1948246)) b!4639455))

(assert (= (and b!4639455 res!1948247) b!4639454))

(declare-fun m!5498741 () Bool)

(assert (=> b!4639450 m!5498741))

(declare-fun m!5498743 () Bool)

(assert (=> b!4639450 m!5498743))

(assert (=> b!4639450 m!5498743))

(declare-fun m!5498745 () Bool)

(assert (=> b!4639450 m!5498745))

(declare-fun m!5498747 () Bool)

(assert (=> b!4639450 m!5498747))

(declare-fun m!5498749 () Bool)

(assert (=> d!1462713 m!5498749))

(declare-fun m!5498751 () Bool)

(assert (=> b!4639454 m!5498751))

(assert (=> b!4639454 m!5498751))

(declare-fun m!5498753 () Bool)

(assert (=> b!4639454 m!5498753))

(assert (=> b!4639455 m!5498743))

(assert (=> b!4639455 m!5498743))

(assert (=> b!4639455 m!5498745))

(assert (=> b!4639451 m!5498749))

(declare-fun m!5498755 () Bool)

(assert (=> b!4639451 m!5498755))

(declare-fun m!5498757 () Bool)

(assert (=> b!4639448 m!5498757))

(assert (=> b!4639453 m!5498751))

(assert (=> b!4639453 m!5498751))

(assert (=> b!4639453 m!5498753))

(declare-fun m!5498759 () Bool)

(assert (=> bm!323856 m!5498759))

(assert (=> b!4639456 m!5498751))

(assert (=> b!4639198 d!1462713))

(declare-fun bs!1032909 () Bool)

(declare-fun d!1462715 () Bool)

(assert (= bs!1032909 (and d!1462715 d!1462707)))

(declare-fun lambda!195795 () Int)

(assert (=> bs!1032909 (= lambda!195795 lambda!195791)))

(declare-fun bs!1032910 () Bool)

(assert (= bs!1032910 (and d!1462715 d!1462709)))

(assert (=> bs!1032910 (= lambda!195795 lambda!195792)))

(assert (=> d!1462715 (not (contains!14841 (extractMap!1638 (toList!5110 (ListLongMap!3680 lt!1801817))) key!4968))))

(declare-fun lt!1802216 () Unit!115027)

(declare-fun choose!31734 (ListLongMap!3679 K!13105 Hashable!5979) Unit!115027)

(assert (=> d!1462715 (= lt!1802216 (choose!31734 (ListLongMap!3680 lt!1801817) key!4968 hashF!1389))))

(assert (=> d!1462715 (forall!10928 (toList!5110 (ListLongMap!3680 lt!1801817)) lambda!195795)))

(assert (=> d!1462715 (= (lemmaNotInItsHashBucketThenNotInMap!374 (ListLongMap!3680 lt!1801817) key!4968 hashF!1389) lt!1802216)))

(declare-fun bs!1032911 () Bool)

(assert (= bs!1032911 d!1462715))

(declare-fun m!5498761 () Bool)

(assert (=> bs!1032911 m!5498761))

(assert (=> bs!1032911 m!5498761))

(declare-fun m!5498763 () Bool)

(assert (=> bs!1032911 m!5498763))

(declare-fun m!5498765 () Bool)

(assert (=> bs!1032911 m!5498765))

(declare-fun m!5498767 () Bool)

(assert (=> bs!1032911 m!5498767))

(assert (=> b!4639198 d!1462715))

(declare-fun d!1462717 () Bool)

(assert (=> d!1462717 (= (eq!883 lt!1801818 lt!1801812) (= (content!8929 (toList!5109 lt!1801818)) (content!8929 (toList!5109 lt!1801812))))))

(declare-fun bs!1032912 () Bool)

(assert (= bs!1032912 d!1462717))

(assert (=> bs!1032912 m!5498369))

(declare-fun m!5498769 () Bool)

(assert (=> bs!1032912 m!5498769))

(assert (=> b!4639187 d!1462717))

(declare-fun d!1462719 () Bool)

(declare-fun res!1948253 () Bool)

(declare-fun e!2894144 () Bool)

(assert (=> d!1462719 (=> res!1948253 e!2894144)))

(assert (=> d!1462719 (= res!1948253 (and ((_ is Cons!51736) lt!1801820) (= (_1!29681 (h!57836 lt!1801820)) key!4968)))))

(assert (=> d!1462719 (= (containsKey!2602 lt!1801820 key!4968) e!2894144)))

(declare-fun b!4639461 () Bool)

(declare-fun e!2894145 () Bool)

(assert (=> b!4639461 (= e!2894144 e!2894145)))

(declare-fun res!1948254 () Bool)

(assert (=> b!4639461 (=> (not res!1948254) (not e!2894145))))

(assert (=> b!4639461 (= res!1948254 ((_ is Cons!51736) lt!1801820))))

(declare-fun b!4639462 () Bool)

(assert (=> b!4639462 (= e!2894145 (containsKey!2602 (t!358940 lt!1801820) key!4968))))

(assert (= (and d!1462719 (not res!1948253)) b!4639461))

(assert (= (and b!4639461 res!1948254) b!4639462))

(declare-fun m!5498771 () Bool)

(assert (=> b!4639462 m!5498771))

(assert (=> b!4639197 d!1462719))

(declare-fun bs!1032913 () Bool)

(declare-fun b!4639467 () Bool)

(assert (= bs!1032913 (and b!4639467 b!4639404)))

(declare-fun lambda!195796 () Int)

(assert (=> bs!1032913 (= (= (ListMap!4434 Nil!51736) lt!1802160) (= lambda!195796 lambda!195787))))

(declare-fun bs!1032914 () Bool)

(assert (= bs!1032914 (and b!4639467 b!4639397)))

(assert (=> bs!1032914 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195796 lambda!195783))))

(declare-fun bs!1032915 () Bool)

(assert (= bs!1032915 (and b!4639467 d!1462649)))

(assert (=> bs!1032915 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195796 lambda!195784))))

(declare-fun bs!1032916 () Bool)

(assert (= bs!1032916 (and b!4639467 d!1462609)))

(assert (=> bs!1032916 (not (= lambda!195796 lambda!195738))))

(assert (=> bs!1032913 (= lambda!195796 lambda!195786)))

(declare-fun bs!1032917 () Bool)

(assert (= bs!1032917 (and b!4639467 b!4639399)))

(assert (=> bs!1032917 (= lambda!195796 lambda!195781)))

(declare-fun bs!1032918 () Bool)

(assert (= bs!1032918 (and b!4639467 d!1462695)))

(assert (=> bs!1032918 (= (= (ListMap!4434 Nil!51736) lt!1802152) (= lambda!195796 lambda!195788))))

(declare-fun bs!1032919 () Bool)

(assert (= bs!1032919 (and b!4639467 b!4639406)))

(assert (=> bs!1032919 (= lambda!195796 lambda!195785)))

(assert (=> bs!1032914 (= lambda!195796 lambda!195782)))

(assert (=> b!4639467 true))

(declare-fun bs!1032920 () Bool)

(declare-fun b!4639465 () Bool)

(assert (= bs!1032920 (and b!4639465 b!4639467)))

(declare-fun lambda!195797 () Int)

(assert (=> bs!1032920 (= lambda!195797 lambda!195796)))

(declare-fun bs!1032921 () Bool)

(assert (= bs!1032921 (and b!4639465 b!4639404)))

(assert (=> bs!1032921 (= (= (ListMap!4434 Nil!51736) lt!1802160) (= lambda!195797 lambda!195787))))

(declare-fun bs!1032922 () Bool)

(assert (= bs!1032922 (and b!4639465 b!4639397)))

(assert (=> bs!1032922 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195797 lambda!195783))))

(declare-fun bs!1032923 () Bool)

(assert (= bs!1032923 (and b!4639465 d!1462649)))

(assert (=> bs!1032923 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195797 lambda!195784))))

(declare-fun bs!1032924 () Bool)

(assert (= bs!1032924 (and b!4639465 d!1462609)))

(assert (=> bs!1032924 (not (= lambda!195797 lambda!195738))))

(assert (=> bs!1032921 (= lambda!195797 lambda!195786)))

(declare-fun bs!1032925 () Bool)

(assert (= bs!1032925 (and b!4639465 b!4639399)))

(assert (=> bs!1032925 (= lambda!195797 lambda!195781)))

(declare-fun bs!1032926 () Bool)

(assert (= bs!1032926 (and b!4639465 d!1462695)))

(assert (=> bs!1032926 (= (= (ListMap!4434 Nil!51736) lt!1802152) (= lambda!195797 lambda!195788))))

(declare-fun bs!1032927 () Bool)

(assert (= bs!1032927 (and b!4639465 b!4639406)))

(assert (=> bs!1032927 (= lambda!195797 lambda!195785)))

(assert (=> bs!1032922 (= lambda!195797 lambda!195782)))

(assert (=> b!4639465 true))

(declare-fun lt!1802231 () ListMap!4433)

(declare-fun lambda!195798 () Int)

(assert (=> b!4639465 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195797))))

(assert (=> bs!1032920 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195796))))

(assert (=> bs!1032921 (= (= lt!1802231 lt!1802160) (= lambda!195798 lambda!195787))))

(assert (=> bs!1032922 (= (= lt!1802231 lt!1802139) (= lambda!195798 lambda!195783))))

(assert (=> bs!1032923 (= (= lt!1802231 lt!1802131) (= lambda!195798 lambda!195784))))

(assert (=> bs!1032924 (not (= lambda!195798 lambda!195738))))

(assert (=> bs!1032921 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195786))))

(assert (=> bs!1032925 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195781))))

(assert (=> bs!1032926 (= (= lt!1802231 lt!1802152) (= lambda!195798 lambda!195788))))

(assert (=> bs!1032927 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195785))))

(assert (=> bs!1032922 (= (= lt!1802231 (ListMap!4434 Nil!51736)) (= lambda!195798 lambda!195782))))

(assert (=> b!4639465 true))

(declare-fun bs!1032928 () Bool)

(declare-fun d!1462721 () Bool)

(assert (= bs!1032928 (and d!1462721 b!4639465)))

(declare-fun lt!1802223 () ListMap!4433)

(declare-fun lambda!195799 () Int)

(assert (=> bs!1032928 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195797))))

(declare-fun bs!1032929 () Bool)

(assert (= bs!1032929 (and d!1462721 b!4639467)))

(assert (=> bs!1032929 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195796))))

(declare-fun bs!1032930 () Bool)

(assert (= bs!1032930 (and d!1462721 b!4639404)))

(assert (=> bs!1032930 (= (= lt!1802223 lt!1802160) (= lambda!195799 lambda!195787))))

(declare-fun bs!1032931 () Bool)

(assert (= bs!1032931 (and d!1462721 b!4639397)))

(assert (=> bs!1032931 (= (= lt!1802223 lt!1802139) (= lambda!195799 lambda!195783))))

(declare-fun bs!1032932 () Bool)

(assert (= bs!1032932 (and d!1462721 d!1462649)))

(assert (=> bs!1032932 (= (= lt!1802223 lt!1802131) (= lambda!195799 lambda!195784))))

(declare-fun bs!1032933 () Bool)

(assert (= bs!1032933 (and d!1462721 d!1462609)))

(assert (=> bs!1032933 (not (= lambda!195799 lambda!195738))))

(assert (=> bs!1032928 (= (= lt!1802223 lt!1802231) (= lambda!195799 lambda!195798))))

(assert (=> bs!1032930 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195786))))

(declare-fun bs!1032934 () Bool)

(assert (= bs!1032934 (and d!1462721 b!4639399)))

(assert (=> bs!1032934 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195781))))

(declare-fun bs!1032935 () Bool)

(assert (= bs!1032935 (and d!1462721 d!1462695)))

(assert (=> bs!1032935 (= (= lt!1802223 lt!1802152) (= lambda!195799 lambda!195788))))

(declare-fun bs!1032936 () Bool)

(assert (= bs!1032936 (and d!1462721 b!4639406)))

(assert (=> bs!1032936 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195785))))

(assert (=> bs!1032931 (= (= lt!1802223 (ListMap!4434 Nil!51736)) (= lambda!195799 lambda!195782))))

(assert (=> d!1462721 true))

(declare-fun b!4639463 () Bool)

(declare-fun e!2894146 () Bool)

(assert (=> b!4639463 (= e!2894146 (invariantList!1254 (toList!5109 lt!1802223)))))

(declare-fun b!4639464 () Bool)

(declare-fun res!1948257 () Bool)

(assert (=> b!4639464 (=> (not res!1948257) (not e!2894146))))

(assert (=> b!4639464 (= res!1948257 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195799))))

(declare-fun e!2894148 () ListMap!4433)

(assert (=> b!4639465 (= e!2894148 lt!1802231)))

(declare-fun lt!1802234 () ListMap!4433)

(assert (=> b!4639465 (= lt!1802234 (+!1936 (ListMap!4434 Nil!51736) (h!57836 newBucket!224)))))

(assert (=> b!4639465 (= lt!1802231 (addToMapMapFromBucket!1041 (t!358940 newBucket!224) (+!1936 (ListMap!4434 Nil!51736) (h!57836 newBucket!224))))))

(declare-fun lt!1802220 () Unit!115027)

(declare-fun call!323864 () Unit!115027)

(assert (=> b!4639465 (= lt!1802220 call!323864)))

(assert (=> b!4639465 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195797)))

(declare-fun lt!1802221 () Unit!115027)

(assert (=> b!4639465 (= lt!1802221 lt!1802220)))

(declare-fun call!323863 () Bool)

(assert (=> b!4639465 call!323863))

(declare-fun lt!1802233 () Unit!115027)

(declare-fun Unit!115116 () Unit!115027)

(assert (=> b!4639465 (= lt!1802233 Unit!115116)))

(assert (=> b!4639465 (forall!10926 (t!358940 newBucket!224) lambda!195798)))

(declare-fun lt!1802236 () Unit!115027)

(declare-fun Unit!115117 () Unit!115027)

(assert (=> b!4639465 (= lt!1802236 Unit!115117)))

(declare-fun lt!1802226 () Unit!115027)

(declare-fun Unit!115118 () Unit!115027)

(assert (=> b!4639465 (= lt!1802226 Unit!115118)))

(declare-fun lt!1802237 () Unit!115027)

(assert (=> b!4639465 (= lt!1802237 (forallContained!3146 (toList!5109 lt!1802234) lambda!195798 (h!57836 newBucket!224)))))

(assert (=> b!4639465 (contains!14841 lt!1802234 (_1!29681 (h!57836 newBucket!224)))))

(declare-fun lt!1802222 () Unit!115027)

(declare-fun Unit!115119 () Unit!115027)

(assert (=> b!4639465 (= lt!1802222 Unit!115119)))

(assert (=> b!4639465 (contains!14841 lt!1802231 (_1!29681 (h!57836 newBucket!224)))))

(declare-fun lt!1802228 () Unit!115027)

(declare-fun Unit!115120 () Unit!115027)

(assert (=> b!4639465 (= lt!1802228 Unit!115120)))

(assert (=> b!4639465 (forall!10926 newBucket!224 lambda!195798)))

(declare-fun lt!1802235 () Unit!115027)

(declare-fun Unit!115121 () Unit!115027)

(assert (=> b!4639465 (= lt!1802235 Unit!115121)))

(assert (=> b!4639465 (forall!10926 (toList!5109 lt!1802234) lambda!195798)))

(declare-fun lt!1802224 () Unit!115027)

(declare-fun Unit!115122 () Unit!115027)

(assert (=> b!4639465 (= lt!1802224 Unit!115122)))

(declare-fun lt!1802232 () Unit!115027)

(declare-fun Unit!115123 () Unit!115027)

(assert (=> b!4639465 (= lt!1802232 Unit!115123)))

(declare-fun lt!1802227 () Unit!115027)

(assert (=> b!4639465 (= lt!1802227 (addForallContainsKeyThenBeforeAdding!555 (ListMap!4434 Nil!51736) lt!1802231 (_1!29681 (h!57836 newBucket!224)) (_2!29681 (h!57836 newBucket!224))))))

(assert (=> b!4639465 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195798)))

(declare-fun lt!1802225 () Unit!115027)

(assert (=> b!4639465 (= lt!1802225 lt!1802227)))

(assert (=> b!4639465 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195798)))

(declare-fun lt!1802219 () Unit!115027)

(declare-fun Unit!115124 () Unit!115027)

(assert (=> b!4639465 (= lt!1802219 Unit!115124)))

(declare-fun res!1948256 () Bool)

(declare-fun call!323862 () Bool)

(assert (=> b!4639465 (= res!1948256 call!323862)))

(declare-fun e!2894147 () Bool)

(assert (=> b!4639465 (=> (not res!1948256) (not e!2894147))))

(assert (=> b!4639465 e!2894147))

(declare-fun lt!1802230 () Unit!115027)

(declare-fun Unit!115125 () Unit!115027)

(assert (=> b!4639465 (= lt!1802230 Unit!115125)))

(declare-fun b!4639466 () Bool)

(assert (=> b!4639466 (= e!2894147 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195798))))

(declare-fun bm!323857 () Bool)

(declare-fun c!793907 () Bool)

(assert (=> bm!323857 (= call!323862 (forall!10926 (ite c!793907 (toList!5109 (ListMap!4434 Nil!51736)) newBucket!224) (ite c!793907 lambda!195796 lambda!195798)))))

(assert (=> b!4639467 (= e!2894148 (ListMap!4434 Nil!51736))))

(declare-fun lt!1802229 () Unit!115027)

(assert (=> b!4639467 (= lt!1802229 call!323864)))

(assert (=> b!4639467 call!323863))

(declare-fun lt!1802218 () Unit!115027)

(assert (=> b!4639467 (= lt!1802218 lt!1802229)))

(assert (=> b!4639467 call!323862))

(declare-fun lt!1802217 () Unit!115027)

(declare-fun Unit!115126 () Unit!115027)

(assert (=> b!4639467 (= lt!1802217 Unit!115126)))

(assert (=> d!1462721 e!2894146))

(declare-fun res!1948255 () Bool)

(assert (=> d!1462721 (=> (not res!1948255) (not e!2894146))))

(assert (=> d!1462721 (= res!1948255 (forall!10926 newBucket!224 lambda!195799))))

(assert (=> d!1462721 (= lt!1802223 e!2894148)))

(assert (=> d!1462721 (= c!793907 ((_ is Nil!51736) newBucket!224))))

(assert (=> d!1462721 (noDuplicateKeys!1582 newBucket!224)))

(assert (=> d!1462721 (= (addToMapMapFromBucket!1041 newBucket!224 (ListMap!4434 Nil!51736)) lt!1802223)))

(declare-fun bm!323858 () Bool)

(assert (=> bm!323858 (= call!323863 (forall!10926 (ite c!793907 (toList!5109 (ListMap!4434 Nil!51736)) (toList!5109 lt!1802234)) (ite c!793907 lambda!195796 lambda!195798)))))

(declare-fun bm!323859 () Bool)

(assert (=> bm!323859 (= call!323864 (lemmaContainsAllItsOwnKeys!556 (ListMap!4434 Nil!51736)))))

(assert (= (and d!1462721 c!793907) b!4639467))

(assert (= (and d!1462721 (not c!793907)) b!4639465))

(assert (= (and b!4639465 res!1948256) b!4639466))

(assert (= (or b!4639467 b!4639465) bm!323859))

(assert (= (or b!4639467 b!4639465) bm!323858))

(assert (= (or b!4639467 b!4639465) bm!323857))

(assert (= (and d!1462721 res!1948255) b!4639464))

(assert (= (and b!4639464 res!1948257) b!4639463))

(declare-fun m!5498773 () Bool)

(assert (=> b!4639466 m!5498773))

(declare-fun m!5498775 () Bool)

(assert (=> bm!323858 m!5498775))

(declare-fun m!5498777 () Bool)

(assert (=> bm!323857 m!5498777))

(declare-fun m!5498779 () Bool)

(assert (=> b!4639463 m!5498779))

(declare-fun m!5498781 () Bool)

(assert (=> d!1462721 m!5498781))

(assert (=> d!1462721 m!5498113))

(assert (=> bm!323859 m!5498609))

(declare-fun m!5498783 () Bool)

(assert (=> b!4639465 m!5498783))

(declare-fun m!5498785 () Bool)

(assert (=> b!4639465 m!5498785))

(declare-fun m!5498787 () Bool)

(assert (=> b!4639465 m!5498787))

(declare-fun m!5498789 () Bool)

(assert (=> b!4639465 m!5498789))

(assert (=> b!4639465 m!5498783))

(declare-fun m!5498791 () Bool)

(assert (=> b!4639465 m!5498791))

(declare-fun m!5498793 () Bool)

(assert (=> b!4639465 m!5498793))

(declare-fun m!5498795 () Bool)

(assert (=> b!4639465 m!5498795))

(declare-fun m!5498797 () Bool)

(assert (=> b!4639465 m!5498797))

(declare-fun m!5498799 () Bool)

(assert (=> b!4639465 m!5498799))

(assert (=> b!4639465 m!5498773))

(declare-fun m!5498801 () Bool)

(assert (=> b!4639465 m!5498801))

(assert (=> b!4639465 m!5498773))

(declare-fun m!5498803 () Bool)

(assert (=> b!4639464 m!5498803))

(assert (=> b!4639188 d!1462721))

(declare-fun bs!1032937 () Bool)

(declare-fun b!4639472 () Bool)

(assert (= bs!1032937 (and b!4639472 b!4639465)))

(declare-fun lambda!195800 () Int)

(assert (=> bs!1032937 (= lambda!195800 lambda!195797)))

(declare-fun bs!1032938 () Bool)

(assert (= bs!1032938 (and b!4639472 b!4639467)))

(assert (=> bs!1032938 (= lambda!195800 lambda!195796)))

(declare-fun bs!1032939 () Bool)

(assert (= bs!1032939 (and b!4639472 b!4639404)))

(assert (=> bs!1032939 (= (= (ListMap!4434 Nil!51736) lt!1802160) (= lambda!195800 lambda!195787))))

(declare-fun bs!1032940 () Bool)

(assert (= bs!1032940 (and b!4639472 b!4639397)))

(assert (=> bs!1032940 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195800 lambda!195783))))

(declare-fun bs!1032941 () Bool)

(assert (= bs!1032941 (and b!4639472 d!1462649)))

(assert (=> bs!1032941 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195800 lambda!195784))))

(declare-fun bs!1032942 () Bool)

(assert (= bs!1032942 (and b!4639472 d!1462609)))

(assert (=> bs!1032942 (not (= lambda!195800 lambda!195738))))

(assert (=> bs!1032937 (= (= (ListMap!4434 Nil!51736) lt!1802231) (= lambda!195800 lambda!195798))))

(assert (=> bs!1032939 (= lambda!195800 lambda!195786)))

(declare-fun bs!1032943 () Bool)

(assert (= bs!1032943 (and b!4639472 b!4639399)))

(assert (=> bs!1032943 (= lambda!195800 lambda!195781)))

(declare-fun bs!1032944 () Bool)

(assert (= bs!1032944 (and b!4639472 d!1462695)))

(assert (=> bs!1032944 (= (= (ListMap!4434 Nil!51736) lt!1802152) (= lambda!195800 lambda!195788))))

(declare-fun bs!1032945 () Bool)

(assert (= bs!1032945 (and b!4639472 d!1462721)))

(assert (=> bs!1032945 (= (= (ListMap!4434 Nil!51736) lt!1802223) (= lambda!195800 lambda!195799))))

(declare-fun bs!1032946 () Bool)

(assert (= bs!1032946 (and b!4639472 b!4639406)))

(assert (=> bs!1032946 (= lambda!195800 lambda!195785)))

(assert (=> bs!1032940 (= lambda!195800 lambda!195782)))

(assert (=> b!4639472 true))

(declare-fun bs!1032947 () Bool)

(declare-fun b!4639470 () Bool)

(assert (= bs!1032947 (and b!4639470 b!4639465)))

(declare-fun lambda!195801 () Int)

(assert (=> bs!1032947 (= lambda!195801 lambda!195797)))

(declare-fun bs!1032948 () Bool)

(assert (= bs!1032948 (and b!4639470 b!4639467)))

(assert (=> bs!1032948 (= lambda!195801 lambda!195796)))

(declare-fun bs!1032949 () Bool)

(assert (= bs!1032949 (and b!4639470 b!4639404)))

(assert (=> bs!1032949 (= (= (ListMap!4434 Nil!51736) lt!1802160) (= lambda!195801 lambda!195787))))

(declare-fun bs!1032950 () Bool)

(assert (= bs!1032950 (and b!4639470 b!4639397)))

(assert (=> bs!1032950 (= (= (ListMap!4434 Nil!51736) lt!1802139) (= lambda!195801 lambda!195783))))

(declare-fun bs!1032951 () Bool)

(assert (= bs!1032951 (and b!4639470 b!4639472)))

(assert (=> bs!1032951 (= lambda!195801 lambda!195800)))

(declare-fun bs!1032952 () Bool)

(assert (= bs!1032952 (and b!4639470 d!1462649)))

(assert (=> bs!1032952 (= (= (ListMap!4434 Nil!51736) lt!1802131) (= lambda!195801 lambda!195784))))

(declare-fun bs!1032953 () Bool)

(assert (= bs!1032953 (and b!4639470 d!1462609)))

(assert (=> bs!1032953 (not (= lambda!195801 lambda!195738))))

(assert (=> bs!1032947 (= (= (ListMap!4434 Nil!51736) lt!1802231) (= lambda!195801 lambda!195798))))

(assert (=> bs!1032949 (= lambda!195801 lambda!195786)))

(declare-fun bs!1032954 () Bool)

(assert (= bs!1032954 (and b!4639470 b!4639399)))

(assert (=> bs!1032954 (= lambda!195801 lambda!195781)))

(declare-fun bs!1032955 () Bool)

(assert (= bs!1032955 (and b!4639470 d!1462695)))

(assert (=> bs!1032955 (= (= (ListMap!4434 Nil!51736) lt!1802152) (= lambda!195801 lambda!195788))))

(declare-fun bs!1032956 () Bool)

(assert (= bs!1032956 (and b!4639470 d!1462721)))

(assert (=> bs!1032956 (= (= (ListMap!4434 Nil!51736) lt!1802223) (= lambda!195801 lambda!195799))))

(declare-fun bs!1032957 () Bool)

(assert (= bs!1032957 (and b!4639470 b!4639406)))

(assert (=> bs!1032957 (= lambda!195801 lambda!195785)))

(assert (=> bs!1032950 (= lambda!195801 lambda!195782)))

(assert (=> b!4639470 true))

(declare-fun lt!1802252 () ListMap!4433)

(declare-fun lambda!195802 () Int)

(assert (=> bs!1032947 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195797))))

(assert (=> bs!1032948 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195796))))

(assert (=> bs!1032949 (= (= lt!1802252 lt!1802160) (= lambda!195802 lambda!195787))))

(assert (=> bs!1032950 (= (= lt!1802252 lt!1802139) (= lambda!195802 lambda!195783))))

(assert (=> bs!1032951 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195800))))

(assert (=> bs!1032952 (= (= lt!1802252 lt!1802131) (= lambda!195802 lambda!195784))))

(assert (=> bs!1032953 (not (= lambda!195802 lambda!195738))))

(assert (=> bs!1032947 (= (= lt!1802252 lt!1802231) (= lambda!195802 lambda!195798))))

(assert (=> b!4639470 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195801))))

(assert (=> bs!1032949 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195786))))

(assert (=> bs!1032954 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195781))))

(assert (=> bs!1032955 (= (= lt!1802252 lt!1802152) (= lambda!195802 lambda!195788))))

(assert (=> bs!1032956 (= (= lt!1802252 lt!1802223) (= lambda!195802 lambda!195799))))

(assert (=> bs!1032957 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195785))))

(assert (=> bs!1032950 (= (= lt!1802252 (ListMap!4434 Nil!51736)) (= lambda!195802 lambda!195782))))

(assert (=> b!4639470 true))

(declare-fun bs!1032958 () Bool)

(declare-fun d!1462723 () Bool)

(assert (= bs!1032958 (and d!1462723 b!4639465)))

(declare-fun lt!1802244 () ListMap!4433)

(declare-fun lambda!195803 () Int)

(assert (=> bs!1032958 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195797))))

(declare-fun bs!1032959 () Bool)

(assert (= bs!1032959 (and d!1462723 b!4639467)))

(assert (=> bs!1032959 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195796))))

(declare-fun bs!1032960 () Bool)

(assert (= bs!1032960 (and d!1462723 b!4639404)))

(assert (=> bs!1032960 (= (= lt!1802244 lt!1802160) (= lambda!195803 lambda!195787))))

(declare-fun bs!1032961 () Bool)

(assert (= bs!1032961 (and d!1462723 b!4639397)))

(assert (=> bs!1032961 (= (= lt!1802244 lt!1802139) (= lambda!195803 lambda!195783))))

(declare-fun bs!1032962 () Bool)

(assert (= bs!1032962 (and d!1462723 b!4639472)))

(assert (=> bs!1032962 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195800))))

(declare-fun bs!1032963 () Bool)

(assert (= bs!1032963 (and d!1462723 d!1462649)))

(assert (=> bs!1032963 (= (= lt!1802244 lt!1802131) (= lambda!195803 lambda!195784))))

(declare-fun bs!1032964 () Bool)

(assert (= bs!1032964 (and d!1462723 d!1462609)))

(assert (=> bs!1032964 (not (= lambda!195803 lambda!195738))))

(assert (=> bs!1032958 (= (= lt!1802244 lt!1802231) (= lambda!195803 lambda!195798))))

(declare-fun bs!1032965 () Bool)

(assert (= bs!1032965 (and d!1462723 b!4639470)))

(assert (=> bs!1032965 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195801))))

(assert (=> bs!1032960 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195786))))

(declare-fun bs!1032966 () Bool)

(assert (= bs!1032966 (and d!1462723 b!4639399)))

(assert (=> bs!1032966 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195781))))

(declare-fun bs!1032967 () Bool)

(assert (= bs!1032967 (and d!1462723 d!1462695)))

(assert (=> bs!1032967 (= (= lt!1802244 lt!1802152) (= lambda!195803 lambda!195788))))

(declare-fun bs!1032968 () Bool)

(assert (= bs!1032968 (and d!1462723 d!1462721)))

(assert (=> bs!1032968 (= (= lt!1802244 lt!1802223) (= lambda!195803 lambda!195799))))

(declare-fun bs!1032969 () Bool)

(assert (= bs!1032969 (and d!1462723 b!4639406)))

(assert (=> bs!1032969 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195785))))

(assert (=> bs!1032961 (= (= lt!1802244 (ListMap!4434 Nil!51736)) (= lambda!195803 lambda!195782))))

(assert (=> bs!1032965 (= (= lt!1802244 lt!1802252) (= lambda!195803 lambda!195802))))

(assert (=> d!1462723 true))

(declare-fun b!4639468 () Bool)

(declare-fun e!2894149 () Bool)

(assert (=> b!4639468 (= e!2894149 (invariantList!1254 (toList!5109 lt!1802244)))))

(declare-fun b!4639469 () Bool)

(declare-fun res!1948260 () Bool)

(assert (=> b!4639469 (=> (not res!1948260) (not e!2894149))))

(assert (=> b!4639469 (= res!1948260 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195803))))

(declare-fun e!2894151 () ListMap!4433)

(assert (=> b!4639470 (= e!2894151 lt!1802252)))

(declare-fun lt!1802255 () ListMap!4433)

(assert (=> b!4639470 (= lt!1802255 (+!1936 (ListMap!4434 Nil!51736) (h!57836 lt!1801820)))))

(assert (=> b!4639470 (= lt!1802252 (addToMapMapFromBucket!1041 (t!358940 lt!1801820) (+!1936 (ListMap!4434 Nil!51736) (h!57836 lt!1801820))))))

(declare-fun lt!1802241 () Unit!115027)

(declare-fun call!323867 () Unit!115027)

(assert (=> b!4639470 (= lt!1802241 call!323867)))

(assert (=> b!4639470 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195801)))

(declare-fun lt!1802242 () Unit!115027)

(assert (=> b!4639470 (= lt!1802242 lt!1802241)))

(declare-fun call!323866 () Bool)

(assert (=> b!4639470 call!323866))

(declare-fun lt!1802254 () Unit!115027)

(declare-fun Unit!115127 () Unit!115027)

(assert (=> b!4639470 (= lt!1802254 Unit!115127)))

(assert (=> b!4639470 (forall!10926 (t!358940 lt!1801820) lambda!195802)))

(declare-fun lt!1802257 () Unit!115027)

(declare-fun Unit!115128 () Unit!115027)

(assert (=> b!4639470 (= lt!1802257 Unit!115128)))

(declare-fun lt!1802247 () Unit!115027)

(declare-fun Unit!115129 () Unit!115027)

(assert (=> b!4639470 (= lt!1802247 Unit!115129)))

(declare-fun lt!1802258 () Unit!115027)

(assert (=> b!4639470 (= lt!1802258 (forallContained!3146 (toList!5109 lt!1802255) lambda!195802 (h!57836 lt!1801820)))))

(assert (=> b!4639470 (contains!14841 lt!1802255 (_1!29681 (h!57836 lt!1801820)))))

(declare-fun lt!1802243 () Unit!115027)

(declare-fun Unit!115130 () Unit!115027)

(assert (=> b!4639470 (= lt!1802243 Unit!115130)))

(assert (=> b!4639470 (contains!14841 lt!1802252 (_1!29681 (h!57836 lt!1801820)))))

(declare-fun lt!1802249 () Unit!115027)

(declare-fun Unit!115131 () Unit!115027)

(assert (=> b!4639470 (= lt!1802249 Unit!115131)))

(assert (=> b!4639470 (forall!10926 lt!1801820 lambda!195802)))

(declare-fun lt!1802256 () Unit!115027)

(declare-fun Unit!115132 () Unit!115027)

(assert (=> b!4639470 (= lt!1802256 Unit!115132)))

(assert (=> b!4639470 (forall!10926 (toList!5109 lt!1802255) lambda!195802)))

(declare-fun lt!1802245 () Unit!115027)

(declare-fun Unit!115133 () Unit!115027)

(assert (=> b!4639470 (= lt!1802245 Unit!115133)))

(declare-fun lt!1802253 () Unit!115027)

(declare-fun Unit!115134 () Unit!115027)

(assert (=> b!4639470 (= lt!1802253 Unit!115134)))

(declare-fun lt!1802248 () Unit!115027)

(assert (=> b!4639470 (= lt!1802248 (addForallContainsKeyThenBeforeAdding!555 (ListMap!4434 Nil!51736) lt!1802252 (_1!29681 (h!57836 lt!1801820)) (_2!29681 (h!57836 lt!1801820))))))

(assert (=> b!4639470 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195802)))

(declare-fun lt!1802246 () Unit!115027)

(assert (=> b!4639470 (= lt!1802246 lt!1802248)))

(assert (=> b!4639470 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195802)))

(declare-fun lt!1802240 () Unit!115027)

(declare-fun Unit!115135 () Unit!115027)

(assert (=> b!4639470 (= lt!1802240 Unit!115135)))

(declare-fun res!1948259 () Bool)

(declare-fun call!323865 () Bool)

(assert (=> b!4639470 (= res!1948259 call!323865)))

(declare-fun e!2894150 () Bool)

(assert (=> b!4639470 (=> (not res!1948259) (not e!2894150))))

(assert (=> b!4639470 e!2894150))

(declare-fun lt!1802251 () Unit!115027)

(declare-fun Unit!115136 () Unit!115027)

(assert (=> b!4639470 (= lt!1802251 Unit!115136)))

(declare-fun b!4639471 () Bool)

(assert (=> b!4639471 (= e!2894150 (forall!10926 (toList!5109 (ListMap!4434 Nil!51736)) lambda!195802))))

(declare-fun bm!323860 () Bool)

(declare-fun c!793908 () Bool)

(assert (=> bm!323860 (= call!323865 (forall!10926 (ite c!793908 (toList!5109 (ListMap!4434 Nil!51736)) lt!1801820) (ite c!793908 lambda!195800 lambda!195802)))))

(assert (=> b!4639472 (= e!2894151 (ListMap!4434 Nil!51736))))

(declare-fun lt!1802250 () Unit!115027)

(assert (=> b!4639472 (= lt!1802250 call!323867)))

(assert (=> b!4639472 call!323866))

(declare-fun lt!1802239 () Unit!115027)

(assert (=> b!4639472 (= lt!1802239 lt!1802250)))

(assert (=> b!4639472 call!323865))

(declare-fun lt!1802238 () Unit!115027)

(declare-fun Unit!115137 () Unit!115027)

(assert (=> b!4639472 (= lt!1802238 Unit!115137)))

(assert (=> d!1462723 e!2894149))

(declare-fun res!1948258 () Bool)

(assert (=> d!1462723 (=> (not res!1948258) (not e!2894149))))

(assert (=> d!1462723 (= res!1948258 (forall!10926 lt!1801820 lambda!195803))))

(assert (=> d!1462723 (= lt!1802244 e!2894151)))

(assert (=> d!1462723 (= c!793908 ((_ is Nil!51736) lt!1801820))))

(assert (=> d!1462723 (noDuplicateKeys!1582 lt!1801820)))

(assert (=> d!1462723 (= (addToMapMapFromBucket!1041 lt!1801820 (ListMap!4434 Nil!51736)) lt!1802244)))

(declare-fun bm!323861 () Bool)

(assert (=> bm!323861 (= call!323866 (forall!10926 (ite c!793908 (toList!5109 (ListMap!4434 Nil!51736)) (toList!5109 lt!1802255)) (ite c!793908 lambda!195800 lambda!195802)))))

(declare-fun bm!323862 () Bool)

(assert (=> bm!323862 (= call!323867 (lemmaContainsAllItsOwnKeys!556 (ListMap!4434 Nil!51736)))))

(assert (= (and d!1462723 c!793908) b!4639472))

(assert (= (and d!1462723 (not c!793908)) b!4639470))

(assert (= (and b!4639470 res!1948259) b!4639471))

(assert (= (or b!4639472 b!4639470) bm!323862))

(assert (= (or b!4639472 b!4639470) bm!323861))

(assert (= (or b!4639472 b!4639470) bm!323860))

(assert (= (and d!1462723 res!1948258) b!4639469))

(assert (= (and b!4639469 res!1948260) b!4639468))

(declare-fun m!5498805 () Bool)

(assert (=> b!4639471 m!5498805))

(declare-fun m!5498807 () Bool)

(assert (=> bm!323861 m!5498807))

(declare-fun m!5498809 () Bool)

(assert (=> bm!323860 m!5498809))

(declare-fun m!5498811 () Bool)

(assert (=> b!4639468 m!5498811))

(declare-fun m!5498813 () Bool)

(assert (=> d!1462723 m!5498813))

(assert (=> d!1462723 m!5498699))

(assert (=> bm!323862 m!5498609))

(declare-fun m!5498815 () Bool)

(assert (=> b!4639470 m!5498815))

(declare-fun m!5498817 () Bool)

(assert (=> b!4639470 m!5498817))

(declare-fun m!5498819 () Bool)

(assert (=> b!4639470 m!5498819))

(declare-fun m!5498821 () Bool)

(assert (=> b!4639470 m!5498821))

(assert (=> b!4639470 m!5498815))

(declare-fun m!5498823 () Bool)

(assert (=> b!4639470 m!5498823))

(declare-fun m!5498825 () Bool)

(assert (=> b!4639470 m!5498825))

(declare-fun m!5498827 () Bool)

(assert (=> b!4639470 m!5498827))

(declare-fun m!5498829 () Bool)

(assert (=> b!4639470 m!5498829))

(declare-fun m!5498831 () Bool)

(assert (=> b!4639470 m!5498831))

(assert (=> b!4639470 m!5498805))

(declare-fun m!5498833 () Bool)

(assert (=> b!4639470 m!5498833))

(assert (=> b!4639470 m!5498805))

(declare-fun m!5498835 () Bool)

(assert (=> b!4639469 m!5498835))

(assert (=> b!4639188 d!1462723))

(declare-fun bs!1032970 () Bool)

(declare-fun d!1462725 () Bool)

(assert (= bs!1032970 (and d!1462725 b!4639465)))

(declare-fun lambda!195804 () Int)

(assert (=> bs!1032970 (not (= lambda!195804 lambda!195797))))

(declare-fun bs!1032971 () Bool)

(assert (= bs!1032971 (and d!1462725 b!4639467)))

(assert (=> bs!1032971 (not (= lambda!195804 lambda!195796))))

(declare-fun bs!1032972 () Bool)

(assert (= bs!1032972 (and d!1462725 b!4639404)))

(assert (=> bs!1032972 (not (= lambda!195804 lambda!195787))))

(declare-fun bs!1032973 () Bool)

(assert (= bs!1032973 (and d!1462725 b!4639397)))

(assert (=> bs!1032973 (not (= lambda!195804 lambda!195783))))

(declare-fun bs!1032974 () Bool)

(assert (= bs!1032974 (and d!1462725 b!4639472)))

(assert (=> bs!1032974 (not (= lambda!195804 lambda!195800))))

(declare-fun bs!1032975 () Bool)

(assert (= bs!1032975 (and d!1462725 d!1462649)))

(assert (=> bs!1032975 (not (= lambda!195804 lambda!195784))))

(declare-fun bs!1032976 () Bool)

(assert (= bs!1032976 (and d!1462725 d!1462609)))

(assert (=> bs!1032976 (= lambda!195804 lambda!195738)))

(assert (=> bs!1032970 (not (= lambda!195804 lambda!195798))))

(assert (=> bs!1032972 (not (= lambda!195804 lambda!195786))))

(declare-fun bs!1032977 () Bool)

(assert (= bs!1032977 (and d!1462725 b!4639399)))

(assert (=> bs!1032977 (not (= lambda!195804 lambda!195781))))

(declare-fun bs!1032978 () Bool)

(assert (= bs!1032978 (and d!1462725 d!1462695)))

(assert (=> bs!1032978 (not (= lambda!195804 lambda!195788))))

(declare-fun bs!1032979 () Bool)

(assert (= bs!1032979 (and d!1462725 d!1462721)))

(assert (=> bs!1032979 (not (= lambda!195804 lambda!195799))))

(declare-fun bs!1032980 () Bool)

(assert (= bs!1032980 (and d!1462725 b!4639470)))

(assert (=> bs!1032980 (not (= lambda!195804 lambda!195801))))

(declare-fun bs!1032981 () Bool)

(assert (= bs!1032981 (and d!1462725 d!1462723)))

(assert (=> bs!1032981 (not (= lambda!195804 lambda!195803))))

(declare-fun bs!1032982 () Bool)

(assert (= bs!1032982 (and d!1462725 b!4639406)))

(assert (=> bs!1032982 (not (= lambda!195804 lambda!195785))))

(assert (=> bs!1032973 (not (= lambda!195804 lambda!195782))))

(assert (=> bs!1032980 (not (= lambda!195804 lambda!195802))))

(assert (=> d!1462725 true))

(assert (=> d!1462725 true))

(assert (=> d!1462725 (= (allKeysSameHash!1436 oldBucket!40 hash!414 hashF!1389) (forall!10926 oldBucket!40 lambda!195804))))

(declare-fun bs!1032983 () Bool)

(assert (= bs!1032983 d!1462725))

(declare-fun m!5498837 () Bool)

(assert (=> bs!1032983 m!5498837))

(assert (=> b!4639190 d!1462725))

(declare-fun bs!1032984 () Bool)

(declare-fun b!4639477 () Bool)

(assert (= bs!1032984 (and b!4639477 b!4639465)))

(declare-fun lambda!195805 () Int)

(assert (=> bs!1032984 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195797))))

(declare-fun bs!1032985 () Bool)

(assert (= bs!1032985 (and b!4639477 b!4639467)))

(assert (=> bs!1032985 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195796))))

(declare-fun bs!1032986 () Bool)

(assert (= bs!1032986 (and b!4639477 b!4639404)))

(assert (=> bs!1032986 (= (= lt!1801814 lt!1802160) (= lambda!195805 lambda!195787))))

(declare-fun bs!1032987 () Bool)

(assert (= bs!1032987 (and b!4639477 b!4639397)))

(assert (=> bs!1032987 (= (= lt!1801814 lt!1802139) (= lambda!195805 lambda!195783))))

(declare-fun bs!1032988 () Bool)

(assert (= bs!1032988 (and b!4639477 b!4639472)))

(assert (=> bs!1032988 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195800))))

(declare-fun bs!1032989 () Bool)

(assert (= bs!1032989 (and b!4639477 d!1462649)))

(assert (=> bs!1032989 (= (= lt!1801814 lt!1802131) (= lambda!195805 lambda!195784))))

(declare-fun bs!1032990 () Bool)

(assert (= bs!1032990 (and b!4639477 d!1462609)))

(assert (=> bs!1032990 (not (= lambda!195805 lambda!195738))))

(assert (=> bs!1032984 (= (= lt!1801814 lt!1802231) (= lambda!195805 lambda!195798))))

(declare-fun bs!1032991 () Bool)

(assert (= bs!1032991 (and b!4639477 d!1462725)))

(assert (=> bs!1032991 (not (= lambda!195805 lambda!195804))))

(assert (=> bs!1032986 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195786))))

(declare-fun bs!1032992 () Bool)

(assert (= bs!1032992 (and b!4639477 b!4639399)))

(assert (=> bs!1032992 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195781))))

(declare-fun bs!1032993 () Bool)

(assert (= bs!1032993 (and b!4639477 d!1462695)))

(assert (=> bs!1032993 (= (= lt!1801814 lt!1802152) (= lambda!195805 lambda!195788))))

(declare-fun bs!1032994 () Bool)

(assert (= bs!1032994 (and b!4639477 d!1462721)))

(assert (=> bs!1032994 (= (= lt!1801814 lt!1802223) (= lambda!195805 lambda!195799))))

(declare-fun bs!1032995 () Bool)

(assert (= bs!1032995 (and b!4639477 b!4639470)))

(assert (=> bs!1032995 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195801))))

(declare-fun bs!1032996 () Bool)

(assert (= bs!1032996 (and b!4639477 d!1462723)))

(assert (=> bs!1032996 (= (= lt!1801814 lt!1802244) (= lambda!195805 lambda!195803))))

(declare-fun bs!1032997 () Bool)

(assert (= bs!1032997 (and b!4639477 b!4639406)))

(assert (=> bs!1032997 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195785))))

(assert (=> bs!1032987 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195805 lambda!195782))))

(assert (=> bs!1032995 (= (= lt!1801814 lt!1802252) (= lambda!195805 lambda!195802))))

(assert (=> b!4639477 true))

(declare-fun bs!1032998 () Bool)

(declare-fun b!4639475 () Bool)

(assert (= bs!1032998 (and b!4639475 b!4639465)))

(declare-fun lambda!195806 () Int)

(assert (=> bs!1032998 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195797))))

(declare-fun bs!1032999 () Bool)

(assert (= bs!1032999 (and b!4639475 b!4639467)))

(assert (=> bs!1032999 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195796))))

(declare-fun bs!1033000 () Bool)

(assert (= bs!1033000 (and b!4639475 b!4639404)))

(assert (=> bs!1033000 (= (= lt!1801814 lt!1802160) (= lambda!195806 lambda!195787))))

(declare-fun bs!1033001 () Bool)

(assert (= bs!1033001 (and b!4639475 b!4639397)))

(assert (=> bs!1033001 (= (= lt!1801814 lt!1802139) (= lambda!195806 lambda!195783))))

(declare-fun bs!1033002 () Bool)

(assert (= bs!1033002 (and b!4639475 b!4639472)))

(assert (=> bs!1033002 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195800))))

(declare-fun bs!1033003 () Bool)

(assert (= bs!1033003 (and b!4639475 d!1462649)))

(assert (=> bs!1033003 (= (= lt!1801814 lt!1802131) (= lambda!195806 lambda!195784))))

(declare-fun bs!1033004 () Bool)

(assert (= bs!1033004 (and b!4639475 d!1462609)))

(assert (=> bs!1033004 (not (= lambda!195806 lambda!195738))))

(declare-fun bs!1033005 () Bool)

(assert (= bs!1033005 (and b!4639475 b!4639477)))

(assert (=> bs!1033005 (= lambda!195806 lambda!195805)))

(assert (=> bs!1032998 (= (= lt!1801814 lt!1802231) (= lambda!195806 lambda!195798))))

(declare-fun bs!1033006 () Bool)

(assert (= bs!1033006 (and b!4639475 d!1462725)))

(assert (=> bs!1033006 (not (= lambda!195806 lambda!195804))))

(assert (=> bs!1033000 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195786))))

(declare-fun bs!1033007 () Bool)

(assert (= bs!1033007 (and b!4639475 b!4639399)))

(assert (=> bs!1033007 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195781))))

(declare-fun bs!1033008 () Bool)

(assert (= bs!1033008 (and b!4639475 d!1462695)))

(assert (=> bs!1033008 (= (= lt!1801814 lt!1802152) (= lambda!195806 lambda!195788))))

(declare-fun bs!1033009 () Bool)

(assert (= bs!1033009 (and b!4639475 d!1462721)))

(assert (=> bs!1033009 (= (= lt!1801814 lt!1802223) (= lambda!195806 lambda!195799))))

(declare-fun bs!1033010 () Bool)

(assert (= bs!1033010 (and b!4639475 b!4639470)))

(assert (=> bs!1033010 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195801))))

(declare-fun bs!1033011 () Bool)

(assert (= bs!1033011 (and b!4639475 d!1462723)))

(assert (=> bs!1033011 (= (= lt!1801814 lt!1802244) (= lambda!195806 lambda!195803))))

(declare-fun bs!1033012 () Bool)

(assert (= bs!1033012 (and b!4639475 b!4639406)))

(assert (=> bs!1033012 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195785))))

(assert (=> bs!1033001 (= (= lt!1801814 (ListMap!4434 Nil!51736)) (= lambda!195806 lambda!195782))))

(assert (=> bs!1033010 (= (= lt!1801814 lt!1802252) (= lambda!195806 lambda!195802))))

(assert (=> b!4639475 true))

(declare-fun lt!1802273 () ListMap!4433)

(declare-fun lambda!195807 () Int)

(assert (=> bs!1032998 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195797))))

(assert (=> bs!1032999 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195796))))

(assert (=> bs!1033000 (= (= lt!1802273 lt!1802160) (= lambda!195807 lambda!195787))))

(assert (=> bs!1033001 (= (= lt!1802273 lt!1802139) (= lambda!195807 lambda!195783))))

(assert (=> bs!1033002 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195800))))

(assert (=> bs!1033003 (= (= lt!1802273 lt!1802131) (= lambda!195807 lambda!195784))))

(assert (=> bs!1033004 (not (= lambda!195807 lambda!195738))))

(assert (=> bs!1033005 (= (= lt!1802273 lt!1801814) (= lambda!195807 lambda!195805))))

(assert (=> bs!1032998 (= (= lt!1802273 lt!1802231) (= lambda!195807 lambda!195798))))

(assert (=> bs!1033006 (not (= lambda!195807 lambda!195804))))

(assert (=> bs!1033000 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195786))))

(assert (=> b!4639475 (= (= lt!1802273 lt!1801814) (= lambda!195807 lambda!195806))))

(assert (=> bs!1033007 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195781))))

(assert (=> bs!1033008 (= (= lt!1802273 lt!1802152) (= lambda!195807 lambda!195788))))

(assert (=> bs!1033009 (= (= lt!1802273 lt!1802223) (= lambda!195807 lambda!195799))))

(assert (=> bs!1033010 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195801))))

(assert (=> bs!1033011 (= (= lt!1802273 lt!1802244) (= lambda!195807 lambda!195803))))

(assert (=> bs!1033012 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195785))))

(assert (=> bs!1033001 (= (= lt!1802273 (ListMap!4434 Nil!51736)) (= lambda!195807 lambda!195782))))

(assert (=> bs!1033010 (= (= lt!1802273 lt!1802252) (= lambda!195807 lambda!195802))))

(assert (=> b!4639475 true))

(declare-fun bs!1033013 () Bool)

(declare-fun d!1462727 () Bool)

(assert (= bs!1033013 (and d!1462727 b!4639465)))

(declare-fun lt!1802265 () ListMap!4433)

(declare-fun lambda!195808 () Int)

(assert (=> bs!1033013 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195797))))

(declare-fun bs!1033014 () Bool)

(assert (= bs!1033014 (and d!1462727 b!4639467)))

(assert (=> bs!1033014 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195796))))

(declare-fun bs!1033015 () Bool)

(assert (= bs!1033015 (and d!1462727 b!4639404)))

(assert (=> bs!1033015 (= (= lt!1802265 lt!1802160) (= lambda!195808 lambda!195787))))

(declare-fun bs!1033016 () Bool)

(assert (= bs!1033016 (and d!1462727 b!4639472)))

(assert (=> bs!1033016 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195800))))

(declare-fun bs!1033017 () Bool)

(assert (= bs!1033017 (and d!1462727 d!1462649)))

(assert (=> bs!1033017 (= (= lt!1802265 lt!1802131) (= lambda!195808 lambda!195784))))

(declare-fun bs!1033018 () Bool)

(assert (= bs!1033018 (and d!1462727 d!1462609)))

(assert (=> bs!1033018 (not (= lambda!195808 lambda!195738))))

(declare-fun bs!1033019 () Bool)

(assert (= bs!1033019 (and d!1462727 b!4639477)))

(assert (=> bs!1033019 (= (= lt!1802265 lt!1801814) (= lambda!195808 lambda!195805))))

(assert (=> bs!1033013 (= (= lt!1802265 lt!1802231) (= lambda!195808 lambda!195798))))

(declare-fun bs!1033020 () Bool)

(assert (= bs!1033020 (and d!1462727 d!1462725)))

(assert (=> bs!1033020 (not (= lambda!195808 lambda!195804))))

(assert (=> bs!1033015 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195786))))

(declare-fun bs!1033021 () Bool)

(assert (= bs!1033021 (and d!1462727 b!4639475)))

(assert (=> bs!1033021 (= (= lt!1802265 lt!1801814) (= lambda!195808 lambda!195806))))

(assert (=> bs!1033021 (= (= lt!1802265 lt!1802273) (= lambda!195808 lambda!195807))))

(declare-fun bs!1033022 () Bool)

(assert (= bs!1033022 (and d!1462727 b!4639397)))

(assert (=> bs!1033022 (= (= lt!1802265 lt!1802139) (= lambda!195808 lambda!195783))))

(declare-fun bs!1033023 () Bool)

(assert (= bs!1033023 (and d!1462727 b!4639399)))

(assert (=> bs!1033023 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195781))))

(declare-fun bs!1033024 () Bool)

(assert (= bs!1033024 (and d!1462727 d!1462695)))

(assert (=> bs!1033024 (= (= lt!1802265 lt!1802152) (= lambda!195808 lambda!195788))))

(declare-fun bs!1033025 () Bool)

(assert (= bs!1033025 (and d!1462727 d!1462721)))

(assert (=> bs!1033025 (= (= lt!1802265 lt!1802223) (= lambda!195808 lambda!195799))))

(declare-fun bs!1033026 () Bool)

(assert (= bs!1033026 (and d!1462727 b!4639470)))

(assert (=> bs!1033026 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195801))))

(declare-fun bs!1033027 () Bool)

(assert (= bs!1033027 (and d!1462727 d!1462723)))

(assert (=> bs!1033027 (= (= lt!1802265 lt!1802244) (= lambda!195808 lambda!195803))))

(declare-fun bs!1033028 () Bool)

(assert (= bs!1033028 (and d!1462727 b!4639406)))

(assert (=> bs!1033028 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195785))))

(assert (=> bs!1033022 (= (= lt!1802265 (ListMap!4434 Nil!51736)) (= lambda!195808 lambda!195782))))

(assert (=> bs!1033026 (= (= lt!1802265 lt!1802252) (= lambda!195808 lambda!195802))))

(assert (=> d!1462727 true))

(declare-fun b!4639473 () Bool)

(declare-fun e!2894152 () Bool)

(assert (=> b!4639473 (= e!2894152 (invariantList!1254 (toList!5109 lt!1802265)))))

(declare-fun b!4639474 () Bool)

(declare-fun res!1948263 () Bool)

(assert (=> b!4639474 (=> (not res!1948263) (not e!2894152))))

(assert (=> b!4639474 (= res!1948263 (forall!10926 (toList!5109 lt!1801814) lambda!195808))))

(declare-fun e!2894154 () ListMap!4433)

(assert (=> b!4639475 (= e!2894154 lt!1802273)))

(declare-fun lt!1802276 () ListMap!4433)

(assert (=> b!4639475 (= lt!1802276 (+!1936 lt!1801814 (h!57836 oldBucket!40)))))

(assert (=> b!4639475 (= lt!1802273 (addToMapMapFromBucket!1041 (t!358940 oldBucket!40) (+!1936 lt!1801814 (h!57836 oldBucket!40))))))

(declare-fun lt!1802262 () Unit!115027)

(declare-fun call!323870 () Unit!115027)

(assert (=> b!4639475 (= lt!1802262 call!323870)))

(assert (=> b!4639475 (forall!10926 (toList!5109 lt!1801814) lambda!195806)))

(declare-fun lt!1802263 () Unit!115027)

(assert (=> b!4639475 (= lt!1802263 lt!1802262)))

(declare-fun call!323869 () Bool)

(assert (=> b!4639475 call!323869))

(declare-fun lt!1802275 () Unit!115027)

(declare-fun Unit!115138 () Unit!115027)

(assert (=> b!4639475 (= lt!1802275 Unit!115138)))

(assert (=> b!4639475 (forall!10926 (t!358940 oldBucket!40) lambda!195807)))

(declare-fun lt!1802278 () Unit!115027)

(declare-fun Unit!115139 () Unit!115027)

(assert (=> b!4639475 (= lt!1802278 Unit!115139)))

(declare-fun lt!1802268 () Unit!115027)

(declare-fun Unit!115140 () Unit!115027)

(assert (=> b!4639475 (= lt!1802268 Unit!115140)))

(declare-fun lt!1802279 () Unit!115027)

(assert (=> b!4639475 (= lt!1802279 (forallContained!3146 (toList!5109 lt!1802276) lambda!195807 (h!57836 oldBucket!40)))))

(assert (=> b!4639475 (contains!14841 lt!1802276 (_1!29681 (h!57836 oldBucket!40)))))

(declare-fun lt!1802264 () Unit!115027)

(declare-fun Unit!115141 () Unit!115027)

(assert (=> b!4639475 (= lt!1802264 Unit!115141)))

(assert (=> b!4639475 (contains!14841 lt!1802273 (_1!29681 (h!57836 oldBucket!40)))))

(declare-fun lt!1802270 () Unit!115027)

(declare-fun Unit!115142 () Unit!115027)

(assert (=> b!4639475 (= lt!1802270 Unit!115142)))

(assert (=> b!4639475 (forall!10926 oldBucket!40 lambda!195807)))

(declare-fun lt!1802277 () Unit!115027)

(declare-fun Unit!115143 () Unit!115027)

(assert (=> b!4639475 (= lt!1802277 Unit!115143)))

(assert (=> b!4639475 (forall!10926 (toList!5109 lt!1802276) lambda!195807)))

(declare-fun lt!1802266 () Unit!115027)

(declare-fun Unit!115144 () Unit!115027)

(assert (=> b!4639475 (= lt!1802266 Unit!115144)))

(declare-fun lt!1802274 () Unit!115027)

(declare-fun Unit!115145 () Unit!115027)

(assert (=> b!4639475 (= lt!1802274 Unit!115145)))

(declare-fun lt!1802269 () Unit!115027)

(assert (=> b!4639475 (= lt!1802269 (addForallContainsKeyThenBeforeAdding!555 lt!1801814 lt!1802273 (_1!29681 (h!57836 oldBucket!40)) (_2!29681 (h!57836 oldBucket!40))))))

(assert (=> b!4639475 (forall!10926 (toList!5109 lt!1801814) lambda!195807)))

(declare-fun lt!1802267 () Unit!115027)

(assert (=> b!4639475 (= lt!1802267 lt!1802269)))

(assert (=> b!4639475 (forall!10926 (toList!5109 lt!1801814) lambda!195807)))

(declare-fun lt!1802261 () Unit!115027)

(declare-fun Unit!115146 () Unit!115027)

(assert (=> b!4639475 (= lt!1802261 Unit!115146)))

(declare-fun res!1948262 () Bool)

(declare-fun call!323868 () Bool)

(assert (=> b!4639475 (= res!1948262 call!323868)))

(declare-fun e!2894153 () Bool)

(assert (=> b!4639475 (=> (not res!1948262) (not e!2894153))))

(assert (=> b!4639475 e!2894153))

(declare-fun lt!1802272 () Unit!115027)

(declare-fun Unit!115147 () Unit!115027)

(assert (=> b!4639475 (= lt!1802272 Unit!115147)))

(declare-fun b!4639476 () Bool)

(assert (=> b!4639476 (= e!2894153 (forall!10926 (toList!5109 lt!1801814) lambda!195807))))

(declare-fun bm!323863 () Bool)

(declare-fun c!793909 () Bool)

(assert (=> bm!323863 (= call!323868 (forall!10926 (ite c!793909 (toList!5109 lt!1801814) oldBucket!40) (ite c!793909 lambda!195805 lambda!195807)))))

(assert (=> b!4639477 (= e!2894154 lt!1801814)))

(declare-fun lt!1802271 () Unit!115027)

(assert (=> b!4639477 (= lt!1802271 call!323870)))

(assert (=> b!4639477 call!323869))

(declare-fun lt!1802260 () Unit!115027)

(assert (=> b!4639477 (= lt!1802260 lt!1802271)))

(assert (=> b!4639477 call!323868))

(declare-fun lt!1802259 () Unit!115027)

(declare-fun Unit!115148 () Unit!115027)

(assert (=> b!4639477 (= lt!1802259 Unit!115148)))

(assert (=> d!1462727 e!2894152))

(declare-fun res!1948261 () Bool)

(assert (=> d!1462727 (=> (not res!1948261) (not e!2894152))))

(assert (=> d!1462727 (= res!1948261 (forall!10926 oldBucket!40 lambda!195808))))

(assert (=> d!1462727 (= lt!1802265 e!2894154)))

(assert (=> d!1462727 (= c!793909 ((_ is Nil!51736) oldBucket!40))))

(assert (=> d!1462727 (noDuplicateKeys!1582 oldBucket!40)))

(assert (=> d!1462727 (= (addToMapMapFromBucket!1041 oldBucket!40 lt!1801814) lt!1802265)))

(declare-fun bm!323864 () Bool)

(assert (=> bm!323864 (= call!323869 (forall!10926 (ite c!793909 (toList!5109 lt!1801814) (toList!5109 lt!1802276)) (ite c!793909 lambda!195805 lambda!195807)))))

(declare-fun bm!323865 () Bool)

(assert (=> bm!323865 (= call!323870 (lemmaContainsAllItsOwnKeys!556 lt!1801814))))

(assert (= (and d!1462727 c!793909) b!4639477))

(assert (= (and d!1462727 (not c!793909)) b!4639475))

(assert (= (and b!4639475 res!1948262) b!4639476))

(assert (= (or b!4639477 b!4639475) bm!323865))

(assert (= (or b!4639477 b!4639475) bm!323864))

(assert (= (or b!4639477 b!4639475) bm!323863))

(assert (= (and d!1462727 res!1948261) b!4639474))

(assert (= (and b!4639474 res!1948263) b!4639473))

(declare-fun m!5498839 () Bool)

(assert (=> b!4639476 m!5498839))

(declare-fun m!5498841 () Bool)

(assert (=> bm!323864 m!5498841))

(declare-fun m!5498843 () Bool)

(assert (=> bm!323863 m!5498843))

(declare-fun m!5498845 () Bool)

(assert (=> b!4639473 m!5498845))

(declare-fun m!5498847 () Bool)

(assert (=> d!1462727 m!5498847))

(assert (=> d!1462727 m!5498133))

(declare-fun m!5498849 () Bool)

(assert (=> bm!323865 m!5498849))

(declare-fun m!5498851 () Bool)

(assert (=> b!4639475 m!5498851))

(declare-fun m!5498853 () Bool)

(assert (=> b!4639475 m!5498853))

(declare-fun m!5498855 () Bool)

(assert (=> b!4639475 m!5498855))

(declare-fun m!5498857 () Bool)

(assert (=> b!4639475 m!5498857))

(assert (=> b!4639475 m!5498851))

(declare-fun m!5498859 () Bool)

(assert (=> b!4639475 m!5498859))

(declare-fun m!5498861 () Bool)

(assert (=> b!4639475 m!5498861))

(declare-fun m!5498863 () Bool)

(assert (=> b!4639475 m!5498863))

(declare-fun m!5498865 () Bool)

(assert (=> b!4639475 m!5498865))

(declare-fun m!5498867 () Bool)

(assert (=> b!4639475 m!5498867))

(assert (=> b!4639475 m!5498839))

(declare-fun m!5498869 () Bool)

(assert (=> b!4639475 m!5498869))

(assert (=> b!4639475 m!5498839))

(declare-fun m!5498871 () Bool)

(assert (=> b!4639474 m!5498871))

(assert (=> b!4639200 d!1462727))

(declare-fun bs!1033029 () Bool)

(declare-fun d!1462729 () Bool)

(assert (= bs!1033029 (and d!1462729 d!1462707)))

(declare-fun lambda!195809 () Int)

(assert (=> bs!1033029 (= lambda!195809 lambda!195791)))

(declare-fun bs!1033030 () Bool)

(assert (= bs!1033030 (and d!1462729 d!1462709)))

(assert (=> bs!1033030 (= lambda!195809 lambda!195792)))

(declare-fun bs!1033031 () Bool)

(assert (= bs!1033031 (and d!1462729 d!1462715)))

(assert (=> bs!1033031 (= lambda!195809 lambda!195795)))

(declare-fun lt!1802280 () ListMap!4433)

(assert (=> d!1462729 (invariantList!1254 (toList!5109 lt!1802280))))

(declare-fun e!2894155 () ListMap!4433)

(assert (=> d!1462729 (= lt!1802280 e!2894155)))

(declare-fun c!793910 () Bool)

(assert (=> d!1462729 (= c!793910 ((_ is Cons!51737) Nil!51737))))

(assert (=> d!1462729 (forall!10928 Nil!51737 lambda!195809)))

(assert (=> d!1462729 (= (extractMap!1638 Nil!51737) lt!1802280)))

(declare-fun b!4639478 () Bool)

(assert (=> b!4639478 (= e!2894155 (addToMapMapFromBucket!1041 (_2!29682 (h!57837 Nil!51737)) (extractMap!1638 (t!358941 Nil!51737))))))

(declare-fun b!4639479 () Bool)

(assert (=> b!4639479 (= e!2894155 (ListMap!4434 Nil!51736))))

(assert (= (and d!1462729 c!793910) b!4639478))

(assert (= (and d!1462729 (not c!793910)) b!4639479))

(declare-fun m!5498873 () Bool)

(assert (=> d!1462729 m!5498873))

(declare-fun m!5498875 () Bool)

(assert (=> d!1462729 m!5498875))

(declare-fun m!5498877 () Bool)

(assert (=> b!4639478 m!5498877))

(assert (=> b!4639478 m!5498877))

(declare-fun m!5498879 () Bool)

(assert (=> b!4639478 m!5498879))

(assert (=> b!4639200 d!1462729))

(declare-fun b!4639480 () Bool)

(declare-fun e!2894160 () List!51862)

(assert (=> b!4639480 (= e!2894160 (getKeysList!705 (toList!5109 lt!1801819)))))

(declare-fun b!4639481 () Bool)

(declare-fun e!2894156 () Unit!115027)

(declare-fun Unit!115149 () Unit!115027)

(assert (=> b!4639481 (= e!2894156 Unit!115149)))

(declare-fun bm!323866 () Bool)

(declare-fun call!323871 () Bool)

(assert (=> bm!323866 (= call!323871 (contains!14845 e!2894160 key!4968))))

(declare-fun c!793911 () Bool)

(declare-fun c!793913 () Bool)

(assert (=> bm!323866 (= c!793911 c!793913)))

(declare-fun d!1462731 () Bool)

(declare-fun e!2894161 () Bool)

(assert (=> d!1462731 e!2894161))

(declare-fun res!1948264 () Bool)

(assert (=> d!1462731 (=> res!1948264 e!2894161)))

(declare-fun e!2894158 () Bool)

(assert (=> d!1462731 (= res!1948264 e!2894158)))

(declare-fun res!1948266 () Bool)

(assert (=> d!1462731 (=> (not res!1948266) (not e!2894158))))

(declare-fun lt!1802286 () Bool)

(assert (=> d!1462731 (= res!1948266 (not lt!1802286))))

(declare-fun lt!1802284 () Bool)

(assert (=> d!1462731 (= lt!1802286 lt!1802284)))

(declare-fun lt!1802282 () Unit!115027)

(declare-fun e!2894157 () Unit!115027)

(assert (=> d!1462731 (= lt!1802282 e!2894157)))

(assert (=> d!1462731 (= c!793913 lt!1802284)))

(assert (=> d!1462731 (= lt!1802284 (containsKey!2604 (toList!5109 lt!1801819) key!4968))))

(assert (=> d!1462731 (= (contains!14841 lt!1801819 key!4968) lt!1802286)))

(declare-fun b!4639482 () Bool)

(declare-fun lt!1802288 () Unit!115027)

(assert (=> b!4639482 (= e!2894157 lt!1802288)))

(declare-fun lt!1802285 () Unit!115027)

(assert (=> b!4639482 (= lt!1802285 (lemmaContainsKeyImpliesGetValueByKeyDefined!1444 (toList!5109 lt!1801819) key!4968))))

(assert (=> b!4639482 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801819) key!4968))))

(declare-fun lt!1802281 () Unit!115027)

(assert (=> b!4639482 (= lt!1802281 lt!1802285)))

(assert (=> b!4639482 (= lt!1802288 (lemmaInListThenGetKeysListContains!700 (toList!5109 lt!1801819) key!4968))))

(assert (=> b!4639482 call!323871))

(declare-fun b!4639483 () Bool)

(assert (=> b!4639483 false))

(declare-fun lt!1802283 () Unit!115027)

(declare-fun lt!1802287 () Unit!115027)

(assert (=> b!4639483 (= lt!1802283 lt!1802287)))

(assert (=> b!4639483 (containsKey!2604 (toList!5109 lt!1801819) key!4968)))

(assert (=> b!4639483 (= lt!1802287 (lemmaInGetKeysListThenContainsKey!704 (toList!5109 lt!1801819) key!4968))))

(declare-fun Unit!115150 () Unit!115027)

(assert (=> b!4639483 (= e!2894156 Unit!115150)))

(declare-fun b!4639484 () Bool)

(assert (=> b!4639484 (= e!2894157 e!2894156)))

(declare-fun c!793912 () Bool)

(assert (=> b!4639484 (= c!793912 call!323871)))

(declare-fun b!4639485 () Bool)

(assert (=> b!4639485 (= e!2894158 (not (contains!14845 (keys!18279 lt!1801819) key!4968)))))

(declare-fun b!4639486 () Bool)

(declare-fun e!2894159 () Bool)

(assert (=> b!4639486 (= e!2894159 (contains!14845 (keys!18279 lt!1801819) key!4968))))

(declare-fun b!4639487 () Bool)

(assert (=> b!4639487 (= e!2894161 e!2894159)))

(declare-fun res!1948265 () Bool)

(assert (=> b!4639487 (=> (not res!1948265) (not e!2894159))))

(assert (=> b!4639487 (= res!1948265 (isDefined!8991 (getValueByKey!1542 (toList!5109 lt!1801819) key!4968)))))

(declare-fun b!4639488 () Bool)

(assert (=> b!4639488 (= e!2894160 (keys!18279 lt!1801819))))

(assert (= (and d!1462731 c!793913) b!4639482))

(assert (= (and d!1462731 (not c!793913)) b!4639484))

(assert (= (and b!4639484 c!793912) b!4639483))

(assert (= (and b!4639484 (not c!793912)) b!4639481))

(assert (= (or b!4639482 b!4639484) bm!323866))

(assert (= (and bm!323866 c!793911) b!4639480))

(assert (= (and bm!323866 (not c!793911)) b!4639488))

(assert (= (and d!1462731 res!1948266) b!4639485))

(assert (= (and d!1462731 (not res!1948264)) b!4639487))

(assert (= (and b!4639487 res!1948265) b!4639486))

(declare-fun m!5498881 () Bool)

(assert (=> b!4639482 m!5498881))

(declare-fun m!5498883 () Bool)

(assert (=> b!4639482 m!5498883))

(assert (=> b!4639482 m!5498883))

(declare-fun m!5498885 () Bool)

(assert (=> b!4639482 m!5498885))

(declare-fun m!5498887 () Bool)

(assert (=> b!4639482 m!5498887))

(declare-fun m!5498889 () Bool)

(assert (=> d!1462731 m!5498889))

(assert (=> b!4639486 m!5498379))

(assert (=> b!4639486 m!5498379))

(declare-fun m!5498891 () Bool)

(assert (=> b!4639486 m!5498891))

(assert (=> b!4639487 m!5498883))

(assert (=> b!4639487 m!5498883))

(assert (=> b!4639487 m!5498885))

(assert (=> b!4639483 m!5498889))

(declare-fun m!5498893 () Bool)

(assert (=> b!4639483 m!5498893))

(declare-fun m!5498895 () Bool)

(assert (=> b!4639480 m!5498895))

(assert (=> b!4639485 m!5498379))

(assert (=> b!4639485 m!5498379))

(assert (=> b!4639485 m!5498891))

(declare-fun m!5498897 () Bool)

(assert (=> bm!323866 m!5498897))

(assert (=> b!4639488 m!5498379))

(assert (=> b!4639191 d!1462731))

(declare-fun bs!1033032 () Bool)

(declare-fun d!1462733 () Bool)

(assert (= bs!1033032 (and d!1462733 d!1462707)))

(declare-fun lambda!195810 () Int)

(assert (=> bs!1033032 (= lambda!195810 lambda!195791)))

(declare-fun bs!1033033 () Bool)

(assert (= bs!1033033 (and d!1462733 d!1462709)))

(assert (=> bs!1033033 (= lambda!195810 lambda!195792)))

(declare-fun bs!1033034 () Bool)

(assert (= bs!1033034 (and d!1462733 d!1462715)))

(assert (=> bs!1033034 (= lambda!195810 lambda!195795)))

(declare-fun bs!1033035 () Bool)

(assert (= bs!1033035 (and d!1462733 d!1462729)))

(assert (=> bs!1033035 (= lambda!195810 lambda!195809)))

(declare-fun lt!1802289 () ListMap!4433)

(assert (=> d!1462733 (invariantList!1254 (toList!5109 lt!1802289))))

(declare-fun e!2894162 () ListMap!4433)

(assert (=> d!1462733 (= lt!1802289 e!2894162)))

(declare-fun c!793914 () Bool)

(assert (=> d!1462733 (= c!793914 ((_ is Cons!51737) (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737)))))

(assert (=> d!1462733 (forall!10928 (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737) lambda!195810)))

(assert (=> d!1462733 (= (extractMap!1638 (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737)) lt!1802289)))

(declare-fun b!4639489 () Bool)

(assert (=> b!4639489 (= e!2894162 (addToMapMapFromBucket!1041 (_2!29682 (h!57837 (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737))) (extractMap!1638 (t!358941 (Cons!51737 (tuple2!52777 hash!414 oldBucket!40) Nil!51737)))))))

(declare-fun b!4639490 () Bool)

(assert (=> b!4639490 (= e!2894162 (ListMap!4434 Nil!51736))))

(assert (= (and d!1462733 c!793914) b!4639489))

(assert (= (and d!1462733 (not c!793914)) b!4639490))

(declare-fun m!5498899 () Bool)

(assert (=> d!1462733 m!5498899))

(declare-fun m!5498901 () Bool)

(assert (=> d!1462733 m!5498901))

(declare-fun m!5498903 () Bool)

(assert (=> b!4639489 m!5498903))

(assert (=> b!4639489 m!5498903))

(declare-fun m!5498905 () Bool)

(assert (=> b!4639489 m!5498905))

(assert (=> b!4639191 d!1462733))

(declare-fun d!1462735 () Bool)

(declare-fun hash!3668 (Hashable!5979 K!13105) (_ BitVec 64))

(assert (=> d!1462735 (= (hash!3666 hashF!1389 key!4968) (hash!3668 hashF!1389 key!4968))))

(declare-fun bs!1033036 () Bool)

(assert (= bs!1033036 d!1462735))

(declare-fun m!5498907 () Bool)

(assert (=> bs!1033036 m!5498907))

(assert (=> b!4639201 d!1462735))

(declare-fun d!1462737 () Bool)

(assert (=> d!1462737 (= (eq!883 lt!1801816 lt!1801819) (= (content!8929 (toList!5109 lt!1801816)) (content!8929 (toList!5109 lt!1801819))))))

(declare-fun bs!1033037 () Bool)

(assert (= bs!1033037 d!1462737))

(assert (=> bs!1033037 m!5498677))

(declare-fun m!5498909 () Bool)

(assert (=> bs!1033037 m!5498909))

(assert (=> b!4639203 d!1462737))

(declare-fun d!1462739 () Bool)

(assert (=> d!1462739 (= (tail!8209 oldBucket!40) (t!358940 oldBucket!40))))

(assert (=> b!4639192 d!1462739))

(declare-fun b!4639495 () Bool)

(declare-fun e!2894165 () Bool)

(declare-fun tp!1342770 () Bool)

(assert (=> b!4639495 (= e!2894165 (and tp_is_empty!29621 tp_is_empty!29623 tp!1342770))))

(assert (=> b!4639199 (= tp!1342763 e!2894165)))

(assert (= (and b!4639199 ((_ is Cons!51736) (t!358940 newBucket!224))) b!4639495))

(declare-fun e!2894166 () Bool)

(declare-fun tp!1342771 () Bool)

(declare-fun b!4639496 () Bool)

(assert (=> b!4639496 (= e!2894166 (and tp_is_empty!29621 tp_is_empty!29623 tp!1342771))))

(assert (=> b!4639206 (= tp!1342762 e!2894166)))

(assert (= (and b!4639206 ((_ is Cons!51736) (t!358940 oldBucket!40))) b!4639496))

(check-sat (not bm!323852) (not d!1462603) (not d!1462609) (not d!1462607) (not b!4639412) (not b!4639402) (not d!1462707) (not bm!323861) (not b!4639398) (not b!4639495) (not b!4639419) (not b!4639470) (not b!4639222) tp_is_empty!29623 (not d!1462721) (not b!4639447) (not bm!323860) (not d!1462599) (not b!4639403) (not d!1462725) (not d!1462709) (not b!4639462) (not b!4639454) (not d!1462639) (not b!4639489) (not bm!323850) (not b!4639496) (not b!4639466) (not b!4639228) (not b!4639405) (not b!4639396) (not bm!323848) (not d!1462701) (not b!4639404) (not b!4639476) (not d!1462723) (not b!4639478) (not d!1462601) (not b!4639441) (not bm!323849) (not d!1462715) (not d!1462649) (not b!4639221) (not b!4639473) (not b!4639451) (not bm!323865) (not b!4639294) (not b!4639293) (not bm!323862) (not b!4639397) (not b!4639395) (not b!4639411) (not b!4639410) (not d!1462647) (not b!4639227) (not bm!323857) (not b!4639442) (not b!4639450) (not b!4639465) (not b!4639487) (not bm!323858) (not b!4639482) (not b!4639485) (not d!1462643) (not b!4639488) (not d!1462737) (not b!4639299) (not bm!323851) (not d!1462605) (not b!4639417) (not b!4639453) (not b!4639469) (not d!1462699) (not b!4639471) (not d!1462717) (not d!1462727) (not bm!323863) (not d!1462733) (not b!4639407) (not b!4639408) (not d!1462641) (not d!1462697) (not d!1462713) (not b!4639409) (not d!1462695) (not bm!323866) (not b!4639483) (not b!4639464) (not d!1462703) (not bm!323855) (not d!1462729) (not b!4639456) (not d!1462731) (not b!4639463) (not b!4639474) (not d!1462711) (not b!4639455) (not b!4639444) (not b!4639446) (not b!4639468) (not b!4639439) (not bm!323864) (not bm!323856) (not b!4639217) (not b!4639448) (not bm!323859) (not b!4639486) (not b!4639445) (not b!4639475) (not d!1462735) tp_is_empty!29621 (not bm!323847) (not b!4639480))
(check-sat)
