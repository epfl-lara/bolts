; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105038 () Bool)

(assert start!105038)

(declare-fun b_free!26771 () Bool)

(declare-fun b_next!26771 () Bool)

(assert (=> start!105038 (= b_free!26771 (not b_next!26771))))

(declare-fun tp!93810 () Bool)

(declare-fun b_and!44567 () Bool)

(assert (=> start!105038 (= tp!93810 b_and!44567)))

(declare-fun b!1251460 () Bool)

(declare-fun e!710704 () Bool)

(declare-fun e!710703 () Bool)

(assert (=> b!1251460 (= e!710704 e!710703)))

(declare-fun res!834795 () Bool)

(assert (=> b!1251460 (=> res!834795 e!710703)))

(declare-datatypes ((V!47595 0))(
  ( (V!47596 (val!15899 Int)) )
))
(declare-datatypes ((tuple2!20648 0))(
  ( (tuple2!20649 (_1!10334 (_ BitVec 64)) (_2!10334 V!47595)) )
))
(declare-datatypes ((List!27899 0))(
  ( (Nil!27896) (Cons!27895 (h!29104 tuple2!20648) (t!41381 List!27899)) )
))
(declare-datatypes ((ListLongMap!18533 0))(
  ( (ListLongMap!18534 (toList!9282 List!27899)) )
))
(declare-fun lt!564823 () ListLongMap!18533)

(declare-fun contains!7531 (ListLongMap!18533 (_ BitVec 64)) Bool)

(assert (=> b!1251460 (= res!834795 (contains!7531 lt!564823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47595)

(declare-datatypes ((array!80989 0))(
  ( (array!80990 (arr!39055 (Array (_ BitVec 32) (_ BitVec 64))) (size!39592 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80989)

(declare-datatypes ((ValueCell!15073 0))(
  ( (ValueCellFull!15073 (v!18596 V!47595)) (EmptyCell!15073) )
))
(declare-datatypes ((array!80991 0))(
  ( (array!80992 (arr!39056 (Array (_ BitVec 32) ValueCell!15073)) (size!39593 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80991)

(declare-fun minValueBefore!43 () V!47595)

(declare-fun getCurrentListMap!4496 (array!80989 array!80991 (_ BitVec 32) (_ BitVec 32) V!47595 V!47595 (_ BitVec 32) Int) ListLongMap!18533)

(assert (=> b!1251460 (= lt!564823 (getCurrentListMap!4496 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251461 () Bool)

(declare-fun res!834797 () Bool)

(declare-fun e!710702 () Bool)

(assert (=> b!1251461 (=> (not res!834797) (not e!710702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80989 (_ BitVec 32)) Bool)

(assert (=> b!1251461 (= res!834797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251462 () Bool)

(declare-fun e!710701 () Bool)

(declare-fun tp_is_empty!31673 () Bool)

(assert (=> b!1251462 (= e!710701 tp_is_empty!31673)))

(declare-fun b!1251463 () Bool)

(assert (=> b!1251463 (= e!710702 (not e!710704))))

(declare-fun res!834792 () Bool)

(assert (=> b!1251463 (=> res!834792 e!710704)))

(assert (=> b!1251463 (= res!834792 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564827 () ListLongMap!18533)

(declare-fun lt!564824 () ListLongMap!18533)

(assert (=> b!1251463 (= lt!564827 lt!564824)))

(declare-datatypes ((Unit!41539 0))(
  ( (Unit!41540) )
))
(declare-fun lt!564826 () Unit!41539)

(declare-fun minValueAfter!43 () V!47595)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!973 (array!80989 array!80991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47595 V!47595 V!47595 V!47595 (_ BitVec 32) Int) Unit!41539)

(assert (=> b!1251463 (= lt!564826 (lemmaNoChangeToArrayThenSameMapNoExtras!973 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5655 (array!80989 array!80991 (_ BitVec 32) (_ BitVec 32) V!47595 V!47595 (_ BitVec 32) Int) ListLongMap!18533)

(assert (=> b!1251463 (= lt!564824 (getCurrentListMapNoExtraKeys!5655 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251463 (= lt!564827 (getCurrentListMapNoExtraKeys!5655 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251464 () Bool)

(declare-fun res!834794 () Bool)

(assert (=> b!1251464 (=> (not res!834794) (not e!710702))))

(assert (=> b!1251464 (= res!834794 (and (= (size!39593 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39592 _keys!1118) (size!39593 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834793 () Bool)

(assert (=> start!105038 (=> (not res!834793) (not e!710702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105038 (= res!834793 (validMask!0 mask!1466))))

(assert (=> start!105038 e!710702))

(assert (=> start!105038 true))

(assert (=> start!105038 tp!93810))

(assert (=> start!105038 tp_is_empty!31673))

(declare-fun array_inv!29721 (array!80989) Bool)

(assert (=> start!105038 (array_inv!29721 _keys!1118)))

(declare-fun e!710699 () Bool)

(declare-fun array_inv!29722 (array!80991) Bool)

(assert (=> start!105038 (and (array_inv!29722 _values!914) e!710699)))

(declare-fun mapNonEmpty!49276 () Bool)

(declare-fun mapRes!49276 () Bool)

(declare-fun tp!93809 () Bool)

(declare-fun e!710705 () Bool)

(assert (=> mapNonEmpty!49276 (= mapRes!49276 (and tp!93809 e!710705))))

(declare-fun mapKey!49276 () (_ BitVec 32))

(declare-fun mapRest!49276 () (Array (_ BitVec 32) ValueCell!15073))

(declare-fun mapValue!49276 () ValueCell!15073)

(assert (=> mapNonEmpty!49276 (= (arr!39056 _values!914) (store mapRest!49276 mapKey!49276 mapValue!49276))))

(declare-fun b!1251465 () Bool)

(assert (=> b!1251465 (= e!710703 (bvsle #b00000000000000000000000000000000 (size!39592 _keys!1118)))))

(declare-fun -!2039 (ListLongMap!18533 (_ BitVec 64)) ListLongMap!18533)

(assert (=> b!1251465 (= (-!2039 lt!564823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564823)))

(declare-fun lt!564825 () Unit!41539)

(declare-fun removeNotPresentStillSame!106 (ListLongMap!18533 (_ BitVec 64)) Unit!41539)

(assert (=> b!1251465 (= lt!564825 (removeNotPresentStillSame!106 lt!564823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251466 () Bool)

(assert (=> b!1251466 (= e!710699 (and e!710701 mapRes!49276))))

(declare-fun condMapEmpty!49276 () Bool)

(declare-fun mapDefault!49276 () ValueCell!15073)

