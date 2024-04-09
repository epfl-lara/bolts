; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105300 () Bool)

(assert start!105300)

(declare-fun b_free!26959 () Bool)

(declare-fun b_next!26959 () Bool)

(assert (=> start!105300 (= b_free!26959 (not b_next!26959))))

(declare-fun tp!94385 () Bool)

(declare-fun b_and!44795 () Bool)

(assert (=> start!105300 (= tp!94385 b_and!44795)))

(declare-fun b!1254219 () Bool)

(declare-fun e!712688 () Bool)

(assert (=> b!1254219 (= e!712688 true)))

(declare-datatypes ((V!47847 0))(
  ( (V!47848 (val!15993 Int)) )
))
(declare-datatypes ((tuple2!20788 0))(
  ( (tuple2!20789 (_1!10404 (_ BitVec 64)) (_2!10404 V!47847)) )
))
(declare-datatypes ((List!28033 0))(
  ( (Nil!28030) (Cons!28029 (h!29238 tuple2!20788) (t!41523 List!28033)) )
))
(declare-datatypes ((ListLongMap!18673 0))(
  ( (ListLongMap!18674 (toList!9352 List!28033)) )
))
(declare-fun lt!566737 () ListLongMap!18673)

(declare-fun lt!566744 () ListLongMap!18673)

(declare-fun -!2061 (ListLongMap!18673 (_ BitVec 64)) ListLongMap!18673)

(assert (=> b!1254219 (= lt!566737 (-!2061 lt!566744 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566742 () ListLongMap!18673)

(declare-fun lt!566740 () ListLongMap!18673)

(assert (=> b!1254219 (= (-!2061 lt!566742 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566740)))

(declare-datatypes ((Unit!41676 0))(
  ( (Unit!41677) )
))
(declare-fun lt!566743 () Unit!41676)

(declare-fun minValueBefore!43 () V!47847)

(declare-fun addThenRemoveForNewKeyIsSame!321 (ListLongMap!18673 (_ BitVec 64) V!47847) Unit!41676)

(assert (=> b!1254219 (= lt!566743 (addThenRemoveForNewKeyIsSame!321 lt!566740 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566738 () ListLongMap!18673)

(declare-fun lt!566741 () ListLongMap!18673)

(assert (=> b!1254219 (and (= lt!566744 lt!566742) (= lt!566741 lt!566738))))

(declare-fun +!4152 (ListLongMap!18673 tuple2!20788) ListLongMap!18673)

(assert (=> b!1254219 (= lt!566742 (+!4152 lt!566740 (tuple2!20789 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47847)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47847)

(declare-datatypes ((array!81357 0))(
  ( (array!81358 (arr!39235 (Array (_ BitVec 32) (_ BitVec 64))) (size!39772 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81357)

(declare-datatypes ((ValueCell!15167 0))(
  ( (ValueCellFull!15167 (v!18692 V!47847)) (EmptyCell!15167) )
))
(declare-datatypes ((array!81359 0))(
  ( (array!81360 (arr!39236 (Array (_ BitVec 32) ValueCell!15167)) (size!39773 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81359)

(declare-fun getCurrentListMap!4539 (array!81357 array!81359 (_ BitVec 32) (_ BitVec 32) V!47847 V!47847 (_ BitVec 32) Int) ListLongMap!18673)

(assert (=> b!1254219 (= lt!566741 (getCurrentListMap!4539 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254219 (= lt!566744 (getCurrentListMap!4539 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254220 () Bool)

(declare-fun e!712689 () Bool)

(declare-fun e!712691 () Bool)

(declare-fun mapRes!49570 () Bool)

(assert (=> b!1254220 (= e!712689 (and e!712691 mapRes!49570))))

(declare-fun condMapEmpty!49570 () Bool)

(declare-fun mapDefault!49570 () ValueCell!15167)

