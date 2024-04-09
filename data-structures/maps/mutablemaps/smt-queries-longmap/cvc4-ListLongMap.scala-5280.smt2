; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70878 () Bool)

(assert start!70878)

(declare-fun b_free!13091 () Bool)

(declare-fun b_next!13091 () Bool)

(assert (=> start!70878 (= b_free!13091 (not b_next!13091))))

(declare-fun tp!46020 () Bool)

(declare-fun b_and!21993 () Bool)

(assert (=> start!70878 (= tp!46020 b_and!21993)))

(declare-fun b!822788 () Bool)

(declare-fun e!457564 () Bool)

(declare-fun tp_is_empty!14801 () Bool)

(assert (=> b!822788 (= e!457564 tp_is_empty!14801)))

(declare-fun b!822789 () Bool)

(declare-fun res!561249 () Bool)

(declare-fun e!457559 () Bool)

(assert (=> b!822789 (=> (not res!561249) (not e!457559))))

(declare-datatypes ((array!45756 0))(
  ( (array!45757 (arr!21923 (Array (_ BitVec 32) (_ BitVec 64))) (size!22344 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45756)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45756 (_ BitVec 32)) Bool)

(assert (=> b!822789 (= res!561249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23815 () Bool)

(declare-fun mapRes!23815 () Bool)

(declare-fun tp!46021 () Bool)

(assert (=> mapNonEmpty!23815 (= mapRes!23815 (and tp!46021 e!457564))))

(declare-fun mapKey!23815 () (_ BitVec 32))

(declare-datatypes ((V!24735 0))(
  ( (V!24736 (val!7448 Int)) )
))
(declare-datatypes ((ValueCell!6985 0))(
  ( (ValueCellFull!6985 (v!9876 V!24735)) (EmptyCell!6985) )
))
(declare-fun mapValue!23815 () ValueCell!6985)

(declare-fun mapRest!23815 () (Array (_ BitVec 32) ValueCell!6985))

(declare-datatypes ((array!45758 0))(
  ( (array!45759 (arr!21924 (Array (_ BitVec 32) ValueCell!6985)) (size!22345 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45758)

(assert (=> mapNonEmpty!23815 (= (arr!21924 _values!788) (store mapRest!23815 mapKey!23815 mapValue!23815))))

(declare-fun b!822790 () Bool)

(declare-fun e!457561 () Bool)

(assert (=> b!822790 (= e!457561 true)))

(declare-datatypes ((tuple2!9834 0))(
  ( (tuple2!9835 (_1!4927 (_ BitVec 64)) (_2!4927 V!24735)) )
))
(declare-datatypes ((List!15694 0))(
  ( (Nil!15691) (Cons!15690 (h!16819 tuple2!9834) (t!22041 List!15694)) )
))
(declare-datatypes ((ListLongMap!8671 0))(
  ( (ListLongMap!8672 (toList!4351 List!15694)) )
))
(declare-fun lt!370626 () ListLongMap!8671)

(declare-fun lt!370627 () ListLongMap!8671)

(declare-fun lt!370623 () tuple2!9834)

(declare-fun +!1853 (ListLongMap!8671 tuple2!9834) ListLongMap!8671)

(assert (=> b!822790 (= lt!370626 (+!1853 lt!370627 lt!370623))))

(declare-fun minValue!754 () V!24735)

(declare-datatypes ((Unit!28146 0))(
  ( (Unit!28147) )
))
(declare-fun lt!370619 () Unit!28146)

(declare-fun zeroValueAfter!34 () V!24735)

(declare-fun lt!370622 () ListLongMap!8671)

(declare-fun addCommutativeForDiffKeys!448 (ListLongMap!8671 (_ BitVec 64) V!24735 (_ BitVec 64) V!24735) Unit!28146)

(assert (=> b!822790 (= lt!370619 (addCommutativeForDiffKeys!448 lt!370622 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370620 () ListLongMap!8671)

(assert (=> b!822790 (= lt!370620 lt!370626)))

(declare-fun lt!370621 () tuple2!9834)

(assert (=> b!822790 (= lt!370626 (+!1853 (+!1853 lt!370622 lt!370623) lt!370621))))

(assert (=> b!822790 (= lt!370623 (tuple2!9835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370625 () ListLongMap!8671)

(assert (=> b!822790 (= lt!370625 lt!370627)))

(assert (=> b!822790 (= lt!370627 (+!1853 lt!370622 lt!370621))))

(assert (=> b!822790 (= lt!370621 (tuple2!9835 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2483 (array!45756 array!45758 (_ BitVec 32) (_ BitVec 32) V!24735 V!24735 (_ BitVec 32) Int) ListLongMap!8671)

(assert (=> b!822790 (= lt!370620 (getCurrentListMap!2483 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24735)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822790 (= lt!370625 (getCurrentListMap!2483 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822791 () Bool)

(declare-fun e!457563 () Bool)

(declare-fun e!457562 () Bool)

(assert (=> b!822791 (= e!457563 (and e!457562 mapRes!23815))))

(declare-fun condMapEmpty!23815 () Bool)

(declare-fun mapDefault!23815 () ValueCell!6985)

