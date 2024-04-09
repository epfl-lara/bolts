; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14444 () Bool)

(assert start!14444)

(declare-fun b!136239 () Bool)

(declare-fun b_free!2949 () Bool)

(declare-fun b_next!2949 () Bool)

(assert (=> b!136239 (= b_free!2949 (not b_next!2949))))

(declare-fun tp!11299 () Bool)

(declare-fun b_and!8457 () Bool)

(assert (=> b!136239 (= tp!11299 b_and!8457)))

(declare-fun b!136251 () Bool)

(declare-fun b_free!2951 () Bool)

(declare-fun b_next!2951 () Bool)

(assert (=> b!136251 (= b_free!2951 (not b_next!2951))))

(declare-fun tp!11300 () Bool)

(declare-fun b_and!8459 () Bool)

(assert (=> b!136251 (= tp!11300 b_and!8459)))

(declare-fun b!136238 () Bool)

(declare-fun e!88768 () Bool)

(declare-fun e!88772 () Bool)

(assert (=> b!136238 (= e!88768 e!88772)))

(declare-fun res!65370 () Bool)

(assert (=> b!136238 (=> (not res!65370) (not e!88772))))

(declare-datatypes ((V!3501 0))(
  ( (V!3502 (val!1490 Int)) )
))
(declare-datatypes ((tuple2!2626 0))(
  ( (tuple2!2627 (_1!1323 (_ BitVec 64)) (_2!1323 V!3501)) )
))
(declare-datatypes ((List!1742 0))(
  ( (Nil!1739) (Cons!1738 (h!2344 tuple2!2626) (t!6246 List!1742)) )
))
(declare-datatypes ((ListLongMap!1717 0))(
  ( (ListLongMap!1718 (toList!874 List!1742)) )
))
(declare-fun lt!71104 () ListLongMap!1717)

(declare-datatypes ((array!4810 0))(
  ( (array!4811 (arr!2274 (Array (_ BitVec 32) (_ BitVec 64))) (size!2544 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1102 0))(
  ( (ValueCellFull!1102 (v!3221 V!3501)) (EmptyCell!1102) )
))
(declare-datatypes ((array!4812 0))(
  ( (array!4813 (arr!2275 (Array (_ BitVec 32) ValueCell!1102)) (size!2545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1112 0))(
  ( (LongMapFixedSize!1113 (defaultEntry!2890 Int) (mask!7204 (_ BitVec 32)) (extraKeys!2651 (_ BitVec 32)) (zeroValue!2743 V!3501) (minValue!2743 V!3501) (_size!605 (_ BitVec 32)) (_keys!4643 array!4810) (_values!2873 array!4812) (_vacant!605 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!900 0))(
  ( (Cell!901 (v!3222 LongMapFixedSize!1112)) )
))
(declare-datatypes ((LongMap!900 0))(
  ( (LongMap!901 (underlying!461 Cell!900)) )
))
(declare-fun thiss!992 () LongMap!900)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!902 (ListLongMap!1717 (_ BitVec 64)) Bool)

(assert (=> b!136238 (= res!65370 (contains!902 lt!71104 (select (arr!2274 (_keys!4643 (v!3222 (underlying!461 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2628 0))(
  ( (tuple2!2629 (_1!1324 Bool) (_2!1324 LongMapFixedSize!1112)) )
))
(declare-fun lt!71103 () tuple2!2628)

(declare-fun newMap!16 () LongMapFixedSize!1112)

(declare-fun update!196 (LongMapFixedSize!1112 (_ BitVec 64) V!3501) tuple2!2628)

(declare-fun get!1499 (ValueCell!1102 V!3501) V!3501)

(declare-fun dynLambda!429 (Int (_ BitVec 64)) V!3501)

(assert (=> b!136238 (= lt!71103 (update!196 newMap!16 (select (arr!2274 (_keys!4643 (v!3222 (underlying!461 thiss!992)))) from!355) (get!1499 (select (arr!2275 (_values!2873 (v!3222 (underlying!461 thiss!992)))) from!355) (dynLambda!429 (defaultEntry!2890 (v!3222 (underlying!461 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun tp_is_empty!2891 () Bool)

(declare-fun e!88766 () Bool)

(declare-fun e!88773 () Bool)

(declare-fun array_inv!1403 (array!4810) Bool)

(declare-fun array_inv!1404 (array!4812) Bool)

(assert (=> b!136239 (= e!88773 (and tp!11299 tp_is_empty!2891 (array_inv!1403 (_keys!4643 (v!3222 (underlying!461 thiss!992)))) (array_inv!1404 (_values!2873 (v!3222 (underlying!461 thiss!992)))) e!88766))))

(declare-fun b!136240 () Bool)

(declare-fun e!88760 () Bool)

(declare-fun e!88769 () Bool)

(declare-fun mapRes!4696 () Bool)

(assert (=> b!136240 (= e!88760 (and e!88769 mapRes!4696))))

(declare-fun condMapEmpty!4696 () Bool)

(declare-fun mapDefault!4695 () ValueCell!1102)

