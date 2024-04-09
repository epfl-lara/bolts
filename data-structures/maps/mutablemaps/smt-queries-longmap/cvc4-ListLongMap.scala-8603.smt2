; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104888 () Bool)

(assert start!104888)

(declare-fun b_free!26657 () Bool)

(declare-fun b_next!26657 () Bool)

(assert (=> start!104888 (= b_free!26657 (not b_next!26657))))

(declare-fun tp!93462 () Bool)

(declare-fun b_and!44435 () Bool)

(assert (=> start!104888 (= tp!93462 b_and!44435)))

(declare-fun mapIsEmpty!49099 () Bool)

(declare-fun mapRes!49099 () Bool)

(assert (=> mapIsEmpty!49099 mapRes!49099))

(declare-fun b!1249690 () Bool)

(declare-fun e!709360 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!80769 0))(
  ( (array!80770 (arr!38947 (Array (_ BitVec 32) (_ BitVec 64))) (size!39484 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80769)

(assert (=> b!1249690 (= e!709360 (not (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!39484 _keys!1118)))))))

(declare-datatypes ((V!47443 0))(
  ( (V!47444 (val!15842 Int)) )
))
(declare-datatypes ((tuple2!20548 0))(
  ( (tuple2!20549 (_1!10284 (_ BitVec 64)) (_2!10284 V!47443)) )
))
(declare-datatypes ((List!27811 0))(
  ( (Nil!27808) (Cons!27807 (h!29016 tuple2!20548) (t!41289 List!27811)) )
))
(declare-datatypes ((ListLongMap!18433 0))(
  ( (ListLongMap!18434 (toList!9232 List!27811)) )
))
(declare-fun lt!563817 () ListLongMap!18433)

(declare-fun lt!563815 () ListLongMap!18433)

(assert (=> b!1249690 (= lt!563817 lt!563815)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41447 0))(
  ( (Unit!41448) )
))
(declare-fun lt!563816 () Unit!41447)

(declare-fun minValueAfter!43 () V!47443)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47443)

(declare-fun minValueBefore!43 () V!47443)

(declare-datatypes ((ValueCell!15016 0))(
  ( (ValueCellFull!15016 (v!18538 V!47443)) (EmptyCell!15016) )
))
(declare-datatypes ((array!80771 0))(
  ( (array!80772 (arr!38948 (Array (_ BitVec 32) ValueCell!15016)) (size!39485 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80771)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!933 (array!80769 array!80771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47443 V!47443 V!47443 V!47443 (_ BitVec 32) Int) Unit!41447)

(assert (=> b!1249690 (= lt!563816 (lemmaNoChangeToArrayThenSameMapNoExtras!933 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5615 (array!80769 array!80771 (_ BitVec 32) (_ BitVec 32) V!47443 V!47443 (_ BitVec 32) Int) ListLongMap!18433)

(assert (=> b!1249690 (= lt!563815 (getCurrentListMapNoExtraKeys!5615 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249690 (= lt!563817 (getCurrentListMapNoExtraKeys!5615 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833685 () Bool)

(assert (=> start!104888 (=> (not res!833685) (not e!709360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104888 (= res!833685 (validMask!0 mask!1466))))

(assert (=> start!104888 e!709360))

(assert (=> start!104888 true))

(assert (=> start!104888 tp!93462))

(declare-fun tp_is_empty!31559 () Bool)

(assert (=> start!104888 tp_is_empty!31559))

(declare-fun array_inv!29647 (array!80769) Bool)

(assert (=> start!104888 (array_inv!29647 _keys!1118)))

(declare-fun e!709358 () Bool)

(declare-fun array_inv!29648 (array!80771) Bool)

(assert (=> start!104888 (and (array_inv!29648 _values!914) e!709358)))

(declare-fun mapNonEmpty!49099 () Bool)

(declare-fun tp!93461 () Bool)

(declare-fun e!709362 () Bool)

(assert (=> mapNonEmpty!49099 (= mapRes!49099 (and tp!93461 e!709362))))

(declare-fun mapKey!49099 () (_ BitVec 32))

(declare-fun mapRest!49099 () (Array (_ BitVec 32) ValueCell!15016))

(declare-fun mapValue!49099 () ValueCell!15016)

(assert (=> mapNonEmpty!49099 (= (arr!38948 _values!914) (store mapRest!49099 mapKey!49099 mapValue!49099))))

(declare-fun b!1249691 () Bool)

(declare-fun e!709361 () Bool)

(assert (=> b!1249691 (= e!709361 tp_is_empty!31559)))

(declare-fun b!1249692 () Bool)

(declare-fun res!833687 () Bool)

(assert (=> b!1249692 (=> (not res!833687) (not e!709360))))

(declare-datatypes ((List!27812 0))(
  ( (Nil!27809) (Cons!27808 (h!29017 (_ BitVec 64)) (t!41290 List!27812)) )
))
(declare-fun arrayNoDuplicates!0 (array!80769 (_ BitVec 32) List!27812) Bool)

(assert (=> b!1249692 (= res!833687 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27809))))

(declare-fun b!1249693 () Bool)

(assert (=> b!1249693 (= e!709362 tp_is_empty!31559)))

(declare-fun b!1249694 () Bool)

(declare-fun res!833686 () Bool)

(assert (=> b!1249694 (=> (not res!833686) (not e!709360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80769 (_ BitVec 32)) Bool)

(assert (=> b!1249694 (= res!833686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249695 () Bool)

(assert (=> b!1249695 (= e!709358 (and e!709361 mapRes!49099))))

(declare-fun condMapEmpty!49099 () Bool)

(declare-fun mapDefault!49099 () ValueCell!15016)

