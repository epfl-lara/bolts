; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89290 () Bool)

(assert start!89290)

(declare-fun b!1023387 () Bool)

(declare-fun b_free!20295 () Bool)

(declare-fun b_next!20295 () Bool)

(assert (=> b!1023387 (= b_free!20295 (not b_next!20295))))

(declare-fun tp!71920 () Bool)

(declare-fun b_and!32535 () Bool)

(assert (=> b!1023387 (= tp!71920 b_and!32535)))

(declare-fun mapNonEmpty!37440 () Bool)

(declare-fun mapRes!37440 () Bool)

(declare-fun tp!71921 () Bool)

(declare-fun e!576699 () Bool)

(assert (=> mapNonEmpty!37440 (= mapRes!37440 (and tp!71921 e!576699))))

(declare-fun mapKey!37440 () (_ BitVec 32))

(declare-datatypes ((V!36893 0))(
  ( (V!36894 (val!12058 Int)) )
))
(declare-datatypes ((ValueCell!11304 0))(
  ( (ValueCellFull!11304 (v!14628 V!36893)) (EmptyCell!11304) )
))
(declare-fun mapRest!37440 () (Array (_ BitVec 32) ValueCell!11304))

(declare-datatypes ((array!64058 0))(
  ( (array!64059 (arr!30837 (Array (_ BitVec 32) (_ BitVec 64))) (size!31349 (_ BitVec 32))) )
))
(declare-datatypes ((array!64060 0))(
  ( (array!64061 (arr!30838 (Array (_ BitVec 32) ValueCell!11304)) (size!31350 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5202 0))(
  ( (LongMapFixedSize!5203 (defaultEntry!5953 Int) (mask!29569 (_ BitVec 32)) (extraKeys!5685 (_ BitVec 32)) (zeroValue!5789 V!36893) (minValue!5789 V!36893) (_size!2656 (_ BitVec 32)) (_keys!11095 array!64058) (_values!5976 array!64060) (_vacant!2656 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5202)

(declare-fun mapValue!37440 () ValueCell!11304)

(assert (=> mapNonEmpty!37440 (= (arr!30838 (_values!5976 thiss!1427)) (store mapRest!37440 mapKey!37440 mapValue!37440))))

(declare-fun res!685485 () Bool)

(declare-fun e!576698 () Bool)

(assert (=> start!89290 (=> (not res!685485) (not e!576698))))

(declare-fun valid!1939 (LongMapFixedSize!5202) Bool)

(assert (=> start!89290 (= res!685485 (valid!1939 thiss!1427))))

(assert (=> start!89290 e!576698))

(declare-fun e!576702 () Bool)

(assert (=> start!89290 e!576702))

(assert (=> start!89290 true))

(declare-fun b!1023383 () Bool)

(declare-fun e!576701 () Bool)

(declare-fun tp_is_empty!24015 () Bool)

(assert (=> b!1023383 (= e!576701 tp_is_empty!24015)))

(declare-fun b!1023384 () Bool)

(declare-fun res!685486 () Bool)

(assert (=> b!1023384 (=> (not res!685486) (not e!576698))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023384 (= res!685486 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023385 () Bool)

(declare-fun res!685487 () Bool)

(assert (=> b!1023385 (=> (not res!685487) (not e!576698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023385 (= res!685487 (validMask!0 (mask!29569 thiss!1427)))))

(declare-fun b!1023386 () Bool)

(declare-fun res!685484 () Bool)

(assert (=> b!1023386 (=> (not res!685484) (not e!576698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64058 (_ BitVec 32)) Bool)

(assert (=> b!1023386 (= res!685484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11095 thiss!1427) (mask!29569 thiss!1427)))))

(declare-fun e!576700 () Bool)

(declare-fun array_inv!23763 (array!64058) Bool)

(declare-fun array_inv!23764 (array!64060) Bool)

(assert (=> b!1023387 (= e!576702 (and tp!71920 tp_is_empty!24015 (array_inv!23763 (_keys!11095 thiss!1427)) (array_inv!23764 (_values!5976 thiss!1427)) e!576700))))

(declare-fun b!1023388 () Bool)

(assert (=> b!1023388 (= e!576699 tp_is_empty!24015)))

(declare-fun b!1023389 () Bool)

(assert (=> b!1023389 (= e!576700 (and e!576701 mapRes!37440))))

(declare-fun condMapEmpty!37440 () Bool)

(declare-fun mapDefault!37440 () ValueCell!11304)

(assert (=> b!1023389 (= condMapEmpty!37440 (= (arr!30838 (_values!5976 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11304)) mapDefault!37440)))))

(declare-fun b!1023390 () Bool)

(assert (=> b!1023390 (= e!576698 false)))

(declare-fun lt!450385 () Bool)

(declare-datatypes ((List!21815 0))(
  ( (Nil!21812) (Cons!21811 (h!23009 (_ BitVec 64)) (t!30860 List!21815)) )
))
(declare-fun arrayNoDuplicates!0 (array!64058 (_ BitVec 32) List!21815) Bool)

(assert (=> b!1023390 (= lt!450385 (arrayNoDuplicates!0 (_keys!11095 thiss!1427) #b00000000000000000000000000000000 Nil!21812))))

(declare-fun mapIsEmpty!37440 () Bool)

(assert (=> mapIsEmpty!37440 mapRes!37440))

(declare-fun b!1023391 () Bool)

(declare-fun res!685488 () Bool)

(assert (=> b!1023391 (=> (not res!685488) (not e!576698))))

(assert (=> b!1023391 (= res!685488 (and (= (size!31350 (_values!5976 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29569 thiss!1427))) (= (size!31349 (_keys!11095 thiss!1427)) (size!31350 (_values!5976 thiss!1427))) (bvsge (mask!29569 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5685 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5685 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5685 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5685 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5685 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5685 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5685 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!89290 res!685485) b!1023384))

(assert (= (and b!1023384 res!685486) b!1023385))

(assert (= (and b!1023385 res!685487) b!1023391))

(assert (= (and b!1023391 res!685488) b!1023386))

(assert (= (and b!1023386 res!685484) b!1023390))

(assert (= (and b!1023389 condMapEmpty!37440) mapIsEmpty!37440))

(assert (= (and b!1023389 (not condMapEmpty!37440)) mapNonEmpty!37440))

(get-info :version)

(assert (= (and mapNonEmpty!37440 ((_ is ValueCellFull!11304) mapValue!37440)) b!1023388))

(assert (= (and b!1023389 ((_ is ValueCellFull!11304) mapDefault!37440)) b!1023383))

(assert (= b!1023387 b!1023389))

(assert (= start!89290 b!1023387))

(declare-fun m!942205 () Bool)

(assert (=> start!89290 m!942205))

(declare-fun m!942207 () Bool)

(assert (=> mapNonEmpty!37440 m!942207))

(declare-fun m!942209 () Bool)

(assert (=> b!1023385 m!942209))

(declare-fun m!942211 () Bool)

(assert (=> b!1023387 m!942211))

(declare-fun m!942213 () Bool)

(assert (=> b!1023387 m!942213))

(declare-fun m!942215 () Bool)

(assert (=> b!1023390 m!942215))

(declare-fun m!942217 () Bool)

(assert (=> b!1023386 m!942217))

(check-sat (not b!1023386) (not b!1023390) (not b!1023387) b_and!32535 (not b!1023385) tp_is_empty!24015 (not mapNonEmpty!37440) (not b_next!20295) (not start!89290))
(check-sat b_and!32535 (not b_next!20295))
