; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497688 () Bool)

(assert start!497688)

(declare-fun b!4813045 () Bool)

(declare-fun b_free!130291 () Bool)

(declare-fun b_next!131081 () Bool)

(assert (=> b!4813045 (= b_free!130291 (not b_next!131081))))

(declare-fun tp!1361467 () Bool)

(declare-fun b_and!342101 () Bool)

(assert (=> b!4813045 (= tp!1361467 b_and!342101)))

(declare-fun b!4813047 () Bool)

(declare-fun b_free!130293 () Bool)

(declare-fun b_next!131083 () Bool)

(assert (=> b!4813047 (= b_free!130293 (not b_next!131083))))

(declare-fun tp!1361465 () Bool)

(declare-fun b_and!342103 () Bool)

(assert (=> b!4813047 (= tp!1361465 b_and!342103)))

(declare-fun bs!1160234 () Bool)

(declare-fun b!4813053 () Bool)

(declare-fun b!4813043 () Bool)

(assert (= bs!1160234 (and b!4813053 b!4813043)))

(declare-fun lambda!233911 () Int)

(declare-fun lambda!233910 () Int)

(assert (=> bs!1160234 (= lambda!233911 lambda!233910)))

(declare-fun res!2047158 () Bool)

(declare-fun e!3007021 () Bool)

(assert (=> start!497688 (=> (not res!2047158) (not e!3007021))))

