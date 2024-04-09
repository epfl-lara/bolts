; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105624 () Bool)

(assert start!105624)

(declare-fun b_free!27203 () Bool)

(declare-fun b_next!27203 () Bool)

(assert (=> start!105624 (= b_free!27203 (not b_next!27203))))

(declare-fun tp!95129 () Bool)

(declare-fun b_and!45079 () Bool)

(assert (=> start!105624 (= tp!95129 b_and!45079)))

(declare-fun b!1257749 () Bool)

(declare-fun e!715277 () Bool)

(assert (=> b!1257749 (= e!715277 (not true))))

(declare-datatypes ((V!48171 0))(
  ( (V!48172 (val!16115 Int)) )
))
(declare-datatypes ((tuple2!20980 0))(
  ( (tuple2!20981 (_1!10500 (_ BitVec 64)) (_2!10500 V!48171)) )
))
(declare-datatypes ((List!28212 0))(
  ( (Nil!28209) (Cons!28208 (h!29417 tuple2!20980) (t!41710 List!28212)) )
))
(declare-datatypes ((ListLongMap!18865 0))(
  ( (ListLongMap!18866 (toList!9448 List!28212)) )
))
(declare-fun lt!568855 () ListLongMap!18865)

(declare-fun lt!568854 () ListLongMap!18865)

(assert (=> b!1257749 (= lt!568855 lt!568854)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!48171)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48171)

(declare-datatypes ((array!81837 0))(
  ( (array!81838 (arr!39471 (Array (_ BitVec 32) (_ BitVec 64))) (size!40008 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81837)

(declare-datatypes ((ValueCell!15289 0))(
  ( (ValueCellFull!15289 (v!18817 V!48171)) (EmptyCell!15289) )
))
(declare-datatypes ((array!81839 0))(
  ( (array!81840 (arr!39472 (Array (_ BitVec 32) ValueCell!15289)) (size!40009 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81839)

(declare-fun minValueBefore!43 () V!48171)

(declare-datatypes ((Unit!41870 0))(
  ( (Unit!41871) )
))
(declare-fun lt!568856 () Unit!41870)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1118 (array!81837 array!81839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48171 V!48171 V!48171 V!48171 (_ BitVec 32) Int) Unit!41870)

(assert (=> b!1257749 (= lt!568856 (lemmaNoChangeToArrayThenSameMapNoExtras!1118 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5800 (array!81837 array!81839 (_ BitVec 32) (_ BitVec 32) V!48171 V!48171 (_ BitVec 32) Int) ListLongMap!18865)

(assert (=> b!1257749 (= lt!568854 (getCurrentListMapNoExtraKeys!5800 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257749 (= lt!568855 (getCurrentListMapNoExtraKeys!5800 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257750 () Bool)

(declare-fun e!715280 () Bool)

(declare-fun e!715281 () Bool)

(declare-fun mapRes!49948 () Bool)

(assert (=> b!1257750 (= e!715280 (and e!715281 mapRes!49948))))

(declare-fun condMapEmpty!49948 () Bool)

(declare-fun mapDefault!49948 () ValueCell!15289)

