; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37536 () Bool)

(assert start!37536)

(declare-fun b_free!8655 () Bool)

(declare-fun b_next!8655 () Bool)

(assert (=> start!37536 (= b_free!8655 (not b_next!8655))))

(declare-fun tp!30680 () Bool)

(declare-fun b_and!15915 () Bool)

(assert (=> start!37536 (= tp!30680 b_and!15915)))

(declare-fun b!382837 () Bool)

(declare-fun res!217946 () Bool)

(declare-fun e!232591 () Bool)

(assert (=> b!382837 (=> (not res!217946) (not e!232591))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22497 0))(
  ( (array!22498 (arr!10714 (Array (_ BitVec 32) (_ BitVec 64))) (size!11066 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22497)

(assert (=> b!382837 (= res!217946 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11066 _keys!658))))))

(declare-fun res!217951 () Bool)

(assert (=> start!37536 (=> (not res!217951) (not e!232591))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37536 (= res!217951 (validMask!0 mask!970))))

(assert (=> start!37536 e!232591))

(declare-datatypes ((V!13509 0))(
  ( (V!13510 (val!4696 Int)) )
))
(declare-datatypes ((ValueCell!4308 0))(
  ( (ValueCellFull!4308 (v!6889 V!13509)) (EmptyCell!4308) )
))
(declare-datatypes ((array!22499 0))(
  ( (array!22500 (arr!10715 (Array (_ BitVec 32) ValueCell!4308)) (size!11067 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22499)

(declare-fun e!232596 () Bool)

(declare-fun array_inv!7868 (array!22499) Bool)

(assert (=> start!37536 (and (array_inv!7868 _values!506) e!232596)))

(assert (=> start!37536 tp!30680))

(assert (=> start!37536 true))

(declare-fun tp_is_empty!9303 () Bool)

(assert (=> start!37536 tp_is_empty!9303))

(declare-fun array_inv!7869 (array!22497) Bool)

(assert (=> start!37536 (array_inv!7869 _keys!658)))

(declare-fun b!382838 () Bool)

(declare-fun e!232595 () Bool)

(declare-fun mapRes!15519 () Bool)

(assert (=> b!382838 (= e!232596 (and e!232595 mapRes!15519))))

(declare-fun condMapEmpty!15519 () Bool)

(declare-fun mapDefault!15519 () ValueCell!4308)

(assert (=> b!382838 (= condMapEmpty!15519 (= (arr!10715 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4308)) mapDefault!15519)))))

(declare-fun b!382839 () Bool)

(declare-fun res!217950 () Bool)

(assert (=> b!382839 (=> (not res!217950) (not e!232591))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382839 (= res!217950 (and (= (size!11067 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11066 _keys!658) (size!11067 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15519 () Bool)

(declare-fun tp!30681 () Bool)

(declare-fun e!232594 () Bool)

(assert (=> mapNonEmpty!15519 (= mapRes!15519 (and tp!30681 e!232594))))

(declare-fun mapValue!15519 () ValueCell!4308)

(declare-fun mapKey!15519 () (_ BitVec 32))

(declare-fun mapRest!15519 () (Array (_ BitVec 32) ValueCell!4308))

(assert (=> mapNonEmpty!15519 (= (arr!10715 _values!506) (store mapRest!15519 mapKey!15519 mapValue!15519))))

(declare-fun b!382840 () Bool)

(declare-fun res!217953 () Bool)

(assert (=> b!382840 (=> (not res!217953) (not e!232591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22497 (_ BitVec 32)) Bool)

(assert (=> b!382840 (= res!217953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382841 () Bool)

(declare-fun e!232592 () Bool)

(assert (=> b!382841 (= e!232592 (bvsle #b00000000000000000000000000000000 (size!11066 _keys!658)))))

(declare-datatypes ((tuple2!6268 0))(
  ( (tuple2!6269 (_1!3144 (_ BitVec 64)) (_2!3144 V!13509)) )
))
(declare-datatypes ((List!6136 0))(
  ( (Nil!6133) (Cons!6132 (h!6988 tuple2!6268) (t!11294 List!6136)) )
))
(declare-datatypes ((ListLongMap!5195 0))(
  ( (ListLongMap!5196 (toList!2613 List!6136)) )
))
(declare-fun lt!179770 () ListLongMap!5195)

(declare-fun lt!179765 () ListLongMap!5195)

(assert (=> b!382841 (= lt!179770 lt!179765)))

(declare-fun b!382842 () Bool)

(declare-fun e!232590 () Bool)

(assert (=> b!382842 (= e!232590 (not e!232592))))

(declare-fun res!217948 () Bool)

(assert (=> b!382842 (=> res!217948 e!232592)))

(declare-fun lt!179769 () Bool)

(assert (=> b!382842 (= res!217948 (or (and (not lt!179769) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179769) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179769)))))

(assert (=> b!382842 (= lt!179769 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!179771 () ListLongMap!5195)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13509)

(declare-fun minValue!472 () V!13509)

(declare-fun getCurrentListMap!2031 (array!22497 array!22499 (_ BitVec 32) (_ BitVec 32) V!13509 V!13509 (_ BitVec 32) Int) ListLongMap!5195)

(assert (=> b!382842 (= lt!179771 (getCurrentListMap!2031 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179773 () array!22497)

(declare-fun lt!179766 () array!22499)

(assert (=> b!382842 (= lt!179770 (getCurrentListMap!2031 lt!179773 lt!179766 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179772 () ListLongMap!5195)

(assert (=> b!382842 (and (= lt!179765 lt!179772) (= lt!179772 lt!179765))))

(declare-fun v!373 () V!13509)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!179768 () ListLongMap!5195)

(declare-fun +!949 (ListLongMap!5195 tuple2!6268) ListLongMap!5195)

(assert (=> b!382842 (= lt!179772 (+!949 lt!179768 (tuple2!6269 k0!778 v!373)))))

(declare-datatypes ((Unit!11791 0))(
  ( (Unit!11792) )
))
(declare-fun lt!179767 () Unit!11791)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!182 (array!22497 array!22499 (_ BitVec 32) (_ BitVec 32) V!13509 V!13509 (_ BitVec 32) (_ BitVec 64) V!13509 (_ BitVec 32) Int) Unit!11791)

(assert (=> b!382842 (= lt!179767 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!182 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!849 (array!22497 array!22499 (_ BitVec 32) (_ BitVec 32) V!13509 V!13509 (_ BitVec 32) Int) ListLongMap!5195)

(assert (=> b!382842 (= lt!179765 (getCurrentListMapNoExtraKeys!849 lt!179773 lt!179766 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382842 (= lt!179766 (array!22500 (store (arr!10715 _values!506) i!548 (ValueCellFull!4308 v!373)) (size!11067 _values!506)))))

(assert (=> b!382842 (= lt!179768 (getCurrentListMapNoExtraKeys!849 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382843 () Bool)

(declare-fun res!217955 () Bool)

(assert (=> b!382843 (=> (not res!217955) (not e!232591))))

(assert (=> b!382843 (= res!217955 (or (= (select (arr!10714 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10714 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382844 () Bool)

(assert (=> b!382844 (= e!232594 tp_is_empty!9303)))

(declare-fun b!382845 () Bool)

(assert (=> b!382845 (= e!232591 e!232590)))

(declare-fun res!217954 () Bool)

(assert (=> b!382845 (=> (not res!217954) (not e!232590))))

(assert (=> b!382845 (= res!217954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179773 mask!970))))

(assert (=> b!382845 (= lt!179773 (array!22498 (store (arr!10714 _keys!658) i!548 k0!778) (size!11066 _keys!658)))))

(declare-fun b!382846 () Bool)

(declare-fun res!217952 () Bool)

(assert (=> b!382846 (=> (not res!217952) (not e!232591))))

(declare-fun arrayContainsKey!0 (array!22497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382846 (= res!217952 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15519 () Bool)

(assert (=> mapIsEmpty!15519 mapRes!15519))

(declare-fun b!382847 () Bool)

(declare-fun res!217945 () Bool)

(assert (=> b!382847 (=> (not res!217945) (not e!232591))))

(declare-datatypes ((List!6137 0))(
  ( (Nil!6134) (Cons!6133 (h!6989 (_ BitVec 64)) (t!11295 List!6137)) )
))
(declare-fun arrayNoDuplicates!0 (array!22497 (_ BitVec 32) List!6137) Bool)

(assert (=> b!382847 (= res!217945 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6134))))

(declare-fun b!382848 () Bool)

(assert (=> b!382848 (= e!232595 tp_is_empty!9303)))

(declare-fun b!382849 () Bool)

(declare-fun res!217947 () Bool)

(assert (=> b!382849 (=> (not res!217947) (not e!232590))))

(assert (=> b!382849 (= res!217947 (arrayNoDuplicates!0 lt!179773 #b00000000000000000000000000000000 Nil!6134))))

(declare-fun b!382850 () Bool)

(declare-fun res!217949 () Bool)

(assert (=> b!382850 (=> (not res!217949) (not e!232591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382850 (= res!217949 (validKeyInArray!0 k0!778))))

(assert (= (and start!37536 res!217951) b!382839))

(assert (= (and b!382839 res!217950) b!382840))

(assert (= (and b!382840 res!217953) b!382847))

(assert (= (and b!382847 res!217945) b!382837))

(assert (= (and b!382837 res!217946) b!382850))

(assert (= (and b!382850 res!217949) b!382843))

(assert (= (and b!382843 res!217955) b!382846))

(assert (= (and b!382846 res!217952) b!382845))

(assert (= (and b!382845 res!217954) b!382849))

(assert (= (and b!382849 res!217947) b!382842))

(assert (= (and b!382842 (not res!217948)) b!382841))

(assert (= (and b!382838 condMapEmpty!15519) mapIsEmpty!15519))

(assert (= (and b!382838 (not condMapEmpty!15519)) mapNonEmpty!15519))

(get-info :version)

(assert (= (and mapNonEmpty!15519 ((_ is ValueCellFull!4308) mapValue!15519)) b!382844))

(assert (= (and b!382838 ((_ is ValueCellFull!4308) mapDefault!15519)) b!382848))

(assert (= start!37536 b!382838))

(declare-fun m!379645 () Bool)

(assert (=> b!382850 m!379645))

(declare-fun m!379647 () Bool)

(assert (=> b!382849 m!379647))

(declare-fun m!379649 () Bool)

(assert (=> b!382847 m!379649))

(declare-fun m!379651 () Bool)

(assert (=> start!37536 m!379651))

(declare-fun m!379653 () Bool)

(assert (=> start!37536 m!379653))

(declare-fun m!379655 () Bool)

(assert (=> start!37536 m!379655))

(declare-fun m!379657 () Bool)

(assert (=> b!382845 m!379657))

(declare-fun m!379659 () Bool)

(assert (=> b!382845 m!379659))

(declare-fun m!379661 () Bool)

(assert (=> b!382846 m!379661))

(declare-fun m!379663 () Bool)

(assert (=> b!382840 m!379663))

(declare-fun m!379665 () Bool)

(assert (=> mapNonEmpty!15519 m!379665))

(declare-fun m!379667 () Bool)

(assert (=> b!382843 m!379667))

(declare-fun m!379669 () Bool)

(assert (=> b!382842 m!379669))

(declare-fun m!379671 () Bool)

(assert (=> b!382842 m!379671))

(declare-fun m!379673 () Bool)

(assert (=> b!382842 m!379673))

(declare-fun m!379675 () Bool)

(assert (=> b!382842 m!379675))

(declare-fun m!379677 () Bool)

(assert (=> b!382842 m!379677))

(declare-fun m!379679 () Bool)

(assert (=> b!382842 m!379679))

(declare-fun m!379681 () Bool)

(assert (=> b!382842 m!379681))

(check-sat (not b_next!8655) (not b!382840) tp_is_empty!9303 (not b!382850) (not b!382845) (not b!382846) (not start!37536) (not b!382842) (not b!382847) (not b!382849) (not mapNonEmpty!15519) b_and!15915)
(check-sat b_and!15915 (not b_next!8655))
