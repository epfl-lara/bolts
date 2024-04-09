; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36028 () Bool)

(assert start!36028)

(declare-fun b!361566 () Bool)

(declare-fun res!201212 () Bool)

(declare-fun e!221454 () Bool)

(assert (=> b!361566 (=> (not res!201212) (not e!221454))))

(declare-datatypes ((array!20333 0))(
  ( (array!20334 (arr!9650 (Array (_ BitVec 32) (_ BitVec 64))) (size!10002 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20333)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12181 0))(
  ( (V!12182 (val!4246 Int)) )
))
(declare-datatypes ((ValueCell!3858 0))(
  ( (ValueCellFull!3858 (v!6437 V!12181)) (EmptyCell!3858) )
))
(declare-datatypes ((array!20335 0))(
  ( (array!20336 (arr!9651 (Array (_ BitVec 32) ValueCell!3858)) (size!10003 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20335)

(assert (=> b!361566 (= res!201212 (and (= (size!10003 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10002 _keys!1541) (size!10003 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361567 () Bool)

(declare-fun res!201214 () Bool)

(assert (=> b!361567 (=> (not res!201214) (not e!221454))))

(declare-datatypes ((List!5542 0))(
  ( (Nil!5539) (Cons!5538 (h!6394 (_ BitVec 64)) (t!10700 List!5542)) )
))
(declare-fun arrayNoDuplicates!0 (array!20333 (_ BitVec 32) List!5542) Bool)

(assert (=> b!361567 (= res!201214 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5539))))

(declare-fun mapIsEmpty!14133 () Bool)

(declare-fun mapRes!14133 () Bool)

(assert (=> mapIsEmpty!14133 mapRes!14133))

(declare-fun b!361568 () Bool)

(declare-fun res!201213 () Bool)

(assert (=> b!361568 (=> (not res!201213) (not e!221454))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun k0!1134 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361568 (= res!201213 (arrayContainsKey!0 _keys!1541 k0!1134 from!1924))))

(declare-fun b!361569 () Bool)

(assert (=> b!361569 (= e!221454 (and (not (= (select (arr!9650 _keys!1541) from!1924) k0!1134)) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) (size!10002 _keys!1541))))))

(declare-fun b!361570 () Bool)

(declare-fun e!221456 () Bool)

(declare-fun e!221455 () Bool)

(assert (=> b!361570 (= e!221456 (and e!221455 mapRes!14133))))

(declare-fun condMapEmpty!14133 () Bool)

(declare-fun mapDefault!14133 () ValueCell!3858)

(assert (=> b!361570 (= condMapEmpty!14133 (= (arr!9651 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3858)) mapDefault!14133)))))

(declare-fun res!201215 () Bool)

(assert (=> start!36028 (=> (not res!201215) (not e!221454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36028 (= res!201215 (validMask!0 mask!1943))))

(assert (=> start!36028 e!221454))

(assert (=> start!36028 true))

(declare-fun array_inv!7098 (array!20333) Bool)

(assert (=> start!36028 (array_inv!7098 _keys!1541)))

(declare-fun array_inv!7099 (array!20335) Bool)

(assert (=> start!36028 (and (array_inv!7099 _values!1277) e!221456)))

(declare-fun b!361571 () Bool)

(declare-fun res!201211 () Bool)

(assert (=> b!361571 (=> (not res!201211) (not e!221454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20333 (_ BitVec 32)) Bool)

(assert (=> b!361571 (= res!201211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361572 () Bool)

(declare-fun tp_is_empty!8403 () Bool)

(assert (=> b!361572 (= e!221455 tp_is_empty!8403)))

(declare-fun b!361573 () Bool)

(declare-fun e!221453 () Bool)

(assert (=> b!361573 (= e!221453 tp_is_empty!8403)))

(declare-fun mapNonEmpty!14133 () Bool)

(declare-fun tp!28209 () Bool)

(assert (=> mapNonEmpty!14133 (= mapRes!14133 (and tp!28209 e!221453))))

(declare-fun mapValue!14133 () ValueCell!3858)

(declare-fun mapKey!14133 () (_ BitVec 32))

(declare-fun mapRest!14133 () (Array (_ BitVec 32) ValueCell!3858))

(assert (=> mapNonEmpty!14133 (= (arr!9651 _values!1277) (store mapRest!14133 mapKey!14133 mapValue!14133))))

(declare-fun b!361574 () Bool)

(declare-fun res!201210 () Bool)

(assert (=> b!361574 (=> (not res!201210) (not e!221454))))

(assert (=> b!361574 (= res!201210 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!10002 _keys!1541))))))

(assert (= (and start!36028 res!201215) b!361566))

(assert (= (and b!361566 res!201212) b!361571))

(assert (= (and b!361571 res!201211) b!361567))

(assert (= (and b!361567 res!201214) b!361574))

(assert (= (and b!361574 res!201210) b!361568))

(assert (= (and b!361568 res!201213) b!361569))

(assert (= (and b!361570 condMapEmpty!14133) mapIsEmpty!14133))

(assert (= (and b!361570 (not condMapEmpty!14133)) mapNonEmpty!14133))

(get-info :version)

(assert (= (and mapNonEmpty!14133 ((_ is ValueCellFull!3858) mapValue!14133)) b!361573))

(assert (= (and b!361570 ((_ is ValueCellFull!3858) mapDefault!14133)) b!361572))

(assert (= start!36028 b!361570))

(declare-fun m!358303 () Bool)

(assert (=> b!361568 m!358303))

(declare-fun m!358305 () Bool)

(assert (=> start!36028 m!358305))

(declare-fun m!358307 () Bool)

(assert (=> start!36028 m!358307))

(declare-fun m!358309 () Bool)

(assert (=> start!36028 m!358309))

(declare-fun m!358311 () Bool)

(assert (=> b!361571 m!358311))

(declare-fun m!358313 () Bool)

(assert (=> b!361567 m!358313))

(declare-fun m!358315 () Bool)

(assert (=> b!361569 m!358315))

(declare-fun m!358317 () Bool)

(assert (=> mapNonEmpty!14133 m!358317))

(check-sat (not b!361571) (not b!361567) (not start!36028) (not mapNonEmpty!14133) tp_is_empty!8403 (not b!361568))
(check-sat)
(get-model)

(declare-fun bm!27179 () Bool)

(declare-fun call!27182 () Bool)

(declare-fun c!53657 () Bool)

(assert (=> bm!27179 (= call!27182 (arrayNoDuplicates!0 _keys!1541 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53657 (Cons!5538 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000) Nil!5539) Nil!5539)))))

(declare-fun d!71823 () Bool)

(declare-fun res!201240 () Bool)

(declare-fun e!221484 () Bool)

(assert (=> d!71823 (=> res!201240 e!221484)))

(assert (=> d!71823 (= res!201240 (bvsge #b00000000000000000000000000000000 (size!10002 _keys!1541)))))

(assert (=> d!71823 (= (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5539) e!221484)))

(declare-fun b!361612 () Bool)

(declare-fun e!221483 () Bool)

(declare-fun e!221482 () Bool)

(assert (=> b!361612 (= e!221483 e!221482)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361612 (= c!53657 (validKeyInArray!0 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361613 () Bool)

(assert (=> b!361613 (= e!221482 call!27182)))

(declare-fun b!361614 () Bool)

(assert (=> b!361614 (= e!221484 e!221483)))

(declare-fun res!201241 () Bool)

(assert (=> b!361614 (=> (not res!201241) (not e!221483))))

(declare-fun e!221481 () Bool)

(assert (=> b!361614 (= res!201241 (not e!221481))))

(declare-fun res!201242 () Bool)

(assert (=> b!361614 (=> (not res!201242) (not e!221481))))

(assert (=> b!361614 (= res!201242 (validKeyInArray!0 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun b!361615 () Bool)

(assert (=> b!361615 (= e!221482 call!27182)))

(declare-fun b!361616 () Bool)

(declare-fun contains!2429 (List!5542 (_ BitVec 64)) Bool)

(assert (=> b!361616 (= e!221481 (contains!2429 Nil!5539 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000)))))

(assert (= (and d!71823 (not res!201240)) b!361614))

(assert (= (and b!361614 res!201242) b!361616))

(assert (= (and b!361614 res!201241) b!361612))

(assert (= (and b!361612 c!53657) b!361615))

(assert (= (and b!361612 (not c!53657)) b!361613))

(assert (= (or b!361615 b!361613) bm!27179))

(declare-fun m!358335 () Bool)

(assert (=> bm!27179 m!358335))

(declare-fun m!358337 () Bool)

(assert (=> bm!27179 m!358337))

(assert (=> b!361612 m!358335))

(assert (=> b!361612 m!358335))

(declare-fun m!358339 () Bool)

(assert (=> b!361612 m!358339))

(assert (=> b!361614 m!358335))

(assert (=> b!361614 m!358335))

(assert (=> b!361614 m!358339))

(assert (=> b!361616 m!358335))

(assert (=> b!361616 m!358335))

(declare-fun m!358341 () Bool)

(assert (=> b!361616 m!358341))

(assert (=> b!361567 d!71823))

(declare-fun d!71825 () Bool)

(assert (=> d!71825 (= (validMask!0 mask!1943) (and (or (= mask!1943 #b00000000000000000000000000000111) (= mask!1943 #b00000000000000000000000000001111) (= mask!1943 #b00000000000000000000000000011111) (= mask!1943 #b00000000000000000000000000111111) (= mask!1943 #b00000000000000000000000001111111) (= mask!1943 #b00000000000000000000000011111111) (= mask!1943 #b00000000000000000000000111111111) (= mask!1943 #b00000000000000000000001111111111) (= mask!1943 #b00000000000000000000011111111111) (= mask!1943 #b00000000000000000000111111111111) (= mask!1943 #b00000000000000000001111111111111) (= mask!1943 #b00000000000000000011111111111111) (= mask!1943 #b00000000000000000111111111111111) (= mask!1943 #b00000000000000001111111111111111) (= mask!1943 #b00000000000000011111111111111111) (= mask!1943 #b00000000000000111111111111111111) (= mask!1943 #b00000000000001111111111111111111) (= mask!1943 #b00000000000011111111111111111111) (= mask!1943 #b00000000000111111111111111111111) (= mask!1943 #b00000000001111111111111111111111) (= mask!1943 #b00000000011111111111111111111111) (= mask!1943 #b00000000111111111111111111111111) (= mask!1943 #b00000001111111111111111111111111) (= mask!1943 #b00000011111111111111111111111111) (= mask!1943 #b00000111111111111111111111111111) (= mask!1943 #b00001111111111111111111111111111) (= mask!1943 #b00011111111111111111111111111111) (= mask!1943 #b00111111111111111111111111111111)) (bvsle mask!1943 #b00111111111111111111111111111111)))))

(assert (=> start!36028 d!71825))

(declare-fun d!71827 () Bool)

(assert (=> d!71827 (= (array_inv!7098 _keys!1541) (bvsge (size!10002 _keys!1541) #b00000000000000000000000000000000))))

(assert (=> start!36028 d!71827))

(declare-fun d!71829 () Bool)

(assert (=> d!71829 (= (array_inv!7099 _values!1277) (bvsge (size!10003 _values!1277) #b00000000000000000000000000000000))))

(assert (=> start!36028 d!71829))

(declare-fun b!361626 () Bool)

(declare-fun e!221493 () Bool)

(declare-fun e!221491 () Bool)

(assert (=> b!361626 (= e!221493 e!221491)))

(declare-fun c!53660 () Bool)

(assert (=> b!361626 (= c!53660 (validKeyInArray!0 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000)))))

(declare-fun bm!27182 () Bool)

(declare-fun call!27185 () Bool)

(assert (=> bm!27182 (= call!27185 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1541 mask!1943))))

(declare-fun b!361627 () Bool)

(declare-fun e!221492 () Bool)

(assert (=> b!361627 (= e!221491 e!221492)))

(declare-fun lt!166552 () (_ BitVec 64))

(assert (=> b!361627 (= lt!166552 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11107 0))(
  ( (Unit!11108) )
))
(declare-fun lt!166553 () Unit!11107)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20333 (_ BitVec 64) (_ BitVec 32)) Unit!11107)

(assert (=> b!361627 (= lt!166553 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1541 lt!166552 #b00000000000000000000000000000000))))

(assert (=> b!361627 (arrayContainsKey!0 _keys!1541 lt!166552 #b00000000000000000000000000000000)))

(declare-fun lt!166551 () Unit!11107)

(assert (=> b!361627 (= lt!166551 lt!166553)))

(declare-fun res!201247 () Bool)

(declare-datatypes ((SeekEntryResult!3485 0))(
  ( (MissingZero!3485 (index!16119 (_ BitVec 32))) (Found!3485 (index!16120 (_ BitVec 32))) (Intermediate!3485 (undefined!4297 Bool) (index!16121 (_ BitVec 32)) (x!36040 (_ BitVec 32))) (Undefined!3485) (MissingVacant!3485 (index!16122 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20333 (_ BitVec 32)) SeekEntryResult!3485)

(assert (=> b!361627 (= res!201247 (= (seekEntryOrOpen!0 (select (arr!9650 _keys!1541) #b00000000000000000000000000000000) _keys!1541 mask!1943) (Found!3485 #b00000000000000000000000000000000)))))

(assert (=> b!361627 (=> (not res!201247) (not e!221492))))

(declare-fun b!361628 () Bool)

(assert (=> b!361628 (= e!221491 call!27185)))

(declare-fun d!71831 () Bool)

(declare-fun res!201248 () Bool)

(assert (=> d!71831 (=> res!201248 e!221493)))

(assert (=> d!71831 (= res!201248 (bvsge #b00000000000000000000000000000000 (size!10002 _keys!1541)))))

(assert (=> d!71831 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943) e!221493)))

(declare-fun b!361625 () Bool)

(assert (=> b!361625 (= e!221492 call!27185)))

(assert (= (and d!71831 (not res!201248)) b!361626))

(assert (= (and b!361626 c!53660) b!361627))

(assert (= (and b!361626 (not c!53660)) b!361628))

(assert (= (and b!361627 res!201247) b!361625))

(assert (= (or b!361625 b!361628) bm!27182))

(assert (=> b!361626 m!358335))

(assert (=> b!361626 m!358335))

(assert (=> b!361626 m!358339))

(declare-fun m!358343 () Bool)

(assert (=> bm!27182 m!358343))

(assert (=> b!361627 m!358335))

(declare-fun m!358345 () Bool)

(assert (=> b!361627 m!358345))

(declare-fun m!358347 () Bool)

(assert (=> b!361627 m!358347))

(assert (=> b!361627 m!358335))

(declare-fun m!358349 () Bool)

(assert (=> b!361627 m!358349))

(assert (=> b!361571 d!71831))

(declare-fun d!71833 () Bool)

(declare-fun res!201253 () Bool)

(declare-fun e!221498 () Bool)

(assert (=> d!71833 (=> res!201253 e!221498)))

(assert (=> d!71833 (= res!201253 (= (select (arr!9650 _keys!1541) from!1924) k0!1134))))

(assert (=> d!71833 (= (arrayContainsKey!0 _keys!1541 k0!1134 from!1924) e!221498)))

(declare-fun b!361633 () Bool)

(declare-fun e!221499 () Bool)

(assert (=> b!361633 (= e!221498 e!221499)))

(declare-fun res!201254 () Bool)

(assert (=> b!361633 (=> (not res!201254) (not e!221499))))

(assert (=> b!361633 (= res!201254 (bvslt (bvadd from!1924 #b00000000000000000000000000000001) (size!10002 _keys!1541)))))

(declare-fun b!361634 () Bool)

(assert (=> b!361634 (= e!221499 (arrayContainsKey!0 _keys!1541 k0!1134 (bvadd from!1924 #b00000000000000000000000000000001)))))

(assert (= (and d!71833 (not res!201253)) b!361633))

(assert (= (and b!361633 res!201254) b!361634))

(assert (=> d!71833 m!358315))

(declare-fun m!358351 () Bool)

(assert (=> b!361634 m!358351))

(assert (=> b!361568 d!71833))

(declare-fun b!361641 () Bool)

(declare-fun e!221505 () Bool)

(assert (=> b!361641 (= e!221505 tp_is_empty!8403)))

(declare-fun b!361642 () Bool)

(declare-fun e!221504 () Bool)

(assert (=> b!361642 (= e!221504 tp_is_empty!8403)))

(declare-fun mapNonEmpty!14139 () Bool)

(declare-fun mapRes!14139 () Bool)

(declare-fun tp!28215 () Bool)

(assert (=> mapNonEmpty!14139 (= mapRes!14139 (and tp!28215 e!221505))))

(declare-fun mapRest!14139 () (Array (_ BitVec 32) ValueCell!3858))

(declare-fun mapValue!14139 () ValueCell!3858)

(declare-fun mapKey!14139 () (_ BitVec 32))

(assert (=> mapNonEmpty!14139 (= mapRest!14133 (store mapRest!14139 mapKey!14139 mapValue!14139))))

(declare-fun condMapEmpty!14139 () Bool)

(declare-fun mapDefault!14139 () ValueCell!3858)

(assert (=> mapNonEmpty!14133 (= condMapEmpty!14139 (= mapRest!14133 ((as const (Array (_ BitVec 32) ValueCell!3858)) mapDefault!14139)))))

(assert (=> mapNonEmpty!14133 (= tp!28209 (and e!221504 mapRes!14139))))

(declare-fun mapIsEmpty!14139 () Bool)

(assert (=> mapIsEmpty!14139 mapRes!14139))

(assert (= (and mapNonEmpty!14133 condMapEmpty!14139) mapIsEmpty!14139))

(assert (= (and mapNonEmpty!14133 (not condMapEmpty!14139)) mapNonEmpty!14139))

(assert (= (and mapNonEmpty!14139 ((_ is ValueCellFull!3858) mapValue!14139)) b!361641))

(assert (= (and mapNonEmpty!14133 ((_ is ValueCellFull!3858) mapDefault!14139)) b!361642))

(declare-fun m!358353 () Bool)

(assert (=> mapNonEmpty!14139 m!358353))

(check-sat (not b!361616) (not bm!27182) (not b!361626) (not b!361627) (not b!361634) (not b!361612) tp_is_empty!8403 (not bm!27179) (not b!361614) (not mapNonEmpty!14139))
(check-sat)
