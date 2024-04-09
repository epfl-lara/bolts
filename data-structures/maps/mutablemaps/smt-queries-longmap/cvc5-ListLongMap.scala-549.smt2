; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14592 () Bool)

(assert start!14592)

(declare-fun b!138078 () Bool)

(declare-fun b_free!2977 () Bool)

(declare-fun b_next!2977 () Bool)

(assert (=> b!138078 (= b_free!2977 (not b_next!2977))))

(declare-fun tp!11391 () Bool)

(declare-fun b_and!8609 () Bool)

(assert (=> b!138078 (= tp!11391 b_and!8609)))

(declare-fun b!138071 () Bool)

(declare-fun b_free!2979 () Bool)

(declare-fun b_next!2979 () Bool)

(assert (=> b!138071 (= b_free!2979 (not b_next!2979))))

(declare-fun tp!11393 () Bool)

(declare-fun b_and!8611 () Bool)

(assert (=> b!138071 (= tp!11393 b_and!8611)))

(declare-fun b!138066 () Bool)

(declare-fun e!89967 () Bool)

(declare-fun tp_is_empty!2905 () Bool)

(assert (=> b!138066 (= e!89967 tp_is_empty!2905)))

(declare-fun mapNonEmpty!4745 () Bool)

(declare-fun mapRes!4745 () Bool)

(declare-fun tp!11394 () Bool)

(declare-fun e!89962 () Bool)

(assert (=> mapNonEmpty!4745 (= mapRes!4745 (and tp!11394 e!89962))))

