; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77520 () Bool)

(assert start!77520)

(declare-fun b!902862 () Bool)

(declare-fun e!505824 () Bool)

(declare-fun tp_is_empty!18505 () Bool)

(assert (=> b!902862 (= e!505824 tp_is_empty!18505)))

(declare-fun mapNonEmpty!29467 () Bool)

(declare-fun mapRes!29467 () Bool)

(declare-fun tp!56527 () Bool)

(declare-fun e!505826 () Bool)

(assert (=> mapNonEmpty!29467 (= mapRes!29467 (and tp!56527 e!505826))))

(declare-datatypes ((V!29639 0))(
  ( (V!29640 (val!9303 Int)) )
))
(declare-datatypes ((ValueCell!8771 0))(
  ( (ValueCellFull!8771 (v!11808 V!29639)) (EmptyCell!8771) )
))
(declare-datatypes ((array!53056 0))(
  ( (array!53057 (arr!25484 (Array (_ BitVec 32) ValueCell!8771)) (size!25944 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53056)

(declare-fun mapKey!29467 () (_ BitVec 32))

(declare-fun mapRest!29467 () (Array (_ BitVec 32) ValueCell!8771))

(declare-fun mapValue!29467 () ValueCell!8771)

(assert (=> mapNonEmpty!29467 (= (arr!25484 _values!1152) (store mapRest!29467 mapKey!29467 mapValue!29467))))

(declare-fun mapIsEmpty!29467 () Bool)

(assert (=> mapIsEmpty!29467 mapRes!29467))

(declare-fun b!902863 () Bool)

(declare-fun res!609318 () Bool)

(declare-fun e!505825 () Bool)

(assert (=> b!902863 (=> (not res!609318) (not e!505825))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53058 0))(
  ( (array!53059 (arr!25485 (Array (_ BitVec 32) (_ BitVec 64))) (size!25945 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53058)

(assert (=> b!902863 (= res!609318 (and (= (size!25944 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25945 _keys!1386) (size!25944 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902864 () Bool)

(declare-fun res!609315 () Bool)

(assert (=> b!902864 (=> (not res!609315) (not e!505825))))

(declare-datatypes ((List!17981 0))(
  ( (Nil!17978) (Cons!17977 (h!19123 (_ BitVec 64)) (t!25372 List!17981)) )
))
(declare-fun arrayNoDuplicates!0 (array!53058 (_ BitVec 32) List!17981) Bool)

(assert (=> b!902864 (= res!609315 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17978))))

(declare-fun b!902865 () Bool)

(declare-fun res!609317 () Bool)

(assert (=> b!902865 (=> (not res!609317) (not e!505825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53058 (_ BitVec 32)) Bool)

(assert (=> b!902865 (= res!609317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!609316 () Bool)

(assert (=> start!77520 (=> (not res!609316) (not e!505825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77520 (= res!609316 (validMask!0 mask!1756))))

(assert (=> start!77520 e!505825))

(assert (=> start!77520 true))

(declare-fun e!505823 () Bool)

(declare-fun array_inv!19952 (array!53056) Bool)

(assert (=> start!77520 (and (array_inv!19952 _values!1152) e!505823)))

(declare-fun array_inv!19953 (array!53058) Bool)

(assert (=> start!77520 (array_inv!19953 _keys!1386)))

(declare-fun b!902866 () Bool)

(assert (=> b!902866 (= e!505826 tp_is_empty!18505)))

(declare-fun b!902867 () Bool)

(assert (=> b!902867 (= e!505825 (bvsgt #b00000000000000000000000000000000 (size!25945 _keys!1386)))))

(declare-fun b!902868 () Bool)

(assert (=> b!902868 (= e!505823 (and e!505824 mapRes!29467))))

(declare-fun condMapEmpty!29467 () Bool)

(declare-fun mapDefault!29467 () ValueCell!8771)

