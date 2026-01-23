; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497492 () Bool)

(assert start!497492)

(declare-fun b!4811851 () Bool)

(declare-fun b_free!130227 () Bool)

(declare-fun b_next!131017 () Bool)

(assert (=> b!4811851 (= b_free!130227 (not b_next!131017))))

(declare-fun tp!1361071 () Bool)

(declare-fun b_and!342029 () Bool)

(assert (=> b!4811851 (= tp!1361071 b_and!342029)))

(declare-fun b!4811848 () Bool)

(declare-fun b_free!130229 () Bool)

(declare-fun b_next!131019 () Bool)

(assert (=> b!4811848 (= b_free!130229 (not b_next!131019))))

(declare-fun tp!1361070 () Bool)

(declare-fun b_and!342031 () Bool)

(assert (=> b!4811848 (= tp!1361070 b_and!342031)))

(declare-fun mapNonEmpty!22394 () Bool)

(declare-fun mapRes!22394 () Bool)

(declare-fun tp!1361072 () Bool)

(declare-fun tp!1361068 () Bool)

(assert (=> mapNonEmpty!22394 (= mapRes!22394 (and tp!1361072 tp!1361068))))

(declare-fun mapKey!22394 () (_ BitVec 32))

(declare-datatypes ((K!16194 0))(
  ( (K!16195 (val!21261 Int)) )
))
(declare-datatypes ((V!16440 0))(
  ( (V!16441 (val!21262 Int)) )
))
(declare-datatypes ((tuple2!57464 0))(
  ( (tuple2!57465 (_1!32026 K!16194) (_2!32026 V!16440)) )
))
(declare-datatypes ((List!54694 0))(
  ( (Nil!54570) (Cons!54570 (h!61002 tuple2!57464) (t!362180 List!54694)) )
))
(declare-fun mapRest!22394 () (Array (_ BitVec 32) List!54694))

