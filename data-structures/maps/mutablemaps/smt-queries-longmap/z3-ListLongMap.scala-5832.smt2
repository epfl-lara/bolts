; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75316 () Bool)

(assert start!75316)

(declare-fun b!886870 () Bool)

(declare-fun b_free!15495 () Bool)

(declare-fun b_next!15495 () Bool)

(assert (=> b!886870 (= b_free!15495 (not b_next!15495))))

(declare-fun tp!54417 () Bool)

(declare-fun b_and!25719 () Bool)

(assert (=> b!886870 (= tp!54417 b_and!25719)))

(declare-fun b!886864 () Bool)

(declare-fun e!493786 () Bool)

(declare-datatypes ((V!28729 0))(
  ( (V!28730 (val!8962 Int)) )
))
(declare-datatypes ((ValueCell!8430 0))(
  ( (ValueCellFull!8430 (v!11400 V!28729)) (EmptyCell!8430) )
))
(declare-datatypes ((array!51590 0))(
  ( (array!51591 (arr!24808 (Array (_ BitVec 32) ValueCell!8430)) (size!25249 (_ BitVec 32))) )
))
(declare-datatypes ((array!51592 0))(
  ( (array!51593 (arr!24809 (Array (_ BitVec 32) (_ BitVec 64))) (size!25250 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3876 0))(
  ( (LongMapFixedSize!3877 (defaultEntry!5126 Int) (mask!25508 (_ BitVec 32)) (extraKeys!4819 (_ BitVec 32)) (zeroValue!4923 V!28729) (minValue!4923 V!28729) (_size!1993 (_ BitVec 32)) (_keys!9797 array!51592) (_values!5110 array!51590) (_vacant!1993 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1030 0))(
  ( (Cell!1031 (v!11401 LongMapFixedSize!3876)) )
))
(declare-datatypes ((LongMap!1030 0))(
  ( (LongMap!1031 (underlying!526 Cell!1030)) )
))
(declare-fun thiss!833 () LongMap!1030)

(declare-fun valid!1500 (LongMapFixedSize!3876) Bool)

(assert (=> b!886864 (= e!493786 (not (valid!1500 (v!11401 (underlying!526 thiss!833)))))))

(declare-fun b!886865 () Bool)

(declare-fun e!493781 () Bool)

(declare-fun e!493787 () Bool)

(declare-fun mapRes!28251 () Bool)

(assert (=> b!886865 (= e!493781 (and e!493787 mapRes!28251))))

(declare-fun condMapEmpty!28251 () Bool)

(declare-fun mapDefault!28251 () ValueCell!8430)

(assert (=> b!886865 (= condMapEmpty!28251 (= (arr!24808 (_values!5110 (v!11401 (underlying!526 thiss!833)))) ((as const (Array (_ BitVec 32) ValueCell!8430)) mapDefault!28251)))))

(declare-fun b!886866 () Bool)

(declare-fun e!493782 () Bool)

(declare-fun e!493784 () Bool)

(assert (=> b!886866 (= e!493782 e!493784)))

(declare-fun b!886867 () Bool)

(declare-fun e!493785 () Bool)

(assert (=> b!886867 (= e!493785 e!493782)))

(declare-fun mapIsEmpty!28251 () Bool)

(assert (=> mapIsEmpty!28251 mapRes!28251))

(declare-fun b!886868 () Bool)

(declare-fun tp_is_empty!17823 () Bool)

(assert (=> b!886868 (= e!493787 tp_is_empty!17823)))

(declare-fun res!602054 () Bool)

(assert (=> start!75316 (=> (not res!602054) (not e!493786))))

(declare-fun valid!1501 (LongMap!1030) Bool)

(assert (=> start!75316 (= res!602054 (valid!1501 thiss!833))))

(assert (=> start!75316 e!493786))

(assert (=> start!75316 e!493785))

(declare-fun mapNonEmpty!28251 () Bool)

(declare-fun tp!54416 () Bool)

(declare-fun e!493780 () Bool)

(assert (=> mapNonEmpty!28251 (= mapRes!28251 (and tp!54416 e!493780))))

(declare-fun mapValue!28251 () ValueCell!8430)

(declare-fun mapRest!28251 () (Array (_ BitVec 32) ValueCell!8430))

(declare-fun mapKey!28251 () (_ BitVec 32))

(assert (=> mapNonEmpty!28251 (= (arr!24808 (_values!5110 (v!11401 (underlying!526 thiss!833)))) (store mapRest!28251 mapKey!28251 mapValue!28251))))

(declare-fun b!886869 () Bool)

(assert (=> b!886869 (= e!493780 tp_is_empty!17823)))

(declare-fun array_inv!19506 (array!51592) Bool)

(declare-fun array_inv!19507 (array!51590) Bool)

(assert (=> b!886870 (= e!493784 (and tp!54417 tp_is_empty!17823 (array_inv!19506 (_keys!9797 (v!11401 (underlying!526 thiss!833)))) (array_inv!19507 (_values!5110 (v!11401 (underlying!526 thiss!833)))) e!493781))))

(assert (= (and start!75316 res!602054) b!886864))

(assert (= (and b!886865 condMapEmpty!28251) mapIsEmpty!28251))

(assert (= (and b!886865 (not condMapEmpty!28251)) mapNonEmpty!28251))

(get-info :version)

(assert (= (and mapNonEmpty!28251 ((_ is ValueCellFull!8430) mapValue!28251)) b!886869))

(assert (= (and b!886865 ((_ is ValueCellFull!8430) mapDefault!28251)) b!886868))

(assert (= b!886870 b!886865))

(assert (= b!886866 b!886870))

(assert (= b!886867 b!886866))

(assert (= start!75316 b!886867))

(declare-fun m!826767 () Bool)

(assert (=> b!886864 m!826767))

(declare-fun m!826769 () Bool)

(assert (=> start!75316 m!826769))

(declare-fun m!826771 () Bool)

(assert (=> mapNonEmpty!28251 m!826771))

(declare-fun m!826773 () Bool)

(assert (=> b!886870 m!826773))

(declare-fun m!826775 () Bool)

(assert (=> b!886870 m!826775))

(check-sat (not b!886864) (not b_next!15495) tp_is_empty!17823 b_and!25719 (not start!75316) (not mapNonEmpty!28251) (not b!886870))
(check-sat b_and!25719 (not b_next!15495))
(get-model)

(declare-fun d!109795 () Bool)

(declare-fun res!602064 () Bool)

(declare-fun e!493814 () Bool)

(assert (=> d!109795 (=> (not res!602064) (not e!493814))))

(declare-fun simpleValid!285 (LongMapFixedSize!3876) Bool)

(assert (=> d!109795 (= res!602064 (simpleValid!285 (v!11401 (underlying!526 thiss!833))))))

(assert (=> d!109795 (= (valid!1500 (v!11401 (underlying!526 thiss!833))) e!493814)))

(declare-fun b!886898 () Bool)

(declare-fun res!602065 () Bool)

(assert (=> b!886898 (=> (not res!602065) (not e!493814))))

(declare-fun arrayCountValidKeys!0 (array!51592 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!886898 (= res!602065 (= (arrayCountValidKeys!0 (_keys!9797 (v!11401 (underlying!526 thiss!833))) #b00000000000000000000000000000000 (size!25250 (_keys!9797 (v!11401 (underlying!526 thiss!833))))) (_size!1993 (v!11401 (underlying!526 thiss!833)))))))

(declare-fun b!886899 () Bool)

(declare-fun res!602066 () Bool)

(assert (=> b!886899 (=> (not res!602066) (not e!493814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51592 (_ BitVec 32)) Bool)

(assert (=> b!886899 (= res!602066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9797 (v!11401 (underlying!526 thiss!833))) (mask!25508 (v!11401 (underlying!526 thiss!833)))))))

(declare-fun b!886900 () Bool)

(declare-datatypes ((List!17761 0))(
  ( (Nil!17758) (Cons!17757 (h!18888 (_ BitVec 64)) (t!25052 List!17761)) )
))
(declare-fun arrayNoDuplicates!0 (array!51592 (_ BitVec 32) List!17761) Bool)

(assert (=> b!886900 (= e!493814 (arrayNoDuplicates!0 (_keys!9797 (v!11401 (underlying!526 thiss!833))) #b00000000000000000000000000000000 Nil!17758))))

(assert (= (and d!109795 res!602064) b!886898))

(assert (= (and b!886898 res!602065) b!886899))

(assert (= (and b!886899 res!602066) b!886900))

(declare-fun m!826787 () Bool)

(assert (=> d!109795 m!826787))

(declare-fun m!826789 () Bool)

(assert (=> b!886898 m!826789))

(declare-fun m!826791 () Bool)

(assert (=> b!886899 m!826791))

(declare-fun m!826793 () Bool)

(assert (=> b!886900 m!826793))

(assert (=> b!886864 d!109795))

(declare-fun d!109797 () Bool)

(assert (=> d!109797 (= (array_inv!19506 (_keys!9797 (v!11401 (underlying!526 thiss!833)))) (bvsge (size!25250 (_keys!9797 (v!11401 (underlying!526 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!886870 d!109797))

(declare-fun d!109799 () Bool)

(assert (=> d!109799 (= (array_inv!19507 (_values!5110 (v!11401 (underlying!526 thiss!833)))) (bvsge (size!25249 (_values!5110 (v!11401 (underlying!526 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!886870 d!109799))

(declare-fun d!109801 () Bool)

(assert (=> d!109801 (= (valid!1501 thiss!833) (valid!1500 (v!11401 (underlying!526 thiss!833))))))

(declare-fun bs!24853 () Bool)

(assert (= bs!24853 d!109801))

(assert (=> bs!24853 m!826767))

(assert (=> start!75316 d!109801))

(declare-fun mapNonEmpty!28257 () Bool)

(declare-fun mapRes!28257 () Bool)

(declare-fun tp!54426 () Bool)

(declare-fun e!493819 () Bool)

(assert (=> mapNonEmpty!28257 (= mapRes!28257 (and tp!54426 e!493819))))

(declare-fun mapValue!28257 () ValueCell!8430)

(declare-fun mapKey!28257 () (_ BitVec 32))

(declare-fun mapRest!28257 () (Array (_ BitVec 32) ValueCell!8430))

(assert (=> mapNonEmpty!28257 (= mapRest!28251 (store mapRest!28257 mapKey!28257 mapValue!28257))))

(declare-fun mapIsEmpty!28257 () Bool)

(assert (=> mapIsEmpty!28257 mapRes!28257))

(declare-fun b!886907 () Bool)

(assert (=> b!886907 (= e!493819 tp_is_empty!17823)))

(declare-fun b!886908 () Bool)

(declare-fun e!493820 () Bool)

(assert (=> b!886908 (= e!493820 tp_is_empty!17823)))

(declare-fun condMapEmpty!28257 () Bool)

(declare-fun mapDefault!28257 () ValueCell!8430)

(assert (=> mapNonEmpty!28251 (= condMapEmpty!28257 (= mapRest!28251 ((as const (Array (_ BitVec 32) ValueCell!8430)) mapDefault!28257)))))

(assert (=> mapNonEmpty!28251 (= tp!54416 (and e!493820 mapRes!28257))))

(assert (= (and mapNonEmpty!28251 condMapEmpty!28257) mapIsEmpty!28257))

(assert (= (and mapNonEmpty!28251 (not condMapEmpty!28257)) mapNonEmpty!28257))

(assert (= (and mapNonEmpty!28257 ((_ is ValueCellFull!8430) mapValue!28257)) b!886907))

(assert (= (and mapNonEmpty!28251 ((_ is ValueCellFull!8430) mapDefault!28257)) b!886908))

(declare-fun m!826795 () Bool)

(assert (=> mapNonEmpty!28257 m!826795))

(check-sat (not b_next!15495) (not d!109795) tp_is_empty!17823 (not mapNonEmpty!28257) (not d!109801) b_and!25719 (not b!886900) (not b!886899) (not b!886898))
(check-sat b_and!25719 (not b_next!15495))
