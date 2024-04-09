; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39326 () Bool)

(assert start!39326)

(declare-fun b_free!9585 () Bool)

(declare-fun b_next!9585 () Bool)

(assert (=> start!39326 (= b_free!9585 (not b_next!9585))))

(declare-fun tp!34283 () Bool)

(declare-fun b_and!17063 () Bool)

(assert (=> start!39326 (= tp!34283 b_and!17063)))

(declare-fun b!416350 () Bool)

(declare-fun res!242427 () Bool)

(declare-fun e!248542 () Bool)

(assert (=> b!416350 (=> (not res!242427) (not e!248542))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416350 (= res!242427 (bvsle from!863 i!563))))

(declare-fun b!416351 () Bool)

(declare-fun e!248547 () Bool)

(assert (=> b!416351 (= e!248547 true)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((V!15421 0))(
  ( (V!15422 (val!5413 Int)) )
))
(declare-datatypes ((tuple2!6986 0))(
  ( (tuple2!6987 (_1!3503 (_ BitVec 64)) (_2!3503 V!15421)) )
))
(declare-datatypes ((List!7039 0))(
  ( (Nil!7036) (Cons!7035 (h!7891 tuple2!6986) (t!12297 List!7039)) )
))
(declare-datatypes ((ListLongMap!5913 0))(
  ( (ListLongMap!5914 (toList!2972 List!7039)) )
))
(declare-fun lt!190692 () ListLongMap!5913)

(declare-fun lt!190697 () V!15421)

(declare-fun lt!190693 () tuple2!6986)

(declare-fun +!1184 (ListLongMap!5913 tuple2!6986) ListLongMap!5913)

(assert (=> b!416351 (= (+!1184 lt!190692 lt!190693) (+!1184 (+!1184 lt!190692 (tuple2!6987 k0!794 lt!190697)) lt!190693))))

(declare-fun lt!190691 () V!15421)

(assert (=> b!416351 (= lt!190693 (tuple2!6987 k0!794 lt!190691))))

(declare-datatypes ((Unit!12267 0))(
  ( (Unit!12268) )
))
(declare-fun lt!190689 () Unit!12267)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!8 (ListLongMap!5913 (_ BitVec 64) V!15421 V!15421) Unit!12267)

(assert (=> b!416351 (= lt!190689 (addSameAsAddTwiceSameKeyDiffValues!8 lt!190692 k0!794 lt!190697 lt!190691))))

(declare-fun lt!190698 () V!15421)

