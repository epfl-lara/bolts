; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105676 () Bool)

(assert start!105676)

(declare-fun b_free!27241 () Bool)

(declare-fun b_next!27241 () Bool)

(assert (=> start!105676 (= b_free!27241 (not b_next!27241))))

(declare-fun tp!95247 () Bool)

(declare-fun b_and!45125 () Bool)

(assert (=> start!105676 (= tp!95247 b_and!45125)))

(declare-fun b!1258271 () Bool)

(declare-fun e!715657 () Bool)

(declare-fun tp_is_empty!32143 () Bool)

(assert (=> b!1258271 (= e!715657 tp_is_empty!32143)))

(declare-fun b!1258272 () Bool)

(declare-fun res!838747 () Bool)

(declare-fun e!715659 () Bool)

(assert (=> b!1258272 (=> (not res!838747) (not e!715659))))

(declare-datatypes ((array!81907 0))(
  ( (array!81908 (arr!39505 (Array (_ BitVec 32) (_ BitVec 64))) (size!40042 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81907)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81907 (_ BitVec 32)) Bool)

(assert (=> b!1258272 (= res!838747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!838744 () Bool)

(assert (=> start!105676 (=> (not res!838744) (not e!715659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105676 (= res!838744 (validMask!0 mask!1466))))

(assert (=> start!105676 e!715659))

(assert (=> start!105676 true))

(assert (=> start!105676 tp!95247))

(assert (=> start!105676 tp_is_empty!32143))

(declare-fun array_inv!30037 (array!81907) Bool)

(assert (=> start!105676 (array_inv!30037 _keys!1118)))

(declare-datatypes ((V!48223 0))(
  ( (V!48224 (val!16134 Int)) )
))
(declare-datatypes ((ValueCell!15308 0))(
  ( (ValueCellFull!15308 (v!18836 V!48223)) (EmptyCell!15308) )
))
(declare-datatypes ((array!81909 0))(
  ( (array!81910 (arr!39506 (Array (_ BitVec 32) ValueCell!15308)) (size!40043 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81909)

(declare-fun e!715655 () Bool)

(declare-fun array_inv!30038 (array!81909) Bool)

(assert (=> start!105676 (and (array_inv!30038 _values!914) e!715655)))

(declare-fun mapIsEmpty!50008 () Bool)

(declare-fun mapRes!50008 () Bool)

(assert (=> mapIsEmpty!50008 mapRes!50008))

(declare-fun b!1258273 () Bool)

(declare-fun e!715656 () Bool)

(assert (=> b!1258273 (= e!715656 tp_is_empty!32143)))

(declare-fun mapNonEmpty!50008 () Bool)

(declare-fun tp!95246 () Bool)

(assert (=> mapNonEmpty!50008 (= mapRes!50008 (and tp!95246 e!715656))))

(declare-fun mapValue!50008 () ValueCell!15308)

(declare-fun mapKey!50008 () (_ BitVec 32))

(declare-fun mapRest!50008 () (Array (_ BitVec 32) ValueCell!15308))

(assert (=> mapNonEmpty!50008 (= (arr!39506 _values!914) (store mapRest!50008 mapKey!50008 mapValue!50008))))

(declare-fun b!1258274 () Bool)

(declare-fun e!715658 () Bool)

(assert (=> b!1258274 (= e!715659 (not e!715658))))

(declare-fun res!838748 () Bool)

(assert (=> b!1258274 (=> res!838748 e!715658)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258274 (= res!838748 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21004 0))(
  ( (tuple2!21005 (_1!10512 (_ BitVec 64)) (_2!10512 V!48223)) )
))
(declare-datatypes ((List!28236 0))(
  ( (Nil!28233) (Cons!28232 (h!29441 tuple2!21004) (t!41736 List!28236)) )
))
(declare-datatypes ((ListLongMap!18889 0))(
  ( (ListLongMap!18890 (toList!9460 List!28236)) )
))
(declare-fun lt!569104 () ListLongMap!18889)

(declare-fun lt!569103 () ListLongMap!18889)

(assert (=> b!1258274 (= lt!569104 lt!569103)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48223)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48223)

(declare-fun minValueBefore!43 () V!48223)

(declare-datatypes ((Unit!41892 0))(
  ( (Unit!41893) )
))
(declare-fun lt!569106 () Unit!41892)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1129 (array!81907 array!81909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48223 V!48223 V!48223 V!48223 (_ BitVec 32) Int) Unit!41892)

(assert (=> b!1258274 (= lt!569106 (lemmaNoChangeToArrayThenSameMapNoExtras!1129 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5811 (array!81907 array!81909 (_ BitVec 32) (_ BitVec 32) V!48223 V!48223 (_ BitVec 32) Int) ListLongMap!18889)

(assert (=> b!1258274 (= lt!569103 (getCurrentListMapNoExtraKeys!5811 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258274 (= lt!569104 (getCurrentListMapNoExtraKeys!5811 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258275 () Bool)

(assert (=> b!1258275 (= e!715658 true)))

(declare-fun lt!569105 () ListLongMap!18889)

(declare-fun getCurrentListMap!4600 (array!81907 array!81909 (_ BitVec 32) (_ BitVec 32) V!48223 V!48223 (_ BitVec 32) Int) ListLongMap!18889)

(assert (=> b!1258275 (= lt!569105 (getCurrentListMap!4600 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258276 () Bool)

(declare-fun res!838746 () Bool)

(assert (=> b!1258276 (=> (not res!838746) (not e!715659))))

(declare-datatypes ((List!28237 0))(
  ( (Nil!28234) (Cons!28233 (h!29442 (_ BitVec 64)) (t!41737 List!28237)) )
))
(declare-fun arrayNoDuplicates!0 (array!81907 (_ BitVec 32) List!28237) Bool)

(assert (=> b!1258276 (= res!838746 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28234))))

(declare-fun b!1258277 () Bool)

(declare-fun res!838745 () Bool)

(assert (=> b!1258277 (=> (not res!838745) (not e!715659))))

(assert (=> b!1258277 (= res!838745 (and (= (size!40043 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40042 _keys!1118) (size!40043 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258278 () Bool)

(assert (=> b!1258278 (= e!715655 (and e!715657 mapRes!50008))))

(declare-fun condMapEmpty!50008 () Bool)

(declare-fun mapDefault!50008 () ValueCell!15308)

