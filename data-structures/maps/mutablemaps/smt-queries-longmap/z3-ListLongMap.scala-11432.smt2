; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133394 () Bool)

(assert start!133394)

(declare-fun res!1066334 () Bool)

(declare-fun e!868770 () Bool)

(assert (=> start!133394 (=> (not res!1066334) (not e!868770))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133394 (= res!1066334 (validMask!0 mask!947))))

(assert (=> start!133394 e!868770))

(assert (=> start!133394 true))

(declare-datatypes ((V!59507 0))(
  ( (V!59508 (val!19321 Int)) )
))
(declare-datatypes ((ValueCell!18207 0))(
  ( (ValueCellFull!18207 (v!22069 V!59507)) (EmptyCell!18207) )
))
(declare-datatypes ((array!103629 0))(
  ( (array!103630 (arr!50005 (Array (_ BitVec 32) ValueCell!18207)) (size!50556 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103629)

(declare-fun e!868769 () Bool)

(declare-fun array_inv!38795 (array!103629) Bool)

(assert (=> start!133394 (and (array_inv!38795 _values!487) e!868769)))

(declare-datatypes ((array!103631 0))(
  ( (array!103632 (arr!50006 (Array (_ BitVec 32) (_ BitVec 64))) (size!50557 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103631)

(declare-fun array_inv!38796 (array!103631) Bool)

(assert (=> start!133394 (array_inv!38796 _keys!637)))

(declare-fun mapIsEmpty!59079 () Bool)

(declare-fun mapRes!59079 () Bool)

(assert (=> mapIsEmpty!59079 mapRes!59079))

(declare-fun b!1559181 () Bool)

(declare-fun e!868773 () Bool)

(declare-fun tp_is_empty!38475 () Bool)

(assert (=> b!1559181 (= e!868773 tp_is_empty!38475)))

(declare-fun b!1559182 () Bool)

(declare-fun e!868771 () Bool)

(assert (=> b!1559182 (= e!868769 (and e!868771 mapRes!59079))))

(declare-fun condMapEmpty!59079 () Bool)

(declare-fun mapDefault!59079 () ValueCell!18207)

(assert (=> b!1559182 (= condMapEmpty!59079 (= (arr!50005 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18207)) mapDefault!59079)))))

(declare-fun b!1559183 () Bool)

(assert (=> b!1559183 (= e!868771 tp_is_empty!38475)))

(declare-fun mapNonEmpty!59079 () Bool)

(declare-fun tp!112735 () Bool)

(assert (=> mapNonEmpty!59079 (= mapRes!59079 (and tp!112735 e!868773))))

(declare-fun mapKey!59079 () (_ BitVec 32))

(declare-fun mapRest!59079 () (Array (_ BitVec 32) ValueCell!18207))

(declare-fun mapValue!59079 () ValueCell!18207)

(assert (=> mapNonEmpty!59079 (= (arr!50005 _values!487) (store mapRest!59079 mapKey!59079 mapValue!59079))))

(declare-fun b!1559184 () Bool)

(assert (=> b!1559184 (= e!868770 (and (bvsle #b00000000000000000000000000000000 (size!50557 _keys!637)) (bvsge (size!50557 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun b!1559185 () Bool)

(declare-fun res!1066335 () Bool)

(assert (=> b!1559185 (=> (not res!1066335) (not e!868770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103631 (_ BitVec 32)) Bool)

(assert (=> b!1559185 (= res!1066335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559186 () Bool)

(declare-fun res!1066333 () Bool)

(assert (=> b!1559186 (=> (not res!1066333) (not e!868770))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559186 (= res!1066333 (and (= (size!50556 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50557 _keys!637) (size!50556 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133394 res!1066334) b!1559186))

(assert (= (and b!1559186 res!1066333) b!1559185))

(assert (= (and b!1559185 res!1066335) b!1559184))

(assert (= (and b!1559182 condMapEmpty!59079) mapIsEmpty!59079))

(assert (= (and b!1559182 (not condMapEmpty!59079)) mapNonEmpty!59079))

(get-info :version)

(assert (= (and mapNonEmpty!59079 ((_ is ValueCellFull!18207) mapValue!59079)) b!1559181))

(assert (= (and b!1559182 ((_ is ValueCellFull!18207) mapDefault!59079)) b!1559183))

(assert (= start!133394 b!1559182))

(declare-fun m!1435523 () Bool)

(assert (=> start!133394 m!1435523))

(declare-fun m!1435525 () Bool)

(assert (=> start!133394 m!1435525))

(declare-fun m!1435527 () Bool)

(assert (=> start!133394 m!1435527))

(declare-fun m!1435529 () Bool)

(assert (=> mapNonEmpty!59079 m!1435529))

(declare-fun m!1435531 () Bool)

(assert (=> b!1559185 m!1435531))

(check-sat (not start!133394) (not b!1559185) (not mapNonEmpty!59079) tp_is_empty!38475)
(check-sat)
(get-model)

(declare-fun d!162831 () Bool)

(assert (=> d!162831 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133394 d!162831))

(declare-fun d!162833 () Bool)

(assert (=> d!162833 (= (array_inv!38795 _values!487) (bvsge (size!50556 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133394 d!162833))

(declare-fun d!162835 () Bool)

(assert (=> d!162835 (= (array_inv!38796 _keys!637) (bvsge (size!50557 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133394 d!162835))

(declare-fun b!1559213 () Bool)

(declare-fun e!868796 () Bool)

(declare-fun e!868795 () Bool)

(assert (=> b!1559213 (= e!868796 e!868795)))

(declare-fun c!144152 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1559213 (= c!144152 (validKeyInArray!0 (select (arr!50006 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1559214 () Bool)

(declare-fun call!71835 () Bool)

(assert (=> b!1559214 (= e!868795 call!71835)))

(declare-fun bm!71832 () Bool)

(assert (=> bm!71832 (= call!71835 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1559215 () Bool)

(declare-fun e!868797 () Bool)

(assert (=> b!1559215 (= e!868797 call!71835)))

(declare-fun b!1559216 () Bool)

(assert (=> b!1559216 (= e!868795 e!868797)))

(declare-fun lt!670789 () (_ BitVec 64))

(assert (=> b!1559216 (= lt!670789 (select (arr!50006 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51832 0))(
  ( (Unit!51833) )
))
(declare-fun lt!670790 () Unit!51832)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103631 (_ BitVec 64) (_ BitVec 32)) Unit!51832)

(assert (=> b!1559216 (= lt!670790 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!670789 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1559216 (arrayContainsKey!0 _keys!637 lt!670789 #b00000000000000000000000000000000)))

(declare-fun lt!670788 () Unit!51832)

(assert (=> b!1559216 (= lt!670788 lt!670790)))

(declare-fun res!1066350 () Bool)

(declare-datatypes ((SeekEntryResult!13516 0))(
  ( (MissingZero!13516 (index!56461 (_ BitVec 32))) (Found!13516 (index!56462 (_ BitVec 32))) (Intermediate!13516 (undefined!14328 Bool) (index!56463 (_ BitVec 32)) (x!139757 (_ BitVec 32))) (Undefined!13516) (MissingVacant!13516 (index!56464 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103631 (_ BitVec 32)) SeekEntryResult!13516)

(assert (=> b!1559216 (= res!1066350 (= (seekEntryOrOpen!0 (select (arr!50006 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13516 #b00000000000000000000000000000000)))))

(assert (=> b!1559216 (=> (not res!1066350) (not e!868797))))

(declare-fun d!162837 () Bool)

(declare-fun res!1066349 () Bool)

(assert (=> d!162837 (=> res!1066349 e!868796)))

(assert (=> d!162837 (= res!1066349 (bvsge #b00000000000000000000000000000000 (size!50557 _keys!637)))))

(assert (=> d!162837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!868796)))

(assert (= (and d!162837 (not res!1066349)) b!1559213))

(assert (= (and b!1559213 c!144152) b!1559216))

(assert (= (and b!1559213 (not c!144152)) b!1559214))

(assert (= (and b!1559216 res!1066350) b!1559215))

(assert (= (or b!1559215 b!1559214) bm!71832))

(declare-fun m!1435543 () Bool)

(assert (=> b!1559213 m!1435543))

(assert (=> b!1559213 m!1435543))

(declare-fun m!1435545 () Bool)

(assert (=> b!1559213 m!1435545))

(declare-fun m!1435547 () Bool)

(assert (=> bm!71832 m!1435547))

(assert (=> b!1559216 m!1435543))

(declare-fun m!1435549 () Bool)

(assert (=> b!1559216 m!1435549))

(declare-fun m!1435551 () Bool)

(assert (=> b!1559216 m!1435551))

(assert (=> b!1559216 m!1435543))

(declare-fun m!1435553 () Bool)

(assert (=> b!1559216 m!1435553))

(assert (=> b!1559185 d!162837))

(declare-fun condMapEmpty!59085 () Bool)

(declare-fun mapDefault!59085 () ValueCell!18207)

(assert (=> mapNonEmpty!59079 (= condMapEmpty!59085 (= mapRest!59079 ((as const (Array (_ BitVec 32) ValueCell!18207)) mapDefault!59085)))))

(declare-fun e!868803 () Bool)

(declare-fun mapRes!59085 () Bool)

(assert (=> mapNonEmpty!59079 (= tp!112735 (and e!868803 mapRes!59085))))

(declare-fun b!1559223 () Bool)

(declare-fun e!868802 () Bool)

(assert (=> b!1559223 (= e!868802 tp_is_empty!38475)))

(declare-fun mapNonEmpty!59085 () Bool)

(declare-fun tp!112741 () Bool)

(assert (=> mapNonEmpty!59085 (= mapRes!59085 (and tp!112741 e!868802))))

(declare-fun mapRest!59085 () (Array (_ BitVec 32) ValueCell!18207))

(declare-fun mapKey!59085 () (_ BitVec 32))

(declare-fun mapValue!59085 () ValueCell!18207)

(assert (=> mapNonEmpty!59085 (= mapRest!59079 (store mapRest!59085 mapKey!59085 mapValue!59085))))

(declare-fun mapIsEmpty!59085 () Bool)

(assert (=> mapIsEmpty!59085 mapRes!59085))

(declare-fun b!1559224 () Bool)

(assert (=> b!1559224 (= e!868803 tp_is_empty!38475)))

(assert (= (and mapNonEmpty!59079 condMapEmpty!59085) mapIsEmpty!59085))

(assert (= (and mapNonEmpty!59079 (not condMapEmpty!59085)) mapNonEmpty!59085))

(assert (= (and mapNonEmpty!59085 ((_ is ValueCellFull!18207) mapValue!59085)) b!1559223))

(assert (= (and mapNonEmpty!59079 ((_ is ValueCellFull!18207) mapDefault!59085)) b!1559224))

(declare-fun m!1435555 () Bool)

(assert (=> mapNonEmpty!59085 m!1435555))

(check-sat (not b!1559216) tp_is_empty!38475 (not bm!71832) (not b!1559213) (not mapNonEmpty!59085))
(check-sat)
