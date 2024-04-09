; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105588 () Bool)

(assert start!105588)

(declare-fun b_free!27167 () Bool)

(declare-fun b_next!27167 () Bool)

(assert (=> start!105588 (= b_free!27167 (not b_next!27167))))

(declare-fun tp!95022 () Bool)

(declare-fun b_and!45043 () Bool)

(assert (=> start!105588 (= tp!95022 b_and!45043)))

(declare-fun res!838233 () Bool)

(declare-fun e!715009 () Bool)

(assert (=> start!105588 (=> (not res!838233) (not e!715009))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105588 (= res!838233 (validMask!0 mask!1466))))

(assert (=> start!105588 e!715009))

(assert (=> start!105588 true))

(assert (=> start!105588 tp!95022))

(declare-fun tp_is_empty!32069 () Bool)

(assert (=> start!105588 tp_is_empty!32069))

(declare-datatypes ((array!81773 0))(
  ( (array!81774 (arr!39439 (Array (_ BitVec 32) (_ BitVec 64))) (size!39976 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81773)

(declare-fun array_inv!29989 (array!81773) Bool)

(assert (=> start!105588 (array_inv!29989 _keys!1118)))

(declare-datatypes ((V!48123 0))(
  ( (V!48124 (val!16097 Int)) )
))
(declare-datatypes ((ValueCell!15271 0))(
  ( (ValueCellFull!15271 (v!18799 V!48123)) (EmptyCell!15271) )
))
(declare-datatypes ((array!81775 0))(
  ( (array!81776 (arr!39440 (Array (_ BitVec 32) ValueCell!15271)) (size!39977 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81775)

(declare-fun e!715010 () Bool)

(declare-fun array_inv!29990 (array!81775) Bool)

(assert (=> start!105588 (and (array_inv!29990 _values!914) e!715010)))

(declare-fun b!1257371 () Bool)

(assert (=> b!1257371 (= e!715009 (not true))))

(declare-datatypes ((tuple2!20958 0))(
  ( (tuple2!20959 (_1!10489 (_ BitVec 64)) (_2!10489 V!48123)) )
))
(declare-datatypes ((List!28189 0))(
  ( (Nil!28186) (Cons!28185 (h!29394 tuple2!20958) (t!41687 List!28189)) )
))
(declare-datatypes ((ListLongMap!18843 0))(
  ( (ListLongMap!18844 (toList!9437 List!28189)) )
))
(declare-fun lt!568692 () ListLongMap!18843)

(declare-fun lt!568694 () ListLongMap!18843)

(assert (=> b!1257371 (= lt!568692 lt!568694)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41848 0))(
  ( (Unit!41849) )
))
(declare-fun lt!568693 () Unit!41848)

(declare-fun minValueAfter!43 () V!48123)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48123)

(declare-fun minValueBefore!43 () V!48123)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1107 (array!81773 array!81775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48123 V!48123 V!48123 V!48123 (_ BitVec 32) Int) Unit!41848)

(assert (=> b!1257371 (= lt!568693 (lemmaNoChangeToArrayThenSameMapNoExtras!1107 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5789 (array!81773 array!81775 (_ BitVec 32) (_ BitVec 32) V!48123 V!48123 (_ BitVec 32) Int) ListLongMap!18843)

(assert (=> b!1257371 (= lt!568694 (getCurrentListMapNoExtraKeys!5789 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257371 (= lt!568692 (getCurrentListMapNoExtraKeys!5789 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49894 () Bool)

(declare-fun mapRes!49894 () Bool)

(assert (=> mapIsEmpty!49894 mapRes!49894))

(declare-fun b!1257372 () Bool)

(declare-fun e!715011 () Bool)

(assert (=> b!1257372 (= e!715010 (and e!715011 mapRes!49894))))

(declare-fun condMapEmpty!49894 () Bool)

(declare-fun mapDefault!49894 () ValueCell!15271)

