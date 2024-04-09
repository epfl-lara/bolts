; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105426 () Bool)

(assert start!105426)

(declare-fun b_free!27049 () Bool)

(declare-fun b_next!27049 () Bool)

(assert (=> start!105426 (= b_free!27049 (not b_next!27049))))

(declare-fun tp!94662 () Bool)

(declare-fun b_and!44905 () Bool)

(assert (=> start!105426 (= tp!94662 b_and!44905)))

(declare-fun b!1255487 () Bool)

(declare-fun e!713592 () Bool)

(declare-fun tp_is_empty!31951 () Bool)

(assert (=> b!1255487 (= e!713592 tp_is_empty!31951)))

(declare-fun b!1255488 () Bool)

(declare-fun res!837071 () Bool)

(declare-fun e!713593 () Bool)

(assert (=> b!1255488 (=> (not res!837071) (not e!713593))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!81537 0))(
  ( (array!81538 (arr!39323 (Array (_ BitVec 32) (_ BitVec 64))) (size!39860 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81537)

(declare-datatypes ((V!47967 0))(
  ( (V!47968 (val!16038 Int)) )
))
(declare-datatypes ((ValueCell!15212 0))(
  ( (ValueCellFull!15212 (v!18738 V!47967)) (EmptyCell!15212) )
))
(declare-datatypes ((array!81539 0))(
  ( (array!81540 (arr!39324 (Array (_ BitVec 32) ValueCell!15212)) (size!39861 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81539)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255488 (= res!837071 (and (= (size!39861 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39860 _keys!1118) (size!39861 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255489 () Bool)

(declare-fun e!713596 () Bool)

(assert (=> b!1255489 (= e!713596 tp_is_empty!31951)))

(declare-fun res!837074 () Bool)

(assert (=> start!105426 (=> (not res!837074) (not e!713593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105426 (= res!837074 (validMask!0 mask!1466))))

(assert (=> start!105426 e!713593))

(assert (=> start!105426 true))

(assert (=> start!105426 tp!94662))

(assert (=> start!105426 tp_is_empty!31951))

(declare-fun array_inv!29911 (array!81537) Bool)

(assert (=> start!105426 (array_inv!29911 _keys!1118)))

(declare-fun e!713591 () Bool)

(declare-fun array_inv!29912 (array!81539) Bool)

(assert (=> start!105426 (and (array_inv!29912 _values!914) e!713591)))

(declare-fun mapNonEmpty!49711 () Bool)

(declare-fun mapRes!49711 () Bool)

(declare-fun tp!94661 () Bool)

(assert (=> mapNonEmpty!49711 (= mapRes!49711 (and tp!94661 e!713596))))

(declare-fun mapKey!49711 () (_ BitVec 32))

(declare-fun mapRest!49711 () (Array (_ BitVec 32) ValueCell!15212))

(declare-fun mapValue!49711 () ValueCell!15212)

(assert (=> mapNonEmpty!49711 (= (arr!39324 _values!914) (store mapRest!49711 mapKey!49711 mapValue!49711))))

(declare-fun b!1255490 () Bool)

(declare-fun e!713594 () Bool)

(assert (=> b!1255490 (= e!713593 (not e!713594))))

(declare-fun res!837070 () Bool)

(assert (=> b!1255490 (=> res!837070 e!713594)))

(assert (=> b!1255490 (= res!837070 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20856 0))(
  ( (tuple2!20857 (_1!10438 (_ BitVec 64)) (_2!10438 V!47967)) )
))
(declare-datatypes ((List!28095 0))(
  ( (Nil!28092) (Cons!28091 (h!29300 tuple2!20856) (t!41589 List!28095)) )
))
(declare-datatypes ((ListLongMap!18741 0))(
  ( (ListLongMap!18742 (toList!9386 List!28095)) )
))
(declare-fun lt!567583 () ListLongMap!18741)

(declare-fun lt!567582 () ListLongMap!18741)

(assert (=> b!1255490 (= lt!567583 lt!567582)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47967)

(declare-fun zeroValue!871 () V!47967)

(declare-fun minValueBefore!43 () V!47967)

(declare-datatypes ((Unit!41746 0))(
  ( (Unit!41747) )
))
(declare-fun lt!567584 () Unit!41746)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1065 (array!81537 array!81539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47967 V!47967 V!47967 V!47967 (_ BitVec 32) Int) Unit!41746)

(assert (=> b!1255490 (= lt!567584 (lemmaNoChangeToArrayThenSameMapNoExtras!1065 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5747 (array!81537 array!81539 (_ BitVec 32) (_ BitVec 32) V!47967 V!47967 (_ BitVec 32) Int) ListLongMap!18741)

(assert (=> b!1255490 (= lt!567582 (getCurrentListMapNoExtraKeys!5747 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255490 (= lt!567583 (getCurrentListMapNoExtraKeys!5747 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49711 () Bool)

(assert (=> mapIsEmpty!49711 mapRes!49711))

(declare-fun b!1255491 () Bool)

(declare-fun res!837072 () Bool)

(assert (=> b!1255491 (=> (not res!837072) (not e!713593))))

(declare-datatypes ((List!28096 0))(
  ( (Nil!28093) (Cons!28092 (h!29301 (_ BitVec 64)) (t!41590 List!28096)) )
))
(declare-fun arrayNoDuplicates!0 (array!81537 (_ BitVec 32) List!28096) Bool)

(assert (=> b!1255491 (= res!837072 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28093))))

(declare-fun b!1255492 () Bool)

(declare-fun res!837073 () Bool)

(assert (=> b!1255492 (=> (not res!837073) (not e!713593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81537 (_ BitVec 32)) Bool)

(assert (=> b!1255492 (= res!837073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255493 () Bool)

(assert (=> b!1255493 (= e!713594 true)))

(declare-fun lt!567585 () Bool)

(declare-fun contains!7547 (ListLongMap!18741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4552 (array!81537 array!81539 (_ BitVec 32) (_ BitVec 32) V!47967 V!47967 (_ BitVec 32) Int) ListLongMap!18741)

(assert (=> b!1255493 (= lt!567585 (contains!7547 (getCurrentListMap!4552 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255494 () Bool)

(assert (=> b!1255494 (= e!713591 (and e!713592 mapRes!49711))))

(declare-fun condMapEmpty!49711 () Bool)

(declare-fun mapDefault!49711 () ValueCell!15212)

