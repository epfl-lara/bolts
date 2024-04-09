; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89070 () Bool)

(assert start!89070)

(declare-fun b!1020869 () Bool)

(declare-fun b_free!20103 () Bool)

(declare-fun b_next!20103 () Bool)

(assert (=> b!1020869 (= b_free!20103 (not b_next!20103))))

(declare-fun tp!71335 () Bool)

(declare-fun b_and!32309 () Bool)

(assert (=> b!1020869 (= tp!71335 b_and!32309)))

(declare-fun b!1020863 () Bool)

(declare-fun e!574787 () Bool)

(declare-fun e!574788 () Bool)

(assert (=> b!1020863 (= e!574787 e!574788)))

(declare-fun b!1020864 () Bool)

(declare-fun e!574784 () Bool)

(declare-fun e!574789 () Bool)

(declare-fun mapRes!37143 () Bool)

(assert (=> b!1020864 (= e!574784 (and e!574789 mapRes!37143))))

(declare-fun condMapEmpty!37143 () Bool)

(declare-datatypes ((V!36637 0))(
  ( (V!36638 (val!11962 Int)) )
))
(declare-datatypes ((array!63668 0))(
  ( (array!63669 (arr!30645 (Array (_ BitVec 32) (_ BitVec 64))) (size!31157 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11208 0))(
  ( (ValueCellFull!11208 (v!14512 V!36637)) (EmptyCell!11208) )
))
(declare-datatypes ((array!63670 0))(
  ( (array!63671 (arr!30646 (Array (_ BitVec 32) ValueCell!11208)) (size!31158 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5010 0))(
  ( (LongMapFixedSize!5011 (defaultEntry!5857 Int) (mask!29409 (_ BitVec 32)) (extraKeys!5589 (_ BitVec 32)) (zeroValue!5693 V!36637) (minValue!5693 V!36637) (_size!2560 (_ BitVec 32)) (_keys!10999 array!63668) (_values!5880 array!63670) (_vacant!2560 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1078 0))(
  ( (Cell!1079 (v!14513 LongMapFixedSize!5010)) )
))
(declare-datatypes ((LongMap!1078 0))(
  ( (LongMap!1079 (underlying!550 Cell!1078)) )
))
(declare-fun thiss!908 () LongMap!1078)

(declare-fun mapDefault!37143 () ValueCell!11208)

(assert (=> b!1020864 (= condMapEmpty!37143 (= (arr!30646 (_values!5880 (v!14513 (underlying!550 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11208)) mapDefault!37143)))))

(declare-fun res!684354 () Bool)

(declare-fun e!574783 () Bool)

(assert (=> start!89070 (=> (not res!684354) (not e!574783))))

(declare-fun valid!1877 (LongMap!1078) Bool)

(assert (=> start!89070 (= res!684354 (valid!1877 thiss!908))))

(assert (=> start!89070 e!574783))

(assert (=> start!89070 e!574787))

(declare-fun mapNonEmpty!37143 () Bool)

(declare-fun tp!71336 () Bool)

(declare-fun e!574785 () Bool)

(assert (=> mapNonEmpty!37143 (= mapRes!37143 (and tp!71336 e!574785))))

(declare-fun mapValue!37143 () ValueCell!11208)

(declare-fun mapRest!37143 () (Array (_ BitVec 32) ValueCell!11208))

(declare-fun mapKey!37143 () (_ BitVec 32))

(assert (=> mapNonEmpty!37143 (= (arr!30646 (_values!5880 (v!14513 (underlying!550 thiss!908)))) (store mapRest!37143 mapKey!37143 mapValue!37143))))

(declare-fun b!1020865 () Bool)

(declare-fun e!574786 () Bool)

(assert (=> b!1020865 (= e!574788 e!574786)))

(declare-fun b!1020866 () Bool)

(declare-fun valid!1878 (LongMapFixedSize!5010) Bool)

(assert (=> b!1020866 (= e!574783 (not (valid!1878 (v!14513 (underlying!550 thiss!908)))))))

(declare-fun b!1020867 () Bool)

(declare-fun tp_is_empty!23823 () Bool)

(assert (=> b!1020867 (= e!574785 tp_is_empty!23823)))

(declare-fun b!1020868 () Bool)

(assert (=> b!1020868 (= e!574789 tp_is_empty!23823)))

(declare-fun array_inv!23635 (array!63668) Bool)

(declare-fun array_inv!23636 (array!63670) Bool)

(assert (=> b!1020869 (= e!574786 (and tp!71335 tp_is_empty!23823 (array_inv!23635 (_keys!10999 (v!14513 (underlying!550 thiss!908)))) (array_inv!23636 (_values!5880 (v!14513 (underlying!550 thiss!908)))) e!574784))))

(declare-fun mapIsEmpty!37143 () Bool)

(assert (=> mapIsEmpty!37143 mapRes!37143))

(assert (= (and start!89070 res!684354) b!1020866))

(assert (= (and b!1020864 condMapEmpty!37143) mapIsEmpty!37143))

(assert (= (and b!1020864 (not condMapEmpty!37143)) mapNonEmpty!37143))

(get-info :version)

(assert (= (and mapNonEmpty!37143 ((_ is ValueCellFull!11208) mapValue!37143)) b!1020867))

(assert (= (and b!1020864 ((_ is ValueCellFull!11208) mapDefault!37143)) b!1020868))

(assert (= b!1020869 b!1020864))

(assert (= b!1020865 b!1020869))

(assert (= b!1020863 b!1020865))

(assert (= start!89070 b!1020863))

(declare-fun m!940727 () Bool)

(assert (=> start!89070 m!940727))

(declare-fun m!940729 () Bool)

(assert (=> mapNonEmpty!37143 m!940729))

(declare-fun m!940731 () Bool)

(assert (=> b!1020866 m!940731))

(declare-fun m!940733 () Bool)

(assert (=> b!1020869 m!940733))

(declare-fun m!940735 () Bool)

(assert (=> b!1020869 m!940735))

(check-sat (not start!89070) (not b_next!20103) tp_is_empty!23823 (not mapNonEmpty!37143) b_and!32309 (not b!1020866) (not b!1020869))
(check-sat b_and!32309 (not b_next!20103))
(get-model)

(declare-fun d!122431 () Bool)

(assert (=> d!122431 (= (array_inv!23635 (_keys!10999 (v!14513 (underlying!550 thiss!908)))) (bvsge (size!31157 (_keys!10999 (v!14513 (underlying!550 thiss!908)))) #b00000000000000000000000000000000))))

(assert (=> b!1020869 d!122431))

(declare-fun d!122433 () Bool)

(assert (=> d!122433 (= (array_inv!23636 (_values!5880 (v!14513 (underlying!550 thiss!908)))) (bvsge (size!31158 (_values!5880 (v!14513 (underlying!550 thiss!908)))) #b00000000000000000000000000000000))))

(assert (=> b!1020869 d!122433))

(declare-fun d!122435 () Bool)

(assert (=> d!122435 (= (valid!1877 thiss!908) (valid!1878 (v!14513 (underlying!550 thiss!908))))))

(declare-fun bs!29745 () Bool)

(assert (= bs!29745 d!122435))

(assert (=> bs!29745 m!940731))

(assert (=> start!89070 d!122435))

(declare-fun d!122437 () Bool)

(declare-fun res!684364 () Bool)

(declare-fun e!574816 () Bool)

(assert (=> d!122437 (=> (not res!684364) (not e!574816))))

(declare-fun simpleValid!384 (LongMapFixedSize!5010) Bool)

(assert (=> d!122437 (= res!684364 (simpleValid!384 (v!14513 (underlying!550 thiss!908))))))

(assert (=> d!122437 (= (valid!1878 (v!14513 (underlying!550 thiss!908))) e!574816)))

(declare-fun b!1020897 () Bool)

(declare-fun res!684365 () Bool)

(assert (=> b!1020897 (=> (not res!684365) (not e!574816))))

(declare-fun arrayCountValidKeys!0 (array!63668 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1020897 (= res!684365 (= (arrayCountValidKeys!0 (_keys!10999 (v!14513 (underlying!550 thiss!908))) #b00000000000000000000000000000000 (size!31157 (_keys!10999 (v!14513 (underlying!550 thiss!908))))) (_size!2560 (v!14513 (underlying!550 thiss!908)))))))

(declare-fun b!1020898 () Bool)

(declare-fun res!684366 () Bool)

(assert (=> b!1020898 (=> (not res!684366) (not e!574816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63668 (_ BitVec 32)) Bool)

(assert (=> b!1020898 (= res!684366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10999 (v!14513 (underlying!550 thiss!908))) (mask!29409 (v!14513 (underlying!550 thiss!908)))))))

(declare-fun b!1020899 () Bool)

(declare-datatypes ((List!21763 0))(
  ( (Nil!21760) (Cons!21759 (h!22957 (_ BitVec 64)) (t!30780 List!21763)) )
))
(declare-fun arrayNoDuplicates!0 (array!63668 (_ BitVec 32) List!21763) Bool)

(assert (=> b!1020899 (= e!574816 (arrayNoDuplicates!0 (_keys!10999 (v!14513 (underlying!550 thiss!908))) #b00000000000000000000000000000000 Nil!21760))))

(assert (= (and d!122437 res!684364) b!1020897))

(assert (= (and b!1020897 res!684365) b!1020898))

(assert (= (and b!1020898 res!684366) b!1020899))

(declare-fun m!940747 () Bool)

(assert (=> d!122437 m!940747))

(declare-fun m!940749 () Bool)

(assert (=> b!1020897 m!940749))

(declare-fun m!940751 () Bool)

(assert (=> b!1020898 m!940751))

(declare-fun m!940753 () Bool)

(assert (=> b!1020899 m!940753))

(assert (=> b!1020866 d!122437))

(declare-fun mapIsEmpty!37149 () Bool)

(declare-fun mapRes!37149 () Bool)

(assert (=> mapIsEmpty!37149 mapRes!37149))

(declare-fun b!1020906 () Bool)

(declare-fun e!574822 () Bool)

(assert (=> b!1020906 (= e!574822 tp_is_empty!23823)))

(declare-fun condMapEmpty!37149 () Bool)

(declare-fun mapDefault!37149 () ValueCell!11208)

(assert (=> mapNonEmpty!37143 (= condMapEmpty!37149 (= mapRest!37143 ((as const (Array (_ BitVec 32) ValueCell!11208)) mapDefault!37149)))))

(declare-fun e!574821 () Bool)

(assert (=> mapNonEmpty!37143 (= tp!71336 (and e!574821 mapRes!37149))))

(declare-fun b!1020907 () Bool)

(assert (=> b!1020907 (= e!574821 tp_is_empty!23823)))

(declare-fun mapNonEmpty!37149 () Bool)

(declare-fun tp!71345 () Bool)

(assert (=> mapNonEmpty!37149 (= mapRes!37149 (and tp!71345 e!574822))))

(declare-fun mapRest!37149 () (Array (_ BitVec 32) ValueCell!11208))

(declare-fun mapKey!37149 () (_ BitVec 32))

(declare-fun mapValue!37149 () ValueCell!11208)

(assert (=> mapNonEmpty!37149 (= mapRest!37143 (store mapRest!37149 mapKey!37149 mapValue!37149))))

(assert (= (and mapNonEmpty!37143 condMapEmpty!37149) mapIsEmpty!37149))

(assert (= (and mapNonEmpty!37143 (not condMapEmpty!37149)) mapNonEmpty!37149))

(assert (= (and mapNonEmpty!37149 ((_ is ValueCellFull!11208) mapValue!37149)) b!1020906))

(assert (= (and mapNonEmpty!37143 ((_ is ValueCellFull!11208) mapDefault!37149)) b!1020907))

(declare-fun m!940755 () Bool)

(assert (=> mapNonEmpty!37149 m!940755))

(check-sat (not b_next!20103) (not d!122435) (not d!122437) tp_is_empty!23823 (not b!1020897) (not b!1020899) b_and!32309 (not b!1020898) (not mapNonEmpty!37149))
(check-sat b_and!32309 (not b_next!20103))