(declare-datatypes ((array!18664 0))(
  ( (array!18665 (arr!8327 (Array (_ BitVec 32) (_ BitVec 64))) (size!36573 (_ BitVec 32))) )
))
(declare-datatypes ((array!18666 0))(
  ( (array!18667 (arr!8328 (Array (_ BitVec 32) List!54694)) (size!36574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10142 0))(
  ( (LongMapFixedSize!10143 (defaultEntry!5493 Int) (mask!15087 (_ BitVec 32)) (extraKeys!5351 (_ BitVec 32)) (zeroValue!5364 List!54694) (minValue!5364 List!54694) (_size!10167 (_ BitVec 32)) (_keys!5420 array!18664) (_values!5389 array!18666) (_vacant!5136 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20049 0))(
  ( (Cell!20050 (v!48896 LongMapFixedSize!10142)) )
))
(declare-datatypes ((MutLongMap!5071 0))(
  ( (LongMap!5071 (underlying!10349 Cell!20049)) (MutLongMapExt!5070 (__x!33311 Int)) )
))
(declare-datatypes ((Hashable!7082 0))(
  ( (HashableExt!7081 (__x!33312 Int)) )
))
(declare-datatypes ((Cell!20051 0))(
  ( (Cell!20052 (v!48897 MutLongMap!5071)) )
))
(declare-datatypes ((MutableMap!4955 0))(
  ( (MutableMapExt!4954 (__x!33313 Int)) (HashMap!4955 (underlying!10350 Cell!20051) (hashF!13358 Hashable!7082) (_size!10168 (_ BitVec 32)) (defaultValue!5126 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4955)

(declare-fun mapValue!22394 () List!54694)

(assert (=> mapNonEmpty!22394 (= (arr!8328 (_values!5389 (v!48896 (underlying!10349 (v!48897 (underlying!10350 thiss!41921)))))) (store mapRest!22394 mapKey!22394 mapValue!22394))))

(declare-fun b!4811843 () Bool)

(declare-fun res!2046713 () Bool)

(declare-fun e!3006139 () Bool)

(assert (=> b!4811843 (=> (not res!2046713) (not e!3006139))))

(declare-fun valid!4101 (MutableMap!4955) Bool)

(assert (=> b!4811843 (= res!2046713 (valid!4101 thiss!41921))))

(declare-fun b!4811844 () Bool)

(declare-datatypes ((Unit!141603 0))(
  ( (Unit!141604) )
))
(declare-fun e!3006141 () Unit!141603)

(declare-fun Unit!141605 () Unit!141603)

(assert (=> b!4811844 (= e!3006141 Unit!141605)))

(declare-fun b!4811845 () Bool)

(declare-fun e!3006140 () Bool)

(declare-fun e!3006136 () Bool)

(assert (=> b!4811845 (= e!3006140 e!3006136)))

(declare-fun b!4811846 () Bool)

(assert (=> b!4811846 false))

(declare-fun lt!1963351 () (_ BitVec 64))

(declare-datatypes ((tuple2!57466 0))(
  ( (tuple2!57467 (_1!32027 (_ BitVec 64)) (_2!32027 List!54694)) )
))
(declare-datatypes ((List!54695 0))(
  ( (Nil!54571) (Cons!54571 (h!61003 tuple2!57466) (t!362181 List!54695)) )
))
(declare-datatypes ((ListLongMap!5633 0))(
  ( (ListLongMap!5634 (toList!7159 List!54695)) )
))
(declare-fun lt!1963350 () ListLongMap!5633)

(declare-fun lt!1963348 () Unit!141603)

(declare-fun lt!1963346 () List!54694)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1006 (List!54695 (_ BitVec 64) List!54694) Unit!141603)

(assert (=> b!4811846 (= lt!1963348 (lemmaGetValueByKeyImpliesContainsTuple!1006 (toList!7159 lt!1963350) lt!1963351 lt!1963346))))

(declare-datatypes ((Option!13320 0))(
  ( (None!13319) (Some!13319 (v!48898 List!54694)) )
))
(declare-fun isDefined!10458 (Option!13320) Bool)

(declare-fun getValueByKey!2499 (List!54695 (_ BitVec 64)) Option!13320)

(assert (=> b!4811846 (isDefined!10458 (getValueByKey!2499 (toList!7159 lt!1963350) lt!1963351))))

(declare-fun lt!1963352 () Unit!141603)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2286 (List!54695 (_ BitVec 64)) Unit!141603)

(assert (=> b!4811846 (= lt!1963352 (lemmaContainsKeyImpliesGetValueByKeyDefined!2286 (toList!7159 lt!1963350) lt!1963351))))

(declare-fun containsKey!4163 (List!54695 (_ BitVec 64)) Bool)

(assert (=> b!4811846 (containsKey!4163 (toList!7159 lt!1963350) lt!1963351)))

(declare-fun lt!1963354 () Unit!141603)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!283 (List!54695 (_ BitVec 64)) Unit!141603)

(assert (=> b!4811846 (= lt!1963354 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!283 (toList!7159 lt!1963350) lt!1963351))))

(declare-fun Unit!141606 () Unit!141603)

(assert (=> b!4811846 (= e!3006141 Unit!141606)))

(declare-fun b!4811847 () Bool)

(declare-fun e!3006135 () Unit!141603)

(declare-fun Unit!141607 () Unit!141603)

(assert (=> b!4811847 (= e!3006135 Unit!141607)))

(declare-fun e!3006138 () Bool)

(declare-fun e!3006143 () Bool)

(assert (=> b!4811848 (= e!3006138 (and e!3006143 tp!1361070))))

(declare-fun res!2046714 () Bool)

(assert (=> start!497492 (=> (not res!2046714) (not e!3006139))))

(get-info :version)

(assert (=> start!497492 (= res!2046714 ((_ is HashMap!4955) thiss!41921))))

(assert (=> start!497492 e!3006139))

(assert (=> start!497492 e!3006138))

(declare-fun tp_is_empty!34023 () Bool)

(assert (=> start!497492 tp_is_empty!34023))

(declare-fun mapIsEmpty!22394 () Bool)

(assert (=> mapIsEmpty!22394 mapRes!22394))

(declare-fun b!4811849 () Bool)

(declare-fun lt!1963347 () MutLongMap!5071)

(assert (=> b!4811849 (= e!3006143 (and e!3006140 ((_ is LongMap!5071) lt!1963347)))))

(assert (=> b!4811849 (= lt!1963347 (v!48897 (underlying!10350 thiss!41921)))))

(declare-fun b!4811850 () Bool)

(declare-fun e!3006137 () Bool)

(assert (=> b!4811850 (= e!3006136 e!3006137)))

(declare-fun tp!1361069 () Bool)

(declare-fun tp!1361074 () Bool)

(declare-fun e!3006144 () Bool)

(declare-fun array_inv!6013 (array!18664) Bool)

(declare-fun array_inv!6014 (array!18666) Bool)

(assert (=> b!4811851 (= e!3006137 (and tp!1361071 tp!1361074 tp!1361069 (array_inv!6013 (_keys!5420 (v!48896 (underlying!10349 (v!48897 (underlying!10350 thiss!41921)))))) (array_inv!6014 (_values!5389 (v!48896 (underlying!10349 (v!48897 (underlying!10350 thiss!41921)))))) e!3006144))))

(declare-fun lt!1963353 () tuple2!57466)

(declare-fun b!4811852 () Bool)

(declare-fun lambda!233787 () Int)

(declare-fun forallContained!4272 (List!54695 Int tuple2!57466) Unit!141603)

(assert (=> b!4811852 (= e!3006135 (forallContained!4272 (toList!7159 lt!1963350) lambda!233787 lt!1963353))))

(declare-fun map!12444 (MutLongMap!5071) ListLongMap!5633)

(assert (=> b!4811852 (= lt!1963350 (map!12444 (v!48897 (underlying!10350 thiss!41921))))))

(declare-fun apply!13174 (MutLongMap!5071 (_ BitVec 64)) List!54694)

(assert (=> b!4811852 (= lt!1963346 (apply!13174 (v!48897 (underlying!10350 thiss!41921)) lt!1963351))))

(assert (=> b!4811852 (= lt!1963353 (tuple2!57467 lt!1963351 lt!1963346))))

(declare-fun c!820112 () Bool)

(declare-fun contains!18296 (List!54695 tuple2!57466) Bool)

(assert (=> b!4811852 (= c!820112 (not (contains!18296 (toList!7159 lt!1963350) lt!1963353)))))

(declare-fun lt!1963356 () Unit!141603)

(assert (=> b!4811852 (= lt!1963356 e!3006141)))

(declare-fun b!4811853 () Bool)

(declare-fun tp!1361073 () Bool)

(assert (=> b!4811853 (= e!3006144 (and tp!1361073 mapRes!22394))))

(declare-fun condMapEmpty!22394 () Bool)

(declare-fun mapDefault!22394 () List!54694)

(assert (=> b!4811853 (= condMapEmpty!22394 (= (arr!8328 (_values!5389 (v!48896 (underlying!10349 (v!48897 (underlying!10350 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54694)) mapDefault!22394)))))

(declare-fun b!4811854 () Bool)

(assert (=> b!4811854 (= e!3006139 false)))

(declare-fun lt!1963349 () Bool)

(declare-fun key!1652 () K!16194)

(declare-datatypes ((ListMap!6579 0))(
  ( (ListMap!6580 (toList!7160 List!54694)) )
))
(declare-fun contains!18297 (ListMap!6579 K!16194) Bool)

(declare-fun extractMap!2541 (List!54695) ListMap!6579)

(assert (=> b!4811854 (= lt!1963349 (contains!18297 (extractMap!2541 (toList!7159 (map!12444 (v!48897 (underlying!10350 thiss!41921))))) key!1652))))

(declare-fun lt!1963355 () Unit!141603)

(assert (=> b!4811854 (= lt!1963355 e!3006135)))

(declare-fun c!820113 () Bool)

(declare-fun contains!18298 (MutLongMap!5071 (_ BitVec 64)) Bool)

(assert (=> b!4811854 (= c!820113 (contains!18298 (v!48897 (underlying!10350 thiss!41921)) lt!1963351))))

(declare-fun hash!5149 (Hashable!7082 K!16194) (_ BitVec 64))

(assert (=> b!4811854 (= lt!1963351 (hash!5149 (hashF!13358 thiss!41921) key!1652))))

(assert (= (and start!497492 res!2046714) b!4811843))

(assert (= (and b!4811843 res!2046713) b!4811854))

(assert (= (and b!4811854 c!820113) b!4811852))

(assert (= (and b!4811854 (not c!820113)) b!4811847))

(assert (= (and b!4811852 c!820112) b!4811846))

(assert (= (and b!4811852 (not c!820112)) b!4811844))

(assert (= (and b!4811853 condMapEmpty!22394) mapIsEmpty!22394))

(assert (= (and b!4811853 (not condMapEmpty!22394)) mapNonEmpty!22394))

(assert (= b!4811851 b!4811853))

(assert (= b!4811850 b!4811851))

(assert (= b!4811845 b!4811850))

(assert (= (and b!4811849 ((_ is LongMap!5071) (v!48897 (underlying!10350 thiss!41921)))) b!4811845))

(assert (= b!4811848 b!4811849))

(assert (= (and start!497492 ((_ is HashMap!4955) thiss!41921)) b!4811848))

(declare-fun m!5797486 () Bool)

(assert (=> b!4811852 m!5797486))

(declare-fun m!5797488 () Bool)

(assert (=> b!4811852 m!5797488))

(declare-fun m!5797490 () Bool)

(assert (=> b!4811852 m!5797490))

(declare-fun m!5797492 () Bool)

(assert (=> b!4811852 m!5797492))

(declare-fun m!5797494 () Bool)

(assert (=> b!4811843 m!5797494))

(declare-fun m!5797496 () Bool)

(assert (=> b!4811846 m!5797496))

(declare-fun m!5797498 () Bool)

(assert (=> b!4811846 m!5797498))

(declare-fun m!5797500 () Bool)

(assert (=> b!4811846 m!5797500))

(declare-fun m!5797502 () Bool)

(assert (=> b!4811846 m!5797502))

(declare-fun m!5797504 () Bool)

(assert (=> b!4811846 m!5797504))

(declare-fun m!5797506 () Bool)

(assert (=> b!4811846 m!5797506))

(assert (=> b!4811846 m!5797500))

(declare-fun m!5797508 () Bool)

(assert (=> mapNonEmpty!22394 m!5797508))

(declare-fun m!5797510 () Bool)

(assert (=> b!4811854 m!5797510))

(declare-fun m!5797512 () Bool)

(assert (=> b!4811854 m!5797512))

(assert (=> b!4811854 m!5797512))

(declare-fun m!5797514 () Bool)

(assert (=> b!4811854 m!5797514))

(declare-fun m!5797516 () Bool)

(assert (=> b!4811854 m!5797516))

(assert (=> b!4811854 m!5797488))

(declare-fun m!5797518 () Bool)

(assert (=> b!4811851 m!5797518))

(declare-fun m!5797520 () Bool)

(assert (=> b!4811851 m!5797520))

(check-sat tp_is_empty!34023 (not b!4811851) (not b_next!131017) (not b!4811843) (not b!4811853) b_and!342029 b_and!342031 (not mapNonEmpty!22394) (not b!4811846) (not b!4811854) (not b_next!131019) (not b!4811852))
(check-sat b_and!342029 b_and!342031 (not b_next!131017) (not b_next!131019))
