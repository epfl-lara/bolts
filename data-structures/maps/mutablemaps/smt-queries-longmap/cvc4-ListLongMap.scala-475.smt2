; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9600 () Bool)

(assert start!9600)

(declare-fun b!70654 () Bool)

(declare-fun b_free!2097 () Bool)

(declare-fun b_next!2097 () Bool)

(assert (=> b!70654 (= b_free!2097 (not b_next!2097))))

(declare-fun tp!8460 () Bool)

(declare-fun b_and!4341 () Bool)

(assert (=> b!70654 (= tp!8460 b_and!4341)))

(declare-fun b!70642 () Bool)

(declare-fun b_free!2099 () Bool)

(declare-fun b_next!2099 () Bool)

(assert (=> b!70642 (= b_free!2099 (not b_next!2099))))

(declare-fun tp!8461 () Bool)

(declare-fun b_and!4343 () Bool)

(assert (=> b!70642 (= tp!8461 b_and!4343)))

(declare-fun mapIsEmpty!3133 () Bool)

(declare-fun mapRes!3134 () Bool)

(assert (=> mapIsEmpty!3133 mapRes!3134))

(declare-fun b!70635 () Bool)

(declare-fun e!46254 () Bool)

(declare-fun e!46263 () Bool)

(assert (=> b!70635 (= e!46254 e!46263)))

(declare-fun res!37750 () Bool)

(assert (=> b!70635 (=> (not res!37750) (not e!46263))))

