; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43132 () Bool)

(assert start!43132)

(declare-fun b!478113 () Bool)

(declare-fun e!281083 () Bool)

(declare-fun tp_is_empty!13551 () Bool)

(assert (=> b!478113 (= e!281083 tp_is_empty!13551)))

(declare-fun b!478114 () Bool)

(declare-fun res!285345 () Bool)

(declare-fun e!281087 () Bool)

(assert (=> b!478114 (=> (not res!285345) (not e!281087))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30741 0))(
  ( (array!30742 (arr!14779 (Array (_ BitVec 32) (_ BitVec 64))) (size!15137 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30741)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19139 0))(
  ( (V!19140 (val!6823 Int)) )
))
(declare-datatypes ((ValueCell!6414 0))(
  ( (ValueCellFull!6414 (v!9107 V!19139)) (EmptyCell!6414) )
))
(declare-datatypes ((array!30743 0))(
  ( (array!30744 (arr!14780 (Array (_ BitVec 32) ValueCell!6414)) (size!15138 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30743)

(assert (=> b!478114 (= res!285345 (and (= (size!15138 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15137 _keys!1874) (size!15138 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478115 () Bool)

(declare-fun e!281085 () Bool)

(declare-fun e!281084 () Bool)

(declare-fun mapRes!22009 () Bool)

(assert (=> b!478115 (= e!281085 (and e!281084 mapRes!22009))))

(declare-fun condMapEmpty!22009 () Bool)

(declare-fun mapDefault!22009 () ValueCell!6414)

(assert (=> b!478115 (= condMapEmpty!22009 (= (arr!14780 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6414)) mapDefault!22009)))))

(declare-fun mapNonEmpty!22009 () Bool)

(declare-fun tp!42484 () Bool)

(assert (=> mapNonEmpty!22009 (= mapRes!22009 (and tp!42484 e!281083))))

(declare-fun mapRest!22009 () (Array (_ BitVec 32) ValueCell!6414))

(declare-fun mapKey!22009 () (_ BitVec 32))

(declare-fun mapValue!22009 () ValueCell!6414)

(assert (=> mapNonEmpty!22009 (= (arr!14780 _values!1516) (store mapRest!22009 mapKey!22009 mapValue!22009))))

(declare-fun b!478116 () Bool)

(assert (=> b!478116 (= e!281087 (bvsgt #b00000000000000000000000000000000 (size!15137 _keys!1874)))))

(declare-fun b!478117 () Bool)

(declare-fun res!285344 () Bool)

(assert (=> b!478117 (=> (not res!285344) (not e!281087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30741 (_ BitVec 32)) Bool)

(assert (=> b!478117 (= res!285344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!285346 () Bool)

(assert (=> start!43132 (=> (not res!285346) (not e!281087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43132 (= res!285346 (validMask!0 mask!2352))))

(assert (=> start!43132 e!281087))

(assert (=> start!43132 true))

(declare-fun array_inv!10652 (array!30743) Bool)

(assert (=> start!43132 (and (array_inv!10652 _values!1516) e!281085)))

(declare-fun array_inv!10653 (array!30741) Bool)

(assert (=> start!43132 (array_inv!10653 _keys!1874)))

(declare-fun b!478118 () Bool)

(assert (=> b!478118 (= e!281084 tp_is_empty!13551)))

(declare-fun mapIsEmpty!22009 () Bool)

(assert (=> mapIsEmpty!22009 mapRes!22009))

(assert (= (and start!43132 res!285346) b!478114))

(assert (= (and b!478114 res!285345) b!478117))

(assert (= (and b!478117 res!285344) b!478116))

(assert (= (and b!478115 condMapEmpty!22009) mapIsEmpty!22009))

(assert (= (and b!478115 (not condMapEmpty!22009)) mapNonEmpty!22009))

(get-info :version)

(assert (= (and mapNonEmpty!22009 ((_ is ValueCellFull!6414) mapValue!22009)) b!478113))

(assert (= (and b!478115 ((_ is ValueCellFull!6414) mapDefault!22009)) b!478118))

(assert (= start!43132 b!478115))

(declare-fun m!460473 () Bool)

(assert (=> mapNonEmpty!22009 m!460473))

(declare-fun m!460475 () Bool)

(assert (=> b!478117 m!460475))

(declare-fun m!460477 () Bool)

(assert (=> start!43132 m!460477))

(declare-fun m!460479 () Bool)

(assert (=> start!43132 m!460479))

(declare-fun m!460481 () Bool)

(assert (=> start!43132 m!460481))

(check-sat (not start!43132) (not b!478117) (not mapNonEmpty!22009) tp_is_empty!13551)
(check-sat)
(get-model)

(declare-fun d!76461 () Bool)

(assert (=> d!76461 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43132 d!76461))

(declare-fun d!76463 () Bool)

(assert (=> d!76463 (= (array_inv!10652 _values!1516) (bvsge (size!15138 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43132 d!76463))

(declare-fun d!76465 () Bool)

(assert (=> d!76465 (= (array_inv!10653 _keys!1874) (bvsge (size!15137 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43132 d!76465))

(declare-fun d!76467 () Bool)

(declare-fun res!285361 () Bool)

(declare-fun e!281109 () Bool)

(assert (=> d!76467 (=> res!285361 e!281109)))

(assert (=> d!76467 (= res!285361 (bvsge #b00000000000000000000000000000000 (size!15137 _keys!1874)))))

(assert (=> d!76467 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!281109)))

(declare-fun bm!30826 () Bool)

(declare-fun call!30829 () Bool)

(assert (=> bm!30826 (= call!30829 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!478145 () Bool)

(declare-fun e!281111 () Bool)

(assert (=> b!478145 (= e!281109 e!281111)))

(declare-fun c!57586 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!478145 (= c!57586 (validKeyInArray!0 (select (arr!14779 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!478146 () Bool)

(declare-fun e!281110 () Bool)

(assert (=> b!478146 (= e!281111 e!281110)))

(declare-fun lt!217672 () (_ BitVec 64))

(assert (=> b!478146 (= lt!217672 (select (arr!14779 _keys!1874) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14026 0))(
  ( (Unit!14027) )
))
(declare-fun lt!217671 () Unit!14026)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30741 (_ BitVec 64) (_ BitVec 32)) Unit!14026)

(assert (=> b!478146 (= lt!217671 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217672 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!478146 (arrayContainsKey!0 _keys!1874 lt!217672 #b00000000000000000000000000000000)))

(declare-fun lt!217670 () Unit!14026)

(assert (=> b!478146 (= lt!217670 lt!217671)))

(declare-fun res!285360 () Bool)

(declare-datatypes ((SeekEntryResult!3551 0))(
  ( (MissingZero!3551 (index!16383 (_ BitVec 32))) (Found!3551 (index!16384 (_ BitVec 32))) (Intermediate!3551 (undefined!4363 Bool) (index!16385 (_ BitVec 32)) (x!44866 (_ BitVec 32))) (Undefined!3551) (MissingVacant!3551 (index!16386 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30741 (_ BitVec 32)) SeekEntryResult!3551)

(assert (=> b!478146 (= res!285360 (= (seekEntryOrOpen!0 (select (arr!14779 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3551 #b00000000000000000000000000000000)))))

(assert (=> b!478146 (=> (not res!285360) (not e!281110))))

(declare-fun b!478147 () Bool)

(assert (=> b!478147 (= e!281110 call!30829)))

(declare-fun b!478148 () Bool)

(assert (=> b!478148 (= e!281111 call!30829)))

(assert (= (and d!76467 (not res!285361)) b!478145))

(assert (= (and b!478145 c!57586) b!478146))

(assert (= (and b!478145 (not c!57586)) b!478148))

(assert (= (and b!478146 res!285360) b!478147))

(assert (= (or b!478147 b!478148) bm!30826))

(declare-fun m!460493 () Bool)

(assert (=> bm!30826 m!460493))

(declare-fun m!460495 () Bool)

(assert (=> b!478145 m!460495))

(assert (=> b!478145 m!460495))

(declare-fun m!460497 () Bool)

(assert (=> b!478145 m!460497))

(assert (=> b!478146 m!460495))

(declare-fun m!460499 () Bool)

(assert (=> b!478146 m!460499))

(declare-fun m!460501 () Bool)

(assert (=> b!478146 m!460501))

(assert (=> b!478146 m!460495))

(declare-fun m!460503 () Bool)

(assert (=> b!478146 m!460503))

(assert (=> b!478117 d!76467))

(declare-fun b!478155 () Bool)

(declare-fun e!281116 () Bool)

(assert (=> b!478155 (= e!281116 tp_is_empty!13551)))

(declare-fun mapNonEmpty!22015 () Bool)

(declare-fun mapRes!22015 () Bool)

(declare-fun tp!42490 () Bool)

(assert (=> mapNonEmpty!22015 (= mapRes!22015 (and tp!42490 e!281116))))

(declare-fun mapRest!22015 () (Array (_ BitVec 32) ValueCell!6414))

(declare-fun mapValue!22015 () ValueCell!6414)

(declare-fun mapKey!22015 () (_ BitVec 32))

(assert (=> mapNonEmpty!22015 (= mapRest!22009 (store mapRest!22015 mapKey!22015 mapValue!22015))))

(declare-fun mapIsEmpty!22015 () Bool)

(assert (=> mapIsEmpty!22015 mapRes!22015))

(declare-fun b!478156 () Bool)

(declare-fun e!281117 () Bool)

(assert (=> b!478156 (= e!281117 tp_is_empty!13551)))

(declare-fun condMapEmpty!22015 () Bool)

(declare-fun mapDefault!22015 () ValueCell!6414)

(assert (=> mapNonEmpty!22009 (= condMapEmpty!22015 (= mapRest!22009 ((as const (Array (_ BitVec 32) ValueCell!6414)) mapDefault!22015)))))

(assert (=> mapNonEmpty!22009 (= tp!42484 (and e!281117 mapRes!22015))))

(assert (= (and mapNonEmpty!22009 condMapEmpty!22015) mapIsEmpty!22015))

(assert (= (and mapNonEmpty!22009 (not condMapEmpty!22015)) mapNonEmpty!22015))

(assert (= (and mapNonEmpty!22015 ((_ is ValueCellFull!6414) mapValue!22015)) b!478155))

(assert (= (and mapNonEmpty!22009 ((_ is ValueCellFull!6414) mapDefault!22015)) b!478156))

(declare-fun m!460505 () Bool)

(assert (=> mapNonEmpty!22015 m!460505))

(check-sat (not mapNonEmpty!22015) (not b!478145) tp_is_empty!13551 (not b!478146) (not bm!30826))
(check-sat)
