; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77564 () Bool)

(assert start!77564)

(declare-fun b_free!16121 () Bool)

(declare-fun b_next!16121 () Bool)

(assert (=> start!77564 (= b_free!16121 (not b_next!16121))))

(declare-fun tp!56626 () Bool)

(declare-fun b_and!26505 () Bool)

(assert (=> start!77564 (= tp!56626 b_and!26505)))

(declare-fun b!903254 () Bool)

(declare-fun res!609534 () Bool)

(declare-fun e!506108 () Bool)

(assert (=> b!903254 (=> (not res!609534) (not e!506108))))

(declare-datatypes ((array!53120 0))(
  ( (array!53121 (arr!25515 (Array (_ BitVec 32) (_ BitVec 64))) (size!25975 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53120)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53120 (_ BitVec 32)) Bool)

(assert (=> b!903254 (= res!609534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!609536 () Bool)

(assert (=> start!77564 (=> (not res!609536) (not e!506108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77564 (= res!609536 (validMask!0 mask!1756))))

(assert (=> start!77564 e!506108))

(declare-datatypes ((V!29683 0))(
  ( (V!29684 (val!9320 Int)) )
))
(declare-datatypes ((ValueCell!8788 0))(
  ( (ValueCellFull!8788 (v!11825 V!29683)) (EmptyCell!8788) )
))
(declare-datatypes ((array!53122 0))(
  ( (array!53123 (arr!25516 (Array (_ BitVec 32) ValueCell!8788)) (size!25976 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53122)

(declare-fun e!506106 () Bool)

(declare-fun array_inv!19972 (array!53122) Bool)

(assert (=> start!77564 (and (array_inv!19972 _values!1152) e!506106)))

(assert (=> start!77564 tp!56626))

(assert (=> start!77564 true))

(declare-fun tp_is_empty!18539 () Bool)

(assert (=> start!77564 tp_is_empty!18539))

(declare-fun array_inv!19973 (array!53120) Bool)

(assert (=> start!77564 (array_inv!19973 _keys!1386)))

(declare-fun mapIsEmpty!29521 () Bool)

(declare-fun mapRes!29521 () Bool)

(assert (=> mapIsEmpty!29521 mapRes!29521))

(declare-fun b!903255 () Bool)

(declare-fun e!506107 () Bool)

(assert (=> b!903255 (= e!506107 tp_is_empty!18539)))

(declare-fun b!903256 () Bool)

(declare-fun res!609537 () Bool)

(assert (=> b!903256 (=> (not res!609537) (not e!506108))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!903256 (= res!609537 (and (= (size!25976 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25975 _keys!1386) (size!25976 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903257 () Bool)

(declare-fun res!609535 () Bool)

(assert (=> b!903257 (=> (not res!609535) (not e!506108))))

(declare-datatypes ((List!18000 0))(
  ( (Nil!17997) (Cons!17996 (h!19142 (_ BitVec 64)) (t!25391 List!18000)) )
))
(declare-fun arrayNoDuplicates!0 (array!53120 (_ BitVec 32) List!18000) Bool)

(assert (=> b!903257 (= res!609535 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17997))))

(declare-fun b!903258 () Bool)

(declare-fun e!506105 () Bool)

(assert (=> b!903258 (= e!506106 (and e!506105 mapRes!29521))))

(declare-fun condMapEmpty!29521 () Bool)

(declare-fun mapDefault!29521 () ValueCell!8788)

