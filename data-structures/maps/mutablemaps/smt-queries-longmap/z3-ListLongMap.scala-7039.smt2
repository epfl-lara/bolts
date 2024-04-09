; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89284 () Bool)

(assert start!89284)

(declare-fun b!1023303 () Bool)

(declare-fun b_free!20289 () Bool)

(declare-fun b_next!20289 () Bool)

(assert (=> b!1023303 (= b_free!20289 (not b_next!20289))))

(declare-fun tp!71902 () Bool)

(declare-fun b_and!32529 () Bool)

(assert (=> b!1023303 (= tp!71902 b_and!32529)))

(declare-fun b!1023302 () Bool)

(declare-fun res!685441 () Bool)

(declare-fun e!576646 () Bool)

(assert (=> b!1023302 (=> (not res!685441) (not e!576646))))

(declare-datatypes ((V!36885 0))(
  ( (V!36886 (val!12055 Int)) )
))
(declare-datatypes ((ValueCell!11301 0))(
  ( (ValueCellFull!11301 (v!14625 V!36885)) (EmptyCell!11301) )
))
(declare-datatypes ((array!64046 0))(
  ( (array!64047 (arr!30831 (Array (_ BitVec 32) (_ BitVec 64))) (size!31343 (_ BitVec 32))) )
))
(declare-datatypes ((array!64048 0))(
  ( (array!64049 (arr!30832 (Array (_ BitVec 32) ValueCell!11301)) (size!31344 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5196 0))(
  ( (LongMapFixedSize!5197 (defaultEntry!5950 Int) (mask!29564 (_ BitVec 32)) (extraKeys!5682 (_ BitVec 32)) (zeroValue!5786 V!36885) (minValue!5786 V!36885) (_size!2653 (_ BitVec 32)) (_keys!11092 array!64046) (_values!5973 array!64048) (_vacant!2653 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5196)

(assert (=> b!1023302 (= res!685441 (and (= (size!31344 (_values!5973 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29564 thiss!1427))) (= (size!31343 (_keys!11092 thiss!1427)) (size!31344 (_values!5973 thiss!1427))) (bvsge (mask!29564 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5682 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5682 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5682 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5682 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5682 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5682 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5682 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!576649 () Bool)

(declare-fun tp_is_empty!24009 () Bool)

(declare-fun e!576645 () Bool)

(declare-fun array_inv!23759 (array!64046) Bool)

(declare-fun array_inv!23760 (array!64048) Bool)

(assert (=> b!1023303 (= e!576645 (and tp!71902 tp_is_empty!24009 (array_inv!23759 (_keys!11092 thiss!1427)) (array_inv!23760 (_values!5973 thiss!1427)) e!576649))))

(declare-fun b!1023304 () Bool)

(declare-fun e!576644 () Bool)

(assert (=> b!1023304 (= e!576644 tp_is_empty!24009)))

(declare-fun mapNonEmpty!37431 () Bool)

(declare-fun mapRes!37431 () Bool)

(declare-fun tp!71903 () Bool)

(assert (=> mapNonEmpty!37431 (= mapRes!37431 (and tp!71903 e!576644))))

(declare-fun mapValue!37431 () ValueCell!11301)

(declare-fun mapKey!37431 () (_ BitVec 32))

(declare-fun mapRest!37431 () (Array (_ BitVec 32) ValueCell!11301))

(assert (=> mapNonEmpty!37431 (= (arr!30832 (_values!5973 thiss!1427)) (store mapRest!37431 mapKey!37431 mapValue!37431))))

(declare-fun b!1023305 () Bool)

(declare-fun res!685443 () Bool)

(assert (=> b!1023305 (=> (not res!685443) (not e!576646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023305 (= res!685443 (validMask!0 (mask!29564 thiss!1427)))))

(declare-fun b!1023306 () Bool)

(assert (=> b!1023306 (= e!576646 false)))

(declare-fun lt!450376 () Bool)

(declare-datatypes ((List!21814 0))(
  ( (Nil!21811) (Cons!21810 (h!23008 (_ BitVec 64)) (t!30859 List!21814)) )
))
(declare-fun arrayNoDuplicates!0 (array!64046 (_ BitVec 32) List!21814) Bool)

(assert (=> b!1023306 (= lt!450376 (arrayNoDuplicates!0 (_keys!11092 thiss!1427) #b00000000000000000000000000000000 Nil!21811))))

(declare-fun mapIsEmpty!37431 () Bool)

(assert (=> mapIsEmpty!37431 mapRes!37431))

(declare-fun res!685440 () Bool)

(assert (=> start!89284 (=> (not res!685440) (not e!576646))))

(declare-fun valid!1937 (LongMapFixedSize!5196) Bool)

(assert (=> start!89284 (= res!685440 (valid!1937 thiss!1427))))

(assert (=> start!89284 e!576646))

(assert (=> start!89284 e!576645))

(assert (=> start!89284 true))

(declare-fun b!1023307 () Bool)

(declare-fun e!576648 () Bool)

(assert (=> b!1023307 (= e!576648 tp_is_empty!24009)))

(declare-fun b!1023308 () Bool)

(declare-fun res!685439 () Bool)

(assert (=> b!1023308 (=> (not res!685439) (not e!576646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64046 (_ BitVec 32)) Bool)

(assert (=> b!1023308 (= res!685439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11092 thiss!1427) (mask!29564 thiss!1427)))))

(declare-fun b!1023309 () Bool)

(declare-fun res!685442 () Bool)

(assert (=> b!1023309 (=> (not res!685442) (not e!576646))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023309 (= res!685442 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023310 () Bool)

(assert (=> b!1023310 (= e!576649 (and e!576648 mapRes!37431))))

(declare-fun condMapEmpty!37431 () Bool)

(declare-fun mapDefault!37431 () ValueCell!11301)

(assert (=> b!1023310 (= condMapEmpty!37431 (= (arr!30832 (_values!5973 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11301)) mapDefault!37431)))))

(assert (= (and start!89284 res!685440) b!1023309))

(assert (= (and b!1023309 res!685442) b!1023305))

(assert (= (and b!1023305 res!685443) b!1023302))

(assert (= (and b!1023302 res!685441) b!1023308))

(assert (= (and b!1023308 res!685439) b!1023306))

(assert (= (and b!1023310 condMapEmpty!37431) mapIsEmpty!37431))

(assert (= (and b!1023310 (not condMapEmpty!37431)) mapNonEmpty!37431))

(get-info :version)

(assert (= (and mapNonEmpty!37431 ((_ is ValueCellFull!11301) mapValue!37431)) b!1023304))

(assert (= (and b!1023310 ((_ is ValueCellFull!11301) mapDefault!37431)) b!1023307))

(assert (= b!1023303 b!1023310))

(assert (= start!89284 b!1023303))

(declare-fun m!942163 () Bool)

(assert (=> mapNonEmpty!37431 m!942163))

(declare-fun m!942165 () Bool)

(assert (=> start!89284 m!942165))

(declare-fun m!942167 () Bool)

(assert (=> b!1023306 m!942167))

(declare-fun m!942169 () Bool)

(assert (=> b!1023305 m!942169))

(declare-fun m!942171 () Bool)

(assert (=> b!1023303 m!942171))

(declare-fun m!942173 () Bool)

(assert (=> b!1023303 m!942173))

(declare-fun m!942175 () Bool)

(assert (=> b!1023308 m!942175))

(check-sat tp_is_empty!24009 (not b_next!20289) (not b!1023308) (not b!1023306) (not b!1023303) (not b!1023305) (not mapNonEmpty!37431) b_and!32529 (not start!89284))
(check-sat b_and!32529 (not b_next!20289))
