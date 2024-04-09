; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33536 () Bool)

(assert start!33536)

(declare-fun b_free!6817 () Bool)

(declare-fun b_next!6817 () Bool)

(assert (=> start!33536 (= b_free!6817 (not b_next!6817))))

(declare-fun tp!23946 () Bool)

(declare-fun b_and!14009 () Bool)

(assert (=> start!33536 (= tp!23946 b_and!14009)))

(declare-fun b!332548 () Bool)

(declare-fun e!204221 () Bool)

(assert (=> b!332548 (= e!204221 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10003 0))(
  ( (V!10004 (val!3429 Int)) )
))
(declare-fun zeroValue!1467 () V!10003)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3041 0))(
  ( (ValueCellFull!3041 (v!5584 V!10003)) (EmptyCell!3041) )
))
(declare-datatypes ((array!17131 0))(
  ( (array!17132 (arr!8096 (Array (_ BitVec 32) ValueCell!3041)) (size!8448 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17131)

(declare-datatypes ((array!17133 0))(
  ( (array!17134 (arr!8097 (Array (_ BitVec 32) (_ BitVec 64))) (size!8449 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17133)

(declare-fun minValue!1467 () V!10003)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun lt!159000 () Bool)

(declare-datatypes ((tuple2!4990 0))(
  ( (tuple2!4991 (_1!2505 (_ BitVec 64)) (_2!2505 V!10003)) )
))
(declare-datatypes ((List!4629 0))(
  ( (Nil!4626) (Cons!4625 (h!5481 tuple2!4990) (t!9719 List!4629)) )
))
(declare-datatypes ((ListLongMap!3917 0))(
  ( (ListLongMap!3918 (toList!1974 List!4629)) )
))
(declare-fun contains!2011 (ListLongMap!3917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1497 (array!17133 array!17131 (_ BitVec 32) (_ BitVec 32) V!10003 V!10003 (_ BitVec 32) Int) ListLongMap!3917)

(assert (=> b!332548 (= lt!159000 (contains!2011 (getCurrentListMap!1497 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348))))

(declare-fun b!332549 () Bool)

(declare-fun res!183283 () Bool)

(assert (=> b!332549 (=> (not res!183283) (not e!204221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17133 (_ BitVec 32)) Bool)

(assert (=> b!332549 (= res!183283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332550 () Bool)

(declare-fun e!204222 () Bool)

(declare-fun tp_is_empty!6769 () Bool)

(assert (=> b!332550 (= e!204222 tp_is_empty!6769)))

(declare-fun res!183287 () Bool)

(assert (=> start!33536 (=> (not res!183287) (not e!204221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33536 (= res!183287 (validMask!0 mask!2385))))

(assert (=> start!33536 e!204221))

(assert (=> start!33536 true))

(assert (=> start!33536 tp_is_empty!6769))

(assert (=> start!33536 tp!23946))

(declare-fun e!204220 () Bool)

(declare-fun array_inv!6018 (array!17131) Bool)

(assert (=> start!33536 (and (array_inv!6018 _values!1525) e!204220)))

(declare-fun array_inv!6019 (array!17133) Bool)

(assert (=> start!33536 (array_inv!6019 _keys!1895)))

(declare-fun mapNonEmpty!11541 () Bool)

(declare-fun mapRes!11541 () Bool)

(declare-fun tp!23945 () Bool)

(assert (=> mapNonEmpty!11541 (= mapRes!11541 (and tp!23945 e!204222))))

(declare-fun mapRest!11541 () (Array (_ BitVec 32) ValueCell!3041))

(declare-fun mapKey!11541 () (_ BitVec 32))

(declare-fun mapValue!11541 () ValueCell!3041)

(assert (=> mapNonEmpty!11541 (= (arr!8096 _values!1525) (store mapRest!11541 mapKey!11541 mapValue!11541))))

(declare-fun mapIsEmpty!11541 () Bool)

(assert (=> mapIsEmpty!11541 mapRes!11541))

(declare-fun b!332551 () Bool)

(declare-fun e!204219 () Bool)

(assert (=> b!332551 (= e!204220 (and e!204219 mapRes!11541))))

(declare-fun condMapEmpty!11541 () Bool)

(declare-fun mapDefault!11541 () ValueCell!3041)

