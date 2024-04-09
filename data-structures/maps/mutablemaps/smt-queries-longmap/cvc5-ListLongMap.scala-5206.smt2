; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70292 () Bool)

(assert start!70292)

(declare-fun b_free!12643 () Bool)

(declare-fun b_next!12643 () Bool)

(assert (=> start!70292 (= b_free!12643 (not b_next!12643))))

(declare-fun tp!44652 () Bool)

(declare-fun b_and!21461 () Bool)

(assert (=> start!70292 (= tp!44652 b_and!21461)))

(declare-fun b!816184 () Bool)

(declare-fun e!452753 () Bool)

(declare-fun e!452751 () Bool)

(assert (=> b!816184 (= e!452753 (not e!452751))))

(declare-fun res!557356 () Bool)

(assert (=> b!816184 (=> res!557356 e!452751)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816184 (= res!557356 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24139 0))(
  ( (V!24140 (val!7224 Int)) )
))
(declare-datatypes ((tuple2!9494 0))(
  ( (tuple2!9495 (_1!4757 (_ BitVec 64)) (_2!4757 V!24139)) )
))
(declare-datatypes ((List!15362 0))(
  ( (Nil!15359) (Cons!15358 (h!16487 tuple2!9494) (t!21693 List!15362)) )
))
(declare-datatypes ((ListLongMap!8331 0))(
  ( (ListLongMap!8332 (toList!4181 List!15362)) )
))
(declare-fun lt!365558 () ListLongMap!8331)

(declare-fun lt!365562 () ListLongMap!8331)

(assert (=> b!816184 (= lt!365558 lt!365562)))

(declare-fun zeroValueBefore!34 () V!24139)

(declare-datatypes ((array!44888 0))(
  ( (array!44889 (arr!21497 (Array (_ BitVec 32) (_ BitVec 64))) (size!21918 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44888)

(declare-fun zeroValueAfter!34 () V!24139)

(declare-fun minValue!754 () V!24139)

(declare-datatypes ((ValueCell!6761 0))(
  ( (ValueCellFull!6761 (v!9648 V!24139)) (EmptyCell!6761) )
))
(declare-datatypes ((array!44890 0))(
  ( (array!44891 (arr!21498 (Array (_ BitVec 32) ValueCell!6761)) (size!21919 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44890)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27820 0))(
  ( (Unit!27821) )
))
(declare-fun lt!365559 () Unit!27820)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!346 (array!44888 array!44890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24139 V!24139 V!24139 V!24139 (_ BitVec 32) Int) Unit!27820)

(assert (=> b!816184 (= lt!365559 (lemmaNoChangeToArrayThenSameMapNoExtras!346 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2230 (array!44888 array!44890 (_ BitVec 32) (_ BitVec 32) V!24139 V!24139 (_ BitVec 32) Int) ListLongMap!8331)

(assert (=> b!816184 (= lt!365562 (getCurrentListMapNoExtraKeys!2230 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816184 (= lt!365558 (getCurrentListMapNoExtraKeys!2230 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816185 () Bool)

(declare-fun res!557354 () Bool)

(assert (=> b!816185 (=> (not res!557354) (not e!452753))))

(declare-datatypes ((List!15363 0))(
  ( (Nil!15360) (Cons!15359 (h!16488 (_ BitVec 64)) (t!21694 List!15363)) )
))
(declare-fun arrayNoDuplicates!0 (array!44888 (_ BitVec 32) List!15363) Bool)

(assert (=> b!816185 (= res!557354 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15360))))

(declare-fun mapIsEmpty!23119 () Bool)

(declare-fun mapRes!23119 () Bool)

(assert (=> mapIsEmpty!23119 mapRes!23119))

(declare-fun b!816186 () Bool)

(declare-fun res!557353 () Bool)

(assert (=> b!816186 (=> (not res!557353) (not e!452753))))

(assert (=> b!816186 (= res!557353 (and (= (size!21919 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21918 _keys!976) (size!21919 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!557355 () Bool)

(assert (=> start!70292 (=> (not res!557355) (not e!452753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70292 (= res!557355 (validMask!0 mask!1312))))

(assert (=> start!70292 e!452753))

(declare-fun tp_is_empty!14353 () Bool)

(assert (=> start!70292 tp_is_empty!14353))

(declare-fun array_inv!17179 (array!44888) Bool)

(assert (=> start!70292 (array_inv!17179 _keys!976)))

(assert (=> start!70292 true))

(declare-fun e!452749 () Bool)

(declare-fun array_inv!17180 (array!44890) Bool)

(assert (=> start!70292 (and (array_inv!17180 _values!788) e!452749)))

(assert (=> start!70292 tp!44652))

(declare-fun b!816187 () Bool)

(declare-fun e!452750 () Bool)

(assert (=> b!816187 (= e!452750 tp_is_empty!14353)))

(declare-fun b!816188 () Bool)

(declare-fun e!452752 () Bool)

(assert (=> b!816188 (= e!452749 (and e!452752 mapRes!23119))))

(declare-fun condMapEmpty!23119 () Bool)

(declare-fun mapDefault!23119 () ValueCell!6761)

