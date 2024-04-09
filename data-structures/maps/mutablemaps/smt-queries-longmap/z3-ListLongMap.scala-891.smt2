; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20456 () Bool)

(assert start!20456)

(declare-fun b_free!5103 () Bool)

(declare-fun b_next!5103 () Bool)

(assert (=> start!20456 (= b_free!5103 (not b_next!5103))))

(declare-fun tp!18341 () Bool)

(declare-fun b_and!11867 () Bool)

(assert (=> start!20456 (= tp!18341 b_and!11867)))

(declare-fun res!97037 () Bool)

(declare-fun e!132615 () Bool)

(assert (=> start!20456 (=> (not res!97037) (not e!132615))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20456 (= res!97037 (validMask!0 mask!1149))))

(assert (=> start!20456 e!132615))

(declare-datatypes ((V!6259 0))(
  ( (V!6260 (val!2524 Int)) )
))
(declare-datatypes ((ValueCell!2136 0))(
  ( (ValueCellFull!2136 (v!4490 V!6259)) (EmptyCell!2136) )
))
(declare-datatypes ((array!9142 0))(
  ( (array!9143 (arr!4321 (Array (_ BitVec 32) ValueCell!2136)) (size!4646 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9142)

(declare-fun e!132610 () Bool)

(declare-fun array_inv!2843 (array!9142) Bool)

(assert (=> start!20456 (and (array_inv!2843 _values!649) e!132610)))

(assert (=> start!20456 true))

(declare-fun tp_is_empty!4959 () Bool)

(assert (=> start!20456 tp_is_empty!4959))

(declare-datatypes ((array!9144 0))(
  ( (array!9145 (arr!4322 (Array (_ BitVec 32) (_ BitVec 64))) (size!4647 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9144)

(declare-fun array_inv!2844 (array!9144) Bool)

(assert (=> start!20456 (array_inv!2844 _keys!825)))

(assert (=> start!20456 tp!18341))

(declare-fun b!202447 () Bool)

(declare-fun e!132616 () Bool)

(assert (=> b!202447 (= e!132616 tp_is_empty!4959)))

(declare-fun b!202448 () Bool)

(declare-fun res!97042 () Bool)

(assert (=> b!202448 (=> (not res!97042) (not e!132615))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202448 (= res!97042 (= (select (arr!4322 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8507 () Bool)

(declare-fun mapRes!8507 () Bool)

(assert (=> mapIsEmpty!8507 mapRes!8507))

(declare-fun b!202449 () Bool)

(declare-fun res!97038 () Bool)

(assert (=> b!202449 (=> (not res!97038) (not e!132615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202449 (= res!97038 (validKeyInArray!0 k0!843))))

(declare-fun b!202450 () Bool)

(declare-fun e!132613 () Bool)

(declare-fun e!132614 () Bool)

(assert (=> b!202450 (= e!132613 e!132614)))

(declare-fun res!97041 () Bool)

(assert (=> b!202450 (=> res!97041 e!132614)))

(assert (=> b!202450 (= res!97041 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3824 0))(
  ( (tuple2!3825 (_1!1922 (_ BitVec 64)) (_2!1922 V!6259)) )
))
(declare-datatypes ((List!2752 0))(
  ( (Nil!2749) (Cons!2748 (h!3390 tuple2!3824) (t!7691 List!2752)) )
))
(declare-datatypes ((ListLongMap!2751 0))(
  ( (ListLongMap!2752 (toList!1391 List!2752)) )
))
(declare-fun lt!101693 () ListLongMap!2751)

(declare-fun lt!101699 () ListLongMap!2751)

(assert (=> b!202450 (= lt!101693 lt!101699)))

(declare-fun lt!101691 () ListLongMap!2751)

(declare-fun lt!101701 () tuple2!3824)

(declare-fun +!408 (ListLongMap!2751 tuple2!3824) ListLongMap!2751)

(assert (=> b!202450 (= lt!101699 (+!408 lt!101691 lt!101701))))

(declare-fun lt!101695 () ListLongMap!2751)

(declare-fun lt!101697 () ListLongMap!2751)

(assert (=> b!202450 (= lt!101695 lt!101697)))

(declare-fun lt!101698 () ListLongMap!2751)

(assert (=> b!202450 (= lt!101697 (+!408 lt!101698 lt!101701))))

(declare-fun lt!101690 () ListLongMap!2751)

(assert (=> b!202450 (= lt!101693 (+!408 lt!101690 lt!101701))))

(declare-fun zeroValue!615 () V!6259)

(assert (=> b!202450 (= lt!101701 (tuple2!3825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202451 () Bool)

(declare-fun res!97044 () Bool)

(assert (=> b!202451 (=> (not res!97044) (not e!132615))))

(declare-datatypes ((List!2753 0))(
  ( (Nil!2750) (Cons!2749 (h!3391 (_ BitVec 64)) (t!7692 List!2753)) )
))
(declare-fun arrayNoDuplicates!0 (array!9144 (_ BitVec 32) List!2753) Bool)

(assert (=> b!202451 (= res!97044 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2750))))

(declare-fun b!202452 () Bool)

(declare-fun res!97043 () Bool)

(assert (=> b!202452 (=> (not res!97043) (not e!132615))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202452 (= res!97043 (and (= (size!4646 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4647 _keys!825) (size!4646 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202453 () Bool)

(assert (=> b!202453 (= e!132614 true)))

(declare-fun lt!101700 () tuple2!3824)

(assert (=> b!202453 (= lt!101699 (+!408 lt!101697 lt!101700))))

(declare-fun v!520 () V!6259)

(declare-datatypes ((Unit!6119 0))(
  ( (Unit!6120) )
))
(declare-fun lt!101694 () Unit!6119)

(declare-fun addCommutativeForDiffKeys!125 (ListLongMap!2751 (_ BitVec 64) V!6259 (_ BitVec 64) V!6259) Unit!6119)

(assert (=> b!202453 (= lt!101694 (addCommutativeForDiffKeys!125 lt!101698 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202454 () Bool)

(declare-fun e!132612 () Bool)

(assert (=> b!202454 (= e!132612 tp_is_empty!4959)))

(declare-fun b!202455 () Bool)

(assert (=> b!202455 (= e!132610 (and e!132616 mapRes!8507))))

(declare-fun condMapEmpty!8507 () Bool)

(declare-fun mapDefault!8507 () ValueCell!2136)

(assert (=> b!202455 (= condMapEmpty!8507 (= (arr!4321 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2136)) mapDefault!8507)))))

(declare-fun b!202456 () Bool)

(declare-fun res!97039 () Bool)

(assert (=> b!202456 (=> (not res!97039) (not e!132615))))

(assert (=> b!202456 (= res!97039 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4647 _keys!825))))))

(declare-fun mapNonEmpty!8507 () Bool)

(declare-fun tp!18340 () Bool)

(assert (=> mapNonEmpty!8507 (= mapRes!8507 (and tp!18340 e!132612))))

(declare-fun mapKey!8507 () (_ BitVec 32))

(declare-fun mapValue!8507 () ValueCell!2136)

(declare-fun mapRest!8507 () (Array (_ BitVec 32) ValueCell!2136))

(assert (=> mapNonEmpty!8507 (= (arr!4321 _values!649) (store mapRest!8507 mapKey!8507 mapValue!8507))))

(declare-fun b!202457 () Bool)

(assert (=> b!202457 (= e!132615 (not e!132613))))

(declare-fun res!97040 () Bool)

(assert (=> b!202457 (=> res!97040 e!132613)))

(assert (=> b!202457 (= res!97040 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6259)

(declare-fun getCurrentListMap!967 (array!9144 array!9142 (_ BitVec 32) (_ BitVec 32) V!6259 V!6259 (_ BitVec 32) Int) ListLongMap!2751)

(assert (=> b!202457 (= lt!101695 (getCurrentListMap!967 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101692 () array!9142)

(assert (=> b!202457 (= lt!101693 (getCurrentListMap!967 _keys!825 lt!101692 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202457 (and (= lt!101690 lt!101691) (= lt!101691 lt!101690))))

(assert (=> b!202457 (= lt!101691 (+!408 lt!101698 lt!101700))))

(assert (=> b!202457 (= lt!101700 (tuple2!3825 k0!843 v!520))))

(declare-fun lt!101696 () Unit!6119)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!80 (array!9144 array!9142 (_ BitVec 32) (_ BitVec 32) V!6259 V!6259 (_ BitVec 32) (_ BitVec 64) V!6259 (_ BitVec 32) Int) Unit!6119)

(assert (=> b!202457 (= lt!101696 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!80 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!338 (array!9144 array!9142 (_ BitVec 32) (_ BitVec 32) V!6259 V!6259 (_ BitVec 32) Int) ListLongMap!2751)

(assert (=> b!202457 (= lt!101690 (getCurrentListMapNoExtraKeys!338 _keys!825 lt!101692 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202457 (= lt!101692 (array!9143 (store (arr!4321 _values!649) i!601 (ValueCellFull!2136 v!520)) (size!4646 _values!649)))))

(assert (=> b!202457 (= lt!101698 (getCurrentListMapNoExtraKeys!338 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202458 () Bool)

(declare-fun res!97045 () Bool)

(assert (=> b!202458 (=> (not res!97045) (not e!132615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9144 (_ BitVec 32)) Bool)

(assert (=> b!202458 (= res!97045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20456 res!97037) b!202452))

(assert (= (and b!202452 res!97043) b!202458))

(assert (= (and b!202458 res!97045) b!202451))

(assert (= (and b!202451 res!97044) b!202456))

(assert (= (and b!202456 res!97039) b!202449))

(assert (= (and b!202449 res!97038) b!202448))

(assert (= (and b!202448 res!97042) b!202457))

(assert (= (and b!202457 (not res!97040)) b!202450))

(assert (= (and b!202450 (not res!97041)) b!202453))

(assert (= (and b!202455 condMapEmpty!8507) mapIsEmpty!8507))

(assert (= (and b!202455 (not condMapEmpty!8507)) mapNonEmpty!8507))

(get-info :version)

(assert (= (and mapNonEmpty!8507 ((_ is ValueCellFull!2136) mapValue!8507)) b!202454))

(assert (= (and b!202455 ((_ is ValueCellFull!2136) mapDefault!8507)) b!202447))

(assert (= start!20456 b!202455))

(declare-fun m!229789 () Bool)

(assert (=> start!20456 m!229789))

(declare-fun m!229791 () Bool)

(assert (=> start!20456 m!229791))

(declare-fun m!229793 () Bool)

(assert (=> start!20456 m!229793))

(declare-fun m!229795 () Bool)

(assert (=> b!202451 m!229795))

(declare-fun m!229797 () Bool)

(assert (=> b!202453 m!229797))

(declare-fun m!229799 () Bool)

(assert (=> b!202453 m!229799))

(declare-fun m!229801 () Bool)

(assert (=> b!202448 m!229801))

(declare-fun m!229803 () Bool)

(assert (=> b!202449 m!229803))

(declare-fun m!229805 () Bool)

(assert (=> b!202450 m!229805))

(declare-fun m!229807 () Bool)

(assert (=> b!202450 m!229807))

(declare-fun m!229809 () Bool)

(assert (=> b!202450 m!229809))

(declare-fun m!229811 () Bool)

(assert (=> b!202457 m!229811))

(declare-fun m!229813 () Bool)

(assert (=> b!202457 m!229813))

(declare-fun m!229815 () Bool)

(assert (=> b!202457 m!229815))

(declare-fun m!229817 () Bool)

(assert (=> b!202457 m!229817))

(declare-fun m!229819 () Bool)

(assert (=> b!202457 m!229819))

(declare-fun m!229821 () Bool)

(assert (=> b!202457 m!229821))

(declare-fun m!229823 () Bool)

(assert (=> b!202457 m!229823))

(declare-fun m!229825 () Bool)

(assert (=> b!202458 m!229825))

(declare-fun m!229827 () Bool)

(assert (=> mapNonEmpty!8507 m!229827))

(check-sat (not b_next!5103) (not b!202449) (not b!202453) (not start!20456) (not b!202458) (not b!202457) (not mapNonEmpty!8507) tp_is_empty!4959 b_and!11867 (not b!202450) (not b!202451))
(check-sat b_and!11867 (not b_next!5103))
