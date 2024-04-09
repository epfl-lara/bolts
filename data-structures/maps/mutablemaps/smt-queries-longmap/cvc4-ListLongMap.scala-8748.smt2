; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106206 () Bool)

(assert start!106206)

(declare-fun b_free!27527 () Bool)

(declare-fun b_next!27527 () Bool)

(assert (=> start!106206 (= b_free!27527 (not b_next!27527))))

(declare-fun tp!96143 () Bool)

(declare-fun b_and!45557 () Bool)

(assert (=> start!106206 (= tp!96143 b_and!45557)))

(declare-fun b!1264006 () Bool)

(declare-fun e!719740 () Bool)

(declare-fun e!719739 () Bool)

(assert (=> b!1264006 (= e!719740 (not e!719739))))

(declare-fun res!841923 () Bool)

(assert (=> b!1264006 (=> res!841923 e!719739)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264006 (= res!841923 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48603 0))(
  ( (V!48604 (val!16277 Int)) )
))
(declare-datatypes ((tuple2!21222 0))(
  ( (tuple2!21223 (_1!10621 (_ BitVec 64)) (_2!10621 V!48603)) )
))
(declare-datatypes ((List!28440 0))(
  ( (Nil!28437) (Cons!28436 (h!29645 tuple2!21222) (t!41966 List!28440)) )
))
(declare-datatypes ((ListLongMap!19107 0))(
  ( (ListLongMap!19108 (toList!9569 List!28440)) )
))
(declare-fun lt!573407 () ListLongMap!19107)

(declare-fun lt!573405 () ListLongMap!19107)

(assert (=> b!1264006 (= lt!573407 lt!573405)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48603)

(declare-datatypes ((Unit!42082 0))(
  ( (Unit!42083) )
))
(declare-fun lt!573408 () Unit!42082)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48603)

(declare-datatypes ((ValueCell!15451 0))(
  ( (ValueCellFull!15451 (v!18990 V!48603)) (EmptyCell!15451) )
))
(declare-datatypes ((array!82469 0))(
  ( (array!82470 (arr!39773 (Array (_ BitVec 32) ValueCell!15451)) (size!40310 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82469)

(declare-fun minValueBefore!43 () V!48603)

(declare-datatypes ((array!82471 0))(
  ( (array!82472 (arr!39774 (Array (_ BitVec 32) (_ BitVec 64))) (size!40311 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82471)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1204 (array!82471 array!82469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48603 V!48603 V!48603 V!48603 (_ BitVec 32) Int) Unit!42082)

(assert (=> b!1264006 (= lt!573408 (lemmaNoChangeToArrayThenSameMapNoExtras!1204 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5908 (array!82471 array!82469 (_ BitVec 32) (_ BitVec 32) V!48603 V!48603 (_ BitVec 32) Int) ListLongMap!19107)

(assert (=> b!1264006 (= lt!573405 (getCurrentListMapNoExtraKeys!5908 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264006 (= lt!573407 (getCurrentListMapNoExtraKeys!5908 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!841925 () Bool)

(assert (=> start!106206 (=> (not res!841925) (not e!719740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106206 (= res!841925 (validMask!0 mask!1466))))

(assert (=> start!106206 e!719740))

(assert (=> start!106206 true))

(assert (=> start!106206 tp!96143))

(declare-fun tp_is_empty!32429 () Bool)

(assert (=> start!106206 tp_is_empty!32429))

(declare-fun array_inv!30229 (array!82471) Bool)

(assert (=> start!106206 (array_inv!30229 _keys!1118)))

(declare-fun e!719743 () Bool)

(declare-fun array_inv!30230 (array!82469) Bool)

(assert (=> start!106206 (and (array_inv!30230 _values!914) e!719743)))

(declare-fun mapIsEmpty!50476 () Bool)

(declare-fun mapRes!50476 () Bool)

(assert (=> mapIsEmpty!50476 mapRes!50476))

(declare-fun b!1264007 () Bool)

(declare-fun res!841924 () Bool)

(assert (=> b!1264007 (=> (not res!841924) (not e!719740))))

(declare-datatypes ((List!28441 0))(
  ( (Nil!28438) (Cons!28437 (h!29646 (_ BitVec 64)) (t!41967 List!28441)) )
))
(declare-fun arrayNoDuplicates!0 (array!82471 (_ BitVec 32) List!28441) Bool)

(assert (=> b!1264007 (= res!841924 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28438))))

(declare-fun b!1264008 () Bool)

(declare-fun e!719744 () Bool)

(assert (=> b!1264008 (= e!719744 tp_is_empty!32429)))

(declare-fun b!1264009 () Bool)

(declare-fun e!719741 () Bool)

(assert (=> b!1264009 (= e!719741 tp_is_empty!32429)))

(declare-fun b!1264010 () Bool)

(declare-fun res!841922 () Bool)

(assert (=> b!1264010 (=> (not res!841922) (not e!719740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82471 (_ BitVec 32)) Bool)

(assert (=> b!1264010 (= res!841922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1264011 () Bool)

(assert (=> b!1264011 (= e!719743 (and e!719744 mapRes!50476))))

(declare-fun condMapEmpty!50476 () Bool)

(declare-fun mapDefault!50476 () ValueCell!15451)

