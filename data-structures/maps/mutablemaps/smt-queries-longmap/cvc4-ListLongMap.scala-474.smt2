; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9438 () Bool)

(assert start!9438)

(declare-fun b!68503 () Bool)

(declare-fun b_free!2085 () Bool)

(declare-fun b_next!2085 () Bool)

(assert (=> b!68503 (= b_free!2085 (not b_next!2085))))

(declare-fun tp!8415 () Bool)

(declare-fun b_and!4217 () Bool)

(assert (=> b!68503 (= tp!8415 b_and!4217)))

(declare-fun b!68495 () Bool)

(declare-fun b_free!2087 () Bool)

(declare-fun b_next!2087 () Bool)

(assert (=> b!68495 (= b_free!2087 (not b_next!2087))))

(declare-fun tp!8417 () Bool)

(declare-fun b_and!4219 () Bool)

(assert (=> b!68495 (= tp!8417 b_and!4219)))

(declare-fun b!68486 () Bool)

(declare-fun e!44907 () Bool)

(declare-fun e!44898 () Bool)

(assert (=> b!68486 (= e!44907 (not e!44898))))

(declare-fun res!36835 () Bool)

(assert (=> b!68486 (=> res!36835 e!44898)))

(declare-datatypes ((V!2925 0))(
  ( (V!2926 (val!1274 Int)) )
))
(declare-datatypes ((array!3858 0))(
  ( (array!3859 (arr!1842 (Array (_ BitVec 32) (_ BitVec 64))) (size!2078 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!886 0))(
  ( (ValueCellFull!886 (v!2496 V!2925)) (EmptyCell!886) )
))
(declare-datatypes ((array!3860 0))(
  ( (array!3861 (arr!1843 (Array (_ BitVec 32) ValueCell!886)) (size!2079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!680 0))(
  ( (LongMapFixedSize!681 (defaultEntry!2169 Int) (mask!6114 (_ BitVec 32)) (extraKeys!2036 (_ BitVec 32)) (zeroValue!2075 V!2925) (minValue!2075 V!2925) (_size!389 (_ BitVec 32)) (_keys!3813 array!3858) (_values!2152 array!3860) (_vacant!389 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!490 0))(
  ( (Cell!491 (v!2497 LongMapFixedSize!680)) )
))
(declare-datatypes ((LongMap!490 0))(
  ( (LongMap!491 (underlying!256 Cell!490)) )
))
(declare-fun thiss!992 () LongMap!490)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!68486 (= res!36835 (not (validMask!0 (mask!6114 (v!2497 (underlying!256 thiss!992))))))))

(declare-datatypes ((tuple2!2122 0))(
  ( (tuple2!2123 (_1!1071 (_ BitVec 64)) (_2!1071 V!2925)) )
))
(declare-datatypes ((List!1496 0))(
  ( (Nil!1493) (Cons!1492 (h!2077 tuple2!2122) (t!5007 List!1496)) )
))
(declare-datatypes ((ListLongMap!1423 0))(
  ( (ListLongMap!1424 (toList!727 List!1496)) )
))
(declare-fun lt!29804 () ListLongMap!1423)

(declare-fun lt!29815 () tuple2!2122)

(declare-fun lt!29808 () tuple2!2122)

(declare-fun +!90 (ListLongMap!1423 tuple2!2122) ListLongMap!1423)

(assert (=> b!68486 (= (+!90 (+!90 lt!29804 lt!29815) lt!29808) (+!90 (+!90 lt!29804 lt!29808) lt!29815))))

(assert (=> b!68486 (= lt!29808 (tuple2!2123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2075 (v!2497 (underlying!256 thiss!992)))))))

(declare-fun lt!29806 () V!2925)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!68486 (= lt!29815 (tuple2!2123 (select (arr!1842 (_keys!3813 (v!2497 (underlying!256 thiss!992)))) from!355) lt!29806))))

(declare-datatypes ((Unit!1917 0))(
  ( (Unit!1918) )
))
(declare-fun lt!29814 () Unit!1917)

(declare-fun addCommutativeForDiffKeys!9 (ListLongMap!1423 (_ BitVec 64) V!2925 (_ BitVec 64) V!2925) Unit!1917)

(assert (=> b!68486 (= lt!29814 (addCommutativeForDiffKeys!9 lt!29804 (select (arr!1842 (_keys!3813 (v!2497 (underlying!256 thiss!992)))) from!355) lt!29806 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2075 (v!2497 (underlying!256 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!54 (array!3858 array!3860 (_ BitVec 32) (_ BitVec 32) V!2925 V!2925 (_ BitVec 32) Int) ListLongMap!1423)

(assert (=> b!68486 (= lt!29804 (getCurrentListMapNoExtraKeys!54 (_keys!3813 (v!2497 (underlying!256 thiss!992))) (_values!2152 (v!2497 (underlying!256 thiss!992))) (mask!6114 (v!2497 (underlying!256 thiss!992))) (extraKeys!2036 (v!2497 (underlying!256 thiss!992))) (zeroValue!2075 (v!2497 (underlying!256 thiss!992))) (minValue!2075 (v!2497 (underlying!256 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2169 (v!2497 (underlying!256 thiss!992)))))))

(declare-fun b!68487 () Bool)

(declare-fun e!44908 () Bool)

(declare-fun tp_is_empty!2459 () Bool)

(assert (=> b!68487 (= e!44908 tp_is_empty!2459)))

(declare-fun b!68488 () Bool)

(declare-fun e!44914 () Bool)

(declare-fun e!44901 () Bool)

(assert (=> b!68488 (= e!44914 e!44901)))

(declare-fun res!36834 () Bool)

(assert (=> b!68488 (=> (not res!36834) (not e!44901))))

(assert (=> b!68488 (= res!36834 (and (not (= (select (arr!1842 (_keys!3813 (v!2497 (underlying!256 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1842 (_keys!3813 (v!2497 (underlying!256 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1134 (ValueCell!886 V!2925) V!2925)

(declare-fun dynLambda!326 (Int (_ BitVec 64)) V!2925)

(assert (=> b!68488 (= lt!29806 (get!1134 (select (arr!1843 (_values!2152 (v!2497 (underlying!256 thiss!992)))) from!355) (dynLambda!326 (defaultEntry!2169 (v!2497 (underlying!256 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!68489 () Bool)

(declare-fun e!44910 () Bool)

(declare-fun e!44899 () Bool)

(declare-fun mapRes!3108 () Bool)

(assert (=> b!68489 (= e!44910 (and e!44899 mapRes!3108))))

(declare-fun condMapEmpty!3107 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!680)

(declare-fun mapDefault!3108 () ValueCell!886)

