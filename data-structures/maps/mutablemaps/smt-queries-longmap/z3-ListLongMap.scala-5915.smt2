; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76718 () Bool)

(assert start!76718)

(declare-fun b!897590 () Bool)

(declare-fun b_free!15993 () Bool)

(declare-fun b_next!15993 () Bool)

(assert (=> b!897590 (= b_free!15993 (not b_next!15993))))

(declare-fun tp!56036 () Bool)

(declare-fun b_and!26303 () Bool)

(assert (=> b!897590 (= tp!56036 b_and!26303)))

(declare-fun mapIsEmpty!29124 () Bool)

(declare-fun mapRes!29124 () Bool)

(assert (=> mapIsEmpty!29124 mapRes!29124))

(declare-fun b!897589 () Bool)

(declare-fun e!502013 () Bool)

(declare-fun tp_is_empty!18321 () Bool)

(assert (=> b!897589 (= e!502013 tp_is_empty!18321)))

(declare-fun e!502014 () Bool)

(declare-datatypes ((array!52658 0))(
  ( (array!52659 (arr!25306 (Array (_ BitVec 32) (_ BitVec 64))) (size!25762 (_ BitVec 32))) )
))
(declare-datatypes ((V!29393 0))(
  ( (V!29394 (val!9211 Int)) )
))
(declare-datatypes ((ValueCell!8679 0))(
  ( (ValueCellFull!8679 (v!11698 V!29393)) (EmptyCell!8679) )
))
(declare-datatypes ((array!52660 0))(
  ( (array!52661 (arr!25307 (Array (_ BitVec 32) ValueCell!8679)) (size!25763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4374 0))(
  ( (LongMapFixedSize!4375 (defaultEntry!5399 Int) (mask!26095 (_ BitVec 32)) (extraKeys!5111 (_ BitVec 32)) (zeroValue!5215 V!29393) (minValue!5215 V!29393) (_size!2242 (_ BitVec 32)) (_keys!10159 array!52658) (_values!5402 array!52660) (_vacant!2242 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4374)

(declare-fun e!502012 () Bool)

(declare-fun array_inv!19836 (array!52658) Bool)

(declare-fun array_inv!19837 (array!52660) Bool)

(assert (=> b!897590 (= e!502012 (and tp!56036 tp_is_empty!18321 (array_inv!19836 (_keys!10159 thiss!1181)) (array_inv!19837 (_values!5402 thiss!1181)) e!502014))))

(declare-fun b!897591 () Bool)

(declare-fun e!502010 () Bool)

(assert (=> b!897591 (= e!502014 (and e!502010 mapRes!29124))))

(declare-fun condMapEmpty!29124 () Bool)

(declare-fun mapDefault!29124 () ValueCell!8679)

(assert (=> b!897591 (= condMapEmpty!29124 (= (arr!25307 (_values!5402 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8679)) mapDefault!29124)))))

(declare-fun b!897592 () Bool)

(declare-fun res!606788 () Bool)

(declare-fun e!502009 () Bool)

(assert (=> b!897592 (=> (not res!606788) (not e!502009))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897592 (= res!606788 (not (= key!785 (bvneg key!785))))))

(declare-fun res!606786 () Bool)

(assert (=> start!76718 (=> (not res!606786) (not e!502009))))

(declare-fun valid!1671 (LongMapFixedSize!4374) Bool)

(assert (=> start!76718 (= res!606786 (valid!1671 thiss!1181))))

(assert (=> start!76718 e!502009))

(assert (=> start!76718 e!502012))

(assert (=> start!76718 true))

(declare-fun b!897593 () Bool)

(declare-fun e!502008 () Bool)

(assert (=> b!897593 (= e!502009 (not e!502008))))

(declare-fun res!606784 () Bool)

(assert (=> b!897593 (=> res!606784 e!502008)))

(declare-datatypes ((SeekEntryResult!8902 0))(
  ( (MissingZero!8902 (index!37978 (_ BitVec 32))) (Found!8902 (index!37979 (_ BitVec 32))) (Intermediate!8902 (undefined!9714 Bool) (index!37980 (_ BitVec 32)) (x!76476 (_ BitVec 32))) (Undefined!8902) (MissingVacant!8902 (index!37981 (_ BitVec 32))) )
))
(declare-fun lt!405235 () SeekEntryResult!8902)

(get-info :version)

(assert (=> b!897593 (= res!606784 (not ((_ is Found!8902) lt!405235)))))

(declare-fun e!502015 () Bool)

(assert (=> b!897593 e!502015))

(declare-fun res!606787 () Bool)

(assert (=> b!897593 (=> res!606787 e!502015)))

(assert (=> b!897593 (= res!606787 (not ((_ is Found!8902) lt!405235)))))

(declare-datatypes ((Unit!30485 0))(
  ( (Unit!30486) )
))
(declare-fun lt!405237 () Unit!30485)

(declare-fun lemmaSeekEntryGivesInRangeIndex!89 (array!52658 array!52660 (_ BitVec 32) (_ BitVec 32) V!29393 V!29393 (_ BitVec 64)) Unit!30485)

(assert (=> b!897593 (= lt!405237 (lemmaSeekEntryGivesInRangeIndex!89 (_keys!10159 thiss!1181) (_values!5402 thiss!1181) (mask!26095 thiss!1181) (extraKeys!5111 thiss!1181) (zeroValue!5215 thiss!1181) (minValue!5215 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52658 (_ BitVec 32)) SeekEntryResult!8902)

(assert (=> b!897593 (= lt!405235 (seekEntry!0 key!785 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(declare-fun b!897594 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897594 (= e!502015 (inRange!0 (index!37979 lt!405235) (mask!26095 thiss!1181)))))

(declare-fun b!897595 () Bool)

(declare-fun res!606789 () Bool)

(declare-fun e!502007 () Bool)

(assert (=> b!897595 (=> res!606789 e!502007)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52658 (_ BitVec 32)) Bool)

(assert (=> b!897595 (= res!606789 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10159 thiss!1181) (mask!26095 thiss!1181))))))

(declare-fun b!897596 () Bool)

(declare-datatypes ((List!17907 0))(
  ( (Nil!17904) (Cons!17903 (h!19045 (_ BitVec 64)) (t!25254 List!17907)) )
))
(declare-fun arrayNoDuplicates!0 (array!52658 (_ BitVec 32) List!17907) Bool)

(assert (=> b!897596 (= e!502007 (arrayNoDuplicates!0 (_keys!10159 thiss!1181) #b00000000000000000000000000000000 Nil!17904))))

(declare-fun mapNonEmpty!29124 () Bool)

(declare-fun tp!56037 () Bool)

(assert (=> mapNonEmpty!29124 (= mapRes!29124 (and tp!56037 e!502013))))

(declare-fun mapValue!29124 () ValueCell!8679)

(declare-fun mapRest!29124 () (Array (_ BitVec 32) ValueCell!8679))

(declare-fun mapKey!29124 () (_ BitVec 32))

(assert (=> mapNonEmpty!29124 (= (arr!25307 (_values!5402 thiss!1181)) (store mapRest!29124 mapKey!29124 mapValue!29124))))

(declare-fun b!897597 () Bool)

(assert (=> b!897597 (= e!502010 tp_is_empty!18321)))

(declare-fun b!897598 () Bool)

(declare-fun res!606790 () Bool)

(assert (=> b!897598 (=> res!606790 e!502007)))

(assert (=> b!897598 (= res!606790 (or (not (= (size!25763 (_values!5402 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26095 thiss!1181)))) (not (= (size!25762 (_keys!10159 thiss!1181)) (size!25763 (_values!5402 thiss!1181)))) (bvslt (mask!26095 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5111 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5111 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897599 () Bool)

(assert (=> b!897599 (= e!502008 e!502007)))

(declare-fun res!606785 () Bool)

(assert (=> b!897599 (=> res!606785 e!502007)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897599 (= res!606785 (not (validMask!0 (mask!26095 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897599 (arrayContainsKey!0 (_keys!10159 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405236 () Unit!30485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52658 (_ BitVec 64) (_ BitVec 32)) Unit!30485)

(assert (=> b!897599 (= lt!405236 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10159 thiss!1181) key!785 (index!37979 lt!405235)))))

(assert (= (and start!76718 res!606786) b!897592))

(assert (= (and b!897592 res!606788) b!897593))

(assert (= (and b!897593 (not res!606787)) b!897594))

(assert (= (and b!897593 (not res!606784)) b!897599))

(assert (= (and b!897599 (not res!606785)) b!897598))

(assert (= (and b!897598 (not res!606790)) b!897595))

(assert (= (and b!897595 (not res!606789)) b!897596))

(assert (= (and b!897591 condMapEmpty!29124) mapIsEmpty!29124))

(assert (= (and b!897591 (not condMapEmpty!29124)) mapNonEmpty!29124))

(assert (= (and mapNonEmpty!29124 ((_ is ValueCellFull!8679) mapValue!29124)) b!897589))

(assert (= (and b!897591 ((_ is ValueCellFull!8679) mapDefault!29124)) b!897597))

(assert (= b!897590 b!897591))

(assert (= start!76718 b!897590))

(declare-fun m!834381 () Bool)

(assert (=> b!897596 m!834381))

(declare-fun m!834383 () Bool)

(assert (=> b!897594 m!834383))

(declare-fun m!834385 () Bool)

(assert (=> mapNonEmpty!29124 m!834385))

(declare-fun m!834387 () Bool)

(assert (=> b!897593 m!834387))

(declare-fun m!834389 () Bool)

(assert (=> b!897593 m!834389))

(declare-fun m!834391 () Bool)

(assert (=> b!897590 m!834391))

(declare-fun m!834393 () Bool)

(assert (=> b!897590 m!834393))

(declare-fun m!834395 () Bool)

(assert (=> start!76718 m!834395))

(declare-fun m!834397 () Bool)

(assert (=> b!897595 m!834397))

(declare-fun m!834399 () Bool)

(assert (=> b!897599 m!834399))

(declare-fun m!834401 () Bool)

(assert (=> b!897599 m!834401))

(declare-fun m!834403 () Bool)

(assert (=> b!897599 m!834403))

(check-sat (not b!897594) b_and!26303 (not b!897596) tp_is_empty!18321 (not b!897593) (not b!897595) (not b!897599) (not b!897590) (not b_next!15993) (not start!76718) (not mapNonEmpty!29124))
(check-sat b_and!26303 (not b_next!15993))
(get-model)

(declare-fun d!111061 () Bool)

(assert (=> d!111061 (= (validMask!0 (mask!26095 thiss!1181)) (and (or (= (mask!26095 thiss!1181) #b00000000000000000000000000000111) (= (mask!26095 thiss!1181) #b00000000000000000000000000001111) (= (mask!26095 thiss!1181) #b00000000000000000000000000011111) (= (mask!26095 thiss!1181) #b00000000000000000000000000111111) (= (mask!26095 thiss!1181) #b00000000000000000000000001111111) (= (mask!26095 thiss!1181) #b00000000000000000000000011111111) (= (mask!26095 thiss!1181) #b00000000000000000000000111111111) (= (mask!26095 thiss!1181) #b00000000000000000000001111111111) (= (mask!26095 thiss!1181) #b00000000000000000000011111111111) (= (mask!26095 thiss!1181) #b00000000000000000000111111111111) (= (mask!26095 thiss!1181) #b00000000000000000001111111111111) (= (mask!26095 thiss!1181) #b00000000000000000011111111111111) (= (mask!26095 thiss!1181) #b00000000000000000111111111111111) (= (mask!26095 thiss!1181) #b00000000000000001111111111111111) (= (mask!26095 thiss!1181) #b00000000000000011111111111111111) (= (mask!26095 thiss!1181) #b00000000000000111111111111111111) (= (mask!26095 thiss!1181) #b00000000000001111111111111111111) (= (mask!26095 thiss!1181) #b00000000000011111111111111111111) (= (mask!26095 thiss!1181) #b00000000000111111111111111111111) (= (mask!26095 thiss!1181) #b00000000001111111111111111111111) (= (mask!26095 thiss!1181) #b00000000011111111111111111111111) (= (mask!26095 thiss!1181) #b00000000111111111111111111111111) (= (mask!26095 thiss!1181) #b00000001111111111111111111111111) (= (mask!26095 thiss!1181) #b00000011111111111111111111111111) (= (mask!26095 thiss!1181) #b00000111111111111111111111111111) (= (mask!26095 thiss!1181) #b00001111111111111111111111111111) (= (mask!26095 thiss!1181) #b00011111111111111111111111111111) (= (mask!26095 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26095 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!897599 d!111061))

(declare-fun d!111063 () Bool)

(declare-fun res!606816 () Bool)

(declare-fun e!502047 () Bool)

(assert (=> d!111063 (=> res!606816 e!502047)))

(assert (=> d!111063 (= res!606816 (= (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111063 (= (arrayContainsKey!0 (_keys!10159 thiss!1181) key!785 #b00000000000000000000000000000000) e!502047)))

(declare-fun b!897637 () Bool)

(declare-fun e!502048 () Bool)

(assert (=> b!897637 (= e!502047 e!502048)))

(declare-fun res!606817 () Bool)

(assert (=> b!897637 (=> (not res!606817) (not e!502048))))

(assert (=> b!897637 (= res!606817 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25762 (_keys!10159 thiss!1181))))))

(declare-fun b!897638 () Bool)

(assert (=> b!897638 (= e!502048 (arrayContainsKey!0 (_keys!10159 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111063 (not res!606816)) b!897637))

(assert (= (and b!897637 res!606817) b!897638))

(declare-fun m!834429 () Bool)

(assert (=> d!111063 m!834429))

(declare-fun m!834431 () Bool)

(assert (=> b!897638 m!834431))

(assert (=> b!897599 d!111063))

(declare-fun d!111065 () Bool)

(assert (=> d!111065 (arrayContainsKey!0 (_keys!10159 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405249 () Unit!30485)

(declare-fun choose!13 (array!52658 (_ BitVec 64) (_ BitVec 32)) Unit!30485)

(assert (=> d!111065 (= lt!405249 (choose!13 (_keys!10159 thiss!1181) key!785 (index!37979 lt!405235)))))

(assert (=> d!111065 (bvsge (index!37979 lt!405235) #b00000000000000000000000000000000)))

(assert (=> d!111065 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10159 thiss!1181) key!785 (index!37979 lt!405235)) lt!405249)))

(declare-fun bs!25190 () Bool)

(assert (= bs!25190 d!111065))

(assert (=> bs!25190 m!834401))

(declare-fun m!834433 () Bool)

(assert (=> bs!25190 m!834433))

(assert (=> b!897599 d!111065))

(declare-fun d!111067 () Bool)

(assert (=> d!111067 (= (inRange!0 (index!37979 lt!405235) (mask!26095 thiss!1181)) (and (bvsge (index!37979 lt!405235) #b00000000000000000000000000000000) (bvslt (index!37979 lt!405235) (bvadd (mask!26095 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897594 d!111067))

(declare-fun d!111069 () Bool)

(declare-fun e!502051 () Bool)

(assert (=> d!111069 e!502051))

(declare-fun res!606820 () Bool)

(assert (=> d!111069 (=> res!606820 e!502051)))

(declare-fun lt!405255 () SeekEntryResult!8902)

(assert (=> d!111069 (= res!606820 (not ((_ is Found!8902) lt!405255)))))

(assert (=> d!111069 (= lt!405255 (seekEntry!0 key!785 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(declare-fun lt!405254 () Unit!30485)

(declare-fun choose!1493 (array!52658 array!52660 (_ BitVec 32) (_ BitVec 32) V!29393 V!29393 (_ BitVec 64)) Unit!30485)

(assert (=> d!111069 (= lt!405254 (choose!1493 (_keys!10159 thiss!1181) (_values!5402 thiss!1181) (mask!26095 thiss!1181) (extraKeys!5111 thiss!1181) (zeroValue!5215 thiss!1181) (minValue!5215 thiss!1181) key!785))))

(assert (=> d!111069 (validMask!0 (mask!26095 thiss!1181))))

(assert (=> d!111069 (= (lemmaSeekEntryGivesInRangeIndex!89 (_keys!10159 thiss!1181) (_values!5402 thiss!1181) (mask!26095 thiss!1181) (extraKeys!5111 thiss!1181) (zeroValue!5215 thiss!1181) (minValue!5215 thiss!1181) key!785) lt!405254)))

(declare-fun b!897641 () Bool)

(assert (=> b!897641 (= e!502051 (inRange!0 (index!37979 lt!405255) (mask!26095 thiss!1181)))))

(assert (= (and d!111069 (not res!606820)) b!897641))

(assert (=> d!111069 m!834389))

(declare-fun m!834435 () Bool)

(assert (=> d!111069 m!834435))

(assert (=> d!111069 m!834399))

(declare-fun m!834437 () Bool)

(assert (=> b!897641 m!834437))

(assert (=> b!897593 d!111069))

(declare-fun b!897654 () Bool)

(declare-fun e!502059 () SeekEntryResult!8902)

(declare-fun lt!405267 () SeekEntryResult!8902)

(assert (=> b!897654 (= e!502059 (MissingZero!8902 (index!37980 lt!405267)))))

(declare-fun b!897655 () Bool)

(declare-fun lt!405265 () SeekEntryResult!8902)

(assert (=> b!897655 (= e!502059 (ite ((_ is MissingVacant!8902) lt!405265) (MissingZero!8902 (index!37981 lt!405265)) lt!405265))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52658 (_ BitVec 32)) SeekEntryResult!8902)

(assert (=> b!897655 (= lt!405265 (seekKeyOrZeroReturnVacant!0 (x!76476 lt!405267) (index!37980 lt!405267) (index!37980 lt!405267) key!785 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(declare-fun b!897656 () Bool)

(declare-fun c!94794 () Bool)

(declare-fun lt!405266 () (_ BitVec 64))

(assert (=> b!897656 (= c!94794 (= lt!405266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!502060 () SeekEntryResult!8902)

(assert (=> b!897656 (= e!502060 e!502059)))

(declare-fun b!897657 () Bool)

(assert (=> b!897657 (= e!502060 (Found!8902 (index!37980 lt!405267)))))

(declare-fun d!111071 () Bool)

(declare-fun lt!405264 () SeekEntryResult!8902)

(assert (=> d!111071 (and (or ((_ is MissingVacant!8902) lt!405264) (not ((_ is Found!8902) lt!405264)) (and (bvsge (index!37979 lt!405264) #b00000000000000000000000000000000) (bvslt (index!37979 lt!405264) (size!25762 (_keys!10159 thiss!1181))))) (not ((_ is MissingVacant!8902) lt!405264)) (or (not ((_ is Found!8902) lt!405264)) (= (select (arr!25306 (_keys!10159 thiss!1181)) (index!37979 lt!405264)) key!785)))))

(declare-fun e!502058 () SeekEntryResult!8902)

(assert (=> d!111071 (= lt!405264 e!502058)))

(declare-fun c!94795 () Bool)

(assert (=> d!111071 (= c!94795 (and ((_ is Intermediate!8902) lt!405267) (undefined!9714 lt!405267)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52658 (_ BitVec 32)) SeekEntryResult!8902)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111071 (= lt!405267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26095 thiss!1181)) key!785 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(assert (=> d!111071 (validMask!0 (mask!26095 thiss!1181))))

(assert (=> d!111071 (= (seekEntry!0 key!785 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)) lt!405264)))

(declare-fun b!897658 () Bool)

(assert (=> b!897658 (= e!502058 Undefined!8902)))

(declare-fun b!897659 () Bool)

(assert (=> b!897659 (= e!502058 e!502060)))

(assert (=> b!897659 (= lt!405266 (select (arr!25306 (_keys!10159 thiss!1181)) (index!37980 lt!405267)))))

(declare-fun c!94793 () Bool)

(assert (=> b!897659 (= c!94793 (= lt!405266 key!785))))

(assert (= (and d!111071 c!94795) b!897658))

(assert (= (and d!111071 (not c!94795)) b!897659))

(assert (= (and b!897659 c!94793) b!897657))

(assert (= (and b!897659 (not c!94793)) b!897656))

(assert (= (and b!897656 c!94794) b!897654))

(assert (= (and b!897656 (not c!94794)) b!897655))

(declare-fun m!834439 () Bool)

(assert (=> b!897655 m!834439))

(declare-fun m!834441 () Bool)

(assert (=> d!111071 m!834441))

(declare-fun m!834443 () Bool)

(assert (=> d!111071 m!834443))

(assert (=> d!111071 m!834443))

(declare-fun m!834445 () Bool)

(assert (=> d!111071 m!834445))

(assert (=> d!111071 m!834399))

(declare-fun m!834447 () Bool)

(assert (=> b!897659 m!834447))

(assert (=> b!897593 d!111071))

(declare-fun b!897670 () Bool)

(declare-fun e!502069 () Bool)

(declare-fun contains!4393 (List!17907 (_ BitVec 64)) Bool)

(assert (=> b!897670 (= e!502069 (contains!4393 Nil!17904 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897671 () Bool)

(declare-fun e!502071 () Bool)

(declare-fun e!502072 () Bool)

(assert (=> b!897671 (= e!502071 e!502072)))

(declare-fun res!606827 () Bool)

(assert (=> b!897671 (=> (not res!606827) (not e!502072))))

(assert (=> b!897671 (= res!606827 (not e!502069))))

(declare-fun res!606828 () Bool)

(assert (=> b!897671 (=> (not res!606828) (not e!502069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897671 (= res!606828 (validKeyInArray!0 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897672 () Bool)

(declare-fun e!502070 () Bool)

(declare-fun call!39820 () Bool)

(assert (=> b!897672 (= e!502070 call!39820)))

(declare-fun d!111073 () Bool)

(declare-fun res!606829 () Bool)

(assert (=> d!111073 (=> res!606829 e!502071)))

(assert (=> d!111073 (= res!606829 (bvsge #b00000000000000000000000000000000 (size!25762 (_keys!10159 thiss!1181))))))

(assert (=> d!111073 (= (arrayNoDuplicates!0 (_keys!10159 thiss!1181) #b00000000000000000000000000000000 Nil!17904) e!502071)))

(declare-fun b!897673 () Bool)

(assert (=> b!897673 (= e!502072 e!502070)))

(declare-fun c!94798 () Bool)

(assert (=> b!897673 (= c!94798 (validKeyInArray!0 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!897674 () Bool)

(assert (=> b!897674 (= e!502070 call!39820)))

(declare-fun bm!39817 () Bool)

(assert (=> bm!39817 (= call!39820 (arrayNoDuplicates!0 (_keys!10159 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94798 (Cons!17903 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000) Nil!17904) Nil!17904)))))

(assert (= (and d!111073 (not res!606829)) b!897671))

(assert (= (and b!897671 res!606828) b!897670))

(assert (= (and b!897671 res!606827) b!897673))

(assert (= (and b!897673 c!94798) b!897672))

(assert (= (and b!897673 (not c!94798)) b!897674))

(assert (= (or b!897672 b!897674) bm!39817))

(assert (=> b!897670 m!834429))

(assert (=> b!897670 m!834429))

(declare-fun m!834449 () Bool)

(assert (=> b!897670 m!834449))

(assert (=> b!897671 m!834429))

(assert (=> b!897671 m!834429))

(declare-fun m!834451 () Bool)

(assert (=> b!897671 m!834451))

(assert (=> b!897673 m!834429))

(assert (=> b!897673 m!834429))

(assert (=> b!897673 m!834451))

(assert (=> bm!39817 m!834429))

(declare-fun m!834453 () Bool)

(assert (=> bm!39817 m!834453))

(assert (=> b!897596 d!111073))

(declare-fun b!897683 () Bool)

(declare-fun e!502079 () Bool)

(declare-fun call!39823 () Bool)

(assert (=> b!897683 (= e!502079 call!39823)))

(declare-fun b!897685 () Bool)

(declare-fun e!502081 () Bool)

(assert (=> b!897685 (= e!502081 call!39823)))

(declare-fun b!897686 () Bool)

(declare-fun e!502080 () Bool)

(assert (=> b!897686 (= e!502080 e!502079)))

(declare-fun c!94801 () Bool)

(assert (=> b!897686 (= c!94801 (validKeyInArray!0 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39820 () Bool)

(assert (=> bm!39820 (= call!39823 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(declare-fun b!897684 () Bool)

(assert (=> b!897684 (= e!502079 e!502081)))

(declare-fun lt!405274 () (_ BitVec 64))

(assert (=> b!897684 (= lt!405274 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405276 () Unit!30485)

(assert (=> b!897684 (= lt!405276 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10159 thiss!1181) lt!405274 #b00000000000000000000000000000000))))

(assert (=> b!897684 (arrayContainsKey!0 (_keys!10159 thiss!1181) lt!405274 #b00000000000000000000000000000000)))

(declare-fun lt!405275 () Unit!30485)

(assert (=> b!897684 (= lt!405275 lt!405276)))

(declare-fun res!606835 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52658 (_ BitVec 32)) SeekEntryResult!8902)

(assert (=> b!897684 (= res!606835 (= (seekEntryOrOpen!0 (select (arr!25306 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000) (_keys!10159 thiss!1181) (mask!26095 thiss!1181)) (Found!8902 #b00000000000000000000000000000000)))))

(assert (=> b!897684 (=> (not res!606835) (not e!502081))))

(declare-fun d!111075 () Bool)

(declare-fun res!606834 () Bool)

(assert (=> d!111075 (=> res!606834 e!502080)))

(assert (=> d!111075 (= res!606834 (bvsge #b00000000000000000000000000000000 (size!25762 (_keys!10159 thiss!1181))))))

(assert (=> d!111075 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)) e!502080)))

(assert (= (and d!111075 (not res!606834)) b!897686))

(assert (= (and b!897686 c!94801) b!897684))

(assert (= (and b!897686 (not c!94801)) b!897683))

(assert (= (and b!897684 res!606835) b!897685))

(assert (= (or b!897685 b!897683) bm!39820))

(assert (=> b!897686 m!834429))

(assert (=> b!897686 m!834429))

(assert (=> b!897686 m!834451))

(declare-fun m!834455 () Bool)

(assert (=> bm!39820 m!834455))

(assert (=> b!897684 m!834429))

(declare-fun m!834457 () Bool)

(assert (=> b!897684 m!834457))

(declare-fun m!834459 () Bool)

(assert (=> b!897684 m!834459))

(assert (=> b!897684 m!834429))

(declare-fun m!834461 () Bool)

(assert (=> b!897684 m!834461))

(assert (=> b!897595 d!111075))

(declare-fun d!111077 () Bool)

(assert (=> d!111077 (= (array_inv!19836 (_keys!10159 thiss!1181)) (bvsge (size!25762 (_keys!10159 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897590 d!111077))

(declare-fun d!111079 () Bool)

(assert (=> d!111079 (= (array_inv!19837 (_values!5402 thiss!1181)) (bvsge (size!25763 (_values!5402 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897590 d!111079))

(declare-fun d!111081 () Bool)

(declare-fun res!606842 () Bool)

(declare-fun e!502084 () Bool)

(assert (=> d!111081 (=> (not res!606842) (not e!502084))))

(declare-fun simpleValid!319 (LongMapFixedSize!4374) Bool)

(assert (=> d!111081 (= res!606842 (simpleValid!319 thiss!1181))))

(assert (=> d!111081 (= (valid!1671 thiss!1181) e!502084)))

(declare-fun b!897693 () Bool)

(declare-fun res!606843 () Bool)

(assert (=> b!897693 (=> (not res!606843) (not e!502084))))

(declare-fun arrayCountValidKeys!0 (array!52658 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897693 (= res!606843 (= (arrayCountValidKeys!0 (_keys!10159 thiss!1181) #b00000000000000000000000000000000 (size!25762 (_keys!10159 thiss!1181))) (_size!2242 thiss!1181)))))

(declare-fun b!897694 () Bool)

(declare-fun res!606844 () Bool)

(assert (=> b!897694 (=> (not res!606844) (not e!502084))))

(assert (=> b!897694 (= res!606844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10159 thiss!1181) (mask!26095 thiss!1181)))))

(declare-fun b!897695 () Bool)

(assert (=> b!897695 (= e!502084 (arrayNoDuplicates!0 (_keys!10159 thiss!1181) #b00000000000000000000000000000000 Nil!17904))))

(assert (= (and d!111081 res!606842) b!897693))

(assert (= (and b!897693 res!606843) b!897694))

(assert (= (and b!897694 res!606844) b!897695))

(declare-fun m!834463 () Bool)

(assert (=> d!111081 m!834463))

(declare-fun m!834465 () Bool)

(assert (=> b!897693 m!834465))

(assert (=> b!897694 m!834397))

(assert (=> b!897695 m!834381))

(assert (=> start!76718 d!111081))

(declare-fun condMapEmpty!29130 () Bool)

(declare-fun mapDefault!29130 () ValueCell!8679)

(assert (=> mapNonEmpty!29124 (= condMapEmpty!29130 (= mapRest!29124 ((as const (Array (_ BitVec 32) ValueCell!8679)) mapDefault!29130)))))

(declare-fun e!502089 () Bool)

(declare-fun mapRes!29130 () Bool)

(assert (=> mapNonEmpty!29124 (= tp!56037 (and e!502089 mapRes!29130))))

(declare-fun mapIsEmpty!29130 () Bool)

(assert (=> mapIsEmpty!29130 mapRes!29130))

(declare-fun b!897703 () Bool)

(assert (=> b!897703 (= e!502089 tp_is_empty!18321)))

(declare-fun b!897702 () Bool)

(declare-fun e!502090 () Bool)

(assert (=> b!897702 (= e!502090 tp_is_empty!18321)))

(declare-fun mapNonEmpty!29130 () Bool)

(declare-fun tp!56046 () Bool)

(assert (=> mapNonEmpty!29130 (= mapRes!29130 (and tp!56046 e!502090))))

(declare-fun mapRest!29130 () (Array (_ BitVec 32) ValueCell!8679))

(declare-fun mapValue!29130 () ValueCell!8679)

(declare-fun mapKey!29130 () (_ BitVec 32))

(assert (=> mapNonEmpty!29130 (= mapRest!29124 (store mapRest!29130 mapKey!29130 mapValue!29130))))

(assert (= (and mapNonEmpty!29124 condMapEmpty!29130) mapIsEmpty!29130))

(assert (= (and mapNonEmpty!29124 (not condMapEmpty!29130)) mapNonEmpty!29130))

(assert (= (and mapNonEmpty!29130 ((_ is ValueCellFull!8679) mapValue!29130)) b!897702))

(assert (= (and mapNonEmpty!29124 ((_ is ValueCellFull!8679) mapDefault!29130)) b!897703))

(declare-fun m!834467 () Bool)

(assert (=> mapNonEmpty!29130 m!834467))

(check-sat (not b!897671) (not b!897655) (not mapNonEmpty!29130) (not b!897693) b_and!26303 (not b!897684) (not b!897686) (not b!897673) (not bm!39817) (not b!897695) (not b_next!15993) (not d!111081) tp_is_empty!18321 (not b!897641) (not d!111071) (not bm!39820) (not b!897670) (not b!897694) (not d!111065) (not d!111069) (not b!897638))
(check-sat b_and!26303 (not b_next!15993))
