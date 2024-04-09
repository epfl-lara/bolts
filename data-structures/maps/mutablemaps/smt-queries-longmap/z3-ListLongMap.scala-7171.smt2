; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91652 () Bool)

(assert start!91652)

(declare-fun b!1043065 () Bool)

(declare-fun b_free!21081 () Bool)

(declare-fun b_next!21081 () Bool)

(assert (=> b!1043065 (= b_free!21081 (not b_next!21081))))

(declare-fun tp!74479 () Bool)

(declare-fun b_and!33631 () Bool)

(assert (=> b!1043065 (= tp!74479 b_and!33631)))

(declare-fun b!1043063 () Bool)

(declare-fun res!695041 () Bool)

(declare-fun e!590973 () Bool)

(assert (=> b!1043063 (=> res!695041 e!590973)))

(declare-datatypes ((SeekEntryResult!9826 0))(
  ( (MissingZero!9826 (index!41674 (_ BitVec 32))) (Found!9826 (index!41675 (_ BitVec 32))) (Intermediate!9826 (undefined!10638 Bool) (index!41676 (_ BitVec 32)) (x!93121 (_ BitVec 32))) (Undefined!9826) (MissingVacant!9826 (index!41677 (_ BitVec 32))) )
))
(declare-fun lt!459745 () SeekEntryResult!9826)

(declare-datatypes ((V!37941 0))(
  ( (V!37942 (val!12451 Int)) )
))
(declare-datatypes ((ValueCell!11697 0))(
  ( (ValueCellFull!11697 (v!15043 V!37941)) (EmptyCell!11697) )
))
(declare-datatypes ((array!65746 0))(
  ( (array!65747 (arr!31623 (Array (_ BitVec 32) (_ BitVec 64))) (size!32159 (_ BitVec 32))) )
))
(declare-datatypes ((array!65748 0))(
  ( (array!65749 (arr!31624 (Array (_ BitVec 32) ValueCell!11697)) (size!32160 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5988 0))(
  ( (LongMapFixedSize!5989 (defaultEntry!6376 Int) (mask!30452 (_ BitVec 32)) (extraKeys!6104 (_ BitVec 32)) (zeroValue!6210 V!37941) (minValue!6210 V!37941) (_size!3049 (_ BitVec 32)) (_keys!11629 array!65746) (_values!6399 array!65748) (_vacant!3049 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5988)

(assert (=> b!1043063 (= res!695041 (or (bvslt (index!41675 lt!459745) #b00000000000000000000000000000000) (bvsge (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427)))))))

(declare-fun b!1043064 () Bool)

(declare-fun res!695035 () Bool)

(assert (=> b!1043064 (=> res!695035 e!590973)))

(declare-datatypes ((List!22110 0))(
  ( (Nil!22107) (Cons!22106 (h!23314 (_ BitVec 64)) (t!31331 List!22110)) )
))
(declare-fun arrayNoDuplicates!0 (array!65746 (_ BitVec 32) List!22110) Bool)

(assert (=> b!1043064 (= res!695035 (not (arrayNoDuplicates!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 Nil!22107)))))

(declare-fun e!590977 () Bool)

(declare-fun tp_is_empty!24801 () Bool)

(declare-fun e!590978 () Bool)

(declare-fun array_inv!24279 (array!65746) Bool)

(declare-fun array_inv!24280 (array!65748) Bool)

(assert (=> b!1043065 (= e!590978 (and tp!74479 tp_is_empty!24801 (array_inv!24279 (_keys!11629 thiss!1427)) (array_inv!24280 (_values!6399 thiss!1427)) e!590977))))

(declare-fun b!1043066 () Bool)

(declare-fun e!590976 () Bool)

(declare-fun e!590980 () Bool)

(assert (=> b!1043066 (= e!590976 e!590980)))

(declare-fun res!695036 () Bool)

(assert (=> b!1043066 (=> (not res!695036) (not e!590980))))

(get-info :version)

(assert (=> b!1043066 (= res!695036 ((_ is Found!9826) lt!459745))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65746 (_ BitVec 32)) SeekEntryResult!9826)

(assert (=> b!1043066 (= lt!459745 (seekEntry!0 key!909 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)))))

(declare-fun b!1043067 () Bool)

(declare-fun res!695037 () Bool)

(assert (=> b!1043067 (=> res!695037 e!590973)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1043067 (= res!695037 (not (validKeyInArray!0 key!909)))))

(declare-fun res!695038 () Bool)

(assert (=> start!91652 (=> (not res!695038) (not e!590976))))

(declare-fun valid!2201 (LongMapFixedSize!5988) Bool)

(assert (=> start!91652 (= res!695038 (valid!2201 thiss!1427))))

(assert (=> start!91652 e!590976))

(assert (=> start!91652 e!590978))

(assert (=> start!91652 true))

(declare-fun b!1043068 () Bool)

(declare-fun res!695040 () Bool)

(assert (=> b!1043068 (=> res!695040 e!590973)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65746 (_ BitVec 32)) Bool)

(assert (=> b!1043068 (= res!695040 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11629 thiss!1427) (mask!30452 thiss!1427))))))

(declare-fun b!1043069 () Bool)

(assert (=> b!1043069 (= e!590980 (not e!590973))))

(declare-fun res!695034 () Bool)

(assert (=> b!1043069 (=> res!695034 e!590973)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1043069 (= res!695034 (not (validMask!0 (mask!30452 thiss!1427))))))

(declare-fun lt!459748 () array!65746)

(declare-fun arrayContainsKey!0 (array!65746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043069 (not (arrayContainsKey!0 lt!459748 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34062 0))(
  ( (Unit!34063) )
))
(declare-fun lt!459746 () Unit!34062)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65746 (_ BitVec 32) (_ BitVec 64)) Unit!34062)

(assert (=> b!1043069 (= lt!459746 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) key!909))))

(assert (=> b!1043069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459748 (mask!30452 thiss!1427))))

(declare-fun lt!459747 () Unit!34062)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65746 (_ BitVec 32) (_ BitVec 32)) Unit!34062)

(assert (=> b!1043069 (= lt!459747 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) (mask!30452 thiss!1427)))))

