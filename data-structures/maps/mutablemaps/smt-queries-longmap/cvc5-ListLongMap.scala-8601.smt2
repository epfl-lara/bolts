; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104872 () Bool)

(assert start!104872)

(declare-fun b_free!26641 () Bool)

(declare-fun b_next!26641 () Bool)

(assert (=> start!104872 (= b_free!26641 (not b_next!26641))))

(declare-fun tp!93413 () Bool)

(declare-fun b_and!44419 () Bool)

(assert (=> start!104872 (= tp!93413 b_and!44419)))

(declare-fun b!1249522 () Bool)

(declare-fun res!833592 () Bool)

(declare-fun e!709242 () Bool)

(assert (=> b!1249522 (=> (not res!833592) (not e!709242))))

(declare-datatypes ((array!80743 0))(
  ( (array!80744 (arr!38934 (Array (_ BitVec 32) (_ BitVec 64))) (size!39471 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80743)

(declare-datatypes ((List!27803 0))(
  ( (Nil!27800) (Cons!27799 (h!29008 (_ BitVec 64)) (t!41281 List!27803)) )
))
(declare-fun arrayNoDuplicates!0 (array!80743 (_ BitVec 32) List!27803) Bool)

(assert (=> b!1249522 (= res!833592 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27800))))

(declare-fun mapNonEmpty!49075 () Bool)

(declare-fun mapRes!49075 () Bool)

(declare-fun tp!93414 () Bool)

(declare-fun e!709239 () Bool)

(assert (=> mapNonEmpty!49075 (= mapRes!49075 (and tp!93414 e!709239))))

(declare-datatypes ((V!47423 0))(
  ( (V!47424 (val!15834 Int)) )
))
(declare-datatypes ((ValueCell!15008 0))(
  ( (ValueCellFull!15008 (v!18530 V!47423)) (EmptyCell!15008) )
))
(declare-fun mapRest!49075 () (Array (_ BitVec 32) ValueCell!15008))

(declare-fun mapValue!49075 () ValueCell!15008)

(declare-datatypes ((array!80745 0))(
  ( (array!80746 (arr!38935 (Array (_ BitVec 32) ValueCell!15008)) (size!39472 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80745)

(declare-fun mapKey!49075 () (_ BitVec 32))

(assert (=> mapNonEmpty!49075 (= (arr!38935 _values!914) (store mapRest!49075 mapKey!49075 mapValue!49075))))

(declare-fun b!1249523 () Bool)

(assert (=> b!1249523 (= e!709242 (not true))))

(declare-datatypes ((tuple2!20540 0))(
  ( (tuple2!20541 (_1!10280 (_ BitVec 64)) (_2!10280 V!47423)) )
))
(declare-datatypes ((List!27804 0))(
  ( (Nil!27801) (Cons!27800 (h!29009 tuple2!20540) (t!41282 List!27804)) )
))
(declare-datatypes ((ListLongMap!18425 0))(
  ( (ListLongMap!18426 (toList!9228 List!27804)) )
))
(declare-fun lt!563743 () ListLongMap!18425)

(declare-fun lt!563744 () ListLongMap!18425)

(assert (=> b!1249523 (= lt!563743 lt!563744)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41439 0))(
  ( (Unit!41440) )
))
(declare-fun lt!563745 () Unit!41439)

(declare-fun minValueAfter!43 () V!47423)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47423)

(declare-fun minValueBefore!43 () V!47423)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!929 (array!80743 array!80745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47423 V!47423 V!47423 V!47423 (_ BitVec 32) Int) Unit!41439)

(assert (=> b!1249523 (= lt!563745 (lemmaNoChangeToArrayThenSameMapNoExtras!929 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5611 (array!80743 array!80745 (_ BitVec 32) (_ BitVec 32) V!47423 V!47423 (_ BitVec 32) Int) ListLongMap!18425)

(assert (=> b!1249523 (= lt!563744 (getCurrentListMapNoExtraKeys!5611 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249523 (= lt!563743 (getCurrentListMapNoExtraKeys!5611 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833591 () Bool)

(assert (=> start!104872 (=> (not res!833591) (not e!709242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104872 (= res!833591 (validMask!0 mask!1466))))

(assert (=> start!104872 e!709242))

(assert (=> start!104872 true))

(assert (=> start!104872 tp!93413))

(declare-fun tp_is_empty!31543 () Bool)

(assert (=> start!104872 tp_is_empty!31543))

(declare-fun array_inv!29639 (array!80743) Bool)

(assert (=> start!104872 (array_inv!29639 _keys!1118)))

(declare-fun e!709241 () Bool)

(declare-fun array_inv!29640 (array!80745) Bool)

(assert (=> start!104872 (and (array_inv!29640 _values!914) e!709241)))

(declare-fun b!1249524 () Bool)

(declare-fun e!709240 () Bool)

(assert (=> b!1249524 (= e!709240 tp_is_empty!31543)))

(declare-fun b!1249525 () Bool)

(assert (=> b!1249525 (= e!709241 (and e!709240 mapRes!49075))))

(declare-fun condMapEmpty!49075 () Bool)

(declare-fun mapDefault!49075 () ValueCell!15008)

