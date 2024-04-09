; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105816 () Bool)

(assert start!105816)

(declare-fun b_free!27343 () Bool)

(declare-fun b_next!27343 () Bool)

(assert (=> start!105816 (= b_free!27343 (not b_next!27343))))

(declare-fun tp!95558 () Bool)

(declare-fun b_and!45249 () Bool)

(assert (=> start!105816 (= tp!95558 b_and!45249)))

(declare-fun res!839766 () Bool)

(declare-fun e!716900 () Bool)

(assert (=> start!105816 (=> (not res!839766) (not e!716900))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105816 (= res!839766 (validMask!0 mask!1466))))

(assert (=> start!105816 e!716900))

(assert (=> start!105816 true))

(assert (=> start!105816 tp!95558))

(declare-fun tp_is_empty!32245 () Bool)

(assert (=> start!105816 tp_is_empty!32245))

(declare-datatypes ((array!82101 0))(
  ( (array!82102 (arr!39600 (Array (_ BitVec 32) (_ BitVec 64))) (size!40137 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82101)

(declare-fun array_inv!30101 (array!82101) Bool)

(assert (=> start!105816 (array_inv!30101 _keys!1118)))

(declare-datatypes ((V!48359 0))(
  ( (V!48360 (val!16185 Int)) )
))
(declare-datatypes ((ValueCell!15359 0))(
  ( (ValueCellFull!15359 (v!18888 V!48359)) (EmptyCell!15359) )
))
(declare-datatypes ((array!82103 0))(
  ( (array!82104 (arr!39601 (Array (_ BitVec 32) ValueCell!15359)) (size!40138 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82103)

(declare-fun e!716902 () Bool)

(declare-fun array_inv!30102 (array!82103) Bool)

(assert (=> start!105816 (and (array_inv!30102 _values!914) e!716902)))

(declare-fun b!1259941 () Bool)

(declare-fun res!839767 () Bool)

(assert (=> b!1259941 (=> (not res!839767) (not e!716900))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1259941 (= res!839767 (and (= (size!40138 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40137 _keys!1118) (size!40138 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259942 () Bool)

(declare-fun res!839765 () Bool)

(assert (=> b!1259942 (=> (not res!839765) (not e!716900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82101 (_ BitVec 32)) Bool)

(assert (=> b!1259942 (= res!839765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259943 () Bool)

(declare-fun e!716898 () Bool)

(assert (=> b!1259943 (= e!716898 true)))

(declare-datatypes ((tuple2!21088 0))(
  ( (tuple2!21089 (_1!10554 (_ BitVec 64)) (_2!10554 V!48359)) )
))
(declare-datatypes ((List!28312 0))(
  ( (Nil!28309) (Cons!28308 (h!29517 tuple2!21088) (t!41816 List!28312)) )
))
(declare-datatypes ((ListLongMap!18973 0))(
  ( (ListLongMap!18974 (toList!9502 List!28312)) )
))
(declare-fun lt!570616 () ListLongMap!18973)

(declare-fun lt!570617 () ListLongMap!18973)

(declare-fun -!2131 (ListLongMap!18973 (_ BitVec 64)) ListLongMap!18973)

(assert (=> b!1259943 (= lt!570616 (-!2131 lt!570617 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570613 () ListLongMap!18973)

(declare-fun lt!570611 () ListLongMap!18973)

(assert (=> b!1259943 (= (-!2131 lt!570613 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570611)))

(declare-datatypes ((Unit!41971 0))(
  ( (Unit!41972) )
))
(declare-fun lt!570609 () Unit!41971)

(declare-fun minValueBefore!43 () V!48359)

(declare-fun addThenRemoveForNewKeyIsSame!356 (ListLongMap!18973 (_ BitVec 64) V!48359) Unit!41971)

(assert (=> b!1259943 (= lt!570609 (addThenRemoveForNewKeyIsSame!356 lt!570611 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716903 () Bool)

(assert (=> b!1259943 e!716903))

(declare-fun res!839763 () Bool)

(assert (=> b!1259943 (=> (not res!839763) (not e!716903))))

(assert (=> b!1259943 (= res!839763 (= lt!570617 lt!570613))))

(declare-fun +!4199 (ListLongMap!18973 tuple2!21088) ListLongMap!18973)

(assert (=> b!1259943 (= lt!570613 (+!4199 lt!570611 (tuple2!21089 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570614 () ListLongMap!18973)

(declare-fun lt!570610 () tuple2!21088)

(assert (=> b!1259943 (= lt!570611 (+!4199 lt!570614 lt!570610))))

(declare-fun zeroValue!871 () V!48359)

(assert (=> b!1259943 (= lt!570610 (tuple2!21089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48359)

(declare-fun lt!570612 () ListLongMap!18973)

(declare-fun getCurrentListMap!4635 (array!82101 array!82103 (_ BitVec 32) (_ BitVec 32) V!48359 V!48359 (_ BitVec 32) Int) ListLongMap!18973)

(assert (=> b!1259943 (= lt!570612 (getCurrentListMap!4635 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259943 (= lt!570617 (getCurrentListMap!4635 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50167 () Bool)

(declare-fun mapRes!50167 () Bool)

(assert (=> mapIsEmpty!50167 mapRes!50167))

(declare-fun b!1259944 () Bool)

(declare-fun e!716899 () Bool)

(assert (=> b!1259944 (= e!716899 tp_is_empty!32245)))

(declare-fun b!1259945 () Bool)

(declare-fun lt!570615 () ListLongMap!18973)

(assert (=> b!1259945 (= e!716903 (= lt!570612 (+!4199 lt!570615 lt!570610)))))

(declare-fun b!1259946 () Bool)

(declare-fun res!839764 () Bool)

(assert (=> b!1259946 (=> (not res!839764) (not e!716900))))

(declare-datatypes ((List!28313 0))(
  ( (Nil!28310) (Cons!28309 (h!29518 (_ BitVec 64)) (t!41817 List!28313)) )
))
(declare-fun arrayNoDuplicates!0 (array!82101 (_ BitVec 32) List!28313) Bool)

(assert (=> b!1259946 (= res!839764 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28310))))

(declare-fun b!1259947 () Bool)

(assert (=> b!1259947 (= e!716902 (and e!716899 mapRes!50167))))

(declare-fun condMapEmpty!50167 () Bool)

(declare-fun mapDefault!50167 () ValueCell!15359)

