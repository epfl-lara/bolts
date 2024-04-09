; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41194 () Bool)

(assert start!41194)

(declare-fun b_free!11055 () Bool)

(declare-fun b_next!11055 () Bool)

(assert (=> start!41194 (= b_free!11055 (not b_next!11055))))

(declare-fun tp!39001 () Bool)

(declare-fun b_and!19367 () Bool)

(assert (=> start!41194 (= tp!39001 b_and!19367)))

(declare-fun b!460300 () Bool)

(declare-fun e!268551 () Bool)

(declare-fun e!268546 () Bool)

(assert (=> b!460300 (= e!268551 e!268546)))

(declare-fun res!275292 () Bool)

(assert (=> b!460300 (=> (not res!275292) (not e!268546))))

(declare-datatypes ((array!28547 0))(
  ( (array!28548 (arr!13711 (Array (_ BitVec 32) (_ BitVec 64))) (size!14063 (_ BitVec 32))) )
))
(declare-fun lt!208517 () array!28547)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28547 (_ BitVec 32)) Bool)

(assert (=> b!460300 (= res!275292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208517 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!28547)

(assert (=> b!460300 (= lt!208517 (array!28548 (store (arr!13711 _keys!709) i!563 k0!794) (size!14063 _keys!709)))))

(declare-fun b!460301 () Bool)

(declare-fun res!275288 () Bool)

(assert (=> b!460301 (=> (not res!275288) (not e!268546))))

(declare-datatypes ((List!8300 0))(
  ( (Nil!8297) (Cons!8296 (h!9152 (_ BitVec 64)) (t!14242 List!8300)) )
))
(declare-fun arrayNoDuplicates!0 (array!28547 (_ BitVec 32) List!8300) Bool)

(assert (=> b!460301 (= res!275288 (arrayNoDuplicates!0 lt!208517 #b00000000000000000000000000000000 Nil!8297))))

(declare-fun b!460302 () Bool)

(declare-fun res!275285 () Bool)

(assert (=> b!460302 (=> (not res!275285) (not e!268551))))

(assert (=> b!460302 (= res!275285 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14063 _keys!709))))))

(declare-fun b!460303 () Bool)

(declare-fun res!275282 () Bool)

(assert (=> b!460303 (=> (not res!275282) (not e!268551))))

(assert (=> b!460303 (= res!275282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460304 () Bool)

(declare-fun e!268547 () Bool)

(declare-fun tp_is_empty!12393 () Bool)

(assert (=> b!460304 (= e!268547 tp_is_empty!12393)))

(declare-fun b!460305 () Bool)

(declare-fun res!275286 () Bool)

(assert (=> b!460305 (=> (not res!275286) (not e!268546))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460305 (= res!275286 (bvsle from!863 i!563))))

(declare-fun b!460306 () Bool)

(declare-fun e!268550 () Bool)

(assert (=> b!460306 (= e!268550 true)))

(declare-datatypes ((V!17629 0))(
  ( (V!17630 (val!6241 Int)) )
))
(declare-datatypes ((tuple2!8198 0))(
  ( (tuple2!8199 (_1!4109 (_ BitVec 64)) (_2!4109 V!17629)) )
))
(declare-fun lt!208516 () tuple2!8198)

(declare-datatypes ((List!8301 0))(
  ( (Nil!8298) (Cons!8297 (h!9153 tuple2!8198) (t!14243 List!8301)) )
))
(declare-datatypes ((ListLongMap!7125 0))(
  ( (ListLongMap!7126 (toList!3578 List!8301)) )
))
(declare-fun lt!208508 () ListLongMap!7125)

(declare-fun lt!208513 () tuple2!8198)

(declare-fun lt!208514 () ListLongMap!7125)

(declare-fun +!1597 (ListLongMap!7125 tuple2!8198) ListLongMap!7125)

(assert (=> b!460306 (= lt!208508 (+!1597 (+!1597 lt!208514 lt!208513) lt!208516))))

(declare-fun lt!208510 () V!17629)

(declare-datatypes ((Unit!13350 0))(
  ( (Unit!13351) )
))
(declare-fun lt!208515 () Unit!13350)

(declare-fun v!412 () V!17629)

(declare-fun addCommutativeForDiffKeys!422 (ListLongMap!7125 (_ BitVec 64) V!17629 (_ BitVec 64) V!17629) Unit!13350)

(assert (=> b!460306 (= lt!208515 (addCommutativeForDiffKeys!422 lt!208514 k0!794 v!412 (select (arr!13711 _keys!709) from!863) lt!208510))))

(declare-fun b!460307 () Bool)

(declare-fun res!275291 () Bool)

(assert (=> b!460307 (=> (not res!275291) (not e!268551))))

(assert (=> b!460307 (= res!275291 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8297))))

(declare-fun b!460308 () Bool)

(declare-fun e!268545 () Unit!13350)

(declare-fun Unit!13352 () Unit!13350)

(assert (=> b!460308 (= e!268545 Unit!13352)))

(declare-fun lt!208507 () Unit!13350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13350)

(assert (=> b!460308 (= lt!208507 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460308 false))

(declare-fun b!460310 () Bool)

(declare-fun e!268543 () Bool)

(assert (=> b!460310 (= e!268546 e!268543)))

(declare-fun res!275283 () Bool)

(assert (=> b!460310 (=> (not res!275283) (not e!268543))))

(assert (=> b!460310 (= res!275283 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17629)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!208505 () ListLongMap!7125)

(declare-fun zeroValue!515 () V!17629)

(declare-datatypes ((ValueCell!5853 0))(
  ( (ValueCellFull!5853 (v!8515 V!17629)) (EmptyCell!5853) )
))
(declare-datatypes ((array!28549 0))(
  ( (array!28550 (arr!13712 (Array (_ BitVec 32) ValueCell!5853)) (size!14064 (_ BitVec 32))) )
))
(declare-fun lt!208504 () array!28549)

(declare-fun getCurrentListMapNoExtraKeys!1747 (array!28547 array!28549 (_ BitVec 32) (_ BitVec 32) V!17629 V!17629 (_ BitVec 32) Int) ListLongMap!7125)

(assert (=> b!460310 (= lt!208505 (getCurrentListMapNoExtraKeys!1747 lt!208517 lt!208504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28549)

(assert (=> b!460310 (= lt!208504 (array!28550 (store (arr!13712 _values!549) i!563 (ValueCellFull!5853 v!412)) (size!14064 _values!549)))))

(declare-fun lt!208506 () ListLongMap!7125)

(assert (=> b!460310 (= lt!208506 (getCurrentListMapNoExtraKeys!1747 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460311 () Bool)

(declare-fun res!275290 () Bool)

(assert (=> b!460311 (=> (not res!275290) (not e!268551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460311 (= res!275290 (validKeyInArray!0 k0!794))))

(declare-fun b!460312 () Bool)

(declare-fun res!275287 () Bool)

(assert (=> b!460312 (=> (not res!275287) (not e!268551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460312 (= res!275287 (validMask!0 mask!1025))))

(declare-fun b!460313 () Bool)

(declare-fun e!268544 () Bool)

(assert (=> b!460313 (= e!268544 e!268550)))

(declare-fun res!275289 () Bool)

(assert (=> b!460313 (=> res!275289 e!268550)))

(assert (=> b!460313 (= res!275289 (= k0!794 (select (arr!13711 _keys!709) from!863)))))

(assert (=> b!460313 (not (= (select (arr!13711 _keys!709) from!863) k0!794))))

(declare-fun lt!208509 () Unit!13350)

(assert (=> b!460313 (= lt!208509 e!268545)))

(declare-fun c!56456 () Bool)

(assert (=> b!460313 (= c!56456 (= (select (arr!13711 _keys!709) from!863) k0!794))))

(assert (=> b!460313 (= lt!208505 lt!208508)))

(declare-fun lt!208511 () ListLongMap!7125)

(assert (=> b!460313 (= lt!208508 (+!1597 lt!208511 lt!208513))))

(assert (=> b!460313 (= lt!208513 (tuple2!8199 (select (arr!13711 _keys!709) from!863) lt!208510))))

(declare-fun get!6783 (ValueCell!5853 V!17629) V!17629)

(declare-fun dynLambda!905 (Int (_ BitVec 64)) V!17629)

(assert (=> b!460313 (= lt!208510 (get!6783 (select (arr!13712 _values!549) from!863) (dynLambda!905 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20239 () Bool)

(declare-fun mapRes!20239 () Bool)

(assert (=> mapIsEmpty!20239 mapRes!20239))

(declare-fun b!460314 () Bool)

(declare-fun res!275293 () Bool)

(assert (=> b!460314 (=> (not res!275293) (not e!268551))))

(assert (=> b!460314 (= res!275293 (and (= (size!14064 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14063 _keys!709) (size!14064 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460315 () Bool)

(declare-fun res!275284 () Bool)

(assert (=> b!460315 (=> (not res!275284) (not e!268551))))

(assert (=> b!460315 (= res!275284 (or (= (select (arr!13711 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13711 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460316 () Bool)

(declare-fun res!275296 () Bool)

(assert (=> b!460316 (=> (not res!275296) (not e!268551))))

(declare-fun arrayContainsKey!0 (array!28547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460316 (= res!275296 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!460317 () Bool)

(declare-fun Unit!13353 () Unit!13350)

(assert (=> b!460317 (= e!268545 Unit!13353)))

(declare-fun mapNonEmpty!20239 () Bool)

(declare-fun tp!39000 () Bool)

(declare-fun e!268549 () Bool)

(assert (=> mapNonEmpty!20239 (= mapRes!20239 (and tp!39000 e!268549))))

(declare-fun mapKey!20239 () (_ BitVec 32))

(declare-fun mapRest!20239 () (Array (_ BitVec 32) ValueCell!5853))

(declare-fun mapValue!20239 () ValueCell!5853)

(assert (=> mapNonEmpty!20239 (= (arr!13712 _values!549) (store mapRest!20239 mapKey!20239 mapValue!20239))))

(declare-fun res!275295 () Bool)

(assert (=> start!41194 (=> (not res!275295) (not e!268551))))

(assert (=> start!41194 (= res!275295 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14063 _keys!709))))))

(assert (=> start!41194 e!268551))

(assert (=> start!41194 tp_is_empty!12393))

(assert (=> start!41194 tp!39001))

(assert (=> start!41194 true))

(declare-fun e!268548 () Bool)

(declare-fun array_inv!9910 (array!28549) Bool)

(assert (=> start!41194 (and (array_inv!9910 _values!549) e!268548)))

(declare-fun array_inv!9911 (array!28547) Bool)

(assert (=> start!41194 (array_inv!9911 _keys!709)))

(declare-fun b!460309 () Bool)

(assert (=> b!460309 (= e!268543 (not e!268544))))

(declare-fun res!275294 () Bool)

(assert (=> b!460309 (=> res!275294 e!268544)))

(assert (=> b!460309 (= res!275294 (not (validKeyInArray!0 (select (arr!13711 _keys!709) from!863))))))

(declare-fun lt!208512 () ListLongMap!7125)

(assert (=> b!460309 (= lt!208512 lt!208511)))

(assert (=> b!460309 (= lt!208511 (+!1597 lt!208514 lt!208516))))

(assert (=> b!460309 (= lt!208512 (getCurrentListMapNoExtraKeys!1747 lt!208517 lt!208504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!460309 (= lt!208516 (tuple2!8199 k0!794 v!412))))

(assert (=> b!460309 (= lt!208514 (getCurrentListMapNoExtraKeys!1747 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208518 () Unit!13350)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!750 (array!28547 array!28549 (_ BitVec 32) (_ BitVec 32) V!17629 V!17629 (_ BitVec 32) (_ BitVec 64) V!17629 (_ BitVec 32) Int) Unit!13350)

(assert (=> b!460309 (= lt!208518 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!750 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460318 () Bool)

(assert (=> b!460318 (= e!268549 tp_is_empty!12393)))

(declare-fun b!460319 () Bool)

(assert (=> b!460319 (= e!268548 (and e!268547 mapRes!20239))))

(declare-fun condMapEmpty!20239 () Bool)

(declare-fun mapDefault!20239 () ValueCell!5853)

(assert (=> b!460319 (= condMapEmpty!20239 (= (arr!13712 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5853)) mapDefault!20239)))))

(assert (= (and start!41194 res!275295) b!460312))

(assert (= (and b!460312 res!275287) b!460314))

(assert (= (and b!460314 res!275293) b!460303))

(assert (= (and b!460303 res!275282) b!460307))

(assert (= (and b!460307 res!275291) b!460302))

(assert (= (and b!460302 res!275285) b!460311))

(assert (= (and b!460311 res!275290) b!460315))

(assert (= (and b!460315 res!275284) b!460316))

(assert (= (and b!460316 res!275296) b!460300))

(assert (= (and b!460300 res!275292) b!460301))

(assert (= (and b!460301 res!275288) b!460305))

(assert (= (and b!460305 res!275286) b!460310))

(assert (= (and b!460310 res!275283) b!460309))

(assert (= (and b!460309 (not res!275294)) b!460313))

(assert (= (and b!460313 c!56456) b!460308))

(assert (= (and b!460313 (not c!56456)) b!460317))

(assert (= (and b!460313 (not res!275289)) b!460306))

(assert (= (and b!460319 condMapEmpty!20239) mapIsEmpty!20239))

(assert (= (and b!460319 (not condMapEmpty!20239)) mapNonEmpty!20239))

(get-info :version)

(assert (= (and mapNonEmpty!20239 ((_ is ValueCellFull!5853) mapValue!20239)) b!460318))

(assert (= (and b!460319 ((_ is ValueCellFull!5853) mapDefault!20239)) b!460304))

(assert (= start!41194 b!460319))

(declare-fun b_lambda!9919 () Bool)

(assert (=> (not b_lambda!9919) (not b!460313)))

(declare-fun t!14241 () Bool)

(declare-fun tb!3899 () Bool)

(assert (=> (and start!41194 (= defaultEntry!557 defaultEntry!557) t!14241) tb!3899))

(declare-fun result!7335 () Bool)

(assert (=> tb!3899 (= result!7335 tp_is_empty!12393)))

(assert (=> b!460313 t!14241))

(declare-fun b_and!19369 () Bool)

(assert (= b_and!19367 (and (=> t!14241 result!7335) b_and!19369)))

(declare-fun m!443523 () Bool)

(assert (=> mapNonEmpty!20239 m!443523))

(declare-fun m!443525 () Bool)

(assert (=> b!460313 m!443525))

(declare-fun m!443527 () Bool)

(assert (=> b!460313 m!443527))

(declare-fun m!443529 () Bool)

(assert (=> b!460313 m!443529))

(declare-fun m!443531 () Bool)

(assert (=> b!460313 m!443531))

(assert (=> b!460313 m!443531))

(assert (=> b!460313 m!443529))

(declare-fun m!443533 () Bool)

(assert (=> b!460313 m!443533))

(declare-fun m!443535 () Bool)

(assert (=> b!460307 m!443535))

(declare-fun m!443537 () Bool)

(assert (=> start!41194 m!443537))

(declare-fun m!443539 () Bool)

(assert (=> start!41194 m!443539))

(declare-fun m!443541 () Bool)

(assert (=> b!460315 m!443541))

(declare-fun m!443543 () Bool)

(assert (=> b!460301 m!443543))

(assert (=> b!460309 m!443525))

(declare-fun m!443545 () Bool)

(assert (=> b!460309 m!443545))

(declare-fun m!443547 () Bool)

(assert (=> b!460309 m!443547))

(declare-fun m!443549 () Bool)

(assert (=> b!460309 m!443549))

(assert (=> b!460309 m!443525))

(declare-fun m!443551 () Bool)

(assert (=> b!460309 m!443551))

(declare-fun m!443553 () Bool)

(assert (=> b!460309 m!443553))

(declare-fun m!443555 () Bool)

(assert (=> b!460300 m!443555))

(declare-fun m!443557 () Bool)

(assert (=> b!460300 m!443557))

(declare-fun m!443559 () Bool)

(assert (=> b!460312 m!443559))

(declare-fun m!443561 () Bool)

(assert (=> b!460316 m!443561))

(declare-fun m!443563 () Bool)

(assert (=> b!460310 m!443563))

(declare-fun m!443565 () Bool)

(assert (=> b!460310 m!443565))

(declare-fun m!443567 () Bool)

(assert (=> b!460310 m!443567))

(declare-fun m!443569 () Bool)

(assert (=> b!460306 m!443569))

(assert (=> b!460306 m!443569))

(declare-fun m!443571 () Bool)

(assert (=> b!460306 m!443571))

(assert (=> b!460306 m!443525))

(assert (=> b!460306 m!443525))

(declare-fun m!443573 () Bool)

(assert (=> b!460306 m!443573))

(declare-fun m!443575 () Bool)

(assert (=> b!460308 m!443575))

(declare-fun m!443577 () Bool)

(assert (=> b!460311 m!443577))

(declare-fun m!443579 () Bool)

(assert (=> b!460303 m!443579))

(check-sat (not b!460316) (not start!41194) (not b!460303) (not b!460311) tp_is_empty!12393 (not b!460306) (not b!460301) (not b!460310) (not b!460309) (not b_next!11055) (not b!460312) (not b_lambda!9919) b_and!19369 (not b!460308) (not b!460313) (not b!460300) (not b!460307) (not mapNonEmpty!20239))
(check-sat b_and!19369 (not b_next!11055))
