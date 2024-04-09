; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105430 () Bool)

(assert start!105430)

(declare-fun b_free!27053 () Bool)

(declare-fun b_next!27053 () Bool)

(assert (=> start!105430 (= b_free!27053 (not b_next!27053))))

(declare-fun tp!94674 () Bool)

(declare-fun b_and!44909 () Bool)

(assert (=> start!105430 (= tp!94674 b_and!44909)))

(declare-fun b!1255535 () Bool)

(declare-fun e!713630 () Bool)

(declare-fun tp_is_empty!31955 () Bool)

(assert (=> b!1255535 (= e!713630 tp_is_empty!31955)))

(declare-fun mapNonEmpty!49717 () Bool)

(declare-fun mapRes!49717 () Bool)

(declare-fun tp!94673 () Bool)

(declare-fun e!713632 () Bool)

(assert (=> mapNonEmpty!49717 (= mapRes!49717 (and tp!94673 e!713632))))

(declare-fun mapKey!49717 () (_ BitVec 32))

(declare-datatypes ((V!47971 0))(
  ( (V!47972 (val!16040 Int)) )
))
(declare-datatypes ((ValueCell!15214 0))(
  ( (ValueCellFull!15214 (v!18740 V!47971)) (EmptyCell!15214) )
))
(declare-fun mapRest!49717 () (Array (_ BitVec 32) ValueCell!15214))

(declare-fun mapValue!49717 () ValueCell!15214)

(declare-datatypes ((array!81545 0))(
  ( (array!81546 (arr!39327 (Array (_ BitVec 32) ValueCell!15214)) (size!39864 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81545)

(assert (=> mapNonEmpty!49717 (= (arr!39327 _values!914) (store mapRest!49717 mapKey!49717 mapValue!49717))))

(declare-fun b!1255536 () Bool)

(declare-fun res!837101 () Bool)

(declare-fun e!713628 () Bool)

(assert (=> b!1255536 (=> (not res!837101) (not e!713628))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81547 0))(
  ( (array!81548 (arr!39328 (Array (_ BitVec 32) (_ BitVec 64))) (size!39865 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81547)

(declare-fun mask!1466 () (_ BitVec 32))

(assert (=> b!1255536 (= res!837101 (and (= (size!39864 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39865 _keys!1118) (size!39864 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255537 () Bool)

(declare-fun e!713631 () Bool)

(assert (=> b!1255537 (= e!713631 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47971)

(declare-fun minValueBefore!43 () V!47971)

(declare-fun lt!567609 () Bool)

(declare-datatypes ((tuple2!20860 0))(
  ( (tuple2!20861 (_1!10440 (_ BitVec 64)) (_2!10440 V!47971)) )
))
(declare-datatypes ((List!28099 0))(
  ( (Nil!28096) (Cons!28095 (h!29304 tuple2!20860) (t!41593 List!28099)) )
))
(declare-datatypes ((ListLongMap!18745 0))(
  ( (ListLongMap!18746 (toList!9388 List!28099)) )
))
(declare-fun contains!7549 (ListLongMap!18745 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4554 (array!81547 array!81545 (_ BitVec 32) (_ BitVec 32) V!47971 V!47971 (_ BitVec 32) Int) ListLongMap!18745)

(assert (=> b!1255537 (= lt!567609 (contains!7549 (getCurrentListMap!4554 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255538 () Bool)

(declare-fun e!713629 () Bool)

(assert (=> b!1255538 (= e!713629 (and e!713630 mapRes!49717))))

(declare-fun condMapEmpty!49717 () Bool)

(declare-fun mapDefault!49717 () ValueCell!15214)

