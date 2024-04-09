; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80008 () Bool)

(assert start!80008)

(declare-fun b!940061 () Bool)

(declare-fun b_free!17835 () Bool)

(declare-fun b_next!17835 () Bool)

(assert (=> b!940061 (= b_free!17835 (not b_next!17835))))

(declare-fun tp!61980 () Bool)

(declare-fun b_and!29265 () Bool)

(assert (=> b!940061 (= tp!61980 b_and!29265)))

(declare-fun b!940056 () Bool)

(declare-fun e!528263 () Bool)

(assert (=> b!940056 (= e!528263 true)))

(declare-fun lt!424585 () Bool)

(declare-datatypes ((V!32089 0))(
  ( (V!32090 (val!10222 Int)) )
))
(declare-datatypes ((ValueCell!9690 0))(
  ( (ValueCellFull!9690 (v!12753 V!32089)) (EmptyCell!9690) )
))
(declare-datatypes ((array!56656 0))(
  ( (array!56657 (arr!27259 (Array (_ BitVec 32) ValueCell!9690)) (size!27721 (_ BitVec 32))) )
))
(declare-datatypes ((array!56658 0))(
  ( (array!56659 (arr!27260 (Array (_ BitVec 32) (_ BitVec 64))) (size!27722 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4530 0))(
  ( (LongMapFixedSize!4531 (defaultEntry!5556 Int) (mask!27084 (_ BitVec 32)) (extraKeys!5288 (_ BitVec 32)) (zeroValue!5392 V!32089) (minValue!5392 V!32089) (_size!2320 (_ BitVec 32)) (_keys!10402 array!56658) (_values!5579 array!56656) (_vacant!2320 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4530)

(declare-datatypes ((List!19315 0))(
  ( (Nil!19312) (Cons!19311 (h!20457 (_ BitVec 64)) (t!27638 List!19315)) )
))
(declare-fun arrayNoDuplicates!0 (array!56658 (_ BitVec 32) List!19315) Bool)

(assert (=> b!940056 (= lt!424585 (arrayNoDuplicates!0 (_keys!10402 thiss!1141) #b00000000000000000000000000000000 Nil!19312))))

(declare-fun b!940057 () Bool)

(declare-fun res!632224 () Bool)

(assert (=> b!940057 (=> res!632224 e!528263)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56658 (_ BitVec 32)) Bool)

(assert (=> b!940057 (= res!632224 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10402 thiss!1141) (mask!27084 thiss!1141))))))

(declare-fun b!940058 () Bool)

(declare-fun e!528260 () Bool)

(assert (=> b!940058 (= e!528260 (not e!528263))))

(declare-fun res!632226 () Bool)

(assert (=> b!940058 (=> res!632226 e!528263)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940058 (= res!632226 (not (validMask!0 (mask!27084 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940058 (arrayContainsKey!0 (_keys!10402 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31757 0))(
  ( (Unit!31758) )
))
(declare-fun lt!424586 () Unit!31757)

(declare-datatypes ((SeekEntryResult!8981 0))(
  ( (MissingZero!8981 (index!38294 (_ BitVec 32))) (Found!8981 (index!38295 (_ BitVec 32))) (Intermediate!8981 (undefined!9793 Bool) (index!38296 (_ BitVec 32)) (x!80611 (_ BitVec 32))) (Undefined!8981) (MissingVacant!8981 (index!38297 (_ BitVec 32))) )
))
(declare-fun lt!424587 () SeekEntryResult!8981)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56658 (_ BitVec 64) (_ BitVec 32)) Unit!31757)

(assert (=> b!940058 (= lt!424586 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10402 thiss!1141) key!756 (index!38295 lt!424587)))))

(declare-fun b!940059 () Bool)

(declare-fun e!528261 () Bool)

(declare-fun tp_is_empty!20343 () Bool)

(assert (=> b!940059 (= e!528261 tp_is_empty!20343)))

(declare-fun b!940060 () Bool)

(declare-fun res!632227 () Bool)

(assert (=> b!940060 (=> res!632227 e!528263)))

(assert (=> b!940060 (= res!632227 (or (not (= (size!27721 (_values!5579 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27084 thiss!1141)))) (not (= (size!27722 (_keys!10402 thiss!1141)) (size!27721 (_values!5579 thiss!1141)))) (bvslt (mask!27084 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5288 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5288 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940062 () Bool)

(declare-fun e!528259 () Bool)

(declare-fun mapRes!32305 () Bool)

(assert (=> b!940062 (= e!528259 (and e!528261 mapRes!32305))))

(declare-fun condMapEmpty!32305 () Bool)

(declare-fun mapDefault!32305 () ValueCell!9690)

(assert (=> b!940062 (= condMapEmpty!32305 (= (arr!27259 (_values!5579 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9690)) mapDefault!32305)))))

(declare-fun mapIsEmpty!32305 () Bool)

(assert (=> mapIsEmpty!32305 mapRes!32305))

(declare-fun b!940063 () Bool)

(declare-fun e!528257 () Bool)

(assert (=> b!940063 (= e!528257 tp_is_empty!20343)))

(declare-fun b!940064 () Bool)

(declare-fun res!632223 () Bool)

(declare-fun e!528264 () Bool)

(assert (=> b!940064 (=> (not res!632223) (not e!528264))))

(assert (=> b!940064 (= res!632223 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!632225 () Bool)

(assert (=> start!80008 (=> (not res!632225) (not e!528264))))

(declare-fun valid!1721 (LongMapFixedSize!4530) Bool)

(assert (=> start!80008 (= res!632225 (valid!1721 thiss!1141))))

(assert (=> start!80008 e!528264))

(declare-fun e!528262 () Bool)

(assert (=> start!80008 e!528262))

(assert (=> start!80008 true))

(declare-fun array_inv!21146 (array!56658) Bool)

(declare-fun array_inv!21147 (array!56656) Bool)

(assert (=> b!940061 (= e!528262 (and tp!61980 tp_is_empty!20343 (array_inv!21146 (_keys!10402 thiss!1141)) (array_inv!21147 (_values!5579 thiss!1141)) e!528259))))

(declare-fun b!940065 () Bool)

(assert (=> b!940065 (= e!528264 e!528260)))

(declare-fun res!632228 () Bool)

(assert (=> b!940065 (=> (not res!632228) (not e!528260))))

(get-info :version)

(assert (=> b!940065 (= res!632228 ((_ is Found!8981) lt!424587))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56658 (_ BitVec 32)) SeekEntryResult!8981)

(assert (=> b!940065 (= lt!424587 (seekEntry!0 key!756 (_keys!10402 thiss!1141) (mask!27084 thiss!1141)))))

(declare-fun mapNonEmpty!32305 () Bool)

(declare-fun tp!61981 () Bool)

(assert (=> mapNonEmpty!32305 (= mapRes!32305 (and tp!61981 e!528257))))

(declare-fun mapRest!32305 () (Array (_ BitVec 32) ValueCell!9690))

(declare-fun mapValue!32305 () ValueCell!9690)

(declare-fun mapKey!32305 () (_ BitVec 32))

(assert (=> mapNonEmpty!32305 (= (arr!27259 (_values!5579 thiss!1141)) (store mapRest!32305 mapKey!32305 mapValue!32305))))

(assert (= (and start!80008 res!632225) b!940064))

(assert (= (and b!940064 res!632223) b!940065))

(assert (= (and b!940065 res!632228) b!940058))

(assert (= (and b!940058 (not res!632226)) b!940060))

(assert (= (and b!940060 (not res!632227)) b!940057))

(assert (= (and b!940057 (not res!632224)) b!940056))

(assert (= (and b!940062 condMapEmpty!32305) mapIsEmpty!32305))

(assert (= (and b!940062 (not condMapEmpty!32305)) mapNonEmpty!32305))

(assert (= (and mapNonEmpty!32305 ((_ is ValueCellFull!9690) mapValue!32305)) b!940063))

(assert (= (and b!940062 ((_ is ValueCellFull!9690) mapDefault!32305)) b!940059))

(assert (= b!940061 b!940062))

(assert (= start!80008 b!940061))

(declare-fun m!875689 () Bool)

(assert (=> b!940065 m!875689))

(declare-fun m!875691 () Bool)

(assert (=> b!940058 m!875691))

(declare-fun m!875693 () Bool)

(assert (=> b!940058 m!875693))

(declare-fun m!875695 () Bool)

(assert (=> b!940058 m!875695))

(declare-fun m!875697 () Bool)

(assert (=> b!940057 m!875697))

(declare-fun m!875699 () Bool)

(assert (=> b!940061 m!875699))

(declare-fun m!875701 () Bool)

(assert (=> b!940061 m!875701))

(declare-fun m!875703 () Bool)

(assert (=> start!80008 m!875703))

(declare-fun m!875705 () Bool)

(assert (=> b!940056 m!875705))

(declare-fun m!875707 () Bool)

(assert (=> mapNonEmpty!32305 m!875707))

(check-sat (not b!940057) (not b!940056) (not start!80008) tp_is_empty!20343 (not b!940065) (not mapNonEmpty!32305) (not b!940061) (not b_next!17835) (not b!940058) b_and!29265)
(check-sat b_and!29265 (not b_next!17835))
