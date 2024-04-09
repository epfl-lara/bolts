; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70886 () Bool)

(assert start!70886)

(declare-fun b_free!13099 () Bool)

(declare-fun b_next!13099 () Bool)

(assert (=> start!70886 (= b_free!13099 (not b_next!13099))))

(declare-fun tp!46045 () Bool)

(declare-fun b_and!22001 () Bool)

(assert (=> start!70886 (= tp!46045 b_and!22001)))

(declare-fun b!822884 () Bool)

(declare-fun e!457636 () Bool)

(declare-fun tp_is_empty!14809 () Bool)

(assert (=> b!822884 (= e!457636 tp_is_empty!14809)))

(declare-fun b!822885 () Bool)

(declare-fun res!561305 () Bool)

(declare-fun e!457635 () Bool)

(assert (=> b!822885 (=> (not res!561305) (not e!457635))))

(declare-datatypes ((array!45772 0))(
  ( (array!45773 (arr!21931 (Array (_ BitVec 32) (_ BitVec 64))) (size!22352 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45772)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45772 (_ BitVec 32)) Bool)

(assert (=> b!822885 (= res!561305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23827 () Bool)

(declare-fun mapRes!23827 () Bool)

(declare-fun tp!46044 () Bool)

(assert (=> mapNonEmpty!23827 (= mapRes!23827 (and tp!46044 e!457636))))

(declare-datatypes ((V!24747 0))(
  ( (V!24748 (val!7452 Int)) )
))
(declare-datatypes ((ValueCell!6989 0))(
  ( (ValueCellFull!6989 (v!9880 V!24747)) (EmptyCell!6989) )
))
(declare-datatypes ((array!45774 0))(
  ( (array!45775 (arr!21932 (Array (_ BitVec 32) ValueCell!6989)) (size!22353 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45774)

(declare-fun mapKey!23827 () (_ BitVec 32))

(declare-fun mapValue!23827 () ValueCell!6989)

(declare-fun mapRest!23827 () (Array (_ BitVec 32) ValueCell!6989))

(assert (=> mapNonEmpty!23827 (= (arr!21932 _values!788) (store mapRest!23827 mapKey!23827 mapValue!23827))))

(declare-fun b!822886 () Bool)

(declare-fun e!457633 () Bool)

(assert (=> b!822886 (= e!457633 true)))

(declare-datatypes ((tuple2!9842 0))(
  ( (tuple2!9843 (_1!4931 (_ BitVec 64)) (_2!4931 V!24747)) )
))
(declare-datatypes ((List!15701 0))(
  ( (Nil!15698) (Cons!15697 (h!16826 tuple2!9842) (t!22048 List!15701)) )
))
(declare-datatypes ((ListLongMap!8679 0))(
  ( (ListLongMap!8680 (toList!4355 List!15701)) )
))
(declare-fun lt!370744 () ListLongMap!8679)

(declare-fun lt!370743 () ListLongMap!8679)

(declare-fun lt!370740 () tuple2!9842)

(declare-fun +!1857 (ListLongMap!8679 tuple2!9842) ListLongMap!8679)

(assert (=> b!822886 (= lt!370744 (+!1857 lt!370743 lt!370740))))

(declare-datatypes ((Unit!28154 0))(
  ( (Unit!28155) )
))
(declare-fun lt!370739 () Unit!28154)

(declare-fun zeroValueAfter!34 () V!24747)

(declare-fun minValue!754 () V!24747)

(declare-fun lt!370745 () ListLongMap!8679)

(declare-fun addCommutativeForDiffKeys!452 (ListLongMap!8679 (_ BitVec 64) V!24747 (_ BitVec 64) V!24747) Unit!28154)

(assert (=> b!822886 (= lt!370739 (addCommutativeForDiffKeys!452 lt!370745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370742 () ListLongMap!8679)

(assert (=> b!822886 (= lt!370742 lt!370744)))

(declare-fun lt!370741 () tuple2!9842)

(assert (=> b!822886 (= lt!370744 (+!1857 (+!1857 lt!370745 lt!370740) lt!370741))))

(assert (=> b!822886 (= lt!370740 (tuple2!9843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370746 () ListLongMap!8679)

(assert (=> b!822886 (= lt!370746 lt!370743)))

(assert (=> b!822886 (= lt!370743 (+!1857 lt!370745 lt!370741))))

(assert (=> b!822886 (= lt!370741 (tuple2!9843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2487 (array!45772 array!45774 (_ BitVec 32) (_ BitVec 32) V!24747 V!24747 (_ BitVec 32) Int) ListLongMap!8679)

(assert (=> b!822886 (= lt!370742 (getCurrentListMap!2487 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24747)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822886 (= lt!370746 (getCurrentListMap!2487 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822887 () Bool)

(declare-fun e!457632 () Bool)

(declare-fun e!457631 () Bool)

(assert (=> b!822887 (= e!457632 (and e!457631 mapRes!23827))))

(declare-fun condMapEmpty!23827 () Bool)

(declare-fun mapDefault!23827 () ValueCell!6989)

