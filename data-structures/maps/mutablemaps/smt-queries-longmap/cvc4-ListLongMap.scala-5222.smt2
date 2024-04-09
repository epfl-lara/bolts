; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70410 () Bool)

(assert start!70410)

(declare-fun b_free!12743 () Bool)

(declare-fun b_next!12743 () Bool)

(assert (=> start!70410 (= b_free!12743 (not b_next!12743))))

(declare-fun tp!44956 () Bool)

(declare-fun b_and!21573 () Bool)

(assert (=> start!70410 (= tp!44956 b_and!21573)))

(declare-fun mapNonEmpty!23272 () Bool)

(declare-fun mapRes!23272 () Bool)

(declare-fun tp!44955 () Bool)

(declare-fun e!453691 () Bool)

(assert (=> mapNonEmpty!23272 (= mapRes!23272 (and tp!44955 e!453691))))

(declare-fun mapKey!23272 () (_ BitVec 32))

(declare-datatypes ((V!24271 0))(
  ( (V!24272 (val!7274 Int)) )
))
(declare-datatypes ((ValueCell!6811 0))(
  ( (ValueCellFull!6811 (v!9699 V!24271)) (EmptyCell!6811) )
))
(declare-fun mapRest!23272 () (Array (_ BitVec 32) ValueCell!6811))

(declare-fun mapValue!23272 () ValueCell!6811)

(declare-datatypes ((array!45080 0))(
  ( (array!45081 (arr!21592 (Array (_ BitVec 32) ValueCell!6811)) (size!22013 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45080)

(assert (=> mapNonEmpty!23272 (= (arr!21592 _values!788) (store mapRest!23272 mapKey!23272 mapValue!23272))))

(declare-fun b!817497 () Bool)

(declare-fun tp_is_empty!14453 () Bool)

(assert (=> b!817497 (= e!453691 tp_is_empty!14453)))

(declare-fun b!817498 () Bool)

(declare-fun e!453692 () Bool)

(assert (=> b!817498 (= e!453692 (not true))))

(declare-datatypes ((tuple2!9564 0))(
  ( (tuple2!9565 (_1!4792 (_ BitVec 64)) (_2!4792 V!24271)) )
))
(declare-datatypes ((List!15433 0))(
  ( (Nil!15430) (Cons!15429 (h!16558 tuple2!9564) (t!21766 List!15433)) )
))
(declare-datatypes ((ListLongMap!8401 0))(
  ( (ListLongMap!8402 (toList!4216 List!15433)) )
))
(declare-fun lt!366290 () ListLongMap!8401)

(declare-fun lt!366288 () ListLongMap!8401)

(assert (=> b!817498 (= lt!366290 lt!366288)))

(declare-fun zeroValueBefore!34 () V!24271)

(declare-datatypes ((Unit!27886 0))(
  ( (Unit!27887) )
))
(declare-fun lt!366289 () Unit!27886)

(declare-datatypes ((array!45082 0))(
  ( (array!45083 (arr!21593 (Array (_ BitVec 32) (_ BitVec 64))) (size!22014 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45082)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24271)

(declare-fun minValue!754 () V!24271)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!378 (array!45082 array!45080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24271 V!24271 V!24271 V!24271 (_ BitVec 32) Int) Unit!27886)

(assert (=> b!817498 (= lt!366289 (lemmaNoChangeToArrayThenSameMapNoExtras!378 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2262 (array!45082 array!45080 (_ BitVec 32) (_ BitVec 32) V!24271 V!24271 (_ BitVec 32) Int) ListLongMap!8401)

(assert (=> b!817498 (= lt!366288 (getCurrentListMapNoExtraKeys!2262 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817498 (= lt!366290 (getCurrentListMapNoExtraKeys!2262 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817499 () Bool)

(declare-fun res!558115 () Bool)

(assert (=> b!817499 (=> (not res!558115) (not e!453692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45082 (_ BitVec 32)) Bool)

(assert (=> b!817499 (= res!558115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817500 () Bool)

(declare-fun res!558114 () Bool)

(assert (=> b!817500 (=> (not res!558114) (not e!453692))))

(declare-datatypes ((List!15434 0))(
  ( (Nil!15431) (Cons!15430 (h!16559 (_ BitVec 64)) (t!21767 List!15434)) )
))
(declare-fun arrayNoDuplicates!0 (array!45082 (_ BitVec 32) List!15434) Bool)

(assert (=> b!817500 (= res!558114 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15431))))

(declare-fun b!817501 () Bool)

(declare-fun e!453688 () Bool)

(declare-fun e!453690 () Bool)

(assert (=> b!817501 (= e!453688 (and e!453690 mapRes!23272))))

(declare-fun condMapEmpty!23272 () Bool)

(declare-fun mapDefault!23272 () ValueCell!6811)

