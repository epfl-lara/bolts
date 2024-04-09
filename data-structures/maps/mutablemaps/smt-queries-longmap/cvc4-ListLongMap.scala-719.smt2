; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16834 () Bool)

(assert start!16834)

(declare-fun b!169575 () Bool)

(declare-fun b_free!4155 () Bool)

(declare-fun b_next!4155 () Bool)

(assert (=> b!169575 (= b_free!4155 (not b_next!4155))))

(declare-fun tp!15071 () Bool)

(declare-fun b_and!10587 () Bool)

(assert (=> b!169575 (= tp!15071 b_and!10587)))

(declare-fun b!169583 () Bool)

(declare-fun b_free!4157 () Bool)

(declare-fun b_next!4157 () Bool)

(assert (=> b!169583 (= b_free!4157 (not b_next!4157))))

(declare-fun tp!15072 () Bool)

(declare-fun b_and!10589 () Bool)

(assert (=> b!169583 (= tp!15072 b_and!10589)))

(declare-fun tp_is_empty!3929 () Bool)

(declare-fun e!111837 () Bool)

(declare-fun e!111840 () Bool)

(declare-datatypes ((V!4885 0))(
  ( (V!4886 (val!2009 Int)) )
))
(declare-datatypes ((ValueCell!1621 0))(
  ( (ValueCellFull!1621 (v!3870 V!4885)) (EmptyCell!1621) )
))
(declare-datatypes ((array!6954 0))(
  ( (array!6955 (arr!3312 (Array (_ BitVec 32) (_ BitVec 64))) (size!3600 (_ BitVec 32))) )
))
(declare-datatypes ((array!6956 0))(
  ( (array!6957 (arr!3313 (Array (_ BitVec 32) ValueCell!1621)) (size!3601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2150 0))(
  ( (LongMapFixedSize!2151 (defaultEntry!3517 Int) (mask!8304 (_ BitVec 32)) (extraKeys!3258 (_ BitVec 32)) (zeroValue!3360 V!4885) (minValue!3360 V!4885) (_size!1124 (_ BitVec 32)) (_keys!5342 array!6954) (_values!3500 array!6956) (_vacant!1124 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3226 0))(
  ( (tuple2!3227 (_1!1623 Bool) (_2!1623 LongMapFixedSize!2150)) )
))
(declare-fun err!95 () tuple2!3226)

(declare-fun array_inv!2115 (array!6954) Bool)

(declare-fun array_inv!2116 (array!6956) Bool)

(assert (=> b!169575 (= e!111837 (and tp!15071 tp_is_empty!3929 (array_inv!2115 (_keys!5342 (_2!1623 err!95))) (array_inv!2116 (_values!3500 (_2!1623 err!95))) e!111840))))

(declare-fun b!169576 () Bool)

(declare-fun e!111841 () Bool)

(assert (=> b!169576 (= e!111841 tp_is_empty!3929)))

(declare-fun mapNonEmpty!6656 () Bool)

(declare-fun mapRes!6657 () Bool)

(declare-fun tp!15070 () Bool)

(declare-fun e!111839 () Bool)

(assert (=> mapNonEmpty!6656 (= mapRes!6657 (and tp!15070 e!111839))))

(declare-fun mapKey!6657 () (_ BitVec 32))

(declare-fun mapValue!6656 () ValueCell!1621)

(declare-fun mapRest!6656 () (Array (_ BitVec 32) ValueCell!1621))

(assert (=> mapNonEmpty!6656 (= (arr!3313 (_values!3500 (_2!1623 err!95))) (store mapRest!6656 mapKey!6657 mapValue!6656))))

(declare-fun b!169577 () Bool)

(declare-fun e!111833 () Bool)

(assert (=> b!169577 (= e!111833 false)))

(declare-fun lt!84971 () Bool)

(declare-fun valid!917 (LongMapFixedSize!2150) Bool)

(assert (=> b!169577 (= lt!84971 (valid!917 (_2!1623 err!95)))))

(assert (=> b!169577 true))

(assert (=> b!169577 e!111837))

(declare-fun b!169578 () Bool)

(declare-fun res!80643 () Bool)

(declare-fun e!111831 () Bool)

(assert (=> b!169578 (=> (not res!80643) (not e!111831))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169578 (= res!80643 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6657 () Bool)

(declare-fun mapRes!6656 () Bool)

(declare-fun tp!15069 () Bool)

(declare-fun e!111830 () Bool)

(assert (=> mapNonEmpty!6657 (= mapRes!6656 (and tp!15069 e!111830))))

(declare-fun mapValue!6657 () ValueCell!1621)

(declare-fun mapRest!6657 () (Array (_ BitVec 32) ValueCell!1621))

(declare-fun mapKey!6656 () (_ BitVec 32))

(declare-fun thiss!1248 () LongMapFixedSize!2150)

(assert (=> mapNonEmpty!6657 (= (arr!3313 (_values!3500 thiss!1248)) (store mapRest!6657 mapKey!6656 mapValue!6657))))

(declare-fun b!169580 () Bool)

(declare-fun e!111832 () Bool)

(declare-fun e!111834 () Bool)

(assert (=> b!169580 (= e!111832 (and e!111834 mapRes!6656))))

(declare-fun condMapEmpty!6657 () Bool)

(declare-fun mapDefault!6656 () ValueCell!1621)

