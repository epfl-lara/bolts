; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36006 () Bool)

(assert start!36006)

(declare-fun b!361377 () Bool)

(declare-fun e!221340 () Bool)

(declare-fun tp_is_empty!8391 () Bool)

(assert (=> b!361377 (= e!221340 tp_is_empty!8391)))

(declare-fun b!361378 () Bool)

(declare-fun res!201096 () Bool)

(declare-fun e!221338 () Bool)

(assert (=> b!361378 (=> (not res!201096) (not e!221338))))

(declare-datatypes ((array!20309 0))(
  ( (array!20310 (arr!9639 (Array (_ BitVec 32) (_ BitVec 64))) (size!9991 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20309)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20309 (_ BitVec 32)) Bool)

(assert (=> b!361378 (= res!201096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapIsEmpty!14112 () Bool)

(declare-fun mapRes!14112 () Bool)

(assert (=> mapIsEmpty!14112 mapRes!14112))

(declare-fun res!201098 () Bool)

(assert (=> start!36006 (=> (not res!201098) (not e!221338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36006 (= res!201098 (validMask!0 mask!1943))))

(assert (=> start!36006 e!221338))

(assert (=> start!36006 true))

(declare-fun array_inv!7090 (array!20309) Bool)

(assert (=> start!36006 (array_inv!7090 _keys!1541)))

(declare-datatypes ((V!12165 0))(
  ( (V!12166 (val!4240 Int)) )
))
(declare-datatypes ((ValueCell!3852 0))(
  ( (ValueCellFull!3852 (v!6431 V!12165)) (EmptyCell!3852) )
))
(declare-datatypes ((array!20311 0))(
  ( (array!20312 (arr!9640 (Array (_ BitVec 32) ValueCell!3852)) (size!9992 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20311)

(declare-fun e!221336 () Bool)

(declare-fun array_inv!7091 (array!20311) Bool)

(assert (=> start!36006 (and (array_inv!7091 _values!1277) e!221336)))

(declare-fun b!361379 () Bool)

(declare-fun e!221339 () Bool)

(assert (=> b!361379 (= e!221339 tp_is_empty!8391)))

(declare-fun mapNonEmpty!14112 () Bool)

(declare-fun tp!28188 () Bool)

(assert (=> mapNonEmpty!14112 (= mapRes!14112 (and tp!28188 e!221340))))

(declare-fun mapRest!14112 () (Array (_ BitVec 32) ValueCell!3852))

(declare-fun mapValue!14112 () ValueCell!3852)

(declare-fun mapKey!14112 () (_ BitVec 32))

(assert (=> mapNonEmpty!14112 (= (arr!9640 _values!1277) (store mapRest!14112 mapKey!14112 mapValue!14112))))

(declare-fun b!361380 () Bool)

(declare-fun from!1924 () (_ BitVec 32))

(assert (=> b!361380 (= e!221338 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!9991 _keys!1541)) (bvsge (size!9991 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun b!361381 () Bool)

(assert (=> b!361381 (= e!221336 (and e!221339 mapRes!14112))))

(declare-fun condMapEmpty!14112 () Bool)

(declare-fun mapDefault!14112 () ValueCell!3852)

(assert (=> b!361381 (= condMapEmpty!14112 (= (arr!9640 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3852)) mapDefault!14112)))))

(declare-fun b!361382 () Bool)

(declare-fun res!201095 () Bool)

(assert (=> b!361382 (=> (not res!201095) (not e!221338))))

(declare-datatypes ((List!5537 0))(
  ( (Nil!5534) (Cons!5533 (h!6389 (_ BitVec 64)) (t!10695 List!5537)) )
))
(declare-fun arrayNoDuplicates!0 (array!20309 (_ BitVec 32) List!5537) Bool)

(assert (=> b!361382 (= res!201095 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5534))))

(declare-fun b!361383 () Bool)

(declare-fun res!201097 () Bool)

(assert (=> b!361383 (=> (not res!201097) (not e!221338))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361383 (= res!201097 (and (= (size!9992 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9991 _keys!1541) (size!9992 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(assert (= (and start!36006 res!201098) b!361383))

(assert (= (and b!361383 res!201097) b!361378))

(assert (= (and b!361378 res!201096) b!361382))

(assert (= (and b!361382 res!201095) b!361380))

(assert (= (and b!361381 condMapEmpty!14112) mapIsEmpty!14112))

(assert (= (and b!361381 (not condMapEmpty!14112)) mapNonEmpty!14112))

(get-info :version)

(assert (= (and mapNonEmpty!14112 ((_ is ValueCellFull!3852) mapValue!14112)) b!361377))

(assert (= (and b!361381 ((_ is ValueCellFull!3852) mapDefault!14112)) b!361379))

(assert (= start!36006 b!361381))

(declare-fun m!358197 () Bool)

(assert (=> b!361378 m!358197))

(declare-fun m!358199 () Bool)

(assert (=> start!36006 m!358199))

(declare-fun m!358201 () Bool)

(assert (=> start!36006 m!358201))

(declare-fun m!358203 () Bool)

(assert (=> start!36006 m!358203))

(declare-fun m!358205 () Bool)

(assert (=> mapNonEmpty!14112 m!358205))

(declare-fun m!358207 () Bool)

(assert (=> b!361382 m!358207))

(check-sat (not mapNonEmpty!14112) (not start!36006) (not b!361378) (not b!361382) tp_is_empty!8391)
(check-sat)
(get-model)

(declare-fun d!71809 () Bool)

(declare-fun res!201118 () Bool)

(declare-fun e!221366 () Bool)

(assert (=> d!71809 (=> res!201118 e!221366)))

(assert (=> d!71809 (= res!201118 (bvsge #b00000000000000000000000000000000 (size!9991 _keys!1541)))))

(assert (=> d!71809 (= (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5534) e!221366)))

(declare-fun b!361415 () Bool)

(declare-fun e!221367 () Bool)

(assert (=> b!361415 (= e!221366 e!221367)))

(declare-fun res!201117 () Bool)

(assert (=> b!361415 (=> (not res!201117) (not e!221367))))

(declare-fun e!221364 () Bool)

(assert (=> b!361415 (= res!201117 (not e!221364))))

(declare-fun res!201119 () Bool)

(assert (=> b!361415 (=> (not res!201119) (not e!221364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361415 (= res!201119 (validKeyInArray!0 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun bm!27173 () Bool)

(declare-fun call!27176 () Bool)

(declare-fun c!53651 () Bool)

(assert (=> bm!27173 (= call!27176 (arrayNoDuplicates!0 _keys!1541 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53651 (Cons!5533 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000) Nil!5534) Nil!5534)))))

(declare-fun b!361416 () Bool)

(declare-fun contains!2428 (List!5537 (_ BitVec 64)) Bool)

(assert (=> b!361416 (= e!221364 (contains!2428 Nil!5534 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361417 () Bool)

(declare-fun e!221365 () Bool)

(assert (=> b!361417 (= e!221367 e!221365)))

(assert (=> b!361417 (= c!53651 (validKeyInArray!0 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361418 () Bool)

(assert (=> b!361418 (= e!221365 call!27176)))

(declare-fun b!361419 () Bool)

(assert (=> b!361419 (= e!221365 call!27176)))

(assert (= (and d!71809 (not res!201118)) b!361415))

(assert (= (and b!361415 res!201119) b!361416))

(assert (= (and b!361415 res!201117) b!361417))

(assert (= (and b!361417 c!53651) b!361419))

(assert (= (and b!361417 (not c!53651)) b!361418))

(assert (= (or b!361419 b!361418) bm!27173))

(declare-fun m!358221 () Bool)

(assert (=> b!361415 m!358221))

(assert (=> b!361415 m!358221))

(declare-fun m!358223 () Bool)

(assert (=> b!361415 m!358223))

(assert (=> bm!27173 m!358221))

(declare-fun m!358225 () Bool)

(assert (=> bm!27173 m!358225))

(assert (=> b!361416 m!358221))

(assert (=> b!361416 m!358221))

(declare-fun m!358227 () Bool)

(assert (=> b!361416 m!358227))

(assert (=> b!361417 m!358221))

(assert (=> b!361417 m!358221))

(assert (=> b!361417 m!358223))

(assert (=> b!361382 d!71809))

(declare-fun d!71811 () Bool)

(assert (=> d!71811 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!36006 d!71811))

(declare-fun d!71813 () Bool)

(assert (=> d!71813 (= (array_inv!7090 _keys!1541) (bvsge (size!9991 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!36006 d!71813))

(declare-fun d!71815 () Bool)

(assert (=> d!71815 (= (array_inv!7091 _values!1277) (bvsge (size!9992 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!36006 d!71815))

(declare-fun b!361428 () Bool)

(declare-fun e!221374 () Bool)

(declare-fun call!27179 () Bool)

(assert (=> b!361428 (= e!221374 call!27179)))

(declare-fun b!361429 () Bool)

(declare-fun e!221375 () Bool)

(assert (=> b!361429 (= e!221375 call!27179)))

(declare-fun bm!27176 () Bool)

(assert (=> bm!27176 (= call!27179 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(declare-fun b!361430 () Bool)

(declare-fun e!221376 () Bool)

(assert (=> b!361430 (= e!221376 e!221374)))

(declare-fun c!53654 () Bool)

(assert (=> b!361430 (= c!53654 (validKeyInArray!0 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361431 () Bool)

(assert (=> b!361431 (= e!221374 e!221375)))

(declare-fun lt!166542 () (_ BitVec 64))

(assert (=> b!361431 (= lt!166542 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11105 0))(
  ( (Unit!11106) )
))
(declare-fun lt!166543 () Unit!11105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20309 (_ BitVec 64) (_ BitVec 32)) Unit!11105)

(assert (=> b!361431 (= lt!166543 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166542 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361431 (arrayContainsKey!0 _keys!1541 lt!166542 #b00000000000000000000000000000000)))

(declare-fun lt!166544 () Unit!11105)

(assert (=> b!361431 (= lt!166544 lt!166543)))

(declare-fun res!201125 () Bool)

(declare-datatypes ((SeekEntryResult!3484 0))(
  ( (MissingZero!3484 (index!16115 (_ BitVec 32))) (Found!3484 (index!16116 (_ BitVec 32))) (Intermediate!3484 (undefined!4296 Bool) (index!16117 (_ BitVec 32)) (x!36021 (_ BitVec 32))) (Undefined!3484) (MissingVacant!3484 (index!16118 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20309 (_ BitVec 32)) SeekEntryResult!3484)

(assert (=> b!361431 (= res!201125 (= (seekEntryOrOpen!0 (select (arr!9639 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3484 #b00000000000000000000000000000000)))))

(assert (=> b!361431 (=> (not res!201125) (not e!221375))))

(declare-fun d!71817 () Bool)

(declare-fun res!201124 () Bool)

(assert (=> d!71817 (=> res!201124 e!221376)))

(assert (=> d!71817 (= res!201124 (bvsge #b00000000000000000000000000000000 (size!9991 _keys!1541)))))

(assert (=> d!71817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221376)))

(assert (= (and d!71817 (not res!201124)) b!361430))

(assert (= (and b!361430 c!53654) b!361431))

(assert (= (and b!361430 (not c!53654)) b!361428))

(assert (= (and b!361431 res!201125) b!361429))

(assert (= (or b!361429 b!361428) bm!27176))

(declare-fun m!358229 () Bool)

(assert (=> bm!27176 m!358229))

(assert (=> b!361430 m!358221))

(assert (=> b!361430 m!358221))

(assert (=> b!361430 m!358223))

(assert (=> b!361431 m!358221))

(declare-fun m!358231 () Bool)

(assert (=> b!361431 m!358231))

(declare-fun m!358233 () Bool)

(assert (=> b!361431 m!358233))

(assert (=> b!361431 m!358221))

(declare-fun m!358235 () Bool)

(assert (=> b!361431 m!358235))

(assert (=> b!361378 d!71817))

(declare-fun mapIsEmpty!14118 () Bool)

(declare-fun mapRes!14118 () Bool)

(assert (=> mapIsEmpty!14118 mapRes!14118))

(declare-fun condMapEmpty!14118 () Bool)

(declare-fun mapDefault!14118 () ValueCell!3852)

(assert (=> mapNonEmpty!14112 (= condMapEmpty!14118 (= mapRest!14112 ((as const (Array (_ BitVec 32) ValueCell!3852)) mapDefault!14118)))))

(declare-fun e!221381 () Bool)

(assert (=> mapNonEmpty!14112 (= tp!28188 (and e!221381 mapRes!14118))))

(declare-fun mapNonEmpty!14118 () Bool)

(declare-fun tp!28194 () Bool)

(declare-fun e!221382 () Bool)

(assert (=> mapNonEmpty!14118 (= mapRes!14118 (and tp!28194 e!221382))))

(declare-fun mapKey!14118 () (_ BitVec 32))

(declare-fun mapValue!14118 () ValueCell!3852)

(declare-fun mapRest!14118 () (Array (_ BitVec 32) ValueCell!3852))

(assert (=> mapNonEmpty!14118 (= mapRest!14112 (store mapRest!14118 mapKey!14118 mapValue!14118))))

(declare-fun b!361438 () Bool)

(assert (=> b!361438 (= e!221382 tp_is_empty!8391)))

(declare-fun b!361439 () Bool)

(assert (=> b!361439 (= e!221381 tp_is_empty!8391)))

(assert (= (and mapNonEmpty!14112 condMapEmpty!14118) mapIsEmpty!14118))

(assert (= (and mapNonEmpty!14112 (not condMapEmpty!14118)) mapNonEmpty!14118))

(assert (= (and mapNonEmpty!14118 ((_ is ValueCellFull!3852) mapValue!14118)) b!361438))

(assert (= (and mapNonEmpty!14112 ((_ is ValueCellFull!3852) mapDefault!14118)) b!361439))

(declare-fun m!358237 () Bool)

(assert (=> mapNonEmpty!14118 m!358237))

(check-sat (not b!361417) (not b!361415) (not bm!27176) tp_is_empty!8391 (not b!361430) (not b!361431) (not mapNonEmpty!14118) (not b!361416) (not bm!27173))
(check-sat)
