; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92160 () Bool)

(assert start!92160)

(declare-fun b!1047917 () Bool)

(declare-fun b_free!21175 () Bool)

(declare-fun b_next!21175 () Bool)

(assert (=> b!1047917 (= b_free!21175 (not b_next!21175))))

(declare-fun tp!74792 () Bool)

(declare-fun b_and!33903 () Bool)

(assert (=> b!1047917 (= tp!74792 b_and!33903)))

(declare-fun res!697210 () Bool)

(declare-fun e!594264 () Bool)

(assert (=> start!92160 (=> (not res!697210) (not e!594264))))

(declare-datatypes ((V!38067 0))(
  ( (V!38068 (val!12498 Int)) )
))
(declare-datatypes ((ValueCell!11744 0))(
  ( (ValueCellFull!11744 (v!15099 V!38067)) (EmptyCell!11744) )
))
(declare-datatypes ((array!65954 0))(
  ( (array!65955 (arr!31717 (Array (_ BitVec 32) (_ BitVec 64))) (size!32254 (_ BitVec 32))) )
))
(declare-datatypes ((array!65956 0))(
  ( (array!65957 (arr!31718 (Array (_ BitVec 32) ValueCell!11744)) (size!32255 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6082 0))(
  ( (LongMapFixedSize!6083 (defaultEntry!6445 Int) (mask!30597 (_ BitVec 32)) (extraKeys!6173 (_ BitVec 32)) (zeroValue!6279 V!38067) (minValue!6279 V!38067) (_size!3096 (_ BitVec 32)) (_keys!11721 array!65954) (_values!6468 array!65956) (_vacant!3096 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6082)

(declare-fun valid!2236 (LongMapFixedSize!6082) Bool)

(assert (=> start!92160 (= res!697210 (valid!2236 thiss!1427))))

(assert (=> start!92160 e!594264))

(declare-fun e!594267 () Bool)

(assert (=> start!92160 e!594267))

(assert (=> start!92160 true))

(declare-fun b!1047911 () Bool)

(declare-fun e!594266 () Bool)

(declare-fun tp_is_empty!24895 () Bool)

(assert (=> b!1047911 (= e!594266 tp_is_empty!24895)))

(declare-fun mapIsEmpty!38992 () Bool)

(declare-fun mapRes!38992 () Bool)

(assert (=> mapIsEmpty!38992 mapRes!38992))

(declare-fun mapNonEmpty!38992 () Bool)

(declare-fun tp!74793 () Bool)

(assert (=> mapNonEmpty!38992 (= mapRes!38992 (and tp!74793 e!594266))))

(declare-fun mapValue!38992 () ValueCell!11744)

(declare-fun mapRest!38992 () (Array (_ BitVec 32) ValueCell!11744))

(declare-fun mapKey!38992 () (_ BitVec 32))

(assert (=> mapNonEmpty!38992 (= (arr!31718 (_values!6468 thiss!1427)) (store mapRest!38992 mapKey!38992 mapValue!38992))))

(declare-fun b!1047912 () Bool)

(declare-fun e!594269 () Bool)

(assert (=> b!1047912 (= e!594269 tp_is_empty!24895)))

(declare-fun b!1047913 () Bool)

(declare-fun e!594265 () Bool)

(assert (=> b!1047913 (= e!594265 (and e!594269 mapRes!38992))))

(declare-fun condMapEmpty!38992 () Bool)

(declare-fun mapDefault!38992 () ValueCell!11744)

