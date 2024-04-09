; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105316 () Bool)

(assert start!105316)

(declare-fun b_free!26975 () Bool)

(declare-fun b_next!26975 () Bool)

(assert (=> start!105316 (= b_free!26975 (not b_next!26975))))

(declare-fun tp!94434 () Bool)

(declare-fun b_and!44811 () Bool)

(assert (=> start!105316 (= tp!94434 b_and!44811)))

(declare-fun b!1254411 () Bool)

(declare-fun e!712836 () Bool)

(assert (=> b!1254411 (= e!712836 true)))

(declare-datatypes ((V!47867 0))(
  ( (V!47868 (val!16001 Int)) )
))
(declare-datatypes ((tuple2!20802 0))(
  ( (tuple2!20803 (_1!10411 (_ BitVec 64)) (_2!10411 V!47867)) )
))
(declare-datatypes ((List!28044 0))(
  ( (Nil!28041) (Cons!28040 (h!29249 tuple2!20802) (t!41534 List!28044)) )
))
(declare-datatypes ((ListLongMap!18687 0))(
  ( (ListLongMap!18688 (toList!9359 List!28044)) )
))
(declare-fun lt!566930 () ListLongMap!18687)

(declare-fun lt!566934 () ListLongMap!18687)

(declare-fun -!2068 (ListLongMap!18687 (_ BitVec 64)) ListLongMap!18687)

(assert (=> b!1254411 (= lt!566930 (-!2068 lt!566934 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566935 () ListLongMap!18687)

(declare-fun lt!566932 () ListLongMap!18687)

(assert (=> b!1254411 (= (-!2068 lt!566935 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566932)))

(declare-datatypes ((Unit!41690 0))(
  ( (Unit!41691) )
))
(declare-fun lt!566929 () Unit!41690)

(declare-fun minValueBefore!43 () V!47867)

(declare-fun addThenRemoveForNewKeyIsSame!328 (ListLongMap!18687 (_ BitVec 64) V!47867) Unit!41690)

(assert (=> b!1254411 (= lt!566929 (addThenRemoveForNewKeyIsSame!328 lt!566932 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566936 () ListLongMap!18687)

(declare-fun lt!566931 () ListLongMap!18687)

(assert (=> b!1254411 (and (= lt!566934 lt!566935) (= lt!566936 lt!566931))))

(declare-fun +!4159 (ListLongMap!18687 tuple2!20802) ListLongMap!18687)

(assert (=> b!1254411 (= lt!566935 (+!4159 lt!566932 (tuple2!20803 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47867)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47867)

(declare-datatypes ((array!81387 0))(
  ( (array!81388 (arr!39250 (Array (_ BitVec 32) (_ BitVec 64))) (size!39787 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81387)

(declare-datatypes ((ValueCell!15175 0))(
  ( (ValueCellFull!15175 (v!18700 V!47867)) (EmptyCell!15175) )
))
(declare-datatypes ((array!81389 0))(
  ( (array!81390 (arr!39251 (Array (_ BitVec 32) ValueCell!15175)) (size!39788 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81389)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4546 (array!81387 array!81389 (_ BitVec 32) (_ BitVec 32) V!47867 V!47867 (_ BitVec 32) Int) ListLongMap!18687)

(assert (=> b!1254411 (= lt!566936 (getCurrentListMap!4546 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254411 (= lt!566934 (getCurrentListMap!4546 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254412 () Bool)

(declare-fun res!836483 () Bool)

(declare-fun e!712835 () Bool)

(assert (=> b!1254412 (=> (not res!836483) (not e!712835))))

(declare-datatypes ((List!28045 0))(
  ( (Nil!28042) (Cons!28041 (h!29250 (_ BitVec 64)) (t!41535 List!28045)) )
))
(declare-fun arrayNoDuplicates!0 (array!81387 (_ BitVec 32) List!28045) Bool)

(assert (=> b!1254412 (= res!836483 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28042))))

(declare-fun b!1254413 () Bool)

(declare-fun res!836486 () Bool)

(assert (=> b!1254413 (=> (not res!836486) (not e!712835))))

(assert (=> b!1254413 (= res!836486 (and (= (size!39788 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39787 _keys!1118) (size!39788 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254414 () Bool)

(declare-fun e!712833 () Bool)

(declare-fun tp_is_empty!31877 () Bool)

(assert (=> b!1254414 (= e!712833 tp_is_empty!31877)))

(declare-fun mapIsEmpty!49594 () Bool)

(declare-fun mapRes!49594 () Bool)

(assert (=> mapIsEmpty!49594 mapRes!49594))

(declare-fun res!836487 () Bool)

(assert (=> start!105316 (=> (not res!836487) (not e!712835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105316 (= res!836487 (validMask!0 mask!1466))))

(assert (=> start!105316 e!712835))

(assert (=> start!105316 true))

(assert (=> start!105316 tp!94434))

(assert (=> start!105316 tp_is_empty!31877))

(declare-fun array_inv!29857 (array!81387) Bool)

(assert (=> start!105316 (array_inv!29857 _keys!1118)))

(declare-fun e!712837 () Bool)

(declare-fun array_inv!29858 (array!81389) Bool)

(assert (=> start!105316 (and (array_inv!29858 _values!914) e!712837)))

(declare-fun b!1254415 () Bool)

(declare-fun res!836484 () Bool)

(assert (=> b!1254415 (=> (not res!836484) (not e!712835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81387 (_ BitVec 32)) Bool)

(assert (=> b!1254415 (= res!836484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254416 () Bool)

(declare-fun e!712832 () Bool)

(assert (=> b!1254416 (= e!712832 tp_is_empty!31877)))

(declare-fun mapNonEmpty!49594 () Bool)

(declare-fun tp!94433 () Bool)

(assert (=> mapNonEmpty!49594 (= mapRes!49594 (and tp!94433 e!712833))))

(declare-fun mapKey!49594 () (_ BitVec 32))

(declare-fun mapRest!49594 () (Array (_ BitVec 32) ValueCell!15175))

(declare-fun mapValue!49594 () ValueCell!15175)

(assert (=> mapNonEmpty!49594 (= (arr!39251 _values!914) (store mapRest!49594 mapKey!49594 mapValue!49594))))

(declare-fun b!1254417 () Bool)

(assert (=> b!1254417 (= e!712837 (and e!712832 mapRes!49594))))

(declare-fun condMapEmpty!49594 () Bool)

(declare-fun mapDefault!49594 () ValueCell!15175)

