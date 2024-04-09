; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70466 () Bool)

(assert start!70466)

(declare-fun b_free!12785 () Bool)

(declare-fun b_next!12785 () Bool)

(assert (=> start!70466 (= b_free!12785 (not b_next!12785))))

(declare-fun tp!45085 () Bool)

(declare-fun b_and!21623 () Bool)

(assert (=> start!70466 (= tp!45085 b_and!21623)))

(declare-fun b!818076 () Bool)

(declare-fun e!454113 () Bool)

(declare-fun e!454111 () Bool)

(assert (=> b!818076 (= e!454113 (not e!454111))))

(declare-fun res!558451 () Bool)

(assert (=> b!818076 (=> res!558451 e!454111)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818076 (= res!558451 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24327 0))(
  ( (V!24328 (val!7295 Int)) )
))
(declare-datatypes ((tuple2!9602 0))(
  ( (tuple2!9603 (_1!4811 (_ BitVec 64)) (_2!4811 V!24327)) )
))
(declare-datatypes ((List!15467 0))(
  ( (Nil!15464) (Cons!15463 (h!16592 tuple2!9602) (t!21802 List!15467)) )
))
(declare-datatypes ((ListLongMap!8439 0))(
  ( (ListLongMap!8440 (toList!4235 List!15467)) )
))
(declare-fun lt!366571 () ListLongMap!8439)

(declare-fun lt!366572 () ListLongMap!8439)

(assert (=> b!818076 (= lt!366571 lt!366572)))

(declare-fun zeroValueBefore!34 () V!24327)

(declare-datatypes ((array!45164 0))(
  ( (array!45165 (arr!21633 (Array (_ BitVec 32) (_ BitVec 64))) (size!22054 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45164)

(declare-datatypes ((Unit!27922 0))(
  ( (Unit!27923) )
))
(declare-fun lt!366573 () Unit!27922)

(declare-fun zeroValueAfter!34 () V!24327)

(declare-fun minValue!754 () V!24327)

(declare-datatypes ((ValueCell!6832 0))(
  ( (ValueCellFull!6832 (v!9720 V!24327)) (EmptyCell!6832) )
))
(declare-datatypes ((array!45166 0))(
  ( (array!45167 (arr!21634 (Array (_ BitVec 32) ValueCell!6832)) (size!22055 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45166)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!396 (array!45164 array!45166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24327 V!24327 V!24327 V!24327 (_ BitVec 32) Int) Unit!27922)

(assert (=> b!818076 (= lt!366573 (lemmaNoChangeToArrayThenSameMapNoExtras!396 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2280 (array!45164 array!45166 (_ BitVec 32) (_ BitVec 32) V!24327 V!24327 (_ BitVec 32) Int) ListLongMap!8439)

(assert (=> b!818076 (= lt!366572 (getCurrentListMapNoExtraKeys!2280 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818076 (= lt!366571 (getCurrentListMapNoExtraKeys!2280 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818077 () Bool)

(declare-fun e!454112 () Bool)

(declare-fun tp_is_empty!14495 () Bool)

(assert (=> b!818077 (= e!454112 tp_is_empty!14495)))

(declare-fun b!818079 () Bool)

(declare-fun e!454114 () Bool)

(assert (=> b!818079 (= e!454114 tp_is_empty!14495)))

(declare-fun mapIsEmpty!23338 () Bool)

(declare-fun mapRes!23338 () Bool)

(assert (=> mapIsEmpty!23338 mapRes!23338))

(declare-fun b!818080 () Bool)

(declare-fun res!558454 () Bool)

(assert (=> b!818080 (=> (not res!558454) (not e!454113))))

(declare-datatypes ((List!15468 0))(
  ( (Nil!15465) (Cons!15464 (h!16593 (_ BitVec 64)) (t!21803 List!15468)) )
))
(declare-fun arrayNoDuplicates!0 (array!45164 (_ BitVec 32) List!15468) Bool)

(assert (=> b!818080 (= res!558454 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15465))))

(declare-fun b!818081 () Bool)

(declare-fun res!558453 () Bool)

(assert (=> b!818081 (=> (not res!558453) (not e!454113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45164 (_ BitVec 32)) Bool)

(assert (=> b!818081 (= res!558453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818082 () Bool)

(declare-fun e!454116 () Bool)

(assert (=> b!818082 (= e!454116 (and e!454112 mapRes!23338))))

(declare-fun condMapEmpty!23338 () Bool)

(declare-fun mapDefault!23338 () ValueCell!6832)

