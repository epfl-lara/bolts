; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9434 () Bool)

(assert start!9434)

(declare-fun b!68379 () Bool)

(declare-fun b_free!2077 () Bool)

(declare-fun b_next!2077 () Bool)

(assert (=> b!68379 (= b_free!2077 (not b_next!2077))))

(declare-fun tp!8393 () Bool)

(declare-fun b_and!4201 () Bool)

(assert (=> b!68379 (= tp!8393 b_and!4201)))

(declare-fun b!68377 () Bool)

(declare-fun b_free!2079 () Bool)

(declare-fun b_next!2079 () Bool)

(assert (=> b!68377 (= b_free!2079 (not b_next!2079))))

(declare-fun tp!8394 () Bool)

(declare-fun b_and!4203 () Bool)

(assert (=> b!68377 (= tp!8394 b_and!4203)))

(declare-fun b!68362 () Bool)

(declare-fun e!44793 () Bool)

(declare-fun e!44791 () Bool)

(assert (=> b!68362 (= e!44793 e!44791)))

(declare-fun b!68363 () Bool)

(declare-fun e!44806 () Bool)

(declare-fun tp_is_empty!2455 () Bool)

(assert (=> b!68363 (= e!44806 tp_is_empty!2455)))

(declare-fun mapIsEmpty!3095 () Bool)

(declare-fun mapRes!3095 () Bool)

(assert (=> mapIsEmpty!3095 mapRes!3095))

(declare-fun b!68364 () Bool)

(declare-fun e!44803 () Bool)

(declare-fun e!44804 () Bool)

(assert (=> b!68364 (= e!44803 e!44804)))

(declare-fun res!36782 () Bool)

(assert (=> b!68364 (=> (not res!36782) (not e!44804))))

(declare-datatypes ((V!2921 0))(
  ( (V!2922 (val!1272 Int)) )
))
(declare-datatypes ((tuple2!2116 0))(
  ( (tuple2!2117 (_1!1068 (_ BitVec 64)) (_2!1068 V!2921)) )
))
(declare-datatypes ((List!1493 0))(
  ( (Nil!1490) (Cons!1489 (h!2074 tuple2!2116) (t!4996 List!1493)) )
))
(declare-datatypes ((ListLongMap!1419 0))(
  ( (ListLongMap!1420 (toList!725 List!1493)) )
))
(declare-fun lt!29738 () ListLongMap!1419)

(declare-fun lt!29741 () ListLongMap!1419)

(assert (=> b!68364 (= res!36782 (= lt!29738 lt!29741))))

(declare-datatypes ((array!3850 0))(
  ( (array!3851 (arr!1838 (Array (_ BitVec 32) (_ BitVec 64))) (size!2074 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!884 0))(
  ( (ValueCellFull!884 (v!2492 V!2921)) (EmptyCell!884) )
))
(declare-datatypes ((array!3852 0))(
  ( (array!3853 (arr!1839 (Array (_ BitVec 32) ValueCell!884)) (size!2075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!676 0))(
  ( (LongMapFixedSize!677 (defaultEntry!2167 Int) (mask!6112 (_ BitVec 32)) (extraKeys!2034 (_ BitVec 32)) (zeroValue!2073 V!2921) (minValue!2073 V!2921) (_size!387 (_ BitVec 32)) (_keys!3811 array!3850) (_values!2150 array!3852) (_vacant!387 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!676)

(declare-fun map!1146 (LongMapFixedSize!676) ListLongMap!1419)

(assert (=> b!68364 (= lt!29741 (map!1146 newMap!16))))

(declare-datatypes ((Cell!486 0))(
  ( (Cell!487 (v!2493 LongMapFixedSize!676)) )
))
(declare-datatypes ((LongMap!486 0))(
  ( (LongMap!487 (underlying!254 Cell!486)) )
))
(declare-fun thiss!992 () LongMap!486)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!420 (array!3850 array!3852 (_ BitVec 32) (_ BitVec 32) V!2921 V!2921 (_ BitVec 32) Int) ListLongMap!1419)

(assert (=> b!68364 (= lt!29738 (getCurrentListMap!420 (_keys!3811 (v!2493 (underlying!254 thiss!992))) (_values!2150 (v!2493 (underlying!254 thiss!992))) (mask!6112 (v!2493 (underlying!254 thiss!992))) (extraKeys!2034 (v!2493 (underlying!254 thiss!992))) (zeroValue!2073 (v!2493 (underlying!254 thiss!992))) (minValue!2073 (v!2493 (underlying!254 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2167 (v!2493 (underlying!254 thiss!992)))))))

(declare-fun b!68365 () Bool)

(declare-fun res!36785 () Bool)

(assert (=> b!68365 (=> (not res!36785) (not e!44803))))

(assert (=> b!68365 (= res!36785 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6112 newMap!16)) (_size!387 (v!2493 (underlying!254 thiss!992)))))))

(declare-fun b!68366 () Bool)

(declare-fun res!36787 () Bool)

(assert (=> b!68366 (=> (not res!36787) (not e!44803))))

(assert (=> b!68366 (= res!36787 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2074 (_keys!3811 (v!2493 (underlying!254 thiss!992)))))))))

(declare-fun res!36781 () Bool)

(assert (=> start!9434 (=> (not res!36781) (not e!44803))))

(declare-fun valid!280 (LongMap!486) Bool)

(assert (=> start!9434 (= res!36781 (valid!280 thiss!992))))

(assert (=> start!9434 e!44803))

(assert (=> start!9434 e!44793))

(assert (=> start!9434 true))

(declare-fun e!44790 () Bool)

(assert (=> start!9434 e!44790))

(declare-fun b!68367 () Bool)

(declare-fun e!44807 () Bool)

(declare-fun e!44798 () Bool)

(declare-fun mapRes!3096 () Bool)

(assert (=> b!68367 (= e!44807 (and e!44798 mapRes!3096))))

(declare-fun condMapEmpty!3096 () Bool)

(declare-fun mapDefault!3095 () ValueCell!884)

