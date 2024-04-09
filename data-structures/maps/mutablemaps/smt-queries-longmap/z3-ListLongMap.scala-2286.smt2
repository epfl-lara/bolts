; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37188 () Bool)

(assert start!37188)

(declare-fun b_free!8307 () Bool)

(declare-fun b_next!8307 () Bool)

(assert (=> start!37188 (= b_free!8307 (not b_next!8307))))

(declare-fun tp!29637 () Bool)

(declare-fun b_and!15567 () Bool)

(assert (=> start!37188 (= tp!29637 b_and!15567)))

(declare-fun b!375147 () Bool)

(declare-fun res!211824 () Bool)

(declare-fun e!228578 () Bool)

(assert (=> b!375147 (=> (not res!211824) (not e!228578))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13045 0))(
  ( (V!13046 (val!4522 Int)) )
))
(declare-datatypes ((ValueCell!4134 0))(
  ( (ValueCellFull!4134 (v!6715 V!13045)) (EmptyCell!4134) )
))
(declare-datatypes ((array!21809 0))(
  ( (array!21810 (arr!10370 (Array (_ BitVec 32) ValueCell!4134)) (size!10722 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21809)

(declare-datatypes ((array!21811 0))(
  ( (array!21812 (arr!10371 (Array (_ BitVec 32) (_ BitVec 64))) (size!10723 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21811)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375147 (= res!211824 (and (= (size!10722 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10723 _keys!658) (size!10722 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14997 () Bool)

(declare-fun mapRes!14997 () Bool)

(assert (=> mapIsEmpty!14997 mapRes!14997))

(declare-fun b!375148 () Bool)

(declare-fun e!228572 () Bool)

(declare-fun e!228575 () Bool)

(assert (=> b!375148 (= e!228572 (and e!228575 mapRes!14997))))

(declare-fun condMapEmpty!14997 () Bool)

(declare-fun mapDefault!14997 () ValueCell!4134)

(assert (=> b!375148 (= condMapEmpty!14997 (= (arr!10370 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4134)) mapDefault!14997)))))

(declare-fun b!375149 () Bool)

(declare-fun e!228574 () Bool)

(assert (=> b!375149 (= e!228574 true)))

(declare-datatypes ((tuple2!5990 0))(
  ( (tuple2!5991 (_1!3005 (_ BitVec 64)) (_2!3005 V!13045)) )
))
(declare-datatypes ((List!5861 0))(
  ( (Nil!5858) (Cons!5857 (h!6713 tuple2!5990) (t!11019 List!5861)) )
))
(declare-datatypes ((ListLongMap!4917 0))(
  ( (ListLongMap!4918 (toList!2474 List!5861)) )
))
(declare-fun lt!173597 () ListLongMap!4917)

(declare-fun lt!173611 () tuple2!5990)

(declare-fun lt!173602 () ListLongMap!4917)

(declare-fun lt!173596 () tuple2!5990)

(declare-fun +!815 (ListLongMap!4917 tuple2!5990) ListLongMap!4917)

(assert (=> b!375149 (= (+!815 lt!173597 lt!173596) (+!815 lt!173602 lt!173611))))

(declare-datatypes ((Unit!11533 0))(
  ( (Unit!11534) )
))
(declare-fun lt!173610 () Unit!11533)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!173604 () ListLongMap!4917)

(declare-fun minValue!472 () V!13045)

(declare-fun v!373 () V!13045)

(declare-fun addCommutativeForDiffKeys!244 (ListLongMap!4917 (_ BitVec 64) V!13045 (_ BitVec 64) V!13045) Unit!11533)

(assert (=> b!375149 (= lt!173610 (addCommutativeForDiffKeys!244 lt!173604 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun res!211828 () Bool)

(assert (=> start!37188 (=> (not res!211828) (not e!228578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37188 (= res!211828 (validMask!0 mask!970))))

(assert (=> start!37188 e!228578))

(declare-fun array_inv!7642 (array!21809) Bool)

(assert (=> start!37188 (and (array_inv!7642 _values!506) e!228572)))

(assert (=> start!37188 tp!29637))

(assert (=> start!37188 true))

(declare-fun tp_is_empty!8955 () Bool)

(assert (=> start!37188 tp_is_empty!8955))

(declare-fun array_inv!7643 (array!21811) Bool)

(assert (=> start!37188 (array_inv!7643 _keys!658)))

(declare-fun b!375150 () Bool)

(declare-fun e!228577 () Bool)

(declare-fun e!228579 () Bool)

(assert (=> b!375150 (= e!228577 (not e!228579))))

(declare-fun res!211830 () Bool)

(assert (=> b!375150 (=> res!211830 e!228579)))

(assert (=> b!375150 (= res!211830 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!173601 () ListLongMap!4917)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13045)

(declare-fun getCurrentListMap!1916 (array!21811 array!21809 (_ BitVec 32) (_ BitVec 32) V!13045 V!13045 (_ BitVec 32) Int) ListLongMap!4917)

(assert (=> b!375150 (= lt!173601 (getCurrentListMap!1916 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173598 () ListLongMap!4917)

(declare-fun lt!173595 () array!21809)

(declare-fun lt!173607 () array!21811)

(assert (=> b!375150 (= lt!173598 (getCurrentListMap!1916 lt!173607 lt!173595 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173605 () ListLongMap!4917)

(declare-fun lt!173608 () ListLongMap!4917)

(assert (=> b!375150 (and (= lt!173605 lt!173608) (= lt!173608 lt!173605))))

(declare-fun lt!173599 () ListLongMap!4917)

(assert (=> b!375150 (= lt!173608 (+!815 lt!173599 lt!173611))))

(assert (=> b!375150 (= lt!173611 (tuple2!5991 k0!778 v!373))))

(declare-fun lt!173603 () Unit!11533)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!67 (array!21811 array!21809 (_ BitVec 32) (_ BitVec 32) V!13045 V!13045 (_ BitVec 32) (_ BitVec 64) V!13045 (_ BitVec 32) Int) Unit!11533)

(assert (=> b!375150 (= lt!173603 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!67 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!734 (array!21811 array!21809 (_ BitVec 32) (_ BitVec 32) V!13045 V!13045 (_ BitVec 32) Int) ListLongMap!4917)

(assert (=> b!375150 (= lt!173605 (getCurrentListMapNoExtraKeys!734 lt!173607 lt!173595 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375150 (= lt!173595 (array!21810 (store (arr!10370 _values!506) i!548 (ValueCellFull!4134 v!373)) (size!10722 _values!506)))))

(assert (=> b!375150 (= lt!173599 (getCurrentListMapNoExtraKeys!734 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375151 () Bool)

(declare-fun res!211826 () Bool)

(assert (=> b!375151 (=> (not res!211826) (not e!228578))))

(assert (=> b!375151 (= res!211826 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10723 _keys!658))))))

(declare-fun b!375152 () Bool)

(declare-fun e!228573 () Bool)

(assert (=> b!375152 (= e!228573 tp_is_empty!8955)))

(declare-fun b!375153 () Bool)

(declare-fun res!211827 () Bool)

(assert (=> b!375153 (=> (not res!211827) (not e!228578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375153 (= res!211827 (validKeyInArray!0 k0!778))))

(declare-fun b!375154 () Bool)

(assert (=> b!375154 (= e!228578 e!228577)))

(declare-fun res!211823 () Bool)

(assert (=> b!375154 (=> (not res!211823) (not e!228577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21811 (_ BitVec 32)) Bool)

(assert (=> b!375154 (= res!211823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173607 mask!970))))

(assert (=> b!375154 (= lt!173607 (array!21812 (store (arr!10371 _keys!658) i!548 k0!778) (size!10723 _keys!658)))))

(declare-fun mapNonEmpty!14997 () Bool)

(declare-fun tp!29636 () Bool)

(assert (=> mapNonEmpty!14997 (= mapRes!14997 (and tp!29636 e!228573))))

(declare-fun mapKey!14997 () (_ BitVec 32))

(declare-fun mapValue!14997 () ValueCell!4134)

(declare-fun mapRest!14997 () (Array (_ BitVec 32) ValueCell!4134))

(assert (=> mapNonEmpty!14997 (= (arr!10370 _values!506) (store mapRest!14997 mapKey!14997 mapValue!14997))))

(declare-fun b!375155 () Bool)

(declare-fun res!211821 () Bool)

(assert (=> b!375155 (=> (not res!211821) (not e!228578))))

(assert (=> b!375155 (= res!211821 (or (= (select (arr!10371 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10371 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375156 () Bool)

(assert (=> b!375156 (= e!228579 e!228574)))

(declare-fun res!211832 () Bool)

(assert (=> b!375156 (=> res!211832 e!228574)))

(assert (=> b!375156 (= res!211832 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173606 () ListLongMap!4917)

(assert (=> b!375156 (= lt!173606 lt!173597)))

(assert (=> b!375156 (= lt!173597 (+!815 lt!173604 lt!173611))))

(declare-fun lt!173609 () Unit!11533)

(assert (=> b!375156 (= lt!173609 (addCommutativeForDiffKeys!244 lt!173599 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!375156 (= lt!173598 (+!815 lt!173606 lt!173596))))

(declare-fun lt!173600 () tuple2!5990)

(assert (=> b!375156 (= lt!173606 (+!815 lt!173608 lt!173600))))

(assert (=> b!375156 (= lt!173601 lt!173602)))

(assert (=> b!375156 (= lt!173602 (+!815 lt!173604 lt!173596))))

(assert (=> b!375156 (= lt!173604 (+!815 lt!173599 lt!173600))))

(assert (=> b!375156 (= lt!173598 (+!815 (+!815 lt!173605 lt!173600) lt!173596))))

(assert (=> b!375156 (= lt!173596 (tuple2!5991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375156 (= lt!173600 (tuple2!5991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375157 () Bool)

(declare-fun res!211822 () Bool)

(assert (=> b!375157 (=> (not res!211822) (not e!228578))))

(assert (=> b!375157 (= res!211822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375158 () Bool)

(declare-fun res!211829 () Bool)

(assert (=> b!375158 (=> (not res!211829) (not e!228577))))

(declare-datatypes ((List!5862 0))(
  ( (Nil!5859) (Cons!5858 (h!6714 (_ BitVec 64)) (t!11020 List!5862)) )
))
(declare-fun arrayNoDuplicates!0 (array!21811 (_ BitVec 32) List!5862) Bool)

(assert (=> b!375158 (= res!211829 (arrayNoDuplicates!0 lt!173607 #b00000000000000000000000000000000 Nil!5859))))

(declare-fun b!375159 () Bool)

(declare-fun res!211831 () Bool)

(assert (=> b!375159 (=> (not res!211831) (not e!228578))))

(declare-fun arrayContainsKey!0 (array!21811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375159 (= res!211831 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375160 () Bool)

(declare-fun res!211825 () Bool)

(assert (=> b!375160 (=> (not res!211825) (not e!228578))))

(assert (=> b!375160 (= res!211825 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5859))))

(declare-fun b!375161 () Bool)

(assert (=> b!375161 (= e!228575 tp_is_empty!8955)))

(assert (= (and start!37188 res!211828) b!375147))

(assert (= (and b!375147 res!211824) b!375157))

(assert (= (and b!375157 res!211822) b!375160))

(assert (= (and b!375160 res!211825) b!375151))

(assert (= (and b!375151 res!211826) b!375153))

(assert (= (and b!375153 res!211827) b!375155))

(assert (= (and b!375155 res!211821) b!375159))

(assert (= (and b!375159 res!211831) b!375154))

(assert (= (and b!375154 res!211823) b!375158))

(assert (= (and b!375158 res!211829) b!375150))

(assert (= (and b!375150 (not res!211830)) b!375156))

(assert (= (and b!375156 (not res!211832)) b!375149))

(assert (= (and b!375148 condMapEmpty!14997) mapIsEmpty!14997))

(assert (= (and b!375148 (not condMapEmpty!14997)) mapNonEmpty!14997))

(get-info :version)

(assert (= (and mapNonEmpty!14997 ((_ is ValueCellFull!4134) mapValue!14997)) b!375152))

(assert (= (and b!375148 ((_ is ValueCellFull!4134) mapDefault!14997)) b!375161))

(assert (= start!37188 b!375148))

(declare-fun m!371741 () Bool)

(assert (=> b!375153 m!371741))

(declare-fun m!371743 () Bool)

(assert (=> b!375160 m!371743))

(declare-fun m!371745 () Bool)

(assert (=> b!375158 m!371745))

(declare-fun m!371747 () Bool)

(assert (=> b!375155 m!371747))

(declare-fun m!371749 () Bool)

(assert (=> b!375159 m!371749))

(declare-fun m!371751 () Bool)

(assert (=> mapNonEmpty!14997 m!371751))

(declare-fun m!371753 () Bool)

(assert (=> b!375154 m!371753))

(declare-fun m!371755 () Bool)

(assert (=> b!375154 m!371755))

(declare-fun m!371757 () Bool)

(assert (=> b!375149 m!371757))

(declare-fun m!371759 () Bool)

(assert (=> b!375149 m!371759))

(declare-fun m!371761 () Bool)

(assert (=> b!375149 m!371761))

(declare-fun m!371763 () Bool)

(assert (=> b!375157 m!371763))

(declare-fun m!371765 () Bool)

(assert (=> b!375156 m!371765))

(declare-fun m!371767 () Bool)

(assert (=> b!375156 m!371767))

(declare-fun m!371769 () Bool)

(assert (=> b!375156 m!371769))

(declare-fun m!371771 () Bool)

(assert (=> b!375156 m!371771))

(assert (=> b!375156 m!371765))

(declare-fun m!371773 () Bool)

(assert (=> b!375156 m!371773))

(declare-fun m!371775 () Bool)

(assert (=> b!375156 m!371775))

(declare-fun m!371777 () Bool)

(assert (=> b!375156 m!371777))

(declare-fun m!371779 () Bool)

(assert (=> b!375156 m!371779))

(declare-fun m!371781 () Bool)

(assert (=> b!375150 m!371781))

(declare-fun m!371783 () Bool)

(assert (=> b!375150 m!371783))

(declare-fun m!371785 () Bool)

(assert (=> b!375150 m!371785))

(declare-fun m!371787 () Bool)

(assert (=> b!375150 m!371787))

(declare-fun m!371789 () Bool)

(assert (=> b!375150 m!371789))

(declare-fun m!371791 () Bool)

(assert (=> b!375150 m!371791))

(declare-fun m!371793 () Bool)

(assert (=> b!375150 m!371793))

(declare-fun m!371795 () Bool)

(assert (=> start!37188 m!371795))

(declare-fun m!371797 () Bool)

(assert (=> start!37188 m!371797))

(declare-fun m!371799 () Bool)

(assert (=> start!37188 m!371799))

(check-sat (not b!375156) (not b!375149) (not b!375154) tp_is_empty!8955 (not mapNonEmpty!14997) (not b!375150) (not b!375160) (not start!37188) (not b!375157) (not b!375153) (not b!375158) (not b_next!8307) b_and!15567 (not b!375159))
(check-sat b_and!15567 (not b_next!8307))
