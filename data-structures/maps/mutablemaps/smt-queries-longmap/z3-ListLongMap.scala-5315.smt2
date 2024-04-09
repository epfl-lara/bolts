; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71156 () Bool)

(assert start!71156)

(declare-fun b_free!13299 () Bool)

(declare-fun b_next!13299 () Bool)

(assert (=> start!71156 (= b_free!13299 (not b_next!13299))))

(declare-fun tp!46657 () Bool)

(declare-fun b_and!22243 () Bool)

(assert (=> start!71156 (= tp!46657 b_and!22243)))

(declare-fun b!825995 () Bool)

(declare-fun e!459918 () Bool)

(declare-fun tp_is_empty!15009 () Bool)

(assert (=> b!825995 (= e!459918 tp_is_empty!15009)))

(declare-datatypes ((V!25013 0))(
  ( (V!25014 (val!7552 Int)) )
))
(declare-datatypes ((tuple2!10006 0))(
  ( (tuple2!10007 (_1!5013 (_ BitVec 64)) (_2!5013 V!25013)) )
))
(declare-datatypes ((List!15847 0))(
  ( (Nil!15844) (Cons!15843 (h!16972 tuple2!10006) (t!22202 List!15847)) )
))
(declare-datatypes ((ListLongMap!8843 0))(
  ( (ListLongMap!8844 (toList!4437 List!15847)) )
))
(declare-fun lt!373515 () ListLongMap!8843)

(declare-fun lt!373520 () tuple2!10006)

(declare-fun e!459920 () Bool)

(declare-fun lt!373517 () tuple2!10006)

(declare-fun b!825997 () Bool)

(declare-fun lt!373514 () ListLongMap!8843)

(declare-fun +!1898 (ListLongMap!8843 tuple2!10006) ListLongMap!8843)

(assert (=> b!825997 (= e!459920 (= lt!373515 (+!1898 (+!1898 lt!373514 lt!373517) lt!373520)))))

(declare-fun mapIsEmpty!24139 () Bool)

(declare-fun mapRes!24139 () Bool)

(assert (=> mapIsEmpty!24139 mapRes!24139))

(declare-fun b!825998 () Bool)

(declare-fun res!563174 () Bool)

(declare-fun e!459921 () Bool)

(assert (=> b!825998 (=> (not res!563174) (not e!459921))))

