; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3218 () Bool)

(assert start!3218)

(declare-fun b!19599 () Bool)

(declare-fun b_free!687 () Bool)

(declare-fun b_next!687 () Bool)

(assert (=> b!19599 (= b_free!687 (not b_next!687))))

(declare-fun tp!3277 () Bool)

(declare-fun b_and!1349 () Bool)

(assert (=> b!19599 (= tp!3277 b_and!1349)))

(declare-fun res!13229 () Bool)

(declare-fun e!12706 () Bool)

(assert (=> start!3218 (=> (not res!13229) (not e!12706))))

(declare-datatypes ((V!1093 0))(
  ( (V!1094 (val!502 Int)) )
))
(declare-datatypes ((ValueCell!276 0))(
  ( (ValueCellFull!276 (v!1520 V!1093)) (EmptyCell!276) )
))
(declare-datatypes ((array!1111 0))(
  ( (array!1112 (arr!531 (Array (_ BitVec 32) ValueCell!276)) (size!624 (_ BitVec 32))) )
))
(declare-datatypes ((array!1113 0))(
  ( (array!1114 (arr!532 (Array (_ BitVec 32) (_ BitVec 64))) (size!625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!138 0))(
  ( (LongMapFixedSize!139 (defaultEntry!1688 Int) (mask!4642 (_ BitVec 32)) (extraKeys!1598 (_ BitVec 32)) (zeroValue!1622 V!1093) (minValue!1622 V!1093) (_size!103 (_ BitVec 32)) (_keys!3116 array!1113) (_values!1684 array!1111) (_vacant!103 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!138 0))(
  ( (Cell!139 (v!1521 LongMapFixedSize!138)) )
))
(declare-datatypes ((LongMap!138 0))(
  ( (LongMap!139 (underlying!80 Cell!138)) )
))
(declare-fun thiss!938 () LongMap!138)

(declare-fun valid!68 (LongMap!138) Bool)

(assert (=> start!3218 (= res!13229 (valid!68 thiss!938))))

(assert (=> start!3218 e!12706))

(declare-fun e!12700 () Bool)

(assert (=> start!3218 e!12700))

(declare-fun b!19596 () Bool)

(declare-fun e!12702 () Bool)

(assert (=> b!19596 (= e!12706 e!12702)))

(declare-fun res!13230 () Bool)

(assert (=> b!19596 (=> (not res!13230) (not e!12702))))

(assert (=> b!19596 (= res!13230 (and (not (= (bvand (extraKeys!1598 (v!1521 (underlying!80 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1598 (v!1521 (underlying!80 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!5438 () LongMapFixedSize!138)

(declare-fun getNewLongMapFixedSize!10 ((_ BitVec 32) Int) LongMapFixedSize!138)

(declare-fun computeNewMask!7 (LongMap!138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19596 (= lt!5438 (getNewLongMapFixedSize!10 (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) (defaultEntry!1688 (v!1521 (underlying!80 thiss!938)))))))

(declare-fun mapIsEmpty!886 () Bool)

(declare-fun mapRes!886 () Bool)

(assert (=> mapIsEmpty!886 mapRes!886))

(declare-fun b!19597 () Bool)

(declare-fun e!12704 () Bool)

(declare-fun e!12707 () Bool)

(assert (=> b!19597 (= e!12704 (and e!12707 mapRes!886))))

(declare-fun condMapEmpty!886 () Bool)

(declare-fun mapDefault!886 () ValueCell!276)

(assert (=> b!19597 (= condMapEmpty!886 (= (arr!531 (_values!1684 (v!1521 (underlying!80 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!276)) mapDefault!886)))))

(declare-fun b!19598 () Bool)

(declare-fun e!12703 () Bool)

(declare-fun tp_is_empty!951 () Bool)

(assert (=> b!19598 (= e!12703 tp_is_empty!951)))

(declare-fun e!12705 () Bool)

(declare-fun array_inv!377 (array!1113) Bool)

(declare-fun array_inv!378 (array!1111) Bool)

(assert (=> b!19599 (= e!12705 (and tp!3277 tp_is_empty!951 (array_inv!377 (_keys!3116 (v!1521 (underlying!80 thiss!938)))) (array_inv!378 (_values!1684 (v!1521 (underlying!80 thiss!938)))) e!12704))))

(declare-fun b!19600 () Bool)

(declare-fun e!12708 () Bool)

(assert (=> b!19600 (= e!12708 e!12705)))

(declare-fun mapNonEmpty!886 () Bool)

(declare-fun tp!3276 () Bool)

(assert (=> mapNonEmpty!886 (= mapRes!886 (and tp!3276 e!12703))))

(declare-fun mapKey!886 () (_ BitVec 32))

(declare-fun mapRest!886 () (Array (_ BitVec 32) ValueCell!276))

(declare-fun mapValue!886 () ValueCell!276)

(assert (=> mapNonEmpty!886 (= (arr!531 (_values!1684 (v!1521 (underlying!80 thiss!938)))) (store mapRest!886 mapKey!886 mapValue!886))))

(declare-fun b!19601 () Bool)

(assert (=> b!19601 (= e!12707 tp_is_empty!951)))

(declare-fun b!19602 () Bool)

(declare-fun valid!69 (LongMapFixedSize!138) Bool)

(assert (=> b!19602 (= e!12702 (not (valid!69 lt!5438)))))

(declare-fun b!19603 () Bool)

(assert (=> b!19603 (= e!12700 e!12708)))

(assert (= (and start!3218 res!13229) b!19596))

(assert (= (and b!19596 res!13230) b!19602))

(assert (= (and b!19597 condMapEmpty!886) mapIsEmpty!886))

(assert (= (and b!19597 (not condMapEmpty!886)) mapNonEmpty!886))

(get-info :version)

(assert (= (and mapNonEmpty!886 ((_ is ValueCellFull!276) mapValue!886)) b!19598))

(assert (= (and b!19597 ((_ is ValueCellFull!276) mapDefault!886)) b!19601))

(assert (= b!19599 b!19597))

(assert (= b!19600 b!19599))

(assert (= b!19603 b!19600))

(assert (= start!3218 b!19603))

(declare-fun m!13771 () Bool)

(assert (=> b!19596 m!13771))

(assert (=> b!19596 m!13771))

(declare-fun m!13773 () Bool)

(assert (=> b!19596 m!13773))

(declare-fun m!13775 () Bool)

(assert (=> b!19599 m!13775))

(declare-fun m!13777 () Bool)

(assert (=> b!19599 m!13777))

(declare-fun m!13779 () Bool)

(assert (=> mapNonEmpty!886 m!13779))

(declare-fun m!13781 () Bool)

(assert (=> b!19602 m!13781))

(declare-fun m!13783 () Bool)

(assert (=> start!3218 m!13783))

(check-sat (not b!19599) (not start!3218) (not mapNonEmpty!886) tp_is_empty!951 (not b!19596) b_and!1349 (not b_next!687) (not b!19602))
(check-sat b_and!1349 (not b_next!687))
(get-model)

(declare-fun d!3621 () Bool)

(assert (=> d!3621 (= (array_inv!377 (_keys!3116 (v!1521 (underlying!80 thiss!938)))) (bvsge (size!625 (_keys!3116 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19599 d!3621))

(declare-fun d!3623 () Bool)

(assert (=> d!3623 (= (array_inv!378 (_values!1684 (v!1521 (underlying!80 thiss!938)))) (bvsge (size!624 (_values!1684 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19599 d!3623))

(declare-fun b!19640 () Bool)

(declare-fun res!13242 () Bool)

(declare-fun e!12743 () Bool)

(assert (=> b!19640 (=> (not res!13242) (not e!12743))))

(declare-fun lt!5510 () LongMapFixedSize!138)

(assert (=> b!19640 (= res!13242 (= (mask!4642 lt!5510) (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938))))))))

(declare-fun b!19641 () Bool)

(declare-datatypes ((tuple2!806 0))(
  ( (tuple2!807 (_1!406 (_ BitVec 64)) (_2!406 V!1093)) )
))
(declare-datatypes ((List!543 0))(
  ( (Nil!540) (Cons!539 (h!1105 tuple2!806) (t!3190 List!543)) )
))
(declare-datatypes ((ListLongMap!529 0))(
  ( (ListLongMap!530 (toList!280 List!543)) )
))
(declare-fun map!374 (LongMapFixedSize!138) ListLongMap!529)

(assert (=> b!19641 (= e!12743 (= (map!374 lt!5510) (ListLongMap!530 Nil!540)))))

(declare-fun b!19642 () Bool)

(declare-datatypes ((Unit!391 0))(
  ( (Unit!392) )
))
(declare-fun e!12744 () Unit!391)

(declare-fun Unit!393 () Unit!391)

(assert (=> b!19642 (= e!12744 Unit!393)))

(declare-fun lt!5506 () tuple2!806)

(declare-fun lt!5501 () LongMapFixedSize!138)

(declare-fun head!820 (List!543) tuple2!806)

(assert (=> b!19642 (= lt!5506 (head!820 (toList!280 (map!374 lt!5501))))))

(declare-fun lt!5496 () array!1113)

(assert (=> b!19642 (= lt!5496 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5509 () (_ BitVec 32))

(assert (=> b!19642 (= lt!5509 #b00000000000000000000000000000000)))

(declare-fun lt!5498 () Unit!391)

(declare-fun lemmaKeyInListMapIsInArray!83 (array!1113 array!1111 (_ BitVec 32) (_ BitVec 32) V!1093 V!1093 (_ BitVec 64) Int) Unit!391)

(declare-fun dynLambda!134 (Int (_ BitVec 64)) V!1093)

(assert (=> b!19642 (= lt!5498 (lemmaKeyInListMapIsInArray!83 lt!5496 (array!1112 ((as const (Array (_ BitVec 32) ValueCell!276)) EmptyCell!276) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) lt!5509 (dynLambda!134 (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!134 (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!406 lt!5506) (defaultEntry!1688 (v!1521 (underlying!80 thiss!938)))))))

(declare-fun c!2093 () Bool)

(assert (=> b!19642 (= c!2093 (and (not (= (_1!406 lt!5506) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!406 lt!5506) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!12742 () Bool)

(assert (=> b!19642 e!12742))

(declare-fun lt!5489 () Unit!391)

(assert (=> b!19642 (= lt!5489 lt!5498)))

(declare-fun lt!5492 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1113 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19642 (= lt!5492 (arrayScanForKey!0 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)) (_1!406 lt!5506) #b00000000000000000000000000000000))))

(assert (=> b!19642 false))

(declare-fun d!3625 () Bool)

(assert (=> d!3625 e!12743))

(declare-fun res!13241 () Bool)

(assert (=> d!3625 (=> (not res!13241) (not e!12743))))

(assert (=> d!3625 (= res!13241 (valid!69 lt!5510))))

(assert (=> d!3625 (= lt!5510 lt!5501)))

(declare-fun lt!5495 () Unit!391)

(assert (=> d!3625 (= lt!5495 e!12744)))

(declare-fun c!2094 () Bool)

(assert (=> d!3625 (= c!2094 (not (= (map!374 lt!5501) (ListLongMap!530 Nil!540))))))

(declare-fun lt!5497 () Unit!391)

(declare-fun lt!5490 () Unit!391)

(assert (=> d!3625 (= lt!5497 lt!5490)))

(declare-fun lt!5499 () array!1113)

(declare-fun lt!5500 () (_ BitVec 32))

(declare-datatypes ((List!544 0))(
  ( (Nil!541) (Cons!540 (h!1106 (_ BitVec 64)) (t!3191 List!544)) )
))
(declare-fun lt!5493 () List!544)

(declare-fun arrayNoDuplicates!0 (array!1113 (_ BitVec 32) List!544) Bool)

(assert (=> d!3625 (arrayNoDuplicates!0 lt!5499 lt!5500 lt!5493)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1113 (_ BitVec 32) (_ BitVec 32) List!544) Unit!391)

(assert (=> d!3625 (= lt!5490 (lemmaArrayNoDuplicatesInAll0Array!0 lt!5499 lt!5500 (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001) lt!5493))))

(assert (=> d!3625 (= lt!5493 Nil!541)))

(assert (=> d!3625 (= lt!5500 #b00000000000000000000000000000000)))

(assert (=> d!3625 (= lt!5499 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5507 () Unit!391)

(declare-fun lt!5504 () Unit!391)

(assert (=> d!3625 (= lt!5507 lt!5504)))

(declare-fun lt!5508 () (_ BitVec 32))

(declare-fun lt!5494 () array!1113)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1113 (_ BitVec 32)) Bool)

(assert (=> d!3625 (arrayForallSeekEntryOrOpenFound!0 lt!5508 lt!5494 (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1113 (_ BitVec 32) (_ BitVec 32)) Unit!391)

(assert (=> d!3625 (= lt!5504 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!5494 (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) lt!5508))))

(assert (=> d!3625 (= lt!5508 #b00000000000000000000000000000000)))

(assert (=> d!3625 (= lt!5494 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5491 () Unit!391)

(declare-fun lt!5488 () Unit!391)

(assert (=> d!3625 (= lt!5491 lt!5488)))

(declare-fun lt!5503 () array!1113)

(declare-fun lt!5502 () (_ BitVec 32))

(declare-fun lt!5505 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1113 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3625 (= (arrayCountValidKeys!0 lt!5503 lt!5502 lt!5505) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1113 (_ BitVec 32) (_ BitVec 32)) Unit!391)

(assert (=> d!3625 (= lt!5488 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!5503 lt!5502 lt!5505))))

(assert (=> d!3625 (= lt!5505 (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3625 (= lt!5502 #b00000000000000000000000000000000)))

(assert (=> d!3625 (= lt!5503 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3625 (= lt!5501 (LongMapFixedSize!139 (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!134 (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!134 (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1114 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)) (array!1112 ((as const (Array (_ BitVec 32) ValueCell!276)) EmptyCell!276) (bvadd (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3625 (validMask!0 (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))))))

(assert (=> d!3625 (= (getNewLongMapFixedSize!10 (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) (defaultEntry!1688 (v!1521 (underlying!80 thiss!938)))) lt!5510)))

(declare-fun b!19643 () Bool)

(assert (=> b!19643 (= e!12742 (ite (= (_1!406 lt!5506) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!5509 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!5509 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!19644 () Bool)

(declare-fun arrayContainsKey!0 (array!1113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!19644 (= e!12742 (arrayContainsKey!0 lt!5496 (_1!406 lt!5506) #b00000000000000000000000000000000))))

(declare-fun b!19645 () Bool)

(declare-fun Unit!394 () Unit!391)

(assert (=> b!19645 (= e!12744 Unit!394)))

(assert (= (and d!3625 c!2094) b!19642))

(assert (= (and d!3625 (not c!2094)) b!19645))

(assert (= (and b!19642 c!2093) b!19644))

(assert (= (and b!19642 (not c!2093)) b!19643))

(assert (= (and d!3625 res!13241) b!19640))

(assert (= (and b!19640 res!13242) b!19641))

(declare-fun b_lambda!1469 () Bool)

(assert (=> (not b_lambda!1469) (not b!19642)))

(declare-fun t!3189 () Bool)

(declare-fun tb!633 () Bool)

(assert (=> (and b!19599 (= (defaultEntry!1688 (v!1521 (underlying!80 thiss!938))) (defaultEntry!1688 (v!1521 (underlying!80 thiss!938)))) t!3189) tb!633))

(declare-fun result!1029 () Bool)

(assert (=> tb!633 (= result!1029 tp_is_empty!951)))

(assert (=> b!19642 t!3189))

(declare-fun b_and!1353 () Bool)

(assert (= b_and!1349 (and (=> t!3189 result!1029) b_and!1353)))

(declare-fun b_lambda!1471 () Bool)

(assert (=> (not b_lambda!1471) (not d!3625)))

(assert (=> d!3625 t!3189))

(declare-fun b_and!1355 () Bool)

(assert (= b_and!1353 (and (=> t!3189 result!1029) b_and!1355)))

(declare-fun m!13799 () Bool)

(assert (=> b!19641 m!13799))

(declare-fun m!13801 () Bool)

(assert (=> b!19642 m!13801))

(declare-fun m!13803 () Bool)

(assert (=> b!19642 m!13803))

(assert (=> b!19642 m!13771))

(assert (=> b!19642 m!13801))

(assert (=> b!19642 m!13801))

(declare-fun m!13805 () Bool)

(assert (=> b!19642 m!13805))

(declare-fun m!13807 () Bool)

(assert (=> b!19642 m!13807))

(declare-fun m!13809 () Bool)

(assert (=> b!19642 m!13809))

(assert (=> d!3625 m!13801))

(declare-fun m!13811 () Bool)

(assert (=> d!3625 m!13811))

(declare-fun m!13813 () Bool)

(assert (=> d!3625 m!13813))

(assert (=> d!3625 m!13807))

(assert (=> d!3625 m!13771))

(declare-fun m!13815 () Bool)

(assert (=> d!3625 m!13815))

(declare-fun m!13817 () Bool)

(assert (=> d!3625 m!13817))

(assert (=> d!3625 m!13771))

(declare-fun m!13819 () Bool)

(assert (=> d!3625 m!13819))

(assert (=> d!3625 m!13771))

(declare-fun m!13821 () Bool)

(assert (=> d!3625 m!13821))

(declare-fun m!13823 () Bool)

(assert (=> d!3625 m!13823))

(declare-fun m!13825 () Bool)

(assert (=> d!3625 m!13825))

(declare-fun m!13827 () Bool)

(assert (=> b!19644 m!13827))

(assert (=> b!19596 d!3625))

(declare-fun d!3627 () Bool)

(declare-fun e!12749 () Bool)

(assert (=> d!3627 e!12749))

(declare-fun res!13245 () Bool)

(assert (=> d!3627 (=> (not res!13245) (not e!12749))))

(declare-fun lt!5516 () (_ BitVec 32))

(assert (=> d!3627 (= res!13245 (validMask!0 lt!5516))))

(declare-datatypes ((tuple2!808 0))(
  ( (tuple2!809 (_1!407 Unit!391) (_2!407 (_ BitVec 32))) )
))
(declare-fun e!12750 () tuple2!808)

(assert (=> d!3627 (= lt!5516 (_2!407 e!12750))))

(declare-fun c!2097 () Bool)

(declare-fun lt!5515 () tuple2!808)

(assert (=> d!3627 (= c!2097 (and (bvsgt (_2!407 lt!5515) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!103 (v!1521 (underlying!80 thiss!938)))) (_2!407 lt!5515)) (bvsge (bvadd (bvand (bvashr (_2!407 lt!5515) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!103 (v!1521 (underlying!80 thiss!938))))))))

(declare-fun Unit!395 () Unit!391)

(declare-fun Unit!396 () Unit!391)

(assert (=> d!3627 (= lt!5515 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!103 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))))) (mask!4642 (v!1521 (underlying!80 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!103 (v!1521 (underlying!80 thiss!938)))) (mask!4642 (v!1521 (underlying!80 thiss!938))))) (tuple2!809 Unit!395 (bvand (bvadd (bvshl (mask!4642 (v!1521 (underlying!80 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!809 Unit!396 (mask!4642 (v!1521 (underlying!80 thiss!938))))))))

(assert (=> d!3627 (validMask!0 (mask!4642 (v!1521 (underlying!80 thiss!938))))))

(assert (=> d!3627 (= (computeNewMask!7 thiss!938 (mask!4642 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (_size!103 (v!1521 (underlying!80 thiss!938)))) lt!5516)))

(declare-fun b!19654 () Bool)

(declare-fun computeNewMaskWhile!4 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!808)

(assert (=> b!19654 (= e!12750 (computeNewMaskWhile!4 (_size!103 (v!1521 (underlying!80 thiss!938))) (_vacant!103 (v!1521 (underlying!80 thiss!938))) (mask!4642 (v!1521 (underlying!80 thiss!938))) (_2!407 lt!5515)))))

(declare-fun b!19655 () Bool)

(declare-fun Unit!397 () Unit!391)

(assert (=> b!19655 (= e!12750 (tuple2!809 Unit!397 (_2!407 lt!5515)))))

(declare-fun b!19656 () Bool)

(assert (=> b!19656 (= e!12749 (bvsle (_size!103 (v!1521 (underlying!80 thiss!938))) (bvadd lt!5516 #b00000000000000000000000000000001)))))

(assert (= (and d!3627 c!2097) b!19654))

(assert (= (and d!3627 (not c!2097)) b!19655))

(assert (= (and d!3627 res!13245) b!19656))

(declare-fun m!13829 () Bool)

(assert (=> d!3627 m!13829))

(declare-fun m!13831 () Bool)

(assert (=> d!3627 m!13831))

(declare-fun m!13833 () Bool)

(assert (=> b!19654 m!13833))

(assert (=> b!19596 d!3627))

(declare-fun d!3629 () Bool)

(assert (=> d!3629 (= (valid!68 thiss!938) (valid!69 (v!1521 (underlying!80 thiss!938))))))

(declare-fun bs!877 () Bool)

(assert (= bs!877 d!3629))

(declare-fun m!13835 () Bool)

(assert (=> bs!877 m!13835))

(assert (=> start!3218 d!3629))

(declare-fun d!3631 () Bool)

(declare-fun res!13252 () Bool)

(declare-fun e!12753 () Bool)

(assert (=> d!3631 (=> (not res!13252) (not e!12753))))

(declare-fun simpleValid!12 (LongMapFixedSize!138) Bool)

(assert (=> d!3631 (= res!13252 (simpleValid!12 lt!5438))))

(assert (=> d!3631 (= (valid!69 lt!5438) e!12753)))

(declare-fun b!19663 () Bool)

(declare-fun res!13253 () Bool)

(assert (=> b!19663 (=> (not res!13253) (not e!12753))))

(assert (=> b!19663 (= res!13253 (= (arrayCountValidKeys!0 (_keys!3116 lt!5438) #b00000000000000000000000000000000 (size!625 (_keys!3116 lt!5438))) (_size!103 lt!5438)))))

(declare-fun b!19664 () Bool)

(declare-fun res!13254 () Bool)

(assert (=> b!19664 (=> (not res!13254) (not e!12753))))

(assert (=> b!19664 (= res!13254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3116 lt!5438) (mask!4642 lt!5438)))))

(declare-fun b!19665 () Bool)

(assert (=> b!19665 (= e!12753 (arrayNoDuplicates!0 (_keys!3116 lt!5438) #b00000000000000000000000000000000 Nil!541))))

(assert (= (and d!3631 res!13252) b!19663))

(assert (= (and b!19663 res!13253) b!19664))

(assert (= (and b!19664 res!13254) b!19665))

(declare-fun m!13837 () Bool)

(assert (=> d!3631 m!13837))

(declare-fun m!13839 () Bool)

(assert (=> b!19663 m!13839))

(declare-fun m!13841 () Bool)

(assert (=> b!19664 m!13841))

(declare-fun m!13843 () Bool)

(assert (=> b!19665 m!13843))

(assert (=> b!19602 d!3631))

(declare-fun mapNonEmpty!892 () Bool)

(declare-fun mapRes!892 () Bool)

(declare-fun tp!3286 () Bool)

(declare-fun e!12759 () Bool)

(assert (=> mapNonEmpty!892 (= mapRes!892 (and tp!3286 e!12759))))

(declare-fun mapRest!892 () (Array (_ BitVec 32) ValueCell!276))

(declare-fun mapKey!892 () (_ BitVec 32))

(declare-fun mapValue!892 () ValueCell!276)

(assert (=> mapNonEmpty!892 (= mapRest!886 (store mapRest!892 mapKey!892 mapValue!892))))

(declare-fun condMapEmpty!892 () Bool)

(declare-fun mapDefault!892 () ValueCell!276)

(assert (=> mapNonEmpty!886 (= condMapEmpty!892 (= mapRest!886 ((as const (Array (_ BitVec 32) ValueCell!276)) mapDefault!892)))))

(declare-fun e!12758 () Bool)

(assert (=> mapNonEmpty!886 (= tp!3276 (and e!12758 mapRes!892))))

(declare-fun b!19673 () Bool)

(assert (=> b!19673 (= e!12758 tp_is_empty!951)))

(declare-fun mapIsEmpty!892 () Bool)

(assert (=> mapIsEmpty!892 mapRes!892))

(declare-fun b!19672 () Bool)

(assert (=> b!19672 (= e!12759 tp_is_empty!951)))

(assert (= (and mapNonEmpty!886 condMapEmpty!892) mapIsEmpty!892))

(assert (= (and mapNonEmpty!886 (not condMapEmpty!892)) mapNonEmpty!892))

(assert (= (and mapNonEmpty!892 ((_ is ValueCellFull!276) mapValue!892)) b!19672))

(assert (= (and mapNonEmpty!886 ((_ is ValueCellFull!276) mapDefault!892)) b!19673))

(declare-fun m!13845 () Bool)

(assert (=> mapNonEmpty!892 m!13845))

(declare-fun b_lambda!1473 () Bool)

(assert (= b_lambda!1469 (or (and b!19599 b_free!687) b_lambda!1473)))

(declare-fun b_lambda!1475 () Bool)

(assert (= b_lambda!1471 (or (and b!19599 b_free!687) b_lambda!1475)))

(check-sat (not b_lambda!1475) (not b_lambda!1473) (not b!19644) (not b!19641) (not b!19665) (not b!19664) (not b_next!687) (not d!3627) (not d!3629) (not b!19654) (not d!3625) tp_is_empty!951 b_and!1355 (not mapNonEmpty!892) (not b!19642) (not d!3631) (not b!19663))
(check-sat b_and!1355 (not b_next!687))
