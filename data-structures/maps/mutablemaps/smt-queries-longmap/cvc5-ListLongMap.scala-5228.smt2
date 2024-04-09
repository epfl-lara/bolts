; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70456 () Bool)

(assert start!70456)

(declare-fun b_free!12775 () Bool)

(declare-fun b_next!12775 () Bool)

(assert (=> start!70456 (= b_free!12775 (not b_next!12775))))

(declare-fun tp!45055 () Bool)

(declare-fun b_and!21613 () Bool)

(assert (=> start!70456 (= tp!45055 b_and!21613)))

(declare-fun b!817956 () Bool)

(declare-fun e!454026 () Bool)

(declare-fun e!454021 () Bool)

(assert (=> b!817956 (= e!454026 (not e!454021))))

(declare-fun res!558377 () Bool)

(assert (=> b!817956 (=> res!558377 e!454021)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817956 (= res!558377 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24315 0))(
  ( (V!24316 (val!7290 Int)) )
))
(declare-datatypes ((tuple2!9594 0))(
  ( (tuple2!9595 (_1!4807 (_ BitVec 64)) (_2!4807 V!24315)) )
))
(declare-datatypes ((List!15460 0))(
  ( (Nil!15457) (Cons!15456 (h!16585 tuple2!9594) (t!21795 List!15460)) )
))
(declare-datatypes ((ListLongMap!8431 0))(
  ( (ListLongMap!8432 (toList!4231 List!15460)) )
))
(declare-fun lt!366513 () ListLongMap!8431)

(declare-fun lt!366510 () ListLongMap!8431)

(assert (=> b!817956 (= lt!366513 lt!366510)))

(declare-fun zeroValueBefore!34 () V!24315)

(declare-datatypes ((array!45144 0))(
  ( (array!45145 (arr!21623 (Array (_ BitVec 32) (_ BitVec 64))) (size!22044 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45144)

(declare-fun zeroValueAfter!34 () V!24315)

(declare-fun minValue!754 () V!24315)

(declare-datatypes ((ValueCell!6827 0))(
  ( (ValueCellFull!6827 (v!9715 V!24315)) (EmptyCell!6827) )
))
(declare-datatypes ((array!45146 0))(
  ( (array!45147 (arr!21624 (Array (_ BitVec 32) ValueCell!6827)) (size!22045 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45146)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27914 0))(
  ( (Unit!27915) )
))
(declare-fun lt!366512 () Unit!27914)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!392 (array!45144 array!45146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24315 V!24315 V!24315 V!24315 (_ BitVec 32) Int) Unit!27914)

(assert (=> b!817956 (= lt!366512 (lemmaNoChangeToArrayThenSameMapNoExtras!392 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2276 (array!45144 array!45146 (_ BitVec 32) (_ BitVec 32) V!24315 V!24315 (_ BitVec 32) Int) ListLongMap!8431)

(assert (=> b!817956 (= lt!366510 (getCurrentListMapNoExtraKeys!2276 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817956 (= lt!366513 (getCurrentListMapNoExtraKeys!2276 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817957 () Bool)

(declare-fun e!454022 () Bool)

(declare-fun e!454024 () Bool)

(declare-fun mapRes!23323 () Bool)

(assert (=> b!817957 (= e!454022 (and e!454024 mapRes!23323))))

(declare-fun condMapEmpty!23323 () Bool)

(declare-fun mapDefault!23323 () ValueCell!6827)