(declare-datatypes ((V!3521 0))(
  ( (V!3522 (val!1497 Int)) )
))
(declare-datatypes ((array!4840 0))(
  ( (array!4841 (arr!2288 (Array (_ BitVec 32) (_ BitVec 64))) (size!2559 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1109 0))(
  ( (ValueCellFull!1109 (v!3245 V!3521)) (EmptyCell!1109) )
))
(declare-datatypes ((array!4842 0))(
  ( (array!4843 (arr!2289 (Array (_ BitVec 32) ValueCell!1109)) (size!2560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1126 0))(
  ( (LongMapFixedSize!1127 (defaultEntry!2915 Int) (mask!7243 (_ BitVec 32)) (extraKeys!2672 (_ BitVec 32)) (zeroValue!2766 V!3521) (minValue!2766 V!3521) (_size!612 (_ BitVec 32)) (_keys!4672 array!4840) (_values!2898 array!4842) (_vacant!612 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!914 0))(
  ( (Cell!915 (v!3246 LongMapFixedSize!1126)) )
))
(declare-datatypes ((LongMap!914 0))(
  ( (LongMap!915 (underlying!468 Cell!914)) )
))
(declare-fun thiss!992 () LongMap!914)

(declare-fun mapValue!4746 () ValueCell!1109)

(declare-fun mapKey!4746 () (_ BitVec 32))

(declare-fun mapRest!4745 () (Array (_ BitVec 32) ValueCell!1109))

(assert (=> mapNonEmpty!4745 (= (arr!2289 (_values!2898 (v!3246 (underlying!468 thiss!992)))) (store mapRest!4745 mapKey!4746 mapValue!4746))))

(declare-fun b!138067 () Bool)

(declare-fun e!89959 () Bool)

(declare-fun e!89966 () Bool)

(assert (=> b!138067 (= e!89959 e!89966)))

(declare-fun res!66147 () Bool)

(assert (=> b!138067 (=> (not res!66147) (not e!89966))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2642 0))(
  ( (tuple2!2643 (_1!1331 (_ BitVec 64)) (_2!1331 V!3521)) )
))
(declare-datatypes ((List!1747 0))(
  ( (Nil!1744) (Cons!1743 (h!2350 tuple2!2642) (t!6287 List!1747)) )
))
(declare-datatypes ((ListLongMap!1725 0))(
  ( (ListLongMap!1726 (toList!878 List!1747)) )
))
(declare-fun lt!72251 () ListLongMap!1725)

(declare-fun lt!72253 () ListLongMap!1725)

(assert (=> b!138067 (= res!66147 (and (= lt!72251 lt!72253) (not (= (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1126)

(declare-fun map!1422 (LongMapFixedSize!1126) ListLongMap!1725)

(assert (=> b!138067 (= lt!72253 (map!1422 newMap!16))))

(declare-fun getCurrentListMap!547 (array!4840 array!4842 (_ BitVec 32) (_ BitVec 32) V!3521 V!3521 (_ BitVec 32) Int) ListLongMap!1725)

(assert (=> b!138067 (= lt!72251 (getCurrentListMap!547 (_keys!4672 (v!3246 (underlying!468 thiss!992))) (_values!2898 (v!3246 (underlying!468 thiss!992))) (mask!7243 (v!3246 (underlying!468 thiss!992))) (extraKeys!2672 (v!3246 (underlying!468 thiss!992))) (zeroValue!2766 (v!3246 (underlying!468 thiss!992))) (minValue!2766 (v!3246 (underlying!468 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2915 (v!3246 (underlying!468 thiss!992)))))))

(declare-fun b!138068 () Bool)

(assert (=> b!138068 (= e!89962 tp_is_empty!2905)))

(declare-fun b!138069 () Bool)

(declare-fun e!89964 () Bool)

(assert (=> b!138069 (= e!89964 (not (or (bvsge (size!2559 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!2559 (_keys!4672 (v!3246 (underlying!468 thiss!992))))) (bvsle from!355 (size!2559 (_keys!4672 (v!3246 (underlying!468 thiss!992))))))))))

(declare-fun arrayContainsKey!0 (array!4840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!138069 (arrayContainsKey!0 (_keys!4672 (v!3246 (underlying!468 thiss!992))) (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4360 0))(
  ( (Unit!4361) )
))
(declare-fun lt!72254 () Unit!4360)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!137 (array!4840 array!4842 (_ BitVec 32) (_ BitVec 32) V!3521 V!3521 (_ BitVec 64) (_ BitVec 32) Int) Unit!4360)

(assert (=> b!138069 (= lt!72254 (lemmaListMapContainsThenArrayContainsFrom!137 (_keys!4672 (v!3246 (underlying!468 thiss!992))) (_values!2898 (v!3246 (underlying!468 thiss!992))) (mask!7243 (v!3246 (underlying!468 thiss!992))) (extraKeys!2672 (v!3246 (underlying!468 thiss!992))) (zeroValue!2766 (v!3246 (underlying!468 thiss!992))) (minValue!2766 (v!3246 (underlying!468 thiss!992))) (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2915 (v!3246 (underlying!468 thiss!992)))))))

(declare-fun b!138070 () Bool)

(declare-fun res!66146 () Bool)

(assert (=> b!138070 (=> (not res!66146) (not e!89959))))

(declare-fun valid!538 (LongMapFixedSize!1126) Bool)

(assert (=> b!138070 (= res!66146 (valid!538 newMap!16))))

(declare-fun res!66144 () Bool)

(assert (=> start!14592 (=> (not res!66144) (not e!89959))))

(declare-fun valid!539 (LongMap!914) Bool)

(assert (=> start!14592 (= res!66144 (valid!539 thiss!992))))

(assert (=> start!14592 e!89959))

(declare-fun e!89957 () Bool)

(assert (=> start!14592 e!89957))

(assert (=> start!14592 true))

(declare-fun e!89965 () Bool)

(assert (=> start!14592 e!89965))

(declare-fun e!89956 () Bool)

(declare-fun array_inv!1413 (array!4840) Bool)

(declare-fun array_inv!1414 (array!4842) Bool)

(assert (=> b!138071 (= e!89965 (and tp!11393 tp_is_empty!2905 (array_inv!1413 (_keys!4672 newMap!16)) (array_inv!1414 (_values!2898 newMap!16)) e!89956))))

(declare-fun mapNonEmpty!4746 () Bool)

(declare-fun mapRes!4746 () Bool)

(declare-fun tp!11392 () Bool)

(assert (=> mapNonEmpty!4746 (= mapRes!4746 (and tp!11392 e!89967))))

(declare-fun mapRest!4746 () (Array (_ BitVec 32) ValueCell!1109))

(declare-fun mapValue!4745 () ValueCell!1109)

(declare-fun mapKey!4745 () (_ BitVec 32))

(assert (=> mapNonEmpty!4746 (= (arr!2289 (_values!2898 newMap!16)) (store mapRest!4746 mapKey!4745 mapValue!4745))))

(declare-fun b!138072 () Bool)

(declare-fun res!66145 () Bool)

(assert (=> b!138072 (=> (not res!66145) (not e!89959))))

(assert (=> b!138072 (= res!66145 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7243 newMap!16)) (_size!612 (v!3246 (underlying!468 thiss!992)))))))

(declare-fun b!138073 () Bool)

(declare-fun e!89960 () Bool)

(assert (=> b!138073 (= e!89960 tp_is_empty!2905)))

(declare-fun mapIsEmpty!4745 () Bool)

(assert (=> mapIsEmpty!4745 mapRes!4745))

(declare-fun b!138074 () Bool)

(assert (=> b!138074 (= e!89966 e!89964)))

(declare-fun res!66143 () Bool)

(assert (=> b!138074 (=> (not res!66143) (not e!89964))))

(declare-fun contains!908 (ListLongMap!1725 (_ BitVec 64)) Bool)

(assert (=> b!138074 (= res!66143 (contains!908 lt!72253 (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2644 0))(
  ( (tuple2!2645 (_1!1332 Bool) (_2!1332 LongMapFixedSize!1126)) )
))
(declare-fun lt!72252 () tuple2!2644)

(declare-fun update!200 (LongMapFixedSize!1126 (_ BitVec 64) V!3521) tuple2!2644)

(declare-fun get!1512 (ValueCell!1109 V!3521) V!3521)

(declare-fun dynLambda!433 (Int (_ BitVec 64)) V!3521)

(assert (=> b!138074 (= lt!72252 (update!200 newMap!16 (select (arr!2288 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) from!355) (get!1512 (select (arr!2289 (_values!2898 (v!3246 (underlying!468 thiss!992)))) from!355) (dynLambda!433 (defaultEntry!2915 (v!3246 (underlying!468 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!138075 () Bool)

(declare-fun e!89969 () Bool)

(assert (=> b!138075 (= e!89969 tp_is_empty!2905)))

(declare-fun b!138076 () Bool)

(declare-fun e!89958 () Bool)

(declare-fun e!89961 () Bool)

(assert (=> b!138076 (= e!89958 e!89961)))

(declare-fun b!138077 () Bool)

(declare-fun res!66148 () Bool)

(assert (=> b!138077 (=> (not res!66148) (not e!89959))))

(assert (=> b!138077 (= res!66148 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2559 (_keys!4672 (v!3246 (underlying!468 thiss!992)))))))))

(declare-fun e!89963 () Bool)

(assert (=> b!138078 (= e!89961 (and tp!11391 tp_is_empty!2905 (array_inv!1413 (_keys!4672 (v!3246 (underlying!468 thiss!992)))) (array_inv!1414 (_values!2898 (v!3246 (underlying!468 thiss!992)))) e!89963))))

(declare-fun b!138079 () Bool)

(assert (=> b!138079 (= e!89963 (and e!89960 mapRes!4745))))

(declare-fun condMapEmpty!4746 () Bool)

(declare-fun mapDefault!4745 () ValueCell!1109)

