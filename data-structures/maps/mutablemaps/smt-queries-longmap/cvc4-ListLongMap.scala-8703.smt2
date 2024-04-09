; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105692 () Bool)

(assert start!105692)

(declare-fun b_free!27257 () Bool)

(declare-fun b_next!27257 () Bool)

(assert (=> start!105692 (= b_free!27257 (not b_next!27257))))

(declare-fun tp!95295 () Bool)

(declare-fun b_and!45141 () Bool)

(assert (=> start!105692 (= tp!95295 b_and!45141)))

(declare-fun b!1258463 () Bool)

(declare-fun res!838864 () Bool)

(declare-fun e!715803 () Bool)

(assert (=> b!1258463 (=> (not res!838864) (not e!715803))))

(declare-datatypes ((array!81933 0))(
  ( (array!81934 (arr!39518 (Array (_ BitVec 32) (_ BitVec 64))) (size!40055 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81933)

(declare-datatypes ((List!28246 0))(
  ( (Nil!28243) (Cons!28242 (h!29451 (_ BitVec 64)) (t!41746 List!28246)) )
))
(declare-fun arrayNoDuplicates!0 (array!81933 (_ BitVec 32) List!28246) Bool)

(assert (=> b!1258463 (= res!838864 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28243))))

(declare-fun b!1258464 () Bool)

(declare-fun e!715799 () Bool)

(declare-fun tp_is_empty!32159 () Bool)

(assert (=> b!1258464 (= e!715799 tp_is_empty!32159)))

(declare-fun b!1258465 () Bool)

(declare-fun e!715804 () Bool)

(assert (=> b!1258465 (= e!715804 tp_is_empty!32159)))

(declare-fun b!1258466 () Bool)

(declare-fun e!715801 () Bool)

(assert (=> b!1258466 (= e!715803 (not e!715801))))

(declare-fun res!838865 () Bool)

(assert (=> b!1258466 (=> res!838865 e!715801)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258466 (= res!838865 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48243 0))(
  ( (V!48244 (val!16142 Int)) )
))
(declare-datatypes ((tuple2!21014 0))(
  ( (tuple2!21015 (_1!10517 (_ BitVec 64)) (_2!10517 V!48243)) )
))
(declare-datatypes ((List!28247 0))(
  ( (Nil!28244) (Cons!28243 (h!29452 tuple2!21014) (t!41747 List!28247)) )
))
(declare-datatypes ((ListLongMap!18899 0))(
  ( (ListLongMap!18900 (toList!9465 List!28247)) )
))
(declare-fun lt!569202 () ListLongMap!18899)

(declare-fun lt!569201 () ListLongMap!18899)

(assert (=> b!1258466 (= lt!569202 lt!569201)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48243)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48243)

(declare-fun minValueBefore!43 () V!48243)

(declare-datatypes ((Unit!41900 0))(
  ( (Unit!41901) )
))
(declare-fun lt!569200 () Unit!41900)

(declare-datatypes ((ValueCell!15316 0))(
  ( (ValueCellFull!15316 (v!18844 V!48243)) (EmptyCell!15316) )
))
(declare-datatypes ((array!81935 0))(
  ( (array!81936 (arr!39519 (Array (_ BitVec 32) ValueCell!15316)) (size!40056 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81935)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1133 (array!81933 array!81935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48243 V!48243 V!48243 V!48243 (_ BitVec 32) Int) Unit!41900)

(assert (=> b!1258466 (= lt!569200 (lemmaNoChangeToArrayThenSameMapNoExtras!1133 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5815 (array!81933 array!81935 (_ BitVec 32) (_ BitVec 32) V!48243 V!48243 (_ BitVec 32) Int) ListLongMap!18899)

(assert (=> b!1258466 (= lt!569201 (getCurrentListMapNoExtraKeys!5815 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258466 (= lt!569202 (getCurrentListMapNoExtraKeys!5815 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50032 () Bool)

(declare-fun mapRes!50032 () Bool)

(assert (=> mapIsEmpty!50032 mapRes!50032))

(declare-fun res!838868 () Bool)

(assert (=> start!105692 (=> (not res!838868) (not e!715803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105692 (= res!838868 (validMask!0 mask!1466))))

(assert (=> start!105692 e!715803))

(assert (=> start!105692 true))

(assert (=> start!105692 tp!95295))

(assert (=> start!105692 tp_is_empty!32159))

(declare-fun array_inv!30047 (array!81933) Bool)

(assert (=> start!105692 (array_inv!30047 _keys!1118)))

(declare-fun e!715800 () Bool)

(declare-fun array_inv!30048 (array!81935) Bool)

(assert (=> start!105692 (and (array_inv!30048 _values!914) e!715800)))

(declare-fun b!1258467 () Bool)

(assert (=> b!1258467 (= e!715800 (and e!715804 mapRes!50032))))

(declare-fun condMapEmpty!50032 () Bool)

(declare-fun mapDefault!50032 () ValueCell!15316)

