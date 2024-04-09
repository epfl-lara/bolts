; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104956 () Bool)

(assert start!104956)

(declare-fun b_free!26711 () Bool)

(declare-fun b_next!26711 () Bool)

(assert (=> start!104956 (= b_free!26711 (not b_next!26711))))

(declare-fun tp!93626 () Bool)

(declare-fun b_and!44497 () Bool)

(assert (=> start!104956 (= tp!93626 b_and!44497)))

(declare-fun res!834195 () Bool)

(declare-fun e!709973 () Bool)

(assert (=> start!104956 (=> (not res!834195) (not e!709973))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104956 (= res!834195 (validMask!0 mask!1466))))

(assert (=> start!104956 e!709973))

(assert (=> start!104956 true))

(assert (=> start!104956 tp!93626))

(declare-fun tp_is_empty!31613 () Bool)

(assert (=> start!104956 tp_is_empty!31613))

(declare-datatypes ((array!80875 0))(
  ( (array!80876 (arr!38999 (Array (_ BitVec 32) (_ BitVec 64))) (size!39536 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80875)

(declare-fun array_inv!29683 (array!80875) Bool)

(assert (=> start!104956 (array_inv!29683 _keys!1118)))

(declare-datatypes ((V!47515 0))(
  ( (V!47516 (val!15869 Int)) )
))
(declare-datatypes ((ValueCell!15043 0))(
  ( (ValueCellFull!15043 (v!18565 V!47515)) (EmptyCell!15043) )
))
(declare-datatypes ((array!80877 0))(
  ( (array!80878 (arr!39000 (Array (_ BitVec 32) ValueCell!15043)) (size!39537 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80877)

(declare-fun e!709969 () Bool)

(declare-fun array_inv!29684 (array!80877) Bool)

(assert (=> start!104956 (and (array_inv!29684 _values!914) e!709969)))

(declare-fun mapNonEmpty!49183 () Bool)

(declare-fun mapRes!49183 () Bool)

(declare-fun tp!93627 () Bool)

(declare-fun e!709972 () Bool)

(assert (=> mapNonEmpty!49183 (= mapRes!49183 (and tp!93627 e!709972))))

(declare-fun mapValue!49183 () ValueCell!15043)

(declare-fun mapKey!49183 () (_ BitVec 32))

(declare-fun mapRest!49183 () (Array (_ BitVec 32) ValueCell!15043))

(assert (=> mapNonEmpty!49183 (= (arr!39000 _values!914) (store mapRest!49183 mapKey!49183 mapValue!49183))))

(declare-fun b!1250493 () Bool)

(declare-fun res!834196 () Bool)

(assert (=> b!1250493 (=> (not res!834196) (not e!709973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80875 (_ BitVec 32)) Bool)

(assert (=> b!1250493 (= res!834196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49183 () Bool)

(assert (=> mapIsEmpty!49183 mapRes!49183))

(declare-fun b!1250494 () Bool)

(declare-fun e!709975 () Bool)

(assert (=> b!1250494 (= e!709975 tp_is_empty!31613)))

(declare-fun b!1250495 () Bool)

(declare-fun res!834192 () Bool)

(assert (=> b!1250495 (=> (not res!834192) (not e!709973))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1250495 (= res!834192 (and (= (size!39537 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39536 _keys!1118) (size!39537 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250496 () Bool)

(declare-fun e!709971 () Bool)

(assert (=> b!1250496 (= e!709973 (not e!709971))))

(declare-fun res!834191 () Bool)

(assert (=> b!1250496 (=> res!834191 e!709971)))

(assert (=> b!1250496 (= res!834191 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20596 0))(
  ( (tuple2!20597 (_1!10308 (_ BitVec 64)) (_2!10308 V!47515)) )
))
(declare-datatypes ((List!27852 0))(
  ( (Nil!27849) (Cons!27848 (h!29057 tuple2!20596) (t!41332 List!27852)) )
))
(declare-datatypes ((ListLongMap!18481 0))(
  ( (ListLongMap!18482 (toList!9256 List!27852)) )
))
(declare-fun lt!564252 () ListLongMap!18481)

(declare-fun lt!564250 () ListLongMap!18481)

(assert (=> b!1250496 (= lt!564252 lt!564250)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47515)

(declare-fun zeroValue!871 () V!47515)

(declare-datatypes ((Unit!41489 0))(
  ( (Unit!41490) )
))
(declare-fun lt!564253 () Unit!41489)

(declare-fun minValueBefore!43 () V!47515)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!953 (array!80875 array!80877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47515 V!47515 V!47515 V!47515 (_ BitVec 32) Int) Unit!41489)

(assert (=> b!1250496 (= lt!564253 (lemmaNoChangeToArrayThenSameMapNoExtras!953 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5635 (array!80875 array!80877 (_ BitVec 32) (_ BitVec 32) V!47515 V!47515 (_ BitVec 32) Int) ListLongMap!18481)

(assert (=> b!1250496 (= lt!564250 (getCurrentListMapNoExtraKeys!5635 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250496 (= lt!564252 (getCurrentListMapNoExtraKeys!5635 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250497 () Bool)

(declare-fun res!834193 () Bool)

(assert (=> b!1250497 (=> (not res!834193) (not e!709973))))

(declare-datatypes ((List!27853 0))(
  ( (Nil!27850) (Cons!27849 (h!29058 (_ BitVec 64)) (t!41333 List!27853)) )
))
(declare-fun arrayNoDuplicates!0 (array!80875 (_ BitVec 32) List!27853) Bool)

(assert (=> b!1250497 (= res!834193 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27850))))

(declare-fun b!1250498 () Bool)

(declare-fun e!709974 () Bool)

(assert (=> b!1250498 (= e!709971 e!709974)))

(declare-fun res!834194 () Bool)

(assert (=> b!1250498 (=> res!834194 e!709974)))

(declare-fun lt!564249 () ListLongMap!18481)

(declare-fun contains!7507 (ListLongMap!18481 (_ BitVec 64)) Bool)

(assert (=> b!1250498 (= res!834194 (contains!7507 lt!564249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4473 (array!80875 array!80877 (_ BitVec 32) (_ BitVec 32) V!47515 V!47515 (_ BitVec 32) Int) ListLongMap!18481)

(assert (=> b!1250498 (= lt!564249 (getCurrentListMap!4473 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250499 () Bool)

(assert (=> b!1250499 (= e!709969 (and e!709975 mapRes!49183))))

(declare-fun condMapEmpty!49183 () Bool)

(declare-fun mapDefault!49183 () ValueCell!15043)

