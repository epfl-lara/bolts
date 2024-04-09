; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35284 () Bool)

(assert start!35284)

(declare-fun b!353328 () Bool)

(declare-fun e!216414 () Bool)

(declare-fun tp_is_empty!7779 () Bool)

(assert (=> b!353328 (= e!216414 tp_is_empty!7779)))

(declare-fun mapNonEmpty!13161 () Bool)

(declare-fun mapRes!13161 () Bool)

(declare-fun tp!27057 () Bool)

(assert (=> mapNonEmpty!13161 (= mapRes!13161 (and tp!27057 e!216414))))

(declare-datatypes ((V!11349 0))(
  ( (V!11350 (val!3934 Int)) )
))
(declare-datatypes ((ValueCell!3546 0))(
  ( (ValueCellFull!3546 (v!6123 V!11349)) (EmptyCell!3546) )
))
(declare-fun mapValue!13161 () ValueCell!3546)

(declare-fun mapKey!13161 () (_ BitVec 32))

(declare-fun mapRest!13161 () (Array (_ BitVec 32) ValueCell!3546))

(declare-datatypes ((array!19109 0))(
  ( (array!19110 (arr!9050 (Array (_ BitVec 32) ValueCell!3546)) (size!9402 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19109)

(assert (=> mapNonEmpty!13161 (= (arr!9050 _values!1208) (store mapRest!13161 mapKey!13161 mapValue!13161))))

(declare-fun b!353329 () Bool)

(declare-fun res!195960 () Bool)

(declare-fun e!216411 () Bool)

(assert (=> b!353329 (=> (not res!195960) (not e!216411))))

(declare-datatypes ((array!19111 0))(
  ( (array!19112 (arr!9051 (Array (_ BitVec 32) (_ BitVec 64))) (size!9403 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19111)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19111 (_ BitVec 32)) Bool)

(assert (=> b!353329 (= res!195960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353330 () Bool)

(declare-fun e!216412 () Bool)

(assert (=> b!353330 (= e!216412 tp_is_empty!7779)))

(declare-fun b!353331 () Bool)

(declare-fun res!195961 () Bool)

(assert (=> b!353331 (=> (not res!195961) (not e!216411))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353331 (= res!195961 (and (= (size!9402 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9403 _keys!1456) (size!9402 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!195962 () Bool)

(assert (=> start!35284 (=> (not res!195962) (not e!216411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35284 (= res!195962 (validMask!0 mask!1842))))

(assert (=> start!35284 e!216411))

(assert (=> start!35284 true))

(declare-fun e!216410 () Bool)

(declare-fun array_inv!6666 (array!19109) Bool)

(assert (=> start!35284 (and (array_inv!6666 _values!1208) e!216410)))

(declare-fun array_inv!6667 (array!19111) Bool)

(assert (=> start!35284 (array_inv!6667 _keys!1456)))

(declare-fun b!353332 () Bool)

(assert (=> b!353332 (= e!216410 (and e!216412 mapRes!13161))))

(declare-fun condMapEmpty!13161 () Bool)

(declare-fun mapDefault!13161 () ValueCell!3546)

(assert (=> b!353332 (= condMapEmpty!13161 (= (arr!9050 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3546)) mapDefault!13161)))))

(declare-fun mapIsEmpty!13161 () Bool)

(assert (=> mapIsEmpty!13161 mapRes!13161))

(declare-fun b!353333 () Bool)

(assert (=> b!353333 (= e!216411 (bvsgt #b00000000000000000000000000000000 (size!9403 _keys!1456)))))

(assert (= (and start!35284 res!195962) b!353331))

(assert (= (and b!353331 res!195961) b!353329))

(assert (= (and b!353329 res!195960) b!353333))

(assert (= (and b!353332 condMapEmpty!13161) mapIsEmpty!13161))

(assert (= (and b!353332 (not condMapEmpty!13161)) mapNonEmpty!13161))

(get-info :version)

(assert (= (and mapNonEmpty!13161 ((_ is ValueCellFull!3546) mapValue!13161)) b!353328))

(assert (= (and b!353332 ((_ is ValueCellFull!3546) mapDefault!13161)) b!353330))

(assert (= start!35284 b!353332))

(declare-fun m!352715 () Bool)

(assert (=> mapNonEmpty!13161 m!352715))

(declare-fun m!352717 () Bool)

(assert (=> b!353329 m!352717))

(declare-fun m!352719 () Bool)

(assert (=> start!35284 m!352719))

(declare-fun m!352721 () Bool)

(assert (=> start!35284 m!352721))

(declare-fun m!352723 () Bool)

(assert (=> start!35284 m!352723))

(check-sat (not start!35284) (not b!353329) (not mapNonEmpty!13161) tp_is_empty!7779)
(check-sat)
(get-model)

(declare-fun d!71489 () Bool)

(assert (=> d!71489 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35284 d!71489))

(declare-fun d!71491 () Bool)

(assert (=> d!71491 (= (array_inv!6666 _values!1208) (bvsge (size!9402 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35284 d!71491))

(declare-fun d!71493 () Bool)

(assert (=> d!71493 (= (array_inv!6667 _keys!1456) (bvsge (size!9403 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35284 d!71493))

(declare-fun b!353360 () Bool)

(declare-fun e!216437 () Bool)

(declare-fun call!27140 () Bool)

(assert (=> b!353360 (= e!216437 call!27140)))

(declare-fun b!353361 () Bool)

(declare-fun e!216436 () Bool)

(assert (=> b!353361 (= e!216437 e!216436)))

(declare-fun lt!165541 () (_ BitVec 64))

(assert (=> b!353361 (= lt!165541 (select (arr!9051 _keys!1456) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10915 0))(
  ( (Unit!10916) )
))
(declare-fun lt!165542 () Unit!10915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19111 (_ BitVec 64) (_ BitVec 32)) Unit!10915)

(assert (=> b!353361 (= lt!165542 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!165541 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353361 (arrayContainsKey!0 _keys!1456 lt!165541 #b00000000000000000000000000000000)))

(declare-fun lt!165543 () Unit!10915)

(assert (=> b!353361 (= lt!165543 lt!165542)))

(declare-fun res!195976 () Bool)

(declare-datatypes ((SeekEntryResult!3474 0))(
  ( (MissingZero!3474 (index!16075 (_ BitVec 32))) (Found!3474 (index!16076 (_ BitVec 32))) (Intermediate!3474 (undefined!4286 Bool) (index!16077 (_ BitVec 32)) (x!35173 (_ BitVec 32))) (Undefined!3474) (MissingVacant!3474 (index!16078 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19111 (_ BitVec 32)) SeekEntryResult!3474)

(assert (=> b!353361 (= res!195976 (= (seekEntryOrOpen!0 (select (arr!9051 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3474 #b00000000000000000000000000000000)))))

(assert (=> b!353361 (=> (not res!195976) (not e!216436))))

(declare-fun b!353362 () Bool)

(declare-fun e!216438 () Bool)

(assert (=> b!353362 (= e!216438 e!216437)))

(declare-fun c!53615 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353362 (= c!53615 (validKeyInArray!0 (select (arr!9051 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!353363 () Bool)

(assert (=> b!353363 (= e!216436 call!27140)))

(declare-fun bm!27137 () Bool)

(assert (=> bm!27137 (= call!27140 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(declare-fun d!71495 () Bool)

(declare-fun res!195977 () Bool)

(assert (=> d!71495 (=> res!195977 e!216438)))

(assert (=> d!71495 (= res!195977 (bvsge #b00000000000000000000000000000000 (size!9403 _keys!1456)))))

(assert (=> d!71495 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!216438)))

(assert (= (and d!71495 (not res!195977)) b!353362))

(assert (= (and b!353362 c!53615) b!353361))

(assert (= (and b!353362 (not c!53615)) b!353360))

(assert (= (and b!353361 res!195976) b!353363))

(assert (= (or b!353363 b!353360) bm!27137))

(declare-fun m!352735 () Bool)

(assert (=> b!353361 m!352735))

(declare-fun m!352737 () Bool)

(assert (=> b!353361 m!352737))

(declare-fun m!352739 () Bool)

(assert (=> b!353361 m!352739))

(assert (=> b!353361 m!352735))

(declare-fun m!352741 () Bool)

(assert (=> b!353361 m!352741))

(assert (=> b!353362 m!352735))

(assert (=> b!353362 m!352735))

(declare-fun m!352743 () Bool)

(assert (=> b!353362 m!352743))

(declare-fun m!352745 () Bool)

(assert (=> bm!27137 m!352745))

(assert (=> b!353329 d!71495))

(declare-fun b!353371 () Bool)

(declare-fun e!216443 () Bool)

(assert (=> b!353371 (= e!216443 tp_is_empty!7779)))

(declare-fun mapIsEmpty!13167 () Bool)

(declare-fun mapRes!13167 () Bool)

(assert (=> mapIsEmpty!13167 mapRes!13167))

(declare-fun mapNonEmpty!13167 () Bool)

(declare-fun tp!27063 () Bool)

(declare-fun e!216444 () Bool)

(assert (=> mapNonEmpty!13167 (= mapRes!13167 (and tp!27063 e!216444))))

(declare-fun mapRest!13167 () (Array (_ BitVec 32) ValueCell!3546))

(declare-fun mapValue!13167 () ValueCell!3546)

(declare-fun mapKey!13167 () (_ BitVec 32))

(assert (=> mapNonEmpty!13167 (= mapRest!13161 (store mapRest!13167 mapKey!13167 mapValue!13167))))

(declare-fun condMapEmpty!13167 () Bool)

(declare-fun mapDefault!13167 () ValueCell!3546)

(assert (=> mapNonEmpty!13161 (= condMapEmpty!13167 (= mapRest!13161 ((as const (Array (_ BitVec 32) ValueCell!3546)) mapDefault!13167)))))

(assert (=> mapNonEmpty!13161 (= tp!27057 (and e!216443 mapRes!13167))))

(declare-fun b!353370 () Bool)

(assert (=> b!353370 (= e!216444 tp_is_empty!7779)))

(assert (= (and mapNonEmpty!13161 condMapEmpty!13167) mapIsEmpty!13167))

(assert (= (and mapNonEmpty!13161 (not condMapEmpty!13167)) mapNonEmpty!13167))

(assert (= (and mapNonEmpty!13167 ((_ is ValueCellFull!3546) mapValue!13167)) b!353370))

(assert (= (and mapNonEmpty!13161 ((_ is ValueCellFull!3546) mapDefault!13167)) b!353371))

(declare-fun m!352747 () Bool)

(assert (=> mapNonEmpty!13167 m!352747))

(check-sat (not b!353362) tp_is_empty!7779 (not b!353361) (not bm!27137) (not mapNonEmpty!13167))
(check-sat)
