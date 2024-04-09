; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105560 () Bool)

(assert start!105560)

(declare-fun b_free!27161 () Bool)

(declare-fun b_next!27161 () Bool)

(assert (=> start!105560 (= b_free!27161 (not b_next!27161))))

(declare-fun tp!95000 () Bool)

(declare-fun b_and!45027 () Bool)

(assert (=> start!105560 (= tp!95000 b_and!45027)))

(declare-fun b!1257149 () Bool)

(declare-fun e!714860 () Bool)

(declare-fun tp_is_empty!32063 () Bool)

(assert (=> b!1257149 (= e!714860 tp_is_empty!32063)))

(declare-fun b!1257150 () Bool)

(declare-fun e!714866 () Bool)

(declare-fun e!714865 () Bool)

(assert (=> b!1257150 (= e!714866 e!714865)))

(declare-fun res!838133 () Bool)

(assert (=> b!1257150 (=> res!838133 e!714865)))

(declare-datatypes ((V!48115 0))(
  ( (V!48116 (val!16094 Int)) )
))
(declare-datatypes ((tuple2!20952 0))(
  ( (tuple2!20953 (_1!10486 (_ BitVec 64)) (_2!10486 V!48115)) )
))
(declare-datatypes ((List!28184 0))(
  ( (Nil!28181) (Cons!28180 (h!29389 tuple2!20952) (t!41680 List!28184)) )
))
(declare-datatypes ((ListLongMap!18837 0))(
  ( (ListLongMap!18838 (toList!9434 List!28184)) )
))
(declare-fun lt!568543 () ListLongMap!18837)

(declare-fun contains!7587 (ListLongMap!18837 (_ BitVec 64)) Bool)

(assert (=> b!1257150 (= res!838133 (contains!7587 lt!568543 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48115)

(declare-datatypes ((array!81759 0))(
  ( (array!81760 (arr!39433 (Array (_ BitVec 32) (_ BitVec 64))) (size!39970 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81759)

(declare-datatypes ((ValueCell!15268 0))(
  ( (ValueCellFull!15268 (v!18795 V!48115)) (EmptyCell!15268) )
))
(declare-datatypes ((array!81761 0))(
  ( (array!81762 (arr!39434 (Array (_ BitVec 32) ValueCell!15268)) (size!39971 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81761)

(declare-fun minValueBefore!43 () V!48115)

(declare-fun getCurrentListMap!4591 (array!81759 array!81761 (_ BitVec 32) (_ BitVec 32) V!48115 V!48115 (_ BitVec 32) Int) ListLongMap!18837)

(assert (=> b!1257150 (= lt!568543 (getCurrentListMap!4591 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257151 () Bool)

(declare-fun res!838137 () Bool)

(declare-fun e!714861 () Bool)

(assert (=> b!1257151 (=> (not res!838137) (not e!714861))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257151 (= res!838137 (and (= (size!39971 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39970 _keys!1118) (size!39971 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257152 () Bool)

(assert (=> b!1257152 (= e!714861 (not e!714866))))

(declare-fun res!838136 () Bool)

(assert (=> b!1257152 (=> res!838136 e!714866)))

(assert (=> b!1257152 (= res!838136 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568540 () ListLongMap!18837)

(declare-fun lt!568542 () ListLongMap!18837)

(assert (=> b!1257152 (= lt!568540 lt!568542)))

(declare-fun minValueAfter!43 () V!48115)

(declare-datatypes ((Unit!41840 0))(
  ( (Unit!41841) )
))
(declare-fun lt!568539 () Unit!41840)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1104 (array!81759 array!81761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48115 V!48115 V!48115 V!48115 (_ BitVec 32) Int) Unit!41840)

(assert (=> b!1257152 (= lt!568539 (lemmaNoChangeToArrayThenSameMapNoExtras!1104 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5786 (array!81759 array!81761 (_ BitVec 32) (_ BitVec 32) V!48115 V!48115 (_ BitVec 32) Int) ListLongMap!18837)

(assert (=> b!1257152 (= lt!568542 (getCurrentListMapNoExtraKeys!5786 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257152 (= lt!568540 (getCurrentListMapNoExtraKeys!5786 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49882 () Bool)

(declare-fun mapRes!49882 () Bool)

(assert (=> mapIsEmpty!49882 mapRes!49882))

(declare-fun b!1257153 () Bool)

(declare-fun e!714863 () Bool)

(declare-fun e!714864 () Bool)

(assert (=> b!1257153 (= e!714863 (and e!714864 mapRes!49882))))

(declare-fun condMapEmpty!49882 () Bool)

(declare-fun mapDefault!49882 () ValueCell!15268)

