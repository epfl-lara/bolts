; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9602 () Bool)

(assert start!9602)

(declare-fun b!70715 () Bool)

(declare-fun b_free!2101 () Bool)

(declare-fun b_next!2101 () Bool)

(assert (=> b!70715 (= b_free!2101 (not b_next!2101))))

(declare-fun tp!8473 () Bool)

(declare-fun b_and!4349 () Bool)

(assert (=> b!70715 (= tp!8473 b_and!4349)))

(declare-fun b!70716 () Bool)

(declare-fun b_free!2103 () Bool)

(declare-fun b_next!2103 () Bool)

(assert (=> b!70716 (= b_free!2103 (not b_next!2103))))

(declare-fun tp!8471 () Bool)

(declare-fun b_and!4351 () Bool)

(assert (=> b!70716 (= tp!8471 b_and!4351)))

(declare-fun b!70697 () Bool)

(declare-fun e!46315 () Bool)

(declare-fun e!46316 () Bool)

(assert (=> b!70697 (= e!46315 e!46316)))

(declare-fun b!70698 () Bool)

(declare-fun e!46312 () Bool)

(declare-fun tp_is_empty!2467 () Bool)

(assert (=> b!70698 (= e!46312 tp_is_empty!2467)))

(declare-fun mapIsEmpty!3139 () Bool)

(declare-fun mapRes!3139 () Bool)

(assert (=> mapIsEmpty!3139 mapRes!3139))

(declare-fun b!70699 () Bool)

(declare-fun e!46303 () Bool)

