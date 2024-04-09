; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105612 () Bool)

(assert start!105612)

(declare-fun b_free!27191 () Bool)

(declare-fun b_next!27191 () Bool)

(assert (=> start!105612 (= b_free!27191 (not b_next!27191))))

(declare-fun tp!95093 () Bool)

(declare-fun b_and!45067 () Bool)

(assert (=> start!105612 (= tp!95093 b_and!45067)))

(declare-fun b!1257623 () Bool)

(declare-fun e!715191 () Bool)

(declare-fun tp_is_empty!32093 () Bool)

(assert (=> b!1257623 (= e!715191 tp_is_empty!32093)))

(declare-fun res!838377 () Bool)

(declare-fun e!715187 () Bool)

(assert (=> start!105612 (=> (not res!838377) (not e!715187))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105612 (= res!838377 (validMask!0 mask!1466))))

(assert (=> start!105612 e!715187))

(assert (=> start!105612 true))

(assert (=> start!105612 tp!95093))

(assert (=> start!105612 tp_is_empty!32093))

(declare-datatypes ((array!81815 0))(
  ( (array!81816 (arr!39460 (Array (_ BitVec 32) (_ BitVec 64))) (size!39997 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81815)

(declare-fun array_inv!30007 (array!81815) Bool)

(assert (=> start!105612 (array_inv!30007 _keys!1118)))

(declare-datatypes ((V!48155 0))(
  ( (V!48156 (val!16109 Int)) )
))
(declare-datatypes ((ValueCell!15283 0))(
  ( (ValueCellFull!15283 (v!18811 V!48155)) (EmptyCell!15283) )
))
(declare-datatypes ((array!81817 0))(
  ( (array!81818 (arr!39461 (Array (_ BitVec 32) ValueCell!15283)) (size!39998 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81817)

(declare-fun e!715190 () Bool)

(declare-fun array_inv!30008 (array!81817) Bool)

(assert (=> start!105612 (and (array_inv!30008 _values!914) e!715190)))

(declare-fun b!1257624 () Bool)

(assert (=> b!1257624 (= e!715187 (not true))))

(declare-datatypes ((tuple2!20972 0))(
  ( (tuple2!20973 (_1!10496 (_ BitVec 64)) (_2!10496 V!48155)) )
))
(declare-datatypes ((List!28203 0))(
  ( (Nil!28200) (Cons!28199 (h!29408 tuple2!20972) (t!41701 List!28203)) )
))
(declare-datatypes ((ListLongMap!18857 0))(
  ( (ListLongMap!18858 (toList!9444 List!28203)) )
))
(declare-fun lt!568801 () ListLongMap!18857)

(declare-fun lt!568802 () ListLongMap!18857)

(assert (=> b!1257624 (= lt!568801 lt!568802)))

(declare-fun minValueAfter!43 () V!48155)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48155)

(declare-fun minValueBefore!43 () V!48155)

(declare-datatypes ((Unit!41862 0))(
  ( (Unit!41863) )
))
(declare-fun lt!568800 () Unit!41862)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1114 (array!81815 array!81817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48155 V!48155 V!48155 V!48155 (_ BitVec 32) Int) Unit!41862)

(assert (=> b!1257624 (= lt!568800 (lemmaNoChangeToArrayThenSameMapNoExtras!1114 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5796 (array!81815 array!81817 (_ BitVec 32) (_ BitVec 32) V!48155 V!48155 (_ BitVec 32) Int) ListLongMap!18857)

(assert (=> b!1257624 (= lt!568802 (getCurrentListMapNoExtraKeys!5796 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257624 (= lt!568801 (getCurrentListMapNoExtraKeys!5796 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257625 () Bool)

(declare-fun res!838375 () Bool)

(assert (=> b!1257625 (=> (not res!838375) (not e!715187))))

(declare-datatypes ((List!28204 0))(
  ( (Nil!28201) (Cons!28200 (h!29409 (_ BitVec 64)) (t!41702 List!28204)) )
))
(declare-fun arrayNoDuplicates!0 (array!81815 (_ BitVec 32) List!28204) Bool)

(assert (=> b!1257625 (= res!838375 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28201))))

(declare-fun b!1257626 () Bool)

(declare-fun res!838378 () Bool)

(assert (=> b!1257626 (=> (not res!838378) (not e!715187))))

(assert (=> b!1257626 (= res!838378 (and (= (size!39998 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39997 _keys!1118) (size!39998 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257627 () Bool)

(declare-fun e!715189 () Bool)

(assert (=> b!1257627 (= e!715189 tp_is_empty!32093)))

(declare-fun mapNonEmpty!49930 () Bool)

(declare-fun mapRes!49930 () Bool)

(declare-fun tp!95094 () Bool)

(assert (=> mapNonEmpty!49930 (= mapRes!49930 (and tp!95094 e!715191))))

(declare-fun mapRest!49930 () (Array (_ BitVec 32) ValueCell!15283))

(declare-fun mapValue!49930 () ValueCell!15283)

(declare-fun mapKey!49930 () (_ BitVec 32))

(assert (=> mapNonEmpty!49930 (= (arr!39461 _values!914) (store mapRest!49930 mapKey!49930 mapValue!49930))))

(declare-fun b!1257628 () Bool)

(declare-fun res!838376 () Bool)

(assert (=> b!1257628 (=> (not res!838376) (not e!715187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81815 (_ BitVec 32)) Bool)

(assert (=> b!1257628 (= res!838376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257629 () Bool)

(assert (=> b!1257629 (= e!715190 (and e!715189 mapRes!49930))))

(declare-fun condMapEmpty!49930 () Bool)

(declare-fun mapDefault!49930 () ValueCell!15283)

