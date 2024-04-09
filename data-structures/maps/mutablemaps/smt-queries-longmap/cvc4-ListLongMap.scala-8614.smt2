; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104990 () Bool)

(assert start!104990)

(declare-fun b_free!26723 () Bool)

(declare-fun b_next!26723 () Bool)

(assert (=> start!104990 (= b_free!26723 (not b_next!26723))))

(declare-fun tp!93666 () Bool)

(declare-fun b_and!44519 () Bool)

(assert (=> start!104990 (= tp!93666 b_and!44519)))

(declare-fun b!1250812 () Bool)

(declare-fun e!710197 () Bool)

(declare-fun e!710196 () Bool)

(assert (=> b!1250812 (= e!710197 (not e!710196))))

(declare-fun res!834365 () Bool)

(assert (=> b!1250812 (=> res!834365 e!710196)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250812 (= res!834365 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47531 0))(
  ( (V!47532 (val!15875 Int)) )
))
(declare-datatypes ((tuple2!20604 0))(
  ( (tuple2!20605 (_1!10312 (_ BitVec 64)) (_2!10312 V!47531)) )
))
(declare-datatypes ((List!27860 0))(
  ( (Nil!27857) (Cons!27856 (h!29065 tuple2!20604) (t!41342 List!27860)) )
))
(declare-datatypes ((ListLongMap!18489 0))(
  ( (ListLongMap!18490 (toList!9260 List!27860)) )
))
(declare-fun lt!564463 () ListLongMap!18489)

(declare-fun lt!564464 () ListLongMap!18489)

(assert (=> b!1250812 (= lt!564463 lt!564464)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47531)

(declare-datatypes ((array!80897 0))(
  ( (array!80898 (arr!39009 (Array (_ BitVec 32) (_ BitVec 64))) (size!39546 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80897)

(declare-datatypes ((ValueCell!15049 0))(
  ( (ValueCellFull!15049 (v!18572 V!47531)) (EmptyCell!15049) )
))
(declare-datatypes ((array!80899 0))(
  ( (array!80900 (arr!39010 (Array (_ BitVec 32) ValueCell!15049)) (size!39547 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80899)

(declare-datatypes ((Unit!41499 0))(
  ( (Unit!41500) )
))
(declare-fun lt!564467 () Unit!41499)

(declare-fun minValueAfter!43 () V!47531)

(declare-fun minValueBefore!43 () V!47531)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!957 (array!80897 array!80899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47531 V!47531 V!47531 V!47531 (_ BitVec 32) Int) Unit!41499)

(assert (=> b!1250812 (= lt!564467 (lemmaNoChangeToArrayThenSameMapNoExtras!957 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5639 (array!80897 array!80899 (_ BitVec 32) (_ BitVec 32) V!47531 V!47531 (_ BitVec 32) Int) ListLongMap!18489)

(assert (=> b!1250812 (= lt!564464 (getCurrentListMapNoExtraKeys!5639 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250812 (= lt!564463 (getCurrentListMapNoExtraKeys!5639 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250813 () Bool)

(declare-fun res!834361 () Bool)

(assert (=> b!1250813 (=> (not res!834361) (not e!710197))))

(declare-datatypes ((List!27861 0))(
  ( (Nil!27858) (Cons!27857 (h!29066 (_ BitVec 64)) (t!41343 List!27861)) )
))
(declare-fun arrayNoDuplicates!0 (array!80897 (_ BitVec 32) List!27861) Bool)

(assert (=> b!1250813 (= res!834361 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27858))))

(declare-fun b!1250814 () Bool)

(declare-fun e!710198 () Bool)

(declare-fun e!710199 () Bool)

(declare-fun mapRes!49204 () Bool)

(assert (=> b!1250814 (= e!710198 (and e!710199 mapRes!49204))))

(declare-fun condMapEmpty!49204 () Bool)

(declare-fun mapDefault!49204 () ValueCell!15049)

