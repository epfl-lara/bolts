; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105620 () Bool)

(assert start!105620)

(declare-fun b_free!27199 () Bool)

(declare-fun b_next!27199 () Bool)

(assert (=> start!105620 (= b_free!27199 (not b_next!27199))))

(declare-fun tp!95118 () Bool)

(declare-fun b_and!45075 () Bool)

(assert (=> start!105620 (= tp!95118 b_and!45075)))

(declare-fun b!1257707 () Bool)

(declare-fun e!715249 () Bool)

(declare-fun tp_is_empty!32101 () Bool)

(assert (=> b!1257707 (= e!715249 tp_is_empty!32101)))

(declare-fun b!1257708 () Bool)

(declare-fun res!838423 () Bool)

(declare-fun e!715250 () Bool)

(assert (=> b!1257708 (=> (not res!838423) (not e!715250))))

(declare-datatypes ((array!81829 0))(
  ( (array!81830 (arr!39467 (Array (_ BitVec 32) (_ BitVec 64))) (size!40004 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81829)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81829 (_ BitVec 32)) Bool)

(assert (=> b!1257708 (= res!838423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257710 () Bool)

(declare-fun e!715251 () Bool)

(assert (=> b!1257710 (= e!715251 tp_is_empty!32101)))

(declare-fun mapIsEmpty!49942 () Bool)

(declare-fun mapRes!49942 () Bool)

(assert (=> mapIsEmpty!49942 mapRes!49942))

(declare-fun b!1257709 () Bool)

(declare-fun res!838426 () Bool)

(assert (=> b!1257709 (=> (not res!838426) (not e!715250))))

(declare-datatypes ((List!28208 0))(
  ( (Nil!28205) (Cons!28204 (h!29413 (_ BitVec 64)) (t!41706 List!28208)) )
))
(declare-fun arrayNoDuplicates!0 (array!81829 (_ BitVec 32) List!28208) Bool)

(assert (=> b!1257709 (= res!838426 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28205))))

(declare-fun res!838424 () Bool)

(assert (=> start!105620 (=> (not res!838424) (not e!715250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105620 (= res!838424 (validMask!0 mask!1466))))

(assert (=> start!105620 e!715250))

(assert (=> start!105620 true))

(assert (=> start!105620 tp!95118))

(assert (=> start!105620 tp_is_empty!32101))

(declare-fun array_inv!30011 (array!81829) Bool)

(assert (=> start!105620 (array_inv!30011 _keys!1118)))

(declare-datatypes ((V!48167 0))(
  ( (V!48168 (val!16113 Int)) )
))
(declare-datatypes ((ValueCell!15287 0))(
  ( (ValueCellFull!15287 (v!18815 V!48167)) (EmptyCell!15287) )
))
(declare-datatypes ((array!81831 0))(
  ( (array!81832 (arr!39468 (Array (_ BitVec 32) ValueCell!15287)) (size!40005 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81831)

(declare-fun e!715248 () Bool)

(declare-fun array_inv!30012 (array!81831) Bool)

(assert (=> start!105620 (and (array_inv!30012 _values!914) e!715248)))

(declare-fun b!1257711 () Bool)

(assert (=> b!1257711 (= e!715250 (not true))))

(declare-datatypes ((tuple2!20976 0))(
  ( (tuple2!20977 (_1!10498 (_ BitVec 64)) (_2!10498 V!48167)) )
))
(declare-datatypes ((List!28209 0))(
  ( (Nil!28206) (Cons!28205 (h!29414 tuple2!20976) (t!41707 List!28209)) )
))
(declare-datatypes ((ListLongMap!18861 0))(
  ( (ListLongMap!18862 (toList!9446 List!28209)) )
))
(declare-fun lt!568837 () ListLongMap!18861)

(declare-fun lt!568836 () ListLongMap!18861)

(assert (=> b!1257711 (= lt!568837 lt!568836)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48167)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48167)

(declare-datatypes ((Unit!41866 0))(
  ( (Unit!41867) )
))
(declare-fun lt!568838 () Unit!41866)

(declare-fun minValueBefore!43 () V!48167)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1116 (array!81829 array!81831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48167 V!48167 V!48167 V!48167 (_ BitVec 32) Int) Unit!41866)

(assert (=> b!1257711 (= lt!568838 (lemmaNoChangeToArrayThenSameMapNoExtras!1116 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5798 (array!81829 array!81831 (_ BitVec 32) (_ BitVec 32) V!48167 V!48167 (_ BitVec 32) Int) ListLongMap!18861)

(assert (=> b!1257711 (= lt!568836 (getCurrentListMapNoExtraKeys!5798 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257711 (= lt!568837 (getCurrentListMapNoExtraKeys!5798 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49942 () Bool)

(declare-fun tp!95117 () Bool)

(assert (=> mapNonEmpty!49942 (= mapRes!49942 (and tp!95117 e!715249))))

(declare-fun mapKey!49942 () (_ BitVec 32))

(declare-fun mapValue!49942 () ValueCell!15287)

(declare-fun mapRest!49942 () (Array (_ BitVec 32) ValueCell!15287))

(assert (=> mapNonEmpty!49942 (= (arr!39468 _values!914) (store mapRest!49942 mapKey!49942 mapValue!49942))))

(declare-fun b!1257712 () Bool)

(assert (=> b!1257712 (= e!715248 (and e!715251 mapRes!49942))))

(declare-fun condMapEmpty!49942 () Bool)

(declare-fun mapDefault!49942 () ValueCell!15287)

