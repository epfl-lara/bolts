; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37164 () Bool)

(assert start!37164)

(declare-fun b_free!8283 () Bool)

(declare-fun b_next!8283 () Bool)

(assert (=> start!37164 (= b_free!8283 (not b_next!8283))))

(declare-fun tp!29565 () Bool)

(declare-fun b_and!15543 () Bool)

(assert (=> start!37164 (= tp!29565 b_and!15543)))

(declare-fun b!374607 () Bool)

(declare-fun res!211395 () Bool)

(declare-fun e!228285 () Bool)

(assert (=> b!374607 (=> (not res!211395) (not e!228285))))

(declare-datatypes ((array!21761 0))(
  ( (array!21762 (arr!10346 (Array (_ BitVec 32) (_ BitVec 64))) (size!10698 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21761)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374607 (= res!211395 (or (= (select (arr!10346 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10346 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374608 () Bool)

(declare-fun e!228289 () Bool)

(declare-fun e!228291 () Bool)

(declare-fun mapRes!14961 () Bool)

(assert (=> b!374608 (= e!228289 (and e!228291 mapRes!14961))))

(declare-fun condMapEmpty!14961 () Bool)

(declare-datatypes ((V!13013 0))(
  ( (V!13014 (val!4510 Int)) )
))
(declare-datatypes ((ValueCell!4122 0))(
  ( (ValueCellFull!4122 (v!6703 V!13013)) (EmptyCell!4122) )
))
(declare-datatypes ((array!21763 0))(
  ( (array!21764 (arr!10347 (Array (_ BitVec 32) ValueCell!4122)) (size!10699 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21763)

(declare-fun mapDefault!14961 () ValueCell!4122)

(assert (=> b!374608 (= condMapEmpty!14961 (= (arr!10347 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4122)) mapDefault!14961)))))

(declare-fun res!211392 () Bool)

(assert (=> start!37164 (=> (not res!211392) (not e!228285))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37164 (= res!211392 (validMask!0 mask!970))))

(assert (=> start!37164 e!228285))

(declare-fun array_inv!7626 (array!21763) Bool)

(assert (=> start!37164 (and (array_inv!7626 _values!506) e!228289)))

(assert (=> start!37164 tp!29565))

(assert (=> start!37164 true))

(declare-fun tp_is_empty!8931 () Bool)

(assert (=> start!37164 tp_is_empty!8931))

(declare-fun array_inv!7627 (array!21761) Bool)

(assert (=> start!37164 (array_inv!7627 _keys!658)))

(declare-fun b!374609 () Bool)

(declare-fun res!211394 () Bool)

(assert (=> b!374609 (=> (not res!211394) (not e!228285))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374609 (= res!211394 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14961 () Bool)

(assert (=> mapIsEmpty!14961 mapRes!14961))

(declare-fun b!374610 () Bool)

(declare-fun e!228286 () Bool)

(declare-fun e!228287 () Bool)

(assert (=> b!374610 (= e!228286 (not e!228287))))

(declare-fun res!211400 () Bool)

(assert (=> b!374610 (=> res!211400 e!228287)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374610 (= res!211400 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!5972 0))(
  ( (tuple2!5973 (_1!2996 (_ BitVec 64)) (_2!2996 V!13013)) )
))
(declare-datatypes ((List!5842 0))(
  ( (Nil!5839) (Cons!5838 (h!6694 tuple2!5972) (t!11000 List!5842)) )
))
(declare-datatypes ((ListLongMap!4899 0))(
  ( (ListLongMap!4900 (toList!2465 List!5842)) )
))
(declare-fun lt!172983 () ListLongMap!4899)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13013)

(declare-fun minValue!472 () V!13013)

(declare-fun getCurrentListMap!1908 (array!21761 array!21763 (_ BitVec 32) (_ BitVec 32) V!13013 V!13013 (_ BitVec 32) Int) ListLongMap!4899)

(assert (=> b!374610 (= lt!172983 (getCurrentListMap!1908 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172997 () array!21761)

(declare-fun lt!172994 () array!21763)

(declare-fun lt!172990 () ListLongMap!4899)

(assert (=> b!374610 (= lt!172990 (getCurrentListMap!1908 lt!172997 lt!172994 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172993 () ListLongMap!4899)

(declare-fun lt!172988 () ListLongMap!4899)

(assert (=> b!374610 (and (= lt!172993 lt!172988) (= lt!172988 lt!172993))))

(declare-fun lt!172986 () ListLongMap!4899)

(declare-fun lt!172998 () tuple2!5972)

(declare-fun +!806 (ListLongMap!4899 tuple2!5972) ListLongMap!4899)

(assert (=> b!374610 (= lt!172988 (+!806 lt!172986 lt!172998))))

(declare-fun v!373 () V!13013)

(assert (=> b!374610 (= lt!172998 (tuple2!5973 k0!778 v!373))))

(declare-datatypes ((Unit!11515 0))(
  ( (Unit!11516) )
))
(declare-fun lt!172996 () Unit!11515)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!59 (array!21761 array!21763 (_ BitVec 32) (_ BitVec 32) V!13013 V!13013 (_ BitVec 32) (_ BitVec 64) V!13013 (_ BitVec 32) Int) Unit!11515)

(assert (=> b!374610 (= lt!172996 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!59 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!726 (array!21761 array!21763 (_ BitVec 32) (_ BitVec 32) V!13013 V!13013 (_ BitVec 32) Int) ListLongMap!4899)

(assert (=> b!374610 (= lt!172993 (getCurrentListMapNoExtraKeys!726 lt!172997 lt!172994 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374610 (= lt!172994 (array!21764 (store (arr!10347 _values!506) i!548 (ValueCellFull!4122 v!373)) (size!10699 _values!506)))))

(assert (=> b!374610 (= lt!172986 (getCurrentListMapNoExtraKeys!726 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374611 () Bool)

(declare-fun e!228284 () Bool)

(assert (=> b!374611 (= e!228284 true)))

(declare-fun lt!172991 () ListLongMap!4899)

(declare-fun lt!172999 () tuple2!5972)

(declare-fun lt!172987 () ListLongMap!4899)

(assert (=> b!374611 (= (+!806 lt!172987 lt!172999) (+!806 lt!172991 lt!172998))))

(declare-fun lt!172995 () Unit!11515)

(declare-fun lt!172989 () ListLongMap!4899)

(declare-fun addCommutativeForDiffKeys!235 (ListLongMap!4899 (_ BitVec 64) V!13013 (_ BitVec 64) V!13013) Unit!11515)

(assert (=> b!374611 (= lt!172995 (addCommutativeForDiffKeys!235 lt!172989 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374612 () Bool)

(assert (=> b!374612 (= e!228285 e!228286)))

(declare-fun res!211390 () Bool)

(assert (=> b!374612 (=> (not res!211390) (not e!228286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21761 (_ BitVec 32)) Bool)

(assert (=> b!374612 (= res!211390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172997 mask!970))))

(assert (=> b!374612 (= lt!172997 (array!21762 (store (arr!10346 _keys!658) i!548 k0!778) (size!10698 _keys!658)))))

(declare-fun b!374613 () Bool)

(declare-fun res!211399 () Bool)

(assert (=> b!374613 (=> (not res!211399) (not e!228285))))

(assert (=> b!374613 (= res!211399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374614 () Bool)

(declare-fun e!228288 () Bool)

(assert (=> b!374614 (= e!228288 tp_is_empty!8931)))

(declare-fun b!374615 () Bool)

(declare-fun res!211397 () Bool)

(assert (=> b!374615 (=> (not res!211397) (not e!228285))))

(assert (=> b!374615 (= res!211397 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10698 _keys!658))))))

(declare-fun b!374616 () Bool)

(declare-fun res!211391 () Bool)

(assert (=> b!374616 (=> (not res!211391) (not e!228285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374616 (= res!211391 (validKeyInArray!0 k0!778))))

(declare-fun b!374617 () Bool)

(declare-fun res!211389 () Bool)

(assert (=> b!374617 (=> (not res!211389) (not e!228285))))

(declare-datatypes ((List!5843 0))(
  ( (Nil!5840) (Cons!5839 (h!6695 (_ BitVec 64)) (t!11001 List!5843)) )
))
(declare-fun arrayNoDuplicates!0 (array!21761 (_ BitVec 32) List!5843) Bool)

(assert (=> b!374617 (= res!211389 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5840))))

(declare-fun b!374618 () Bool)

(assert (=> b!374618 (= e!228291 tp_is_empty!8931)))

(declare-fun b!374619 () Bool)

(declare-fun res!211398 () Bool)

(assert (=> b!374619 (=> (not res!211398) (not e!228285))))

(assert (=> b!374619 (= res!211398 (and (= (size!10699 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10698 _keys!658) (size!10699 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14961 () Bool)

(declare-fun tp!29564 () Bool)

(assert (=> mapNonEmpty!14961 (= mapRes!14961 (and tp!29564 e!228288))))

(declare-fun mapValue!14961 () ValueCell!4122)

(declare-fun mapRest!14961 () (Array (_ BitVec 32) ValueCell!4122))

(declare-fun mapKey!14961 () (_ BitVec 32))

(assert (=> mapNonEmpty!14961 (= (arr!10347 _values!506) (store mapRest!14961 mapKey!14961 mapValue!14961))))

(declare-fun b!374620 () Bool)

(assert (=> b!374620 (= e!228287 e!228284)))

(declare-fun res!211396 () Bool)

(assert (=> b!374620 (=> res!211396 e!228284)))

(assert (=> b!374620 (= res!211396 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172985 () ListLongMap!4899)

(assert (=> b!374620 (= lt!172985 lt!172987)))

(assert (=> b!374620 (= lt!172987 (+!806 lt!172989 lt!172998))))

(declare-fun lt!172984 () Unit!11515)

(assert (=> b!374620 (= lt!172984 (addCommutativeForDiffKeys!235 lt!172986 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!374620 (= lt!172990 (+!806 lt!172985 lt!172999))))

(declare-fun lt!172992 () tuple2!5972)

(assert (=> b!374620 (= lt!172985 (+!806 lt!172988 lt!172992))))

(assert (=> b!374620 (= lt!172983 lt!172991)))

(assert (=> b!374620 (= lt!172991 (+!806 lt!172989 lt!172999))))

(assert (=> b!374620 (= lt!172989 (+!806 lt!172986 lt!172992))))

(assert (=> b!374620 (= lt!172990 (+!806 (+!806 lt!172993 lt!172992) lt!172999))))

(assert (=> b!374620 (= lt!172999 (tuple2!5973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374620 (= lt!172992 (tuple2!5973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374621 () Bool)

(declare-fun res!211393 () Bool)

(assert (=> b!374621 (=> (not res!211393) (not e!228286))))

(assert (=> b!374621 (= res!211393 (arrayNoDuplicates!0 lt!172997 #b00000000000000000000000000000000 Nil!5840))))

(assert (= (and start!37164 res!211392) b!374619))

(assert (= (and b!374619 res!211398) b!374613))

(assert (= (and b!374613 res!211399) b!374617))

(assert (= (and b!374617 res!211389) b!374615))

(assert (= (and b!374615 res!211397) b!374616))

(assert (= (and b!374616 res!211391) b!374607))

(assert (= (and b!374607 res!211395) b!374609))

(assert (= (and b!374609 res!211394) b!374612))

(assert (= (and b!374612 res!211390) b!374621))

(assert (= (and b!374621 res!211393) b!374610))

(assert (= (and b!374610 (not res!211400)) b!374620))

(assert (= (and b!374620 (not res!211396)) b!374611))

(assert (= (and b!374608 condMapEmpty!14961) mapIsEmpty!14961))

(assert (= (and b!374608 (not condMapEmpty!14961)) mapNonEmpty!14961))

(get-info :version)

(assert (= (and mapNonEmpty!14961 ((_ is ValueCellFull!4122) mapValue!14961)) b!374614))

(assert (= (and b!374608 ((_ is ValueCellFull!4122) mapDefault!14961)) b!374618))

(assert (= start!37164 b!374608))

(declare-fun m!371021 () Bool)

(assert (=> b!374621 m!371021))

(declare-fun m!371023 () Bool)

(assert (=> b!374617 m!371023))

(declare-fun m!371025 () Bool)

(assert (=> b!374609 m!371025))

(declare-fun m!371027 () Bool)

(assert (=> start!37164 m!371027))

(declare-fun m!371029 () Bool)

(assert (=> start!37164 m!371029))

(declare-fun m!371031 () Bool)

(assert (=> start!37164 m!371031))

(declare-fun m!371033 () Bool)

(assert (=> b!374612 m!371033))

(declare-fun m!371035 () Bool)

(assert (=> b!374612 m!371035))

(declare-fun m!371037 () Bool)

(assert (=> b!374613 m!371037))

(declare-fun m!371039 () Bool)

(assert (=> b!374611 m!371039))

(declare-fun m!371041 () Bool)

(assert (=> b!374611 m!371041))

(declare-fun m!371043 () Bool)

(assert (=> b!374611 m!371043))

(declare-fun m!371045 () Bool)

(assert (=> b!374610 m!371045))

(declare-fun m!371047 () Bool)

(assert (=> b!374610 m!371047))

(declare-fun m!371049 () Bool)

(assert (=> b!374610 m!371049))

(declare-fun m!371051 () Bool)

(assert (=> b!374610 m!371051))

(declare-fun m!371053 () Bool)

(assert (=> b!374610 m!371053))

(declare-fun m!371055 () Bool)

(assert (=> b!374610 m!371055))

(declare-fun m!371057 () Bool)

(assert (=> b!374610 m!371057))

(declare-fun m!371059 () Bool)

(assert (=> b!374616 m!371059))

(declare-fun m!371061 () Bool)

(assert (=> mapNonEmpty!14961 m!371061))

(declare-fun m!371063 () Bool)

(assert (=> b!374620 m!371063))

(declare-fun m!371065 () Bool)

(assert (=> b!374620 m!371065))

(declare-fun m!371067 () Bool)

(assert (=> b!374620 m!371067))

(declare-fun m!371069 () Bool)

(assert (=> b!374620 m!371069))

(declare-fun m!371071 () Bool)

(assert (=> b!374620 m!371071))

(declare-fun m!371073 () Bool)

(assert (=> b!374620 m!371073))

(assert (=> b!374620 m!371071))

(declare-fun m!371075 () Bool)

(assert (=> b!374620 m!371075))

(declare-fun m!371077 () Bool)

(assert (=> b!374620 m!371077))

(declare-fun m!371079 () Bool)

(assert (=> b!374607 m!371079))

(check-sat (not b_next!8283) (not b!374612) b_and!15543 (not b!374621) (not b!374617) (not b!374611) (not b!374620) (not b!374610) (not start!37164) (not b!374616) (not b!374609) (not b!374613) tp_is_empty!8931 (not mapNonEmpty!14961))
(check-sat b_and!15543 (not b_next!8283))
