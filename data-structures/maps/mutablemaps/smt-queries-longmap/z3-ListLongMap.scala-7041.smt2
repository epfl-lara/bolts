; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89296 () Bool)

(assert start!89296)

(declare-fun b!1023470 () Bool)

(declare-fun b_free!20301 () Bool)

(declare-fun b_next!20301 () Bool)

(assert (=> b!1023470 (= b_free!20301 (not b_next!20301))))

(declare-fun tp!71938 () Bool)

(declare-fun b_and!32541 () Bool)

(assert (=> b!1023470 (= tp!71938 b_and!32541)))

(declare-fun mapIsEmpty!37449 () Bool)

(declare-fun mapRes!37449 () Bool)

(assert (=> mapIsEmpty!37449 mapRes!37449))

(declare-fun b!1023464 () Bool)

(declare-fun res!685533 () Bool)

(declare-fun e!576756 () Bool)

(assert (=> b!1023464 (=> (not res!685533) (not e!576756))))

(declare-datatypes ((V!36901 0))(
  ( (V!36902 (val!12061 Int)) )
))
(declare-datatypes ((ValueCell!11307 0))(
  ( (ValueCellFull!11307 (v!14631 V!36901)) (EmptyCell!11307) )
))
(declare-datatypes ((array!64070 0))(
  ( (array!64071 (arr!30843 (Array (_ BitVec 32) (_ BitVec 64))) (size!31355 (_ BitVec 32))) )
))
(declare-datatypes ((array!64072 0))(
  ( (array!64073 (arr!30844 (Array (_ BitVec 32) ValueCell!11307)) (size!31356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5208 0))(
  ( (LongMapFixedSize!5209 (defaultEntry!5956 Int) (mask!29574 (_ BitVec 32)) (extraKeys!5688 (_ BitVec 32)) (zeroValue!5792 V!36901) (minValue!5792 V!36901) (_size!2659 (_ BitVec 32)) (_keys!11098 array!64070) (_values!5979 array!64072) (_vacant!2659 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5208)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023464 (= res!685533 (validMask!0 (mask!29574 thiss!1427)))))

(declare-fun res!685529 () Bool)

(assert (=> start!89296 (=> (not res!685529) (not e!576756))))

(declare-fun valid!1941 (LongMapFixedSize!5208) Bool)

(assert (=> start!89296 (= res!685529 (valid!1941 thiss!1427))))

(assert (=> start!89296 e!576756))

(declare-fun e!576757 () Bool)

(assert (=> start!89296 e!576757))

(assert (=> start!89296 true))

(declare-fun b!1023465 () Bool)

(declare-fun e!576753 () Bool)

(declare-fun tp_is_empty!24021 () Bool)

(assert (=> b!1023465 (= e!576753 tp_is_empty!24021)))

(declare-fun b!1023466 () Bool)

(declare-fun res!685532 () Bool)

(assert (=> b!1023466 (=> (not res!685532) (not e!576756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64070 (_ BitVec 32)) Bool)

(assert (=> b!1023466 (= res!685532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11098 thiss!1427) (mask!29574 thiss!1427)))))

(declare-fun b!1023467 () Bool)

(declare-fun e!576754 () Bool)

(assert (=> b!1023467 (= e!576754 tp_is_empty!24021)))

(declare-fun b!1023468 () Bool)

(declare-fun res!685531 () Bool)

(assert (=> b!1023468 (=> (not res!685531) (not e!576756))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023468 (= res!685531 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023469 () Bool)

(declare-fun res!685530 () Bool)

(assert (=> b!1023469 (=> (not res!685530) (not e!576756))))

(assert (=> b!1023469 (= res!685530 (and (= (size!31356 (_values!5979 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29574 thiss!1427))) (= (size!31355 (_keys!11098 thiss!1427)) (size!31356 (_values!5979 thiss!1427))) (bvsge (mask!29574 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5688 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5688 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5688 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5688 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5688 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5688 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5688 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!576752 () Bool)

(declare-fun array_inv!23765 (array!64070) Bool)

(declare-fun array_inv!23766 (array!64072) Bool)

(assert (=> b!1023470 (= e!576757 (and tp!71938 tp_is_empty!24021 (array_inv!23765 (_keys!11098 thiss!1427)) (array_inv!23766 (_values!5979 thiss!1427)) e!576752))))

(declare-fun b!1023471 () Bool)

(assert (=> b!1023471 (= e!576756 false)))

(declare-fun lt!450394 () Bool)

(declare-datatypes ((List!21816 0))(
  ( (Nil!21813) (Cons!21812 (h!23010 (_ BitVec 64)) (t!30861 List!21816)) )
))
(declare-fun arrayNoDuplicates!0 (array!64070 (_ BitVec 32) List!21816) Bool)

(assert (=> b!1023471 (= lt!450394 (arrayNoDuplicates!0 (_keys!11098 thiss!1427) #b00000000000000000000000000000000 Nil!21813))))

(declare-fun mapNonEmpty!37449 () Bool)

(declare-fun tp!71939 () Bool)

(assert (=> mapNonEmpty!37449 (= mapRes!37449 (and tp!71939 e!576754))))

(declare-fun mapValue!37449 () ValueCell!11307)

(declare-fun mapRest!37449 () (Array (_ BitVec 32) ValueCell!11307))

(declare-fun mapKey!37449 () (_ BitVec 32))

(assert (=> mapNonEmpty!37449 (= (arr!30844 (_values!5979 thiss!1427)) (store mapRest!37449 mapKey!37449 mapValue!37449))))

(declare-fun b!1023472 () Bool)

(assert (=> b!1023472 (= e!576752 (and e!576753 mapRes!37449))))

(declare-fun condMapEmpty!37449 () Bool)

(declare-fun mapDefault!37449 () ValueCell!11307)

(assert (=> b!1023472 (= condMapEmpty!37449 (= (arr!30844 (_values!5979 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11307)) mapDefault!37449)))))

(assert (= (and start!89296 res!685529) b!1023468))

(assert (= (and b!1023468 res!685531) b!1023464))

(assert (= (and b!1023464 res!685533) b!1023469))

(assert (= (and b!1023469 res!685530) b!1023466))

(assert (= (and b!1023466 res!685532) b!1023471))

(assert (= (and b!1023472 condMapEmpty!37449) mapIsEmpty!37449))

(assert (= (and b!1023472 (not condMapEmpty!37449)) mapNonEmpty!37449))

(get-info :version)

(assert (= (and mapNonEmpty!37449 ((_ is ValueCellFull!11307) mapValue!37449)) b!1023467))

(assert (= (and b!1023472 ((_ is ValueCellFull!11307) mapDefault!37449)) b!1023465))

(assert (= b!1023470 b!1023472))

(assert (= start!89296 b!1023470))

(declare-fun m!942247 () Bool)

(assert (=> b!1023466 m!942247))

(declare-fun m!942249 () Bool)

(assert (=> mapNonEmpty!37449 m!942249))

(declare-fun m!942251 () Bool)

(assert (=> b!1023470 m!942251))

(declare-fun m!942253 () Bool)

(assert (=> b!1023470 m!942253))

(declare-fun m!942255 () Bool)

(assert (=> b!1023471 m!942255))

(declare-fun m!942257 () Bool)

(assert (=> start!89296 m!942257))

(declare-fun m!942259 () Bool)

(assert (=> b!1023464 m!942259))

(check-sat (not b!1023470) (not mapNonEmpty!37449) (not start!89296) (not b_next!20301) (not b!1023471) b_and!32541 (not b!1023464) tp_is_empty!24021 (not b!1023466))
(check-sat b_and!32541 (not b_next!20301))