(declare-datatypes ((ValueCell!5025 0))(
  ( (ValueCellFull!5025 (v!7656 V!15421)) (EmptyCell!5025) )
))
(declare-datatypes ((array!25309 0))(
  ( (array!25310 (arr!12101 (Array (_ BitVec 32) ValueCell!5025)) (size!12453 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25309)

(declare-fun get!5985 (ValueCell!5025 V!15421) V!15421)

(assert (=> b!416351 (= lt!190697 (get!5985 (select (arr!12101 _values!549) from!863) lt!190698))))

(declare-fun lt!190696 () ListLongMap!5913)

(declare-datatypes ((array!25311 0))(
  ( (array!25312 (arr!12102 (Array (_ BitVec 32) (_ BitVec 64))) (size!12454 (_ BitVec 32))) )
))
(declare-fun lt!190695 () array!25311)

(assert (=> b!416351 (= lt!190696 (+!1184 lt!190692 (tuple2!6987 (select (arr!12102 lt!190695) from!863) lt!190691)))))

(declare-fun v!412 () V!15421)

(assert (=> b!416351 (= lt!190691 (get!5985 (select (store (arr!12101 _values!549) i!563 (ValueCellFull!5025 v!412)) from!863) lt!190698))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!670 (Int (_ BitVec 64)) V!15421)

(assert (=> b!416351 (= lt!190698 (dynLambda!670 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15421)

(declare-fun zeroValue!515 () V!15421)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190688 () array!25309)

(declare-fun getCurrentListMapNoExtraKeys!1176 (array!25311 array!25309 (_ BitVec 32) (_ BitVec 32) V!15421 V!15421 (_ BitVec 32) Int) ListLongMap!5913)

(assert (=> b!416351 (= lt!190692 (getCurrentListMapNoExtraKeys!1176 lt!190695 lt!190688 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416352 () Bool)

(declare-fun res!242431 () Bool)

(declare-fun e!248544 () Bool)

(assert (=> b!416352 (=> (not res!242431) (not e!248544))))

(declare-fun _keys!709 () array!25311)

(declare-fun arrayContainsKey!0 (array!25311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416352 (= res!242431 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun c!55016 () Bool)

(declare-fun call!28930 () ListLongMap!5913)

(declare-fun bm!28927 () Bool)

(assert (=> bm!28927 (= call!28930 (getCurrentListMapNoExtraKeys!1176 (ite c!55016 lt!190695 _keys!709) (ite c!55016 lt!190688 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416353 () Bool)

(declare-fun res!242434 () Bool)

(assert (=> b!416353 (=> (not res!242434) (not e!248544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25311 (_ BitVec 32)) Bool)

(assert (=> b!416353 (= res!242434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!242433 () Bool)

(assert (=> start!39326 (=> (not res!242433) (not e!248544))))

(assert (=> start!39326 (= res!242433 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12454 _keys!709))))))

(assert (=> start!39326 e!248544))

(declare-fun tp_is_empty!10737 () Bool)

(assert (=> start!39326 tp_is_empty!10737))

(assert (=> start!39326 tp!34283))

(assert (=> start!39326 true))

(declare-fun e!248541 () Bool)

(declare-fun array_inv!8826 (array!25309) Bool)

(assert (=> start!39326 (and (array_inv!8826 _values!549) e!248541)))

(declare-fun array_inv!8827 (array!25311) Bool)

(assert (=> start!39326 (array_inv!8827 _keys!709)))

(declare-fun b!416354 () Bool)

(declare-fun e!248545 () Bool)

(assert (=> b!416354 (= e!248542 e!248545)))

(declare-fun res!242432 () Bool)

(assert (=> b!416354 (=> (not res!242432) (not e!248545))))

(assert (=> b!416354 (= res!242432 (= from!863 i!563))))

(assert (=> b!416354 (= lt!190696 (getCurrentListMapNoExtraKeys!1176 lt!190695 lt!190688 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416354 (= lt!190688 (array!25310 (store (arr!12101 _values!549) i!563 (ValueCellFull!5025 v!412)) (size!12453 _values!549)))))

(declare-fun lt!190690 () ListLongMap!5913)

(assert (=> b!416354 (= lt!190690 (getCurrentListMapNoExtraKeys!1176 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416355 () Bool)

(declare-fun e!248546 () Bool)

(assert (=> b!416355 (= e!248546 tp_is_empty!10737)))

(declare-fun mapNonEmpty!17727 () Bool)

(declare-fun mapRes!17727 () Bool)

(declare-fun tp!34284 () Bool)

(assert (=> mapNonEmpty!17727 (= mapRes!17727 (and tp!34284 e!248546))))

(declare-fun mapKey!17727 () (_ BitVec 32))

(declare-fun mapRest!17727 () (Array (_ BitVec 32) ValueCell!5025))

(declare-fun mapValue!17727 () ValueCell!5025)

(assert (=> mapNonEmpty!17727 (= (arr!12101 _values!549) (store mapRest!17727 mapKey!17727 mapValue!17727))))

(declare-fun b!416356 () Bool)

(declare-fun res!242436 () Bool)

(assert (=> b!416356 (=> (not res!242436) (not e!248544))))

(assert (=> b!416356 (= res!242436 (or (= (select (arr!12102 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12102 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416357 () Bool)

(assert (=> b!416357 (= e!248545 (not e!248547))))

(declare-fun res!242429 () Bool)

(assert (=> b!416357 (=> res!242429 e!248547)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416357 (= res!242429 (validKeyInArray!0 (select (arr!12102 _keys!709) from!863)))))

(declare-fun e!248543 () Bool)

(assert (=> b!416357 e!248543))

(assert (=> b!416357 (= c!55016 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190694 () Unit!12267)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!395 (array!25311 array!25309 (_ BitVec 32) (_ BitVec 32) V!15421 V!15421 (_ BitVec 32) (_ BitVec 64) V!15421 (_ BitVec 32) Int) Unit!12267)

(assert (=> b!416357 (= lt!190694 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!395 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28928 () Bool)

(declare-fun call!28931 () ListLongMap!5913)

(assert (=> bm!28928 (= call!28931 (getCurrentListMapNoExtraKeys!1176 (ite c!55016 _keys!709 lt!190695) (ite c!55016 _values!549 lt!190688) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416358 () Bool)

(assert (=> b!416358 (= e!248543 (= call!28931 call!28930))))

(declare-fun b!416359 () Bool)

(declare-fun res!242430 () Bool)

(assert (=> b!416359 (=> (not res!242430) (not e!248544))))

(declare-datatypes ((List!7040 0))(
  ( (Nil!7037) (Cons!7036 (h!7892 (_ BitVec 64)) (t!12298 List!7040)) )
))
(declare-fun arrayNoDuplicates!0 (array!25311 (_ BitVec 32) List!7040) Bool)

(assert (=> b!416359 (= res!242430 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7037))))

(declare-fun b!416360 () Bool)

(declare-fun res!242424 () Bool)

(assert (=> b!416360 (=> (not res!242424) (not e!248544))))

(assert (=> b!416360 (= res!242424 (and (= (size!12453 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12454 _keys!709) (size!12453 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416361 () Bool)

(declare-fun res!242435 () Bool)

(assert (=> b!416361 (=> (not res!242435) (not e!248544))))

(assert (=> b!416361 (= res!242435 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17727 () Bool)

(assert (=> mapIsEmpty!17727 mapRes!17727))

(declare-fun b!416362 () Bool)

(assert (=> b!416362 (= e!248543 (= call!28930 (+!1184 call!28931 (tuple2!6987 k0!794 v!412))))))

(declare-fun b!416363 () Bool)

(declare-fun res!242425 () Bool)

(assert (=> b!416363 (=> (not res!242425) (not e!248544))))

(assert (=> b!416363 (= res!242425 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12454 _keys!709))))))

(declare-fun b!416364 () Bool)

(declare-fun res!242423 () Bool)

(assert (=> b!416364 (=> (not res!242423) (not e!248542))))

(assert (=> b!416364 (= res!242423 (arrayNoDuplicates!0 lt!190695 #b00000000000000000000000000000000 Nil!7037))))

(declare-fun b!416365 () Bool)

(assert (=> b!416365 (= e!248544 e!248542)))

(declare-fun res!242426 () Bool)

(assert (=> b!416365 (=> (not res!242426) (not e!248542))))

(assert (=> b!416365 (= res!242426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190695 mask!1025))))

(assert (=> b!416365 (= lt!190695 (array!25312 (store (arr!12102 _keys!709) i!563 k0!794) (size!12454 _keys!709)))))

(declare-fun b!416366 () Bool)

(declare-fun e!248540 () Bool)

(assert (=> b!416366 (= e!248540 tp_is_empty!10737)))

(declare-fun b!416367 () Bool)

(assert (=> b!416367 (= e!248541 (and e!248540 mapRes!17727))))

(declare-fun condMapEmpty!17727 () Bool)

(declare-fun mapDefault!17727 () ValueCell!5025)

(assert (=> b!416367 (= condMapEmpty!17727 (= (arr!12101 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5025)) mapDefault!17727)))))

(declare-fun b!416368 () Bool)

(declare-fun res!242428 () Bool)

(assert (=> b!416368 (=> (not res!242428) (not e!248544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416368 (= res!242428 (validMask!0 mask!1025))))

(assert (= (and start!39326 res!242433) b!416368))

(assert (= (and b!416368 res!242428) b!416360))

(assert (= (and b!416360 res!242424) b!416353))

(assert (= (and b!416353 res!242434) b!416359))

(assert (= (and b!416359 res!242430) b!416363))

(assert (= (and b!416363 res!242425) b!416361))

(assert (= (and b!416361 res!242435) b!416356))

(assert (= (and b!416356 res!242436) b!416352))

(assert (= (and b!416352 res!242431) b!416365))

(assert (= (and b!416365 res!242426) b!416364))

(assert (= (and b!416364 res!242423) b!416350))

(assert (= (and b!416350 res!242427) b!416354))

(assert (= (and b!416354 res!242432) b!416357))

(assert (= (and b!416357 c!55016) b!416362))

(assert (= (and b!416357 (not c!55016)) b!416358))

(assert (= (or b!416362 b!416358) bm!28927))

(assert (= (or b!416362 b!416358) bm!28928))

(assert (= (and b!416357 (not res!242429)) b!416351))

(assert (= (and b!416367 condMapEmpty!17727) mapIsEmpty!17727))

(assert (= (and b!416367 (not condMapEmpty!17727)) mapNonEmpty!17727))

(get-info :version)

(assert (= (and mapNonEmpty!17727 ((_ is ValueCellFull!5025) mapValue!17727)) b!416355))

(assert (= (and b!416367 ((_ is ValueCellFull!5025) mapDefault!17727)) b!416366))

(assert (= start!39326 b!416367))

(declare-fun b_lambda!8919 () Bool)

(assert (=> (not b_lambda!8919) (not b!416351)))

(declare-fun t!12296 () Bool)

(declare-fun tb!3215 () Bool)

(assert (=> (and start!39326 (= defaultEntry!557 defaultEntry!557) t!12296) tb!3215))

(declare-fun result!5949 () Bool)

(assert (=> tb!3215 (= result!5949 tp_is_empty!10737)))

(assert (=> b!416351 t!12296))

(declare-fun b_and!17065 () Bool)

(assert (= b_and!17063 (and (=> t!12296 result!5949) b_and!17065)))

(declare-fun m!405553 () Bool)

(assert (=> bm!28928 m!405553))

(declare-fun m!405555 () Bool)

(assert (=> b!416356 m!405555))

(declare-fun m!405557 () Bool)

(assert (=> b!416351 m!405557))

(declare-fun m!405559 () Bool)

(assert (=> b!416351 m!405559))

(declare-fun m!405561 () Bool)

(assert (=> b!416351 m!405561))

(declare-fun m!405563 () Bool)

(assert (=> b!416351 m!405563))

(declare-fun m!405565 () Bool)

(assert (=> b!416351 m!405565))

(assert (=> b!416351 m!405563))

(declare-fun m!405567 () Bool)

(assert (=> b!416351 m!405567))

(assert (=> b!416351 m!405559))

(declare-fun m!405569 () Bool)

(assert (=> b!416351 m!405569))

(declare-fun m!405571 () Bool)

(assert (=> b!416351 m!405571))

(declare-fun m!405573 () Bool)

(assert (=> b!416351 m!405573))

(declare-fun m!405575 () Bool)

(assert (=> b!416351 m!405575))

(declare-fun m!405577 () Bool)

(assert (=> b!416351 m!405577))

(declare-fun m!405579 () Bool)

(assert (=> b!416351 m!405579))

(assert (=> b!416351 m!405567))

(declare-fun m!405581 () Bool)

(assert (=> b!416351 m!405581))

(declare-fun m!405583 () Bool)

(assert (=> bm!28927 m!405583))

(declare-fun m!405585 () Bool)

(assert (=> start!39326 m!405585))

(declare-fun m!405587 () Bool)

(assert (=> start!39326 m!405587))

(declare-fun m!405589 () Bool)

(assert (=> b!416352 m!405589))

(declare-fun m!405591 () Bool)

(assert (=> b!416359 m!405591))

(declare-fun m!405593 () Bool)

(assert (=> b!416362 m!405593))

(declare-fun m!405595 () Bool)

(assert (=> mapNonEmpty!17727 m!405595))

(declare-fun m!405597 () Bool)

(assert (=> b!416357 m!405597))

(assert (=> b!416357 m!405597))

(declare-fun m!405599 () Bool)

(assert (=> b!416357 m!405599))

(declare-fun m!405601 () Bool)

(assert (=> b!416357 m!405601))

(declare-fun m!405603 () Bool)

(assert (=> b!416354 m!405603))

(assert (=> b!416354 m!405557))

(declare-fun m!405605 () Bool)

(assert (=> b!416354 m!405605))

(declare-fun m!405607 () Bool)

(assert (=> b!416368 m!405607))

(declare-fun m!405609 () Bool)

(assert (=> b!416365 m!405609))

(declare-fun m!405611 () Bool)

(assert (=> b!416365 m!405611))

(declare-fun m!405613 () Bool)

(assert (=> b!416353 m!405613))

(declare-fun m!405615 () Bool)

(assert (=> b!416361 m!405615))

(declare-fun m!405617 () Bool)

(assert (=> b!416364 m!405617))

(check-sat b_and!17065 (not b_lambda!8919) (not b!416354) (not start!39326) (not mapNonEmpty!17727) (not b!416353) (not b!416359) (not b!416357) (not bm!28927) (not b!416351) (not bm!28928) (not b!416362) (not b!416368) (not b!416352) (not b!416364) (not b!416365) (not b_next!9585) (not b!416361) tp_is_empty!10737)
(check-sat b_and!17065 (not b_next!9585))