(declare-datatypes ((V!2937 0))(
  ( (V!2938 (val!1278 Int)) )
))
(declare-datatypes ((array!3876 0))(
  ( (array!3877 (arr!1850 (Array (_ BitVec 32) (_ BitVec 64))) (size!2087 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!890 0))(
  ( (ValueCellFull!890 (v!2514 V!2937)) (EmptyCell!890) )
))
(declare-datatypes ((array!3878 0))(
  ( (array!3879 (arr!1851 (Array (_ BitVec 32) ValueCell!890)) (size!2088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!688 0))(
  ( (LongMapFixedSize!689 (defaultEntry!2191 Int) (mask!6148 (_ BitVec 32)) (extraKeys!2054 (_ BitVec 32)) (zeroValue!2095 V!2937) (minValue!2095 V!2937) (_size!393 (_ BitVec 32)) (_keys!3839 array!3876) (_values!2174 array!3878) (_vacant!393 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!498 0))(
  ( (Cell!499 (v!2515 LongMapFixedSize!688)) )
))
(declare-datatypes ((LongMap!498 0))(
  ( (LongMap!499 (underlying!260 Cell!498)) )
))
(declare-fun thiss!992 () LongMap!498)

(assert (=> b!70699 (= e!46303 (or (not (= (size!2088 (_values!2174 (v!2515 (underlying!260 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6148 (v!2515 (underlying!260 thiss!992)))))) (not (= (size!2087 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) (size!2088 (_values!2174 (v!2515 (underlying!260 thiss!992)))))) (bvslt (mask!6148 (v!2515 (underlying!260 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2054 (v!2515 (underlying!260 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!70700 () Bool)

(declare-fun e!46307 () Bool)

(assert (=> b!70700 (= e!46307 tp_is_empty!2467)))

(declare-fun b!70701 () Bool)

(declare-fun e!46305 () Bool)

(declare-fun e!46320 () Bool)

(assert (=> b!70701 (= e!46305 e!46320)))

(declare-fun res!37777 () Bool)

(assert (=> b!70701 (=> (not res!37777) (not e!46320))))

(declare-datatypes ((tuple2!2134 0))(
  ( (tuple2!2135 (_1!1077 (_ BitVec 64)) (_2!1077 V!2937)) )
))
(declare-datatypes ((List!1502 0))(
  ( (Nil!1499) (Cons!1498 (h!2084 tuple2!2134) (t!5038 List!1502)) )
))
(declare-datatypes ((ListLongMap!1431 0))(
  ( (ListLongMap!1432 (toList!731 List!1502)) )
))
(declare-fun lt!31168 () ListLongMap!1431)

(declare-fun lt!31166 () ListLongMap!1431)

(assert (=> b!70701 (= res!37777 (= lt!31168 lt!31166))))

(declare-fun newMap!16 () LongMapFixedSize!688)

(declare-fun map!1154 (LongMapFixedSize!688) ListLongMap!1431)

(assert (=> b!70701 (= lt!31166 (map!1154 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!424 (array!3876 array!3878 (_ BitVec 32) (_ BitVec 32) V!2937 V!2937 (_ BitVec 32) Int) ListLongMap!1431)

(assert (=> b!70701 (= lt!31168 (getCurrentListMap!424 (_keys!3839 (v!2515 (underlying!260 thiss!992))) (_values!2174 (v!2515 (underlying!260 thiss!992))) (mask!6148 (v!2515 (underlying!260 thiss!992))) (extraKeys!2054 (v!2515 (underlying!260 thiss!992))) (zeroValue!2095 (v!2515 (underlying!260 thiss!992))) (minValue!2095 (v!2515 (underlying!260 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2191 (v!2515 (underlying!260 thiss!992)))))))

(declare-fun b!70702 () Bool)

(declare-fun e!46319 () Bool)

(assert (=> b!70702 (= e!46319 (not e!46303))))

(declare-fun res!37773 () Bool)

(assert (=> b!70702 (=> res!37773 e!46303)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!70702 (= res!37773 (not (validMask!0 (mask!6148 (v!2515 (underlying!260 thiss!992))))))))

(declare-fun lt!31170 () ListLongMap!1431)

(declare-fun lt!31169 () tuple2!2134)

(declare-fun lt!31163 () tuple2!2134)

(declare-fun +!94 (ListLongMap!1431 tuple2!2134) ListLongMap!1431)

(assert (=> b!70702 (= (+!94 (+!94 lt!31170 lt!31169) lt!31163) (+!94 (+!94 lt!31170 lt!31163) lt!31169))))

(assert (=> b!70702 (= lt!31163 (tuple2!2135 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2095 (v!2515 (underlying!260 thiss!992)))))))

(declare-fun lt!31172 () V!2937)

(assert (=> b!70702 (= lt!31169 (tuple2!2135 (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355) lt!31172))))

(declare-datatypes ((Unit!2004 0))(
  ( (Unit!2005) )
))
(declare-fun lt!31171 () Unit!2004)

(declare-fun addCommutativeForDiffKeys!13 (ListLongMap!1431 (_ BitVec 64) V!2937 (_ BitVec 64) V!2937) Unit!2004)

(assert (=> b!70702 (= lt!31171 (addCommutativeForDiffKeys!13 lt!31170 (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355) lt!31172 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2095 (v!2515 (underlying!260 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!58 (array!3876 array!3878 (_ BitVec 32) (_ BitVec 32) V!2937 V!2937 (_ BitVec 32) Int) ListLongMap!1431)

(assert (=> b!70702 (= lt!31170 (getCurrentListMapNoExtraKeys!58 (_keys!3839 (v!2515 (underlying!260 thiss!992))) (_values!2174 (v!2515 (underlying!260 thiss!992))) (mask!6148 (v!2515 (underlying!260 thiss!992))) (extraKeys!2054 (v!2515 (underlying!260 thiss!992))) (zeroValue!2095 (v!2515 (underlying!260 thiss!992))) (minValue!2095 (v!2515 (underlying!260 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2191 (v!2515 (underlying!260 thiss!992)))))))

(declare-fun b!70703 () Bool)

(declare-fun e!46318 () Bool)

(assert (=> b!70703 (= e!46318 tp_is_empty!2467)))

(declare-fun b!70704 () Bool)

(declare-fun res!37770 () Bool)

(assert (=> b!70704 (=> (not res!37770) (not e!46305))))

(assert (=> b!70704 (= res!37770 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2087 (_keys!3839 (v!2515 (underlying!260 thiss!992)))))))))

(declare-fun b!70705 () Bool)

(declare-fun e!46313 () Bool)

(assert (=> b!70705 (= e!46313 e!46315)))

(declare-fun b!70707 () Bool)

(declare-fun e!46314 () Bool)

(assert (=> b!70707 (= e!46314 e!46319)))

(declare-fun res!37774 () Bool)

(assert (=> b!70707 (=> (not res!37774) (not e!46319))))

(declare-datatypes ((tuple2!2136 0))(
  ( (tuple2!2137 (_1!1078 Bool) (_2!1078 LongMapFixedSize!688)) )
))
(declare-fun lt!31165 () tuple2!2136)

(assert (=> b!70707 (= res!37774 (and (_1!1078 lt!31165) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!31167 () Unit!2004)

(declare-fun e!46310 () Unit!2004)

(assert (=> b!70707 (= lt!31167 e!46310)))

(declare-fun c!10241 () Bool)

(declare-fun contains!725 (ListLongMap!1431 (_ BitVec 64)) Bool)

(assert (=> b!70707 (= c!10241 (contains!725 lt!31166 (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355)))))

(declare-fun update!101 (LongMapFixedSize!688 (_ BitVec 64) V!2937) tuple2!2136)

(assert (=> b!70707 (= lt!31165 (update!101 newMap!16 (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355) lt!31172))))

(declare-fun b!70708 () Bool)

(declare-fun e!46304 () Bool)

(assert (=> b!70708 (= e!46304 tp_is_empty!2467)))

(declare-fun b!70709 () Bool)

(declare-fun res!37771 () Bool)

(assert (=> b!70709 (=> (not res!37771) (not e!46305))))

(assert (=> b!70709 (= res!37771 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6148 newMap!16)) (_size!393 (v!2515 (underlying!260 thiss!992)))))))

(declare-fun mapNonEmpty!3139 () Bool)

(declare-fun mapRes!3140 () Bool)

(declare-fun tp!8472 () Bool)

(assert (=> mapNonEmpty!3139 (= mapRes!3140 (and tp!8472 e!46318))))

(declare-fun mapKey!3139 () (_ BitVec 32))

(declare-fun mapValue!3139 () ValueCell!890)

(declare-fun mapRest!3140 () (Array (_ BitVec 32) ValueCell!890))

(assert (=> mapNonEmpty!3139 (= (arr!1851 (_values!2174 (v!2515 (underlying!260 thiss!992)))) (store mapRest!3140 mapKey!3139 mapValue!3139))))

(declare-fun b!70710 () Bool)

(assert (=> b!70710 (= e!46320 e!46314)))

(declare-fun res!37772 () Bool)

(assert (=> b!70710 (=> (not res!37772) (not e!46314))))

(assert (=> b!70710 (= res!37772 (and (not (= (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1850 (_keys!3839 (v!2515 (underlying!260 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1145 (ValueCell!890 V!2937) V!2937)

(declare-fun dynLambda!330 (Int (_ BitVec 64)) V!2937)

(assert (=> b!70710 (= lt!31172 (get!1145 (select (arr!1851 (_values!2174 (v!2515 (underlying!260 thiss!992)))) from!355) (dynLambda!330 (defaultEntry!2191 (v!2515 (underlying!260 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!70711 () Bool)

(declare-fun e!46308 () Bool)

(assert (=> b!70711 (= e!46308 (and e!46312 mapRes!3140))))

(declare-fun condMapEmpty!3139 () Bool)

(declare-fun mapDefault!3139 () ValueCell!890)

