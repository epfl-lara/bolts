; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34070 () Bool)

(assert start!34070)

(declare-fun b_free!7141 () Bool)

(declare-fun b_next!7141 () Bool)

(assert (=> start!34070 (= b_free!7141 (not b_next!7141))))

(declare-fun tp!24948 () Bool)

(declare-fun b_and!14353 () Bool)

(assert (=> start!34070 (= tp!24948 b_and!14353)))

(declare-fun b!339127 () Bool)

(declare-fun res!187377 () Bool)

(declare-fun e!208086 () Bool)

(assert (=> b!339127 (=> (not res!187377) (not e!208086))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10435 0))(
  ( (V!10436 (val!3591 Int)) )
))
(declare-datatypes ((ValueCell!3203 0))(
  ( (ValueCellFull!3203 (v!5756 V!10435)) (EmptyCell!3203) )
))
(declare-datatypes ((array!17757 0))(
  ( (array!17758 (arr!8399 (Array (_ BitVec 32) ValueCell!3203)) (size!8751 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17757)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((array!17759 0))(
  ( (array!17760 (arr!8400 (Array (_ BitVec 32) (_ BitVec 64))) (size!8752 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17759)

(assert (=> b!339127 (= res!187377 (and (= (size!8751 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8752 _keys!1895) (size!8751 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12057 () Bool)

(declare-fun mapRes!12057 () Bool)

(declare-fun tp!24947 () Bool)

(declare-fun e!208084 () Bool)

(assert (=> mapNonEmpty!12057 (= mapRes!12057 (and tp!24947 e!208084))))

(declare-fun mapRest!12057 () (Array (_ BitVec 32) ValueCell!3203))

(declare-fun mapKey!12057 () (_ BitVec 32))

(declare-fun mapValue!12057 () ValueCell!3203)

(assert (=> mapNonEmpty!12057 (= (arr!8399 _values!1525) (store mapRest!12057 mapKey!12057 mapValue!12057))))

(declare-fun b!339128 () Bool)

(declare-datatypes ((Unit!10556 0))(
  ( (Unit!10557) )
))
(declare-fun e!208081 () Unit!10556)

(declare-fun Unit!10558 () Unit!10556)

(assert (=> b!339128 (= e!208081 Unit!10558)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10435)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!161142 () Unit!10556)

(declare-fun minValue!1467 () V!10435)

(declare-fun lemmaArrayContainsKeyThenInListMap!281 (array!17759 array!17757 (_ BitVec 32) (_ BitVec 32) V!10435 V!10435 (_ BitVec 64) (_ BitVec 32) Int) Unit!10556)

(declare-fun arrayScanForKey!0 (array!17759 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339128 (= lt!161142 (lemmaArrayContainsKeyThenInListMap!281 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339128 false))

(declare-fun b!339129 () Bool)

(declare-fun tp_is_empty!7093 () Bool)

(assert (=> b!339129 (= e!208084 tp_is_empty!7093)))

(declare-fun b!339130 () Bool)

(declare-fun res!187381 () Bool)

(assert (=> b!339130 (=> (not res!187381) (not e!208086))))

(declare-datatypes ((List!4846 0))(
  ( (Nil!4843) (Cons!4842 (h!5698 (_ BitVec 64)) (t!9956 List!4846)) )
))
(declare-fun arrayNoDuplicates!0 (array!17759 (_ BitVec 32) List!4846) Bool)

(assert (=> b!339130 (= res!187381 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4843))))

(declare-fun mapIsEmpty!12057 () Bool)

(assert (=> mapIsEmpty!12057 mapRes!12057))

(declare-fun b!339131 () Bool)

(declare-fun e!208083 () Bool)

(assert (=> b!339131 (= e!208083 false)))

(declare-fun lt!161141 () Unit!10556)

(assert (=> b!339131 (= lt!161141 e!208081)))

(declare-fun c!52472 () Bool)

(declare-fun arrayContainsKey!0 (array!17759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339131 (= c!52472 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!339132 () Bool)

(declare-fun e!208080 () Bool)

(declare-fun e!208082 () Bool)

(assert (=> b!339132 (= e!208080 (and e!208082 mapRes!12057))))

(declare-fun condMapEmpty!12057 () Bool)

(declare-fun mapDefault!12057 () ValueCell!3203)

