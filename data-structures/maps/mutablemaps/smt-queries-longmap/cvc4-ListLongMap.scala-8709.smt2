; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105744 () Bool)

(assert start!105744)

(declare-fun b_free!27293 () Bool)

(declare-fun b_next!27293 () Bool)

(assert (=> start!105744 (= b_free!27293 (not b_next!27293))))

(declare-fun tp!95405 () Bool)

(declare-fun b_and!45187 () Bool)

(assert (=> start!105744 (= tp!95405 b_and!45187)))

(declare-fun b!1259078 () Bool)

(declare-datatypes ((V!48291 0))(
  ( (V!48292 (val!16160 Int)) )
))
(declare-datatypes ((tuple2!21044 0))(
  ( (tuple2!21045 (_1!10532 (_ BitVec 64)) (_2!10532 V!48291)) )
))
(declare-datatypes ((List!28273 0))(
  ( (Nil!28270) (Cons!28269 (h!29478 tuple2!21044) (t!41775 List!28273)) )
))
(declare-datatypes ((ListLongMap!18929 0))(
  ( (ListLongMap!18930 (toList!9480 List!28273)) )
))
(declare-fun lt!569717 () ListLongMap!18929)

(declare-fun lt!569718 () tuple2!21044)

(declare-fun lt!569722 () ListLongMap!18929)

(declare-fun e!716256 () Bool)

(declare-fun +!4179 (ListLongMap!18929 tuple2!21044) ListLongMap!18929)

(assert (=> b!1259078 (= e!716256 (= lt!569717 (+!4179 lt!569722 lt!569718)))))

(declare-fun mapIsEmpty!50089 () Bool)

(declare-fun mapRes!50089 () Bool)

(assert (=> mapIsEmpty!50089 mapRes!50089))

(declare-fun b!1259079 () Bool)

(declare-fun e!716255 () Bool)

(assert (=> b!1259079 (= e!716255 true)))

(declare-fun lt!569720 () ListLongMap!18929)

(declare-fun lt!569716 () ListLongMap!18929)

(declare-fun -!2114 (ListLongMap!18929 (_ BitVec 64)) ListLongMap!18929)

(assert (=> b!1259079 (= lt!569720 (-!2114 lt!569716 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569719 () ListLongMap!18929)

(declare-fun lt!569715 () ListLongMap!18929)

(assert (=> b!1259079 (= (-!2114 lt!569719 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569715)))

(declare-datatypes ((Unit!41929 0))(
  ( (Unit!41930) )
))
(declare-fun lt!569721 () Unit!41929)

(declare-fun minValueBefore!43 () V!48291)

(declare-fun addThenRemoveForNewKeyIsSame!339 (ListLongMap!18929 (_ BitVec 64) V!48291) Unit!41929)

(assert (=> b!1259079 (= lt!569721 (addThenRemoveForNewKeyIsSame!339 lt!569715 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259079 e!716256))

(declare-fun res!839230 () Bool)

(assert (=> b!1259079 (=> (not res!839230) (not e!716256))))

(assert (=> b!1259079 (= res!839230 (= lt!569716 lt!569719))))

(assert (=> b!1259079 (= lt!569719 (+!4179 lt!569715 (tuple2!21045 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569713 () ListLongMap!18929)

(assert (=> b!1259079 (= lt!569715 (+!4179 lt!569713 lt!569718))))

(declare-fun zeroValue!871 () V!48291)

(assert (=> b!1259079 (= lt!569718 (tuple2!21045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48291)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82003 0))(
  ( (array!82004 (arr!39552 (Array (_ BitVec 32) (_ BitVec 64))) (size!40089 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82003)

(declare-datatypes ((ValueCell!15334 0))(
  ( (ValueCellFull!15334 (v!18862 V!48291)) (EmptyCell!15334) )
))
(declare-datatypes ((array!82005 0))(
  ( (array!82006 (arr!39553 (Array (_ BitVec 32) ValueCell!15334)) (size!40090 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82005)

(declare-fun getCurrentListMap!4618 (array!82003 array!82005 (_ BitVec 32) (_ BitVec 32) V!48291 V!48291 (_ BitVec 32) Int) ListLongMap!18929)

(assert (=> b!1259079 (= lt!569717 (getCurrentListMap!4618 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259079 (= lt!569716 (getCurrentListMap!4618 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839227 () Bool)

(declare-fun e!716253 () Bool)

(assert (=> start!105744 (=> (not res!839227) (not e!716253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105744 (= res!839227 (validMask!0 mask!1466))))

(assert (=> start!105744 e!716253))

(assert (=> start!105744 true))

(assert (=> start!105744 tp!95405))

(declare-fun tp_is_empty!32195 () Bool)

(assert (=> start!105744 tp_is_empty!32195))

(declare-fun array_inv!30069 (array!82003) Bool)

(assert (=> start!105744 (array_inv!30069 _keys!1118)))

(declare-fun e!716254 () Bool)

(declare-fun array_inv!30070 (array!82005) Bool)

(assert (=> start!105744 (and (array_inv!30070 _values!914) e!716254)))

(declare-fun b!1259080 () Bool)

(declare-fun res!839228 () Bool)

(assert (=> b!1259080 (=> (not res!839228) (not e!716253))))

(assert (=> b!1259080 (= res!839228 (and (= (size!40090 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40089 _keys!1118) (size!40090 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259081 () Bool)

(declare-fun e!716257 () Bool)

(assert (=> b!1259081 (= e!716257 tp_is_empty!32195)))

(declare-fun b!1259082 () Bool)

(declare-fun e!716252 () Bool)

(assert (=> b!1259082 (= e!716252 tp_is_empty!32195)))

(declare-fun b!1259083 () Bool)

(assert (=> b!1259083 (= e!716253 (not e!716255))))

(declare-fun res!839232 () Bool)

(assert (=> b!1259083 (=> res!839232 e!716255)))

(assert (=> b!1259083 (= res!839232 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259083 (= lt!569713 lt!569722)))

(declare-fun lt!569714 () Unit!41929)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1146 (array!82003 array!82005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48291 V!48291 V!48291 V!48291 (_ BitVec 32) Int) Unit!41929)

(assert (=> b!1259083 (= lt!569714 (lemmaNoChangeToArrayThenSameMapNoExtras!1146 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5828 (array!82003 array!82005 (_ BitVec 32) (_ BitVec 32) V!48291 V!48291 (_ BitVec 32) Int) ListLongMap!18929)

(assert (=> b!1259083 (= lt!569722 (getCurrentListMapNoExtraKeys!5828 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259083 (= lt!569713 (getCurrentListMapNoExtraKeys!5828 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259084 () Bool)

(declare-fun res!839229 () Bool)

(assert (=> b!1259084 (=> (not res!839229) (not e!716253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82003 (_ BitVec 32)) Bool)

(assert (=> b!1259084 (= res!839229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259085 () Bool)

(assert (=> b!1259085 (= e!716254 (and e!716252 mapRes!50089))))

(declare-fun condMapEmpty!50089 () Bool)

(declare-fun mapDefault!50089 () ValueCell!15334)

