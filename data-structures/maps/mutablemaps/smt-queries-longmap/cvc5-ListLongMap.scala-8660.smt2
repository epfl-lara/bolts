; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105358 () Bool)

(assert start!105358)

(declare-fun b_free!26995 () Bool)

(declare-fun b_next!26995 () Bool)

(assert (=> start!105358 (= b_free!26995 (not b_next!26995))))

(declare-fun tp!94496 () Bool)

(declare-fun b_and!44843 () Bool)

(assert (=> start!105358 (= tp!94496 b_and!44843)))

(declare-fun b!1254833 () Bool)

(declare-fun e!713131 () Bool)

(declare-fun tp_is_empty!31897 () Bool)

(assert (=> b!1254833 (= e!713131 tp_is_empty!31897)))

(declare-fun b!1254834 () Bool)

(declare-fun e!713133 () Bool)

(assert (=> b!1254834 (= e!713133 (not true))))

(declare-datatypes ((V!47895 0))(
  ( (V!47896 (val!16011 Int)) )
))
(declare-datatypes ((tuple2!20816 0))(
  ( (tuple2!20817 (_1!10418 (_ BitVec 64)) (_2!10418 V!47895)) )
))
(declare-datatypes ((List!28056 0))(
  ( (Nil!28053) (Cons!28052 (h!29261 tuple2!20816) (t!41548 List!28056)) )
))
(declare-datatypes ((ListLongMap!18701 0))(
  ( (ListLongMap!18702 (toList!9366 List!28056)) )
))
(declare-fun lt!567298 () ListLongMap!18701)

(declare-fun lt!567299 () ListLongMap!18701)

(assert (=> b!1254834 (= lt!567298 lt!567299)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47895)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47895)

(declare-datatypes ((array!81429 0))(
  ( (array!81430 (arr!39270 (Array (_ BitVec 32) (_ BitVec 64))) (size!39807 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81429)

(declare-datatypes ((ValueCell!15185 0))(
  ( (ValueCellFull!15185 (v!18711 V!47895)) (EmptyCell!15185) )
))
(declare-datatypes ((array!81431 0))(
  ( (array!81432 (arr!39271 (Array (_ BitVec 32) ValueCell!15185)) (size!39808 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81431)

(declare-datatypes ((Unit!41706 0))(
  ( (Unit!41707) )
))
(declare-fun lt!567297 () Unit!41706)

(declare-fun minValueBefore!43 () V!47895)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1045 (array!81429 array!81431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47895 V!47895 V!47895 V!47895 (_ BitVec 32) Int) Unit!41706)

(assert (=> b!1254834 (= lt!567297 (lemmaNoChangeToArrayThenSameMapNoExtras!1045 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5727 (array!81429 array!81431 (_ BitVec 32) (_ BitVec 32) V!47895 V!47895 (_ BitVec 32) Int) ListLongMap!18701)

(assert (=> b!1254834 (= lt!567299 (getCurrentListMapNoExtraKeys!5727 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254834 (= lt!567298 (getCurrentListMapNoExtraKeys!5727 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254835 () Bool)

(declare-fun e!713129 () Bool)

(assert (=> b!1254835 (= e!713129 tp_is_empty!31897)))

(declare-fun b!1254836 () Bool)

(declare-fun res!836713 () Bool)

(assert (=> b!1254836 (=> (not res!836713) (not e!713133))))

(declare-datatypes ((List!28057 0))(
  ( (Nil!28054) (Cons!28053 (h!29262 (_ BitVec 64)) (t!41549 List!28057)) )
))
(declare-fun arrayNoDuplicates!0 (array!81429 (_ BitVec 32) List!28057) Bool)

(assert (=> b!1254836 (= res!836713 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28054))))

(declare-fun b!1254837 () Bool)

(declare-fun e!713132 () Bool)

(declare-fun mapRes!49627 () Bool)

(assert (=> b!1254837 (= e!713132 (and e!713131 mapRes!49627))))

(declare-fun condMapEmpty!49627 () Bool)

(declare-fun mapDefault!49627 () ValueCell!15185)

