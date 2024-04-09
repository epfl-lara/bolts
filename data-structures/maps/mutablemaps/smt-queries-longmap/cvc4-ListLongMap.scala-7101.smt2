; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90092 () Bool)

(assert start!90092)

(declare-fun b!1031401 () Bool)

(declare-fun b_free!20663 () Bool)

(declare-fun b_next!20663 () Bool)

(assert (=> b!1031401 (= b_free!20663 (not b_next!20663))))

(declare-fun tp!73060 () Bool)

(declare-fun b_and!33111 () Bool)

(assert (=> b!1031401 (= tp!73060 b_and!33111)))

(declare-fun b!1031393 () Bool)

(declare-fun res!689711 () Bool)

(declare-fun e!582578 () Bool)

(assert (=> b!1031393 (=> res!689711 e!582578)))

(declare-datatypes ((V!37383 0))(
  ( (V!37384 (val!12242 Int)) )
))
(declare-datatypes ((ValueCell!11488 0))(
  ( (ValueCellFull!11488 (v!14820 V!37383)) (EmptyCell!11488) )
))
(declare-datatypes ((Unit!33718 0))(
  ( (Unit!33719) )
))
(declare-datatypes ((array!64814 0))(
  ( (array!64815 (arr!31205 (Array (_ BitVec 32) (_ BitVec 64))) (size!31723 (_ BitVec 32))) )
))
(declare-datatypes ((array!64816 0))(
  ( (array!64817 (arr!31206 (Array (_ BitVec 32) ValueCell!11488)) (size!31724 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5570 0))(
  ( (LongMapFixedSize!5571 (defaultEntry!6159 Int) (mask!29950 (_ BitVec 32)) (extraKeys!5891 (_ BitVec 32)) (zeroValue!5995 V!37383) (minValue!5995 V!37383) (_size!2840 (_ BitVec 32)) (_keys!11329 array!64814) (_values!6182 array!64816) (_vacant!2840 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15770 0))(
  ( (tuple2!15771 (_1!7895 Unit!33718) (_2!7895 LongMapFixedSize!5570)) )
))
(declare-fun lt!455350 () tuple2!15770)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031393 (= res!689711 (not (validMask!0 (mask!29950 (_2!7895 lt!455350)))))))

(declare-fun mapNonEmpty!38028 () Bool)

(declare-fun mapRes!38028 () Bool)

(declare-fun tp!73061 () Bool)

(declare-fun e!582579 () Bool)

(assert (=> mapNonEmpty!38028 (= mapRes!38028 (and tp!73061 e!582579))))

(declare-fun mapKey!38028 () (_ BitVec 32))

(declare-fun mapValue!38028 () ValueCell!11488)

(declare-fun thiss!1427 () LongMapFixedSize!5570)

(declare-fun mapRest!38028 () (Array (_ BitVec 32) ValueCell!11488))

(assert (=> mapNonEmpty!38028 (= (arr!31206 (_values!6182 thiss!1427)) (store mapRest!38028 mapKey!38028 mapValue!38028))))

(declare-fun b!1031394 () Bool)

(declare-fun e!582583 () Bool)

(declare-fun e!582582 () Bool)

(assert (=> b!1031394 (= e!582583 (and e!582582 mapRes!38028))))

(declare-fun condMapEmpty!38028 () Bool)

(declare-fun mapDefault!38028 () ValueCell!11488)

