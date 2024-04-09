; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3722 () Bool)

(assert start!3722)

(declare-fun b!26049 () Bool)

(declare-fun e!16906 () Bool)

(declare-fun tp_is_empty!1067 () Bool)

(assert (=> b!26049 (= e!16906 tp_is_empty!1067)))

(declare-fun res!15472 () Bool)

(declare-fun e!16907 () Bool)

(assert (=> start!3722 (=> (not res!15472) (not e!16907))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3722 (= res!15472 (validMask!0 mask!2294))))

(assert (=> start!3722 e!16907))

(assert (=> start!3722 true))

(declare-datatypes ((V!1247 0))(
  ( (V!1248 (val!560 Int)) )
))
(declare-datatypes ((ValueCell!334 0))(
  ( (ValueCellFull!334 (v!1645 V!1247)) (EmptyCell!334) )
))
(declare-datatypes ((array!1369 0))(
  ( (array!1370 (arr!644 (Array (_ BitVec 32) ValueCell!334)) (size!745 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1369)

(declare-fun e!16905 () Bool)

(declare-fun array_inv!447 (array!1369) Bool)

(assert (=> start!3722 (and (array_inv!447 _values!1501) e!16905)))

(declare-datatypes ((array!1371 0))(
  ( (array!1372 (arr!645 (Array (_ BitVec 32) (_ BitVec 64))) (size!746 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1371)

(declare-fun array_inv!448 (array!1371) Bool)

(assert (=> start!3722 (array_inv!448 _keys!1833)))

(declare-fun mapIsEmpty!1111 () Bool)

(declare-fun mapRes!1111 () Bool)

(assert (=> mapIsEmpty!1111 mapRes!1111))

(declare-fun b!26050 () Bool)

(declare-fun e!16904 () Bool)

(assert (=> b!26050 (= e!16904 tp_is_empty!1067)))

(declare-fun b!26051 () Bool)

(declare-fun res!15470 () Bool)

(assert (=> b!26051 (=> (not res!15470) (not e!16907))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26051 (= res!15470 (and (= (size!745 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!746 _keys!1833) (size!745 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26052 () Bool)

(declare-fun res!15471 () Bool)

(assert (=> b!26052 (=> (not res!15471) (not e!16907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1371 (_ BitVec 32)) Bool)

(assert (=> b!26052 (= res!15471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1111 () Bool)

(declare-fun tp!3631 () Bool)

(assert (=> mapNonEmpty!1111 (= mapRes!1111 (and tp!3631 e!16906))))

(declare-fun mapKey!1111 () (_ BitVec 32))

(declare-fun mapValue!1111 () ValueCell!334)

(declare-fun mapRest!1111 () (Array (_ BitVec 32) ValueCell!334))

(assert (=> mapNonEmpty!1111 (= (arr!644 _values!1501) (store mapRest!1111 mapKey!1111 mapValue!1111))))

(declare-fun b!26053 () Bool)

(declare-datatypes ((List!574 0))(
  ( (Nil!571) (Cons!570 (h!1137 (_ BitVec 64)) (t!3263 List!574)) )
))
(declare-fun noDuplicate!10 (List!574) Bool)

(assert (=> b!26053 (= e!16907 (not (noDuplicate!10 Nil!571)))))

(declare-fun b!26054 () Bool)

(declare-fun res!15473 () Bool)

(assert (=> b!26054 (=> (not res!15473) (not e!16907))))

(assert (=> b!26054 (= res!15473 (and (bvsle #b00000000000000000000000000000000 (size!746 _keys!1833)) (bvslt (size!746 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!26055 () Bool)

(assert (=> b!26055 (= e!16905 (and e!16904 mapRes!1111))))

(declare-fun condMapEmpty!1111 () Bool)

(declare-fun mapDefault!1111 () ValueCell!334)

