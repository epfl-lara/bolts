; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19978 () Bool)

(assert start!19978)

(declare-fun b!195747 () Bool)

(declare-fun res!92375 () Bool)

(declare-fun e!128846 () Bool)

(assert (=> b!195747 (=> (not res!92375) (not e!128846))))

(declare-datatypes ((array!8294 0))(
  ( (array!8295 (arr!3901 (Array (_ BitVec 32) (_ BitVec 64))) (size!4226 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8294)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5673 0))(
  ( (V!5674 (val!2304 Int)) )
))
(declare-datatypes ((ValueCell!1916 0))(
  ( (ValueCellFull!1916 (v!4269 V!5673)) (EmptyCell!1916) )
))
(declare-datatypes ((array!8296 0))(
  ( (array!8297 (arr!3902 (Array (_ BitVec 32) ValueCell!1916)) (size!4227 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8296)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195747 (= res!92375 (and (= (size!4227 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4226 _keys!825) (size!4227 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195748 () Bool)

(declare-fun res!92373 () Bool)

(assert (=> b!195748 (=> (not res!92373) (not e!128846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8294 (_ BitVec 32)) Bool)

(assert (=> b!195748 (= res!92373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!7835 () Bool)

(declare-fun mapRes!7835 () Bool)

(assert (=> mapIsEmpty!7835 mapRes!7835))

(declare-fun b!195749 () Bool)

(declare-fun e!128845 () Bool)

(declare-fun tp_is_empty!4519 () Bool)

(assert (=> b!195749 (= e!128845 tp_is_empty!4519)))

(declare-fun b!195750 () Bool)

(declare-fun e!128842 () Bool)

(assert (=> b!195750 (= e!128842 tp_is_empty!4519)))

(declare-fun b!195751 () Bool)

(assert (=> b!195751 (= e!128846 (bvsgt #b00000000000000000000000000000000 (size!4226 _keys!825)))))

(declare-fun mapNonEmpty!7835 () Bool)

(declare-fun tp!17123 () Bool)

(assert (=> mapNonEmpty!7835 (= mapRes!7835 (and tp!17123 e!128842))))

(declare-fun mapRest!7835 () (Array (_ BitVec 32) ValueCell!1916))

(declare-fun mapKey!7835 () (_ BitVec 32))

(declare-fun mapValue!7835 () ValueCell!1916)

(assert (=> mapNonEmpty!7835 (= (arr!3902 _values!649) (store mapRest!7835 mapKey!7835 mapValue!7835))))

(declare-fun res!92374 () Bool)

(assert (=> start!19978 (=> (not res!92374) (not e!128846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19978 (= res!92374 (validMask!0 mask!1149))))

(assert (=> start!19978 e!128846))

(assert (=> start!19978 true))

(declare-fun e!128844 () Bool)

(declare-fun array_inv!2525 (array!8296) Bool)

(assert (=> start!19978 (and (array_inv!2525 _values!649) e!128844)))

(declare-fun array_inv!2526 (array!8294) Bool)

(assert (=> start!19978 (array_inv!2526 _keys!825)))

(declare-fun b!195752 () Bool)

(assert (=> b!195752 (= e!128844 (and e!128845 mapRes!7835))))

(declare-fun condMapEmpty!7835 () Bool)

(declare-fun mapDefault!7835 () ValueCell!1916)

