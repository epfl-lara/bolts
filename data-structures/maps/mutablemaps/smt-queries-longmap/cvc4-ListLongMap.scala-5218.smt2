; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70386 () Bool)

(assert start!70386)

(declare-fun b_free!12719 () Bool)

(declare-fun b_next!12719 () Bool)

(assert (=> start!70386 (= b_free!12719 (not b_next!12719))))

(declare-fun tp!44883 () Bool)

(declare-fun b_and!21549 () Bool)

(assert (=> start!70386 (= tp!44883 b_and!21549)))

(declare-fun b!817245 () Bool)

(declare-fun e!453508 () Bool)

(declare-fun tp_is_empty!14429 () Bool)

(assert (=> b!817245 (= e!453508 tp_is_empty!14429)))

(declare-fun b!817246 () Bool)

(declare-fun res!557971 () Bool)

(declare-fun e!453510 () Bool)

(assert (=> b!817246 (=> (not res!557971) (not e!453510))))

(declare-datatypes ((array!45032 0))(
  ( (array!45033 (arr!21568 (Array (_ BitVec 32) (_ BitVec 64))) (size!21989 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45032)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45032 (_ BitVec 32)) Bool)

(assert (=> b!817246 (= res!557971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23236 () Bool)

(declare-fun mapRes!23236 () Bool)

(declare-fun tp!44884 () Bool)

(declare-fun e!453511 () Bool)

(assert (=> mapNonEmpty!23236 (= mapRes!23236 (and tp!44884 e!453511))))

(declare-datatypes ((V!24239 0))(
  ( (V!24240 (val!7262 Int)) )
))
(declare-datatypes ((ValueCell!6799 0))(
  ( (ValueCellFull!6799 (v!9687 V!24239)) (EmptyCell!6799) )
))
(declare-datatypes ((array!45034 0))(
  ( (array!45035 (arr!21569 (Array (_ BitVec 32) ValueCell!6799)) (size!21990 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45034)

(declare-fun mapKey!23236 () (_ BitVec 32))

(declare-fun mapValue!23236 () ValueCell!6799)

(declare-fun mapRest!23236 () (Array (_ BitVec 32) ValueCell!6799))

(assert (=> mapNonEmpty!23236 (= (arr!21569 _values!788) (store mapRest!23236 mapKey!23236 mapValue!23236))))

(declare-fun b!817247 () Bool)

(assert (=> b!817247 (= e!453511 tp_is_empty!14429)))

(declare-fun b!817248 () Bool)

(assert (=> b!817248 (= e!453510 (not true))))

(declare-datatypes ((tuple2!9548 0))(
  ( (tuple2!9549 (_1!4784 (_ BitVec 64)) (_2!4784 V!24239)) )
))
(declare-datatypes ((List!15417 0))(
  ( (Nil!15414) (Cons!15413 (h!16542 tuple2!9548) (t!21750 List!15417)) )
))
(declare-datatypes ((ListLongMap!8385 0))(
  ( (ListLongMap!8386 (toList!4208 List!15417)) )
))
(declare-fun lt!366182 () ListLongMap!8385)

(declare-fun lt!366180 () ListLongMap!8385)

(assert (=> b!817248 (= lt!366182 lt!366180)))

(declare-fun zeroValueBefore!34 () V!24239)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24239)

(declare-fun minValue!754 () V!24239)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27870 0))(
  ( (Unit!27871) )
))
(declare-fun lt!366181 () Unit!27870)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!370 (array!45032 array!45034 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24239 V!24239 V!24239 V!24239 (_ BitVec 32) Int) Unit!27870)

(assert (=> b!817248 (= lt!366181 (lemmaNoChangeToArrayThenSameMapNoExtras!370 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2254 (array!45032 array!45034 (_ BitVec 32) (_ BitVec 32) V!24239 V!24239 (_ BitVec 32) Int) ListLongMap!8385)

(assert (=> b!817248 (= lt!366180 (getCurrentListMapNoExtraKeys!2254 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817248 (= lt!366182 (getCurrentListMapNoExtraKeys!2254 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817249 () Bool)

(declare-fun e!453509 () Bool)

(assert (=> b!817249 (= e!453509 (and e!453508 mapRes!23236))))

(declare-fun condMapEmpty!23236 () Bool)

(declare-fun mapDefault!23236 () ValueCell!6799)

