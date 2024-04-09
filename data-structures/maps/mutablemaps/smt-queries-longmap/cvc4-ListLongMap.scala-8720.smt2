; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105832 () Bool)

(assert start!105832)

(declare-fun b_free!27359 () Bool)

(declare-fun b_next!27359 () Bool)

(assert (=> start!105832 (= b_free!27359 (not b_next!27359))))

(declare-fun tp!95606 () Bool)

(declare-fun b_and!45265 () Bool)

(assert (=> start!105832 (= tp!95606 b_and!45265)))

(declare-fun b!1260157 () Bool)

(declare-fun res!839910 () Bool)

(declare-fun e!717072 () Bool)

(assert (=> b!1260157 (=> (not res!839910) (not e!717072))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82131 0))(
  ( (array!82132 (arr!39615 (Array (_ BitVec 32) (_ BitVec 64))) (size!40152 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82131)

(declare-datatypes ((V!48379 0))(
  ( (V!48380 (val!16193 Int)) )
))
(declare-datatypes ((ValueCell!15367 0))(
  ( (ValueCellFull!15367 (v!18896 V!48379)) (EmptyCell!15367) )
))
(declare-datatypes ((array!82133 0))(
  ( (array!82134 (arr!39616 (Array (_ BitVec 32) ValueCell!15367)) (size!40153 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82133)

(assert (=> b!1260157 (= res!839910 (and (= (size!40153 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40152 _keys!1118) (size!40153 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260158 () Bool)

(declare-fun e!717068 () Bool)

(assert (=> b!1260158 (= e!717068 true)))

(declare-datatypes ((tuple2!21098 0))(
  ( (tuple2!21099 (_1!10559 (_ BitVec 64)) (_2!10559 V!48379)) )
))
(declare-datatypes ((List!28321 0))(
  ( (Nil!28318) (Cons!28317 (h!29526 tuple2!21098) (t!41825 List!28321)) )
))
(declare-datatypes ((ListLongMap!18983 0))(
  ( (ListLongMap!18984 (toList!9507 List!28321)) )
))
(declare-fun lt!570853 () ListLongMap!18983)

(declare-fun lt!570852 () ListLongMap!18983)

(declare-fun -!2136 (ListLongMap!18983 (_ BitVec 64)) ListLongMap!18983)

(assert (=> b!1260158 (= lt!570853 (-!2136 lt!570852 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570858 () ListLongMap!18983)

(declare-fun lt!570854 () ListLongMap!18983)

(assert (=> b!1260158 (= (-!2136 lt!570858 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570854)))

(declare-datatypes ((Unit!41981 0))(
  ( (Unit!41982) )
))
(declare-fun lt!570857 () Unit!41981)

(declare-fun minValueBefore!43 () V!48379)

(declare-fun addThenRemoveForNewKeyIsSame!361 (ListLongMap!18983 (_ BitVec 64) V!48379) Unit!41981)

(assert (=> b!1260158 (= lt!570857 (addThenRemoveForNewKeyIsSame!361 lt!570854 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!717070 () Bool)

(assert (=> b!1260158 e!717070))

(declare-fun res!839911 () Bool)

(assert (=> b!1260158 (=> (not res!839911) (not e!717070))))

(assert (=> b!1260158 (= res!839911 (= lt!570852 lt!570858))))

(declare-fun +!4204 (ListLongMap!18983 tuple2!21098) ListLongMap!18983)

(assert (=> b!1260158 (= lt!570858 (+!4204 lt!570854 (tuple2!21099 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570855 () ListLongMap!18983)

(declare-fun lt!570849 () tuple2!21098)

(assert (=> b!1260158 (= lt!570854 (+!4204 lt!570855 lt!570849))))

(declare-fun zeroValue!871 () V!48379)

(assert (=> b!1260158 (= lt!570849 (tuple2!21099 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun lt!570851 () ListLongMap!18983)

(declare-fun minValueAfter!43 () V!48379)

(declare-fun getCurrentListMap!4640 (array!82131 array!82133 (_ BitVec 32) (_ BitVec 32) V!48379 V!48379 (_ BitVec 32) Int) ListLongMap!18983)

(assert (=> b!1260158 (= lt!570851 (getCurrentListMap!4640 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260158 (= lt!570852 (getCurrentListMap!4640 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50191 () Bool)

(declare-fun mapRes!50191 () Bool)

(assert (=> mapIsEmpty!50191 mapRes!50191))

(declare-fun b!1260159 () Bool)

(declare-fun e!717069 () Bool)

(declare-fun tp_is_empty!32261 () Bool)

(assert (=> b!1260159 (= e!717069 tp_is_empty!32261)))

(declare-fun b!1260160 () Bool)

(declare-fun res!839912 () Bool)

(assert (=> b!1260160 (=> (not res!839912) (not e!717072))))

(declare-datatypes ((List!28322 0))(
  ( (Nil!28319) (Cons!28318 (h!29527 (_ BitVec 64)) (t!41826 List!28322)) )
))
(declare-fun arrayNoDuplicates!0 (array!82131 (_ BitVec 32) List!28322) Bool)

(assert (=> b!1260160 (= res!839912 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28319))))

(declare-fun b!1260161 () Bool)

(declare-fun res!839909 () Bool)

(assert (=> b!1260161 (=> (not res!839909) (not e!717072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82131 (_ BitVec 32)) Bool)

(assert (=> b!1260161 (= res!839909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!839908 () Bool)

(assert (=> start!105832 (=> (not res!839908) (not e!717072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105832 (= res!839908 (validMask!0 mask!1466))))

(assert (=> start!105832 e!717072))

(assert (=> start!105832 true))

(assert (=> start!105832 tp!95606))

(assert (=> start!105832 tp_is_empty!32261))

(declare-fun array_inv!30111 (array!82131) Bool)

(assert (=> start!105832 (array_inv!30111 _keys!1118)))

(declare-fun e!717071 () Bool)

(declare-fun array_inv!30112 (array!82133) Bool)

(assert (=> start!105832 (and (array_inv!30112 _values!914) e!717071)))

(declare-fun mapNonEmpty!50191 () Bool)

(declare-fun tp!95607 () Bool)

(declare-fun e!717066 () Bool)

(assert (=> mapNonEmpty!50191 (= mapRes!50191 (and tp!95607 e!717066))))

(declare-fun mapRest!50191 () (Array (_ BitVec 32) ValueCell!15367))

(declare-fun mapValue!50191 () ValueCell!15367)

(declare-fun mapKey!50191 () (_ BitVec 32))

(assert (=> mapNonEmpty!50191 (= (arr!39616 _values!914) (store mapRest!50191 mapKey!50191 mapValue!50191))))

(declare-fun lt!570856 () ListLongMap!18983)

(declare-fun b!1260162 () Bool)

(assert (=> b!1260162 (= e!717070 (= lt!570851 (+!4204 lt!570856 lt!570849)))))

(declare-fun b!1260163 () Bool)

(assert (=> b!1260163 (= e!717071 (and e!717069 mapRes!50191))))

(declare-fun condMapEmpty!50191 () Bool)

(declare-fun mapDefault!50191 () ValueCell!15367)

