; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39818 () Bool)

(assert start!39818)

(declare-fun b_free!10077 () Bool)

(declare-fun b_next!10077 () Bool)

(assert (=> start!39818 (= b_free!10077 (not b_next!10077))))

(declare-fun tp!35759 () Bool)

(declare-fun b_and!17831 () Bool)

(assert (=> start!39818 (= tp!35759 b_and!17831)))

(declare-fun mapIsEmpty!18465 () Bool)

(declare-fun mapRes!18465 () Bool)

(assert (=> mapIsEmpty!18465 mapRes!18465))

(declare-fun b!429415 () Bool)

(declare-fun res!252278 () Bool)

(declare-fun e!254332 () Bool)

(assert (=> b!429415 (=> (not res!252278) (not e!254332))))

(declare-datatypes ((array!26275 0))(
  ( (array!26276 (arr!12584 (Array (_ BitVec 32) (_ BitVec 64))) (size!12936 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26275)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429415 (= res!252278 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429416 () Bool)

(declare-fun res!252281 () Bool)

(assert (=> b!429416 (=> (not res!252281) (not e!254332))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16077 0))(
  ( (V!16078 (val!5659 Int)) )
))
(declare-datatypes ((ValueCell!5271 0))(
  ( (ValueCellFull!5271 (v!7902 V!16077)) (EmptyCell!5271) )
))
(declare-datatypes ((array!26277 0))(
  ( (array!26278 (arr!12585 (Array (_ BitVec 32) ValueCell!5271)) (size!12937 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26277)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!429416 (= res!252281 (and (= (size!12937 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12936 _keys!709) (size!12937 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429417 () Bool)

(declare-fun e!254329 () Bool)

(declare-fun e!254334 () Bool)

(assert (=> b!429417 (= e!254329 e!254334)))

(declare-fun res!252290 () Bool)

(assert (=> b!429417 (=> (not res!252290) (not e!254334))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429417 (= res!252290 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16077)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!196313 () array!26275)

(declare-fun zeroValue!515 () V!16077)

(declare-datatypes ((tuple2!7388 0))(
  ( (tuple2!7389 (_1!3704 (_ BitVec 64)) (_2!3704 V!16077)) )
))
(declare-datatypes ((List!7438 0))(
  ( (Nil!7435) (Cons!7434 (h!8290 tuple2!7388) (t!12972 List!7438)) )
))
(declare-datatypes ((ListLongMap!6315 0))(
  ( (ListLongMap!6316 (toList!3173 List!7438)) )
))
(declare-fun lt!196310 () ListLongMap!6315)

(declare-fun lt!196314 () array!26277)

(declare-fun getCurrentListMapNoExtraKeys!1370 (array!26275 array!26277 (_ BitVec 32) (_ BitVec 32) V!16077 V!16077 (_ BitVec 32) Int) ListLongMap!6315)

(assert (=> b!429417 (= lt!196310 (getCurrentListMapNoExtraKeys!1370 lt!196313 lt!196314 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16077)

(assert (=> b!429417 (= lt!196314 (array!26278 (store (arr!12585 _values!549) i!563 (ValueCellFull!5271 v!412)) (size!12937 _values!549)))))

(declare-fun lt!196316 () ListLongMap!6315)

(assert (=> b!429417 (= lt!196316 (getCurrentListMapNoExtraKeys!1370 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429418 () Bool)

(declare-fun res!252287 () Bool)

(assert (=> b!429418 (=> (not res!252287) (not e!254332))))

(declare-datatypes ((List!7439 0))(
  ( (Nil!7436) (Cons!7435 (h!8291 (_ BitVec 64)) (t!12973 List!7439)) )
))
(declare-fun arrayNoDuplicates!0 (array!26275 (_ BitVec 32) List!7439) Bool)

(assert (=> b!429418 (= res!252287 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7436))))

(declare-fun b!429419 () Bool)

(declare-fun e!254328 () Bool)

(assert (=> b!429419 (= e!254334 (not e!254328))))

(declare-fun res!252284 () Bool)

(assert (=> b!429419 (=> res!252284 e!254328)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429419 (= res!252284 (not (validKeyInArray!0 (select (arr!12584 _keys!709) from!863))))))

(declare-fun lt!196308 () ListLongMap!6315)

(declare-fun lt!196309 () ListLongMap!6315)

(assert (=> b!429419 (= lt!196308 lt!196309)))

(declare-fun lt!196312 () ListLongMap!6315)

(declare-fun +!1322 (ListLongMap!6315 tuple2!7388) ListLongMap!6315)

(assert (=> b!429419 (= lt!196309 (+!1322 lt!196312 (tuple2!7389 k0!794 v!412)))))

(assert (=> b!429419 (= lt!196308 (getCurrentListMapNoExtraKeys!1370 lt!196313 lt!196314 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429419 (= lt!196312 (getCurrentListMapNoExtraKeys!1370 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12582 0))(
  ( (Unit!12583) )
))
(declare-fun lt!196317 () Unit!12582)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!520 (array!26275 array!26277 (_ BitVec 32) (_ BitVec 32) V!16077 V!16077 (_ BitVec 32) (_ BitVec 64) V!16077 (_ BitVec 32) Int) Unit!12582)

(assert (=> b!429419 (= lt!196317 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!520 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429420 () Bool)

(declare-fun res!252289 () Bool)

(assert (=> b!429420 (=> (not res!252289) (not e!254329))))

(assert (=> b!429420 (= res!252289 (arrayNoDuplicates!0 lt!196313 #b00000000000000000000000000000000 Nil!7436))))

(declare-fun b!429421 () Bool)

(declare-fun e!254330 () Bool)

(declare-fun e!254331 () Bool)

(assert (=> b!429421 (= e!254330 (and e!254331 mapRes!18465))))

(declare-fun condMapEmpty!18465 () Bool)

(declare-fun mapDefault!18465 () ValueCell!5271)

(assert (=> b!429421 (= condMapEmpty!18465 (= (arr!12585 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5271)) mapDefault!18465)))))

(declare-fun b!429422 () Bool)

(declare-fun res!252283 () Bool)

(assert (=> b!429422 (=> (not res!252283) (not e!254332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429422 (= res!252283 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18465 () Bool)

(declare-fun tp!35760 () Bool)

(declare-fun e!254333 () Bool)

(assert (=> mapNonEmpty!18465 (= mapRes!18465 (and tp!35760 e!254333))))

(declare-fun mapRest!18465 () (Array (_ BitVec 32) ValueCell!5271))

(declare-fun mapKey!18465 () (_ BitVec 32))

(declare-fun mapValue!18465 () ValueCell!5271)

(assert (=> mapNonEmpty!18465 (= (arr!12585 _values!549) (store mapRest!18465 mapKey!18465 mapValue!18465))))

(declare-fun b!429423 () Bool)

(declare-fun res!252291 () Bool)

(assert (=> b!429423 (=> (not res!252291) (not e!254332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26275 (_ BitVec 32)) Bool)

(assert (=> b!429423 (= res!252291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429425 () Bool)

(declare-fun res!252282 () Bool)

(assert (=> b!429425 (=> (not res!252282) (not e!254332))))

(assert (=> b!429425 (= res!252282 (or (= (select (arr!12584 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12584 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429426 () Bool)

(declare-fun res!252286 () Bool)

(assert (=> b!429426 (=> (not res!252286) (not e!254332))))

(assert (=> b!429426 (= res!252286 (validKeyInArray!0 k0!794))))

(declare-fun b!429427 () Bool)

(declare-fun res!252279 () Bool)

(assert (=> b!429427 (=> (not res!252279) (not e!254329))))

(assert (=> b!429427 (= res!252279 (bvsle from!863 i!563))))

(declare-fun b!429428 () Bool)

(declare-fun e!254327 () Unit!12582)

(declare-fun Unit!12584 () Unit!12582)

(assert (=> b!429428 (= e!254327 Unit!12584)))

(declare-fun b!429429 () Bool)

(assert (=> b!429429 (= e!254328 true)))

(assert (=> b!429429 (not (= (select (arr!12584 _keys!709) from!863) k0!794))))

(declare-fun lt!196315 () Unit!12582)

(assert (=> b!429429 (= lt!196315 e!254327)))

(declare-fun c!55376 () Bool)

(assert (=> b!429429 (= c!55376 (= (select (arr!12584 _keys!709) from!863) k0!794))))

(declare-fun get!6247 (ValueCell!5271 V!16077) V!16077)

(declare-fun dynLambda!768 (Int (_ BitVec 64)) V!16077)

(assert (=> b!429429 (= lt!196310 (+!1322 lt!196309 (tuple2!7389 (select (arr!12584 _keys!709) from!863) (get!6247 (select (arr!12585 _values!549) from!863) (dynLambda!768 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429430 () Bool)

(declare-fun tp_is_empty!11229 () Bool)

(assert (=> b!429430 (= e!254331 tp_is_empty!11229)))

(declare-fun b!429431 () Bool)

(declare-fun res!252280 () Bool)

(assert (=> b!429431 (=> (not res!252280) (not e!254332))))

(assert (=> b!429431 (= res!252280 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12936 _keys!709))))))

(declare-fun b!429432 () Bool)

(assert (=> b!429432 (= e!254333 tp_is_empty!11229)))

(declare-fun b!429433 () Bool)

(declare-fun Unit!12585 () Unit!12582)

(assert (=> b!429433 (= e!254327 Unit!12585)))

(declare-fun lt!196311 () Unit!12582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26275 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12582)

(assert (=> b!429433 (= lt!196311 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429433 false))

(declare-fun res!252285 () Bool)

(assert (=> start!39818 (=> (not res!252285) (not e!254332))))

(assert (=> start!39818 (= res!252285 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12936 _keys!709))))))

(assert (=> start!39818 e!254332))

(assert (=> start!39818 tp_is_empty!11229))

(assert (=> start!39818 tp!35759))

(assert (=> start!39818 true))

(declare-fun array_inv!9154 (array!26277) Bool)

(assert (=> start!39818 (and (array_inv!9154 _values!549) e!254330)))

(declare-fun array_inv!9155 (array!26275) Bool)

(assert (=> start!39818 (array_inv!9155 _keys!709)))

(declare-fun b!429424 () Bool)

(assert (=> b!429424 (= e!254332 e!254329)))

(declare-fun res!252288 () Bool)

(assert (=> b!429424 (=> (not res!252288) (not e!254329))))

(assert (=> b!429424 (= res!252288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196313 mask!1025))))

(assert (=> b!429424 (= lt!196313 (array!26276 (store (arr!12584 _keys!709) i!563 k0!794) (size!12936 _keys!709)))))

(assert (= (and start!39818 res!252285) b!429422))

(assert (= (and b!429422 res!252283) b!429416))

(assert (= (and b!429416 res!252281) b!429423))

(assert (= (and b!429423 res!252291) b!429418))

(assert (= (and b!429418 res!252287) b!429431))

(assert (= (and b!429431 res!252280) b!429426))

(assert (= (and b!429426 res!252286) b!429425))

(assert (= (and b!429425 res!252282) b!429415))

(assert (= (and b!429415 res!252278) b!429424))

(assert (= (and b!429424 res!252288) b!429420))

(assert (= (and b!429420 res!252289) b!429427))

(assert (= (and b!429427 res!252279) b!429417))

(assert (= (and b!429417 res!252290) b!429419))

(assert (= (and b!429419 (not res!252284)) b!429429))

(assert (= (and b!429429 c!55376) b!429433))

(assert (= (and b!429429 (not c!55376)) b!429428))

(assert (= (and b!429421 condMapEmpty!18465) mapIsEmpty!18465))

(assert (= (and b!429421 (not condMapEmpty!18465)) mapNonEmpty!18465))

(get-info :version)

(assert (= (and mapNonEmpty!18465 ((_ is ValueCellFull!5271) mapValue!18465)) b!429432))

(assert (= (and b!429421 ((_ is ValueCellFull!5271) mapDefault!18465)) b!429430))

(assert (= start!39818 b!429421))

(declare-fun b_lambda!9195 () Bool)

(assert (=> (not b_lambda!9195) (not b!429429)))

(declare-fun t!12971 () Bool)

(declare-fun tb!3491 () Bool)

(assert (=> (and start!39818 (= defaultEntry!557 defaultEntry!557) t!12971) tb!3491))

(declare-fun result!6501 () Bool)

(assert (=> tb!3491 (= result!6501 tp_is_empty!11229)))

(assert (=> b!429429 t!12971))

(declare-fun b_and!17833 () Bool)

(assert (= b_and!17831 (and (=> t!12971 result!6501) b_and!17833)))

(declare-fun m!417743 () Bool)

(assert (=> b!429426 m!417743))

(declare-fun m!417745 () Bool)

(assert (=> b!429425 m!417745))

(declare-fun m!417747 () Bool)

(assert (=> b!429420 m!417747))

(declare-fun m!417749 () Bool)

(assert (=> mapNonEmpty!18465 m!417749))

(declare-fun m!417751 () Bool)

(assert (=> b!429422 m!417751))

(declare-fun m!417753 () Bool)

(assert (=> b!429419 m!417753))

(declare-fun m!417755 () Bool)

(assert (=> b!429419 m!417755))

(declare-fun m!417757 () Bool)

(assert (=> b!429419 m!417757))

(declare-fun m!417759 () Bool)

(assert (=> b!429419 m!417759))

(declare-fun m!417761 () Bool)

(assert (=> b!429419 m!417761))

(assert (=> b!429419 m!417759))

(declare-fun m!417763 () Bool)

(assert (=> b!429419 m!417763))

(declare-fun m!417765 () Bool)

(assert (=> b!429424 m!417765))

(declare-fun m!417767 () Bool)

(assert (=> b!429424 m!417767))

(declare-fun m!417769 () Bool)

(assert (=> b!429433 m!417769))

(declare-fun m!417771 () Bool)

(assert (=> start!39818 m!417771))

(declare-fun m!417773 () Bool)

(assert (=> start!39818 m!417773))

(declare-fun m!417775 () Bool)

(assert (=> b!429415 m!417775))

(declare-fun m!417777 () Bool)

(assert (=> b!429423 m!417777))

(declare-fun m!417779 () Bool)

(assert (=> b!429417 m!417779))

(declare-fun m!417781 () Bool)

(assert (=> b!429417 m!417781))

(declare-fun m!417783 () Bool)

(assert (=> b!429417 m!417783))

(declare-fun m!417785 () Bool)

(assert (=> b!429418 m!417785))

(assert (=> b!429429 m!417759))

(declare-fun m!417787 () Bool)

(assert (=> b!429429 m!417787))

(declare-fun m!417789 () Bool)

(assert (=> b!429429 m!417789))

(declare-fun m!417791 () Bool)

(assert (=> b!429429 m!417791))

(assert (=> b!429429 m!417791))

(assert (=> b!429429 m!417789))

(declare-fun m!417793 () Bool)

(assert (=> b!429429 m!417793))

(check-sat (not b_next!10077) (not b!429423) (not b!429429) b_and!17833 (not b!429415) (not mapNonEmpty!18465) (not b_lambda!9195) tp_is_empty!11229 (not b!429424) (not b!429420) (not b!429417) (not start!39818) (not b!429426) (not b!429422) (not b!429433) (not b!429419) (not b!429418))
(check-sat b_and!17833 (not b_next!10077))
