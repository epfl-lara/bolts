; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84856 () Bool)

(assert start!84856)

(declare-fun b!991435 () Bool)

(declare-fun res!662824 () Bool)

(declare-fun e!559197 () Bool)

(assert (=> b!991435 (=> (not res!662824) (not e!559197))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36099 0))(
  ( (V!36100 (val!11719 Int)) )
))
(declare-datatypes ((ValueCell!11187 0))(
  ( (ValueCellFull!11187 (v!14295 V!36099)) (EmptyCell!11187) )
))
(declare-datatypes ((array!62625 0))(
  ( (array!62626 (arr!30156 (Array (_ BitVec 32) ValueCell!11187)) (size!30636 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62625)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62627 0))(
  ( (array!62628 (arr!30157 (Array (_ BitVec 32) (_ BitVec 64))) (size!30637 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62627)

(assert (=> b!991435 (= res!662824 (and (= (size!30636 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30637 _keys!1945) (size!30636 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991436 () Bool)

(declare-fun e!559193 () Bool)

(declare-fun e!559196 () Bool)

(declare-fun mapRes!37068 () Bool)

(assert (=> b!991436 (= e!559193 (and e!559196 mapRes!37068))))

(declare-fun condMapEmpty!37068 () Bool)

(declare-fun mapDefault!37068 () ValueCell!11187)

(assert (=> b!991436 (= condMapEmpty!37068 (= (arr!30156 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11187)) mapDefault!37068)))))

(declare-fun b!991437 () Bool)

(declare-fun tp_is_empty!23337 () Bool)

(assert (=> b!991437 (= e!559196 tp_is_empty!23337)))

(declare-fun res!662823 () Bool)

(assert (=> start!84856 (=> (not res!662823) (not e!559197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84856 (= res!662823 (validMask!0 mask!2471))))

(assert (=> start!84856 e!559197))

(assert (=> start!84856 true))

(declare-fun array_inv!23151 (array!62625) Bool)

(assert (=> start!84856 (and (array_inv!23151 _values!1551) e!559193)))

(declare-fun array_inv!23152 (array!62627) Bool)

(assert (=> start!84856 (array_inv!23152 _keys!1945)))

(declare-fun b!991438 () Bool)

(declare-fun e!559194 () Bool)

(assert (=> b!991438 (= e!559194 tp_is_empty!23337)))

(declare-fun b!991439 () Bool)

(declare-fun res!662825 () Bool)

(assert (=> b!991439 (=> (not res!662825) (not e!559197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62627 (_ BitVec 32)) Bool)

(assert (=> b!991439 (= res!662825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun mapIsEmpty!37068 () Bool)

(assert (=> mapIsEmpty!37068 mapRes!37068))

(declare-fun mapNonEmpty!37068 () Bool)

(declare-fun tp!70140 () Bool)

(assert (=> mapNonEmpty!37068 (= mapRes!37068 (and tp!70140 e!559194))))

(declare-fun mapValue!37068 () ValueCell!11187)

(declare-fun mapRest!37068 () (Array (_ BitVec 32) ValueCell!11187))

(declare-fun mapKey!37068 () (_ BitVec 32))

(assert (=> mapNonEmpty!37068 (= (arr!30156 _values!1551) (store mapRest!37068 mapKey!37068 mapValue!37068))))

(declare-fun b!991440 () Bool)

(assert (=> b!991440 (= e!559197 (and (bvsle #b00000000000000000000000000000000 (size!30637 _keys!1945)) (bvsge (size!30637 _keys!1945) #b01111111111111111111111111111111)))))

(assert (= (and start!84856 res!662823) b!991435))

(assert (= (and b!991435 res!662824) b!991439))

(assert (= (and b!991439 res!662825) b!991440))

(assert (= (and b!991436 condMapEmpty!37068) mapIsEmpty!37068))

(assert (= (and b!991436 (not condMapEmpty!37068)) mapNonEmpty!37068))

(get-info :version)

(assert (= (and mapNonEmpty!37068 ((_ is ValueCellFull!11187) mapValue!37068)) b!991438))

(assert (= (and b!991436 ((_ is ValueCellFull!11187) mapDefault!37068)) b!991437))

(assert (= start!84856 b!991436))

(declare-fun m!919433 () Bool)

(assert (=> start!84856 m!919433))

(declare-fun m!919435 () Bool)

(assert (=> start!84856 m!919435))

(declare-fun m!919437 () Bool)

(assert (=> start!84856 m!919437))

(declare-fun m!919439 () Bool)

(assert (=> b!991439 m!919439))

(declare-fun m!919441 () Bool)

(assert (=> mapNonEmpty!37068 m!919441))

(check-sat (not start!84856) (not b!991439) (not mapNonEmpty!37068) tp_is_empty!23337)
(check-sat)
(get-model)

(declare-fun d!117879 () Bool)

(assert (=> d!117879 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84856 d!117879))

(declare-fun d!117881 () Bool)

(assert (=> d!117881 (= (array_inv!23151 _values!1551) (bvsge (size!30636 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84856 d!117881))

(declare-fun d!117883 () Bool)

(assert (=> d!117883 (= (array_inv!23152 _keys!1945) (bvsge (size!30637 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84856 d!117883))

(declare-fun d!117885 () Bool)

(declare-fun res!662839 () Bool)

(declare-fun e!559220 () Bool)

(assert (=> d!117885 (=> res!662839 e!559220)))

(assert (=> d!117885 (= res!662839 (bvsge #b00000000000000000000000000000000 (size!30637 _keys!1945)))))

(assert (=> d!117885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471) e!559220)))

(declare-fun b!991467 () Bool)

(declare-fun e!559219 () Bool)

(declare-fun call!42079 () Bool)

(assert (=> b!991467 (= e!559219 call!42079)))

(declare-fun b!991468 () Bool)

(declare-fun e!559221 () Bool)

(assert (=> b!991468 (= e!559221 call!42079)))

(declare-fun bm!42076 () Bool)

(assert (=> bm!42076 (= call!42079 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1945 mask!2471))))

(declare-fun b!991469 () Bool)

(assert (=> b!991469 (= e!559219 e!559221)))

(declare-fun lt!439945 () (_ BitVec 64))

(assert (=> b!991469 (= lt!439945 (select (arr!30157 _keys!1945) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32852 0))(
  ( (Unit!32853) )
))
(declare-fun lt!439946 () Unit!32852)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62627 (_ BitVec 64) (_ BitVec 32)) Unit!32852)

(assert (=> b!991469 (= lt!439946 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1945 lt!439945 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991469 (arrayContainsKey!0 _keys!1945 lt!439945 #b00000000000000000000000000000000)))

(declare-fun lt!439944 () Unit!32852)

(assert (=> b!991469 (= lt!439944 lt!439946)))

(declare-fun res!662840 () Bool)

(declare-datatypes ((SeekEntryResult!9203 0))(
  ( (MissingZero!9203 (index!39182 (_ BitVec 32))) (Found!9203 (index!39183 (_ BitVec 32))) (Intermediate!9203 (undefined!10015 Bool) (index!39184 (_ BitVec 32)) (x!86257 (_ BitVec 32))) (Undefined!9203) (MissingVacant!9203 (index!39185 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62627 (_ BitVec 32)) SeekEntryResult!9203)

(assert (=> b!991469 (= res!662840 (= (seekEntryOrOpen!0 (select (arr!30157 _keys!1945) #b00000000000000000000000000000000) _keys!1945 mask!2471) (Found!9203 #b00000000000000000000000000000000)))))

(assert (=> b!991469 (=> (not res!662840) (not e!559221))))

(declare-fun b!991470 () Bool)

(assert (=> b!991470 (= e!559220 e!559219)))

(declare-fun c!100548 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991470 (= c!100548 (validKeyInArray!0 (select (arr!30157 _keys!1945) #b00000000000000000000000000000000)))))

(assert (= (and d!117885 (not res!662839)) b!991470))

(assert (= (and b!991470 c!100548) b!991469))

(assert (= (and b!991470 (not c!100548)) b!991467))

(assert (= (and b!991469 res!662840) b!991468))

(assert (= (or b!991468 b!991467) bm!42076))

(declare-fun m!919453 () Bool)

(assert (=> bm!42076 m!919453))

(declare-fun m!919455 () Bool)

(assert (=> b!991469 m!919455))

(declare-fun m!919457 () Bool)

(assert (=> b!991469 m!919457))

(declare-fun m!919459 () Bool)

(assert (=> b!991469 m!919459))

(assert (=> b!991469 m!919455))

(declare-fun m!919461 () Bool)

(assert (=> b!991469 m!919461))

(assert (=> b!991470 m!919455))

(assert (=> b!991470 m!919455))

(declare-fun m!919463 () Bool)

(assert (=> b!991470 m!919463))

(assert (=> b!991439 d!117885))

(declare-fun condMapEmpty!37074 () Bool)

(declare-fun mapDefault!37074 () ValueCell!11187)

(assert (=> mapNonEmpty!37068 (= condMapEmpty!37074 (= mapRest!37068 ((as const (Array (_ BitVec 32) ValueCell!11187)) mapDefault!37074)))))

(declare-fun e!559227 () Bool)

(declare-fun mapRes!37074 () Bool)

(assert (=> mapNonEmpty!37068 (= tp!70140 (and e!559227 mapRes!37074))))

(declare-fun b!991478 () Bool)

(assert (=> b!991478 (= e!559227 tp_is_empty!23337)))

(declare-fun mapNonEmpty!37074 () Bool)

(declare-fun tp!70146 () Bool)

(declare-fun e!559226 () Bool)

(assert (=> mapNonEmpty!37074 (= mapRes!37074 (and tp!70146 e!559226))))

(declare-fun mapValue!37074 () ValueCell!11187)

(declare-fun mapRest!37074 () (Array (_ BitVec 32) ValueCell!11187))

(declare-fun mapKey!37074 () (_ BitVec 32))

(assert (=> mapNonEmpty!37074 (= mapRest!37068 (store mapRest!37074 mapKey!37074 mapValue!37074))))

(declare-fun mapIsEmpty!37074 () Bool)

(assert (=> mapIsEmpty!37074 mapRes!37074))

(declare-fun b!991477 () Bool)

(assert (=> b!991477 (= e!559226 tp_is_empty!23337)))

(assert (= (and mapNonEmpty!37068 condMapEmpty!37074) mapIsEmpty!37074))

(assert (= (and mapNonEmpty!37068 (not condMapEmpty!37074)) mapNonEmpty!37074))

(assert (= (and mapNonEmpty!37074 ((_ is ValueCellFull!11187) mapValue!37074)) b!991477))

(assert (= (and mapNonEmpty!37068 ((_ is ValueCellFull!11187) mapDefault!37074)) b!991478))

(declare-fun m!919465 () Bool)

(assert (=> mapNonEmpty!37074 m!919465))

(check-sat (not bm!42076) tp_is_empty!23337 (not b!991470) (not b!991469) (not mapNonEmpty!37074))
(check-sat)
