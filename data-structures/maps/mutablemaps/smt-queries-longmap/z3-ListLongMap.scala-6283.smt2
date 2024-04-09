; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80406 () Bool)

(assert start!80406)

(declare-fun b!943848 () Bool)

(declare-fun b_free!18021 () Bool)

(declare-fun b_next!18021 () Bool)

(assert (=> b!943848 (= b_free!18021 (not b_next!18021))))

(declare-fun tp!62574 () Bool)

(declare-fun b_and!29457 () Bool)

(assert (=> b!943848 (= tp!62574 b_and!29457)))

(declare-fun b!943845 () Bool)

(declare-fun e!530751 () Bool)

(declare-fun e!530748 () Bool)

(declare-fun mapRes!32619 () Bool)

(assert (=> b!943845 (= e!530751 (and e!530748 mapRes!32619))))

(declare-fun condMapEmpty!32619 () Bool)

(declare-datatypes ((V!32337 0))(
  ( (V!32338 (val!10315 Int)) )
))
(declare-datatypes ((ValueCell!9783 0))(
  ( (ValueCellFull!9783 (v!12847 V!32337)) (EmptyCell!9783) )
))
(declare-datatypes ((array!57048 0))(
  ( (array!57049 (arr!27445 (Array (_ BitVec 32) ValueCell!9783)) (size!27912 (_ BitVec 32))) )
))
(declare-datatypes ((array!57050 0))(
  ( (array!57051 (arr!27446 (Array (_ BitVec 32) (_ BitVec 64))) (size!27913 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4716 0))(
  ( (LongMapFixedSize!4717 (defaultEntry!5653 Int) (mask!27286 (_ BitVec 32)) (extraKeys!5385 (_ BitVec 32)) (zeroValue!5489 V!32337) (minValue!5489 V!32337) (_size!2413 (_ BitVec 32)) (_keys!10527 array!57050) (_values!5676 array!57048) (_vacant!2413 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4716)

(declare-fun mapDefault!32619 () ValueCell!9783)

(assert (=> b!943845 (= condMapEmpty!32619 (= (arr!27445 (_values!5676 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9783)) mapDefault!32619)))))

(declare-fun b!943846 () Bool)

(declare-fun e!530750 () Bool)

(declare-fun e!530745 () Bool)

(assert (=> b!943846 (= e!530750 (not e!530745))))

(declare-fun res!634196 () Bool)

(assert (=> b!943846 (=> res!634196 e!530745)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943846 (= res!634196 (not (validMask!0 (mask!27286 thiss!1141))))))

(declare-fun lt!425440 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57050 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943846 (= lt!425440 (arrayScanForKey!0 (_keys!10527 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943846 (arrayContainsKey!0 (_keys!10527 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31829 0))(
  ( (Unit!31830) )
))
(declare-fun lt!425439 () Unit!31829)

(declare-fun lemmaKeyInListMapIsInArray!298 (array!57050 array!57048 (_ BitVec 32) (_ BitVec 32) V!32337 V!32337 (_ BitVec 64) Int) Unit!31829)

(assert (=> b!943846 (= lt!425439 (lemmaKeyInListMapIsInArray!298 (_keys!10527 thiss!1141) (_values!5676 thiss!1141) (mask!27286 thiss!1141) (extraKeys!5385 thiss!1141) (zeroValue!5489 thiss!1141) (minValue!5489 thiss!1141) key!756 (defaultEntry!5653 thiss!1141)))))

(declare-fun b!943847 () Bool)

(declare-fun res!634194 () Bool)

(assert (=> b!943847 (=> (not res!634194) (not e!530750))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9048 0))(
  ( (MissingZero!9048 (index!38562 (_ BitVec 32))) (Found!9048 (index!38563 (_ BitVec 32))) (Intermediate!9048 (undefined!9860 Bool) (index!38564 (_ BitVec 32)) (x!81052 (_ BitVec 32))) (Undefined!9048) (MissingVacant!9048 (index!38565 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57050 (_ BitVec 32)) SeekEntryResult!9048)

(assert (=> b!943847 (= res!634194 (not ((_ is Found!9048) (seekEntry!0 key!756 (_keys!10527 thiss!1141) (mask!27286 thiss!1141)))))))

(declare-fun e!530747 () Bool)

(declare-fun tp_is_empty!20529 () Bool)

(declare-fun array_inv!21272 (array!57050) Bool)

(declare-fun array_inv!21273 (array!57048) Bool)

(assert (=> b!943848 (= e!530747 (and tp!62574 tp_is_empty!20529 (array_inv!21272 (_keys!10527 thiss!1141)) (array_inv!21273 (_values!5676 thiss!1141)) e!530751))))

(declare-fun b!943849 () Bool)

(declare-fun res!634197 () Bool)

(assert (=> b!943849 (=> (not res!634197) (not e!530750))))

(assert (=> b!943849 (= res!634197 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32619 () Bool)

(declare-fun tp!62573 () Bool)

(declare-fun e!530749 () Bool)

(assert (=> mapNonEmpty!32619 (= mapRes!32619 (and tp!62573 e!530749))))

(declare-fun mapValue!32619 () ValueCell!9783)

(declare-fun mapKey!32619 () (_ BitVec 32))

(declare-fun mapRest!32619 () (Array (_ BitVec 32) ValueCell!9783))

(assert (=> mapNonEmpty!32619 (= (arr!27445 (_values!5676 thiss!1141)) (store mapRest!32619 mapKey!32619 mapValue!32619))))

(declare-fun b!943850 () Bool)

(assert (=> b!943850 (= e!530749 tp_is_empty!20529)))

(declare-fun mapIsEmpty!32619 () Bool)

(assert (=> mapIsEmpty!32619 mapRes!32619))

(declare-fun b!943851 () Bool)

(assert (=> b!943851 (= e!530748 tp_is_empty!20529)))

(declare-fun b!943852 () Bool)

(assert (=> b!943852 (= e!530745 true)))

(declare-fun lt!425441 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57050 (_ BitVec 32)) Bool)

(assert (=> b!943852 (= lt!425441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10527 thiss!1141) (mask!27286 thiss!1141)))))

(declare-fun b!943853 () Bool)

(declare-fun res!634193 () Bool)

(assert (=> b!943853 (=> res!634193 e!530745)))

(assert (=> b!943853 (= res!634193 (or (not (= (size!27913 (_keys!10527 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27286 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27913 (_keys!10527 thiss!1141))) (bvslt lt!425440 #b00000000000000000000000000000000) (bvsgt lt!425440 (size!27913 (_keys!10527 thiss!1141)))))))

(declare-fun res!634195 () Bool)

(assert (=> start!80406 (=> (not res!634195) (not e!530750))))

(declare-fun valid!1782 (LongMapFixedSize!4716) Bool)

(assert (=> start!80406 (= res!634195 (valid!1782 thiss!1141))))

(assert (=> start!80406 e!530750))

(assert (=> start!80406 e!530747))

(assert (=> start!80406 true))

(declare-fun b!943854 () Bool)

(declare-fun res!634198 () Bool)

(assert (=> b!943854 (=> (not res!634198) (not e!530750))))

(declare-datatypes ((tuple2!13556 0))(
  ( (tuple2!13557 (_1!6788 (_ BitVec 64)) (_2!6788 V!32337)) )
))
(declare-datatypes ((List!19392 0))(
  ( (Nil!19389) (Cons!19388 (h!20539 tuple2!13556) (t!27717 List!19392)) )
))
(declare-datatypes ((ListLongMap!12267 0))(
  ( (ListLongMap!12268 (toList!6149 List!19392)) )
))
(declare-fun contains!5172 (ListLongMap!12267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3337 (array!57050 array!57048 (_ BitVec 32) (_ BitVec 32) V!32337 V!32337 (_ BitVec 32) Int) ListLongMap!12267)

(assert (=> b!943854 (= res!634198 (contains!5172 (getCurrentListMap!3337 (_keys!10527 thiss!1141) (_values!5676 thiss!1141) (mask!27286 thiss!1141) (extraKeys!5385 thiss!1141) (zeroValue!5489 thiss!1141) (minValue!5489 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5653 thiss!1141)) key!756))))

(assert (= (and start!80406 res!634195) b!943849))

(assert (= (and b!943849 res!634197) b!943847))

(assert (= (and b!943847 res!634194) b!943854))

(assert (= (and b!943854 res!634198) b!943846))

(assert (= (and b!943846 (not res!634196)) b!943853))

(assert (= (and b!943853 (not res!634193)) b!943852))

(assert (= (and b!943845 condMapEmpty!32619) mapIsEmpty!32619))

(assert (= (and b!943845 (not condMapEmpty!32619)) mapNonEmpty!32619))

(assert (= (and mapNonEmpty!32619 ((_ is ValueCellFull!9783) mapValue!32619)) b!943850))

(assert (= (and b!943845 ((_ is ValueCellFull!9783) mapDefault!32619)) b!943851))

(assert (= b!943848 b!943845))

(assert (= start!80406 b!943848))

(declare-fun m!878041 () Bool)

(assert (=> b!943847 m!878041))

(declare-fun m!878043 () Bool)

(assert (=> b!943854 m!878043))

(assert (=> b!943854 m!878043))

(declare-fun m!878045 () Bool)

(assert (=> b!943854 m!878045))

(declare-fun m!878047 () Bool)

(assert (=> b!943852 m!878047))

(declare-fun m!878049 () Bool)

(assert (=> b!943846 m!878049))

(declare-fun m!878051 () Bool)

(assert (=> b!943846 m!878051))

(declare-fun m!878053 () Bool)

(assert (=> b!943846 m!878053))

(declare-fun m!878055 () Bool)

(assert (=> b!943846 m!878055))

(declare-fun m!878057 () Bool)

(assert (=> start!80406 m!878057))

(declare-fun m!878059 () Bool)

(assert (=> mapNonEmpty!32619 m!878059))

(declare-fun m!878061 () Bool)

(assert (=> b!943848 m!878061))

(declare-fun m!878063 () Bool)

(assert (=> b!943848 m!878063))

(check-sat (not start!80406) b_and!29457 tp_is_empty!20529 (not b!943846) (not b!943848) (not b!943847) (not b!943854) (not b_next!18021) (not b!943852) (not mapNonEmpty!32619))
(check-sat b_and!29457 (not b_next!18021))
