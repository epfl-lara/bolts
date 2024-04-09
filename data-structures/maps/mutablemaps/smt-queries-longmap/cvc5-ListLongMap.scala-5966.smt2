; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77650 () Bool)

(assert start!77650)

(declare-fun b_free!16207 () Bool)

(declare-fun b_next!16207 () Bool)

(assert (=> start!77650 (= b_free!16207 (not b_next!16207))))

(declare-fun tp!56884 () Bool)

(declare-fun b_and!26591 () Bool)

(assert (=> start!77650 (= tp!56884 b_and!26591)))

(declare-fun b!904617 () Bool)

(declare-fun e!506935 () Bool)

(declare-fun tp_is_empty!18625 () Bool)

(assert (=> b!904617 (= e!506935 tp_is_empty!18625)))

(declare-fun res!610511 () Bool)

(declare-fun e!506937 () Bool)

(assert (=> start!77650 (=> (not res!610511) (not e!506937))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77650 (= res!610511 (validMask!0 mask!1756))))

(assert (=> start!77650 e!506937))

(declare-datatypes ((V!29799 0))(
  ( (V!29800 (val!9363 Int)) )
))
(declare-datatypes ((ValueCell!8831 0))(
  ( (ValueCellFull!8831 (v!11868 V!29799)) (EmptyCell!8831) )
))
(declare-datatypes ((array!53280 0))(
  ( (array!53281 (arr!25595 (Array (_ BitVec 32) ValueCell!8831)) (size!26055 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53280)

(declare-fun e!506936 () Bool)

(declare-fun array_inv!20032 (array!53280) Bool)

(assert (=> start!77650 (and (array_inv!20032 _values!1152) e!506936)))

(assert (=> start!77650 tp!56884))

(assert (=> start!77650 true))

(assert (=> start!77650 tp_is_empty!18625))

(declare-datatypes ((array!53282 0))(
  ( (array!53283 (arr!25596 (Array (_ BitVec 32) (_ BitVec 64))) (size!26056 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53282)

(declare-fun array_inv!20033 (array!53282) Bool)

(assert (=> start!77650 (array_inv!20033 _keys!1386)))

(declare-fun b!904618 () Bool)

(declare-fun res!610513 () Bool)

(assert (=> b!904618 (=> (not res!610513) (not e!506937))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29799)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29799)

(declare-datatypes ((tuple2!12190 0))(
  ( (tuple2!12191 (_1!6105 (_ BitVec 64)) (_2!6105 V!29799)) )
))
(declare-datatypes ((List!18060 0))(
  ( (Nil!18057) (Cons!18056 (h!19202 tuple2!12190) (t!25451 List!18060)) )
))
(declare-datatypes ((ListLongMap!10901 0))(
  ( (ListLongMap!10902 (toList!5466 List!18060)) )
))
(declare-fun contains!4479 (ListLongMap!10901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2703 (array!53282 array!53280 (_ BitVec 32) (_ BitVec 32) V!29799 V!29799 (_ BitVec 32) Int) ListLongMap!10901)

(assert (=> b!904618 (= res!610513 (contains!4479 (getCurrentListMap!2703 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904619 () Bool)

(declare-fun e!506933 () Bool)

(assert (=> b!904619 (= e!506933 tp_is_empty!18625)))

(declare-fun b!904620 () Bool)

(declare-fun res!610510 () Bool)

(assert (=> b!904620 (=> (not res!610510) (not e!506937))))

(declare-datatypes ((List!18061 0))(
  ( (Nil!18058) (Cons!18057 (h!19203 (_ BitVec 64)) (t!25452 List!18061)) )
))
(declare-fun arrayNoDuplicates!0 (array!53282 (_ BitVec 32) List!18061) Bool)

(assert (=> b!904620 (= res!610510 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18058))))

(declare-fun b!904621 () Bool)

(declare-fun res!610516 () Bool)

(assert (=> b!904621 (=> (not res!610516) (not e!506937))))

(assert (=> b!904621 (= res!610516 (and (= (size!26055 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26056 _keys!1386) (size!26055 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904622 () Bool)

(declare-fun res!610518 () Bool)

(assert (=> b!904622 (=> (not res!610518) (not e!506937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53282 (_ BitVec 32)) Bool)

(assert (=> b!904622 (= res!610518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904623 () Bool)

(declare-fun res!610514 () Bool)

(assert (=> b!904623 (=> (not res!610514) (not e!506937))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904623 (= res!610514 (inRange!0 i!717 mask!1756))))

(declare-fun b!904624 () Bool)

(declare-fun e!506939 () Bool)

(declare-fun e!506938 () Bool)

(assert (=> b!904624 (= e!506939 e!506938)))

(declare-fun res!610512 () Bool)

(assert (=> b!904624 (=> res!610512 e!506938)))

(declare-fun lt!408263 () ListLongMap!10901)

(assert (=> b!904624 (= res!610512 (not (contains!4479 lt!408263 k!1033)))))

(assert (=> b!904624 (= lt!408263 (getCurrentListMap!2703 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904625 () Bool)

(assert (=> b!904625 (= e!506938 true)))

(declare-fun lt!408262 () V!29799)

(declare-fun apply!444 (ListLongMap!10901 (_ BitVec 64)) V!29799)

(assert (=> b!904625 (= lt!408262 (apply!444 lt!408263 k!1033))))

(declare-fun b!904626 () Bool)

(declare-fun res!610515 () Bool)

(assert (=> b!904626 (=> (not res!610515) (not e!506937))))

(assert (=> b!904626 (= res!610515 (and (= (select (arr!25596 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904627 () Bool)

(assert (=> b!904627 (= e!506937 (not e!506939))))

(declare-fun res!610517 () Bool)

(assert (=> b!904627 (=> res!610517 e!506939)))

(assert (=> b!904627 (= res!610517 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26056 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904627 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30659 0))(
  ( (Unit!30660) )
))
(declare-fun lt!408261 () Unit!30659)

(declare-fun lemmaKeyInListMapIsInArray!192 (array!53282 array!53280 (_ BitVec 32) (_ BitVec 32) V!29799 V!29799 (_ BitVec 64) Int) Unit!30659)

(assert (=> b!904627 (= lt!408261 (lemmaKeyInListMapIsInArray!192 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29650 () Bool)

(declare-fun mapRes!29650 () Bool)

(declare-fun tp!56883 () Bool)

(assert (=> mapNonEmpty!29650 (= mapRes!29650 (and tp!56883 e!506935))))

(declare-fun mapRest!29650 () (Array (_ BitVec 32) ValueCell!8831))

(declare-fun mapKey!29650 () (_ BitVec 32))

(declare-fun mapValue!29650 () ValueCell!8831)

(assert (=> mapNonEmpty!29650 (= (arr!25595 _values!1152) (store mapRest!29650 mapKey!29650 mapValue!29650))))

(declare-fun b!904628 () Bool)

(assert (=> b!904628 (= e!506936 (and e!506933 mapRes!29650))))

(declare-fun condMapEmpty!29650 () Bool)

(declare-fun mapDefault!29650 () ValueCell!8831)

