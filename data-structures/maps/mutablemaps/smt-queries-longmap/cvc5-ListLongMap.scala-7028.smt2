; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89216 () Bool)

(assert start!89216)

(declare-fun b!1022442 () Bool)

(declare-fun b_free!20221 () Bool)

(declare-fun b_next!20221 () Bool)

(assert (=> b!1022442 (= b_free!20221 (not b_next!20221))))

(declare-fun tp!71698 () Bool)

(declare-fun b_and!32443 () Bool)

(assert (=> b!1022442 (= tp!71698 b_and!32443)))

(declare-fun mapNonEmpty!37329 () Bool)

(declare-fun mapRes!37329 () Bool)

(declare-fun tp!71699 () Bool)

(declare-fun e!576032 () Bool)

(assert (=> mapNonEmpty!37329 (= mapRes!37329 (and tp!71699 e!576032))))

(declare-datatypes ((V!36795 0))(
  ( (V!36796 (val!12021 Int)) )
))
(declare-datatypes ((ValueCell!11267 0))(
  ( (ValueCellFull!11267 (v!14591 V!36795)) (EmptyCell!11267) )
))
(declare-fun mapRest!37329 () (Array (_ BitVec 32) ValueCell!11267))

(declare-fun mapValue!37329 () ValueCell!11267)

(declare-fun mapKey!37329 () (_ BitVec 32))

(declare-datatypes ((array!63910 0))(
  ( (array!63911 (arr!30763 (Array (_ BitVec 32) (_ BitVec 64))) (size!31275 (_ BitVec 32))) )
))
(declare-datatypes ((array!63912 0))(
  ( (array!63913 (arr!30764 (Array (_ BitVec 32) ValueCell!11267)) (size!31276 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5128 0))(
  ( (LongMapFixedSize!5129 (defaultEntry!5916 Int) (mask!29508 (_ BitVec 32)) (extraKeys!5648 (_ BitVec 32)) (zeroValue!5752 V!36795) (minValue!5752 V!36795) (_size!2619 (_ BitVec 32)) (_keys!11058 array!63910) (_values!5939 array!63912) (_vacant!2619 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5128)

(assert (=> mapNonEmpty!37329 (= (arr!30764 (_values!5939 thiss!1427)) (store mapRest!37329 mapKey!37329 mapValue!37329))))

(declare-fun b!1022441 () Bool)

(declare-fun tp_is_empty!23941 () Bool)

(assert (=> b!1022441 (= e!576032 tp_is_empty!23941)))

(declare-fun e!576033 () Bool)

(declare-fun e!576035 () Bool)

(declare-fun array_inv!23713 (array!63910) Bool)

(declare-fun array_inv!23714 (array!63912) Bool)

(assert (=> b!1022442 (= e!576035 (and tp!71698 tp_is_empty!23941 (array_inv!23713 (_keys!11058 thiss!1427)) (array_inv!23714 (_values!5939 thiss!1427)) e!576033))))

(declare-fun b!1022443 () Bool)

(declare-fun e!576037 () Bool)

(assert (=> b!1022443 (= e!576037 tp_is_empty!23941)))

(declare-fun b!1022444 () Bool)

(assert (=> b!1022444 (= e!576033 (and e!576037 mapRes!37329))))

(declare-fun condMapEmpty!37329 () Bool)

(declare-fun mapDefault!37329 () ValueCell!11267)