(assert (=> b!1043069 (arrayNoDuplicates!0 lt!459748 #b00000000000000000000000000000000 Nil!22107)))

(declare-fun lt!459744 () Unit!34062)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65746 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22110) Unit!34062)

(assert (=> b!1043069 (= lt!459744 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11629 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41675 lt!459745) #b00000000000000000000000000000000 Nil!22107))))

(declare-fun arrayCountValidKeys!0 (array!65746 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043069 (= (arrayCountValidKeys!0 lt!459748 #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043069 (= lt!459748 (array!65747 (store (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32159 (_keys!11629 thiss!1427))))))

(declare-fun lt!459743 () Unit!34062)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65746 (_ BitVec 32) (_ BitVec 64)) Unit!34062)

(assert (=> b!1043069 (= lt!459743 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043070 () Bool)

(declare-fun e!590974 () Bool)

(declare-fun mapRes!38819 () Bool)

(assert (=> b!1043070 (= e!590977 (and e!590974 mapRes!38819))))

(declare-fun condMapEmpty!38819 () Bool)

(declare-fun mapDefault!38819 () ValueCell!11697)

(assert (=> b!1043070 (= condMapEmpty!38819 (= (arr!31624 (_values!6399 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11697)) mapDefault!38819)))))

(declare-fun b!1043071 () Bool)

(assert (=> b!1043071 (= e!590974 tp_is_empty!24801)))

(declare-fun b!1043072 () Bool)

(assert (=> b!1043072 (= e!590973 (= (select (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745)) key!909))))

(declare-fun b!1043073 () Bool)

(declare-fun res!695042 () Bool)

(assert (=> b!1043073 (=> (not res!695042) (not e!590976))))

(assert (=> b!1043073 (= res!695042 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38819 () Bool)

(declare-fun tp!74478 () Bool)

(declare-fun e!590979 () Bool)

(assert (=> mapNonEmpty!38819 (= mapRes!38819 (and tp!74478 e!590979))))

(declare-fun mapRest!38819 () (Array (_ BitVec 32) ValueCell!11697))

(declare-fun mapKey!38819 () (_ BitVec 32))

(declare-fun mapValue!38819 () ValueCell!11697)

(assert (=> mapNonEmpty!38819 (= (arr!31624 (_values!6399 thiss!1427)) (store mapRest!38819 mapKey!38819 mapValue!38819))))

(declare-fun b!1043074 () Bool)

(assert (=> b!1043074 (= e!590979 tp_is_empty!24801)))

(declare-fun b!1043075 () Bool)

(declare-fun res!695039 () Bool)

(assert (=> b!1043075 (=> res!695039 e!590973)))

(assert (=> b!1043075 (= res!695039 (or (not (= (size!32160 (_values!6399 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30452 thiss!1427)))) (not (= (size!32159 (_keys!11629 thiss!1427)) (size!32160 (_values!6399 thiss!1427)))) (bvslt (mask!30452 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6104 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6104 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38819 () Bool)

(assert (=> mapIsEmpty!38819 mapRes!38819))

(assert (= (and start!91652 res!695038) b!1043073))

(assert (= (and b!1043073 res!695042) b!1043066))

(assert (= (and b!1043066 res!695036) b!1043069))

(assert (= (and b!1043069 (not res!695034)) b!1043075))

(assert (= (and b!1043075 (not res!695039)) b!1043068))

(assert (= (and b!1043068 (not res!695040)) b!1043064))

(assert (= (and b!1043064 (not res!695035)) b!1043063))

(assert (= (and b!1043063 (not res!695041)) b!1043067))

(assert (= (and b!1043067 (not res!695037)) b!1043072))

(assert (= (and b!1043070 condMapEmpty!38819) mapIsEmpty!38819))

(assert (= (and b!1043070 (not condMapEmpty!38819)) mapNonEmpty!38819))

(assert (= (and mapNonEmpty!38819 ((_ is ValueCellFull!11697) mapValue!38819)) b!1043074))

(assert (= (and b!1043070 ((_ is ValueCellFull!11697) mapDefault!38819)) b!1043071))

(assert (= b!1043065 b!1043070))

(assert (= start!91652 b!1043065))

(declare-fun m!962415 () Bool)

(assert (=> b!1043066 m!962415))

(declare-fun m!962417 () Bool)

(assert (=> mapNonEmpty!38819 m!962417))

(declare-fun m!962419 () Bool)

(assert (=> b!1043067 m!962419))

(declare-fun m!962421 () Bool)

(assert (=> b!1043068 m!962421))

(declare-fun m!962423 () Bool)

(assert (=> start!91652 m!962423))

(declare-fun m!962425 () Bool)

(assert (=> b!1043069 m!962425))

(declare-fun m!962427 () Bool)

(assert (=> b!1043069 m!962427))

(declare-fun m!962429 () Bool)

(assert (=> b!1043069 m!962429))

(declare-fun m!962431 () Bool)

(assert (=> b!1043069 m!962431))

(declare-fun m!962433 () Bool)

(assert (=> b!1043069 m!962433))

(declare-fun m!962435 () Bool)

(assert (=> b!1043069 m!962435))

(declare-fun m!962437 () Bool)

(assert (=> b!1043069 m!962437))

(declare-fun m!962439 () Bool)

(assert (=> b!1043069 m!962439))

(declare-fun m!962441 () Bool)

(assert (=> b!1043069 m!962441))

(declare-fun m!962443 () Bool)

(assert (=> b!1043069 m!962443))

(declare-fun m!962445 () Bool)

(assert (=> b!1043069 m!962445))

(declare-fun m!962447 () Bool)

(assert (=> b!1043072 m!962447))

(declare-fun m!962449 () Bool)

(assert (=> b!1043065 m!962449))

(declare-fun m!962451 () Bool)

(assert (=> b!1043065 m!962451))

(declare-fun m!962453 () Bool)

(assert (=> b!1043064 m!962453))

(check-sat (not b!1043068) tp_is_empty!24801 (not b_next!21081) (not start!91652) (not b!1043064) (not mapNonEmpty!38819) (not b!1043067) b_and!33631 (not b!1043065) (not b!1043066) (not b!1043069))
(check-sat b_and!33631 (not b_next!21081))
(get-model)

(declare-fun d!126175 () Bool)

(assert (=> d!126175 (= (validKeyInArray!0 key!909) (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1043067 d!126175))

(declare-fun bm!44211 () Bool)

(declare-fun call!44214 () Bool)

(assert (=> bm!44211 (= call!44214 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11629 thiss!1427) (mask!30452 thiss!1427)))))

(declare-fun b!1043123 () Bool)

(declare-fun e!591012 () Bool)

(assert (=> b!1043123 (= e!591012 call!44214)))

(declare-fun d!126177 () Bool)

(declare-fun res!695074 () Bool)

(declare-fun e!591011 () Bool)

(assert (=> d!126177 (=> res!695074 e!591011)))

(assert (=> d!126177 (= res!695074 (bvsge #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))))))

(assert (=> d!126177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)) e!591011)))

(declare-fun b!1043124 () Bool)

(declare-fun e!591013 () Bool)

(assert (=> b!1043124 (= e!591012 e!591013)))

(declare-fun lt!459773 () (_ BitVec 64))

(assert (=> b!1043124 (= lt!459773 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459775 () Unit!34062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65746 (_ BitVec 64) (_ BitVec 32)) Unit!34062)

(assert (=> b!1043124 (= lt!459775 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11629 thiss!1427) lt!459773 #b00000000000000000000000000000000))))

(assert (=> b!1043124 (arrayContainsKey!0 (_keys!11629 thiss!1427) lt!459773 #b00000000000000000000000000000000)))

(declare-fun lt!459774 () Unit!34062)

(assert (=> b!1043124 (= lt!459774 lt!459775)))

(declare-fun res!695075 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65746 (_ BitVec 32)) SeekEntryResult!9826)

(assert (=> b!1043124 (= res!695075 (= (seekEntryOrOpen!0 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000) (_keys!11629 thiss!1427) (mask!30452 thiss!1427)) (Found!9826 #b00000000000000000000000000000000)))))

(assert (=> b!1043124 (=> (not res!695075) (not e!591013))))

(declare-fun b!1043125 () Bool)

(assert (=> b!1043125 (= e!591011 e!591012)))

(declare-fun c!105858 () Bool)

(assert (=> b!1043125 (= c!105858 (validKeyInArray!0 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043126 () Bool)

(assert (=> b!1043126 (= e!591013 call!44214)))

(assert (= (and d!126177 (not res!695074)) b!1043125))

(assert (= (and b!1043125 c!105858) b!1043124))

(assert (= (and b!1043125 (not c!105858)) b!1043123))

(assert (= (and b!1043124 res!695075) b!1043126))

(assert (= (or b!1043126 b!1043123) bm!44211))

(declare-fun m!962495 () Bool)

(assert (=> bm!44211 m!962495))

(declare-fun m!962497 () Bool)

(assert (=> b!1043124 m!962497))

(declare-fun m!962499 () Bool)

(assert (=> b!1043124 m!962499))

(declare-fun m!962501 () Bool)

(assert (=> b!1043124 m!962501))

(assert (=> b!1043124 m!962497))

(declare-fun m!962503 () Bool)

(assert (=> b!1043124 m!962503))

(assert (=> b!1043125 m!962497))

(assert (=> b!1043125 m!962497))

(declare-fun m!962505 () Bool)

(assert (=> b!1043125 m!962505))

(assert (=> b!1043068 d!126177))

(declare-fun b!1043137 () Bool)

(declare-fun e!591022 () Bool)

(declare-fun contains!6084 (List!22110 (_ BitVec 64)) Bool)

(assert (=> b!1043137 (= e!591022 (contains!6084 Nil!22107 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043138 () Bool)

(declare-fun e!591024 () Bool)

(declare-fun call!44217 () Bool)

(assert (=> b!1043138 (= e!591024 call!44217)))

(declare-fun bm!44214 () Bool)

(declare-fun c!105861 () Bool)

(assert (=> bm!44214 (= call!44217 (arrayNoDuplicates!0 (_keys!11629 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105861 (Cons!22106 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000) Nil!22107) Nil!22107)))))

(declare-fun b!1043139 () Bool)

(assert (=> b!1043139 (= e!591024 call!44217)))

(declare-fun b!1043140 () Bool)

(declare-fun e!591023 () Bool)

(assert (=> b!1043140 (= e!591023 e!591024)))

(assert (=> b!1043140 (= c!105861 (validKeyInArray!0 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043141 () Bool)

(declare-fun e!591025 () Bool)

(assert (=> b!1043141 (= e!591025 e!591023)))

(declare-fun res!695082 () Bool)

(assert (=> b!1043141 (=> (not res!695082) (not e!591023))))

(assert (=> b!1043141 (= res!695082 (not e!591022))))

(declare-fun res!695084 () Bool)

(assert (=> b!1043141 (=> (not res!695084) (not e!591022))))

(assert (=> b!1043141 (= res!695084 (validKeyInArray!0 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126179 () Bool)

(declare-fun res!695083 () Bool)

(assert (=> d!126179 (=> res!695083 e!591025)))

(assert (=> d!126179 (= res!695083 (bvsge #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))))))

(assert (=> d!126179 (= (arrayNoDuplicates!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 Nil!22107) e!591025)))

(assert (= (and d!126179 (not res!695083)) b!1043141))

(assert (= (and b!1043141 res!695084) b!1043137))

(assert (= (and b!1043141 res!695082) b!1043140))

(assert (= (and b!1043140 c!105861) b!1043139))

(assert (= (and b!1043140 (not c!105861)) b!1043138))

(assert (= (or b!1043139 b!1043138) bm!44214))

(assert (=> b!1043137 m!962497))

(assert (=> b!1043137 m!962497))

(declare-fun m!962507 () Bool)

(assert (=> b!1043137 m!962507))

(assert (=> bm!44214 m!962497))

(declare-fun m!962509 () Bool)

(assert (=> bm!44214 m!962509))

(assert (=> b!1043140 m!962497))

(assert (=> b!1043140 m!962497))

(assert (=> b!1043140 m!962505))

(assert (=> b!1043141 m!962497))

(assert (=> b!1043141 m!962497))

(assert (=> b!1043141 m!962505))

(assert (=> b!1043064 d!126179))

(declare-fun d!126181 () Bool)

(declare-fun e!591028 () Bool)

(assert (=> d!126181 e!591028))

(declare-fun res!695087 () Bool)

(assert (=> d!126181 (=> (not res!695087) (not e!591028))))

(assert (=> d!126181 (= res!695087 (bvslt (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427))))))

(declare-fun lt!459778 () Unit!34062)

(declare-fun choose!121 (array!65746 (_ BitVec 32) (_ BitVec 64)) Unit!34062)

(assert (=> d!126181 (= lt!459778 (choose!121 (_keys!11629 thiss!1427) (index!41675 lt!459745) key!909))))

(assert (=> d!126181 (bvsge (index!41675 lt!459745) #b00000000000000000000000000000000)))

(assert (=> d!126181 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) key!909) lt!459778)))

(declare-fun b!1043144 () Bool)

(assert (=> b!1043144 (= e!591028 (not (arrayContainsKey!0 (array!65747 (store (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32159 (_keys!11629 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126181 res!695087) b!1043144))

(declare-fun m!962511 () Bool)

(assert (=> d!126181 m!962511))

(assert (=> b!1043144 m!962443))

(declare-fun m!962513 () Bool)

(assert (=> b!1043144 m!962513))

(assert (=> b!1043069 d!126181))

(declare-fun d!126183 () Bool)

(declare-fun res!695092 () Bool)

(declare-fun e!591033 () Bool)

(assert (=> d!126183 (=> res!695092 e!591033)))

(assert (=> d!126183 (= res!695092 (= (select (arr!31623 lt!459748) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126183 (= (arrayContainsKey!0 lt!459748 key!909 #b00000000000000000000000000000000) e!591033)))

(declare-fun b!1043149 () Bool)

(declare-fun e!591034 () Bool)

(assert (=> b!1043149 (= e!591033 e!591034)))

(declare-fun res!695093 () Bool)

(assert (=> b!1043149 (=> (not res!695093) (not e!591034))))

(assert (=> b!1043149 (= res!695093 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32159 lt!459748)))))

(declare-fun b!1043150 () Bool)

(assert (=> b!1043150 (= e!591034 (arrayContainsKey!0 lt!459748 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126183 (not res!695092)) b!1043149))

(assert (= (and b!1043149 res!695093) b!1043150))

(declare-fun m!962515 () Bool)

(assert (=> d!126183 m!962515))

(declare-fun m!962517 () Bool)

(assert (=> b!1043150 m!962517))

(assert (=> b!1043069 d!126183))

(declare-fun b!1043159 () Bool)

(declare-fun res!695104 () Bool)

(declare-fun e!591040 () Bool)

(assert (=> b!1043159 (=> (not res!695104) (not e!591040))))

(assert (=> b!1043159 (= res!695104 (validKeyInArray!0 (select (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745))))))

(declare-fun b!1043160 () Bool)

(declare-fun res!695105 () Bool)

(assert (=> b!1043160 (=> (not res!695105) (not e!591040))))

(assert (=> b!1043160 (= res!695105 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1043162 () Bool)

(declare-fun e!591039 () Bool)

(assert (=> b!1043162 (= e!591039 (= (arrayCountValidKeys!0 (array!65747 (store (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32159 (_keys!11629 thiss!1427))) #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1043161 () Bool)

(assert (=> b!1043161 (= e!591040 (bvslt (size!32159 (_keys!11629 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!126185 () Bool)

(assert (=> d!126185 e!591039))

(declare-fun res!695102 () Bool)

(assert (=> d!126185 (=> (not res!695102) (not e!591039))))

(assert (=> d!126185 (= res!695102 (and (bvsge (index!41675 lt!459745) #b00000000000000000000000000000000) (bvslt (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427)))))))

(declare-fun lt!459781 () Unit!34062)

(declare-fun choose!82 (array!65746 (_ BitVec 32) (_ BitVec 64)) Unit!34062)

(assert (=> d!126185 (= lt!459781 (choose!82 (_keys!11629 thiss!1427) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126185 e!591040))

(declare-fun res!695103 () Bool)

(assert (=> d!126185 (=> (not res!695103) (not e!591040))))

(assert (=> d!126185 (= res!695103 (and (bvsge (index!41675 lt!459745) #b00000000000000000000000000000000) (bvslt (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427)))))))

(assert (=> d!126185 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459781)))

(assert (= (and d!126185 res!695103) b!1043159))

(assert (= (and b!1043159 res!695104) b!1043160))

(assert (= (and b!1043160 res!695105) b!1043161))

(assert (= (and d!126185 res!695102) b!1043162))

(assert (=> b!1043159 m!962447))

(assert (=> b!1043159 m!962447))

(declare-fun m!962519 () Bool)

(assert (=> b!1043159 m!962519))

(declare-fun m!962521 () Bool)

(assert (=> b!1043160 m!962521))

(assert (=> b!1043162 m!962443))

(declare-fun m!962523 () Bool)

(assert (=> b!1043162 m!962523))

(assert (=> b!1043162 m!962431))

(declare-fun m!962525 () Bool)

(assert (=> d!126185 m!962525))

(assert (=> b!1043069 d!126185))

(declare-fun d!126187 () Bool)

(declare-fun e!591043 () Bool)

(assert (=> d!126187 e!591043))

(declare-fun res!695108 () Bool)

(assert (=> d!126187 (=> (not res!695108) (not e!591043))))

(assert (=> d!126187 (= res!695108 (and (bvsge (index!41675 lt!459745) #b00000000000000000000000000000000) (bvslt (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427)))))))

(declare-fun lt!459784 () Unit!34062)

(declare-fun choose!25 (array!65746 (_ BitVec 32) (_ BitVec 32)) Unit!34062)

(assert (=> d!126187 (= lt!459784 (choose!25 (_keys!11629 thiss!1427) (index!41675 lt!459745) (mask!30452 thiss!1427)))))

(assert (=> d!126187 (validMask!0 (mask!30452 thiss!1427))))

(assert (=> d!126187 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11629 thiss!1427) (index!41675 lt!459745) (mask!30452 thiss!1427)) lt!459784)))

(declare-fun b!1043165 () Bool)

(assert (=> b!1043165 (= e!591043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65747 (store (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32159 (_keys!11629 thiss!1427))) (mask!30452 thiss!1427)))))

(assert (= (and d!126187 res!695108) b!1043165))

(declare-fun m!962527 () Bool)

(assert (=> d!126187 m!962527))

(assert (=> d!126187 m!962445))

(assert (=> b!1043165 m!962443))

(declare-fun m!962529 () Bool)

(assert (=> b!1043165 m!962529))

(assert (=> b!1043069 d!126187))

(declare-fun b!1043166 () Bool)

(declare-fun e!591044 () Bool)

(assert (=> b!1043166 (= e!591044 (contains!6084 Nil!22107 (select (arr!31623 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun b!1043167 () Bool)

(declare-fun e!591046 () Bool)

(declare-fun call!44218 () Bool)

(assert (=> b!1043167 (= e!591046 call!44218)))

(declare-fun bm!44215 () Bool)

(declare-fun c!105862 () Bool)

(assert (=> bm!44215 (= call!44218 (arrayNoDuplicates!0 lt!459748 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105862 (Cons!22106 (select (arr!31623 lt!459748) #b00000000000000000000000000000000) Nil!22107) Nil!22107)))))

(declare-fun b!1043168 () Bool)

(assert (=> b!1043168 (= e!591046 call!44218)))

(declare-fun b!1043169 () Bool)

(declare-fun e!591045 () Bool)

(assert (=> b!1043169 (= e!591045 e!591046)))

(assert (=> b!1043169 (= c!105862 (validKeyInArray!0 (select (arr!31623 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun b!1043170 () Bool)

(declare-fun e!591047 () Bool)

(assert (=> b!1043170 (= e!591047 e!591045)))

(declare-fun res!695109 () Bool)

(assert (=> b!1043170 (=> (not res!695109) (not e!591045))))

(assert (=> b!1043170 (= res!695109 (not e!591044))))

(declare-fun res!695111 () Bool)

(assert (=> b!1043170 (=> (not res!695111) (not e!591044))))

(assert (=> b!1043170 (= res!695111 (validKeyInArray!0 (select (arr!31623 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun d!126189 () Bool)

(declare-fun res!695110 () Bool)

(assert (=> d!126189 (=> res!695110 e!591047)))

(assert (=> d!126189 (= res!695110 (bvsge #b00000000000000000000000000000000 (size!32159 lt!459748)))))

(assert (=> d!126189 (= (arrayNoDuplicates!0 lt!459748 #b00000000000000000000000000000000 Nil!22107) e!591047)))

(assert (= (and d!126189 (not res!695110)) b!1043170))

(assert (= (and b!1043170 res!695111) b!1043166))

(assert (= (and b!1043170 res!695109) b!1043169))

(assert (= (and b!1043169 c!105862) b!1043168))

(assert (= (and b!1043169 (not c!105862)) b!1043167))

(assert (= (or b!1043168 b!1043167) bm!44215))

(assert (=> b!1043166 m!962515))

(assert (=> b!1043166 m!962515))

(declare-fun m!962531 () Bool)

(assert (=> b!1043166 m!962531))

(assert (=> bm!44215 m!962515))

(declare-fun m!962533 () Bool)

(assert (=> bm!44215 m!962533))

(assert (=> b!1043169 m!962515))

(assert (=> b!1043169 m!962515))

(declare-fun m!962535 () Bool)

(assert (=> b!1043169 m!962535))

(assert (=> b!1043170 m!962515))

(assert (=> b!1043170 m!962515))

(assert (=> b!1043170 m!962535))

(assert (=> b!1043069 d!126189))

(declare-fun bm!44216 () Bool)

(declare-fun call!44219 () Bool)

(assert (=> bm!44216 (= call!44219 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459748 (mask!30452 thiss!1427)))))

(declare-fun b!1043171 () Bool)

(declare-fun e!591049 () Bool)

(assert (=> b!1043171 (= e!591049 call!44219)))

(declare-fun d!126191 () Bool)

(declare-fun res!695112 () Bool)

(declare-fun e!591048 () Bool)

(assert (=> d!126191 (=> res!695112 e!591048)))

(assert (=> d!126191 (= res!695112 (bvsge #b00000000000000000000000000000000 (size!32159 lt!459748)))))

(assert (=> d!126191 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459748 (mask!30452 thiss!1427)) e!591048)))

(declare-fun b!1043172 () Bool)

(declare-fun e!591050 () Bool)

(assert (=> b!1043172 (= e!591049 e!591050)))

(declare-fun lt!459785 () (_ BitVec 64))

(assert (=> b!1043172 (= lt!459785 (select (arr!31623 lt!459748) #b00000000000000000000000000000000))))

(declare-fun lt!459787 () Unit!34062)

(assert (=> b!1043172 (= lt!459787 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459748 lt!459785 #b00000000000000000000000000000000))))

(assert (=> b!1043172 (arrayContainsKey!0 lt!459748 lt!459785 #b00000000000000000000000000000000)))

(declare-fun lt!459786 () Unit!34062)

(assert (=> b!1043172 (= lt!459786 lt!459787)))

(declare-fun res!695113 () Bool)

(assert (=> b!1043172 (= res!695113 (= (seekEntryOrOpen!0 (select (arr!31623 lt!459748) #b00000000000000000000000000000000) lt!459748 (mask!30452 thiss!1427)) (Found!9826 #b00000000000000000000000000000000)))))

(assert (=> b!1043172 (=> (not res!695113) (not e!591050))))

(declare-fun b!1043173 () Bool)

(assert (=> b!1043173 (= e!591048 e!591049)))

(declare-fun c!105863 () Bool)

(assert (=> b!1043173 (= c!105863 (validKeyInArray!0 (select (arr!31623 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun b!1043174 () Bool)

(assert (=> b!1043174 (= e!591050 call!44219)))

(assert (= (and d!126191 (not res!695112)) b!1043173))

(assert (= (and b!1043173 c!105863) b!1043172))

(assert (= (and b!1043173 (not c!105863)) b!1043171))

(assert (= (and b!1043172 res!695113) b!1043174))

(assert (= (or b!1043174 b!1043171) bm!44216))

(declare-fun m!962537 () Bool)

(assert (=> bm!44216 m!962537))

(assert (=> b!1043172 m!962515))

(declare-fun m!962539 () Bool)

(assert (=> b!1043172 m!962539))

(declare-fun m!962541 () Bool)

(assert (=> b!1043172 m!962541))

(assert (=> b!1043172 m!962515))

(declare-fun m!962543 () Bool)

(assert (=> b!1043172 m!962543))

(assert (=> b!1043173 m!962515))

(assert (=> b!1043173 m!962515))

(assert (=> b!1043173 m!962535))

(assert (=> b!1043069 d!126191))

(declare-fun d!126193 () Bool)

(declare-fun e!591053 () Bool)

(assert (=> d!126193 e!591053))

(declare-fun res!695116 () Bool)

(assert (=> d!126193 (=> (not res!695116) (not e!591053))))

(assert (=> d!126193 (= res!695116 (and (bvsge (index!41675 lt!459745) #b00000000000000000000000000000000) (bvslt (index!41675 lt!459745) (size!32159 (_keys!11629 thiss!1427)))))))

(declare-fun lt!459790 () Unit!34062)

(declare-fun choose!53 (array!65746 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22110) Unit!34062)

(assert (=> d!126193 (= lt!459790 (choose!53 (_keys!11629 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41675 lt!459745) #b00000000000000000000000000000000 Nil!22107))))

(assert (=> d!126193 (bvslt (size!32159 (_keys!11629 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126193 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11629 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41675 lt!459745) #b00000000000000000000000000000000 Nil!22107) lt!459790)))

(declare-fun b!1043177 () Bool)

(assert (=> b!1043177 (= e!591053 (arrayNoDuplicates!0 (array!65747 (store (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32159 (_keys!11629 thiss!1427))) #b00000000000000000000000000000000 Nil!22107))))

(assert (= (and d!126193 res!695116) b!1043177))

(declare-fun m!962545 () Bool)

(assert (=> d!126193 m!962545))

(assert (=> b!1043177 m!962443))

(declare-fun m!962547 () Bool)

(assert (=> b!1043177 m!962547))

(assert (=> b!1043069 d!126193))

(declare-fun d!126195 () Bool)

(assert (=> d!126195 (= (validMask!0 (mask!30452 thiss!1427)) (and (or (= (mask!30452 thiss!1427) #b00000000000000000000000000000111) (= (mask!30452 thiss!1427) #b00000000000000000000000000001111) (= (mask!30452 thiss!1427) #b00000000000000000000000000011111) (= (mask!30452 thiss!1427) #b00000000000000000000000000111111) (= (mask!30452 thiss!1427) #b00000000000000000000000001111111) (= (mask!30452 thiss!1427) #b00000000000000000000000011111111) (= (mask!30452 thiss!1427) #b00000000000000000000000111111111) (= (mask!30452 thiss!1427) #b00000000000000000000001111111111) (= (mask!30452 thiss!1427) #b00000000000000000000011111111111) (= (mask!30452 thiss!1427) #b00000000000000000000111111111111) (= (mask!30452 thiss!1427) #b00000000000000000001111111111111) (= (mask!30452 thiss!1427) #b00000000000000000011111111111111) (= (mask!30452 thiss!1427) #b00000000000000000111111111111111) (= (mask!30452 thiss!1427) #b00000000000000001111111111111111) (= (mask!30452 thiss!1427) #b00000000000000011111111111111111) (= (mask!30452 thiss!1427) #b00000000000000111111111111111111) (= (mask!30452 thiss!1427) #b00000000000001111111111111111111) (= (mask!30452 thiss!1427) #b00000000000011111111111111111111) (= (mask!30452 thiss!1427) #b00000000000111111111111111111111) (= (mask!30452 thiss!1427) #b00000000001111111111111111111111) (= (mask!30452 thiss!1427) #b00000000011111111111111111111111) (= (mask!30452 thiss!1427) #b00000000111111111111111111111111) (= (mask!30452 thiss!1427) #b00000001111111111111111111111111) (= (mask!30452 thiss!1427) #b00000011111111111111111111111111) (= (mask!30452 thiss!1427) #b00000111111111111111111111111111) (= (mask!30452 thiss!1427) #b00001111111111111111111111111111) (= (mask!30452 thiss!1427) #b00011111111111111111111111111111) (= (mask!30452 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30452 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1043069 d!126195))

(declare-fun b!1043186 () Bool)

(declare-fun e!591058 () (_ BitVec 32))

(declare-fun call!44222 () (_ BitVec 32))

(assert (=> b!1043186 (= e!591058 (bvadd #b00000000000000000000000000000001 call!44222))))

(declare-fun d!126197 () Bool)

(declare-fun lt!459793 () (_ BitVec 32))

(assert (=> d!126197 (and (bvsge lt!459793 #b00000000000000000000000000000000) (bvsle lt!459793 (bvsub (size!32159 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun e!591059 () (_ BitVec 32))

(assert (=> d!126197 (= lt!459793 e!591059)))

(declare-fun c!105869 () Bool)

(assert (=> d!126197 (= c!105869 (bvsge #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))))))

(assert (=> d!126197 (and (bvsle #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32159 (_keys!11629 thiss!1427)) (size!32159 lt!459748)))))

(assert (=> d!126197 (= (arrayCountValidKeys!0 lt!459748 #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) lt!459793)))

(declare-fun bm!44219 () Bool)

(assert (=> bm!44219 (= call!44222 (arrayCountValidKeys!0 lt!459748 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32159 (_keys!11629 thiss!1427))))))

(declare-fun b!1043187 () Bool)

(assert (=> b!1043187 (= e!591059 e!591058)))

(declare-fun c!105868 () Bool)

(assert (=> b!1043187 (= c!105868 (validKeyInArray!0 (select (arr!31623 lt!459748) #b00000000000000000000000000000000)))))

(declare-fun b!1043188 () Bool)

(assert (=> b!1043188 (= e!591058 call!44222)))

(declare-fun b!1043189 () Bool)

(assert (=> b!1043189 (= e!591059 #b00000000000000000000000000000000)))

(assert (= (and d!126197 c!105869) b!1043189))

(assert (= (and d!126197 (not c!105869)) b!1043187))

(assert (= (and b!1043187 c!105868) b!1043186))

(assert (= (and b!1043187 (not c!105868)) b!1043188))

(assert (= (or b!1043186 b!1043188) bm!44219))

(declare-fun m!962549 () Bool)

(assert (=> bm!44219 m!962549))

(assert (=> b!1043187 m!962515))

(assert (=> b!1043187 m!962515))

(assert (=> b!1043187 m!962535))

(assert (=> b!1043069 d!126197))

(declare-fun b!1043190 () Bool)

(declare-fun e!591060 () (_ BitVec 32))

(declare-fun call!44223 () (_ BitVec 32))

(assert (=> b!1043190 (= e!591060 (bvadd #b00000000000000000000000000000001 call!44223))))

(declare-fun d!126199 () Bool)

(declare-fun lt!459794 () (_ BitVec 32))

(assert (=> d!126199 (and (bvsge lt!459794 #b00000000000000000000000000000000) (bvsle lt!459794 (bvsub (size!32159 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!591061 () (_ BitVec 32))

(assert (=> d!126199 (= lt!459794 e!591061)))

(declare-fun c!105871 () Bool)

(assert (=> d!126199 (= c!105871 (bvsge #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))))))

(assert (=> d!126199 (and (bvsle #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32159 (_keys!11629 thiss!1427)) (size!32159 (_keys!11629 thiss!1427))))))

(assert (=> d!126199 (= (arrayCountValidKeys!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) lt!459794)))

(declare-fun bm!44220 () Bool)

(assert (=> bm!44220 (= call!44223 (arrayCountValidKeys!0 (_keys!11629 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32159 (_keys!11629 thiss!1427))))))

(declare-fun b!1043191 () Bool)

(assert (=> b!1043191 (= e!591061 e!591060)))

(declare-fun c!105870 () Bool)

(assert (=> b!1043191 (= c!105870 (validKeyInArray!0 (select (arr!31623 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043192 () Bool)

(assert (=> b!1043192 (= e!591060 call!44223)))

(declare-fun b!1043193 () Bool)

(assert (=> b!1043193 (= e!591061 #b00000000000000000000000000000000)))

(assert (= (and d!126199 c!105871) b!1043193))

(assert (= (and d!126199 (not c!105871)) b!1043191))

(assert (= (and b!1043191 c!105870) b!1043190))

(assert (= (and b!1043191 (not c!105870)) b!1043192))

(assert (= (or b!1043190 b!1043192) bm!44220))

(declare-fun m!962551 () Bool)

(assert (=> bm!44220 m!962551))

(assert (=> b!1043191 m!962497))

(assert (=> b!1043191 m!962497))

(assert (=> b!1043191 m!962505))

(assert (=> b!1043069 d!126199))

(declare-fun b!1043206 () Bool)

(declare-fun e!591070 () SeekEntryResult!9826)

(declare-fun lt!459804 () SeekEntryResult!9826)

(assert (=> b!1043206 (= e!591070 (MissingZero!9826 (index!41676 lt!459804)))))

(declare-fun b!1043207 () Bool)

(declare-fun lt!459803 () SeekEntryResult!9826)

(assert (=> b!1043207 (= e!591070 (ite ((_ is MissingVacant!9826) lt!459803) (MissingZero!9826 (index!41677 lt!459803)) lt!459803))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65746 (_ BitVec 32)) SeekEntryResult!9826)

(assert (=> b!1043207 (= lt!459803 (seekKeyOrZeroReturnVacant!0 (x!93121 lt!459804) (index!41676 lt!459804) (index!41676 lt!459804) key!909 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)))))

(declare-fun b!1043208 () Bool)

(declare-fun e!591068 () SeekEntryResult!9826)

(declare-fun e!591069 () SeekEntryResult!9826)

(assert (=> b!1043208 (= e!591068 e!591069)))

(declare-fun lt!459805 () (_ BitVec 64))

(assert (=> b!1043208 (= lt!459805 (select (arr!31623 (_keys!11629 thiss!1427)) (index!41676 lt!459804)))))

(declare-fun c!105878 () Bool)

(assert (=> b!1043208 (= c!105878 (= lt!459805 key!909))))

(declare-fun b!1043209 () Bool)

(assert (=> b!1043209 (= e!591068 Undefined!9826)))

(declare-fun b!1043210 () Bool)

(assert (=> b!1043210 (= e!591069 (Found!9826 (index!41676 lt!459804)))))

(declare-fun d!126201 () Bool)

(declare-fun lt!459806 () SeekEntryResult!9826)

(assert (=> d!126201 (and (or ((_ is MissingVacant!9826) lt!459806) (not ((_ is Found!9826) lt!459806)) (and (bvsge (index!41675 lt!459806) #b00000000000000000000000000000000) (bvslt (index!41675 lt!459806) (size!32159 (_keys!11629 thiss!1427))))) (not ((_ is MissingVacant!9826) lt!459806)) (or (not ((_ is Found!9826) lt!459806)) (= (select (arr!31623 (_keys!11629 thiss!1427)) (index!41675 lt!459806)) key!909)))))

(assert (=> d!126201 (= lt!459806 e!591068)))

(declare-fun c!105879 () Bool)

(assert (=> d!126201 (= c!105879 (and ((_ is Intermediate!9826) lt!459804) (undefined!10638 lt!459804)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65746 (_ BitVec 32)) SeekEntryResult!9826)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126201 (= lt!459804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30452 thiss!1427)) key!909 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)))))

(assert (=> d!126201 (validMask!0 (mask!30452 thiss!1427))))

(assert (=> d!126201 (= (seekEntry!0 key!909 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)) lt!459806)))

(declare-fun b!1043211 () Bool)

(declare-fun c!105880 () Bool)

(assert (=> b!1043211 (= c!105880 (= lt!459805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1043211 (= e!591069 e!591070)))

(assert (= (and d!126201 c!105879) b!1043209))

(assert (= (and d!126201 (not c!105879)) b!1043208))

(assert (= (and b!1043208 c!105878) b!1043210))

(assert (= (and b!1043208 (not c!105878)) b!1043211))

(assert (= (and b!1043211 c!105880) b!1043206))

(assert (= (and b!1043211 (not c!105880)) b!1043207))

(declare-fun m!962553 () Bool)

(assert (=> b!1043207 m!962553))

(declare-fun m!962555 () Bool)

(assert (=> b!1043208 m!962555))

(declare-fun m!962557 () Bool)

(assert (=> d!126201 m!962557))

(declare-fun m!962559 () Bool)

(assert (=> d!126201 m!962559))

(assert (=> d!126201 m!962559))

(declare-fun m!962561 () Bool)

(assert (=> d!126201 m!962561))

(assert (=> d!126201 m!962445))

(assert (=> b!1043066 d!126201))

(declare-fun d!126203 () Bool)

(assert (=> d!126203 (= (array_inv!24279 (_keys!11629 thiss!1427)) (bvsge (size!32159 (_keys!11629 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043065 d!126203))

(declare-fun d!126205 () Bool)

(assert (=> d!126205 (= (array_inv!24280 (_values!6399 thiss!1427)) (bvsge (size!32160 (_values!6399 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043065 d!126205))

(declare-fun d!126207 () Bool)

(declare-fun res!695123 () Bool)

(declare-fun e!591073 () Bool)

(assert (=> d!126207 (=> (not res!695123) (not e!591073))))

(declare-fun simpleValid!444 (LongMapFixedSize!5988) Bool)

(assert (=> d!126207 (= res!695123 (simpleValid!444 thiss!1427))))

(assert (=> d!126207 (= (valid!2201 thiss!1427) e!591073)))

(declare-fun b!1043218 () Bool)

(declare-fun res!695124 () Bool)

(assert (=> b!1043218 (=> (not res!695124) (not e!591073))))

(assert (=> b!1043218 (= res!695124 (= (arrayCountValidKeys!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 (size!32159 (_keys!11629 thiss!1427))) (_size!3049 thiss!1427)))))

(declare-fun b!1043219 () Bool)

(declare-fun res!695125 () Bool)

(assert (=> b!1043219 (=> (not res!695125) (not e!591073))))

(assert (=> b!1043219 (= res!695125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11629 thiss!1427) (mask!30452 thiss!1427)))))

(declare-fun b!1043220 () Bool)

(assert (=> b!1043220 (= e!591073 (arrayNoDuplicates!0 (_keys!11629 thiss!1427) #b00000000000000000000000000000000 Nil!22107))))

(assert (= (and d!126207 res!695123) b!1043218))

(assert (= (and b!1043218 res!695124) b!1043219))

(assert (= (and b!1043219 res!695125) b!1043220))

(declare-fun m!962563 () Bool)

(assert (=> d!126207 m!962563))

(assert (=> b!1043218 m!962431))

(assert (=> b!1043219 m!962421))

(assert (=> b!1043220 m!962453))

(assert (=> start!91652 d!126207))

(declare-fun b!1043227 () Bool)

(declare-fun e!591079 () Bool)

(assert (=> b!1043227 (= e!591079 tp_is_empty!24801)))

(declare-fun b!1043228 () Bool)

(declare-fun e!591078 () Bool)

(assert (=> b!1043228 (= e!591078 tp_is_empty!24801)))

(declare-fun mapNonEmpty!38825 () Bool)

(declare-fun mapRes!38825 () Bool)

(declare-fun tp!74488 () Bool)

(assert (=> mapNonEmpty!38825 (= mapRes!38825 (and tp!74488 e!591079))))

(declare-fun mapKey!38825 () (_ BitVec 32))

(declare-fun mapRest!38825 () (Array (_ BitVec 32) ValueCell!11697))

(declare-fun mapValue!38825 () ValueCell!11697)

(assert (=> mapNonEmpty!38825 (= mapRest!38819 (store mapRest!38825 mapKey!38825 mapValue!38825))))

(declare-fun condMapEmpty!38825 () Bool)

(declare-fun mapDefault!38825 () ValueCell!11697)

(assert (=> mapNonEmpty!38819 (= condMapEmpty!38825 (= mapRest!38819 ((as const (Array (_ BitVec 32) ValueCell!11697)) mapDefault!38825)))))

(assert (=> mapNonEmpty!38819 (= tp!74478 (and e!591078 mapRes!38825))))

(declare-fun mapIsEmpty!38825 () Bool)

(assert (=> mapIsEmpty!38825 mapRes!38825))

(assert (= (and mapNonEmpty!38819 condMapEmpty!38825) mapIsEmpty!38825))

(assert (= (and mapNonEmpty!38819 (not condMapEmpty!38825)) mapNonEmpty!38825))

(assert (= (and mapNonEmpty!38825 ((_ is ValueCellFull!11697) mapValue!38825)) b!1043227))

(assert (= (and mapNonEmpty!38819 ((_ is ValueCellFull!11697) mapDefault!38825)) b!1043228))

(declare-fun m!962565 () Bool)

(assert (=> mapNonEmpty!38825 m!962565))

(check-sat (not b!1043219) (not b!1043173) (not d!126187) (not b!1043207) (not b!1043172) (not bm!44216) (not b!1043159) (not b!1043170) (not bm!44215) (not b!1043124) (not b!1043144) (not b!1043169) (not b!1043125) (not b!1043191) (not b!1043177) (not d!126193) b_and!33631 (not b!1043165) (not b!1043166) (not b!1043220) (not d!126185) (not b!1043140) (not d!126201) (not bm!44214) (not b!1043218) (not d!126181) (not b!1043141) (not b!1043187) tp_is_empty!24801 (not b!1043160) (not b_next!21081) (not b!1043150) (not bm!44219) (not b!1043162) (not mapNonEmpty!38825) (not b!1043137) (not bm!44211) (not bm!44220) (not d!126207))
(check-sat b_and!33631 (not b_next!21081))
