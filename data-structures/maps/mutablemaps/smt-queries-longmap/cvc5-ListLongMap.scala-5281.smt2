; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70880 () Bool)

(assert start!70880)

(declare-fun b_free!13093 () Bool)

(declare-fun b_next!13093 () Bool)

(assert (=> start!70880 (= b_free!13093 (not b_next!13093))))

(declare-fun tp!46027 () Bool)

(declare-fun b_and!21995 () Bool)

(assert (=> start!70880 (= tp!46027 b_and!21995)))

(declare-fun b!822812 () Bool)

(declare-fun res!561263 () Bool)

(declare-fun e!457579 () Bool)

(assert (=> b!822812 (=> (not res!561263) (not e!457579))))

(declare-datatypes ((array!45760 0))(
  ( (array!45761 (arr!21925 (Array (_ BitVec 32) (_ BitVec 64))) (size!22346 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45760)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24739 0))(
  ( (V!24740 (val!7449 Int)) )
))
(declare-datatypes ((ValueCell!6986 0))(
  ( (ValueCellFull!6986 (v!9877 V!24739)) (EmptyCell!6986) )
))
(declare-datatypes ((array!45762 0))(
  ( (array!45763 (arr!21926 (Array (_ BitVec 32) ValueCell!6986)) (size!22347 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45762)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822812 (= res!561263 (and (= (size!22347 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22346 _keys!976) (size!22347 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822813 () Bool)

(declare-fun e!457582 () Bool)

(assert (=> b!822813 (= e!457579 (not e!457582))))

(declare-fun res!561264 () Bool)

(assert (=> b!822813 (=> res!561264 e!457582)))

(assert (=> b!822813 (= res!561264 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9836 0))(
  ( (tuple2!9837 (_1!4928 (_ BitVec 64)) (_2!4928 V!24739)) )
))
(declare-datatypes ((List!15695 0))(
  ( (Nil!15692) (Cons!15691 (h!16820 tuple2!9836) (t!22042 List!15695)) )
))
(declare-datatypes ((ListLongMap!8673 0))(
  ( (ListLongMap!8674 (toList!4352 List!15695)) )
))
(declare-fun lt!370649 () ListLongMap!8673)

(declare-fun lt!370650 () ListLongMap!8673)

(assert (=> b!822813 (= lt!370649 lt!370650)))

(declare-fun zeroValueBefore!34 () V!24739)

(declare-fun zeroValueAfter!34 () V!24739)

(declare-fun minValue!754 () V!24739)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28148 0))(
  ( (Unit!28149) )
))
(declare-fun lt!370654 () Unit!28148)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!493 (array!45760 array!45762 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24739 V!24739 V!24739 V!24739 (_ BitVec 32) Int) Unit!28148)

(assert (=> b!822813 (= lt!370654 (lemmaNoChangeToArrayThenSameMapNoExtras!493 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2377 (array!45760 array!45762 (_ BitVec 32) (_ BitVec 32) V!24739 V!24739 (_ BitVec 32) Int) ListLongMap!8673)

(assert (=> b!822813 (= lt!370650 (getCurrentListMapNoExtraKeys!2377 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822813 (= lt!370649 (getCurrentListMapNoExtraKeys!2377 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23818 () Bool)

(declare-fun mapRes!23818 () Bool)

(assert (=> mapIsEmpty!23818 mapRes!23818))

(declare-fun b!822814 () Bool)

(declare-fun res!561262 () Bool)

(assert (=> b!822814 (=> (not res!561262) (not e!457579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45760 (_ BitVec 32)) Bool)

(assert (=> b!822814 (= res!561262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23818 () Bool)

(declare-fun tp!46026 () Bool)

(declare-fun e!457581 () Bool)

(assert (=> mapNonEmpty!23818 (= mapRes!23818 (and tp!46026 e!457581))))

(declare-fun mapKey!23818 () (_ BitVec 32))

(declare-fun mapRest!23818 () (Array (_ BitVec 32) ValueCell!6986))

(declare-fun mapValue!23818 () ValueCell!6986)

(assert (=> mapNonEmpty!23818 (= (arr!21926 _values!788) (store mapRest!23818 mapKey!23818 mapValue!23818))))

(declare-fun b!822815 () Bool)

(assert (=> b!822815 (= e!457582 true)))

(declare-fun lt!370655 () ListLongMap!8673)

(declare-fun lt!370652 () ListLongMap!8673)

(declare-fun lt!370656 () tuple2!9836)

(declare-fun +!1854 (ListLongMap!8673 tuple2!9836) ListLongMap!8673)

(assert (=> b!822815 (= lt!370655 (+!1854 lt!370652 lt!370656))))

(declare-fun lt!370648 () Unit!28148)

(declare-fun addCommutativeForDiffKeys!449 (ListLongMap!8673 (_ BitVec 64) V!24739 (_ BitVec 64) V!24739) Unit!28148)

(assert (=> b!822815 (= lt!370648 (addCommutativeForDiffKeys!449 lt!370649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370657 () ListLongMap!8673)

(assert (=> b!822815 (= lt!370657 lt!370655)))

(declare-fun lt!370651 () tuple2!9836)

(assert (=> b!822815 (= lt!370655 (+!1854 (+!1854 lt!370649 lt!370656) lt!370651))))

(assert (=> b!822815 (= lt!370656 (tuple2!9837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370653 () ListLongMap!8673)

(assert (=> b!822815 (= lt!370653 lt!370652)))

(assert (=> b!822815 (= lt!370652 (+!1854 lt!370649 lt!370651))))

(assert (=> b!822815 (= lt!370651 (tuple2!9837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2484 (array!45760 array!45762 (_ BitVec 32) (_ BitVec 32) V!24739 V!24739 (_ BitVec 32) Int) ListLongMap!8673)

(assert (=> b!822815 (= lt!370657 (getCurrentListMap!2484 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822815 (= lt!370653 (getCurrentListMap!2484 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561261 () Bool)

(assert (=> start!70880 (=> (not res!561261) (not e!457579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70880 (= res!561261 (validMask!0 mask!1312))))

(assert (=> start!70880 e!457579))

(declare-fun tp_is_empty!14803 () Bool)

(assert (=> start!70880 tp_is_empty!14803))

(declare-fun array_inv!17479 (array!45760) Bool)

(assert (=> start!70880 (array_inv!17479 _keys!976)))

(assert (=> start!70880 true))

(declare-fun e!457578 () Bool)

(declare-fun array_inv!17480 (array!45762) Bool)

(assert (=> start!70880 (and (array_inv!17480 _values!788) e!457578)))

(assert (=> start!70880 tp!46027))

(declare-fun b!822816 () Bool)

(declare-fun e!457577 () Bool)

(assert (=> b!822816 (= e!457577 tp_is_empty!14803)))

(declare-fun b!822817 () Bool)

(declare-fun res!561260 () Bool)

(assert (=> b!822817 (=> (not res!561260) (not e!457579))))

(declare-datatypes ((List!15696 0))(
  ( (Nil!15693) (Cons!15692 (h!16821 (_ BitVec 64)) (t!22043 List!15696)) )
))
(declare-fun arrayNoDuplicates!0 (array!45760 (_ BitVec 32) List!15696) Bool)

(assert (=> b!822817 (= res!561260 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15693))))

(declare-fun b!822818 () Bool)

(assert (=> b!822818 (= e!457578 (and e!457577 mapRes!23818))))

(declare-fun condMapEmpty!23818 () Bool)

(declare-fun mapDefault!23818 () ValueCell!6986)

