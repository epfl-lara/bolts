; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105456 () Bool)

(assert start!105456)

(declare-fun b_free!27079 () Bool)

(declare-fun b_next!27079 () Bool)

(assert (=> start!105456 (= b_free!27079 (not b_next!27079))))

(declare-fun tp!94752 () Bool)

(declare-fun b_and!44935 () Bool)

(assert (=> start!105456 (= tp!94752 b_and!44935)))

(declare-fun mapIsEmpty!49756 () Bool)

(declare-fun mapRes!49756 () Bool)

(assert (=> mapIsEmpty!49756 mapRes!49756))

(declare-fun b!1255885 () Bool)

(declare-fun e!713903 () Bool)

(declare-fun e!713902 () Bool)

(assert (=> b!1255885 (= e!713903 e!713902)))

(declare-fun res!837336 () Bool)

(assert (=> b!1255885 (=> res!837336 e!713902)))

(declare-datatypes ((V!48007 0))(
  ( (V!48008 (val!16053 Int)) )
))
(declare-datatypes ((tuple2!20882 0))(
  ( (tuple2!20883 (_1!10451 (_ BitVec 64)) (_2!10451 V!48007)) )
))
(declare-datatypes ((List!28118 0))(
  ( (Nil!28115) (Cons!28114 (h!29323 tuple2!20882) (t!41612 List!28118)) )
))
(declare-datatypes ((ListLongMap!18767 0))(
  ( (ListLongMap!18768 (toList!9399 List!28118)) )
))
(declare-fun lt!567802 () ListLongMap!18767)

(declare-fun contains!7557 (ListLongMap!18767 (_ BitVec 64)) Bool)

(assert (=> b!1255885 (= res!837336 (contains!7557 lt!567802 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!81595 0))(
  ( (array!81596 (arr!39352 (Array (_ BitVec 32) (_ BitVec 64))) (size!39889 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81595)

(declare-datatypes ((ValueCell!15227 0))(
  ( (ValueCellFull!15227 (v!18753 V!48007)) (EmptyCell!15227) )
))
(declare-datatypes ((array!81597 0))(
  ( (array!81598 (arr!39353 (Array (_ BitVec 32) ValueCell!15227)) (size!39890 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81597)

(declare-fun minValueBefore!43 () V!48007)

(declare-fun zeroValue!871 () V!48007)

(declare-fun getCurrentListMap!4562 (array!81595 array!81597 (_ BitVec 32) (_ BitVec 32) V!48007 V!48007 (_ BitVec 32) Int) ListLongMap!18767)

(assert (=> b!1255885 (= lt!567802 (getCurrentListMap!4562 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255886 () Bool)

(declare-fun res!837337 () Bool)

(declare-fun e!713901 () Bool)

(assert (=> b!1255886 (=> (not res!837337) (not e!713901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81595 (_ BitVec 32)) Bool)

(assert (=> b!1255886 (= res!837337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255887 () Bool)

(declare-fun res!837334 () Bool)

(assert (=> b!1255887 (=> (not res!837334) (not e!713901))))

(declare-datatypes ((List!28119 0))(
  ( (Nil!28116) (Cons!28115 (h!29324 (_ BitVec 64)) (t!41613 List!28119)) )
))
(declare-fun arrayNoDuplicates!0 (array!81595 (_ BitVec 32) List!28119) Bool)

(assert (=> b!1255887 (= res!837334 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28116))))

(declare-fun res!837338 () Bool)

(assert (=> start!105456 (=> (not res!837338) (not e!713901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105456 (= res!837338 (validMask!0 mask!1466))))

(assert (=> start!105456 e!713901))

(assert (=> start!105456 true))

(assert (=> start!105456 tp!94752))

(declare-fun tp_is_empty!31981 () Bool)

(assert (=> start!105456 tp_is_empty!31981))

(declare-fun array_inv!29929 (array!81595) Bool)

(assert (=> start!105456 (array_inv!29929 _keys!1118)))

(declare-fun e!713899 () Bool)

(declare-fun array_inv!29930 (array!81597) Bool)

(assert (=> start!105456 (and (array_inv!29930 _values!914) e!713899)))

(declare-fun b!1255888 () Bool)

(assert (=> b!1255888 (= e!713901 (not e!713903))))

(declare-fun res!837333 () Bool)

(assert (=> b!1255888 (=> res!837333 e!713903)))

(assert (=> b!1255888 (= res!837333 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567800 () ListLongMap!18767)

(declare-fun lt!567801 () ListLongMap!18767)

(assert (=> b!1255888 (= lt!567800 lt!567801)))

(declare-fun minValueAfter!43 () V!48007)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41770 0))(
  ( (Unit!41771) )
))
(declare-fun lt!567804 () Unit!41770)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1075 (array!81595 array!81597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48007 V!48007 V!48007 V!48007 (_ BitVec 32) Int) Unit!41770)

(assert (=> b!1255888 (= lt!567804 (lemmaNoChangeToArrayThenSameMapNoExtras!1075 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5757 (array!81595 array!81597 (_ BitVec 32) (_ BitVec 32) V!48007 V!48007 (_ BitVec 32) Int) ListLongMap!18767)

(assert (=> b!1255888 (= lt!567801 (getCurrentListMapNoExtraKeys!5757 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255888 (= lt!567800 (getCurrentListMapNoExtraKeys!5757 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255889 () Bool)

(declare-fun e!713904 () Bool)

(assert (=> b!1255889 (= e!713904 tp_is_empty!31981)))

(declare-fun b!1255890 () Bool)

(declare-fun res!837335 () Bool)

(assert (=> b!1255890 (=> (not res!837335) (not e!713901))))

(assert (=> b!1255890 (= res!837335 (and (= (size!39890 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39889 _keys!1118) (size!39890 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255891 () Bool)

(declare-fun e!713905 () Bool)

(assert (=> b!1255891 (= e!713905 tp_is_empty!31981)))

(declare-fun mapNonEmpty!49756 () Bool)

(declare-fun tp!94751 () Bool)

(assert (=> mapNonEmpty!49756 (= mapRes!49756 (and tp!94751 e!713904))))

(declare-fun mapValue!49756 () ValueCell!15227)

(declare-fun mapRest!49756 () (Array (_ BitVec 32) ValueCell!15227))

(declare-fun mapKey!49756 () (_ BitVec 32))

(assert (=> mapNonEmpty!49756 (= (arr!39353 _values!914) (store mapRest!49756 mapKey!49756 mapValue!49756))))

(declare-fun b!1255892 () Bool)

(assert (=> b!1255892 (= e!713899 (and e!713905 mapRes!49756))))

(declare-fun condMapEmpty!49756 () Bool)

(declare-fun mapDefault!49756 () ValueCell!15227)

