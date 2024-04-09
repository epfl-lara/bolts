; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112954 () Bool)

(assert start!112954)

(declare-fun mapNonEmpty!57196 () Bool)

(declare-fun mapRes!57196 () Bool)

(declare-fun tp!108896 () Bool)

(declare-fun e!762370 () Bool)

(assert (=> mapNonEmpty!57196 (= mapRes!57196 (and tp!108896 e!762370))))

(declare-fun mapKey!57196 () (_ BitVec 32))

(declare-datatypes ((V!54435 0))(
  ( (V!54436 (val!18574 Int)) )
))
(declare-datatypes ((ValueCell!17601 0))(
  ( (ValueCellFull!17601 (v!21219 V!54435)) (EmptyCell!17601) )
))
(declare-fun mapValue!57196 () ValueCell!17601)

(declare-datatypes ((array!90829 0))(
  ( (array!90830 (arr!43869 (Array (_ BitVec 32) ValueCell!17601)) (size!44420 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90829)

(declare-fun mapRest!57196 () (Array (_ BitVec 32) ValueCell!17601))

(assert (=> mapNonEmpty!57196 (= (arr!43869 _values!1303) (store mapRest!57196 mapKey!57196 mapValue!57196))))

(declare-fun res!888236 () Bool)

(declare-fun e!762368 () Bool)

(assert (=> start!112954 (=> (not res!888236) (not e!762368))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112954 (= res!888236 (validMask!0 mask!1977))))

(assert (=> start!112954 e!762368))

(assert (=> start!112954 true))

(declare-fun e!762371 () Bool)

(declare-fun array_inv!33007 (array!90829) Bool)

(assert (=> start!112954 (and (array_inv!33007 _values!1303) e!762371)))

(declare-datatypes ((array!90831 0))(
  ( (array!90832 (arr!43870 (Array (_ BitVec 32) (_ BitVec 64))) (size!44421 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90831)

(declare-fun array_inv!33008 (array!90831) Bool)

(assert (=> start!112954 (array_inv!33008 _keys!1571)))

(declare-fun mapIsEmpty!57196 () Bool)

(assert (=> mapIsEmpty!57196 mapRes!57196))

(declare-fun b!1338688 () Bool)

(declare-fun e!762372 () Bool)

(assert (=> b!1338688 (= e!762371 (and e!762372 mapRes!57196))))

(declare-fun condMapEmpty!57196 () Bool)

(declare-fun mapDefault!57196 () ValueCell!17601)

(assert (=> b!1338688 (= condMapEmpty!57196 (= (arr!43869 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17601)) mapDefault!57196)))))

(declare-fun b!1338689 () Bool)

(declare-fun res!888237 () Bool)

(assert (=> b!1338689 (=> (not res!888237) (not e!762368))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338689 (= res!888237 (and (= (size!44420 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44421 _keys!1571) (size!44420 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338690 () Bool)

(assert (=> b!1338690 (= e!762368 (and (bvsle #b00000000000000000000000000000000 (size!44421 _keys!1571)) (bvsge (size!44421 _keys!1571) #b01111111111111111111111111111111)))))

(declare-fun b!1338691 () Bool)

(declare-fun tp_is_empty!36999 () Bool)

(assert (=> b!1338691 (= e!762370 tp_is_empty!36999)))

(declare-fun b!1338692 () Bool)

(assert (=> b!1338692 (= e!762372 tp_is_empty!36999)))

(declare-fun b!1338693 () Bool)

(declare-fun res!888235 () Bool)

(assert (=> b!1338693 (=> (not res!888235) (not e!762368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90831 (_ BitVec 32)) Bool)

(assert (=> b!1338693 (= res!888235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!112954 res!888236) b!1338689))

(assert (= (and b!1338689 res!888237) b!1338693))

(assert (= (and b!1338693 res!888235) b!1338690))

(assert (= (and b!1338688 condMapEmpty!57196) mapIsEmpty!57196))

(assert (= (and b!1338688 (not condMapEmpty!57196)) mapNonEmpty!57196))

(get-info :version)

(assert (= (and mapNonEmpty!57196 ((_ is ValueCellFull!17601) mapValue!57196)) b!1338691))

(assert (= (and b!1338688 ((_ is ValueCellFull!17601) mapDefault!57196)) b!1338692))

(assert (= start!112954 b!1338688))

(declare-fun m!1227017 () Bool)

(assert (=> mapNonEmpty!57196 m!1227017))

(declare-fun m!1227019 () Bool)

(assert (=> start!112954 m!1227019))

(declare-fun m!1227021 () Bool)

(assert (=> start!112954 m!1227021))

(declare-fun m!1227023 () Bool)

(assert (=> start!112954 m!1227023))

(declare-fun m!1227025 () Bool)

(assert (=> b!1338693 m!1227025))

(check-sat (not b!1338693) (not start!112954) (not mapNonEmpty!57196) tp_is_empty!36999)
(check-sat)
(get-model)

(declare-fun b!1338720 () Bool)

(declare-fun e!762395 () Bool)

(declare-fun call!65027 () Bool)

(assert (=> b!1338720 (= e!762395 call!65027)))

(declare-fun b!1338721 () Bool)

(declare-fun e!762396 () Bool)

(assert (=> b!1338721 (= e!762395 e!762396)))

(declare-fun lt!593731 () (_ BitVec 64))

(assert (=> b!1338721 (= lt!593731 (select (arr!43870 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43915 0))(
  ( (Unit!43916) )
))
(declare-fun lt!593732 () Unit!43915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90831 (_ BitVec 64) (_ BitVec 32)) Unit!43915)

(assert (=> b!1338721 (= lt!593732 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!593731 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1338721 (arrayContainsKey!0 _keys!1571 lt!593731 #b00000000000000000000000000000000)))

(declare-fun lt!593733 () Unit!43915)

(assert (=> b!1338721 (= lt!593733 lt!593732)))

(declare-fun res!888251 () Bool)

(declare-datatypes ((SeekEntryResult!10050 0))(
  ( (MissingZero!10050 (index!42570 (_ BitVec 32))) (Found!10050 (index!42571 (_ BitVec 32))) (Intermediate!10050 (undefined!10862 Bool) (index!42572 (_ BitVec 32)) (x!119582 (_ BitVec 32))) (Undefined!10050) (MissingVacant!10050 (index!42573 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90831 (_ BitVec 32)) SeekEntryResult!10050)

(assert (=> b!1338721 (= res!888251 (= (seekEntryOrOpen!0 (select (arr!43870 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10050 #b00000000000000000000000000000000)))))

(assert (=> b!1338721 (=> (not res!888251) (not e!762396))))

(declare-fun b!1338722 () Bool)

(declare-fun e!762394 () Bool)

(assert (=> b!1338722 (= e!762394 e!762395)))

(declare-fun c!126234 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1338722 (= c!126234 (validKeyInArray!0 (select (arr!43870 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun bm!65024 () Bool)

(assert (=> bm!65024 (= call!65027 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun d!144007 () Bool)

(declare-fun res!888252 () Bool)

(assert (=> d!144007 (=> res!888252 e!762394)))

(assert (=> d!144007 (= res!888252 (bvsge #b00000000000000000000000000000000 (size!44421 _keys!1571)))))

(assert (=> d!144007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!762394)))

(declare-fun b!1338723 () Bool)

(assert (=> b!1338723 (= e!762396 call!65027)))

(assert (= (and d!144007 (not res!888252)) b!1338722))

(assert (= (and b!1338722 c!126234) b!1338721))

(assert (= (and b!1338722 (not c!126234)) b!1338720))

(assert (= (and b!1338721 res!888251) b!1338723))

(assert (= (or b!1338723 b!1338720) bm!65024))

(declare-fun m!1227037 () Bool)

(assert (=> b!1338721 m!1227037))

(declare-fun m!1227039 () Bool)

(assert (=> b!1338721 m!1227039))

(declare-fun m!1227041 () Bool)

(assert (=> b!1338721 m!1227041))

(assert (=> b!1338721 m!1227037))

(declare-fun m!1227043 () Bool)

(assert (=> b!1338721 m!1227043))

(assert (=> b!1338722 m!1227037))

(assert (=> b!1338722 m!1227037))

(declare-fun m!1227045 () Bool)

(assert (=> b!1338722 m!1227045))

(declare-fun m!1227047 () Bool)

(assert (=> bm!65024 m!1227047))

(assert (=> b!1338693 d!144007))

(declare-fun d!144009 () Bool)

(assert (=> d!144009 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!112954 d!144009))

(declare-fun d!144011 () Bool)

(assert (=> d!144011 (= (array_inv!33007 _values!1303) (bvsge (size!44420 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!112954 d!144011))

(declare-fun d!144013 () Bool)

(assert (=> d!144013 (= (array_inv!33008 _keys!1571) (bvsge (size!44421 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!112954 d!144013))

(declare-fun b!1338730 () Bool)

(declare-fun e!762401 () Bool)

(assert (=> b!1338730 (= e!762401 tp_is_empty!36999)))

(declare-fun condMapEmpty!57202 () Bool)

(declare-fun mapDefault!57202 () ValueCell!17601)

(assert (=> mapNonEmpty!57196 (= condMapEmpty!57202 (= mapRest!57196 ((as const (Array (_ BitVec 32) ValueCell!17601)) mapDefault!57202)))))

(declare-fun e!762402 () Bool)

(declare-fun mapRes!57202 () Bool)

(assert (=> mapNonEmpty!57196 (= tp!108896 (and e!762402 mapRes!57202))))

(declare-fun mapIsEmpty!57202 () Bool)

(assert (=> mapIsEmpty!57202 mapRes!57202))

(declare-fun b!1338731 () Bool)

(assert (=> b!1338731 (= e!762402 tp_is_empty!36999)))

(declare-fun mapNonEmpty!57202 () Bool)

(declare-fun tp!108902 () Bool)

(assert (=> mapNonEmpty!57202 (= mapRes!57202 (and tp!108902 e!762401))))

(declare-fun mapKey!57202 () (_ BitVec 32))

(declare-fun mapRest!57202 () (Array (_ BitVec 32) ValueCell!17601))

(declare-fun mapValue!57202 () ValueCell!17601)

(assert (=> mapNonEmpty!57202 (= mapRest!57196 (store mapRest!57202 mapKey!57202 mapValue!57202))))

(assert (= (and mapNonEmpty!57196 condMapEmpty!57202) mapIsEmpty!57202))

(assert (= (and mapNonEmpty!57196 (not condMapEmpty!57202)) mapNonEmpty!57202))

(assert (= (and mapNonEmpty!57202 ((_ is ValueCellFull!17601) mapValue!57202)) b!1338730))

(assert (= (and mapNonEmpty!57196 ((_ is ValueCellFull!17601) mapDefault!57202)) b!1338731))

(declare-fun m!1227049 () Bool)

(assert (=> mapNonEmpty!57202 m!1227049))

(check-sat (not mapNonEmpty!57202) (not b!1338721) (not bm!65024) tp_is_empty!36999 (not b!1338722))
(check-sat)
