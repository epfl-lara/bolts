; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37350 () Bool)

(assert start!37350)

(declare-fun b_free!8469 () Bool)

(declare-fun b_next!8469 () Bool)

(assert (=> start!37350 (= b_free!8469 (not b_next!8469))))

(declare-fun tp!30122 () Bool)

(declare-fun b_and!15729 () Bool)

(assert (=> start!37350 (= tp!30122 b_and!15729)))

(declare-fun b!378810 () Bool)

(declare-fun e!230518 () Bool)

(declare-fun e!230517 () Bool)

(assert (=> b!378810 (= e!230518 e!230517)))

(declare-fun res!214755 () Bool)

(assert (=> b!378810 (=> (not res!214755) (not e!230517))))

(declare-datatypes ((array!22131 0))(
  ( (array!22132 (arr!10531 (Array (_ BitVec 32) (_ BitVec 64))) (size!10883 (_ BitVec 32))) )
))
(declare-fun lt!176779 () array!22131)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22131 (_ BitVec 32)) Bool)

(assert (=> b!378810 (= res!214755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176779 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22131)

(assert (=> b!378810 (= lt!176779 (array!22132 (store (arr!10531 _keys!658) i!548 k0!778) (size!10883 _keys!658)))))

(declare-fun b!378811 () Bool)

(declare-fun e!230523 () Bool)

(declare-fun tp_is_empty!9117 () Bool)

(assert (=> b!378811 (= e!230523 tp_is_empty!9117)))

(declare-fun b!378812 () Bool)

(declare-fun res!214762 () Bool)

(assert (=> b!378812 (=> (not res!214762) (not e!230518))))

(declare-datatypes ((List!5994 0))(
  ( (Nil!5991) (Cons!5990 (h!6846 (_ BitVec 64)) (t!11152 List!5994)) )
))
(declare-fun arrayNoDuplicates!0 (array!22131 (_ BitVec 32) List!5994) Bool)

(assert (=> b!378812 (= res!214762 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5991))))

(declare-fun mapIsEmpty!15240 () Bool)

(declare-fun mapRes!15240 () Bool)

(assert (=> mapIsEmpty!15240 mapRes!15240))

(declare-fun b!378813 () Bool)

(declare-fun e!230522 () Bool)

(assert (=> b!378813 (= e!230522 (and e!230523 mapRes!15240))))

(declare-fun condMapEmpty!15240 () Bool)

(declare-datatypes ((V!13261 0))(
  ( (V!13262 (val!4603 Int)) )
))
(declare-datatypes ((ValueCell!4215 0))(
  ( (ValueCellFull!4215 (v!6796 V!13261)) (EmptyCell!4215) )
))
(declare-datatypes ((array!22133 0))(
  ( (array!22134 (arr!10532 (Array (_ BitVec 32) ValueCell!4215)) (size!10884 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22133)

(declare-fun mapDefault!15240 () ValueCell!4215)

(assert (=> b!378813 (= condMapEmpty!15240 (= (arr!10532 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4215)) mapDefault!15240)))))

(declare-fun b!378814 () Bool)

(declare-fun res!214764 () Bool)

(assert (=> b!378814 (=> (not res!214764) (not e!230518))))

(assert (=> b!378814 (= res!214764 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10883 _keys!658))))))

(declare-fun b!378815 () Bool)

(declare-fun e!230519 () Bool)

(assert (=> b!378815 (= e!230519 true)))

(declare-datatypes ((tuple2!6122 0))(
  ( (tuple2!6123 (_1!3071 (_ BitVec 64)) (_2!3071 V!13261)) )
))
(declare-datatypes ((List!5995 0))(
  ( (Nil!5992) (Cons!5991 (h!6847 tuple2!6122) (t!11153 List!5995)) )
))
(declare-datatypes ((ListLongMap!5049 0))(
  ( (ListLongMap!5050 (toList!2540 List!5995)) )
))
(declare-fun lt!176770 () ListLongMap!5049)

(declare-fun lt!176774 () ListLongMap!5049)

(declare-fun lt!176781 () tuple2!6122)

(declare-fun +!881 (ListLongMap!5049 tuple2!6122) ListLongMap!5049)

(assert (=> b!378815 (= lt!176770 (+!881 lt!176774 lt!176781))))

(declare-fun lt!176772 () ListLongMap!5049)

(declare-fun v!373 () V!13261)

(declare-datatypes ((Unit!11657 0))(
  ( (Unit!11658) )
))
(declare-fun lt!176776 () Unit!11657)

(declare-fun minValue!472 () V!13261)

(declare-fun addCommutativeForDiffKeys!295 (ListLongMap!5049 (_ BitVec 64) V!13261 (_ BitVec 64) V!13261) Unit!11657)

