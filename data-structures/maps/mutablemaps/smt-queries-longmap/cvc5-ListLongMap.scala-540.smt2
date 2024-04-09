; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13836 () Bool)

(assert start!13836)

(declare-fun b!127775 () Bool)

(declare-fun b_free!2869 () Bool)

(declare-fun b_next!2869 () Bool)

(assert (=> b!127775 (= b_free!2869 (not b_next!2869))))

(declare-fun tp!11024 () Bool)

(declare-fun b_and!7905 () Bool)

(assert (=> b!127775 (= tp!11024 b_and!7905)))

(declare-fun b!127779 () Bool)

(declare-fun b_free!2871 () Bool)

(declare-fun b_next!2871 () Bool)

(assert (=> b!127779 (= b_free!2871 (not b_next!2871))))

(declare-fun tp!11022 () Bool)

(declare-fun b_and!7907 () Bool)

(assert (=> b!127779 (= tp!11022 b_and!7907)))

(declare-datatypes ((V!3449 0))(
  ( (V!3450 (val!1470 Int)) )
))
(declare-datatypes ((array!4720 0))(
  ( (array!4721 (arr!2234 (Array (_ BitVec 32) (_ BitVec 64))) (size!2499 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1082 0))(
  ( (ValueCellFull!1082 (v!3140 V!3449)) (EmptyCell!1082) )
))
(declare-datatypes ((array!4722 0))(
  ( (array!4723 (arr!2235 (Array (_ BitVec 32) ValueCell!1082)) (size!2500 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1072 0))(
  ( (LongMapFixedSize!1073 (defaultEntry!2804 Int) (mask!7072 (_ BitVec 32)) (extraKeys!2581 (_ BitVec 32)) (zeroValue!2665 V!3449) (minValue!2665 V!3449) (_size!585 (_ BitVec 32)) (_keys!4541 array!4720) (_values!2787 array!4722) (_vacant!585 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!862 0))(
  ( (Cell!863 (v!3141 LongMapFixedSize!1072)) )
))
(declare-datatypes ((LongMap!862 0))(
  ( (LongMap!863 (underlying!442 Cell!862)) )
))
(declare-fun thiss!992 () LongMap!862)

(declare-fun tp_is_empty!2851 () Bool)

(declare-fun e!83451 () Bool)

(declare-fun e!83460 () Bool)

(declare-fun array_inv!1373 (array!4720) Bool)

(declare-fun array_inv!1374 (array!4722) Bool)

(assert (=> b!127775 (= e!83460 (and tp!11024 tp_is_empty!2851 (array_inv!1373 (_keys!4541 (v!3141 (underlying!442 thiss!992)))) (array_inv!1374 (_values!2787 (v!3141 (underlying!442 thiss!992)))) e!83451))))

(declare-fun b!127776 () Bool)

(declare-fun e!83453 () Bool)

(declare-fun e!83450 () Bool)

(assert (=> b!127776 (= e!83453 e!83450)))

(declare-fun b!127777 () Bool)

(declare-fun res!61752 () Bool)

(declare-fun e!83452 () Bool)

(assert (=> b!127777 (=> (not res!61752) (not e!83452))))

(declare-fun newMap!16 () LongMapFixedSize!1072)

(assert (=> b!127777 (= res!61752 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7072 newMap!16)) (_size!585 (v!3141 (underlying!442 thiss!992)))))))

(declare-fun b!127778 () Bool)

(declare-fun res!61753 () Bool)

(assert (=> b!127778 (=> (not res!61753) (not e!83452))))

(declare-fun valid!509 (LongMapFixedSize!1072) Bool)

(assert (=> b!127778 (= res!61753 (valid!509 newMap!16))))

(declare-fun e!83459 () Bool)

(declare-fun e!83457 () Bool)

(assert (=> b!127779 (= e!83457 (and tp!11022 tp_is_empty!2851 (array_inv!1373 (_keys!4541 newMap!16)) (array_inv!1374 (_values!2787 newMap!16)) e!83459))))

(declare-fun b!127780 () Bool)

(declare-fun e!83461 () Bool)

(assert (=> b!127780 (= e!83461 tp_is_empty!2851)))

(declare-fun b!127781 () Bool)

(declare-fun e!83449 () Bool)

(declare-fun mapRes!4538 () Bool)

(assert (=> b!127781 (= e!83459 (and e!83449 mapRes!4538))))

(declare-fun condMapEmpty!4538 () Bool)

(declare-fun mapDefault!4538 () ValueCell!1082)

