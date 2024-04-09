; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112082 () Bool)

(assert start!112082)

(declare-fun b!1327324 () Bool)

(declare-fun res!880868 () Bool)

(declare-fun e!756635 () Bool)

(assert (=> b!1327324 (=> (not res!880868) (not e!756635))))

(declare-datatypes ((array!89631 0))(
  ( (array!89632 (arr!43280 (Array (_ BitVec 32) (_ BitVec 64))) (size!43831 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89631)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89631 (_ BitVec 32)) Bool)

(assert (=> b!1327324 (= res!880868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327326 () Bool)

(declare-fun e!756634 () Bool)

(declare-fun tp_is_empty!36381 () Bool)

(assert (=> b!1327326 (= e!756634 tp_is_empty!36381)))

(declare-fun mapIsEmpty!56236 () Bool)

(declare-fun mapRes!56236 () Bool)

(assert (=> mapIsEmpty!56236 mapRes!56236))

(declare-fun b!1327327 () Bool)

(declare-fun e!756632 () Bool)

(assert (=> b!1327327 (= e!756632 (and e!756634 mapRes!56236))))

(declare-fun condMapEmpty!56236 () Bool)

(declare-datatypes ((V!53611 0))(
  ( (V!53612 (val!18265 Int)) )
))
(declare-datatypes ((ValueCell!17292 0))(
  ( (ValueCellFull!17292 (v!20899 V!53611)) (EmptyCell!17292) )
))
(declare-datatypes ((array!89633 0))(
  ( (array!89634 (arr!43281 (Array (_ BitVec 32) ValueCell!17292)) (size!43832 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89633)

(declare-fun mapDefault!56236 () ValueCell!17292)

(assert (=> b!1327327 (= condMapEmpty!56236 (= (arr!43281 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17292)) mapDefault!56236)))))

(declare-fun b!1327328 () Bool)

(declare-fun e!756631 () Bool)

(assert (=> b!1327328 (= e!756631 tp_is_empty!36381)))

(declare-fun b!1327329 () Bool)

(declare-fun res!880869 () Bool)

(assert (=> b!1327329 (=> (not res!880869) (not e!756635))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327329 (= res!880869 (and (= (size!43832 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43831 _keys!1590) (size!43832 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56236 () Bool)

(declare-fun tp!107144 () Bool)

(assert (=> mapNonEmpty!56236 (= mapRes!56236 (and tp!107144 e!756631))))

(declare-fun mapValue!56236 () ValueCell!17292)

(declare-fun mapRest!56236 () (Array (_ BitVec 32) ValueCell!17292))

(declare-fun mapKey!56236 () (_ BitVec 32))

(assert (=> mapNonEmpty!56236 (= (arr!43281 _values!1320) (store mapRest!56236 mapKey!56236 mapValue!56236))))

(declare-fun b!1327325 () Bool)

(assert (=> b!1327325 (= e!756635 (and (bvsle #b00000000000000000000000000000000 (size!43831 _keys!1590)) (bvsge (size!43831 _keys!1590) #b01111111111111111111111111111111)))))

(declare-fun res!880867 () Bool)

(assert (=> start!112082 (=> (not res!880867) (not e!756635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112082 (= res!880867 (validMask!0 mask!1998))))

(assert (=> start!112082 e!756635))

(assert (=> start!112082 true))

(declare-fun array_inv!32611 (array!89633) Bool)

(assert (=> start!112082 (and (array_inv!32611 _values!1320) e!756632)))

(declare-fun array_inv!32612 (array!89631) Bool)

(assert (=> start!112082 (array_inv!32612 _keys!1590)))

(assert (= (and start!112082 res!880867) b!1327329))

(assert (= (and b!1327329 res!880869) b!1327324))

(assert (= (and b!1327324 res!880868) b!1327325))

(assert (= (and b!1327327 condMapEmpty!56236) mapIsEmpty!56236))

(assert (= (and b!1327327 (not condMapEmpty!56236)) mapNonEmpty!56236))

(get-info :version)

(assert (= (and mapNonEmpty!56236 ((_ is ValueCellFull!17292) mapValue!56236)) b!1327328))

(assert (= (and b!1327327 ((_ is ValueCellFull!17292) mapDefault!56236)) b!1327326))

(assert (= start!112082 b!1327327))

(declare-fun m!1216693 () Bool)

(assert (=> b!1327324 m!1216693))

(declare-fun m!1216695 () Bool)

(assert (=> mapNonEmpty!56236 m!1216695))

(declare-fun m!1216697 () Bool)

(assert (=> start!112082 m!1216697))

(declare-fun m!1216699 () Bool)

(assert (=> start!112082 m!1216699))

(declare-fun m!1216701 () Bool)

(assert (=> start!112082 m!1216701))

(check-sat (not start!112082) (not b!1327324) (not mapNonEmpty!56236) tp_is_empty!36381)
(check-sat)
(get-model)

(declare-fun d!143233 () Bool)

(assert (=> d!143233 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112082 d!143233))

(declare-fun d!143235 () Bool)

(assert (=> d!143235 (= (array_inv!32611 _values!1320) (bvsge (size!43832 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112082 d!143235))

(declare-fun d!143237 () Bool)

(assert (=> d!143237 (= (array_inv!32612 _keys!1590) (bvsge (size!43831 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112082 d!143237))

(declare-fun b!1327356 () Bool)

(declare-fun e!756657 () Bool)

(declare-fun call!64812 () Bool)

(assert (=> b!1327356 (= e!756657 call!64812)))

(declare-fun bm!64809 () Bool)

(assert (=> bm!64809 (= call!64812 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun b!1327357 () Bool)

(declare-fun e!756658 () Bool)

(assert (=> b!1327357 (= e!756657 e!756658)))

(declare-fun lt!590642 () (_ BitVec 64))

(assert (=> b!1327357 (= lt!590642 (select (arr!43280 _keys!1590) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43663 0))(
  ( (Unit!43664) )
))
(declare-fun lt!590643 () Unit!43663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89631 (_ BitVec 64) (_ BitVec 32)) Unit!43663)

(assert (=> b!1327357 (= lt!590643 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!590642 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1327357 (arrayContainsKey!0 _keys!1590 lt!590642 #b00000000000000000000000000000000)))

(declare-fun lt!590644 () Unit!43663)

(assert (=> b!1327357 (= lt!590644 lt!590643)))

(declare-fun res!880883 () Bool)

(declare-datatypes ((SeekEntryResult!10041 0))(
  ( (MissingZero!10041 (index!42534 (_ BitVec 32))) (Found!10041 (index!42535 (_ BitVec 32))) (Intermediate!10041 (undefined!10853 Bool) (index!42536 (_ BitVec 32)) (x!118348 (_ BitVec 32))) (Undefined!10041) (MissingVacant!10041 (index!42537 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89631 (_ BitVec 32)) SeekEntryResult!10041)

(assert (=> b!1327357 (= res!880883 (= (seekEntryOrOpen!0 (select (arr!43280 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10041 #b00000000000000000000000000000000)))))

(assert (=> b!1327357 (=> (not res!880883) (not e!756658))))

(declare-fun b!1327358 () Bool)

(declare-fun e!756659 () Bool)

(assert (=> b!1327358 (= e!756659 e!756657)))

(declare-fun c!125837 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1327358 (= c!125837 (validKeyInArray!0 (select (arr!43280 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun d!143239 () Bool)

(declare-fun res!880884 () Bool)

(assert (=> d!143239 (=> res!880884 e!756659)))

(assert (=> d!143239 (= res!880884 (bvsge #b00000000000000000000000000000000 (size!43831 _keys!1590)))))

(assert (=> d!143239 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!756659)))

(declare-fun b!1327359 () Bool)

(assert (=> b!1327359 (= e!756658 call!64812)))

(assert (= (and d!143239 (not res!880884)) b!1327358))

(assert (= (and b!1327358 c!125837) b!1327357))

(assert (= (and b!1327358 (not c!125837)) b!1327356))

(assert (= (and b!1327357 res!880883) b!1327359))

(assert (= (or b!1327359 b!1327356) bm!64809))

(declare-fun m!1216713 () Bool)

(assert (=> bm!64809 m!1216713))

(declare-fun m!1216715 () Bool)

(assert (=> b!1327357 m!1216715))

(declare-fun m!1216717 () Bool)

(assert (=> b!1327357 m!1216717))

(declare-fun m!1216719 () Bool)

(assert (=> b!1327357 m!1216719))

(assert (=> b!1327357 m!1216715))

(declare-fun m!1216721 () Bool)

(assert (=> b!1327357 m!1216721))

(assert (=> b!1327358 m!1216715))

(assert (=> b!1327358 m!1216715))

(declare-fun m!1216723 () Bool)

(assert (=> b!1327358 m!1216723))

(assert (=> b!1327324 d!143239))

(declare-fun mapIsEmpty!56242 () Bool)

(declare-fun mapRes!56242 () Bool)

(assert (=> mapIsEmpty!56242 mapRes!56242))

(declare-fun mapNonEmpty!56242 () Bool)

(declare-fun tp!107150 () Bool)

(declare-fun e!756664 () Bool)

(assert (=> mapNonEmpty!56242 (= mapRes!56242 (and tp!107150 e!756664))))

(declare-fun mapKey!56242 () (_ BitVec 32))

(declare-fun mapValue!56242 () ValueCell!17292)

(declare-fun mapRest!56242 () (Array (_ BitVec 32) ValueCell!17292))

(assert (=> mapNonEmpty!56242 (= mapRest!56236 (store mapRest!56242 mapKey!56242 mapValue!56242))))

(declare-fun b!1327367 () Bool)

(declare-fun e!756665 () Bool)

(assert (=> b!1327367 (= e!756665 tp_is_empty!36381)))

(declare-fun condMapEmpty!56242 () Bool)

(declare-fun mapDefault!56242 () ValueCell!17292)

(assert (=> mapNonEmpty!56236 (= condMapEmpty!56242 (= mapRest!56236 ((as const (Array (_ BitVec 32) ValueCell!17292)) mapDefault!56242)))))

(assert (=> mapNonEmpty!56236 (= tp!107144 (and e!756665 mapRes!56242))))

(declare-fun b!1327366 () Bool)

(assert (=> b!1327366 (= e!756664 tp_is_empty!36381)))

(assert (= (and mapNonEmpty!56236 condMapEmpty!56242) mapIsEmpty!56242))

(assert (= (and mapNonEmpty!56236 (not condMapEmpty!56242)) mapNonEmpty!56242))

(assert (= (and mapNonEmpty!56242 ((_ is ValueCellFull!17292) mapValue!56242)) b!1327366))

(assert (= (and mapNonEmpty!56236 ((_ is ValueCellFull!17292) mapDefault!56242)) b!1327367))

(declare-fun m!1216725 () Bool)

(assert (=> mapNonEmpty!56242 m!1216725))

(check-sat tp_is_empty!36381 (not bm!64809) (not b!1327357) (not mapNonEmpty!56242) (not b!1327358))
(check-sat)
