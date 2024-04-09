; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34088 () Bool)

(assert start!34088)

(declare-fun b_free!7159 () Bool)

(declare-fun b_next!7159 () Bool)

(assert (=> start!34088 (= b_free!7159 (not b_next!7159))))

(declare-fun tp!25002 () Bool)

(declare-fun b_and!14371 () Bool)

(assert (=> start!34088 (= tp!25002 b_and!14371)))

(declare-fun b!339445 () Bool)

(declare-fun res!187564 () Bool)

(declare-fun e!208266 () Bool)

(assert (=> b!339445 (=> (not res!187564) (not e!208266))))

(declare-datatypes ((array!17793 0))(
  ( (array!17794 (arr!8417 (Array (_ BitVec 32) (_ BitVec 64))) (size!8769 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17793)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17793 (_ BitVec 32)) Bool)

(assert (=> b!339445 (= res!187564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339446 () Bool)

(declare-fun res!187566 () Bool)

(assert (=> b!339446 (=> (not res!187566) (not e!208266))))

(declare-datatypes ((List!4860 0))(
  ( (Nil!4857) (Cons!4856 (h!5712 (_ BitVec 64)) (t!9970 List!4860)) )
))
(declare-fun arrayNoDuplicates!0 (array!17793 (_ BitVec 32) List!4860) Bool)

(assert (=> b!339446 (= res!187566 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4857))))

(declare-fun b!339447 () Bool)

(declare-fun e!208265 () Bool)

(declare-fun tp_is_empty!7111 () Bool)

(assert (=> b!339447 (= e!208265 tp_is_empty!7111)))

(declare-fun b!339448 () Bool)

(declare-fun e!208268 () Bool)

(assert (=> b!339448 (= e!208268 tp_is_empty!7111)))

(declare-fun res!187563 () Bool)

(assert (=> start!34088 (=> (not res!187563) (not e!208266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34088 (= res!187563 (validMask!0 mask!2385))))

(assert (=> start!34088 e!208266))

(assert (=> start!34088 true))

(assert (=> start!34088 tp_is_empty!7111))

(assert (=> start!34088 tp!25002))

(declare-datatypes ((V!10459 0))(
  ( (V!10460 (val!3600 Int)) )
))
(declare-datatypes ((ValueCell!3212 0))(
  ( (ValueCellFull!3212 (v!5765 V!10459)) (EmptyCell!3212) )
))
(declare-datatypes ((array!17795 0))(
  ( (array!17796 (arr!8418 (Array (_ BitVec 32) ValueCell!3212)) (size!8770 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17795)

(declare-fun e!208267 () Bool)

(declare-fun array_inv!6230 (array!17795) Bool)

(assert (=> start!34088 (and (array_inv!6230 _values!1525) e!208267)))

(declare-fun array_inv!6231 (array!17793) Bool)

(assert (=> start!34088 (array_inv!6231 _keys!1895)))

(declare-fun mapNonEmpty!12084 () Bool)

(declare-fun mapRes!12084 () Bool)

(declare-fun tp!25001 () Bool)

(assert (=> mapNonEmpty!12084 (= mapRes!12084 (and tp!25001 e!208268))))

(declare-fun mapValue!12084 () ValueCell!3212)

(declare-fun mapKey!12084 () (_ BitVec 32))

(declare-fun mapRest!12084 () (Array (_ BitVec 32) ValueCell!3212))

(assert (=> mapNonEmpty!12084 (= (arr!8418 _values!1525) (store mapRest!12084 mapKey!12084 mapValue!12084))))

(declare-fun b!339449 () Bool)

(assert (=> b!339449 (= e!208267 (and e!208265 mapRes!12084))))

(declare-fun condMapEmpty!12084 () Bool)

(declare-fun mapDefault!12084 () ValueCell!3212)

