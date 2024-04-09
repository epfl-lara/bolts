; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133408 () Bool)

(assert start!133408)

(declare-fun res!1066373 () Bool)

(declare-fun e!868832 () Bool)

(assert (=> start!133408 (=> (not res!1066373) (not e!868832))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133408 (= res!1066373 (validMask!0 mask!947))))

(assert (=> start!133408 e!868832))

(assert (=> start!133408 true))

(declare-datatypes ((V!59515 0))(
  ( (V!59516 (val!19324 Int)) )
))
(declare-datatypes ((ValueCell!18210 0))(
  ( (ValueCellFull!18210 (v!22072 V!59515)) (EmptyCell!18210) )
))
(declare-datatypes ((array!103639 0))(
  ( (array!103640 (arr!50009 (Array (_ BitVec 32) ValueCell!18210)) (size!50560 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103639)

(declare-fun e!868831 () Bool)

(declare-fun array_inv!38797 (array!103639) Bool)

(assert (=> start!133408 (and (array_inv!38797 _values!487) e!868831)))

(declare-datatypes ((array!103641 0))(
  ( (array!103642 (arr!50010 (Array (_ BitVec 32) (_ BitVec 64))) (size!50561 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103641)

(declare-fun array_inv!38798 (array!103641) Bool)

(assert (=> start!133408 (array_inv!38798 _keys!637)))

(declare-fun mapNonEmpty!59091 () Bool)

(declare-fun mapRes!59091 () Bool)

(declare-fun tp!112747 () Bool)

(declare-fun e!868833 () Bool)

(assert (=> mapNonEmpty!59091 (= mapRes!59091 (and tp!112747 e!868833))))

(declare-fun mapRest!59091 () (Array (_ BitVec 32) ValueCell!18210))

(declare-fun mapValue!59091 () ValueCell!18210)

(declare-fun mapKey!59091 () (_ BitVec 32))

(assert (=> mapNonEmpty!59091 (= (arr!50009 _values!487) (store mapRest!59091 mapKey!59091 mapValue!59091))))

(declare-fun b!1559260 () Bool)

(declare-fun tp_is_empty!38481 () Bool)

(assert (=> b!1559260 (= e!868833 tp_is_empty!38481)))

(declare-fun b!1559261 () Bool)

(declare-fun res!1066374 () Bool)

(assert (=> b!1559261 (=> (not res!1066374) (not e!868832))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559261 (= res!1066374 (and (= (size!50560 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50561 _keys!637) (size!50560 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559262 () Bool)

(declare-fun res!1066371 () Bool)

(assert (=> b!1559262 (=> (not res!1066371) (not e!868832))))

(assert (=> b!1559262 (= res!1066371 (and (bvsle #b00000000000000000000000000000000 (size!50561 _keys!637)) (bvslt (size!50561 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun b!1559263 () Bool)

(declare-fun e!868830 () Bool)

(assert (=> b!1559263 (= e!868831 (and e!868830 mapRes!59091))))

(declare-fun condMapEmpty!59091 () Bool)

(declare-fun mapDefault!59091 () ValueCell!18210)

(assert (=> b!1559263 (= condMapEmpty!59091 (= (arr!50009 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18210)) mapDefault!59091)))))

(declare-fun b!1559264 () Bool)

(assert (=> b!1559264 (= e!868830 tp_is_empty!38481)))

(declare-fun b!1559265 () Bool)

(declare-datatypes ((List!36491 0))(
  ( (Nil!36488) (Cons!36487 (h!37934 (_ BitVec 64)) (t!51231 List!36491)) )
))
(declare-fun noDuplicate!2675 (List!36491) Bool)

(assert (=> b!1559265 (= e!868832 (not (noDuplicate!2675 Nil!36488)))))

(declare-fun mapIsEmpty!59091 () Bool)

(assert (=> mapIsEmpty!59091 mapRes!59091))

(declare-fun b!1559266 () Bool)

(declare-fun res!1066372 () Bool)

(assert (=> b!1559266 (=> (not res!1066372) (not e!868832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103641 (_ BitVec 32)) Bool)

(assert (=> b!1559266 (= res!1066372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(assert (= (and start!133408 res!1066373) b!1559261))

(assert (= (and b!1559261 res!1066374) b!1559266))

(assert (= (and b!1559266 res!1066372) b!1559262))

(assert (= (and b!1559262 res!1066371) b!1559265))

(assert (= (and b!1559263 condMapEmpty!59091) mapIsEmpty!59091))

(assert (= (and b!1559263 (not condMapEmpty!59091)) mapNonEmpty!59091))

(get-info :version)

(assert (= (and mapNonEmpty!59091 ((_ is ValueCellFull!18210) mapValue!59091)) b!1559260))

(assert (= (and b!1559263 ((_ is ValueCellFull!18210) mapDefault!59091)) b!1559264))

(assert (= start!133408 b!1559263))

(declare-fun m!1435569 () Bool)

(assert (=> start!133408 m!1435569))

(declare-fun m!1435571 () Bool)

(assert (=> start!133408 m!1435571))

(declare-fun m!1435573 () Bool)

(assert (=> start!133408 m!1435573))

(declare-fun m!1435575 () Bool)

(assert (=> mapNonEmpty!59091 m!1435575))

(declare-fun m!1435577 () Bool)

(assert (=> b!1559265 m!1435577))

(declare-fun m!1435579 () Bool)

(assert (=> b!1559266 m!1435579))

(check-sat (not mapNonEmpty!59091) tp_is_empty!38481 (not b!1559266) (not b!1559265) (not start!133408))
(check-sat)
(get-model)

(declare-fun d!162841 () Bool)

(declare-fun res!1066391 () Bool)

(declare-fun e!868853 () Bool)

(assert (=> d!162841 (=> res!1066391 e!868853)))

(assert (=> d!162841 (= res!1066391 ((_ is Nil!36488) Nil!36488))))

(assert (=> d!162841 (= (noDuplicate!2675 Nil!36488) e!868853)))

(declare-fun b!1559292 () Bool)

(declare-fun e!868854 () Bool)

(assert (=> b!1559292 (= e!868853 e!868854)))

(declare-fun res!1066392 () Bool)

(assert (=> b!1559292 (=> (not res!1066392) (not e!868854))))

(declare-fun contains!10224 (List!36491 (_ BitVec 64)) Bool)

(assert (=> b!1559292 (= res!1066392 (not (contains!10224 (t!51231 Nil!36488) (h!37934 Nil!36488))))))

(declare-fun b!1559293 () Bool)

(assert (=> b!1559293 (= e!868854 (noDuplicate!2675 (t!51231 Nil!36488)))))

(assert (= (and d!162841 (not res!1066391)) b!1559292))

(assert (= (and b!1559292 res!1066392) b!1559293))

(declare-fun m!1435593 () Bool)

(assert (=> b!1559292 m!1435593))

(declare-fun m!1435595 () Bool)

(assert (=> b!1559293 m!1435595))

(assert (=> b!1559265 d!162841))

(declare-fun d!162843 () Bool)

(assert (=> d!162843 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133408 d!162843))

(declare-fun d!162845 () Bool)

(assert (=> d!162845 (= (array_inv!38797 _values!487) (bvsge (size!50560 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133408 d!162845))

(declare-fun d!162847 () Bool)

(assert (=> d!162847 (= (array_inv!38798 _keys!637) (bvsge (size!50561 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133408 d!162847))

(declare-fun b!1559302 () Bool)

(declare-fun e!868863 () Bool)

(declare-fun call!71838 () Bool)

(assert (=> b!1559302 (= e!868863 call!71838)))

(declare-fun bm!71835 () Bool)

(assert (=> bm!71835 (= call!71838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun d!162849 () Bool)

(declare-fun res!1066398 () Bool)

(declare-fun e!868862 () Bool)

(assert (=> d!162849 (=> res!1066398 e!868862)))

(assert (=> d!162849 (= res!1066398 (bvsge #b00000000000000000000000000000000 (size!50561 _keys!637)))))

(assert (=> d!162849 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!868862)))

(declare-fun b!1559303 () Bool)

(declare-fun e!868861 () Bool)

(assert (=> b!1559303 (= e!868862 e!868861)))

(declare-fun c!144155 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1559303 (= c!144155 (validKeyInArray!0 (select (arr!50010 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1559304 () Bool)

(assert (=> b!1559304 (= e!868861 e!868863)))

(declare-fun lt!670799 () (_ BitVec 64))

(assert (=> b!1559304 (= lt!670799 (select (arr!50010 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51834 0))(
  ( (Unit!51835) )
))
(declare-fun lt!670798 () Unit!51834)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103641 (_ BitVec 64) (_ BitVec 32)) Unit!51834)

(assert (=> b!1559304 (= lt!670798 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!670799 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1559304 (arrayContainsKey!0 _keys!637 lt!670799 #b00000000000000000000000000000000)))

(declare-fun lt!670797 () Unit!51834)

(assert (=> b!1559304 (= lt!670797 lt!670798)))

(declare-fun res!1066397 () Bool)

(declare-datatypes ((SeekEntryResult!13517 0))(
  ( (MissingZero!13517 (index!56465 (_ BitVec 32))) (Found!13517 (index!56466 (_ BitVec 32))) (Intermediate!13517 (undefined!14329 Bool) (index!56467 (_ BitVec 32)) (x!139768 (_ BitVec 32))) (Undefined!13517) (MissingVacant!13517 (index!56468 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103641 (_ BitVec 32)) SeekEntryResult!13517)

(assert (=> b!1559304 (= res!1066397 (= (seekEntryOrOpen!0 (select (arr!50010 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13517 #b00000000000000000000000000000000)))))

(assert (=> b!1559304 (=> (not res!1066397) (not e!868863))))

(declare-fun b!1559305 () Bool)

(assert (=> b!1559305 (= e!868861 call!71838)))

(assert (= (and d!162849 (not res!1066398)) b!1559303))

(assert (= (and b!1559303 c!144155) b!1559304))

(assert (= (and b!1559303 (not c!144155)) b!1559305))

(assert (= (and b!1559304 res!1066397) b!1559302))

(assert (= (or b!1559302 b!1559305) bm!71835))

(declare-fun m!1435597 () Bool)

(assert (=> bm!71835 m!1435597))

(declare-fun m!1435599 () Bool)

(assert (=> b!1559303 m!1435599))

(assert (=> b!1559303 m!1435599))

(declare-fun m!1435601 () Bool)

(assert (=> b!1559303 m!1435601))

(assert (=> b!1559304 m!1435599))

(declare-fun m!1435603 () Bool)

(assert (=> b!1559304 m!1435603))

(declare-fun m!1435605 () Bool)

(assert (=> b!1559304 m!1435605))

(assert (=> b!1559304 m!1435599))

(declare-fun m!1435607 () Bool)

(assert (=> b!1559304 m!1435607))

(assert (=> b!1559266 d!162849))

(declare-fun b!1559312 () Bool)

(declare-fun e!868868 () Bool)

(assert (=> b!1559312 (= e!868868 tp_is_empty!38481)))

(declare-fun condMapEmpty!59097 () Bool)

(declare-fun mapDefault!59097 () ValueCell!18210)

(assert (=> mapNonEmpty!59091 (= condMapEmpty!59097 (= mapRest!59091 ((as const (Array (_ BitVec 32) ValueCell!18210)) mapDefault!59097)))))

(declare-fun e!868869 () Bool)

(declare-fun mapRes!59097 () Bool)

(assert (=> mapNonEmpty!59091 (= tp!112747 (and e!868869 mapRes!59097))))

(declare-fun b!1559313 () Bool)

(assert (=> b!1559313 (= e!868869 tp_is_empty!38481)))

(declare-fun mapNonEmpty!59097 () Bool)

(declare-fun tp!112753 () Bool)

(assert (=> mapNonEmpty!59097 (= mapRes!59097 (and tp!112753 e!868868))))

(declare-fun mapKey!59097 () (_ BitVec 32))

(declare-fun mapRest!59097 () (Array (_ BitVec 32) ValueCell!18210))

(declare-fun mapValue!59097 () ValueCell!18210)

(assert (=> mapNonEmpty!59097 (= mapRest!59091 (store mapRest!59097 mapKey!59097 mapValue!59097))))

(declare-fun mapIsEmpty!59097 () Bool)

(assert (=> mapIsEmpty!59097 mapRes!59097))

(assert (= (and mapNonEmpty!59091 condMapEmpty!59097) mapIsEmpty!59097))

(assert (= (and mapNonEmpty!59091 (not condMapEmpty!59097)) mapNonEmpty!59097))

(assert (= (and mapNonEmpty!59097 ((_ is ValueCellFull!18210) mapValue!59097)) b!1559312))

(assert (= (and mapNonEmpty!59091 ((_ is ValueCellFull!18210) mapDefault!59097)) b!1559313))

(declare-fun m!1435609 () Bool)

(assert (=> mapNonEmpty!59097 m!1435609))

(check-sat (not mapNonEmpty!59097) tp_is_empty!38481 (not b!1559303) (not b!1559293) (not bm!71835) (not b!1559292) (not b!1559304))
(check-sat)
