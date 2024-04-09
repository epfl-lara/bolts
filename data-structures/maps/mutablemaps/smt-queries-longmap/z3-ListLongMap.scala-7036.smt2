; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89266 () Bool)

(assert start!89266)

(declare-fun b!1023065 () Bool)

(declare-fun b_free!20271 () Bool)

(declare-fun b_next!20271 () Bool)

(assert (=> b!1023065 (= b_free!20271 (not b_next!20271))))

(declare-fun tp!71849 () Bool)

(declare-fun b_and!32511 () Bool)

(assert (=> b!1023065 (= tp!71849 b_and!32511)))

(declare-fun res!685307 () Bool)

(declare-fun e!576486 () Bool)

(assert (=> start!89266 (=> (not res!685307) (not e!576486))))

(declare-datatypes ((V!36861 0))(
  ( (V!36862 (val!12046 Int)) )
))
(declare-datatypes ((ValueCell!11292 0))(
  ( (ValueCellFull!11292 (v!14616 V!36861)) (EmptyCell!11292) )
))
(declare-datatypes ((array!64010 0))(
  ( (array!64011 (arr!30813 (Array (_ BitVec 32) (_ BitVec 64))) (size!31325 (_ BitVec 32))) )
))
(declare-datatypes ((array!64012 0))(
  ( (array!64013 (arr!30814 (Array (_ BitVec 32) ValueCell!11292)) (size!31326 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5178 0))(
  ( (LongMapFixedSize!5179 (defaultEntry!5941 Int) (mask!29549 (_ BitVec 32)) (extraKeys!5673 (_ BitVec 32)) (zeroValue!5777 V!36861) (minValue!5777 V!36861) (_size!2644 (_ BitVec 32)) (_keys!11083 array!64010) (_values!5964 array!64012) (_vacant!2644 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5178)

(declare-fun valid!1933 (LongMapFixedSize!5178) Bool)

(assert (=> start!89266 (= res!685307 (valid!1933 thiss!1427))))

(assert (=> start!89266 e!576486))

(declare-fun e!576485 () Bool)

(assert (=> start!89266 e!576485))

(assert (=> start!89266 true))

(declare-fun b!1023059 () Bool)

(declare-fun e!576482 () Bool)

(declare-fun tp_is_empty!23991 () Bool)

(assert (=> b!1023059 (= e!576482 tp_is_empty!23991)))

(declare-fun b!1023060 () Bool)

(declare-fun e!576483 () Bool)

(assert (=> b!1023060 (= e!576483 tp_is_empty!23991)))

(declare-fun b!1023061 () Bool)

(declare-fun res!685308 () Bool)

(assert (=> b!1023061 (=> (not res!685308) (not e!576486))))

(assert (=> b!1023061 (= res!685308 (and (= (size!31326 (_values!5964 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29549 thiss!1427))) (= (size!31325 (_keys!11083 thiss!1427)) (size!31326 (_values!5964 thiss!1427))) (bvsge (mask!29549 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5673 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5673 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5673 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5673 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5673 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5673 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5673 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023062 () Bool)

(declare-fun res!685306 () Bool)

(assert (=> b!1023062 (=> (not res!685306) (not e!576486))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023062 (= res!685306 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023063 () Bool)

(declare-fun res!685304 () Bool)

(assert (=> b!1023063 (=> (not res!685304) (not e!576486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64010 (_ BitVec 32)) Bool)

(assert (=> b!1023063 (= res!685304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11083 thiss!1427) (mask!29549 thiss!1427)))))

(declare-fun mapNonEmpty!37404 () Bool)

(declare-fun mapRes!37404 () Bool)

(declare-fun tp!71848 () Bool)

(assert (=> mapNonEmpty!37404 (= mapRes!37404 (and tp!71848 e!576482))))

(declare-fun mapRest!37404 () (Array (_ BitVec 32) ValueCell!11292))

(declare-fun mapValue!37404 () ValueCell!11292)

(declare-fun mapKey!37404 () (_ BitVec 32))

(assert (=> mapNonEmpty!37404 (= (arr!30814 (_values!5964 thiss!1427)) (store mapRest!37404 mapKey!37404 mapValue!37404))))

(declare-fun b!1023064 () Bool)

(assert (=> b!1023064 (= e!576486 false)))

(declare-fun lt!450349 () Bool)

(declare-datatypes ((List!21809 0))(
  ( (Nil!21806) (Cons!21805 (h!23003 (_ BitVec 64)) (t!30854 List!21809)) )
))
(declare-fun arrayNoDuplicates!0 (array!64010 (_ BitVec 32) List!21809) Bool)

(assert (=> b!1023064 (= lt!450349 (arrayNoDuplicates!0 (_keys!11083 thiss!1427) #b00000000000000000000000000000000 Nil!21806))))

(declare-fun e!576487 () Bool)

(declare-fun array_inv!23751 (array!64010) Bool)

(declare-fun array_inv!23752 (array!64012) Bool)

(assert (=> b!1023065 (= e!576485 (and tp!71849 tp_is_empty!23991 (array_inv!23751 (_keys!11083 thiss!1427)) (array_inv!23752 (_values!5964 thiss!1427)) e!576487))))

(declare-fun b!1023066 () Bool)

(assert (=> b!1023066 (= e!576487 (and e!576483 mapRes!37404))))

(declare-fun condMapEmpty!37404 () Bool)

(declare-fun mapDefault!37404 () ValueCell!11292)

(assert (=> b!1023066 (= condMapEmpty!37404 (= (arr!30814 (_values!5964 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11292)) mapDefault!37404)))))

(declare-fun b!1023067 () Bool)

(declare-fun res!685305 () Bool)

(assert (=> b!1023067 (=> (not res!685305) (not e!576486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023067 (= res!685305 (validMask!0 (mask!29549 thiss!1427)))))

(declare-fun mapIsEmpty!37404 () Bool)

(assert (=> mapIsEmpty!37404 mapRes!37404))

(assert (= (and start!89266 res!685307) b!1023062))

(assert (= (and b!1023062 res!685306) b!1023067))

(assert (= (and b!1023067 res!685305) b!1023061))

(assert (= (and b!1023061 res!685308) b!1023063))

(assert (= (and b!1023063 res!685304) b!1023064))

(assert (= (and b!1023066 condMapEmpty!37404) mapIsEmpty!37404))

(assert (= (and b!1023066 (not condMapEmpty!37404)) mapNonEmpty!37404))

(get-info :version)

(assert (= (and mapNonEmpty!37404 ((_ is ValueCellFull!11292) mapValue!37404)) b!1023059))

(assert (= (and b!1023066 ((_ is ValueCellFull!11292) mapDefault!37404)) b!1023060))

(assert (= b!1023065 b!1023066))

(assert (= start!89266 b!1023065))

(declare-fun m!942037 () Bool)

(assert (=> b!1023063 m!942037))

(declare-fun m!942039 () Bool)

(assert (=> b!1023064 m!942039))

(declare-fun m!942041 () Bool)

(assert (=> start!89266 m!942041))

(declare-fun m!942043 () Bool)

(assert (=> b!1023065 m!942043))

(declare-fun m!942045 () Bool)

(assert (=> b!1023065 m!942045))

(declare-fun m!942047 () Bool)

(assert (=> b!1023067 m!942047))

(declare-fun m!942049 () Bool)

(assert (=> mapNonEmpty!37404 m!942049))

(check-sat b_and!32511 (not b!1023063) (not b!1023065) (not start!89266) (not mapNonEmpty!37404) (not b!1023064) tp_is_empty!23991 (not b_next!20271) (not b!1023067))
(check-sat b_and!32511 (not b_next!20271))
