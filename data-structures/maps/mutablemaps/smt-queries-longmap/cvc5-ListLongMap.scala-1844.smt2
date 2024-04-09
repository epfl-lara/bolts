; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33418 () Bool)

(assert start!33418)

(declare-fun b!331578 () Bool)

(declare-fun res!182739 () Bool)

(declare-fun e!203505 () Bool)

(assert (=> b!331578 (=> (not res!182739) (not e!203505))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9891 0))(
  ( (V!9892 (val!3387 Int)) )
))
(declare-datatypes ((ValueCell!2999 0))(
  ( (ValueCellFull!2999 (v!5541 V!9891)) (EmptyCell!2999) )
))
(declare-datatypes ((array!16967 0))(
  ( (array!16968 (arr!8017 (Array (_ BitVec 32) ValueCell!2999)) (size!8369 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16967)

(declare-datatypes ((array!16969 0))(
  ( (array!16970 (arr!8018 (Array (_ BitVec 32) (_ BitVec 64))) (size!8370 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16969)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331578 (= res!182739 (and (= (size!8369 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8370 _keys!1895) (size!8369 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11406 () Bool)

(declare-fun mapRes!11406 () Bool)

(assert (=> mapIsEmpty!11406 mapRes!11406))

(declare-fun b!331580 () Bool)

(declare-fun e!203503 () Bool)

(declare-fun tp_is_empty!6685 () Bool)

(assert (=> b!331580 (= e!203503 tp_is_empty!6685)))

(declare-fun b!331581 () Bool)

(declare-datatypes ((List!4595 0))(
  ( (Nil!4592) (Cons!4591 (h!5447 (_ BitVec 64)) (t!9685 List!4595)) )
))
(declare-fun noDuplicate!173 (List!4595) Bool)

(assert (=> b!331581 (= e!203505 (not (noDuplicate!173 Nil!4592)))))

(declare-fun mapNonEmpty!11406 () Bool)

(declare-fun tp!23781 () Bool)

(declare-fun e!203506 () Bool)

(assert (=> mapNonEmpty!11406 (= mapRes!11406 (and tp!23781 e!203506))))

(declare-fun mapValue!11406 () ValueCell!2999)

(declare-fun mapKey!11406 () (_ BitVec 32))

(declare-fun mapRest!11406 () (Array (_ BitVec 32) ValueCell!2999))

(assert (=> mapNonEmpty!11406 (= (arr!8017 _values!1525) (store mapRest!11406 mapKey!11406 mapValue!11406))))

(declare-fun b!331582 () Bool)

(declare-fun e!203502 () Bool)

(assert (=> b!331582 (= e!203502 (and e!203503 mapRes!11406))))

(declare-fun condMapEmpty!11406 () Bool)

(declare-fun mapDefault!11406 () ValueCell!2999)

