; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70796 () Bool)

(assert start!70796)

(declare-fun b_free!13029 () Bool)

(declare-fun b_next!13029 () Bool)

(assert (=> start!70796 (= b_free!13029 (not b_next!13029))))

(declare-fun tp!45831 () Bool)

(declare-fun b_and!21919 () Bool)

(assert (=> start!70796 (= tp!45831 b_and!21919)))

(declare-fun b!821863 () Bool)

(declare-fun res!560702 () Bool)

(declare-fun e!456893 () Bool)

(assert (=> b!821863 (=> (not res!560702) (not e!456893))))

(declare-datatypes ((array!45632 0))(
  ( (array!45633 (arr!21862 (Array (_ BitVec 32) (_ BitVec 64))) (size!22283 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45632)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45632 (_ BitVec 32)) Bool)

(assert (=> b!821863 (= res!560702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821864 () Bool)

(declare-fun e!456889 () Bool)

(assert (=> b!821864 (= e!456893 (not e!456889))))

(declare-fun res!560703 () Bool)

(assert (=> b!821864 (=> res!560703 e!456889)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821864 (= res!560703 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24653 0))(
  ( (V!24654 (val!7417 Int)) )
))
(declare-datatypes ((tuple2!9784 0))(
  ( (tuple2!9785 (_1!4902 (_ BitVec 64)) (_2!4902 V!24653)) )
))
(declare-datatypes ((List!15644 0))(
  ( (Nil!15641) (Cons!15640 (h!16769 tuple2!9784) (t!21989 List!15644)) )
))
(declare-datatypes ((ListLongMap!8621 0))(
  ( (ListLongMap!8622 (toList!4326 List!15644)) )
))
(declare-fun lt!369537 () ListLongMap!8621)

(declare-fun lt!369534 () ListLongMap!8621)

(assert (=> b!821864 (= lt!369537 lt!369534)))

(declare-fun zeroValueBefore!34 () V!24653)

(declare-fun zeroValueAfter!34 () V!24653)

(declare-fun minValue!754 () V!24653)

(declare-datatypes ((ValueCell!6954 0))(
  ( (ValueCellFull!6954 (v!9844 V!24653)) (EmptyCell!6954) )
))
(declare-datatypes ((array!45634 0))(
  ( (array!45635 (arr!21863 (Array (_ BitVec 32) ValueCell!6954)) (size!22284 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45634)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28094 0))(
  ( (Unit!28095) )
))
(declare-fun lt!369538 () Unit!28094)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!470 (array!45632 array!45634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24653 V!24653 V!24653 V!24653 (_ BitVec 32) Int) Unit!28094)

(assert (=> b!821864 (= lt!369538 (lemmaNoChangeToArrayThenSameMapNoExtras!470 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2354 (array!45632 array!45634 (_ BitVec 32) (_ BitVec 32) V!24653 V!24653 (_ BitVec 32) Int) ListLongMap!8621)

(assert (=> b!821864 (= lt!369534 (getCurrentListMapNoExtraKeys!2354 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821864 (= lt!369537 (getCurrentListMapNoExtraKeys!2354 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23719 () Bool)

(declare-fun mapRes!23719 () Bool)

(assert (=> mapIsEmpty!23719 mapRes!23719))

(declare-fun b!821865 () Bool)

(declare-fun res!560704 () Bool)

(assert (=> b!821865 (=> (not res!560704) (not e!456893))))

(assert (=> b!821865 (= res!560704 (and (= (size!22284 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22283 _keys!976) (size!22284 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!560701 () Bool)

(assert (=> start!70796 (=> (not res!560701) (not e!456893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70796 (= res!560701 (validMask!0 mask!1312))))

(assert (=> start!70796 e!456893))

(declare-fun tp_is_empty!14739 () Bool)

(assert (=> start!70796 tp_is_empty!14739))

(declare-fun array_inv!17435 (array!45632) Bool)

(assert (=> start!70796 (array_inv!17435 _keys!976)))

(assert (=> start!70796 true))

(declare-fun e!456888 () Bool)

(declare-fun array_inv!17436 (array!45634) Bool)

(assert (=> start!70796 (and (array_inv!17436 _values!788) e!456888)))

(assert (=> start!70796 tp!45831))

(declare-fun b!821866 () Bool)

(assert (=> b!821866 (= e!456889 true)))

(declare-fun lt!369539 () ListLongMap!8621)

(declare-fun lt!369535 () ListLongMap!8621)

(declare-fun lt!369540 () tuple2!9784)

(declare-fun +!1831 (ListLongMap!8621 tuple2!9784) ListLongMap!8621)

(assert (=> b!821866 (= lt!369539 (+!1831 lt!369535 lt!369540))))

(declare-fun lt!369533 () Unit!28094)

(declare-fun addCommutativeForDiffKeys!426 (ListLongMap!8621 (_ BitVec 64) V!24653 (_ BitVec 64) V!24653) Unit!28094)

(assert (=> b!821866 (= lt!369533 (addCommutativeForDiffKeys!426 lt!369537 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369541 () ListLongMap!8621)

(assert (=> b!821866 (= lt!369541 lt!369539)))

(declare-fun lt!369542 () tuple2!9784)

(assert (=> b!821866 (= lt!369539 (+!1831 (+!1831 lt!369537 lt!369540) lt!369542))))

(assert (=> b!821866 (= lt!369540 (tuple2!9785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369536 () ListLongMap!8621)

(assert (=> b!821866 (= lt!369536 lt!369535)))

(assert (=> b!821866 (= lt!369535 (+!1831 lt!369537 lt!369542))))

(assert (=> b!821866 (= lt!369542 (tuple2!9785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2461 (array!45632 array!45634 (_ BitVec 32) (_ BitVec 32) V!24653 V!24653 (_ BitVec 32) Int) ListLongMap!8621)

(assert (=> b!821866 (= lt!369541 (getCurrentListMap!2461 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821866 (= lt!369536 (getCurrentListMap!2461 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821867 () Bool)

(declare-fun e!456892 () Bool)

(assert (=> b!821867 (= e!456892 tp_is_empty!14739)))

(declare-fun b!821868 () Bool)

(declare-fun e!456891 () Bool)

(assert (=> b!821868 (= e!456888 (and e!456891 mapRes!23719))))

(declare-fun condMapEmpty!23719 () Bool)

(declare-fun mapDefault!23719 () ValueCell!6954)

(assert (=> b!821868 (= condMapEmpty!23719 (= (arr!21863 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6954)) mapDefault!23719)))))

(declare-fun b!821869 () Bool)

(declare-fun res!560705 () Bool)

(assert (=> b!821869 (=> (not res!560705) (not e!456893))))

(declare-datatypes ((List!15645 0))(
  ( (Nil!15642) (Cons!15641 (h!16770 (_ BitVec 64)) (t!21990 List!15645)) )
))
(declare-fun arrayNoDuplicates!0 (array!45632 (_ BitVec 32) List!15645) Bool)

(assert (=> b!821869 (= res!560705 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15642))))

(declare-fun b!821870 () Bool)

(assert (=> b!821870 (= e!456891 tp_is_empty!14739)))

(declare-fun mapNonEmpty!23719 () Bool)

(declare-fun tp!45832 () Bool)

(assert (=> mapNonEmpty!23719 (= mapRes!23719 (and tp!45832 e!456892))))

(declare-fun mapRest!23719 () (Array (_ BitVec 32) ValueCell!6954))

(declare-fun mapKey!23719 () (_ BitVec 32))

(declare-fun mapValue!23719 () ValueCell!6954)

(assert (=> mapNonEmpty!23719 (= (arr!21863 _values!788) (store mapRest!23719 mapKey!23719 mapValue!23719))))

(assert (= (and start!70796 res!560701) b!821865))

(assert (= (and b!821865 res!560704) b!821863))

(assert (= (and b!821863 res!560702) b!821869))

(assert (= (and b!821869 res!560705) b!821864))

(assert (= (and b!821864 (not res!560703)) b!821866))

(assert (= (and b!821868 condMapEmpty!23719) mapIsEmpty!23719))

(assert (= (and b!821868 (not condMapEmpty!23719)) mapNonEmpty!23719))

(get-info :version)

(assert (= (and mapNonEmpty!23719 ((_ is ValueCellFull!6954) mapValue!23719)) b!821867))

(assert (= (and b!821868 ((_ is ValueCellFull!6954) mapDefault!23719)) b!821870))

(assert (= start!70796 b!821868))

(declare-fun m!763671 () Bool)

(assert (=> b!821863 m!763671))

(declare-fun m!763673 () Bool)

(assert (=> start!70796 m!763673))

(declare-fun m!763675 () Bool)

(assert (=> start!70796 m!763675))

(declare-fun m!763677 () Bool)

(assert (=> start!70796 m!763677))

(declare-fun m!763679 () Bool)

(assert (=> b!821866 m!763679))

(declare-fun m!763681 () Bool)

(assert (=> b!821866 m!763681))

(declare-fun m!763683 () Bool)

(assert (=> b!821866 m!763683))

(declare-fun m!763685 () Bool)

(assert (=> b!821866 m!763685))

(declare-fun m!763687 () Bool)

(assert (=> b!821866 m!763687))

(declare-fun m!763689 () Bool)

(assert (=> b!821866 m!763689))

(declare-fun m!763691 () Bool)

(assert (=> b!821866 m!763691))

(assert (=> b!821866 m!763689))

(declare-fun m!763693 () Bool)

(assert (=> b!821864 m!763693))

(declare-fun m!763695 () Bool)

(assert (=> b!821864 m!763695))

(declare-fun m!763697 () Bool)

(assert (=> b!821864 m!763697))

(declare-fun m!763699 () Bool)

(assert (=> b!821869 m!763699))

(declare-fun m!763701 () Bool)

(assert (=> mapNonEmpty!23719 m!763701))

(check-sat (not mapNonEmpty!23719) tp_is_empty!14739 b_and!21919 (not b!821864) (not b_next!13029) (not start!70796) (not b!821869) (not b!821866) (not b!821863))
(check-sat b_and!21919 (not b_next!13029))
