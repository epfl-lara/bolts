; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105550 () Bool)

(assert start!105550)

(declare-fun b_free!27151 () Bool)

(declare-fun b_next!27151 () Bool)

(assert (=> start!105550 (= b_free!27151 (not b_next!27151))))

(declare-fun tp!94970 () Bool)

(declare-fun b_and!45017 () Bool)

(assert (=> start!105550 (= tp!94970 b_and!45017)))

(declare-fun b!1257014 () Bool)

(declare-fun e!714758 () Bool)

(declare-fun tp_is_empty!32053 () Bool)

(assert (=> b!1257014 (= e!714758 tp_is_empty!32053)))

(declare-fun b!1257015 () Bool)

(declare-fun res!838047 () Bool)

(declare-fun e!714757 () Bool)

(assert (=> b!1257015 (=> (not res!838047) (not e!714757))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81739 0))(
  ( (array!81740 (arr!39423 (Array (_ BitVec 32) (_ BitVec 64))) (size!39960 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81739)

(declare-datatypes ((V!48103 0))(
  ( (V!48104 (val!16089 Int)) )
))
(declare-datatypes ((ValueCell!15263 0))(
  ( (ValueCellFull!15263 (v!18790 V!48103)) (EmptyCell!15263) )
))
(declare-datatypes ((array!81741 0))(
  ( (array!81742 (arr!39424 (Array (_ BitVec 32) ValueCell!15263)) (size!39961 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81741)

(assert (=> b!1257015 (= res!838047 (and (= (size!39961 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39960 _keys!1118) (size!39961 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!838044 () Bool)

(assert (=> start!105550 (=> (not res!838044) (not e!714757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105550 (= res!838044 (validMask!0 mask!1466))))

(assert (=> start!105550 e!714757))

(assert (=> start!105550 true))

(assert (=> start!105550 tp!94970))

(assert (=> start!105550 tp_is_empty!32053))

(declare-fun array_inv!29977 (array!81739) Bool)

(assert (=> start!105550 (array_inv!29977 _keys!1118)))

(declare-fun e!714760 () Bool)

(declare-fun array_inv!29978 (array!81741) Bool)

(assert (=> start!105550 (and (array_inv!29978 _values!914) e!714760)))

(declare-fun b!1257016 () Bool)

(declare-fun res!838045 () Bool)

(assert (=> b!1257016 (=> (not res!838045) (not e!714757))))

(declare-datatypes ((List!28174 0))(
  ( (Nil!28171) (Cons!28170 (h!29379 (_ BitVec 64)) (t!41670 List!28174)) )
))
(declare-fun arrayNoDuplicates!0 (array!81739 (_ BitVec 32) List!28174) Bool)

(assert (=> b!1257016 (= res!838045 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28171))))

(declare-fun b!1257017 () Bool)

(declare-fun e!714759 () Bool)

(assert (=> b!1257017 (= e!714757 (not e!714759))))

(declare-fun res!838043 () Bool)

(assert (=> b!1257017 (=> res!838043 e!714759)))

(assert (=> b!1257017 (= res!838043 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20942 0))(
  ( (tuple2!20943 (_1!10481 (_ BitVec 64)) (_2!10481 V!48103)) )
))
(declare-datatypes ((List!28175 0))(
  ( (Nil!28172) (Cons!28171 (h!29380 tuple2!20942) (t!41671 List!28175)) )
))
(declare-datatypes ((ListLongMap!18827 0))(
  ( (ListLongMap!18828 (toList!9429 List!28175)) )
))
(declare-fun lt!568465 () ListLongMap!18827)

(declare-fun lt!568467 () ListLongMap!18827)

(assert (=> b!1257017 (= lt!568465 lt!568467)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48103)

(declare-datatypes ((Unit!41830 0))(
  ( (Unit!41831) )
))
(declare-fun lt!568466 () Unit!41830)

(declare-fun zeroValue!871 () V!48103)

(declare-fun minValueBefore!43 () V!48103)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1099 (array!81739 array!81741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48103 V!48103 V!48103 V!48103 (_ BitVec 32) Int) Unit!41830)

(assert (=> b!1257017 (= lt!568466 (lemmaNoChangeToArrayThenSameMapNoExtras!1099 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5781 (array!81739 array!81741 (_ BitVec 32) (_ BitVec 32) V!48103 V!48103 (_ BitVec 32) Int) ListLongMap!18827)

(assert (=> b!1257017 (= lt!568467 (getCurrentListMapNoExtraKeys!5781 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257017 (= lt!568465 (getCurrentListMapNoExtraKeys!5781 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257018 () Bool)

(declare-fun e!714756 () Bool)

(assert (=> b!1257018 (= e!714759 e!714756)))

(declare-fun res!838046 () Bool)

(assert (=> b!1257018 (=> res!838046 e!714756)))

(declare-fun lt!568468 () ListLongMap!18827)

(declare-fun contains!7582 (ListLongMap!18827 (_ BitVec 64)) Bool)

(assert (=> b!1257018 (= res!838046 (contains!7582 lt!568468 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4586 (array!81739 array!81741 (_ BitVec 32) (_ BitVec 32) V!48103 V!48103 (_ BitVec 32) Int) ListLongMap!18827)

(assert (=> b!1257018 (= lt!568468 (getCurrentListMap!4586 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49867 () Bool)

(declare-fun mapRes!49867 () Bool)

(assert (=> mapIsEmpty!49867 mapRes!49867))

(declare-fun b!1257019 () Bool)

(assert (=> b!1257019 (= e!714760 (and e!714758 mapRes!49867))))

(declare-fun condMapEmpty!49867 () Bool)

(declare-fun mapDefault!49867 () ValueCell!15263)

