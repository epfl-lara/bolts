; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15744 () Bool)

(assert start!15744)

(declare-fun b!156953 () Bool)

(declare-fun b_free!3399 () Bool)

(declare-fun b_next!3399 () Bool)

(assert (=> b!156953 (= b_free!3399 (not b_next!3399))))

(declare-fun tp!12722 () Bool)

(declare-fun b_and!9831 () Bool)

(assert (=> b!156953 (= tp!12722 b_and!9831)))

(declare-fun b!156950 () Bool)

(declare-fun e!102666 () Bool)

(assert (=> b!156950 (= e!102666 false)))

(declare-fun lt!81635 () Bool)

(declare-datatypes ((V!3915 0))(
  ( (V!3916 (val!1645 Int)) )
))
(declare-datatypes ((ValueCell!1257 0))(
  ( (ValueCellFull!1257 (v!3506 V!3915)) (EmptyCell!1257) )
))
(declare-datatypes ((array!5454 0))(
  ( (array!5455 (arr!2584 (Array (_ BitVec 32) (_ BitVec 64))) (size!2862 (_ BitVec 32))) )
))
(declare-datatypes ((array!5456 0))(
  ( (array!5457 (arr!2585 (Array (_ BitVec 32) ValueCell!1257)) (size!2863 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1422 0))(
  ( (LongMapFixedSize!1423 (defaultEntry!3153 Int) (mask!7618 (_ BitVec 32)) (extraKeys!2894 (_ BitVec 32)) (zeroValue!2996 V!3915) (minValue!2996 V!3915) (_size!760 (_ BitVec 32)) (_keys!4928 array!5454) (_values!3136 array!5456) (_vacant!760 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1422)

(declare-datatypes ((List!1882 0))(
  ( (Nil!1879) (Cons!1878 (h!2487 (_ BitVec 64)) (t!6692 List!1882)) )
))
(declare-fun arrayNoDuplicates!0 (array!5454 (_ BitVec 32) List!1882) Bool)

(assert (=> b!156950 (= lt!81635 (arrayNoDuplicates!0 (_keys!4928 thiss!1248) #b00000000000000000000000000000000 Nil!1879))))

(declare-fun mapNonEmpty!5444 () Bool)

(declare-fun mapRes!5444 () Bool)

(declare-fun tp!12721 () Bool)

(declare-fun e!102663 () Bool)

(assert (=> mapNonEmpty!5444 (= mapRes!5444 (and tp!12721 e!102663))))

(declare-fun mapKey!5444 () (_ BitVec 32))

(declare-fun mapValue!5444 () ValueCell!1257)

(declare-fun mapRest!5444 () (Array (_ BitVec 32) ValueCell!1257))

(assert (=> mapNonEmpty!5444 (= (arr!2585 (_values!3136 thiss!1248)) (store mapRest!5444 mapKey!5444 mapValue!5444))))

(declare-fun b!156951 () Bool)

(declare-fun res!74219 () Bool)

(assert (=> b!156951 (=> (not res!74219) (not e!102666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5454 (_ BitVec 32)) Bool)

(assert (=> b!156951 (= res!74219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4928 thiss!1248) (mask!7618 thiss!1248)))))

(declare-fun b!156952 () Bool)

(declare-fun tp_is_empty!3201 () Bool)

(assert (=> b!156952 (= e!102663 tp_is_empty!3201)))

(declare-fun e!102668 () Bool)

(declare-fun e!102665 () Bool)

(declare-fun array_inv!1633 (array!5454) Bool)

(declare-fun array_inv!1634 (array!5456) Bool)

(assert (=> b!156953 (= e!102665 (and tp!12722 tp_is_empty!3201 (array_inv!1633 (_keys!4928 thiss!1248)) (array_inv!1634 (_values!3136 thiss!1248)) e!102668))))

(declare-fun mapIsEmpty!5444 () Bool)

(assert (=> mapIsEmpty!5444 mapRes!5444))

(declare-fun b!156954 () Bool)

(declare-fun res!74221 () Bool)

(assert (=> b!156954 (=> (not res!74221) (not e!102666))))

(assert (=> b!156954 (= res!74221 (and (= (size!2863 (_values!3136 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7618 thiss!1248))) (= (size!2862 (_keys!4928 thiss!1248)) (size!2863 (_values!3136 thiss!1248))) (bvsge (mask!7618 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2894 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2894 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2894 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2894 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2894 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2894 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2894 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156955 () Bool)

(declare-fun e!102667 () Bool)

(assert (=> b!156955 (= e!102668 (and e!102667 mapRes!5444))))

(declare-fun condMapEmpty!5444 () Bool)

(declare-fun mapDefault!5444 () ValueCell!1257)

(assert (=> b!156955 (= condMapEmpty!5444 (= (arr!2585 (_values!3136 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1257)) mapDefault!5444)))))

(declare-fun b!156956 () Bool)

(declare-fun res!74217 () Bool)

(assert (=> b!156956 (=> (not res!74217) (not e!102666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156956 (= res!74217 (validMask!0 (mask!7618 thiss!1248)))))

(declare-fun b!156957 () Bool)

(declare-fun res!74218 () Bool)

(assert (=> b!156957 (=> (not res!74218) (not e!102666))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156957 (= res!74218 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!74220 () Bool)

(assert (=> start!15744 (=> (not res!74220) (not e!102666))))

(declare-fun valid!677 (LongMapFixedSize!1422) Bool)

(assert (=> start!15744 (= res!74220 (valid!677 thiss!1248))))

(assert (=> start!15744 e!102666))

(assert (=> start!15744 e!102665))

(assert (=> start!15744 true))

(declare-fun b!156949 () Bool)

(assert (=> b!156949 (= e!102667 tp_is_empty!3201)))

(assert (= (and start!15744 res!74220) b!156957))

(assert (= (and b!156957 res!74218) b!156956))

(assert (= (and b!156956 res!74217) b!156954))

(assert (= (and b!156954 res!74221) b!156951))

(assert (= (and b!156951 res!74219) b!156950))

(assert (= (and b!156955 condMapEmpty!5444) mapIsEmpty!5444))

(assert (= (and b!156955 (not condMapEmpty!5444)) mapNonEmpty!5444))

(get-info :version)

(assert (= (and mapNonEmpty!5444 ((_ is ValueCellFull!1257) mapValue!5444)) b!156952))

(assert (= (and b!156955 ((_ is ValueCellFull!1257) mapDefault!5444)) b!156949))

(assert (= b!156953 b!156955))

(assert (= start!15744 b!156953))

(declare-fun m!190267 () Bool)

(assert (=> b!156950 m!190267))

(declare-fun m!190269 () Bool)

(assert (=> mapNonEmpty!5444 m!190269))

(declare-fun m!190271 () Bool)

(assert (=> b!156953 m!190271))

(declare-fun m!190273 () Bool)

(assert (=> b!156953 m!190273))

(declare-fun m!190275 () Bool)

(assert (=> b!156956 m!190275))

(declare-fun m!190277 () Bool)

(assert (=> b!156951 m!190277))

(declare-fun m!190279 () Bool)

(assert (=> start!15744 m!190279))

(check-sat (not b!156951) (not b!156950) (not b_next!3399) b_and!9831 (not b!156953) (not start!15744) (not b!156956) (not mapNonEmpty!5444) tp_is_empty!3201)
(check-sat b_and!9831 (not b_next!3399))
