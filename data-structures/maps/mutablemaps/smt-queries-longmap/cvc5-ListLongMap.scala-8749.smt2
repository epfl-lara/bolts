; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106228 () Bool)

(assert start!106228)

(declare-fun b_free!27529 () Bool)

(declare-fun b_next!27529 () Bool)

(assert (=> start!106228 (= b_free!27529 (not b_next!27529))))

(declare-fun tp!96152 () Bool)

(declare-fun b_and!45571 () Bool)

(assert (=> start!106228 (= tp!96152 b_and!45571)))

(declare-fun b!1264221 () Bool)

(declare-fun e!719884 () Bool)

(declare-fun tp_is_empty!32431 () Bool)

(assert (=> b!1264221 (= e!719884 tp_is_empty!32431)))

(declare-fun b!1264222 () Bool)

(declare-fun e!719882 () Bool)

(declare-fun e!719880 () Bool)

(assert (=> b!1264222 (= e!719882 (not e!719880))))

(declare-fun res!842019 () Bool)

(assert (=> b!1264222 (=> res!842019 e!719880)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264222 (= res!842019 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48607 0))(
  ( (V!48608 (val!16278 Int)) )
))
(declare-datatypes ((tuple2!21224 0))(
  ( (tuple2!21225 (_1!10622 (_ BitVec 64)) (_2!10622 V!48607)) )
))
(declare-datatypes ((List!28442 0))(
  ( (Nil!28439) (Cons!28438 (h!29647 tuple2!21224) (t!41970 List!28442)) )
))
(declare-datatypes ((ListLongMap!19109 0))(
  ( (ListLongMap!19110 (toList!9570 List!28442)) )
))
(declare-fun lt!573594 () ListLongMap!19109)

(declare-fun lt!573592 () ListLongMap!19109)

(assert (=> b!1264222 (= lt!573594 lt!573592)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48607)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48607)

(declare-datatypes ((array!82475 0))(
  ( (array!82476 (arr!39775 (Array (_ BitVec 32) (_ BitVec 64))) (size!40312 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82475)

(declare-datatypes ((ValueCell!15452 0))(
  ( (ValueCellFull!15452 (v!18992 V!48607)) (EmptyCell!15452) )
))
(declare-datatypes ((array!82477 0))(
  ( (array!82478 (arr!39776 (Array (_ BitVec 32) ValueCell!15452)) (size!40313 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82477)

(declare-datatypes ((Unit!42087 0))(
  ( (Unit!42088) )
))
(declare-fun lt!573596 () Unit!42087)

(declare-fun minValueBefore!43 () V!48607)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1205 (array!82475 array!82477 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48607 V!48607 V!48607 V!48607 (_ BitVec 32) Int) Unit!42087)

(assert (=> b!1264222 (= lt!573596 (lemmaNoChangeToArrayThenSameMapNoExtras!1205 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5909 (array!82475 array!82477 (_ BitVec 32) (_ BitVec 32) V!48607 V!48607 (_ BitVec 32) Int) ListLongMap!19109)

(assert (=> b!1264222 (= lt!573592 (getCurrentListMapNoExtraKeys!5909 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264222 (= lt!573594 (getCurrentListMapNoExtraKeys!5909 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264223 () Bool)

(declare-fun e!719883 () Bool)

(declare-fun lt!573588 () ListLongMap!19109)

(declare-fun lt!573591 () tuple2!21224)

(declare-fun +!4234 (ListLongMap!19109 tuple2!21224) ListLongMap!19109)

(assert (=> b!1264223 (= e!719883 (= lt!573588 (+!4234 lt!573592 lt!573591)))))

(declare-fun b!1264224 () Bool)

(declare-fun e!719879 () Bool)

(declare-fun e!719881 () Bool)

(declare-fun mapRes!50482 () Bool)

(assert (=> b!1264224 (= e!719879 (and e!719881 mapRes!50482))))

(declare-fun condMapEmpty!50482 () Bool)

(declare-fun mapDefault!50482 () ValueCell!15452)

