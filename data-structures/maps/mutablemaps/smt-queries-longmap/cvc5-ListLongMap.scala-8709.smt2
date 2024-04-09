; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105740 () Bool)

(assert start!105740)

(declare-fun b_free!27289 () Bool)

(declare-fun b_next!27289 () Bool)

(assert (=> start!105740 (= b_free!27289 (not b_next!27289))))

(declare-fun tp!95394 () Bool)

(declare-fun b_and!45183 () Bool)

(assert (=> start!105740 (= tp!95394 b_and!45183)))

(declare-fun b!1259024 () Bool)

(declare-fun res!839195 () Bool)

(declare-fun e!716215 () Bool)

(assert (=> b!1259024 (=> (not res!839195) (not e!716215))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81995 0))(
  ( (array!81996 (arr!39548 (Array (_ BitVec 32) (_ BitVec 64))) (size!40085 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81995)

(declare-datatypes ((V!48287 0))(
  ( (V!48288 (val!16158 Int)) )
))
(declare-datatypes ((ValueCell!15332 0))(
  ( (ValueCellFull!15332 (v!18860 V!48287)) (EmptyCell!15332) )
))
(declare-datatypes ((array!81997 0))(
  ( (array!81998 (arr!39549 (Array (_ BitVec 32) ValueCell!15332)) (size!40086 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81997)

(assert (=> b!1259024 (= res!839195 (and (= (size!40086 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40085 _keys!1118) (size!40086 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259025 () Bool)

(declare-fun e!716216 () Bool)

(declare-fun tp_is_empty!32191 () Bool)

(assert (=> b!1259025 (= e!716216 tp_is_empty!32191)))

(declare-fun b!1259026 () Bool)

(declare-fun e!716211 () Bool)

(assert (=> b!1259026 (= e!716215 (not e!716211))))

(declare-fun res!839194 () Bool)

(assert (=> b!1259026 (=> res!839194 e!716211)))

(assert (=> b!1259026 (= res!839194 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21040 0))(
  ( (tuple2!21041 (_1!10530 (_ BitVec 64)) (_2!10530 V!48287)) )
))
(declare-datatypes ((List!28269 0))(
  ( (Nil!28266) (Cons!28265 (h!29474 tuple2!21040) (t!41771 List!28269)) )
))
(declare-datatypes ((ListLongMap!18925 0))(
  ( (ListLongMap!18926 (toList!9478 List!28269)) )
))
(declare-fun lt!569656 () ListLongMap!18925)

(declare-fun lt!569659 () ListLongMap!18925)

(assert (=> b!1259026 (= lt!569656 lt!569659)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48287)

(declare-fun zeroValue!871 () V!48287)

(declare-datatypes ((Unit!41925 0))(
  ( (Unit!41926) )
))
(declare-fun lt!569653 () Unit!41925)

(declare-fun minValueBefore!43 () V!48287)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1144 (array!81995 array!81997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48287 V!48287 V!48287 V!48287 (_ BitVec 32) Int) Unit!41925)

(assert (=> b!1259026 (= lt!569653 (lemmaNoChangeToArrayThenSameMapNoExtras!1144 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5826 (array!81995 array!81997 (_ BitVec 32) (_ BitVec 32) V!48287 V!48287 (_ BitVec 32) Int) ListLongMap!18925)

(assert (=> b!1259026 (= lt!569659 (getCurrentListMapNoExtraKeys!5826 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259026 (= lt!569656 (getCurrentListMapNoExtraKeys!5826 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50083 () Bool)

(declare-fun mapRes!50083 () Bool)

(declare-fun tp!95393 () Bool)

(assert (=> mapNonEmpty!50083 (= mapRes!50083 (and tp!95393 e!716216))))

(declare-fun mapKey!50083 () (_ BitVec 32))

(declare-fun mapValue!50083 () ValueCell!15332)

(declare-fun mapRest!50083 () (Array (_ BitVec 32) ValueCell!15332))

(assert (=> mapNonEmpty!50083 (= (arr!39549 _values!914) (store mapRest!50083 mapKey!50083 mapValue!50083))))

(declare-fun b!1259027 () Bool)

(declare-fun res!839192 () Bool)

(assert (=> b!1259027 (=> (not res!839192) (not e!716215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81995 (_ BitVec 32)) Bool)

(assert (=> b!1259027 (= res!839192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259028 () Bool)

(declare-fun e!716212 () Bool)

(declare-fun lt!569657 () ListLongMap!18925)

(declare-fun lt!569654 () tuple2!21040)

(declare-fun +!4177 (ListLongMap!18925 tuple2!21040) ListLongMap!18925)

(assert (=> b!1259028 (= e!716212 (= lt!569657 (+!4177 lt!569659 lt!569654)))))

(declare-fun b!1259029 () Bool)

(assert (=> b!1259029 (= e!716211 true)))

(declare-fun lt!569655 () ListLongMap!18925)

(declare-fun lt!569660 () ListLongMap!18925)

(declare-fun -!2112 (ListLongMap!18925 (_ BitVec 64)) ListLongMap!18925)

(assert (=> b!1259029 (= lt!569655 (-!2112 lt!569660 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569658 () ListLongMap!18925)

(declare-fun lt!569662 () ListLongMap!18925)

(assert (=> b!1259029 (= (-!2112 lt!569658 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569662)))

(declare-fun lt!569661 () Unit!41925)

(declare-fun addThenRemoveForNewKeyIsSame!337 (ListLongMap!18925 (_ BitVec 64) V!48287) Unit!41925)

(assert (=> b!1259029 (= lt!569661 (addThenRemoveForNewKeyIsSame!337 lt!569662 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259029 e!716212))

(declare-fun res!839191 () Bool)

(assert (=> b!1259029 (=> (not res!839191) (not e!716212))))

(assert (=> b!1259029 (= res!839191 (= lt!569660 lt!569658))))

(assert (=> b!1259029 (= lt!569658 (+!4177 lt!569662 (tuple2!21041 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259029 (= lt!569662 (+!4177 lt!569656 lt!569654))))

(assert (=> b!1259029 (= lt!569654 (tuple2!21041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4616 (array!81995 array!81997 (_ BitVec 32) (_ BitVec 32) V!48287 V!48287 (_ BitVec 32) Int) ListLongMap!18925)

(assert (=> b!1259029 (= lt!569657 (getCurrentListMap!4616 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259029 (= lt!569660 (getCurrentListMap!4616 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259030 () Bool)

(declare-fun res!839196 () Bool)

(assert (=> b!1259030 (=> (not res!839196) (not e!716215))))

(declare-datatypes ((List!28270 0))(
  ( (Nil!28267) (Cons!28266 (h!29475 (_ BitVec 64)) (t!41772 List!28270)) )
))
(declare-fun arrayNoDuplicates!0 (array!81995 (_ BitVec 32) List!28270) Bool)

(assert (=> b!1259030 (= res!839196 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28267))))

(declare-fun b!1259031 () Bool)

(declare-fun e!716213 () Bool)

(declare-fun e!716210 () Bool)

(assert (=> b!1259031 (= e!716213 (and e!716210 mapRes!50083))))

(declare-fun condMapEmpty!50083 () Bool)

(declare-fun mapDefault!50083 () ValueCell!15332)