(declare-datatypes ((array!46160 0))(
  ( (array!46161 (arr!22121 (Array (_ BitVec 32) (_ BitVec 64))) (size!22542 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46160)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7089 0))(
  ( (ValueCellFull!7089 (v!9982 V!25013)) (EmptyCell!7089) )
))
(declare-datatypes ((array!46162 0))(
  ( (array!46163 (arr!22122 (Array (_ BitVec 32) ValueCell!7089)) (size!22543 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46162)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825998 (= res!563174 (and (= (size!22543 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22542 _keys!976) (size!22543 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825999 () Bool)

(declare-fun e!459917 () Bool)

(assert (=> b!825999 (= e!459917 tp_is_empty!15009)))

(declare-fun mapNonEmpty!24139 () Bool)

(declare-fun tp!46656 () Bool)

(assert (=> mapNonEmpty!24139 (= mapRes!24139 (and tp!46656 e!459918))))

(declare-fun mapRest!24139 () (Array (_ BitVec 32) ValueCell!7089))

(declare-fun mapKey!24139 () (_ BitVec 32))

(declare-fun mapValue!24139 () ValueCell!7089)

(assert (=> mapNonEmpty!24139 (= (arr!22122 _values!788) (store mapRest!24139 mapKey!24139 mapValue!24139))))

(declare-fun b!826000 () Bool)

(declare-fun res!563170 () Bool)

(assert (=> b!826000 (=> (not res!563170) (not e!459921))))

(declare-datatypes ((List!15848 0))(
  ( (Nil!15845) (Cons!15844 (h!16973 (_ BitVec 64)) (t!22203 List!15848)) )
))
(declare-fun arrayNoDuplicates!0 (array!46160 (_ BitVec 32) List!15848) Bool)

(assert (=> b!826000 (= res!563170 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15845))))

(declare-fun b!826001 () Bool)

(declare-fun e!459916 () Bool)

(assert (=> b!826001 (= e!459916 (and e!459917 mapRes!24139))))

(declare-fun condMapEmpty!24139 () Bool)

(declare-fun mapDefault!24139 () ValueCell!7089)

(assert (=> b!826001 (= condMapEmpty!24139 (= (arr!22122 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7089)) mapDefault!24139)))))

(declare-fun b!826002 () Bool)

(declare-fun e!459914 () Bool)

(assert (=> b!826002 (= e!459921 (not e!459914))))

(declare-fun res!563173 () Bool)

(assert (=> b!826002 (=> res!563173 e!459914)))

(assert (=> b!826002 (= res!563173 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!373510 () ListLongMap!8843)

(assert (=> b!826002 (= lt!373510 lt!373514)))

(declare-datatypes ((Unit!28313 0))(
  ( (Unit!28314) )
))
(declare-fun lt!373508 () Unit!28313)

(declare-fun zeroValueBefore!34 () V!25013)

(declare-fun zeroValueAfter!34 () V!25013)

(declare-fun minValue!754 () V!25013)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!566 (array!46160 array!46162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25013 V!25013 V!25013 V!25013 (_ BitVec 32) Int) Unit!28313)

(assert (=> b!826002 (= lt!373508 (lemmaNoChangeToArrayThenSameMapNoExtras!566 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2450 (array!46160 array!46162 (_ BitVec 32) (_ BitVec 32) V!25013 V!25013 (_ BitVec 32) Int) ListLongMap!8843)

(assert (=> b!826002 (= lt!373514 (getCurrentListMapNoExtraKeys!2450 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826002 (= lt!373510 (getCurrentListMapNoExtraKeys!2450 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825996 () Bool)

(declare-fun res!563169 () Bool)

(assert (=> b!825996 (=> (not res!563169) (not e!459921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46160 (_ BitVec 32)) Bool)

(assert (=> b!825996 (= res!563169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!563168 () Bool)

(assert (=> start!71156 (=> (not res!563168) (not e!459921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71156 (= res!563168 (validMask!0 mask!1312))))

(assert (=> start!71156 e!459921))

(assert (=> start!71156 tp_is_empty!15009))

(declare-fun array_inv!17623 (array!46160) Bool)

(assert (=> start!71156 (array_inv!17623 _keys!976)))

(assert (=> start!71156 true))

(declare-fun array_inv!17624 (array!46162) Bool)

(assert (=> start!71156 (and (array_inv!17624 _values!788) e!459916)))

(assert (=> start!71156 tp!46657))

(declare-fun b!826003 () Bool)

(assert (=> b!826003 (= e!459914 true)))

(declare-fun lt!373521 () ListLongMap!8843)

(assert (=> b!826003 (= lt!373521 (+!1898 (+!1898 lt!373510 lt!373520) lt!373517))))

(declare-fun lt!373518 () ListLongMap!8843)

(declare-fun lt!373516 () ListLongMap!8843)

(assert (=> b!826003 (and (= lt!373518 lt!373516) (= lt!373515 lt!373516) (= lt!373515 lt!373518))))

(declare-fun lt!373512 () ListLongMap!8843)

(assert (=> b!826003 (= lt!373516 (+!1898 lt!373512 lt!373520))))

(declare-fun lt!373519 () ListLongMap!8843)

(assert (=> b!826003 (= lt!373518 (+!1898 lt!373519 lt!373520))))

(declare-fun lt!373509 () Unit!28313)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!224 (ListLongMap!8843 (_ BitVec 64) V!25013 V!25013) Unit!28313)

(assert (=> b!826003 (= lt!373509 (addSameAsAddTwiceSameKeyDiffValues!224 lt!373519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!826003 e!459920))

(declare-fun res!563171 () Bool)

(assert (=> b!826003 (=> (not res!563171) (not e!459920))))

(declare-fun lt!373511 () ListLongMap!8843)

(assert (=> b!826003 (= res!563171 (= lt!373511 lt!373512))))

(declare-fun lt!373513 () tuple2!10006)

(assert (=> b!826003 (= lt!373512 (+!1898 lt!373519 lt!373513))))

(assert (=> b!826003 (= lt!373519 (+!1898 lt!373510 lt!373517))))

(assert (=> b!826003 (= lt!373520 (tuple2!10007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459915 () Bool)

(assert (=> b!826003 e!459915))

(declare-fun res!563172 () Bool)

(assert (=> b!826003 (=> (not res!563172) (not e!459915))))

(assert (=> b!826003 (= res!563172 (= lt!373511 (+!1898 (+!1898 lt!373510 lt!373513) lt!373517)))))

(assert (=> b!826003 (= lt!373517 (tuple2!10007 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826003 (= lt!373513 (tuple2!10007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2546 (array!46160 array!46162 (_ BitVec 32) (_ BitVec 32) V!25013 V!25013 (_ BitVec 32) Int) ListLongMap!8843)

(assert (=> b!826003 (= lt!373515 (getCurrentListMap!2546 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826003 (= lt!373511 (getCurrentListMap!2546 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826004 () Bool)

(assert (=> b!826004 (= e!459915 (= lt!373515 (+!1898 (+!1898 lt!373514 (tuple2!10007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373517)))))

(assert (= (and start!71156 res!563168) b!825998))

(assert (= (and b!825998 res!563174) b!825996))

(assert (= (and b!825996 res!563169) b!826000))

(assert (= (and b!826000 res!563170) b!826002))

(assert (= (and b!826002 (not res!563173)) b!826003))

(assert (= (and b!826003 res!563172) b!826004))

(assert (= (and b!826003 res!563171) b!825997))

(assert (= (and b!826001 condMapEmpty!24139) mapIsEmpty!24139))

(assert (= (and b!826001 (not condMapEmpty!24139)) mapNonEmpty!24139))

(get-info :version)

(assert (= (and mapNonEmpty!24139 ((_ is ValueCellFull!7089) mapValue!24139)) b!825995))

(assert (= (and b!826001 ((_ is ValueCellFull!7089) mapDefault!24139)) b!825999))

(assert (= start!71156 b!826001))

(declare-fun m!768657 () Bool)

(assert (=> start!71156 m!768657))

(declare-fun m!768659 () Bool)

(assert (=> start!71156 m!768659))

(declare-fun m!768661 () Bool)

(assert (=> start!71156 m!768661))

(declare-fun m!768663 () Bool)

(assert (=> mapNonEmpty!24139 m!768663))

(declare-fun m!768665 () Bool)

(assert (=> b!826000 m!768665))

(declare-fun m!768667 () Bool)

(assert (=> b!825996 m!768667))

(declare-fun m!768669 () Bool)

(assert (=> b!826004 m!768669))

(assert (=> b!826004 m!768669))

(declare-fun m!768671 () Bool)

(assert (=> b!826004 m!768671))

(declare-fun m!768673 () Bool)

(assert (=> b!826002 m!768673))

(declare-fun m!768675 () Bool)

(assert (=> b!826002 m!768675))

(declare-fun m!768677 () Bool)

(assert (=> b!826002 m!768677))

(declare-fun m!768679 () Bool)

(assert (=> b!826003 m!768679))

(declare-fun m!768681 () Bool)

(assert (=> b!826003 m!768681))

(assert (=> b!826003 m!768679))

(declare-fun m!768683 () Bool)

(assert (=> b!826003 m!768683))

(declare-fun m!768685 () Bool)

(assert (=> b!826003 m!768685))

(declare-fun m!768687 () Bool)

(assert (=> b!826003 m!768687))

(declare-fun m!768689 () Bool)

(assert (=> b!826003 m!768689))

(declare-fun m!768691 () Bool)

(assert (=> b!826003 m!768691))

(declare-fun m!768693 () Bool)

(assert (=> b!826003 m!768693))

(assert (=> b!826003 m!768693))

(declare-fun m!768695 () Bool)

(assert (=> b!826003 m!768695))

(declare-fun m!768697 () Bool)

(assert (=> b!826003 m!768697))

(declare-fun m!768699 () Bool)

(assert (=> b!826003 m!768699))

(declare-fun m!768701 () Bool)

(assert (=> b!825997 m!768701))

(assert (=> b!825997 m!768701))

(declare-fun m!768703 () Bool)

(assert (=> b!825997 m!768703))

(check-sat b_and!22243 (not b!825996) (not b!826003) (not mapNonEmpty!24139) (not b!826000) (not b_next!13299) (not b!826002) (not start!71156) tp_is_empty!15009 (not b!825997) (not b!826004))
(check-sat b_and!22243 (not b_next!13299))
