; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3736 () Bool)

(assert start!3736)

(declare-fun b!26127 () Bool)

(declare-fun e!16963 () Bool)

(declare-datatypes ((List!576 0))(
  ( (Nil!573) (Cons!572 (h!1139 (_ BitVec 64)) (t!3265 List!576)) )
))
(declare-fun contains!227 (List!576 (_ BitVec 64)) Bool)

(assert (=> b!26127 (= e!16963 (contains!227 Nil!573 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26128 () Bool)

(declare-fun res!15521 () Bool)

(declare-fun e!16961 () Bool)

(assert (=> b!26128 (=> (not res!15521) (not e!16961))))

(declare-fun noDuplicate!11 (List!576) Bool)

(assert (=> b!26128 (= res!15521 (noDuplicate!11 Nil!573))))

(declare-fun b!26129 () Bool)

(declare-fun e!16962 () Bool)

(declare-fun e!16959 () Bool)

(declare-fun mapRes!1120 () Bool)

(assert (=> b!26129 (= e!16962 (and e!16959 mapRes!1120))))

(declare-fun condMapEmpty!1120 () Bool)

(declare-datatypes ((V!1253 0))(
  ( (V!1254 (val!562 Int)) )
))
(declare-datatypes ((ValueCell!336 0))(
  ( (ValueCellFull!336 (v!1647 V!1253)) (EmptyCell!336) )
))
(declare-datatypes ((array!1377 0))(
  ( (array!1378 (arr!647 (Array (_ BitVec 32) ValueCell!336)) (size!748 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1377)

(declare-fun mapDefault!1120 () ValueCell!336)

(assert (=> b!26129 (= condMapEmpty!1120 (= (arr!647 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!336)) mapDefault!1120)))))

(declare-fun res!15518 () Bool)

(assert (=> start!3736 (=> (not res!15518) (not e!16961))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3736 (= res!15518 (validMask!0 mask!2294))))

(assert (=> start!3736 e!16961))

(assert (=> start!3736 true))

(declare-fun array_inv!449 (array!1377) Bool)

(assert (=> start!3736 (and (array_inv!449 _values!1501) e!16962)))

(declare-datatypes ((array!1379 0))(
  ( (array!1380 (arr!648 (Array (_ BitVec 32) (_ BitVec 64))) (size!749 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1379)

(declare-fun array_inv!450 (array!1379) Bool)

(assert (=> start!3736 (array_inv!450 _keys!1833)))

(declare-fun b!26130 () Bool)

(declare-fun tp_is_empty!1071 () Bool)

(assert (=> b!26130 (= e!16959 tp_is_empty!1071)))

(declare-fun b!26131 () Bool)

(declare-fun res!15519 () Bool)

(assert (=> b!26131 (=> (not res!15519) (not e!16961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1379 (_ BitVec 32)) Bool)

(assert (=> b!26131 (= res!15519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26132 () Bool)

(declare-fun e!16960 () Bool)

(assert (=> b!26132 (= e!16960 tp_is_empty!1071)))

(declare-fun mapNonEmpty!1120 () Bool)

(declare-fun tp!3640 () Bool)

(assert (=> mapNonEmpty!1120 (= mapRes!1120 (and tp!3640 e!16960))))

(declare-fun mapKey!1120 () (_ BitVec 32))

(declare-fun mapValue!1120 () ValueCell!336)

(declare-fun mapRest!1120 () (Array (_ BitVec 32) ValueCell!336))

(assert (=> mapNonEmpty!1120 (= (arr!647 _values!1501) (store mapRest!1120 mapKey!1120 mapValue!1120))))

(declare-fun b!26133 () Bool)

(assert (=> b!26133 (= e!16961 e!16963)))

(declare-fun res!15517 () Bool)

(assert (=> b!26133 (=> res!15517 e!16963)))

(assert (=> b!26133 (= res!15517 (contains!227 Nil!573 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26134 () Bool)

(declare-fun res!15516 () Bool)

(assert (=> b!26134 (=> (not res!15516) (not e!16961))))

(assert (=> b!26134 (= res!15516 (and (bvsle #b00000000000000000000000000000000 (size!749 _keys!1833)) (bvslt (size!749 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!26135 () Bool)

(declare-fun res!15520 () Bool)

(assert (=> b!26135 (=> (not res!15520) (not e!16961))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26135 (= res!15520 (and (= (size!748 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!749 _keys!1833) (size!748 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1120 () Bool)

(assert (=> mapIsEmpty!1120 mapRes!1120))

(assert (= (and start!3736 res!15518) b!26135))

(assert (= (and b!26135 res!15520) b!26131))

(assert (= (and b!26131 res!15519) b!26134))

(assert (= (and b!26134 res!15516) b!26128))

(assert (= (and b!26128 res!15521) b!26133))

(assert (= (and b!26133 (not res!15517)) b!26127))

(assert (= (and b!26129 condMapEmpty!1120) mapIsEmpty!1120))

(assert (= (and b!26129 (not condMapEmpty!1120)) mapNonEmpty!1120))

(get-info :version)

(assert (= (and mapNonEmpty!1120 ((_ is ValueCellFull!336) mapValue!1120)) b!26132))

(assert (= (and b!26129 ((_ is ValueCellFull!336) mapDefault!1120)) b!26130))

(assert (= start!3736 b!26129))

(declare-fun m!21013 () Bool)

(assert (=> b!26128 m!21013))

(declare-fun m!21015 () Bool)

(assert (=> start!3736 m!21015))

(declare-fun m!21017 () Bool)

(assert (=> start!3736 m!21017))

(declare-fun m!21019 () Bool)

(assert (=> start!3736 m!21019))

(declare-fun m!21021 () Bool)

(assert (=> b!26133 m!21021))

(declare-fun m!21023 () Bool)

(assert (=> mapNonEmpty!1120 m!21023))

(declare-fun m!21025 () Bool)

(assert (=> b!26127 m!21025))

(declare-fun m!21027 () Bool)

(assert (=> b!26131 m!21027))

(check-sat (not b!26131) (not start!3736) (not b!26133) (not b!26127) (not mapNonEmpty!1120) (not b!26128) tp_is_empty!1071)
(check-sat)
(get-model)

(declare-fun bm!2498 () Bool)

(declare-fun call!2501 () Bool)

(assert (=> bm!2498 (= call!2501 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!26171 () Bool)

(declare-fun e!16989 () Bool)

(declare-fun e!16991 () Bool)

(assert (=> b!26171 (= e!16989 e!16991)))

(declare-fun c!3664 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26171 (= c!3664 (validKeyInArray!0 (select (arr!648 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26172 () Bool)

(declare-fun e!16990 () Bool)

(assert (=> b!26172 (= e!16990 call!2501)))

(declare-fun b!26173 () Bool)

(assert (=> b!26173 (= e!16991 e!16990)))

(declare-fun lt!10324 () (_ BitVec 64))

(assert (=> b!26173 (= lt!10324 (select (arr!648 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!627 0))(
  ( (Unit!628) )
))
(declare-fun lt!10325 () Unit!627)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1379 (_ BitVec 64) (_ BitVec 32)) Unit!627)

(assert (=> b!26173 (= lt!10325 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10324 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!26173 (arrayContainsKey!0 _keys!1833 lt!10324 #b00000000000000000000000000000000)))

(declare-fun lt!10323 () Unit!627)

(assert (=> b!26173 (= lt!10323 lt!10325)))

(declare-fun res!15544 () Bool)

(declare-datatypes ((SeekEntryResult!65 0))(
  ( (MissingZero!65 (index!2382 (_ BitVec 32))) (Found!65 (index!2383 (_ BitVec 32))) (Intermediate!65 (undefined!877 Bool) (index!2384 (_ BitVec 32)) (x!6079 (_ BitVec 32))) (Undefined!65) (MissingVacant!65 (index!2385 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1379 (_ BitVec 32)) SeekEntryResult!65)

(assert (=> b!26173 (= res!15544 (= (seekEntryOrOpen!0 (select (arr!648 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!65 #b00000000000000000000000000000000)))))

(assert (=> b!26173 (=> (not res!15544) (not e!16990))))

(declare-fun b!26174 () Bool)

(assert (=> b!26174 (= e!16991 call!2501)))

(declare-fun d!4869 () Bool)

(declare-fun res!15545 () Bool)

(assert (=> d!4869 (=> res!15545 e!16989)))

(assert (=> d!4869 (= res!15545 (bvsge #b00000000000000000000000000000000 (size!749 _keys!1833)))))

(assert (=> d!4869 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!16989)))

(assert (= (and d!4869 (not res!15545)) b!26171))

(assert (= (and b!26171 c!3664) b!26173))

(assert (= (and b!26171 (not c!3664)) b!26174))

(assert (= (and b!26173 res!15544) b!26172))

(assert (= (or b!26172 b!26174) bm!2498))

(declare-fun m!21045 () Bool)

(assert (=> bm!2498 m!21045))

(declare-fun m!21047 () Bool)

(assert (=> b!26171 m!21047))

(assert (=> b!26171 m!21047))

(declare-fun m!21049 () Bool)

(assert (=> b!26171 m!21049))

(assert (=> b!26173 m!21047))

(declare-fun m!21051 () Bool)

(assert (=> b!26173 m!21051))

(declare-fun m!21053 () Bool)

(assert (=> b!26173 m!21053))

(assert (=> b!26173 m!21047))

(declare-fun m!21055 () Bool)

(assert (=> b!26173 m!21055))

(assert (=> b!26131 d!4869))

(declare-fun d!4871 () Bool)

(declare-fun lt!10328 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!17 (List!576) (InoxSet (_ BitVec 64)))

(assert (=> d!4871 (= lt!10328 (select (content!17 Nil!573) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!16996 () Bool)

(assert (=> d!4871 (= lt!10328 e!16996)))

(declare-fun res!15550 () Bool)

(assert (=> d!4871 (=> (not res!15550) (not e!16996))))

(assert (=> d!4871 (= res!15550 ((_ is Cons!572) Nil!573))))

(assert (=> d!4871 (= (contains!227 Nil!573 #b1000000000000000000000000000000000000000000000000000000000000000) lt!10328)))

(declare-fun b!26179 () Bool)

(declare-fun e!16997 () Bool)

(assert (=> b!26179 (= e!16996 e!16997)))

(declare-fun res!15551 () Bool)

(assert (=> b!26179 (=> res!15551 e!16997)))

(assert (=> b!26179 (= res!15551 (= (h!1139 Nil!573) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26180 () Bool)

(assert (=> b!26180 (= e!16997 (contains!227 (t!3265 Nil!573) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!4871 res!15550) b!26179))

(assert (= (and b!26179 (not res!15551)) b!26180))

(declare-fun m!21057 () Bool)

(assert (=> d!4871 m!21057))

(declare-fun m!21059 () Bool)

(assert (=> d!4871 m!21059))

(declare-fun m!21061 () Bool)

(assert (=> b!26180 m!21061))

(assert (=> b!26127 d!4871))

(declare-fun d!4873 () Bool)

(declare-fun res!15556 () Bool)

(declare-fun e!17002 () Bool)

(assert (=> d!4873 (=> res!15556 e!17002)))

(assert (=> d!4873 (= res!15556 ((_ is Nil!573) Nil!573))))

(assert (=> d!4873 (= (noDuplicate!11 Nil!573) e!17002)))

(declare-fun b!26185 () Bool)

(declare-fun e!17003 () Bool)

(assert (=> b!26185 (= e!17002 e!17003)))

(declare-fun res!15557 () Bool)

(assert (=> b!26185 (=> (not res!15557) (not e!17003))))

(assert (=> b!26185 (= res!15557 (not (contains!227 (t!3265 Nil!573) (h!1139 Nil!573))))))

(declare-fun b!26186 () Bool)

(assert (=> b!26186 (= e!17003 (noDuplicate!11 (t!3265 Nil!573)))))

(assert (= (and d!4873 (not res!15556)) b!26185))

(assert (= (and b!26185 res!15557) b!26186))

(declare-fun m!21063 () Bool)

(assert (=> b!26185 m!21063))

(declare-fun m!21065 () Bool)

(assert (=> b!26186 m!21065))

(assert (=> b!26128 d!4873))

(declare-fun d!4875 () Bool)

(declare-fun lt!10329 () Bool)

(assert (=> d!4875 (= lt!10329 (select (content!17 Nil!573) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!17004 () Bool)

(assert (=> d!4875 (= lt!10329 e!17004)))

(declare-fun res!15558 () Bool)

(assert (=> d!4875 (=> (not res!15558) (not e!17004))))

(assert (=> d!4875 (= res!15558 ((_ is Cons!572) Nil!573))))

(assert (=> d!4875 (= (contains!227 Nil!573 #b0000000000000000000000000000000000000000000000000000000000000000) lt!10329)))

(declare-fun b!26187 () Bool)

(declare-fun e!17005 () Bool)

(assert (=> b!26187 (= e!17004 e!17005)))

(declare-fun res!15559 () Bool)

(assert (=> b!26187 (=> res!15559 e!17005)))

(assert (=> b!26187 (= res!15559 (= (h!1139 Nil!573) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26188 () Bool)

(assert (=> b!26188 (= e!17005 (contains!227 (t!3265 Nil!573) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!4875 res!15558) b!26187))

(assert (= (and b!26187 (not res!15559)) b!26188))

(assert (=> d!4875 m!21057))

(declare-fun m!21067 () Bool)

(assert (=> d!4875 m!21067))

(declare-fun m!21069 () Bool)

(assert (=> b!26188 m!21069))

(assert (=> b!26133 d!4875))

(declare-fun d!4877 () Bool)

(assert (=> d!4877 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3736 d!4877))

(declare-fun d!4879 () Bool)

(assert (=> d!4879 (= (array_inv!449 _values!1501) (bvsge (size!748 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3736 d!4879))

(declare-fun d!4881 () Bool)

(assert (=> d!4881 (= (array_inv!450 _keys!1833) (bvsge (size!749 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3736 d!4881))

(declare-fun mapNonEmpty!1126 () Bool)

(declare-fun mapRes!1126 () Bool)

(declare-fun tp!3646 () Bool)

(declare-fun e!17011 () Bool)

(assert (=> mapNonEmpty!1126 (= mapRes!1126 (and tp!3646 e!17011))))

(declare-fun mapRest!1126 () (Array (_ BitVec 32) ValueCell!336))

(declare-fun mapKey!1126 () (_ BitVec 32))

(declare-fun mapValue!1126 () ValueCell!336)

(assert (=> mapNonEmpty!1126 (= mapRest!1120 (store mapRest!1126 mapKey!1126 mapValue!1126))))

(declare-fun b!26195 () Bool)

(assert (=> b!26195 (= e!17011 tp_is_empty!1071)))

(declare-fun condMapEmpty!1126 () Bool)

(declare-fun mapDefault!1126 () ValueCell!336)

(assert (=> mapNonEmpty!1120 (= condMapEmpty!1126 (= mapRest!1120 ((as const (Array (_ BitVec 32) ValueCell!336)) mapDefault!1126)))))

(declare-fun e!17010 () Bool)

(assert (=> mapNonEmpty!1120 (= tp!3640 (and e!17010 mapRes!1126))))

(declare-fun mapIsEmpty!1126 () Bool)

(assert (=> mapIsEmpty!1126 mapRes!1126))

(declare-fun b!26196 () Bool)

(assert (=> b!26196 (= e!17010 tp_is_empty!1071)))

(assert (= (and mapNonEmpty!1120 condMapEmpty!1126) mapIsEmpty!1126))

(assert (= (and mapNonEmpty!1120 (not condMapEmpty!1126)) mapNonEmpty!1126))

(assert (= (and mapNonEmpty!1126 ((_ is ValueCellFull!336) mapValue!1126)) b!26195))

(assert (= (and mapNonEmpty!1120 ((_ is ValueCellFull!336) mapDefault!1126)) b!26196))

(declare-fun m!21071 () Bool)

(assert (=> mapNonEmpty!1126 m!21071))

(check-sat (not b!26185) (not b!26186) (not b!26171) (not d!4871) (not b!26188) (not b!26180) (not d!4875) (not b!26173) tp_is_empty!1071 (not bm!2498) (not mapNonEmpty!1126))
(check-sat)
