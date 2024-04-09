; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91968 () Bool)

(assert start!91968)

(declare-fun b!1045492 () Bool)

(declare-fun b_free!21139 () Bool)

(declare-fun b_next!21139 () Bool)

(assert (=> b!1045492 (= b_free!21139 (not b_next!21139))))

(declare-fun tp!74677 () Bool)

(declare-fun b_and!33783 () Bool)

(assert (=> b!1045492 (= tp!74677 b_and!33783)))

(declare-fun res!696205 () Bool)

(declare-fun e!592687 () Bool)

(assert (=> start!91968 (=> (not res!696205) (not e!592687))))

(declare-datatypes ((V!38019 0))(
  ( (V!38020 (val!12480 Int)) )
))
(declare-datatypes ((ValueCell!11726 0))(
  ( (ValueCellFull!11726 (v!15077 V!38019)) (EmptyCell!11726) )
))
(declare-datatypes ((array!65878 0))(
  ( (array!65879 (arr!31681 (Array (_ BitVec 32) (_ BitVec 64))) (size!32217 (_ BitVec 32))) )
))
(declare-datatypes ((array!65880 0))(
  ( (array!65881 (arr!31682 (Array (_ BitVec 32) ValueCell!11726)) (size!32218 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6046 0))(
  ( (LongMapFixedSize!6047 (defaultEntry!6419 Int) (mask!30545 (_ BitVec 32)) (extraKeys!6147 (_ BitVec 32)) (zeroValue!6253 V!38019) (minValue!6253 V!38019) (_size!3078 (_ BitVec 32)) (_keys!11688 array!65878) (_values!6442 array!65880) (_vacant!3078 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6046)

(declare-fun valid!2222 (LongMapFixedSize!6046) Bool)

(assert (=> start!91968 (= res!696205 (valid!2222 thiss!1427))))

(assert (=> start!91968 e!592687))

(declare-fun e!592684 () Bool)

(assert (=> start!91968 e!592684))

(assert (=> start!91968 true))

(declare-fun mapIsEmpty!38930 () Bool)

(declare-fun mapRes!38930 () Bool)

(assert (=> mapIsEmpty!38930 mapRes!38930))

(declare-fun b!1045485 () Bool)

(declare-fun e!592688 () Bool)

(declare-fun tp_is_empty!24859 () Bool)

(assert (=> b!1045485 (= e!592688 tp_is_empty!24859)))

(declare-fun mapNonEmpty!38930 () Bool)

(declare-fun tp!74676 () Bool)

(declare-fun e!592683 () Bool)

(assert (=> mapNonEmpty!38930 (= mapRes!38930 (and tp!74676 e!592683))))

(declare-fun mapRest!38930 () (Array (_ BitVec 32) ValueCell!11726))

(declare-fun mapKey!38930 () (_ BitVec 32))

(declare-fun mapValue!38930 () ValueCell!11726)

(assert (=> mapNonEmpty!38930 (= (arr!31682 (_values!6442 thiss!1427)) (store mapRest!38930 mapKey!38930 mapValue!38930))))

(declare-fun b!1045486 () Bool)

(declare-fun res!696208 () Bool)

(declare-fun e!592686 () Bool)

(assert (=> b!1045486 (=> res!696208 e!592686)))

(declare-datatypes ((Unit!34144 0))(
  ( (Unit!34145) )
))
(declare-datatypes ((tuple2!15890 0))(
  ( (tuple2!15891 (_1!7955 Unit!34144) (_2!7955 LongMapFixedSize!6046)) )
))
(declare-fun lt!461570 () tuple2!15890)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045486 (= res!696208 (not (validMask!0 (mask!30545 (_2!7955 lt!461570)))))))

(declare-fun b!1045487 () Bool)

(declare-fun e!592682 () Bool)

(assert (=> b!1045487 (= e!592682 (and e!592688 mapRes!38930))))

(declare-fun condMapEmpty!38930 () Bool)

(declare-fun mapDefault!38930 () ValueCell!11726)

