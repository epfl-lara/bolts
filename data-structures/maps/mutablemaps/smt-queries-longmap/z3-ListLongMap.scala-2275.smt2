; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37122 () Bool)

(assert start!37122)

(declare-fun b_free!8241 () Bool)

(declare-fun b_next!8241 () Bool)

(assert (=> start!37122 (= b_free!8241 (not b_next!8241))))

(declare-fun tp!29438 () Bool)

(declare-fun b_and!15501 () Bool)

(assert (=> start!37122 (= tp!29438 b_and!15501)))

(declare-fun b!373663 () Bool)

(declare-fun res!210635 () Bool)

(declare-fun e!227786 () Bool)

(assert (=> b!373663 (=> (not res!210635) (not e!227786))))

(declare-datatypes ((array!21683 0))(
  ( (array!21684 (arr!10307 (Array (_ BitVec 32) (_ BitVec 64))) (size!10659 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21683)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373663 (= res!210635 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373664 () Bool)

(declare-fun e!227783 () Bool)

(declare-fun e!227780 () Bool)

(assert (=> b!373664 (= e!227783 (not e!227780))))

(declare-fun res!210633 () Bool)

(assert (=> b!373664 (=> res!210633 e!227780)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373664 (= res!210633 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12957 0))(
  ( (V!12958 (val!4489 Int)) )
))
(declare-datatypes ((ValueCell!4101 0))(
  ( (ValueCellFull!4101 (v!6682 V!12957)) (EmptyCell!4101) )
))
(declare-datatypes ((array!21685 0))(
  ( (array!21686 (arr!10308 (Array (_ BitVec 32) ValueCell!4101)) (size!10660 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21685)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5940 0))(
  ( (tuple2!5941 (_1!2980 (_ BitVec 64)) (_2!2980 V!12957)) )
))
(declare-datatypes ((List!5813 0))(
  ( (Nil!5810) (Cons!5809 (h!6665 tuple2!5940) (t!10971 List!5813)) )
))
(declare-datatypes ((ListLongMap!4867 0))(
  ( (ListLongMap!4868 (toList!2449 List!5813)) )
))
(declare-fun lt!171916 () ListLongMap!4867)

(declare-fun zeroValue!472 () V!12957)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12957)

(declare-fun getCurrentListMap!1897 (array!21683 array!21685 (_ BitVec 32) (_ BitVec 32) V!12957 V!12957 (_ BitVec 32) Int) ListLongMap!4867)

(assert (=> b!373664 (= lt!171916 (getCurrentListMap!1897 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171923 () array!21683)

(declare-fun lt!171912 () array!21685)

(declare-fun lt!171926 () ListLongMap!4867)

(assert (=> b!373664 (= lt!171926 (getCurrentListMap!1897 lt!171923 lt!171912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171928 () ListLongMap!4867)

(declare-fun lt!171921 () ListLongMap!4867)

(assert (=> b!373664 (and (= lt!171928 lt!171921) (= lt!171921 lt!171928))))

(declare-fun lt!171925 () ListLongMap!4867)

(declare-fun lt!171917 () tuple2!5940)

(declare-fun +!790 (ListLongMap!4867 tuple2!5940) ListLongMap!4867)

(assert (=> b!373664 (= lt!171921 (+!790 lt!171925 lt!171917))))

(declare-fun v!373 () V!12957)

(assert (=> b!373664 (= lt!171917 (tuple2!5941 k0!778 v!373))))

(declare-datatypes ((Unit!11483 0))(
  ( (Unit!11484) )
))
(declare-fun lt!171922 () Unit!11483)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!48 (array!21683 array!21685 (_ BitVec 32) (_ BitVec 32) V!12957 V!12957 (_ BitVec 32) (_ BitVec 64) V!12957 (_ BitVec 32) Int) Unit!11483)

(assert (=> b!373664 (= lt!171922 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!48 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!715 (array!21683 array!21685 (_ BitVec 32) (_ BitVec 32) V!12957 V!12957 (_ BitVec 32) Int) ListLongMap!4867)

(assert (=> b!373664 (= lt!171928 (getCurrentListMapNoExtraKeys!715 lt!171923 lt!171912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373664 (= lt!171912 (array!21686 (store (arr!10308 _values!506) i!548 (ValueCellFull!4101 v!373)) (size!10660 _values!506)))))

(assert (=> b!373664 (= lt!171925 (getCurrentListMapNoExtraKeys!715 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373665 () Bool)

(declare-fun e!227782 () Bool)

(declare-fun e!227787 () Bool)

(declare-fun mapRes!14898 () Bool)

(assert (=> b!373665 (= e!227782 (and e!227787 mapRes!14898))))

(declare-fun condMapEmpty!14898 () Bool)

(declare-fun mapDefault!14898 () ValueCell!4101)

(assert (=> b!373665 (= condMapEmpty!14898 (= (arr!10308 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4101)) mapDefault!14898)))))

(declare-fun b!373666 () Bool)

(declare-fun res!210637 () Bool)

(assert (=> b!373666 (=> (not res!210637) (not e!227786))))

(assert (=> b!373666 (= res!210637 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10659 _keys!658))))))

(declare-fun b!373667 () Bool)

(declare-fun res!210641 () Bool)

(assert (=> b!373667 (=> (not res!210641) (not e!227783))))

(declare-datatypes ((List!5814 0))(
  ( (Nil!5811) (Cons!5810 (h!6666 (_ BitVec 64)) (t!10972 List!5814)) )
))
(declare-fun arrayNoDuplicates!0 (array!21683 (_ BitVec 32) List!5814) Bool)

(assert (=> b!373667 (= res!210641 (arrayNoDuplicates!0 lt!171923 #b00000000000000000000000000000000 Nil!5811))))

(declare-fun b!373668 () Bool)

(declare-fun res!210636 () Bool)

(assert (=> b!373668 (=> (not res!210636) (not e!227786))))

(assert (=> b!373668 (= res!210636 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5811))))

(declare-fun b!373669 () Bool)

(declare-fun e!227784 () Bool)

(assert (=> b!373669 (= e!227780 e!227784)))

(declare-fun res!210634 () Bool)

(assert (=> b!373669 (=> res!210634 e!227784)))

(assert (=> b!373669 (= res!210634 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171918 () ListLongMap!4867)

(declare-fun lt!171913 () ListLongMap!4867)

(assert (=> b!373669 (= lt!171918 lt!171913)))

(declare-fun lt!171919 () ListLongMap!4867)

(assert (=> b!373669 (= lt!171913 (+!790 lt!171919 lt!171917))))

(declare-fun lt!171927 () Unit!11483)

(declare-fun addCommutativeForDiffKeys!219 (ListLongMap!4867 (_ BitVec 64) V!12957 (_ BitVec 64) V!12957) Unit!11483)

(assert (=> b!373669 (= lt!171927 (addCommutativeForDiffKeys!219 lt!171925 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171915 () tuple2!5940)

(assert (=> b!373669 (= lt!171926 (+!790 lt!171918 lt!171915))))

(declare-fun lt!171920 () tuple2!5940)

(assert (=> b!373669 (= lt!171918 (+!790 lt!171921 lt!171920))))

(declare-fun lt!171914 () ListLongMap!4867)

(assert (=> b!373669 (= lt!171916 lt!171914)))

(assert (=> b!373669 (= lt!171914 (+!790 lt!171919 lt!171915))))

(assert (=> b!373669 (= lt!171919 (+!790 lt!171925 lt!171920))))

(assert (=> b!373669 (= lt!171926 (+!790 (+!790 lt!171928 lt!171920) lt!171915))))

(assert (=> b!373669 (= lt!171915 (tuple2!5941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373669 (= lt!171920 (tuple2!5941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373670 () Bool)

(assert (=> b!373670 (= e!227784 true)))

(assert (=> b!373670 (= (+!790 lt!171913 lt!171915) (+!790 lt!171914 lt!171917))))

(declare-fun lt!171924 () Unit!11483)

(assert (=> b!373670 (= lt!171924 (addCommutativeForDiffKeys!219 lt!171919 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373671 () Bool)

(declare-fun res!210638 () Bool)

(assert (=> b!373671 (=> (not res!210638) (not e!227786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21683 (_ BitVec 32)) Bool)

(assert (=> b!373671 (= res!210638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373662 () Bool)

(declare-fun tp_is_empty!8889 () Bool)

(assert (=> b!373662 (= e!227787 tp_is_empty!8889)))

(declare-fun res!210640 () Bool)

(assert (=> start!37122 (=> (not res!210640) (not e!227786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37122 (= res!210640 (validMask!0 mask!970))))

(assert (=> start!37122 e!227786))

(declare-fun array_inv!7606 (array!21685) Bool)

(assert (=> start!37122 (and (array_inv!7606 _values!506) e!227782)))

(assert (=> start!37122 tp!29438))

(assert (=> start!37122 true))

(assert (=> start!37122 tp_is_empty!8889))

(declare-fun array_inv!7607 (array!21683) Bool)

(assert (=> start!37122 (array_inv!7607 _keys!658)))

(declare-fun mapNonEmpty!14898 () Bool)

(declare-fun tp!29439 () Bool)

(declare-fun e!227781 () Bool)

(assert (=> mapNonEmpty!14898 (= mapRes!14898 (and tp!29439 e!227781))))

(declare-fun mapKey!14898 () (_ BitVec 32))

(declare-fun mapRest!14898 () (Array (_ BitVec 32) ValueCell!4101))

(declare-fun mapValue!14898 () ValueCell!4101)

(assert (=> mapNonEmpty!14898 (= (arr!10308 _values!506) (store mapRest!14898 mapKey!14898 mapValue!14898))))

(declare-fun b!373672 () Bool)

(assert (=> b!373672 (= e!227786 e!227783)))

(declare-fun res!210639 () Bool)

(assert (=> b!373672 (=> (not res!210639) (not e!227783))))

(assert (=> b!373672 (= res!210639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171923 mask!970))))

(assert (=> b!373672 (= lt!171923 (array!21684 (store (arr!10307 _keys!658) i!548 k0!778) (size!10659 _keys!658)))))

(declare-fun b!373673 () Bool)

(declare-fun res!210642 () Bool)

(assert (=> b!373673 (=> (not res!210642) (not e!227786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373673 (= res!210642 (validKeyInArray!0 k0!778))))

(declare-fun b!373674 () Bool)

(assert (=> b!373674 (= e!227781 tp_is_empty!8889)))

(declare-fun b!373675 () Bool)

(declare-fun res!210644 () Bool)

(assert (=> b!373675 (=> (not res!210644) (not e!227786))))

(assert (=> b!373675 (= res!210644 (or (= (select (arr!10307 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10307 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373676 () Bool)

(declare-fun res!210643 () Bool)

(assert (=> b!373676 (=> (not res!210643) (not e!227786))))

(assert (=> b!373676 (= res!210643 (and (= (size!10660 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10659 _keys!658) (size!10660 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14898 () Bool)

(assert (=> mapIsEmpty!14898 mapRes!14898))

(assert (= (and start!37122 res!210640) b!373676))

(assert (= (and b!373676 res!210643) b!373671))

(assert (= (and b!373671 res!210638) b!373668))

(assert (= (and b!373668 res!210636) b!373666))

(assert (= (and b!373666 res!210637) b!373673))

(assert (= (and b!373673 res!210642) b!373675))

(assert (= (and b!373675 res!210644) b!373663))

(assert (= (and b!373663 res!210635) b!373672))

(assert (= (and b!373672 res!210639) b!373667))

(assert (= (and b!373667 res!210641) b!373664))

(assert (= (and b!373664 (not res!210633)) b!373669))

(assert (= (and b!373669 (not res!210634)) b!373670))

(assert (= (and b!373665 condMapEmpty!14898) mapIsEmpty!14898))

(assert (= (and b!373665 (not condMapEmpty!14898)) mapNonEmpty!14898))

(get-info :version)

(assert (= (and mapNonEmpty!14898 ((_ is ValueCellFull!4101) mapValue!14898)) b!373674))

(assert (= (and b!373665 ((_ is ValueCellFull!4101) mapDefault!14898)) b!373662))

(assert (= start!37122 b!373665))

(declare-fun m!369761 () Bool)

(assert (=> b!373668 m!369761))

(declare-fun m!369763 () Bool)

(assert (=> b!373675 m!369763))

(declare-fun m!369765 () Bool)

(assert (=> b!373672 m!369765))

(declare-fun m!369767 () Bool)

(assert (=> b!373672 m!369767))

(declare-fun m!369769 () Bool)

(assert (=> b!373663 m!369769))

(declare-fun m!369771 () Bool)

(assert (=> b!373667 m!369771))

(declare-fun m!369773 () Bool)

(assert (=> mapNonEmpty!14898 m!369773))

(declare-fun m!369775 () Bool)

(assert (=> start!37122 m!369775))

(declare-fun m!369777 () Bool)

(assert (=> start!37122 m!369777))

(declare-fun m!369779 () Bool)

(assert (=> start!37122 m!369779))

(declare-fun m!369781 () Bool)

(assert (=> b!373664 m!369781))

(declare-fun m!369783 () Bool)

(assert (=> b!373664 m!369783))

(declare-fun m!369785 () Bool)

(assert (=> b!373664 m!369785))

(declare-fun m!369787 () Bool)

(assert (=> b!373664 m!369787))

(declare-fun m!369789 () Bool)

(assert (=> b!373664 m!369789))

(declare-fun m!369791 () Bool)

(assert (=> b!373664 m!369791))

(declare-fun m!369793 () Bool)

(assert (=> b!373664 m!369793))

(declare-fun m!369795 () Bool)

(assert (=> b!373670 m!369795))

(declare-fun m!369797 () Bool)

(assert (=> b!373670 m!369797))

(declare-fun m!369799 () Bool)

(assert (=> b!373670 m!369799))

(declare-fun m!369801 () Bool)

(assert (=> b!373669 m!369801))

(declare-fun m!369803 () Bool)

(assert (=> b!373669 m!369803))

(declare-fun m!369805 () Bool)

(assert (=> b!373669 m!369805))

(declare-fun m!369807 () Bool)

(assert (=> b!373669 m!369807))

(declare-fun m!369809 () Bool)

(assert (=> b!373669 m!369809))

(assert (=> b!373669 m!369807))

(declare-fun m!369811 () Bool)

(assert (=> b!373669 m!369811))

(declare-fun m!369813 () Bool)

(assert (=> b!373669 m!369813))

(declare-fun m!369815 () Bool)

(assert (=> b!373669 m!369815))

(declare-fun m!369817 () Bool)

(assert (=> b!373671 m!369817))

(declare-fun m!369819 () Bool)

(assert (=> b!373673 m!369819))

(check-sat (not b!373673) (not b!373667) (not b!373669) (not b!373664) (not b!373671) b_and!15501 tp_is_empty!8889 (not b!373668) (not start!37122) (not b_next!8241) (not b!373670) (not b!373672) (not b!373663) (not mapNonEmpty!14898))
(check-sat b_and!15501 (not b_next!8241))