(declare-datatypes ((K!16234 0))(
  ( (K!16235 (val!21293 Int)) )
))
(declare-datatypes ((array!18736 0))(
  ( (array!18737 (arr!8359 (Array (_ BitVec 32) (_ BitVec 64))) (size!36605 (_ BitVec 32))) )
))
(declare-datatypes ((V!16480 0))(
  ( (V!16481 (val!21294 Int)) )
))
(declare-datatypes ((tuple2!57522 0))(
  ( (tuple2!57523 (_1!32055 K!16234) (_2!32055 V!16480)) )
))
(declare-datatypes ((List!54727 0))(
  ( (Nil!54603) (Cons!54603 (h!61035 tuple2!57522) (t!362221 List!54727)) )
))
(declare-datatypes ((array!18738 0))(
  ( (array!18739 (arr!8360 (Array (_ BitVec 32) List!54727)) (size!36606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10174 0))(
  ( (LongMapFixedSize!10175 (defaultEntry!5509 Int) (mask!15111 (_ BitVec 32)) (extraKeys!5367 (_ BitVec 32)) (zeroValue!5380 List!54727) (minValue!5380 List!54727) (_size!10199 (_ BitVec 32)) (_keys!5436 array!18736) (_values!5405 array!18738) (_vacant!5152 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20113 0))(
  ( (Cell!20114 (v!48956 LongMapFixedSize!10174)) )
))
(declare-datatypes ((MutLongMap!5087 0))(
  ( (LongMap!5087 (underlying!10381 Cell!20113)) (MutLongMapExt!5086 (__x!33359 Int)) )
))
(declare-datatypes ((Hashable!7098 0))(
  ( (HashableExt!7097 (__x!33360 Int)) )
))
(declare-datatypes ((Cell!20115 0))(
  ( (Cell!20116 (v!48957 MutLongMap!5087)) )
))
(declare-datatypes ((MutableMap!4971 0))(
  ( (MutableMapExt!4970 (__x!33361 Int)) (HashMap!4971 (underlying!10382 Cell!20115) (hashF!13376 Hashable!7098) (_size!10200 (_ BitVec 32)) (defaultValue!5142 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4971)

(get-info :version)

(assert (=> start!497688 (= res!2047158 ((_ is HashMap!4971) thiss!41921))))

(assert (=> start!497688 e!3007021))

(declare-fun e!3007025 () Bool)

(assert (=> start!497688 e!3007025))

(declare-fun tp_is_empty!34063 () Bool)

(assert (=> start!497688 tp_is_empty!34063))

(declare-fun mapNonEmpty!22454 () Bool)

(declare-fun mapRes!22454 () Bool)

(declare-fun tp!1361469 () Bool)

(declare-fun tp!1361466 () Bool)

(assert (=> mapNonEmpty!22454 (= mapRes!22454 (and tp!1361469 tp!1361466))))

(declare-fun mapRest!22454 () (Array (_ BitVec 32) List!54727))

(declare-fun mapKey!22454 () (_ BitVec 32))

(declare-fun mapValue!22454 () List!54727)

(assert (=> mapNonEmpty!22454 (= (arr!8360 (_values!5405 (v!48956 (underlying!10381 (v!48957 (underlying!10382 thiss!41921)))))) (store mapRest!22454 mapKey!22454 mapValue!22454))))

(declare-fun b!4813040 () Bool)

(declare-fun e!3007022 () Bool)

(declare-fun tp!1361470 () Bool)

(assert (=> b!4813040 (= e!3007022 (and tp!1361470 mapRes!22454))))

(declare-fun condMapEmpty!22454 () Bool)

(declare-fun mapDefault!22454 () List!54727)

(assert (=> b!4813040 (= condMapEmpty!22454 (= (arr!8360 (_values!5405 (v!48956 (underlying!10381 (v!48957 (underlying!10382 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54727)) mapDefault!22454)))))

(declare-fun b!4813041 () Bool)

(declare-fun e!3007020 () Bool)

(declare-fun e!3007023 () Bool)

(declare-fun lt!1964140 () MutLongMap!5087)

(assert (=> b!4813041 (= e!3007020 (and e!3007023 ((_ is LongMap!5087) lt!1964140)))))

(assert (=> b!4813041 (= lt!1964140 (v!48957 (underlying!10382 thiss!41921)))))

(declare-fun b!4813042 () Bool)

(declare-fun e!3007026 () Bool)

(assert (=> b!4813042 (= e!3007021 e!3007026)))

(declare-fun res!2047159 () Bool)

(assert (=> b!4813042 (=> (not res!2047159) (not e!3007026))))

(declare-datatypes ((tuple2!57524 0))(
  ( (tuple2!57525 (_1!32056 (_ BitVec 64)) (_2!32056 List!54727)) )
))
(declare-datatypes ((List!54728 0))(
  ( (Nil!54604) (Cons!54604 (h!61036 tuple2!57524) (t!362222 List!54728)) )
))
(declare-datatypes ((ListLongMap!5659 0))(
  ( (ListLongMap!5660 (toList!7181 List!54728)) )
))
(declare-fun lt!1964141 () ListLongMap!5659)

(declare-fun key!1652 () K!16234)

(declare-datatypes ((ListMap!6597 0))(
  ( (ListMap!6598 (toList!7182 List!54727)) )
))
(declare-fun contains!18344 (ListMap!6597 K!16234) Bool)

(declare-fun extractMap!2550 (List!54728) ListMap!6597)

(assert (=> b!4813042 (= res!2047159 (not (contains!18344 (extractMap!2550 (toList!7181 lt!1964141)) key!1652)))))

(declare-fun map!12468 (MutLongMap!5087) ListLongMap!5659)

(assert (=> b!4813042 (= lt!1964141 (map!12468 (v!48957 (underlying!10382 thiss!41921))))))

(declare-datatypes ((Unit!141677 0))(
  ( (Unit!141678) )
))
(declare-fun lt!1964153 () Unit!141677)

(declare-fun e!3007019 () Unit!141677)

(assert (=> b!4813042 (= lt!1964153 e!3007019)))

(declare-fun c!820310 () Bool)

(declare-fun lt!1964143 () (_ BitVec 64))

(declare-fun contains!18345 (MutLongMap!5087 (_ BitVec 64)) Bool)

(assert (=> b!4813042 (= c!820310 (contains!18345 (v!48957 (underlying!10382 thiss!41921)) lt!1964143))))

(declare-fun hash!5162 (Hashable!7098 K!16234) (_ BitVec 64))

(assert (=> b!4813042 (= lt!1964143 (hash!5162 (hashF!13376 thiss!41921) key!1652))))

(declare-fun lt!1964152 () ListLongMap!5659)

(declare-fun lt!1964139 () tuple2!57524)

(declare-fun forallContained!4284 (List!54728 Int tuple2!57524) Unit!141677)

(assert (=> b!4813043 (= e!3007019 (forallContained!4284 (toList!7181 lt!1964152) lambda!233910 lt!1964139))))

(assert (=> b!4813043 (= lt!1964152 (map!12468 (v!48957 (underlying!10382 thiss!41921))))))

(declare-fun lt!1964150 () List!54727)

(declare-fun apply!13196 (MutLongMap!5087 (_ BitVec 64)) List!54727)

(assert (=> b!4813043 (= lt!1964150 (apply!13196 (v!48957 (underlying!10382 thiss!41921)) lt!1964143))))

(assert (=> b!4813043 (= lt!1964139 (tuple2!57525 lt!1964143 lt!1964150))))

(declare-fun c!820311 () Bool)

(declare-fun contains!18346 (List!54728 tuple2!57524) Bool)

(assert (=> b!4813043 (= c!820311 (not (contains!18346 (toList!7181 lt!1964152) lt!1964139)))))

(declare-fun lt!1964151 () Unit!141677)

(declare-fun e!3007017 () Unit!141677)

(assert (=> b!4813043 (= lt!1964151 e!3007017)))

(declare-fun b!4813044 () Bool)

(declare-fun res!2047160 () Bool)

(assert (=> b!4813044 (=> (not res!2047160) (not e!3007021))))

(declare-fun valid!4116 (MutableMap!4971) Bool)

(assert (=> b!4813044 (= res!2047160 (valid!4116 thiss!41921))))

(declare-fun tp!1361468 () Bool)

(declare-fun e!3007024 () Bool)

(declare-fun tp!1361464 () Bool)

(declare-fun array_inv!6039 (array!18736) Bool)

(declare-fun array_inv!6040 (array!18738) Bool)

(assert (=> b!4813045 (= e!3007024 (and tp!1361467 tp!1361468 tp!1361464 (array_inv!6039 (_keys!5436 (v!48956 (underlying!10381 (v!48957 (underlying!10382 thiss!41921)))))) (array_inv!6040 (_values!5405 (v!48956 (underlying!10381 (v!48957 (underlying!10382 thiss!41921)))))) e!3007022))))

(declare-fun b!4813046 () Bool)

(declare-fun res!2047164 () Bool)

(declare-fun e!3007015 () Bool)

(assert (=> b!4813046 (=> (not res!2047164) (not e!3007015))))

(declare-fun allKeysSameHashInMap!2419 (ListLongMap!5659 Hashable!7098) Bool)

(assert (=> b!4813046 (= res!2047164 (allKeysSameHashInMap!2419 lt!1964141 (hashF!13376 thiss!41921)))))

(assert (=> b!4813047 (= e!3007025 (and e!3007020 tp!1361465))))

(declare-fun b!4813048 () Bool)

(declare-fun Unit!141679 () Unit!141677)

(assert (=> b!4813048 (= e!3007017 Unit!141679)))

(declare-fun b!4813049 () Bool)

(declare-fun e!3007016 () Bool)

(assert (=> b!4813049 (= e!3007023 e!3007016)))

(declare-fun b!4813050 () Bool)

(assert (=> b!4813050 false))

(declare-fun lt!1964145 () Unit!141677)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1016 (List!54728 (_ BitVec 64) List!54727) Unit!141677)

(assert (=> b!4813050 (= lt!1964145 (lemmaGetValueByKeyImpliesContainsTuple!1016 (toList!7181 lt!1964152) lt!1964143 lt!1964150))))

(declare-datatypes ((Option!13340 0))(
  ( (None!13339) (Some!13339 (v!48958 List!54727)) )
))
(declare-fun isDefined!10477 (Option!13340) Bool)

(declare-fun getValueByKey!2513 (List!54728 (_ BitVec 64)) Option!13340)

(assert (=> b!4813050 (isDefined!10477 (getValueByKey!2513 (toList!7181 lt!1964152) lt!1964143))))

(declare-fun lt!1964154 () Unit!141677)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2300 (List!54728 (_ BitVec 64)) Unit!141677)

(assert (=> b!4813050 (= lt!1964154 (lemmaContainsKeyImpliesGetValueByKeyDefined!2300 (toList!7181 lt!1964152) lt!1964143))))

(declare-fun containsKey!4179 (List!54728 (_ BitVec 64)) Bool)

(assert (=> b!4813050 (containsKey!4179 (toList!7181 lt!1964152) lt!1964143)))

(declare-fun lt!1964146 () Unit!141677)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!293 (List!54728 (_ BitVec 64)) Unit!141677)

(assert (=> b!4813050 (= lt!1964146 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!293 (toList!7181 lt!1964152) lt!1964143))))

(declare-fun Unit!141680 () Unit!141677)

(assert (=> b!4813050 (= e!3007017 Unit!141680)))

(declare-fun b!4813051 () Bool)

(declare-fun Unit!141681 () Unit!141677)

(assert (=> b!4813051 (= e!3007019 Unit!141681)))

(declare-fun mapIsEmpty!22454 () Bool)

(assert (=> mapIsEmpty!22454 mapRes!22454))

(declare-fun b!4813052 () Bool)

(declare-fun lt!1964147 () Bool)

(assert (=> b!4813052 (= e!3007015 (not lt!1964147))))

(declare-fun lt!1964142 () Unit!141677)

(declare-fun lt!1964144 () tuple2!57524)

(assert (=> b!4813052 (= lt!1964142 (forallContained!4284 (toList!7181 lt!1964141) lambda!233911 lt!1964144))))

(assert (=> b!4813052 (contains!18346 (toList!7181 lt!1964141) lt!1964144)))

(declare-fun lt!1964148 () List!54727)

(assert (=> b!4813052 (= lt!1964144 (tuple2!57525 lt!1964143 lt!1964148))))

(declare-fun lt!1964149 () Unit!141677)

(declare-fun lemmaGetValueImpliesTupleContained!647 (ListLongMap!5659 (_ BitVec 64) List!54727) Unit!141677)

(assert (=> b!4813052 (= lt!1964149 (lemmaGetValueImpliesTupleContained!647 lt!1964141 lt!1964143 lt!1964148))))

(declare-fun res!2047161 () Bool)

(assert (=> b!4813053 (=> (not res!2047161) (not e!3007015))))

(declare-fun forall!12407 (List!54728 Int) Bool)

(assert (=> b!4813053 (= res!2047161 (forall!12407 (toList!7181 lt!1964141) lambda!233911))))

(declare-fun b!4813054 () Bool)

(assert (=> b!4813054 (= e!3007026 e!3007015)))

(declare-fun res!2047163 () Bool)

(assert (=> b!4813054 (=> (not res!2047163) (not e!3007015))))

(assert (=> b!4813054 (= res!2047163 lt!1964147)))

(declare-datatypes ((Option!13341 0))(
  ( (None!13340) (Some!13340 (v!48959 tuple2!57522)) )
))
(declare-fun isDefined!10478 (Option!13341) Bool)

(declare-fun getPair!975 (List!54727 K!16234) Option!13341)

(assert (=> b!4813054 (= lt!1964147 (isDefined!10478 (getPair!975 lt!1964148 key!1652)))))

(declare-fun apply!13197 (ListLongMap!5659 (_ BitVec 64)) List!54727)

(assert (=> b!4813054 (= lt!1964148 (apply!13197 lt!1964141 lt!1964143))))

(declare-fun b!4813055 () Bool)

(assert (=> b!4813055 (= e!3007016 e!3007024)))

(declare-fun b!4813056 () Bool)

(declare-fun res!2047162 () Bool)

(assert (=> b!4813056 (=> (not res!2047162) (not e!3007026))))

(declare-fun contains!18347 (ListLongMap!5659 (_ BitVec 64)) Bool)

(assert (=> b!4813056 (= res!2047162 (contains!18347 lt!1964141 lt!1964143))))

(assert (= (and start!497688 res!2047158) b!4813044))

(assert (= (and b!4813044 res!2047160) b!4813042))

(assert (= (and b!4813042 c!820310) b!4813043))

(assert (= (and b!4813042 (not c!820310)) b!4813051))

(assert (= (and b!4813043 c!820311) b!4813050))

(assert (= (and b!4813043 (not c!820311)) b!4813048))

(assert (= (and b!4813042 res!2047159) b!4813056))

(assert (= (and b!4813056 res!2047162) b!4813054))

(assert (= (and b!4813054 res!2047163) b!4813053))

(assert (= (and b!4813053 res!2047161) b!4813046))

(assert (= (and b!4813046 res!2047164) b!4813052))

(assert (= (and b!4813040 condMapEmpty!22454) mapIsEmpty!22454))

(assert (= (and b!4813040 (not condMapEmpty!22454)) mapNonEmpty!22454))

(assert (= b!4813045 b!4813040))

(assert (= b!4813055 b!4813045))

(assert (= b!4813049 b!4813055))

(assert (= (and b!4813041 ((_ is LongMap!5087) (v!48957 (underlying!10382 thiss!41921)))) b!4813049))

(assert (= b!4813047 b!4813041))

(assert (= (and start!497688 ((_ is HashMap!4971) thiss!41921)) b!4813047))

(declare-fun m!5798588 () Bool)

(assert (=> b!4813044 m!5798588))

(declare-fun m!5798590 () Bool)

(assert (=> mapNonEmpty!22454 m!5798590))

(declare-fun m!5798592 () Bool)

(assert (=> b!4813046 m!5798592))

(declare-fun m!5798594 () Bool)

(assert (=> b!4813056 m!5798594))

(declare-fun m!5798596 () Bool)

(assert (=> b!4813054 m!5798596))

(assert (=> b!4813054 m!5798596))

(declare-fun m!5798598 () Bool)

(assert (=> b!4813054 m!5798598))

(declare-fun m!5798600 () Bool)

(assert (=> b!4813054 m!5798600))

(declare-fun m!5798602 () Bool)

(assert (=> b!4813042 m!5798602))

(assert (=> b!4813042 m!5798602))

(declare-fun m!5798604 () Bool)

(assert (=> b!4813042 m!5798604))

(declare-fun m!5798606 () Bool)

(assert (=> b!4813042 m!5798606))

(declare-fun m!5798608 () Bool)

(assert (=> b!4813042 m!5798608))

(declare-fun m!5798610 () Bool)

(assert (=> b!4813042 m!5798610))

(declare-fun m!5798612 () Bool)

(assert (=> b!4813053 m!5798612))

(declare-fun m!5798614 () Bool)

(assert (=> b!4813050 m!5798614))

(declare-fun m!5798616 () Bool)

(assert (=> b!4813050 m!5798616))

(declare-fun m!5798618 () Bool)

(assert (=> b!4813050 m!5798618))

(declare-fun m!5798620 () Bool)

(assert (=> b!4813050 m!5798620))

(declare-fun m!5798622 () Bool)

(assert (=> b!4813050 m!5798622))

(assert (=> b!4813050 m!5798616))

(declare-fun m!5798624 () Bool)

(assert (=> b!4813050 m!5798624))

(declare-fun m!5798626 () Bool)

(assert (=> b!4813045 m!5798626))

(declare-fun m!5798628 () Bool)

(assert (=> b!4813045 m!5798628))

(declare-fun m!5798630 () Bool)

(assert (=> b!4813043 m!5798630))

(assert (=> b!4813043 m!5798610))

(declare-fun m!5798632 () Bool)

(assert (=> b!4813043 m!5798632))

(declare-fun m!5798634 () Bool)

(assert (=> b!4813043 m!5798634))

(declare-fun m!5798636 () Bool)

(assert (=> b!4813052 m!5798636))

(declare-fun m!5798638 () Bool)

(assert (=> b!4813052 m!5798638))

(declare-fun m!5798640 () Bool)

(assert (=> b!4813052 m!5798640))

(check-sat (not b!4813054) (not b!4813040) (not b!4813050) (not mapNonEmpty!22454) (not b!4813056) tp_is_empty!34063 (not b!4813043) (not b!4813044) (not b!4813052) b_and!342101 b_and!342103 (not b!4813042) (not b!4813046) (not b!4813053) (not b!4813045) (not b_next!131081) (not b_next!131083))
(check-sat b_and!342101 b_and!342103 (not b_next!131081) (not b_next!131083))
