; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105450 () Bool)

(assert start!105450)

(declare-fun b_free!27073 () Bool)

(declare-fun b_next!27073 () Bool)

(assert (=> start!105450 (= b_free!27073 (not b_next!27073))))

(declare-fun tp!94734 () Bool)

(declare-fun b_and!44929 () Bool)

(assert (=> start!105450 (= tp!94734 b_and!44929)))

(declare-fun b!1255804 () Bool)

(declare-fun e!713837 () Bool)

(declare-fun e!713840 () Bool)

(assert (=> b!1255804 (= e!713837 e!713840)))

(declare-fun res!837282 () Bool)

(assert (=> b!1255804 (=> res!837282 e!713840)))

(declare-datatypes ((V!47999 0))(
  ( (V!48000 (val!16050 Int)) )
))
(declare-datatypes ((tuple2!20878 0))(
  ( (tuple2!20879 (_1!10449 (_ BitVec 64)) (_2!10449 V!47999)) )
))
(declare-datatypes ((List!28114 0))(
  ( (Nil!28111) (Cons!28110 (h!29319 tuple2!20878) (t!41608 List!28114)) )
))
(declare-datatypes ((ListLongMap!18763 0))(
  ( (ListLongMap!18764 (toList!9397 List!28114)) )
))
(declare-fun lt!567757 () ListLongMap!18763)

(declare-fun contains!7555 (ListLongMap!18763 (_ BitVec 64)) Bool)

(assert (=> b!1255804 (= res!837282 (contains!7555 lt!567757 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47999)

(declare-datatypes ((array!81583 0))(
  ( (array!81584 (arr!39346 (Array (_ BitVec 32) (_ BitVec 64))) (size!39883 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81583)

(declare-datatypes ((ValueCell!15224 0))(
  ( (ValueCellFull!15224 (v!18750 V!47999)) (EmptyCell!15224) )
))
(declare-datatypes ((array!81585 0))(
  ( (array!81586 (arr!39347 (Array (_ BitVec 32) ValueCell!15224)) (size!39884 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81585)

(declare-fun minValueBefore!43 () V!47999)

(declare-fun getCurrentListMap!4560 (array!81583 array!81585 (_ BitVec 32) (_ BitVec 32) V!47999 V!47999 (_ BitVec 32) Int) ListLongMap!18763)

(assert (=> b!1255804 (= lt!567757 (getCurrentListMap!4560 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837281 () Bool)

(declare-fun e!713838 () Bool)

(assert (=> start!105450 (=> (not res!837281) (not e!713838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105450 (= res!837281 (validMask!0 mask!1466))))

(assert (=> start!105450 e!713838))

(assert (=> start!105450 true))

(assert (=> start!105450 tp!94734))

(declare-fun tp_is_empty!31975 () Bool)

(assert (=> start!105450 tp_is_empty!31975))

(declare-fun array_inv!29925 (array!81583) Bool)

(assert (=> start!105450 (array_inv!29925 _keys!1118)))

(declare-fun e!713841 () Bool)

(declare-fun array_inv!29926 (array!81585) Bool)

(assert (=> start!105450 (and (array_inv!29926 _values!914) e!713841)))

(declare-fun mapIsEmpty!49747 () Bool)

(declare-fun mapRes!49747 () Bool)

(assert (=> mapIsEmpty!49747 mapRes!49747))

(declare-fun b!1255805 () Bool)

(declare-fun e!713839 () Bool)

(assert (=> b!1255805 (= e!713839 tp_is_empty!31975)))

(declare-fun b!1255806 () Bool)

(assert (=> b!1255806 (= e!713840 true)))

(declare-fun -!2079 (ListLongMap!18763 (_ BitVec 64)) ListLongMap!18763)

(assert (=> b!1255806 (= (-!2079 lt!567757 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567757)))

(declare-datatypes ((Unit!41766 0))(
  ( (Unit!41767) )
))
(declare-fun lt!567755 () Unit!41766)

(declare-fun removeNotPresentStillSame!112 (ListLongMap!18763 (_ BitVec 64)) Unit!41766)

(assert (=> b!1255806 (= lt!567755 (removeNotPresentStillSame!112 lt!567757 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255807 () Bool)

(declare-fun res!837284 () Bool)

(assert (=> b!1255807 (=> (not res!837284) (not e!713838))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255807 (= res!837284 (and (= (size!39884 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39883 _keys!1118) (size!39884 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255808 () Bool)

(assert (=> b!1255808 (= e!713841 (and e!713839 mapRes!49747))))

(declare-fun condMapEmpty!49747 () Bool)

(declare-fun mapDefault!49747 () ValueCell!15224)

