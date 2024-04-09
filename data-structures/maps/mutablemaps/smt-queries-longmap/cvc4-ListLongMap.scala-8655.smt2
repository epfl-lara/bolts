; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105310 () Bool)

(assert start!105310)

(declare-fun b_free!26969 () Bool)

(declare-fun b_next!26969 () Bool)

(assert (=> start!105310 (= b_free!26969 (not b_next!26969))))

(declare-fun tp!94415 () Bool)

(declare-fun b_and!44805 () Bool)

(assert (=> start!105310 (= tp!94415 b_and!44805)))

(declare-fun b!1254339 () Bool)

(declare-fun e!712782 () Bool)

(assert (=> b!1254339 (= e!712782 true)))

(declare-datatypes ((V!47859 0))(
  ( (V!47860 (val!15998 Int)) )
))
(declare-datatypes ((tuple2!20798 0))(
  ( (tuple2!20799 (_1!10409 (_ BitVec 64)) (_2!10409 V!47859)) )
))
(declare-datatypes ((List!28041 0))(
  ( (Nil!28038) (Cons!28037 (h!29246 tuple2!20798) (t!41531 List!28041)) )
))
(declare-datatypes ((ListLongMap!18683 0))(
  ( (ListLongMap!18684 (toList!9357 List!28041)) )
))
(declare-fun lt!566864 () ListLongMap!18683)

(declare-fun lt!566857 () ListLongMap!18683)

(declare-fun -!2066 (ListLongMap!18683 (_ BitVec 64)) ListLongMap!18683)

(assert (=> b!1254339 (= lt!566864 (-!2066 lt!566857 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566858 () ListLongMap!18683)

(declare-fun lt!566861 () ListLongMap!18683)

(assert (=> b!1254339 (= (-!2066 lt!566858 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566861)))

(declare-datatypes ((Unit!41686 0))(
  ( (Unit!41687) )
))
(declare-fun lt!566859 () Unit!41686)

(declare-fun minValueBefore!43 () V!47859)

(declare-fun addThenRemoveForNewKeyIsSame!326 (ListLongMap!18683 (_ BitVec 64) V!47859) Unit!41686)

(assert (=> b!1254339 (= lt!566859 (addThenRemoveForNewKeyIsSame!326 lt!566861 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566860 () ListLongMap!18683)

(declare-fun lt!566862 () ListLongMap!18683)

(assert (=> b!1254339 (and (= lt!566857 lt!566858) (= lt!566862 lt!566860))))

(declare-fun +!4157 (ListLongMap!18683 tuple2!20798) ListLongMap!18683)

(assert (=> b!1254339 (= lt!566858 (+!4157 lt!566861 (tuple2!20799 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47859)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47859)

(declare-datatypes ((array!81377 0))(
  ( (array!81378 (arr!39245 (Array (_ BitVec 32) (_ BitVec 64))) (size!39782 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81377)

(declare-datatypes ((ValueCell!15172 0))(
  ( (ValueCellFull!15172 (v!18697 V!47859)) (EmptyCell!15172) )
))
(declare-datatypes ((array!81379 0))(
  ( (array!81380 (arr!39246 (Array (_ BitVec 32) ValueCell!15172)) (size!39783 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81379)

(declare-fun getCurrentListMap!4544 (array!81377 array!81379 (_ BitVec 32) (_ BitVec 32) V!47859 V!47859 (_ BitVec 32) Int) ListLongMap!18683)

(assert (=> b!1254339 (= lt!566862 (getCurrentListMap!4544 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254339 (= lt!566857 (getCurrentListMap!4544 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254340 () Bool)

(declare-fun res!836438 () Bool)

(declare-fun e!712783 () Bool)

(assert (=> b!1254340 (=> (not res!836438) (not e!712783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81377 (_ BitVec 32)) Bool)

(assert (=> b!1254340 (= res!836438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254341 () Bool)

(declare-fun e!712778 () Bool)

(declare-fun e!712779 () Bool)

(declare-fun mapRes!49585 () Bool)

(assert (=> b!1254341 (= e!712778 (and e!712779 mapRes!49585))))

(declare-fun condMapEmpty!49585 () Bool)

(declare-fun mapDefault!49585 () ValueCell!15172)

