; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76692 () Bool)

(assert start!76692)

(declare-fun b!897443 () Bool)

(declare-fun b_free!15987 () Bool)

(declare-fun b_next!15987 () Bool)

(assert (=> b!897443 (= b_free!15987 (not b_next!15987))))

(declare-fun tp!56016 () Bool)

(declare-fun b_and!26297 () Bool)

(assert (=> b!897443 (= tp!56016 b_and!26297)))

(declare-fun mapNonEmpty!29112 () Bool)

(declare-fun mapRes!29112 () Bool)

(declare-fun tp!56015 () Bool)

(declare-fun e!501890 () Bool)

(assert (=> mapNonEmpty!29112 (= mapRes!29112 (and tp!56015 e!501890))))

(declare-datatypes ((V!29385 0))(
  ( (V!29386 (val!9208 Int)) )
))
(declare-datatypes ((ValueCell!8676 0))(
  ( (ValueCellFull!8676 (v!11695 V!29385)) (EmptyCell!8676) )
))
(declare-fun mapValue!29112 () ValueCell!8676)

(declare-fun mapRest!29112 () (Array (_ BitVec 32) ValueCell!8676))

(declare-datatypes ((array!52644 0))(
  ( (array!52645 (arr!25300 (Array (_ BitVec 32) (_ BitVec 64))) (size!25756 (_ BitVec 32))) )
))
(declare-datatypes ((array!52646 0))(
  ( (array!52647 (arr!25301 (Array (_ BitVec 32) ValueCell!8676)) (size!25757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4368 0))(
  ( (LongMapFixedSize!4369 (defaultEntry!5396 Int) (mask!26085 (_ BitVec 32)) (extraKeys!5107 (_ BitVec 32)) (zeroValue!5211 V!29385) (minValue!5211 V!29385) (_size!2239 (_ BitVec 32)) (_keys!10153 array!52644) (_values!5398 array!52646) (_vacant!2239 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4368)

(declare-fun mapKey!29112 () (_ BitVec 32))

(assert (=> mapNonEmpty!29112 (= (arr!25301 (_values!5398 thiss!1181)) (store mapRest!29112 mapKey!29112 mapValue!29112))))

(declare-fun b!897438 () Bool)

(declare-fun e!501897 () Bool)

(declare-fun tp_is_empty!18315 () Bool)

(assert (=> b!897438 (= e!501897 tp_is_empty!18315)))

(declare-fun res!606701 () Bool)

(declare-fun e!501896 () Bool)

(assert (=> start!76692 (=> (not res!606701) (not e!501896))))

(declare-fun valid!1670 (LongMapFixedSize!4368) Bool)

(assert (=> start!76692 (= res!606701 (valid!1670 thiss!1181))))

(assert (=> start!76692 e!501896))

(declare-fun e!501892 () Bool)

(assert (=> start!76692 e!501892))

(assert (=> start!76692 true))

(declare-fun b!897439 () Bool)

(declare-fun e!501893 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52644 (_ BitVec 32)) Bool)

(assert (=> b!897439 (= e!501893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun b!897440 () Bool)

(declare-fun e!501894 () Bool)

(assert (=> b!897440 (= e!501896 (not e!501894))))

(declare-fun res!606706 () Bool)

(assert (=> b!897440 (=> res!606706 e!501894)))

(declare-datatypes ((SeekEntryResult!8900 0))(
  ( (MissingZero!8900 (index!37970 (_ BitVec 32))) (Found!8900 (index!37971 (_ BitVec 32))) (Intermediate!8900 (undefined!9712 Bool) (index!37972 (_ BitVec 32)) (x!76458 (_ BitVec 32))) (Undefined!8900) (MissingVacant!8900 (index!37973 (_ BitVec 32))) )
))
(declare-fun lt!405178 () SeekEntryResult!8900)

(get-info :version)

(assert (=> b!897440 (= res!606706 (not ((_ is Found!8900) lt!405178)))))

(declare-fun e!501898 () Bool)

(assert (=> b!897440 e!501898))

(declare-fun res!606704 () Bool)

(assert (=> b!897440 (=> res!606704 e!501898)))

(assert (=> b!897440 (= res!606704 (not ((_ is Found!8900) lt!405178)))))

(declare-datatypes ((Unit!30481 0))(
  ( (Unit!30482) )
))
(declare-fun lt!405179 () Unit!30481)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!87 (array!52644 array!52646 (_ BitVec 32) (_ BitVec 32) V!29385 V!29385 (_ BitVec 64)) Unit!30481)

(assert (=> b!897440 (= lt!405179 (lemmaSeekEntryGivesInRangeIndex!87 (_keys!10153 thiss!1181) (_values!5398 thiss!1181) (mask!26085 thiss!1181) (extraKeys!5107 thiss!1181) (zeroValue!5211 thiss!1181) (minValue!5211 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52644 (_ BitVec 32)) SeekEntryResult!8900)

(assert (=> b!897440 (= lt!405178 (seekEntry!0 key!785 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun b!897441 () Bool)

(declare-fun e!501891 () Bool)

(assert (=> b!897441 (= e!501891 (and e!501897 mapRes!29112))))

(declare-fun condMapEmpty!29112 () Bool)

(declare-fun mapDefault!29112 () ValueCell!8676)

(assert (=> b!897441 (= condMapEmpty!29112 (= (arr!25301 (_values!5398 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8676)) mapDefault!29112)))))

(declare-fun b!897442 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897442 (= e!501898 (inRange!0 (index!37971 lt!405178) (mask!26085 thiss!1181)))))

(declare-fun array_inv!19834 (array!52644) Bool)

(declare-fun array_inv!19835 (array!52646) Bool)

(assert (=> b!897443 (= e!501892 (and tp!56016 tp_is_empty!18315 (array_inv!19834 (_keys!10153 thiss!1181)) (array_inv!19835 (_values!5398 thiss!1181)) e!501891))))

(declare-fun b!897444 () Bool)

(declare-fun res!606705 () Bool)

(assert (=> b!897444 (=> (not res!606705) (not e!501896))))

(assert (=> b!897444 (= res!606705 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897445 () Bool)

(declare-fun res!606702 () Bool)

(assert (=> b!897445 (=> res!606702 e!501893)))

(assert (=> b!897445 (= res!606702 (or (not (= (size!25757 (_values!5398 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26085 thiss!1181)))) (not (= (size!25756 (_keys!10153 thiss!1181)) (size!25757 (_values!5398 thiss!1181)))) (bvslt (mask!26085 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5107 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5107 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897446 () Bool)

(assert (=> b!897446 (= e!501890 tp_is_empty!18315)))

(declare-fun mapIsEmpty!29112 () Bool)

(assert (=> mapIsEmpty!29112 mapRes!29112))

(declare-fun b!897447 () Bool)

(assert (=> b!897447 (= e!501894 e!501893)))

(declare-fun res!606703 () Bool)

(assert (=> b!897447 (=> res!606703 e!501893)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897447 (= res!606703 (not (validMask!0 (mask!26085 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897447 (arrayContainsKey!0 (_keys!10153 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405180 () Unit!30481)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52644 (_ BitVec 64) (_ BitVec 32)) Unit!30481)

(assert (=> b!897447 (= lt!405180 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10153 thiss!1181) key!785 (index!37971 lt!405178)))))

(assert (= (and start!76692 res!606701) b!897444))

(assert (= (and b!897444 res!606705) b!897440))

(assert (= (and b!897440 (not res!606704)) b!897442))

(assert (= (and b!897440 (not res!606706)) b!897447))

(assert (= (and b!897447 (not res!606703)) b!897445))

(assert (= (and b!897445 (not res!606702)) b!897439))

(assert (= (and b!897441 condMapEmpty!29112) mapIsEmpty!29112))

(assert (= (and b!897441 (not condMapEmpty!29112)) mapNonEmpty!29112))

(assert (= (and mapNonEmpty!29112 ((_ is ValueCellFull!8676) mapValue!29112)) b!897446))

(assert (= (and b!897441 ((_ is ValueCellFull!8676) mapDefault!29112)) b!897438))

(assert (= b!897443 b!897441))

(assert (= start!76692 b!897443))

(declare-fun m!834275 () Bool)

(assert (=> b!897440 m!834275))

(declare-fun m!834277 () Bool)

(assert (=> b!897440 m!834277))

(declare-fun m!834279 () Bool)

(assert (=> b!897442 m!834279))

(declare-fun m!834281 () Bool)

(assert (=> b!897439 m!834281))

(declare-fun m!834283 () Bool)

(assert (=> mapNonEmpty!29112 m!834283))

(declare-fun m!834285 () Bool)

(assert (=> start!76692 m!834285))

(declare-fun m!834287 () Bool)

(assert (=> b!897443 m!834287))

(declare-fun m!834289 () Bool)

(assert (=> b!897443 m!834289))

(declare-fun m!834291 () Bool)

(assert (=> b!897447 m!834291))

(declare-fun m!834293 () Bool)

(assert (=> b!897447 m!834293))

(declare-fun m!834295 () Bool)

(assert (=> b!897447 m!834295))

(check-sat (not b!897439) (not b!897442) (not b!897443) (not b!897447) (not b!897440) (not b_next!15987) (not start!76692) (not mapNonEmpty!29112) tp_is_empty!18315 b_and!26297)
(check-sat b_and!26297 (not b_next!15987))
(get-model)

(declare-fun d!111039 () Bool)

(declare-fun e!501928 () Bool)

(assert (=> d!111039 e!501928))

(declare-fun res!606727 () Bool)

(assert (=> d!111039 (=> res!606727 e!501928)))

(declare-fun lt!405195 () SeekEntryResult!8900)

(assert (=> d!111039 (= res!606727 (not ((_ is Found!8900) lt!405195)))))

(assert (=> d!111039 (= lt!405195 (seekEntry!0 key!785 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun lt!405194 () Unit!30481)

(declare-fun choose!1492 (array!52644 array!52646 (_ BitVec 32) (_ BitVec 32) V!29385 V!29385 (_ BitVec 64)) Unit!30481)

(assert (=> d!111039 (= lt!405194 (choose!1492 (_keys!10153 thiss!1181) (_values!5398 thiss!1181) (mask!26085 thiss!1181) (extraKeys!5107 thiss!1181) (zeroValue!5211 thiss!1181) (minValue!5211 thiss!1181) key!785))))

(assert (=> d!111039 (validMask!0 (mask!26085 thiss!1181))))

(assert (=> d!111039 (= (lemmaSeekEntryGivesInRangeIndex!87 (_keys!10153 thiss!1181) (_values!5398 thiss!1181) (mask!26085 thiss!1181) (extraKeys!5107 thiss!1181) (zeroValue!5211 thiss!1181) (minValue!5211 thiss!1181) key!785) lt!405194)))

(declare-fun b!897480 () Bool)

(assert (=> b!897480 (= e!501928 (inRange!0 (index!37971 lt!405195) (mask!26085 thiss!1181)))))

(assert (= (and d!111039 (not res!606727)) b!897480))

(assert (=> d!111039 m!834277))

(declare-fun m!834319 () Bool)

(assert (=> d!111039 m!834319))

(assert (=> d!111039 m!834291))

(declare-fun m!834321 () Bool)

(assert (=> b!897480 m!834321))

(assert (=> b!897440 d!111039))

(declare-fun b!897493 () Bool)

(declare-fun e!501937 () SeekEntryResult!8900)

(declare-fun lt!405205 () SeekEntryResult!8900)

(assert (=> b!897493 (= e!501937 (ite ((_ is MissingVacant!8900) lt!405205) (MissingZero!8900 (index!37973 lt!405205)) lt!405205))))

(declare-fun lt!405204 () SeekEntryResult!8900)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52644 (_ BitVec 32)) SeekEntryResult!8900)

(assert (=> b!897493 (= lt!405205 (seekKeyOrZeroReturnVacant!0 (x!76458 lt!405204) (index!37972 lt!405204) (index!37972 lt!405204) key!785 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun b!897494 () Bool)

(declare-fun e!501935 () SeekEntryResult!8900)

(assert (=> b!897494 (= e!501935 Undefined!8900)))

(declare-fun b!897496 () Bool)

(declare-fun c!94781 () Bool)

(declare-fun lt!405206 () (_ BitVec 64))

(assert (=> b!897496 (= c!94781 (= lt!405206 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!501936 () SeekEntryResult!8900)

(assert (=> b!897496 (= e!501936 e!501937)))

(declare-fun b!897497 () Bool)

(assert (=> b!897497 (= e!501937 (MissingZero!8900 (index!37972 lt!405204)))))

(declare-fun b!897498 () Bool)

(assert (=> b!897498 (= e!501936 (Found!8900 (index!37972 lt!405204)))))

(declare-fun d!111041 () Bool)

(declare-fun lt!405207 () SeekEntryResult!8900)

(assert (=> d!111041 (and (or ((_ is MissingVacant!8900) lt!405207) (not ((_ is Found!8900) lt!405207)) (and (bvsge (index!37971 lt!405207) #b00000000000000000000000000000000) (bvslt (index!37971 lt!405207) (size!25756 (_keys!10153 thiss!1181))))) (not ((_ is MissingVacant!8900) lt!405207)) (or (not ((_ is Found!8900) lt!405207)) (= (select (arr!25300 (_keys!10153 thiss!1181)) (index!37971 lt!405207)) key!785)))))

(assert (=> d!111041 (= lt!405207 e!501935)))

(declare-fun c!94783 () Bool)

(assert (=> d!111041 (= c!94783 (and ((_ is Intermediate!8900) lt!405204) (undefined!9712 lt!405204)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52644 (_ BitVec 32)) SeekEntryResult!8900)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111041 (= lt!405204 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26085 thiss!1181)) key!785 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(assert (=> d!111041 (validMask!0 (mask!26085 thiss!1181))))

(assert (=> d!111041 (= (seekEntry!0 key!785 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)) lt!405207)))

(declare-fun b!897495 () Bool)

(assert (=> b!897495 (= e!501935 e!501936)))

(assert (=> b!897495 (= lt!405206 (select (arr!25300 (_keys!10153 thiss!1181)) (index!37972 lt!405204)))))

(declare-fun c!94782 () Bool)

(assert (=> b!897495 (= c!94782 (= lt!405206 key!785))))

(assert (= (and d!111041 c!94783) b!897494))

(assert (= (and d!111041 (not c!94783)) b!897495))

(assert (= (and b!897495 c!94782) b!897498))

(assert (= (and b!897495 (not c!94782)) b!897496))

(assert (= (and b!897496 c!94781) b!897497))

(assert (= (and b!897496 (not c!94781)) b!897493))

(declare-fun m!834323 () Bool)

(assert (=> b!897493 m!834323))

(declare-fun m!834325 () Bool)

(assert (=> d!111041 m!834325))

(declare-fun m!834327 () Bool)

(assert (=> d!111041 m!834327))

(assert (=> d!111041 m!834327))

(declare-fun m!834329 () Bool)

(assert (=> d!111041 m!834329))

(assert (=> d!111041 m!834291))

(declare-fun m!834331 () Bool)

(assert (=> b!897495 m!834331))

(assert (=> b!897440 d!111041))

(declare-fun d!111043 () Bool)

(declare-fun res!606733 () Bool)

(declare-fun e!501944 () Bool)

(assert (=> d!111043 (=> res!606733 e!501944)))

(assert (=> d!111043 (= res!606733 (bvsge #b00000000000000000000000000000000 (size!25756 (_keys!10153 thiss!1181))))))

(assert (=> d!111043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)) e!501944)))

(declare-fun b!897507 () Bool)

(declare-fun e!501946 () Bool)

(declare-fun call!39817 () Bool)

(assert (=> b!897507 (= e!501946 call!39817)))

(declare-fun b!897508 () Bool)

(declare-fun e!501945 () Bool)

(assert (=> b!897508 (= e!501945 call!39817)))

(declare-fun b!897509 () Bool)

(assert (=> b!897509 (= e!501944 e!501945)))

(declare-fun c!94786 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897509 (= c!94786 (validKeyInArray!0 (select (arr!25300 (_keys!10153 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39814 () Bool)

(assert (=> bm!39814 (= call!39817 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun b!897510 () Bool)

(assert (=> b!897510 (= e!501945 e!501946)))

(declare-fun lt!405216 () (_ BitVec 64))

(assert (=> b!897510 (= lt!405216 (select (arr!25300 (_keys!10153 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405214 () Unit!30481)

(assert (=> b!897510 (= lt!405214 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10153 thiss!1181) lt!405216 #b00000000000000000000000000000000))))

(assert (=> b!897510 (arrayContainsKey!0 (_keys!10153 thiss!1181) lt!405216 #b00000000000000000000000000000000)))

(declare-fun lt!405215 () Unit!30481)

(assert (=> b!897510 (= lt!405215 lt!405214)))

(declare-fun res!606732 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52644 (_ BitVec 32)) SeekEntryResult!8900)

(assert (=> b!897510 (= res!606732 (= (seekEntryOrOpen!0 (select (arr!25300 (_keys!10153 thiss!1181)) #b00000000000000000000000000000000) (_keys!10153 thiss!1181) (mask!26085 thiss!1181)) (Found!8900 #b00000000000000000000000000000000)))))

(assert (=> b!897510 (=> (not res!606732) (not e!501946))))

(assert (= (and d!111043 (not res!606733)) b!897509))

(assert (= (and b!897509 c!94786) b!897510))

(assert (= (and b!897509 (not c!94786)) b!897508))

(assert (= (and b!897510 res!606732) b!897507))

(assert (= (or b!897507 b!897508) bm!39814))

(declare-fun m!834333 () Bool)

(assert (=> b!897509 m!834333))

(assert (=> b!897509 m!834333))

(declare-fun m!834335 () Bool)

(assert (=> b!897509 m!834335))

(declare-fun m!834337 () Bool)

(assert (=> bm!39814 m!834337))

(assert (=> b!897510 m!834333))

(declare-fun m!834339 () Bool)

(assert (=> b!897510 m!834339))

(declare-fun m!834341 () Bool)

(assert (=> b!897510 m!834341))

(assert (=> b!897510 m!834333))

(declare-fun m!834343 () Bool)

(assert (=> b!897510 m!834343))

(assert (=> b!897439 d!111043))

(declare-fun d!111045 () Bool)

(declare-fun res!606740 () Bool)

(declare-fun e!501949 () Bool)

(assert (=> d!111045 (=> (not res!606740) (not e!501949))))

(declare-fun simpleValid!318 (LongMapFixedSize!4368) Bool)

(assert (=> d!111045 (= res!606740 (simpleValid!318 thiss!1181))))

(assert (=> d!111045 (= (valid!1670 thiss!1181) e!501949)))

(declare-fun b!897517 () Bool)

(declare-fun res!606741 () Bool)

(assert (=> b!897517 (=> (not res!606741) (not e!501949))))

(declare-fun arrayCountValidKeys!0 (array!52644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!897517 (= res!606741 (= (arrayCountValidKeys!0 (_keys!10153 thiss!1181) #b00000000000000000000000000000000 (size!25756 (_keys!10153 thiss!1181))) (_size!2239 thiss!1181)))))

(declare-fun b!897518 () Bool)

(declare-fun res!606742 () Bool)

(assert (=> b!897518 (=> (not res!606742) (not e!501949))))

(assert (=> b!897518 (= res!606742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10153 thiss!1181) (mask!26085 thiss!1181)))))

(declare-fun b!897519 () Bool)

(declare-datatypes ((List!17906 0))(
  ( (Nil!17903) (Cons!17902 (h!19044 (_ BitVec 64)) (t!25253 List!17906)) )
))
(declare-fun arrayNoDuplicates!0 (array!52644 (_ BitVec 32) List!17906) Bool)

(assert (=> b!897519 (= e!501949 (arrayNoDuplicates!0 (_keys!10153 thiss!1181) #b00000000000000000000000000000000 Nil!17903))))

(assert (= (and d!111045 res!606740) b!897517))

(assert (= (and b!897517 res!606741) b!897518))

(assert (= (and b!897518 res!606742) b!897519))

(declare-fun m!834345 () Bool)

(assert (=> d!111045 m!834345))

(declare-fun m!834347 () Bool)

(assert (=> b!897517 m!834347))

(assert (=> b!897518 m!834281))

(declare-fun m!834349 () Bool)

(assert (=> b!897519 m!834349))

(assert (=> start!76692 d!111045))

(declare-fun d!111047 () Bool)

(assert (=> d!111047 (= (array_inv!19834 (_keys!10153 thiss!1181)) (bvsge (size!25756 (_keys!10153 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897443 d!111047))

(declare-fun d!111049 () Bool)

(assert (=> d!111049 (= (array_inv!19835 (_values!5398 thiss!1181)) (bvsge (size!25757 (_values!5398 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!897443 d!111049))

(declare-fun d!111051 () Bool)

(assert (=> d!111051 (= (validMask!0 (mask!26085 thiss!1181)) (and (or (= (mask!26085 thiss!1181) #b00000000000000000000000000000111) (= (mask!26085 thiss!1181) #b00000000000000000000000000001111) (= (mask!26085 thiss!1181) #b00000000000000000000000000011111) (= (mask!26085 thiss!1181) #b00000000000000000000000000111111) (= (mask!26085 thiss!1181) #b00000000000000000000000001111111) (= (mask!26085 thiss!1181) #b00000000000000000000000011111111) (= (mask!26085 thiss!1181) #b00000000000000000000000111111111) (= (mask!26085 thiss!1181) #b00000000000000000000001111111111) (= (mask!26085 thiss!1181) #b00000000000000000000011111111111) (= (mask!26085 thiss!1181) #b00000000000000000000111111111111) (= (mask!26085 thiss!1181) #b00000000000000000001111111111111) (= (mask!26085 thiss!1181) #b00000000000000000011111111111111) (= (mask!26085 thiss!1181) #b00000000000000000111111111111111) (= (mask!26085 thiss!1181) #b00000000000000001111111111111111) (= (mask!26085 thiss!1181) #b00000000000000011111111111111111) (= (mask!26085 thiss!1181) #b00000000000000111111111111111111) (= (mask!26085 thiss!1181) #b00000000000001111111111111111111) (= (mask!26085 thiss!1181) #b00000000000011111111111111111111) (= (mask!26085 thiss!1181) #b00000000000111111111111111111111) (= (mask!26085 thiss!1181) #b00000000001111111111111111111111) (= (mask!26085 thiss!1181) #b00000000011111111111111111111111) (= (mask!26085 thiss!1181) #b00000000111111111111111111111111) (= (mask!26085 thiss!1181) #b00000001111111111111111111111111) (= (mask!26085 thiss!1181) #b00000011111111111111111111111111) (= (mask!26085 thiss!1181) #b00000111111111111111111111111111) (= (mask!26085 thiss!1181) #b00001111111111111111111111111111) (= (mask!26085 thiss!1181) #b00011111111111111111111111111111) (= (mask!26085 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26085 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!897447 d!111051))

(declare-fun d!111053 () Bool)

(declare-fun res!606747 () Bool)

(declare-fun e!501954 () Bool)

(assert (=> d!111053 (=> res!606747 e!501954)))

(assert (=> d!111053 (= res!606747 (= (select (arr!25300 (_keys!10153 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111053 (= (arrayContainsKey!0 (_keys!10153 thiss!1181) key!785 #b00000000000000000000000000000000) e!501954)))

(declare-fun b!897524 () Bool)

(declare-fun e!501955 () Bool)

(assert (=> b!897524 (= e!501954 e!501955)))

(declare-fun res!606748 () Bool)

(assert (=> b!897524 (=> (not res!606748) (not e!501955))))

(assert (=> b!897524 (= res!606748 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25756 (_keys!10153 thiss!1181))))))

(declare-fun b!897525 () Bool)

(assert (=> b!897525 (= e!501955 (arrayContainsKey!0 (_keys!10153 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111053 (not res!606747)) b!897524))

(assert (= (and b!897524 res!606748) b!897525))

(assert (=> d!111053 m!834333))

(declare-fun m!834351 () Bool)

(assert (=> b!897525 m!834351))

(assert (=> b!897447 d!111053))

(declare-fun d!111055 () Bool)

(assert (=> d!111055 (arrayContainsKey!0 (_keys!10153 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405219 () Unit!30481)

(declare-fun choose!13 (array!52644 (_ BitVec 64) (_ BitVec 32)) Unit!30481)

(assert (=> d!111055 (= lt!405219 (choose!13 (_keys!10153 thiss!1181) key!785 (index!37971 lt!405178)))))

(assert (=> d!111055 (bvsge (index!37971 lt!405178) #b00000000000000000000000000000000)))

(assert (=> d!111055 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10153 thiss!1181) key!785 (index!37971 lt!405178)) lt!405219)))

(declare-fun bs!25186 () Bool)

(assert (= bs!25186 d!111055))

(assert (=> bs!25186 m!834293))

(declare-fun m!834353 () Bool)

(assert (=> bs!25186 m!834353))

(assert (=> b!897447 d!111055))

(declare-fun d!111057 () Bool)

(assert (=> d!111057 (= (inRange!0 (index!37971 lt!405178) (mask!26085 thiss!1181)) (and (bvsge (index!37971 lt!405178) #b00000000000000000000000000000000) (bvslt (index!37971 lt!405178) (bvadd (mask!26085 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!897442 d!111057))

(declare-fun b!897532 () Bool)

(declare-fun e!501961 () Bool)

(assert (=> b!897532 (= e!501961 tp_is_empty!18315)))

(declare-fun condMapEmpty!29118 () Bool)

(declare-fun mapDefault!29118 () ValueCell!8676)

(assert (=> mapNonEmpty!29112 (= condMapEmpty!29118 (= mapRest!29112 ((as const (Array (_ BitVec 32) ValueCell!8676)) mapDefault!29118)))))

(declare-fun e!501960 () Bool)

(declare-fun mapRes!29118 () Bool)

(assert (=> mapNonEmpty!29112 (= tp!56015 (and e!501960 mapRes!29118))))

(declare-fun mapIsEmpty!29118 () Bool)

(assert (=> mapIsEmpty!29118 mapRes!29118))

(declare-fun mapNonEmpty!29118 () Bool)

(declare-fun tp!56025 () Bool)

(assert (=> mapNonEmpty!29118 (= mapRes!29118 (and tp!56025 e!501961))))

(declare-fun mapKey!29118 () (_ BitVec 32))

(declare-fun mapValue!29118 () ValueCell!8676)

(declare-fun mapRest!29118 () (Array (_ BitVec 32) ValueCell!8676))

(assert (=> mapNonEmpty!29118 (= mapRest!29112 (store mapRest!29118 mapKey!29118 mapValue!29118))))

(declare-fun b!897533 () Bool)

(assert (=> b!897533 (= e!501960 tp_is_empty!18315)))

(assert (= (and mapNonEmpty!29112 condMapEmpty!29118) mapIsEmpty!29118))

(assert (= (and mapNonEmpty!29112 (not condMapEmpty!29118)) mapNonEmpty!29118))

(assert (= (and mapNonEmpty!29118 ((_ is ValueCellFull!8676) mapValue!29118)) b!897532))

(assert (= (and mapNonEmpty!29112 ((_ is ValueCellFull!8676) mapDefault!29118)) b!897533))

(declare-fun m!834355 () Bool)

(assert (=> mapNonEmpty!29118 m!834355))

(check-sat (not d!111039) (not b!897519) (not b!897509) (not mapNonEmpty!29118) (not d!111041) (not b!897480) (not d!111055) (not d!111045) (not b!897510) tp_is_empty!18315 b_and!26297 (not b_next!15987) (not b!897517) (not b!897525) (not b!897493) (not b!897518) (not bm!39814))
(check-sat b_and!26297 (not b_next!15987))
