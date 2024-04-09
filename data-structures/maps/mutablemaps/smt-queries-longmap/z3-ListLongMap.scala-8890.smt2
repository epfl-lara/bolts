; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107988 () Bool)

(assert start!107988)

(declare-fun b!1275318 () Bool)

(declare-fun e!728070 () Bool)

(declare-fun e!728066 () Bool)

(declare-fun mapRes!51401 () Bool)

(assert (=> b!1275318 (= e!728070 (and e!728066 mapRes!51401))))

(declare-fun condMapEmpty!51401 () Bool)

(declare-datatypes ((V!49443 0))(
  ( (V!49444 (val!16702 Int)) )
))
(declare-datatypes ((ValueCell!15729 0))(
  ( (ValueCellFull!15729 (v!19296 V!49443)) (EmptyCell!15729) )
))
(declare-datatypes ((array!83561 0))(
  ( (array!83562 (arr!40291 (Array (_ BitVec 32) ValueCell!15729)) (size!40842 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83561)

(declare-fun mapDefault!51401 () ValueCell!15729)

(assert (=> b!1275318 (= condMapEmpty!51401 (= (arr!40291 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15729)) mapDefault!51401)))))

(declare-fun b!1275319 () Bool)

(declare-fun tp_is_empty!33255 () Bool)

(assert (=> b!1275319 (= e!728066 tp_is_empty!33255)))

(declare-fun res!847757 () Bool)

(declare-fun e!728069 () Bool)

(assert (=> start!107988 (=> (not res!847757) (not e!728069))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107988 (= res!847757 (validMask!0 mask!1805))))

(assert (=> start!107988 e!728069))

(assert (=> start!107988 true))

(declare-fun array_inv!30577 (array!83561) Bool)

(assert (=> start!107988 (and (array_inv!30577 _values!1187) e!728070)))

(declare-datatypes ((array!83563 0))(
  ( (array!83564 (arr!40292 (Array (_ BitVec 32) (_ BitVec 64))) (size!40843 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83563)

(declare-fun array_inv!30578 (array!83563) Bool)

(assert (=> start!107988 (array_inv!30578 _keys!1427)))

(declare-fun b!1275320 () Bool)

(declare-fun res!847758 () Bool)

(assert (=> b!1275320 (=> (not res!847758) (not e!728069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83563 (_ BitVec 32)) Bool)

(assert (=> b!1275320 (= res!847758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275321 () Bool)

(declare-fun res!847759 () Bool)

(assert (=> b!1275321 (=> (not res!847759) (not e!728069))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275321 (= res!847759 (and (= (size!40842 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40843 _keys!1427) (size!40842 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275322 () Bool)

(declare-fun e!728067 () Bool)

(assert (=> b!1275322 (= e!728067 tp_is_empty!33255)))

(declare-fun mapIsEmpty!51401 () Bool)

(assert (=> mapIsEmpty!51401 mapRes!51401))

(declare-fun b!1275323 () Bool)

(assert (=> b!1275323 (= e!728069 (and (bvsle #b00000000000000000000000000000000 (size!40843 _keys!1427)) (bvsge (size!40843 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51401 () Bool)

(declare-fun tp!98160 () Bool)

(assert (=> mapNonEmpty!51401 (= mapRes!51401 (and tp!98160 e!728067))))

(declare-fun mapKey!51401 () (_ BitVec 32))

(declare-fun mapValue!51401 () ValueCell!15729)

(declare-fun mapRest!51401 () (Array (_ BitVec 32) ValueCell!15729))

(assert (=> mapNonEmpty!51401 (= (arr!40291 _values!1187) (store mapRest!51401 mapKey!51401 mapValue!51401))))

(assert (= (and start!107988 res!847757) b!1275321))

(assert (= (and b!1275321 res!847759) b!1275320))

(assert (= (and b!1275320 res!847758) b!1275323))

(assert (= (and b!1275318 condMapEmpty!51401) mapIsEmpty!51401))

(assert (= (and b!1275318 (not condMapEmpty!51401)) mapNonEmpty!51401))

(get-info :version)

(assert (= (and mapNonEmpty!51401 ((_ is ValueCellFull!15729) mapValue!51401)) b!1275322))

(assert (= (and b!1275318 ((_ is ValueCellFull!15729) mapDefault!51401)) b!1275319))

(assert (= start!107988 b!1275318))

(declare-fun m!1171617 () Bool)

(assert (=> start!107988 m!1171617))

(declare-fun m!1171619 () Bool)

(assert (=> start!107988 m!1171619))

(declare-fun m!1171621 () Bool)

(assert (=> start!107988 m!1171621))

(declare-fun m!1171623 () Bool)

(assert (=> b!1275320 m!1171623))

(declare-fun m!1171625 () Bool)

(assert (=> mapNonEmpty!51401 m!1171625))

(check-sat (not b!1275320) (not start!107988) (not mapNonEmpty!51401) tp_is_empty!33255)
(check-sat)
(get-model)

(declare-fun bm!62631 () Bool)

(declare-fun call!62634 () Bool)

(assert (=> bm!62631 (= call!62634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun b!1275350 () Bool)

(declare-fun e!728093 () Bool)

(declare-fun e!728094 () Bool)

(assert (=> b!1275350 (= e!728093 e!728094)))

(declare-fun lt!575285 () (_ BitVec 64))

(assert (=> b!1275350 (= lt!575285 (select (arr!40292 _keys!1427) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42297 0))(
  ( (Unit!42298) )
))
(declare-fun lt!575284 () Unit!42297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83563 (_ BitVec 64) (_ BitVec 32)) Unit!42297)

(assert (=> b!1275350 (= lt!575284 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575285 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1275350 (arrayContainsKey!0 _keys!1427 lt!575285 #b00000000000000000000000000000000)))

(declare-fun lt!575283 () Unit!42297)

(assert (=> b!1275350 (= lt!575283 lt!575284)))

(declare-fun res!847774 () Bool)

(declare-datatypes ((SeekEntryResult!9999 0))(
  ( (MissingZero!9999 (index!42366 (_ BitVec 32))) (Found!9999 (index!42367 (_ BitVec 32))) (Intermediate!9999 (undefined!10811 Bool) (index!42368 (_ BitVec 32)) (x!112949 (_ BitVec 32))) (Undefined!9999) (MissingVacant!9999 (index!42369 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83563 (_ BitVec 32)) SeekEntryResult!9999)

(assert (=> b!1275350 (= res!847774 (= (seekEntryOrOpen!0 (select (arr!40292 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!9999 #b00000000000000000000000000000000)))))

(assert (=> b!1275350 (=> (not res!847774) (not e!728094))))

(declare-fun b!1275351 () Bool)

(declare-fun e!728092 () Bool)

(assert (=> b!1275351 (= e!728092 e!728093)))

(declare-fun c!123864 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1275351 (= c!123864 (validKeyInArray!0 (select (arr!40292 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun d!140275 () Bool)

(declare-fun res!847773 () Bool)

(assert (=> d!140275 (=> res!847773 e!728092)))

(assert (=> d!140275 (= res!847773 (bvsge #b00000000000000000000000000000000 (size!40843 _keys!1427)))))

(assert (=> d!140275 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!728092)))

(declare-fun b!1275352 () Bool)

(assert (=> b!1275352 (= e!728094 call!62634)))

(declare-fun b!1275353 () Bool)

(assert (=> b!1275353 (= e!728093 call!62634)))

(assert (= (and d!140275 (not res!847773)) b!1275351))

(assert (= (and b!1275351 c!123864) b!1275350))

(assert (= (and b!1275351 (not c!123864)) b!1275353))

(assert (= (and b!1275350 res!847774) b!1275352))

(assert (= (or b!1275352 b!1275353) bm!62631))

(declare-fun m!1171637 () Bool)

(assert (=> bm!62631 m!1171637))

(declare-fun m!1171639 () Bool)

(assert (=> b!1275350 m!1171639))

(declare-fun m!1171641 () Bool)

(assert (=> b!1275350 m!1171641))

(declare-fun m!1171643 () Bool)

(assert (=> b!1275350 m!1171643))

(assert (=> b!1275350 m!1171639))

(declare-fun m!1171645 () Bool)

(assert (=> b!1275350 m!1171645))

(assert (=> b!1275351 m!1171639))

(assert (=> b!1275351 m!1171639))

(declare-fun m!1171647 () Bool)

(assert (=> b!1275351 m!1171647))

(assert (=> b!1275320 d!140275))

(declare-fun d!140277 () Bool)

(assert (=> d!140277 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!107988 d!140277))

(declare-fun d!140279 () Bool)

(assert (=> d!140279 (= (array_inv!30577 _values!1187) (bvsge (size!40842 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!107988 d!140279))

(declare-fun d!140281 () Bool)

(assert (=> d!140281 (= (array_inv!30578 _keys!1427) (bvsge (size!40843 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!107988 d!140281))

(declare-fun condMapEmpty!51407 () Bool)

(declare-fun mapDefault!51407 () ValueCell!15729)

(assert (=> mapNonEmpty!51401 (= condMapEmpty!51407 (= mapRest!51401 ((as const (Array (_ BitVec 32) ValueCell!15729)) mapDefault!51407)))))

(declare-fun e!728100 () Bool)

(declare-fun mapRes!51407 () Bool)

(assert (=> mapNonEmpty!51401 (= tp!98160 (and e!728100 mapRes!51407))))

(declare-fun b!1275361 () Bool)

(assert (=> b!1275361 (= e!728100 tp_is_empty!33255)))

(declare-fun b!1275360 () Bool)

(declare-fun e!728099 () Bool)

(assert (=> b!1275360 (= e!728099 tp_is_empty!33255)))

(declare-fun mapIsEmpty!51407 () Bool)

(assert (=> mapIsEmpty!51407 mapRes!51407))

(declare-fun mapNonEmpty!51407 () Bool)

(declare-fun tp!98166 () Bool)

(assert (=> mapNonEmpty!51407 (= mapRes!51407 (and tp!98166 e!728099))))

(declare-fun mapKey!51407 () (_ BitVec 32))

(declare-fun mapRest!51407 () (Array (_ BitVec 32) ValueCell!15729))

(declare-fun mapValue!51407 () ValueCell!15729)

(assert (=> mapNonEmpty!51407 (= mapRest!51401 (store mapRest!51407 mapKey!51407 mapValue!51407))))

(assert (= (and mapNonEmpty!51401 condMapEmpty!51407) mapIsEmpty!51407))

(assert (= (and mapNonEmpty!51401 (not condMapEmpty!51407)) mapNonEmpty!51407))

(assert (= (and mapNonEmpty!51407 ((_ is ValueCellFull!15729) mapValue!51407)) b!1275360))

(assert (= (and mapNonEmpty!51401 ((_ is ValueCellFull!15729) mapDefault!51407)) b!1275361))

(declare-fun m!1171649 () Bool)

(assert (=> mapNonEmpty!51407 m!1171649))

(check-sat (not mapNonEmpty!51407) (not bm!62631) (not b!1275350) tp_is_empty!33255 (not b!1275351))
(check-sat)
