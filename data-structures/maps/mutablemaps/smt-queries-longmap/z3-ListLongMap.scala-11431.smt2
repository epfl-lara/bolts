; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133380 () Bool)

(assert start!133380)

(declare-fun b!1559107 () Bool)

(declare-fun e!868710 () Bool)

(declare-fun tp_is_empty!38469 () Bool)

(assert (=> b!1559107 (= e!868710 tp_is_empty!38469)))

(declare-fun b!1559108 () Bool)

(declare-fun res!1066300 () Bool)

(declare-fun e!868712 () Bool)

(assert (=> b!1559108 (=> (not res!1066300) (not e!868712))))

(declare-datatypes ((array!103617 0))(
  ( (array!103618 (arr!50000 (Array (_ BitVec 32) (_ BitVec 64))) (size!50551 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103617)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103617 (_ BitVec 32)) Bool)

(assert (=> b!1559108 (= res!1066300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559109 () Bool)

(declare-fun e!868711 () Bool)

(declare-fun e!868713 () Bool)

(declare-fun mapRes!59067 () Bool)

(assert (=> b!1559109 (= e!868711 (and e!868713 mapRes!59067))))

(declare-fun condMapEmpty!59067 () Bool)

(declare-datatypes ((V!59499 0))(
  ( (V!59500 (val!19318 Int)) )
))
(declare-datatypes ((ValueCell!18204 0))(
  ( (ValueCellFull!18204 (v!22066 V!59499)) (EmptyCell!18204) )
))
(declare-datatypes ((array!103619 0))(
  ( (array!103620 (arr!50001 (Array (_ BitVec 32) ValueCell!18204)) (size!50552 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103619)

(declare-fun mapDefault!59067 () ValueCell!18204)

(assert (=> b!1559109 (= condMapEmpty!59067 (= (arr!50001 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18204)) mapDefault!59067)))))

(declare-fun mapIsEmpty!59067 () Bool)

(assert (=> mapIsEmpty!59067 mapRes!59067))

(declare-fun b!1559110 () Bool)

(assert (=> b!1559110 (= e!868713 tp_is_empty!38469)))

(declare-fun b!1559111 () Bool)

(declare-fun res!1066301 () Bool)

(assert (=> b!1559111 (=> (not res!1066301) (not e!868712))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559111 (= res!1066301 (and (= (size!50552 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50551 _keys!637) (size!50552 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559112 () Bool)

(assert (=> b!1559112 (= e!868712 (bvsgt #b00000000000000000000000000000000 (size!50551 _keys!637)))))

(declare-fun res!1066302 () Bool)

(assert (=> start!133380 (=> (not res!1066302) (not e!868712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133380 (= res!1066302 (validMask!0 mask!947))))

(assert (=> start!133380 e!868712))

(assert (=> start!133380 true))

(declare-fun array_inv!38791 (array!103619) Bool)

(assert (=> start!133380 (and (array_inv!38791 _values!487) e!868711)))

(declare-fun array_inv!38792 (array!103617) Bool)

(assert (=> start!133380 (array_inv!38792 _keys!637)))

(declare-fun mapNonEmpty!59067 () Bool)

(declare-fun tp!112723 () Bool)

(assert (=> mapNonEmpty!59067 (= mapRes!59067 (and tp!112723 e!868710))))

(declare-fun mapRest!59067 () (Array (_ BitVec 32) ValueCell!18204))

(declare-fun mapValue!59067 () ValueCell!18204)

(declare-fun mapKey!59067 () (_ BitVec 32))

(assert (=> mapNonEmpty!59067 (= (arr!50001 _values!487) (store mapRest!59067 mapKey!59067 mapValue!59067))))

(assert (= (and start!133380 res!1066302) b!1559111))

(assert (= (and b!1559111 res!1066301) b!1559108))

(assert (= (and b!1559108 res!1066300) b!1559112))

(assert (= (and b!1559109 condMapEmpty!59067) mapIsEmpty!59067))

(assert (= (and b!1559109 (not condMapEmpty!59067)) mapNonEmpty!59067))

(get-info :version)

(assert (= (and mapNonEmpty!59067 ((_ is ValueCellFull!18204) mapValue!59067)) b!1559107))

(assert (= (and b!1559109 ((_ is ValueCellFull!18204) mapDefault!59067)) b!1559110))

(assert (= start!133380 b!1559109))

(declare-fun m!1435479 () Bool)

(assert (=> b!1559108 m!1435479))

(declare-fun m!1435481 () Bool)

(assert (=> start!133380 m!1435481))

(declare-fun m!1435483 () Bool)

(assert (=> start!133380 m!1435483))

(declare-fun m!1435485 () Bool)

(assert (=> start!133380 m!1435485))

(declare-fun m!1435487 () Bool)

(assert (=> mapNonEmpty!59067 m!1435487))

(check-sat (not start!133380) (not b!1559108) (not mapNonEmpty!59067) tp_is_empty!38469)
(check-sat)
(get-model)

(declare-fun d!162821 () Bool)

(assert (=> d!162821 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133380 d!162821))

(declare-fun d!162823 () Bool)

(assert (=> d!162823 (= (array_inv!38791 _values!487) (bvsge (size!50552 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133380 d!162823))

(declare-fun d!162825 () Bool)

(assert (=> d!162825 (= (array_inv!38792 _keys!637) (bvsge (size!50551 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133380 d!162825))

(declare-fun d!162827 () Bool)

(declare-fun res!1066316 () Bool)

(declare-fun e!868735 () Bool)

(assert (=> d!162827 (=> res!1066316 e!868735)))

(assert (=> d!162827 (= res!1066316 (bvsge #b00000000000000000000000000000000 (size!50551 _keys!637)))))

(assert (=> d!162827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!868735)))

(declare-fun bm!71829 () Bool)

(declare-fun call!71832 () Bool)

(assert (=> bm!71829 (= call!71832 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1559139 () Bool)

(declare-fun e!868736 () Bool)

(assert (=> b!1559139 (= e!868736 call!71832)))

(declare-fun b!1559140 () Bool)

(declare-fun e!868737 () Bool)

(assert (=> b!1559140 (= e!868736 e!868737)))

(declare-fun lt!670780 () (_ BitVec 64))

(assert (=> b!1559140 (= lt!670780 (select (arr!50000 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51830 0))(
  ( (Unit!51831) )
))
(declare-fun lt!670781 () Unit!51830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103617 (_ BitVec 64) (_ BitVec 32)) Unit!51830)

(assert (=> b!1559140 (= lt!670781 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!670780 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1559140 (arrayContainsKey!0 _keys!637 lt!670780 #b00000000000000000000000000000000)))

(declare-fun lt!670779 () Unit!51830)

(assert (=> b!1559140 (= lt!670779 lt!670781)))

(declare-fun res!1066317 () Bool)

(declare-datatypes ((SeekEntryResult!13515 0))(
  ( (MissingZero!13515 (index!56457 (_ BitVec 32))) (Found!13515 (index!56458 (_ BitVec 32))) (Intermediate!13515 (undefined!14327 Bool) (index!56459 (_ BitVec 32)) (x!139746 (_ BitVec 32))) (Undefined!13515) (MissingVacant!13515 (index!56460 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103617 (_ BitVec 32)) SeekEntryResult!13515)

(assert (=> b!1559140 (= res!1066317 (= (seekEntryOrOpen!0 (select (arr!50000 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13515 #b00000000000000000000000000000000)))))

(assert (=> b!1559140 (=> (not res!1066317) (not e!868737))))

(declare-fun b!1559141 () Bool)

(assert (=> b!1559141 (= e!868735 e!868736)))

(declare-fun c!144149 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1559141 (= c!144149 (validKeyInArray!0 (select (arr!50000 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1559142 () Bool)

(assert (=> b!1559142 (= e!868737 call!71832)))

(assert (= (and d!162827 (not res!1066316)) b!1559141))

(assert (= (and b!1559141 c!144149) b!1559140))

(assert (= (and b!1559141 (not c!144149)) b!1559139))

(assert (= (and b!1559140 res!1066317) b!1559142))

(assert (= (or b!1559142 b!1559139) bm!71829))

(declare-fun m!1435499 () Bool)

(assert (=> bm!71829 m!1435499))

(declare-fun m!1435501 () Bool)

(assert (=> b!1559140 m!1435501))

(declare-fun m!1435503 () Bool)

(assert (=> b!1559140 m!1435503))

(declare-fun m!1435505 () Bool)

(assert (=> b!1559140 m!1435505))

(assert (=> b!1559140 m!1435501))

(declare-fun m!1435507 () Bool)

(assert (=> b!1559140 m!1435507))

(assert (=> b!1559141 m!1435501))

(assert (=> b!1559141 m!1435501))

(declare-fun m!1435509 () Bool)

(assert (=> b!1559141 m!1435509))

(assert (=> b!1559108 d!162827))

(declare-fun b!1559149 () Bool)

(declare-fun e!868743 () Bool)

(assert (=> b!1559149 (= e!868743 tp_is_empty!38469)))

(declare-fun b!1559150 () Bool)

(declare-fun e!868742 () Bool)

(assert (=> b!1559150 (= e!868742 tp_is_empty!38469)))

(declare-fun condMapEmpty!59073 () Bool)

(declare-fun mapDefault!59073 () ValueCell!18204)

(assert (=> mapNonEmpty!59067 (= condMapEmpty!59073 (= mapRest!59067 ((as const (Array (_ BitVec 32) ValueCell!18204)) mapDefault!59073)))))

(declare-fun mapRes!59073 () Bool)

(assert (=> mapNonEmpty!59067 (= tp!112723 (and e!868742 mapRes!59073))))

(declare-fun mapIsEmpty!59073 () Bool)

(assert (=> mapIsEmpty!59073 mapRes!59073))

(declare-fun mapNonEmpty!59073 () Bool)

(declare-fun tp!112729 () Bool)

(assert (=> mapNonEmpty!59073 (= mapRes!59073 (and tp!112729 e!868743))))

(declare-fun mapRest!59073 () (Array (_ BitVec 32) ValueCell!18204))

(declare-fun mapValue!59073 () ValueCell!18204)

(declare-fun mapKey!59073 () (_ BitVec 32))

(assert (=> mapNonEmpty!59073 (= mapRest!59067 (store mapRest!59073 mapKey!59073 mapValue!59073))))

(assert (= (and mapNonEmpty!59067 condMapEmpty!59073) mapIsEmpty!59073))

(assert (= (and mapNonEmpty!59067 (not condMapEmpty!59073)) mapNonEmpty!59073))

(assert (= (and mapNonEmpty!59073 ((_ is ValueCellFull!18204) mapValue!59073)) b!1559149))

(assert (= (and mapNonEmpty!59067 ((_ is ValueCellFull!18204) mapDefault!59073)) b!1559150))

(declare-fun m!1435511 () Bool)

(assert (=> mapNonEmpty!59073 m!1435511))

(check-sat (not bm!71829) (not b!1559140) (not mapNonEmpty!59073) (not b!1559141) tp_is_empty!38469)
(check-sat)
