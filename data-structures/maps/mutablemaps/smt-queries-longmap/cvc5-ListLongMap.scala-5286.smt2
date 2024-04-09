; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70910 () Bool)

(assert start!70910)

(declare-fun b_free!13123 () Bool)

(declare-fun b_next!13123 () Bool)

(assert (=> start!70910 (= b_free!13123 (not b_next!13123))))

(declare-fun tp!46116 () Bool)

(declare-fun b_and!22025 () Bool)

(assert (=> start!70910 (= tp!46116 b_and!22025)))

(declare-fun b!823172 () Bool)

(declare-fun e!457847 () Bool)

(declare-fun e!457850 () Bool)

(assert (=> b!823172 (= e!457847 (not e!457850))))

(declare-fun res!561485 () Bool)

(assert (=> b!823172 (=> res!561485 e!457850)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!823172 (= res!561485 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24779 0))(
  ( (V!24780 (val!7464 Int)) )
))
(declare-datatypes ((tuple2!9864 0))(
  ( (tuple2!9865 (_1!4942 (_ BitVec 64)) (_2!4942 V!24779)) )
))
(declare-datatypes ((List!15722 0))(
  ( (Nil!15719) (Cons!15718 (h!16847 tuple2!9864) (t!22069 List!15722)) )
))
(declare-datatypes ((ListLongMap!8701 0))(
  ( (ListLongMap!8702 (toList!4366 List!15722)) )
))
(declare-fun lt!371106 () ListLongMap!8701)

(declare-fun lt!371102 () ListLongMap!8701)

(assert (=> b!823172 (= lt!371106 lt!371102)))

(declare-fun zeroValueBefore!34 () V!24779)

(declare-datatypes ((Unit!28176 0))(
  ( (Unit!28177) )
))
(declare-fun lt!371105 () Unit!28176)

(declare-datatypes ((array!45818 0))(
  ( (array!45819 (arr!21954 (Array (_ BitVec 32) (_ BitVec 64))) (size!22375 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45818)

(declare-fun zeroValueAfter!34 () V!24779)

(declare-fun minValue!754 () V!24779)

(declare-datatypes ((ValueCell!7001 0))(
  ( (ValueCellFull!7001 (v!9892 V!24779)) (EmptyCell!7001) )
))
(declare-datatypes ((array!45820 0))(
  ( (array!45821 (arr!21955 (Array (_ BitVec 32) ValueCell!7001)) (size!22376 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45820)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!504 (array!45818 array!45820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24779 V!24779 V!24779 V!24779 (_ BitVec 32) Int) Unit!28176)

(assert (=> b!823172 (= lt!371105 (lemmaNoChangeToArrayThenSameMapNoExtras!504 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2388 (array!45818 array!45820 (_ BitVec 32) (_ BitVec 32) V!24779 V!24779 (_ BitVec 32) Int) ListLongMap!8701)

(assert (=> b!823172 (= lt!371102 (getCurrentListMapNoExtraKeys!2388 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823172 (= lt!371106 (getCurrentListMapNoExtraKeys!2388 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823173 () Bool)

(declare-fun e!457849 () Bool)

(declare-fun tp_is_empty!14833 () Bool)

(assert (=> b!823173 (= e!457849 tp_is_empty!14833)))

(declare-fun b!823174 () Bool)

(declare-fun res!561489 () Bool)

(assert (=> b!823174 (=> (not res!561489) (not e!457847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45818 (_ BitVec 32)) Bool)

(assert (=> b!823174 (= res!561489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823175 () Bool)

(assert (=> b!823175 (= e!457850 true)))

(declare-fun lt!371103 () ListLongMap!8701)

(declare-fun lt!371100 () ListLongMap!8701)

(declare-fun lt!371104 () tuple2!9864)

(declare-fun +!1868 (ListLongMap!8701 tuple2!9864) ListLongMap!8701)

(assert (=> b!823175 (= lt!371103 (+!1868 lt!371100 lt!371104))))

(declare-fun lt!371107 () Unit!28176)

(declare-fun addCommutativeForDiffKeys!463 (ListLongMap!8701 (_ BitVec 64) V!24779 (_ BitVec 64) V!24779) Unit!28176)

(assert (=> b!823175 (= lt!371107 (addCommutativeForDiffKeys!463 lt!371106 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371099 () ListLongMap!8701)

(assert (=> b!823175 (= lt!371099 lt!371103)))

(declare-fun lt!371098 () tuple2!9864)

(assert (=> b!823175 (= lt!371103 (+!1868 (+!1868 lt!371106 lt!371104) lt!371098))))

(assert (=> b!823175 (= lt!371104 (tuple2!9865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371101 () ListLongMap!8701)

(assert (=> b!823175 (= lt!371101 lt!371100)))

(assert (=> b!823175 (= lt!371100 (+!1868 lt!371106 lt!371098))))

(assert (=> b!823175 (= lt!371098 (tuple2!9865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2498 (array!45818 array!45820 (_ BitVec 32) (_ BitVec 32) V!24779 V!24779 (_ BitVec 32) Int) ListLongMap!8701)

(assert (=> b!823175 (= lt!371099 (getCurrentListMap!2498 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823175 (= lt!371101 (getCurrentListMap!2498 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823176 () Bool)

(declare-fun e!457848 () Bool)

(assert (=> b!823176 (= e!457848 tp_is_empty!14833)))

(declare-fun mapIsEmpty!23863 () Bool)

(declare-fun mapRes!23863 () Bool)

(assert (=> mapIsEmpty!23863 mapRes!23863))

(declare-fun b!823177 () Bool)

(declare-fun e!457852 () Bool)

(assert (=> b!823177 (= e!457852 (and e!457849 mapRes!23863))))

(declare-fun condMapEmpty!23863 () Bool)

(declare-fun mapDefault!23863 () ValueCell!7001)

