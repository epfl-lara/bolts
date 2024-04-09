; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70344 () Bool)

(assert start!70344)

(declare-fun b_free!12695 () Bool)

(declare-fun b_next!12695 () Bool)

(assert (=> start!70344 (= b_free!12695 (not b_next!12695))))

(declare-fun tp!44809 () Bool)

(declare-fun b_and!21513 () Bool)

(assert (=> start!70344 (= tp!44809 b_and!21513)))

(declare-fun b!816816 () Bool)

(declare-fun e!453222 () Bool)

(declare-datatypes ((array!44984 0))(
  ( (array!44985 (arr!21545 (Array (_ BitVec 32) (_ BitVec 64))) (size!21966 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44984)

(assert (=> b!816816 (= e!453222 (bvsle #b00000000000000000000000000000000 (size!21966 _keys!976)))))

(declare-fun res!557754 () Bool)

(declare-fun e!453218 () Bool)

(assert (=> start!70344 (=> (not res!557754) (not e!453218))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70344 (= res!557754 (validMask!0 mask!1312))))

(assert (=> start!70344 e!453218))

(declare-fun tp_is_empty!14405 () Bool)

(assert (=> start!70344 tp_is_empty!14405))

(declare-fun array_inv!17209 (array!44984) Bool)

(assert (=> start!70344 (array_inv!17209 _keys!976)))

(assert (=> start!70344 true))

(declare-datatypes ((V!24207 0))(
  ( (V!24208 (val!7250 Int)) )
))
(declare-datatypes ((ValueCell!6787 0))(
  ( (ValueCellFull!6787 (v!9674 V!24207)) (EmptyCell!6787) )
))
(declare-datatypes ((array!44986 0))(
  ( (array!44987 (arr!21546 (Array (_ BitVec 32) ValueCell!6787)) (size!21967 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44986)

(declare-fun e!453221 () Bool)

(declare-fun array_inv!17210 (array!44986) Bool)

(assert (=> start!70344 (and (array_inv!17210 _values!788) e!453221)))

(assert (=> start!70344 tp!44809))

(declare-fun b!816817 () Bool)

(assert (=> b!816817 (= e!453218 (not e!453222))))

(declare-fun res!557751 () Bool)

(assert (=> b!816817 (=> res!557751 e!453222)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816817 (= res!557751 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9530 0))(
  ( (tuple2!9531 (_1!4775 (_ BitVec 64)) (_2!4775 V!24207)) )
))
(declare-datatypes ((List!15400 0))(
  ( (Nil!15397) (Cons!15396 (h!16525 tuple2!9530) (t!21731 List!15400)) )
))
(declare-datatypes ((ListLongMap!8367 0))(
  ( (ListLongMap!8368 (toList!4199 List!15400)) )
))
(declare-fun lt!365932 () ListLongMap!8367)

(declare-fun lt!365934 () ListLongMap!8367)

(assert (=> b!816817 (= lt!365932 lt!365934)))

(declare-fun zeroValueBefore!34 () V!24207)

(declare-datatypes ((Unit!27850 0))(
  ( (Unit!27851) )
))
(declare-fun lt!365933 () Unit!27850)

(declare-fun zeroValueAfter!34 () V!24207)

(declare-fun minValue!754 () V!24207)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!361 (array!44984 array!44986 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24207 V!24207 V!24207 V!24207 (_ BitVec 32) Int) Unit!27850)

(assert (=> b!816817 (= lt!365933 (lemmaNoChangeToArrayThenSameMapNoExtras!361 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2245 (array!44984 array!44986 (_ BitVec 32) (_ BitVec 32) V!24207 V!24207 (_ BitVec 32) Int) ListLongMap!8367)

(assert (=> b!816817 (= lt!365934 (getCurrentListMapNoExtraKeys!2245 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816817 (= lt!365932 (getCurrentListMapNoExtraKeys!2245 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816818 () Bool)

(declare-fun e!453220 () Bool)

(assert (=> b!816818 (= e!453220 tp_is_empty!14405)))

(declare-fun b!816819 () Bool)

(declare-fun res!557756 () Bool)

(assert (=> b!816819 (=> (not res!557756) (not e!453218))))

(assert (=> b!816819 (= res!557756 (and (= (size!21967 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21966 _keys!976) (size!21967 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816820 () Bool)

(declare-fun res!557752 () Bool)

(assert (=> b!816820 (=> (not res!557752) (not e!453218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44984 (_ BitVec 32)) Bool)

(assert (=> b!816820 (= res!557752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816821 () Bool)

(declare-fun e!453217 () Bool)

(assert (=> b!816821 (= e!453217 tp_is_empty!14405)))

(declare-fun mapNonEmpty!23197 () Bool)

(declare-fun mapRes!23197 () Bool)

(declare-fun tp!44808 () Bool)

(assert (=> mapNonEmpty!23197 (= mapRes!23197 (and tp!44808 e!453220))))

(declare-fun mapValue!23197 () ValueCell!6787)

(declare-fun mapRest!23197 () (Array (_ BitVec 32) ValueCell!6787))

(declare-fun mapKey!23197 () (_ BitVec 32))

(assert (=> mapNonEmpty!23197 (= (arr!21546 _values!788) (store mapRest!23197 mapKey!23197 mapValue!23197))))

(declare-fun b!816822 () Bool)

(declare-fun res!557753 () Bool)

(assert (=> b!816822 (=> res!557753 e!453222)))

(declare-fun +!1783 (ListLongMap!8367 tuple2!9530) ListLongMap!8367)

(declare-fun getCurrentListMap!2384 (array!44984 array!44986 (_ BitVec 32) (_ BitVec 32) V!24207 V!24207 (_ BitVec 32) Int) ListLongMap!8367)

(assert (=> b!816822 (= res!557753 (not (= (+!1783 (getCurrentListMap!2384 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2384 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))))

(declare-fun mapIsEmpty!23197 () Bool)

(assert (=> mapIsEmpty!23197 mapRes!23197))

(declare-fun b!816823 () Bool)

(assert (=> b!816823 (= e!453221 (and e!453217 mapRes!23197))))

(declare-fun condMapEmpty!23197 () Bool)

(declare-fun mapDefault!23197 () ValueCell!6787)