(declare-datatypes ((V!2933 0))(
  ( (V!2934 (val!1277 Int)) )
))
(declare-datatypes ((array!3872 0))(
  ( (array!3873 (arr!1848 (Array (_ BitVec 32) (_ BitVec 64))) (size!2085 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!889 0))(
  ( (ValueCellFull!889 (v!2512 V!2933)) (EmptyCell!889) )
))
(declare-datatypes ((array!3874 0))(
  ( (array!3875 (arr!1849 (Array (_ BitVec 32) ValueCell!889)) (size!2086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!686 0))(
  ( (LongMapFixedSize!687 (defaultEntry!2190 Int) (mask!6145 (_ BitVec 32)) (extraKeys!2053 (_ BitVec 32)) (zeroValue!2094 V!2933) (minValue!2094 V!2933) (_size!392 (_ BitVec 32)) (_keys!3838 array!3872) (_values!2173 array!3874) (_vacant!392 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!496 0))(
  ( (Cell!497 (v!2513 LongMapFixedSize!686)) )
))
(declare-datatypes ((LongMap!496 0))(
  ( (LongMap!497 (underlying!259 Cell!496)) )
))
(declare-fun thiss!992 () LongMap!496)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!70635 (= res!37750 (and (not (= (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!31129 () V!2933)

(declare-fun get!1142 (ValueCell!889 V!2933) V!2933)

(declare-fun dynLambda!329 (Int (_ BitVec 64)) V!2933)

(assert (=> b!70635 (= lt!31129 (get!1142 (select (arr!1849 (_values!2173 (v!2513 (underlying!259 thiss!992)))) from!355) (dynLambda!329 (defaultEntry!2190 (v!2513 (underlying!259 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!70636 () Bool)

(declare-fun e!46255 () Bool)

(assert (=> b!70636 (= e!46255 e!46254)))

(declare-fun res!37752 () Bool)

(assert (=> b!70636 (=> (not res!37752) (not e!46254))))

(declare-datatypes ((tuple2!2130 0))(
  ( (tuple2!2131 (_1!1075 (_ BitVec 64)) (_2!1075 V!2933)) )
))
(declare-datatypes ((List!1501 0))(
  ( (Nil!1498) (Cons!1497 (h!2083 tuple2!2130) (t!5033 List!1501)) )
))
(declare-datatypes ((ListLongMap!1429 0))(
  ( (ListLongMap!1430 (toList!730 List!1501)) )
))
(declare-fun lt!31128 () ListLongMap!1429)

(declare-fun lt!31131 () ListLongMap!1429)

(assert (=> b!70636 (= res!37752 (= lt!31128 lt!31131))))

(declare-fun newMap!16 () LongMapFixedSize!686)

(declare-fun map!1151 (LongMapFixedSize!686) ListLongMap!1429)

(assert (=> b!70636 (= lt!31131 (map!1151 newMap!16))))

(declare-fun getCurrentListMap!423 (array!3872 array!3874 (_ BitVec 32) (_ BitVec 32) V!2933 V!2933 (_ BitVec 32) Int) ListLongMap!1429)

(assert (=> b!70636 (= lt!31128 (getCurrentListMap!423 (_keys!3838 (v!2513 (underlying!259 thiss!992))) (_values!2173 (v!2513 (underlying!259 thiss!992))) (mask!6145 (v!2513 (underlying!259 thiss!992))) (extraKeys!2053 (v!2513 (underlying!259 thiss!992))) (zeroValue!2094 (v!2513 (underlying!259 thiss!992))) (minValue!2094 (v!2513 (underlying!259 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2190 (v!2513 (underlying!259 thiss!992)))))))

(declare-fun b!70637 () Bool)

(declare-fun e!46249 () Bool)

(assert (=> b!70637 (= e!46263 e!46249)))

(declare-fun res!37747 () Bool)

(assert (=> b!70637 (=> (not res!37747) (not e!46249))))

(declare-datatypes ((tuple2!2132 0))(
  ( (tuple2!2133 (_1!1076 Bool) (_2!1076 LongMapFixedSize!686)) )
))
(declare-fun lt!31133 () tuple2!2132)

(assert (=> b!70637 (= res!37747 (and (_1!1076 lt!31133) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2002 0))(
  ( (Unit!2003) )
))
(declare-fun lt!31134 () Unit!2002)

(declare-fun e!46260 () Unit!2002)

(assert (=> b!70637 (= lt!31134 e!46260)))

(declare-fun c!10238 () Bool)

(declare-fun contains!724 (ListLongMap!1429 (_ BitVec 64)) Bool)

(assert (=> b!70637 (= c!10238 (contains!724 lt!31131 (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355)))))

(declare-fun update!100 (LongMapFixedSize!686 (_ BitVec 64) V!2933) tuple2!2132)

(assert (=> b!70637 (= lt!31133 (update!100 newMap!16 (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355) lt!31129))))

(declare-fun b!70638 () Bool)

(declare-fun e!46252 () Bool)

(declare-fun e!46251 () Bool)

(assert (=> b!70638 (= e!46252 e!46251)))

(declare-fun b!70639 () Bool)

(declare-fun res!37746 () Bool)

(assert (=> b!70639 (=> (not res!37746) (not e!46255))))

(assert (=> b!70639 (= res!37746 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2085 (_keys!3838 (v!2513 (underlying!259 thiss!992)))))))))

(declare-fun mapIsEmpty!3134 () Bool)

(declare-fun mapRes!3133 () Bool)

(assert (=> mapIsEmpty!3134 mapRes!3133))

(declare-fun b!70640 () Bool)

(declare-fun e!46261 () Bool)

(declare-fun tp_is_empty!2465 () Bool)

(assert (=> b!70640 (= e!46261 tp_is_empty!2465)))

(declare-fun b!70641 () Bool)

(declare-fun e!46253 () Bool)

(assert (=> b!70641 (= e!46249 (not e!46253))))

(declare-fun res!37749 () Bool)

(assert (=> b!70641 (=> res!37749 e!46253)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!70641 (= res!37749 (not (validMask!0 (mask!6145 (v!2513 (underlying!259 thiss!992))))))))

(declare-fun lt!31127 () ListLongMap!1429)

(declare-fun lt!31130 () tuple2!2130)

(declare-fun lt!31137 () tuple2!2130)

(declare-fun +!93 (ListLongMap!1429 tuple2!2130) ListLongMap!1429)

(assert (=> b!70641 (= (+!93 (+!93 lt!31127 lt!31130) lt!31137) (+!93 (+!93 lt!31127 lt!31137) lt!31130))))

(assert (=> b!70641 (= lt!31137 (tuple2!2131 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2094 (v!2513 (underlying!259 thiss!992)))))))

(assert (=> b!70641 (= lt!31130 (tuple2!2131 (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355) lt!31129))))

(declare-fun lt!31135 () Unit!2002)

(declare-fun addCommutativeForDiffKeys!12 (ListLongMap!1429 (_ BitVec 64) V!2933 (_ BitVec 64) V!2933) Unit!2002)

(assert (=> b!70641 (= lt!31135 (addCommutativeForDiffKeys!12 lt!31127 (select (arr!1848 (_keys!3838 (v!2513 (underlying!259 thiss!992)))) from!355) lt!31129 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2094 (v!2513 (underlying!259 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!57 (array!3872 array!3874 (_ BitVec 32) (_ BitVec 32) V!2933 V!2933 (_ BitVec 32) Int) ListLongMap!1429)

(assert (=> b!70641 (= lt!31127 (getCurrentListMapNoExtraKeys!57 (_keys!3838 (v!2513 (underlying!259 thiss!992))) (_values!2173 (v!2513 (underlying!259 thiss!992))) (mask!6145 (v!2513 (underlying!259 thiss!992))) (extraKeys!2053 (v!2513 (underlying!259 thiss!992))) (zeroValue!2094 (v!2513 (underlying!259 thiss!992))) (minValue!2094 (v!2513 (underlying!259 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2190 (v!2513 (underlying!259 thiss!992)))))))

(declare-fun mapNonEmpty!3133 () Bool)

(declare-fun tp!8459 () Bool)

(declare-fun e!46257 () Bool)

(assert (=> mapNonEmpty!3133 (= mapRes!3134 (and tp!8459 e!46257))))

(declare-fun mapValue!3134 () ValueCell!889)

(declare-fun mapKey!3134 () (_ BitVec 32))

(declare-fun mapRest!3134 () (Array (_ BitVec 32) ValueCell!889))

(assert (=> mapNonEmpty!3133 (= (arr!1849 (_values!2173 newMap!16)) (store mapRest!3134 mapKey!3134 mapValue!3134))))

(declare-fun res!37748 () Bool)

(assert (=> start!9600 (=> (not res!37748) (not e!46255))))

(declare-fun valid!286 (LongMap!496) Bool)

(assert (=> start!9600 (= res!37748 (valid!286 thiss!992))))

(assert (=> start!9600 e!46255))

(assert (=> start!9600 e!46252))

(assert (=> start!9600 true))

(declare-fun e!46265 () Bool)

(assert (=> start!9600 e!46265))

(declare-fun e!46256 () Bool)

(declare-fun array_inv!1095 (array!3872) Bool)

(declare-fun array_inv!1096 (array!3874) Bool)

(assert (=> b!70642 (= e!46265 (and tp!8461 tp_is_empty!2465 (array_inv!1095 (_keys!3838 newMap!16)) (array_inv!1096 (_values!2173 newMap!16)) e!46256))))

(declare-fun b!70643 () Bool)

(declare-fun res!37753 () Bool)

(assert (=> b!70643 (=> (not res!37753) (not e!46255))))

(declare-fun valid!287 (LongMapFixedSize!686) Bool)

(assert (=> b!70643 (= res!37753 (valid!287 newMap!16))))

(declare-fun b!70644 () Bool)

(declare-fun e!46266 () Bool)

(declare-fun e!46259 () Bool)

(assert (=> b!70644 (= e!46266 (and e!46259 mapRes!3133))))

(declare-fun condMapEmpty!3134 () Bool)

(declare-fun mapDefault!3134 () ValueCell!889)

