; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89270 () Bool)

(assert start!89270)

(declare-fun b!1023116 () Bool)

(declare-fun b_free!20275 () Bool)

(declare-fun b_next!20275 () Bool)

(assert (=> b!1023116 (= b_free!20275 (not b_next!20275))))

(declare-fun tp!71860 () Bool)

(declare-fun b_and!32515 () Bool)

(assert (=> b!1023116 (= tp!71860 b_and!32515)))

(declare-fun b!1023113 () Bool)

(declare-fun e!576522 () Bool)

(declare-fun tp_is_empty!23995 () Bool)

(assert (=> b!1023113 (= e!576522 tp_is_empty!23995)))

(declare-fun b!1023114 () Bool)

(declare-fun e!576520 () Bool)

(declare-fun e!576519 () Bool)

(declare-fun mapRes!37410 () Bool)

(assert (=> b!1023114 (= e!576520 (and e!576519 mapRes!37410))))

(declare-fun condMapEmpty!37410 () Bool)

(declare-datatypes ((V!36867 0))(
  ( (V!36868 (val!12048 Int)) )
))
(declare-datatypes ((ValueCell!11294 0))(
  ( (ValueCellFull!11294 (v!14618 V!36867)) (EmptyCell!11294) )
))
(declare-datatypes ((array!64018 0))(
  ( (array!64019 (arr!30817 (Array (_ BitVec 32) (_ BitVec 64))) (size!31329 (_ BitVec 32))) )
))
(declare-datatypes ((array!64020 0))(
  ( (array!64021 (arr!30818 (Array (_ BitVec 32) ValueCell!11294)) (size!31330 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5182 0))(
  ( (LongMapFixedSize!5183 (defaultEntry!5943 Int) (mask!29553 (_ BitVec 32)) (extraKeys!5675 (_ BitVec 32)) (zeroValue!5779 V!36867) (minValue!5779 V!36867) (_size!2646 (_ BitVec 32)) (_keys!11085 array!64018) (_values!5966 array!64020) (_vacant!2646 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5182)

(declare-fun mapDefault!37410 () ValueCell!11294)

