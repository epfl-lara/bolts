; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70416 () Bool)

(assert start!70416)

(declare-fun b_free!12749 () Bool)

(declare-fun b_next!12749 () Bool)

(assert (=> start!70416 (= b_free!12749 (not b_next!12749))))

(declare-fun tp!44974 () Bool)

(declare-fun b_and!21579 () Bool)

(assert (=> start!70416 (= tp!44974 b_and!21579)))

(declare-fun b!817560 () Bool)

(declare-fun e!453734 () Bool)

(declare-fun tp_is_empty!14459 () Bool)

(assert (=> b!817560 (= e!453734 tp_is_empty!14459)))

(declare-fun mapNonEmpty!23281 () Bool)

(declare-fun mapRes!23281 () Bool)

(declare-fun tp!44973 () Bool)

(assert (=> mapNonEmpty!23281 (= mapRes!23281 (and tp!44973 e!453734))))

(declare-datatypes ((V!24279 0))(
  ( (V!24280 (val!7277 Int)) )
))
(declare-datatypes ((ValueCell!6814 0))(
  ( (ValueCellFull!6814 (v!9702 V!24279)) (EmptyCell!6814) )
))
(declare-fun mapValue!23281 () ValueCell!6814)

(declare-fun mapKey!23281 () (_ BitVec 32))

(declare-fun mapRest!23281 () (Array (_ BitVec 32) ValueCell!6814))

(declare-datatypes ((array!45092 0))(
  ( (array!45093 (arr!21598 (Array (_ BitVec 32) ValueCell!6814)) (size!22019 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45092)

(assert (=> mapNonEmpty!23281 (= (arr!21598 _values!788) (store mapRest!23281 mapKey!23281 mapValue!23281))))

(declare-fun b!817561 () Bool)

(declare-fun e!453733 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((array!45094 0))(
  ( (array!45095 (arr!21599 (Array (_ BitVec 32) (_ BitVec 64))) (size!22020 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45094)

(assert (=> b!817561 (= e!453733 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!22020 _keys!976)))))))

(declare-datatypes ((tuple2!9570 0))(
  ( (tuple2!9571 (_1!4795 (_ BitVec 64)) (_2!4795 V!24279)) )
))
(declare-datatypes ((List!15439 0))(
  ( (Nil!15436) (Cons!15435 (h!16564 tuple2!9570) (t!21772 List!15439)) )
))
(declare-datatypes ((ListLongMap!8407 0))(
  ( (ListLongMap!8408 (toList!4219 List!15439)) )
))
(declare-fun lt!366316 () ListLongMap!8407)

(declare-fun lt!366315 () ListLongMap!8407)

(assert (=> b!817561 (= lt!366316 lt!366315)))

(declare-fun zeroValueBefore!34 () V!24279)

(declare-fun zeroValueAfter!34 () V!24279)

(declare-fun minValue!754 () V!24279)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27892 0))(
  ( (Unit!27893) )
))
(declare-fun lt!366317 () Unit!27892)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!381 (array!45094 array!45092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24279 V!24279 V!24279 V!24279 (_ BitVec 32) Int) Unit!27892)

(assert (=> b!817561 (= lt!366317 (lemmaNoChangeToArrayThenSameMapNoExtras!381 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2265 (array!45094 array!45092 (_ BitVec 32) (_ BitVec 32) V!24279 V!24279 (_ BitVec 32) Int) ListLongMap!8407)

(assert (=> b!817561 (= lt!366315 (getCurrentListMapNoExtraKeys!2265 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817561 (= lt!366316 (getCurrentListMapNoExtraKeys!2265 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23281 () Bool)

(assert (=> mapIsEmpty!23281 mapRes!23281))

(declare-fun b!817562 () Bool)

(declare-fun res!558150 () Bool)

(assert (=> b!817562 (=> (not res!558150) (not e!453733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45094 (_ BitVec 32)) Bool)

(assert (=> b!817562 (= res!558150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817563 () Bool)

(declare-fun res!558153 () Bool)

(assert (=> b!817563 (=> (not res!558153) (not e!453733))))

(declare-datatypes ((List!15440 0))(
  ( (Nil!15437) (Cons!15436 (h!16565 (_ BitVec 64)) (t!21773 List!15440)) )
))
(declare-fun arrayNoDuplicates!0 (array!45094 (_ BitVec 32) List!15440) Bool)

(assert (=> b!817563 (= res!558153 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15437))))

(declare-fun b!817564 () Bool)

(declare-fun res!558152 () Bool)

(assert (=> b!817564 (=> (not res!558152) (not e!453733))))

(assert (=> b!817564 (= res!558152 (and (= (size!22019 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22020 _keys!976) (size!22019 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817565 () Bool)

(declare-fun e!453737 () Bool)

(assert (=> b!817565 (= e!453737 tp_is_empty!14459)))

(declare-fun res!558151 () Bool)

(assert (=> start!70416 (=> (not res!558151) (not e!453733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70416 (= res!558151 (validMask!0 mask!1312))))

(assert (=> start!70416 e!453733))

(assert (=> start!70416 tp_is_empty!14459))

(declare-fun array_inv!17249 (array!45094) Bool)

(assert (=> start!70416 (array_inv!17249 _keys!976)))

(assert (=> start!70416 true))

(declare-fun e!453736 () Bool)

(declare-fun array_inv!17250 (array!45092) Bool)

(assert (=> start!70416 (and (array_inv!17250 _values!788) e!453736)))

(assert (=> start!70416 tp!44974))

(declare-fun b!817566 () Bool)

(assert (=> b!817566 (= e!453736 (and e!453737 mapRes!23281))))

(declare-fun condMapEmpty!23281 () Bool)

(declare-fun mapDefault!23281 () ValueCell!6814)

