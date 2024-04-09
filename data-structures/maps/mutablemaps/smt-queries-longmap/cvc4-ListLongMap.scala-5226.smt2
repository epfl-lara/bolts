; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70448 () Bool)

(assert start!70448)

(declare-fun b_free!12767 () Bool)

(declare-fun b_next!12767 () Bool)

(assert (=> start!70448 (= b_free!12767 (not b_next!12767))))

(declare-fun tp!45031 () Bool)

(declare-fun b_and!21605 () Bool)

(assert (=> start!70448 (= tp!45031 b_and!21605)))

(declare-fun mapIsEmpty!23311 () Bool)

(declare-fun mapRes!23311 () Bool)

(assert (=> mapIsEmpty!23311 mapRes!23311))

(declare-fun b!817860 () Bool)

(declare-fun e!453954 () Bool)

(assert (=> b!817860 (= e!453954 true)))

(declare-datatypes ((V!24303 0))(
  ( (V!24304 (val!7286 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24303)

(declare-datatypes ((array!45130 0))(
  ( (array!45131 (arr!21616 (Array (_ BitVec 32) (_ BitVec 64))) (size!22037 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45130)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24303)

(declare-datatypes ((ValueCell!6823 0))(
  ( (ValueCellFull!6823 (v!9711 V!24303)) (EmptyCell!6823) )
))
(declare-datatypes ((array!45132 0))(
  ( (array!45133 (arr!21617 (Array (_ BitVec 32) ValueCell!6823)) (size!22038 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45132)

(declare-datatypes ((tuple2!9588 0))(
  ( (tuple2!9589 (_1!4804 (_ BitVec 64)) (_2!4804 V!24303)) )
))
(declare-datatypes ((List!15455 0))(
  ( (Nil!15452) (Cons!15451 (h!16580 tuple2!9588) (t!21790 List!15455)) )
))
(declare-datatypes ((ListLongMap!8425 0))(
  ( (ListLongMap!8426 (toList!4228 List!15455)) )
))
(declare-fun lt!366462 () ListLongMap!8425)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2391 (array!45130 array!45132 (_ BitVec 32) (_ BitVec 32) V!24303 V!24303 (_ BitVec 32) Int) ListLongMap!8425)

(assert (=> b!817860 (= lt!366462 (getCurrentListMap!2391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!558319 () Bool)

(declare-fun e!453950 () Bool)

(assert (=> start!70448 (=> (not res!558319) (not e!453950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70448 (= res!558319 (validMask!0 mask!1312))))

(assert (=> start!70448 e!453950))

(declare-fun tp_is_empty!14477 () Bool)

(assert (=> start!70448 tp_is_empty!14477))

(declare-fun array_inv!17265 (array!45130) Bool)

(assert (=> start!70448 (array_inv!17265 _keys!976)))

(assert (=> start!70448 true))

(declare-fun e!453953 () Bool)

(declare-fun array_inv!17266 (array!45132) Bool)

(assert (=> start!70448 (and (array_inv!17266 _values!788) e!453953)))

(assert (=> start!70448 tp!45031))

(declare-fun b!817861 () Bool)

(declare-fun res!558317 () Bool)

(assert (=> b!817861 (=> (not res!558317) (not e!453950))))

(declare-datatypes ((List!15456 0))(
  ( (Nil!15453) (Cons!15452 (h!16581 (_ BitVec 64)) (t!21791 List!15456)) )
))
(declare-fun arrayNoDuplicates!0 (array!45130 (_ BitVec 32) List!15456) Bool)

(assert (=> b!817861 (= res!558317 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15453))))

(declare-fun b!817862 () Bool)

(assert (=> b!817862 (= e!453950 (not e!453954))))

(declare-fun res!558315 () Bool)

(assert (=> b!817862 (=> res!558315 e!453954)))

(assert (=> b!817862 (= res!558315 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366463 () ListLongMap!8425)

(declare-fun lt!366464 () ListLongMap!8425)

(assert (=> b!817862 (= lt!366463 lt!366464)))

(declare-fun zeroValueAfter!34 () V!24303)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27908 0))(
  ( (Unit!27909) )
))
(declare-fun lt!366465 () Unit!27908)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!389 (array!45130 array!45132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24303 V!24303 V!24303 V!24303 (_ BitVec 32) Int) Unit!27908)

(assert (=> b!817862 (= lt!366465 (lemmaNoChangeToArrayThenSameMapNoExtras!389 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2273 (array!45130 array!45132 (_ BitVec 32) (_ BitVec 32) V!24303 V!24303 (_ BitVec 32) Int) ListLongMap!8425)

(assert (=> b!817862 (= lt!366464 (getCurrentListMapNoExtraKeys!2273 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817862 (= lt!366463 (getCurrentListMapNoExtraKeys!2273 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817863 () Bool)

(declare-fun e!453952 () Bool)

(assert (=> b!817863 (= e!453953 (and e!453952 mapRes!23311))))

(declare-fun condMapEmpty!23311 () Bool)

(declare-fun mapDefault!23311 () ValueCell!6823)