(assert (=> b!378815 (= lt!176776 (addCommutativeForDiffKeys!295 lt!176772 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378817 () Bool)

(declare-fun res!214759 () Bool)

(assert (=> b!378817 (=> (not res!214759) (not e!230518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378817 (= res!214759 (validKeyInArray!0 k0!778))))

(declare-fun b!378818 () Bool)

(declare-fun res!214758 () Bool)

(assert (=> b!378818 (=> (not res!214758) (not e!230518))))

(declare-fun arrayContainsKey!0 (array!22131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378818 (= res!214758 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!378819 () Bool)

(declare-fun e!230521 () Bool)

(assert (=> b!378819 (= e!230521 e!230519)))

(declare-fun res!214756 () Bool)

(assert (=> b!378819 (=> res!214756 e!230519)))

(assert (=> b!378819 (= res!214756 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!176777 () ListLongMap!5049)

(assert (=> b!378819 (= lt!176777 lt!176774)))

(declare-fun lt!176775 () tuple2!6122)

(assert (=> b!378819 (= lt!176774 (+!881 lt!176772 lt!176775))))

(declare-fun lt!176778 () ListLongMap!5049)

(assert (=> b!378819 (= lt!176778 lt!176770)))

(declare-fun lt!176782 () ListLongMap!5049)

(assert (=> b!378819 (= lt!176770 (+!881 lt!176782 lt!176775))))

(declare-fun lt!176780 () ListLongMap!5049)

(assert (=> b!378819 (= lt!176778 (+!881 lt!176780 lt!176775))))

(assert (=> b!378819 (= lt!176775 (tuple2!6123 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378820 () Bool)

(declare-fun res!214760 () Bool)

(assert (=> b!378820 (=> (not res!214760) (not e!230517))))

(assert (=> b!378820 (= res!214760 (arrayNoDuplicates!0 lt!176779 #b00000000000000000000000000000000 Nil!5991))))

(declare-fun mapNonEmpty!15240 () Bool)

(declare-fun tp!30123 () Bool)

(declare-fun e!230520 () Bool)

(assert (=> mapNonEmpty!15240 (= mapRes!15240 (and tp!30123 e!230520))))

(declare-fun mapRest!15240 () (Array (_ BitVec 32) ValueCell!4215))

(declare-fun mapKey!15240 () (_ BitVec 32))

(declare-fun mapValue!15240 () ValueCell!4215)

(assert (=> mapNonEmpty!15240 (= (arr!10532 _values!506) (store mapRest!15240 mapKey!15240 mapValue!15240))))

(declare-fun b!378821 () Bool)

(declare-fun res!214761 () Bool)

(assert (=> b!378821 (=> (not res!214761) (not e!230518))))

(assert (=> b!378821 (= res!214761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378822 () Bool)

(declare-fun res!214763 () Bool)

(assert (=> b!378822 (=> (not res!214763) (not e!230518))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378822 (= res!214763 (and (= (size!10884 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10883 _keys!658) (size!10884 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378816 () Bool)

(declare-fun res!214757 () Bool)

(assert (=> b!378816 (=> (not res!214757) (not e!230518))))

(assert (=> b!378816 (= res!214757 (or (= (select (arr!10531 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10531 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!214766 () Bool)

(assert (=> start!37350 (=> (not res!214766) (not e!230518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37350 (= res!214766 (validMask!0 mask!970))))

(assert (=> start!37350 e!230518))

(declare-fun array_inv!7748 (array!22133) Bool)

(assert (=> start!37350 (and (array_inv!7748 _values!506) e!230522)))

(assert (=> start!37350 tp!30122))

(assert (=> start!37350 true))

(assert (=> start!37350 tp_is_empty!9117))

(declare-fun array_inv!7749 (array!22131) Bool)

(assert (=> start!37350 (array_inv!7749 _keys!658)))

(declare-fun b!378823 () Bool)

(assert (=> b!378823 (= e!230520 tp_is_empty!9117)))

(declare-fun b!378824 () Bool)

(assert (=> b!378824 (= e!230517 (not e!230521))))

(declare-fun res!214765 () Bool)

(assert (=> b!378824 (=> res!214765 e!230521)))

(assert (=> b!378824 (= res!214765 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13261)

(declare-fun getCurrentListMap!1969 (array!22131 array!22133 (_ BitVec 32) (_ BitVec 32) V!13261 V!13261 (_ BitVec 32) Int) ListLongMap!5049)

(assert (=> b!378824 (= lt!176777 (getCurrentListMap!1969 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176771 () array!22133)

(assert (=> b!378824 (= lt!176778 (getCurrentListMap!1969 lt!176779 lt!176771 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378824 (and (= lt!176780 lt!176782) (= lt!176782 lt!176780))))

(assert (=> b!378824 (= lt!176782 (+!881 lt!176772 lt!176781))))

(assert (=> b!378824 (= lt!176781 (tuple2!6123 k0!778 v!373))))

(declare-fun lt!176773 () Unit!11657)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!120 (array!22131 array!22133 (_ BitVec 32) (_ BitVec 32) V!13261 V!13261 (_ BitVec 32) (_ BitVec 64) V!13261 (_ BitVec 32) Int) Unit!11657)

(assert (=> b!378824 (= lt!176773 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!120 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!787 (array!22131 array!22133 (_ BitVec 32) (_ BitVec 32) V!13261 V!13261 (_ BitVec 32) Int) ListLongMap!5049)

(assert (=> b!378824 (= lt!176780 (getCurrentListMapNoExtraKeys!787 lt!176779 lt!176771 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378824 (= lt!176771 (array!22134 (store (arr!10532 _values!506) i!548 (ValueCellFull!4215 v!373)) (size!10884 _values!506)))))

(assert (=> b!378824 (= lt!176772 (getCurrentListMapNoExtraKeys!787 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37350 res!214766) b!378822))

(assert (= (and b!378822 res!214763) b!378821))

(assert (= (and b!378821 res!214761) b!378812))

(assert (= (and b!378812 res!214762) b!378814))

(assert (= (and b!378814 res!214764) b!378817))

(assert (= (and b!378817 res!214759) b!378816))

(assert (= (and b!378816 res!214757) b!378818))

(assert (= (and b!378818 res!214758) b!378810))

(assert (= (and b!378810 res!214755) b!378820))

(assert (= (and b!378820 res!214760) b!378824))

(assert (= (and b!378824 (not res!214765)) b!378819))

(assert (= (and b!378819 (not res!214756)) b!378815))

(assert (= (and b!378813 condMapEmpty!15240) mapIsEmpty!15240))

(assert (= (and b!378813 (not condMapEmpty!15240)) mapNonEmpty!15240))

(get-info :version)

(assert (= (and mapNonEmpty!15240 ((_ is ValueCellFull!4215) mapValue!15240)) b!378823))

(assert (= (and b!378813 ((_ is ValueCellFull!4215) mapDefault!15240)) b!378811))

(assert (= start!37350 b!378813))

(declare-fun m!375701 () Bool)

(assert (=> b!378815 m!375701))

(declare-fun m!375703 () Bool)

(assert (=> b!378815 m!375703))

(declare-fun m!375705 () Bool)

(assert (=> b!378821 m!375705))

(declare-fun m!375707 () Bool)

(assert (=> b!378820 m!375707))

(declare-fun m!375709 () Bool)

(assert (=> mapNonEmpty!15240 m!375709))

(declare-fun m!375711 () Bool)

(assert (=> b!378818 m!375711))

(declare-fun m!375713 () Bool)

(assert (=> start!37350 m!375713))

(declare-fun m!375715 () Bool)

(assert (=> start!37350 m!375715))

(declare-fun m!375717 () Bool)

(assert (=> start!37350 m!375717))

(declare-fun m!375719 () Bool)

(assert (=> b!378810 m!375719))

(declare-fun m!375721 () Bool)

(assert (=> b!378810 m!375721))

(declare-fun m!375723 () Bool)

(assert (=> b!378816 m!375723))

(declare-fun m!375725 () Bool)

(assert (=> b!378824 m!375725))

(declare-fun m!375727 () Bool)

(assert (=> b!378824 m!375727))

(declare-fun m!375729 () Bool)

(assert (=> b!378824 m!375729))

(declare-fun m!375731 () Bool)

(assert (=> b!378824 m!375731))

(declare-fun m!375733 () Bool)

(assert (=> b!378824 m!375733))

(declare-fun m!375735 () Bool)

(assert (=> b!378824 m!375735))

(declare-fun m!375737 () Bool)

(assert (=> b!378824 m!375737))

(declare-fun m!375739 () Bool)

(assert (=> b!378817 m!375739))

(declare-fun m!375741 () Bool)

(assert (=> b!378819 m!375741))

(declare-fun m!375743 () Bool)

(assert (=> b!378819 m!375743))

(declare-fun m!375745 () Bool)

(assert (=> b!378819 m!375745))

(declare-fun m!375747 () Bool)

(assert (=> b!378812 m!375747))

(check-sat tp_is_empty!9117 (not b!378810) (not b!378812) (not b!378820) (not b!378819) b_and!15729 (not b!378824) (not b!378817) (not mapNonEmpty!15240) (not b!378815) (not b_next!8469) (not start!37350) (not b!378818) (not b!378821))
(check-sat b_and!15729 (not b_next!8469))
