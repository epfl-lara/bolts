; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33842 () Bool)

(assert start!33842)

(declare-fun b_free!7013 () Bool)

(declare-fun b_next!7013 () Bool)

(assert (=> start!33842 (= b_free!7013 (not b_next!7013))))

(declare-fun tp!24551 () Bool)

(declare-fun b_and!14217 () Bool)

(assert (=> start!33842 (= tp!24551 b_and!14217)))

(declare-fun b!336333 () Bool)

(declare-fun res!185698 () Bool)

(declare-fun e!206462 () Bool)

(assert (=> b!336333 (=> (not res!185698) (not e!206462))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10263 0))(
  ( (V!10264 (val!3527 Int)) )
))
(declare-fun zeroValue!1467 () V!10263)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3139 0))(
  ( (ValueCellFull!3139 (v!5688 V!10263)) (EmptyCell!3139) )
))
(declare-datatypes ((array!17509 0))(
  ( (array!17510 (arr!8279 (Array (_ BitVec 32) ValueCell!3139)) (size!8631 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17509)

(declare-datatypes ((array!17511 0))(
  ( (array!17512 (arr!8280 (Array (_ BitVec 32) (_ BitVec 64))) (size!8632 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17511)

(declare-fun minValue!1467 () V!10263)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((tuple2!5124 0))(
  ( (tuple2!5125 (_1!2572 (_ BitVec 64)) (_2!2572 V!10263)) )
))
(declare-datatypes ((List!4763 0))(
  ( (Nil!4760) (Cons!4759 (h!5615 tuple2!5124) (t!9865 List!4763)) )
))
(declare-datatypes ((ListLongMap!4051 0))(
  ( (ListLongMap!4052 (toList!2041 List!4763)) )
))
(declare-fun contains!2084 (ListLongMap!4051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1561 (array!17511 array!17509 (_ BitVec 32) (_ BitVec 32) V!10263 V!10263 (_ BitVec 32) Int) ListLongMap!4051)

(assert (=> b!336333 (= res!185698 (not (contains!2084 (getCurrentListMap!1561 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336334 () Bool)

(declare-fun e!206460 () Bool)

(declare-fun tp_is_empty!6965 () Bool)

(assert (=> b!336334 (= e!206460 tp_is_empty!6965)))

(declare-fun mapIsEmpty!11853 () Bool)

(declare-fun mapRes!11853 () Bool)

(assert (=> mapIsEmpty!11853 mapRes!11853))

(declare-fun res!185697 () Bool)

(assert (=> start!33842 (=> (not res!185697) (not e!206462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33842 (= res!185697 (validMask!0 mask!2385))))

(assert (=> start!33842 e!206462))

(assert (=> start!33842 true))

(assert (=> start!33842 tp_is_empty!6965))

(assert (=> start!33842 tp!24551))

(declare-fun e!206461 () Bool)

(declare-fun array_inv!6136 (array!17509) Bool)

(assert (=> start!33842 (and (array_inv!6136 _values!1525) e!206461)))

(declare-fun array_inv!6137 (array!17511) Bool)

(assert (=> start!33842 (array_inv!6137 _keys!1895)))

(declare-fun b!336335 () Bool)

(declare-fun res!185694 () Bool)

(assert (=> b!336335 (=> (not res!185694) (not e!206462))))

(assert (=> b!336335 (= res!185694 (and (= (size!8631 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8632 _keys!1895) (size!8631 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336336 () Bool)

(declare-fun e!206463 () Bool)

(assert (=> b!336336 (= e!206461 (and e!206463 mapRes!11853))))

(declare-fun condMapEmpty!11853 () Bool)

(declare-fun mapDefault!11853 () ValueCell!3139)

