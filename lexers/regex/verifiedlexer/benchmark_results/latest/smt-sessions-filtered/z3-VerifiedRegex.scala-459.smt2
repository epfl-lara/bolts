; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13274 () Bool)

(assert start!13274)

(declare-fun b!128740 () Bool)

(declare-fun b_free!3983 () Bool)

(declare-fun b_next!3983 () Bool)

(assert (=> b!128740 (= b_free!3983 (not b_next!3983))))

(declare-fun tp!70034 () Bool)

(declare-fun b_and!6115 () Bool)

(assert (=> b!128740 (= tp!70034 b_and!6115)))

(declare-fun e!74116 () Bool)

(declare-fun e!74117 () Bool)

(declare-datatypes ((V!946 0))(
  ( (V!947 (val!812 Int)) )
))
(declare-datatypes ((array!1667 0))(
  ( (array!1668 (arr!774 (Array (_ BitVec 32) V!946)) (size!1968 (_ BitVec 32))) )
))
(declare-datatypes ((array!1669 0))(
  ( (array!1670 (arr!775 (Array (_ BitVec 32) (_ BitVec 64))) (size!1969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!890 0))(
  ( (LongMapFixedSize!891 (defaultEntry!785 Int) (mask!1429 (_ BitVec 32)) (extraKeys!691 (_ BitVec 32)) (zeroValue!701 V!946) (minValue!701 V!946) (_size!1010 (_ BitVec 32)) (_keys!736 array!1669) (_values!723 array!1667) (_vacant!506 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1743 0))(
  ( (Cell!1744 (v!13472 LongMapFixedSize!890)) )
))
(declare-datatypes ((MutLongMap!445 0))(
  ( (LongMap!445 (underlying!1076 Cell!1743)) (MutLongMapExt!444 (__x!2244 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!445)

(declare-fun tp_is_empty!1297 () Bool)

(declare-fun array_inv!561 (array!1669) Bool)

(declare-fun array_inv!562 (array!1667) Bool)

(assert (=> b!128740 (= e!74117 (and tp!70034 tp_is_empty!1297 (array_inv!561 (_keys!736 (v!13472 (underlying!1076 thiss!47465)))) (array_inv!562 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) e!74116))))

(declare-fun b!128741 () Bool)

(declare-fun e!74115 () Bool)

(declare-fun lt!38493 () V!946)

(declare-datatypes ((Option!205 0))(
  ( (None!204) (Some!204 (v!13473 V!946)) )
))
(declare-fun lt!38492 () Option!205)

(declare-fun get!578 (Option!205) V!946)

(assert (=> b!128741 (= e!74115 (not (= lt!38493 (get!578 lt!38492))))))

(declare-fun b!128742 () Bool)

(declare-fun e!74112 () Bool)

(assert (=> b!128742 (= e!74112 e!74117)))

(declare-fun b!128743 () Bool)

(declare-fun e!74113 () Bool)

(declare-fun e!74118 () Bool)

(assert (=> b!128743 (= e!74113 e!74118)))

(declare-fun c!28052 () Bool)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun contains!303 (MutLongMap!445 (_ BitVec 64)) Bool)

(assert (=> b!128743 (= c!28052 (contains!303 thiss!47465 key!7065))))

(declare-fun apply!288 (MutLongMap!445 (_ BitVec 64)) V!946)

(assert (=> b!128743 (= lt!38493 (apply!288 thiss!47465 key!7065))))

(declare-fun b!128744 () Bool)

(declare-fun dynLambda!757 (Int (_ BitVec 64)) V!946)

(declare-fun defaultEntry!786 (MutLongMap!445) Int)

(assert (=> b!128744 (= e!74118 (not (= lt!38493 (dynLambda!757 (defaultEntry!786 thiss!47465) key!7065))))))

(declare-fun b!128745 () Bool)

(declare-fun mapRes!1711 () Bool)

(assert (=> b!128745 (= e!74116 (and tp_is_empty!1297 mapRes!1711))))

(declare-fun condMapEmpty!1711 () Bool)

(declare-fun mapDefault!1711 () V!946)

(assert (=> b!128745 (= condMapEmpty!1711 (= (arr!774 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) ((as const (Array (_ BitVec 32) V!946)) mapDefault!1711)))))

(declare-fun res!59318 () Bool)

(assert (=> start!13274 (=> (not res!59318) (not e!74113))))

(declare-fun valid!398 (MutLongMap!445) Bool)

(assert (=> start!13274 (= res!59318 (valid!398 thiss!47465))))

(assert (=> start!13274 e!74113))

(declare-fun e!74114 () Bool)

(assert (=> start!13274 e!74114))

(assert (=> start!13274 true))

(declare-fun mapIsEmpty!1711 () Bool)

(assert (=> mapIsEmpty!1711 mapRes!1711))

(declare-fun b!128746 () Bool)

(assert (=> b!128746 (= e!74114 e!74112)))

(declare-fun b!128747 () Bool)

(assert (=> b!128747 (= e!74118 e!74115)))

(declare-datatypes ((tuple2!2414 0))(
  ( (tuple2!2415 (_1!1417 (_ BitVec 64)) (_2!1417 V!946)) )
))
(declare-datatypes ((List!2132 0))(
  ( (Nil!2126) (Cons!2126 (h!7523 tuple2!2414) (t!22712 List!2132)) )
))
(declare-fun getValueByKey!9 (List!2132 (_ BitVec 64)) Option!205)

(declare-datatypes ((ListLongMap!37 0))(
  ( (ListLongMap!38 (toList!290 List!2132)) )
))
(declare-fun abstractMap!24 (MutLongMap!445) ListLongMap!37)

(assert (=> b!128747 (= lt!38492 (getValueByKey!9 (toList!290 (abstractMap!24 thiss!47465)) key!7065))))

(declare-fun res!59320 () Bool)

(declare-fun isDefined!74 (Option!205) Bool)

(assert (=> b!128747 (= res!59320 (not (isDefined!74 lt!38492)))))

(assert (=> b!128747 (=> res!59320 e!74115)))

(declare-fun mapNonEmpty!1711 () Bool)

(declare-fun tp!70035 () Bool)

(assert (=> mapNonEmpty!1711 (= mapRes!1711 (and tp!70035 tp_is_empty!1297))))

(declare-fun mapRest!1711 () (Array (_ BitVec 32) V!946))

(declare-fun mapKey!1711 () (_ BitVec 32))

(declare-fun mapValue!1711 () V!946)

(assert (=> mapNonEmpty!1711 (= (arr!774 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) (store mapRest!1711 mapKey!1711 mapValue!1711))))

(declare-fun b!128748 () Bool)

(declare-fun res!59319 () Bool)

(assert (=> b!128748 (=> (not res!59319) (not e!74113))))

(get-info :version)

(assert (=> b!128748 (= res!59319 ((_ is LongMap!445) thiss!47465))))

(assert (= (and start!13274 res!59318) b!128748))

(assert (= (and b!128748 res!59319) b!128743))

(assert (= (and b!128743 c!28052) b!128747))

(assert (= (and b!128743 (not c!28052)) b!128744))

(assert (= (and b!128747 (not res!59320)) b!128741))

(assert (= (and b!128745 condMapEmpty!1711) mapIsEmpty!1711))

(assert (= (and b!128745 (not condMapEmpty!1711)) mapNonEmpty!1711))

(assert (= b!128740 b!128745))

(assert (= b!128742 b!128740))

(assert (= b!128746 b!128742))

(assert (= (and start!13274 ((_ is LongMap!445) thiss!47465)) b!128746))

(declare-fun b_lambda!1707 () Bool)

(assert (=> (not b_lambda!1707) (not b!128744)))

(declare-fun t!22711 () Bool)

(declare-fun tb!3657 () Bool)

(assert (=> (and b!128740 (= (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) (defaultEntry!786 thiss!47465)) t!22711) tb!3657))

(declare-fun result!5536 () Bool)

(assert (=> tb!3657 (= result!5536 tp_is_empty!1297)))

(assert (=> b!128744 t!22711))

(declare-fun b_and!6117 () Bool)

(assert (= b_and!6115 (and (=> t!22711 result!5536) b_and!6117)))

(declare-fun m!113325 () Bool)

(assert (=> b!128744 m!113325))

(declare-fun m!113327 () Bool)

(assert (=> b!128744 m!113327))

(declare-fun m!113329 () Bool)

(assert (=> b!128741 m!113329))

(declare-fun m!113331 () Bool)

(assert (=> b!128743 m!113331))

(declare-fun m!113333 () Bool)

(assert (=> b!128743 m!113333))

(declare-fun m!113335 () Bool)

(assert (=> b!128747 m!113335))

(declare-fun m!113337 () Bool)

(assert (=> b!128747 m!113337))

(declare-fun m!113339 () Bool)

(assert (=> b!128747 m!113339))

(declare-fun m!113341 () Bool)

(assert (=> mapNonEmpty!1711 m!113341))

(declare-fun m!113343 () Bool)

(assert (=> start!13274 m!113343))

(declare-fun m!113345 () Bool)

(assert (=> b!128740 m!113345))

(declare-fun m!113347 () Bool)

(assert (=> b!128740 m!113347))

(check-sat (not b_next!3983) (not b!128747) (not start!13274) (not b!128744) b_and!6117 (not mapNonEmpty!1711) (not b_lambda!1707) (not b!128743) (not b!128741) (not b!128740) tp_is_empty!1297)
(check-sat b_and!6117 (not b_next!3983))
(get-model)

(declare-fun d!30322 () Bool)

(declare-fun c!28055 () Bool)

(assert (=> d!30322 (= c!28055 ((_ is LongMap!445) thiss!47465))))

(declare-fun e!74122 () Int)

(assert (=> d!30322 (= (defaultEntry!786 thiss!47465) e!74122)))

(declare-fun b!128755 () Bool)

(declare-fun defaultEntry!787 (MutLongMap!445) Int)

(assert (=> b!128755 (= e!74122 (defaultEntry!787 thiss!47465))))

(declare-fun b!128756 () Bool)

(declare-fun defaultEntry!788 (MutLongMap!445) Int)

(assert (=> b!128756 (= e!74122 (defaultEntry!788 thiss!47465))))

(assert (= (and d!30322 c!28055) b!128755))

(assert (= (and d!30322 (not c!28055)) b!128756))

(declare-fun m!113349 () Bool)

(assert (=> b!128755 m!113349))

(declare-fun m!113351 () Bool)

(assert (=> b!128756 m!113351))

(assert (=> b!128744 d!30322))

(declare-fun d!30324 () Bool)

(declare-fun lt!38496 () Bool)

(declare-fun contains!304 (ListLongMap!37 (_ BitVec 64)) Bool)

(assert (=> d!30324 (= lt!38496 (contains!304 (abstractMap!24 thiss!47465) key!7065))))

(declare-fun e!74125 () Bool)

(assert (=> d!30324 (= lt!38496 e!74125)))

(declare-fun c!28058 () Bool)

(assert (=> d!30324 (= c!28058 ((_ is LongMap!445) thiss!47465))))

(assert (=> d!30324 (valid!398 thiss!47465)))

(assert (=> d!30324 (= (contains!303 thiss!47465 key!7065) lt!38496)))

(declare-fun b!128761 () Bool)

(declare-fun contains!305 (MutLongMap!445 (_ BitVec 64)) Bool)

(assert (=> b!128761 (= e!74125 (contains!305 thiss!47465 key!7065))))

(declare-fun b!128762 () Bool)

(declare-fun contains!306 (MutLongMap!445 (_ BitVec 64)) Bool)

(assert (=> b!128762 (= e!74125 (contains!306 thiss!47465 key!7065))))

(assert (= (and d!30324 c!28058) b!128761))

(assert (= (and d!30324 (not c!28058)) b!128762))

(assert (=> d!30324 m!113335))

(assert (=> d!30324 m!113335))

(declare-fun m!113353 () Bool)

(assert (=> d!30324 m!113353))

(assert (=> d!30324 m!113343))

(declare-fun m!113355 () Bool)

(assert (=> b!128761 m!113355))

(declare-fun m!113357 () Bool)

(assert (=> b!128762 m!113357))

(assert (=> b!128743 d!30324))

(declare-fun d!30326 () Bool)

(declare-fun e!74128 () Bool)

(assert (=> d!30326 e!74128))

(declare-fun c!28061 () Bool)

(assert (=> d!30326 (= c!28061 (contains!305 thiss!47465 key!7065))))

(declare-fun lt!38499 () V!946)

(declare-fun apply!289 (LongMapFixedSize!890 (_ BitVec 64)) V!946)

(assert (=> d!30326 (= lt!38499 (apply!289 (v!13472 (underlying!1076 thiss!47465)) key!7065))))

(declare-fun valid!399 (MutLongMap!445) Bool)

(assert (=> d!30326 (valid!399 thiss!47465)))

(assert (=> d!30326 (= (apply!288 thiss!47465 key!7065) lt!38499)))

(declare-fun b!128767 () Bool)

(declare-fun map!535 (MutLongMap!445) ListLongMap!37)

(assert (=> b!128767 (= e!74128 (= lt!38499 (get!578 (getValueByKey!9 (toList!290 (map!535 thiss!47465)) key!7065))))))

(declare-fun b!128768 () Bool)

(assert (=> b!128768 (= e!74128 (= lt!38499 (dynLambda!757 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) key!7065)))))

(assert (=> b!128768 ((_ is LongMap!445) thiss!47465)))

(assert (= (and d!30326 c!28061) b!128767))

(assert (= (and d!30326 (not c!28061)) b!128768))

(declare-fun b_lambda!1709 () Bool)

(assert (=> (not b_lambda!1709) (not b!128768)))

(declare-fun t!22714 () Bool)

(declare-fun tb!3659 () Bool)

(assert (=> (and b!128740 (= (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465)))) t!22714) tb!3659))

(declare-fun result!5540 () Bool)

(assert (=> tb!3659 (= result!5540 tp_is_empty!1297)))

(assert (=> b!128768 t!22714))

(declare-fun b_and!6119 () Bool)

(assert (= b_and!6117 (and (=> t!22714 result!5540) b_and!6119)))

(assert (=> d!30326 m!113355))

(declare-fun m!113359 () Bool)

(assert (=> d!30326 m!113359))

(declare-fun m!113361 () Bool)

(assert (=> d!30326 m!113361))

(declare-fun m!113363 () Bool)

(assert (=> b!128767 m!113363))

(declare-fun m!113365 () Bool)

(assert (=> b!128767 m!113365))

(assert (=> b!128767 m!113365))

(declare-fun m!113367 () Bool)

(assert (=> b!128767 m!113367))

(declare-fun m!113369 () Bool)

(assert (=> b!128768 m!113369))

(assert (=> b!128743 d!30326))

(declare-fun b!128777 () Bool)

(declare-fun e!74133 () Option!205)

(assert (=> b!128777 (= e!74133 (Some!204 (_2!1417 (h!7523 (toList!290 (abstractMap!24 thiss!47465))))))))

(declare-fun b!128779 () Bool)

(declare-fun e!74134 () Option!205)

(assert (=> b!128779 (= e!74134 (getValueByKey!9 (t!22712 (toList!290 (abstractMap!24 thiss!47465))) key!7065))))

(declare-fun b!128780 () Bool)

(assert (=> b!128780 (= e!74134 None!204)))

(declare-fun b!128778 () Bool)

(assert (=> b!128778 (= e!74133 e!74134)))

(declare-fun c!28067 () Bool)

(assert (=> b!128778 (= c!28067 (and ((_ is Cons!2126) (toList!290 (abstractMap!24 thiss!47465))) (not (= (_1!1417 (h!7523 (toList!290 (abstractMap!24 thiss!47465)))) key!7065))))))

(declare-fun d!30328 () Bool)

(declare-fun c!28066 () Bool)

(assert (=> d!30328 (= c!28066 (and ((_ is Cons!2126) (toList!290 (abstractMap!24 thiss!47465))) (= (_1!1417 (h!7523 (toList!290 (abstractMap!24 thiss!47465)))) key!7065)))))

(assert (=> d!30328 (= (getValueByKey!9 (toList!290 (abstractMap!24 thiss!47465)) key!7065) e!74133)))

(assert (= (and d!30328 c!28066) b!128777))

(assert (= (and d!30328 (not c!28066)) b!128778))

(assert (= (and b!128778 c!28067) b!128779))

(assert (= (and b!128778 (not c!28067)) b!128780))

(declare-fun m!113371 () Bool)

(assert (=> b!128779 m!113371))

(assert (=> b!128747 d!30328))

(declare-fun d!30330 () Bool)

(declare-fun c!28070 () Bool)

(assert (=> d!30330 (= c!28070 ((_ is LongMap!445) thiss!47465))))

(declare-fun e!74137 () ListLongMap!37)

(assert (=> d!30330 (= (abstractMap!24 thiss!47465) e!74137)))

(declare-fun b!128785 () Bool)

(declare-fun abstractMap!25 (MutLongMap!445) ListLongMap!37)

(assert (=> b!128785 (= e!74137 (abstractMap!25 thiss!47465))))

(declare-fun b!128786 () Bool)

(declare-fun abstractMap!26 (MutLongMap!445) ListLongMap!37)

(assert (=> b!128786 (= e!74137 (abstractMap!26 thiss!47465))))

(assert (= (and d!30330 c!28070) b!128785))

(assert (= (and d!30330 (not c!28070)) b!128786))

(declare-fun m!113373 () Bool)

(assert (=> b!128785 m!113373))

(declare-fun m!113375 () Bool)

(assert (=> b!128786 m!113375))

(assert (=> b!128747 d!30330))

(declare-fun d!30332 () Bool)

(declare-fun isEmpty!851 (Option!205) Bool)

(assert (=> d!30332 (= (isDefined!74 lt!38492) (not (isEmpty!851 lt!38492)))))

(declare-fun bs!12546 () Bool)

(assert (= bs!12546 d!30332))

(declare-fun m!113377 () Bool)

(assert (=> bs!12546 m!113377))

(assert (=> b!128747 d!30332))

(declare-fun d!30334 () Bool)

(assert (=> d!30334 (= (get!578 lt!38492) (v!13473 lt!38492))))

(assert (=> b!128741 d!30334))

(declare-fun d!30336 () Bool)

(assert (=> d!30336 (= (array_inv!561 (_keys!736 (v!13472 (underlying!1076 thiss!47465)))) (bvsge (size!1969 (_keys!736 (v!13472 (underlying!1076 thiss!47465)))) #b00000000000000000000000000000000))))

(assert (=> b!128740 d!30336))

(declare-fun d!30338 () Bool)

(assert (=> d!30338 (= (array_inv!562 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) (bvsge (size!1968 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) #b00000000000000000000000000000000))))

(assert (=> b!128740 d!30338))

(declare-fun d!30340 () Bool)

(declare-fun c!28073 () Bool)

(assert (=> d!30340 (= c!28073 ((_ is LongMap!445) thiss!47465))))

(declare-fun e!74140 () Bool)

(assert (=> d!30340 (= (valid!398 thiss!47465) e!74140)))

(declare-fun b!128791 () Bool)

(assert (=> b!128791 (= e!74140 (valid!399 thiss!47465))))

(declare-fun b!128792 () Bool)

(declare-fun valid!400 (MutLongMap!445) Bool)

(assert (=> b!128792 (= e!74140 (valid!400 thiss!47465))))

(assert (= (and d!30340 c!28073) b!128791))

(assert (= (and d!30340 (not c!28073)) b!128792))

(assert (=> b!128791 m!113361))

(declare-fun m!113379 () Bool)

(assert (=> b!128792 m!113379))

(assert (=> start!13274 d!30340))

(declare-fun condMapEmpty!1714 () Bool)

(declare-fun mapDefault!1714 () V!946)

(assert (=> mapNonEmpty!1711 (= condMapEmpty!1714 (= mapRest!1711 ((as const (Array (_ BitVec 32) V!946)) mapDefault!1714)))))

(declare-fun mapRes!1714 () Bool)

(assert (=> mapNonEmpty!1711 (= tp!70035 (and tp_is_empty!1297 mapRes!1714))))

(declare-fun mapIsEmpty!1714 () Bool)

(assert (=> mapIsEmpty!1714 mapRes!1714))

(declare-fun mapNonEmpty!1714 () Bool)

(declare-fun tp!70038 () Bool)

(assert (=> mapNonEmpty!1714 (= mapRes!1714 (and tp!70038 tp_is_empty!1297))))

(declare-fun mapRest!1714 () (Array (_ BitVec 32) V!946))

(declare-fun mapKey!1714 () (_ BitVec 32))

(declare-fun mapValue!1714 () V!946)

(assert (=> mapNonEmpty!1714 (= mapRest!1711 (store mapRest!1714 mapKey!1714 mapValue!1714))))

(assert (= (and mapNonEmpty!1711 condMapEmpty!1714) mapIsEmpty!1714))

(assert (= (and mapNonEmpty!1711 (not condMapEmpty!1714)) mapNonEmpty!1714))

(declare-fun m!113381 () Bool)

(assert (=> mapNonEmpty!1714 m!113381))

(declare-fun b_lambda!1711 () Bool)

(assert (= b_lambda!1709 (or (and b!128740 b_free!3983) b_lambda!1711)))

(declare-fun b_lambda!1713 () Bool)

(assert (= b_lambda!1707 (or (and b!128740 b_free!3983 (= (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) (defaultEntry!786 thiss!47465))) b_lambda!1713)))

(check-sat (not b!128761) (not mapNonEmpty!1714) (not b_next!3983) (not d!30324) (not b_lambda!1713) (not b!128762) (not b!128779) b_and!6119 (not b!128755) (not b!128786) (not b!128785) tp_is_empty!1297 (not b!128791) (not d!30326) (not b!128792) (not d!30332) (not b_lambda!1711) (not b!128767) (not b!128756))
(check-sat b_and!6119 (not b_next!3983))
(get-model)

(declare-fun d!30342 () Bool)

(declare-fun lt!38502 () Bool)

(assert (=> d!30342 (= lt!38502 (contains!304 (abstractMap!24 thiss!47465) key!7065))))

(declare-fun choose!1645 (MutLongMap!445 (_ BitVec 64)) Bool)

(assert (=> d!30342 (= lt!38502 (choose!1645 thiss!47465 key!7065))))

(assert (=> d!30342 (valid!398 thiss!47465)))

(assert (=> d!30342 (= (contains!306 thiss!47465 key!7065) lt!38502)))

(declare-fun bs!12547 () Bool)

(assert (= bs!12547 d!30342))

(assert (=> bs!12547 m!113335))

(assert (=> bs!12547 m!113335))

(assert (=> bs!12547 m!113353))

(declare-fun m!113383 () Bool)

(assert (=> bs!12547 m!113383))

(assert (=> bs!12547 m!113343))

(assert (=> b!128762 d!30342))

(declare-fun d!30344 () Bool)

(declare-fun lt!38505 () Bool)

(assert (=> d!30344 (= lt!38505 (contains!304 (map!535 thiss!47465) key!7065))))

(declare-fun contains!307 (LongMapFixedSize!890 (_ BitVec 64)) Bool)

(assert (=> d!30344 (= lt!38505 (contains!307 (v!13472 (underlying!1076 thiss!47465)) key!7065))))

(assert (=> d!30344 (valid!399 thiss!47465)))

(assert (=> d!30344 (= (contains!305 thiss!47465 key!7065) lt!38505)))

(declare-fun bs!12548 () Bool)

(assert (= bs!12548 d!30344))

(assert (=> bs!12548 m!113363))

(assert (=> bs!12548 m!113363))

(declare-fun m!113385 () Bool)

(assert (=> bs!12548 m!113385))

(declare-fun m!113387 () Bool)

(assert (=> bs!12548 m!113387))

(assert (=> bs!12548 m!113361))

(assert (=> b!128761 d!30344))

(declare-fun b!128795 () Bool)

(declare-fun e!74141 () Option!205)

(assert (=> b!128795 (= e!74141 (Some!204 (_2!1417 (h!7523 (t!22712 (toList!290 (abstractMap!24 thiss!47465)))))))))

(declare-fun b!128797 () Bool)

(declare-fun e!74142 () Option!205)

(assert (=> b!128797 (= e!74142 (getValueByKey!9 (t!22712 (t!22712 (toList!290 (abstractMap!24 thiss!47465)))) key!7065))))

(declare-fun b!128798 () Bool)

(assert (=> b!128798 (= e!74142 None!204)))

(declare-fun b!128796 () Bool)

(assert (=> b!128796 (= e!74141 e!74142)))

(declare-fun c!28075 () Bool)

(assert (=> b!128796 (= c!28075 (and ((_ is Cons!2126) (t!22712 (toList!290 (abstractMap!24 thiss!47465)))) (not (= (_1!1417 (h!7523 (t!22712 (toList!290 (abstractMap!24 thiss!47465))))) key!7065))))))

(declare-fun d!30346 () Bool)

(declare-fun c!28074 () Bool)

(assert (=> d!30346 (= c!28074 (and ((_ is Cons!2126) (t!22712 (toList!290 (abstractMap!24 thiss!47465)))) (= (_1!1417 (h!7523 (t!22712 (toList!290 (abstractMap!24 thiss!47465))))) key!7065)))))

(assert (=> d!30346 (= (getValueByKey!9 (t!22712 (toList!290 (abstractMap!24 thiss!47465))) key!7065) e!74141)))

(assert (= (and d!30346 c!28074) b!128795))

(assert (= (and d!30346 (not c!28074)) b!128796))

(assert (= (and b!128796 c!28075) b!128797))

(assert (= (and b!128796 (not c!28075)) b!128798))

(declare-fun m!113389 () Bool)

(assert (=> b!128797 m!113389))

(assert (=> b!128779 d!30346))

(declare-fun d!30348 () Bool)

(declare-fun choose!1646 (MutLongMap!445) Bool)

(assert (=> d!30348 (= (valid!400 thiss!47465) (choose!1646 thiss!47465))))

(declare-fun bs!12549 () Bool)

(assert (= bs!12549 d!30348))

(declare-fun m!113391 () Bool)

(assert (=> bs!12549 m!113391))

(assert (=> b!128792 d!30348))

(declare-fun d!30350 () Bool)

(declare-fun valid!401 (LongMapFixedSize!890) Bool)

(assert (=> d!30350 (= (valid!399 thiss!47465) (valid!401 (v!13472 (underlying!1076 thiss!47465))))))

(declare-fun bs!12550 () Bool)

(assert (= bs!12550 d!30350))

(declare-fun m!113393 () Bool)

(assert (=> bs!12550 m!113393))

(assert (=> b!128791 d!30350))

(declare-fun d!30352 () Bool)

(declare-fun e!74148 () Bool)

(assert (=> d!30352 e!74148))

(declare-fun res!59323 () Bool)

(assert (=> d!30352 (=> res!59323 e!74148)))

(declare-fun lt!38514 () Bool)

(assert (=> d!30352 (= res!59323 (not lt!38514))))

(declare-fun lt!38515 () Bool)

(assert (=> d!30352 (= lt!38514 lt!38515)))

(declare-datatypes ((Unit!1651 0))(
  ( (Unit!1652) )
))
(declare-fun lt!38517 () Unit!1651)

(declare-fun e!74147 () Unit!1651)

(assert (=> d!30352 (= lt!38517 e!74147)))

(declare-fun c!28078 () Bool)

(assert (=> d!30352 (= c!28078 lt!38515)))

(declare-fun containsKey!10 (List!2132 (_ BitVec 64)) Bool)

(assert (=> d!30352 (= lt!38515 (containsKey!10 (toList!290 (abstractMap!24 thiss!47465)) key!7065))))

(assert (=> d!30352 (= (contains!304 (abstractMap!24 thiss!47465) key!7065) lt!38514)))

(declare-fun b!128805 () Bool)

(declare-fun lt!38516 () Unit!1651)

(assert (=> b!128805 (= e!74147 lt!38516)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!5 (List!2132 (_ BitVec 64)) Unit!1651)

(assert (=> b!128805 (= lt!38516 (lemmaContainsKeyImpliesGetValueByKeyDefined!5 (toList!290 (abstractMap!24 thiss!47465)) key!7065))))

(assert (=> b!128805 (isDefined!74 (getValueByKey!9 (toList!290 (abstractMap!24 thiss!47465)) key!7065))))

(declare-fun b!128806 () Bool)

(declare-fun Unit!1653 () Unit!1651)

(assert (=> b!128806 (= e!74147 Unit!1653)))

(declare-fun b!128807 () Bool)

(assert (=> b!128807 (= e!74148 (isDefined!74 (getValueByKey!9 (toList!290 (abstractMap!24 thiss!47465)) key!7065)))))

(assert (= (and d!30352 c!28078) b!128805))

(assert (= (and d!30352 (not c!28078)) b!128806))

(assert (= (and d!30352 (not res!59323)) b!128807))

(declare-fun m!113395 () Bool)

(assert (=> d!30352 m!113395))

(declare-fun m!113397 () Bool)

(assert (=> b!128805 m!113397))

(assert (=> b!128805 m!113337))

(assert (=> b!128805 m!113337))

(declare-fun m!113399 () Bool)

(assert (=> b!128805 m!113399))

(assert (=> b!128807 m!113337))

(assert (=> b!128807 m!113337))

(assert (=> b!128807 m!113399))

(assert (=> d!30324 d!30352))

(assert (=> d!30324 d!30330))

(assert (=> d!30324 d!30340))

(declare-fun d!30354 () Bool)

(declare-fun choose!1647 (MutLongMap!445) ListLongMap!37)

(assert (=> d!30354 (= (abstractMap!26 thiss!47465) (choose!1647 thiss!47465))))

(declare-fun bs!12551 () Bool)

(assert (= bs!12551 d!30354))

(declare-fun m!113401 () Bool)

(assert (=> bs!12551 m!113401))

(assert (=> b!128786 d!30354))

(declare-fun d!30356 () Bool)

(assert (=> d!30356 (= (abstractMap!25 thiss!47465) (map!535 thiss!47465))))

(declare-fun bs!12552 () Bool)

(assert (= bs!12552 d!30356))

(assert (=> bs!12552 m!113363))

(assert (=> b!128785 d!30356))

(declare-fun d!30358 () Bool)

(assert (=> d!30358 (= (defaultEntry!787 thiss!47465) (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))))))

(assert (=> b!128755 d!30358))

(declare-fun d!30360 () Bool)

(assert (=> d!30360 (= (get!578 (getValueByKey!9 (toList!290 (map!535 thiss!47465)) key!7065)) (v!13473 (getValueByKey!9 (toList!290 (map!535 thiss!47465)) key!7065)))))

(assert (=> b!128767 d!30360))

(declare-fun b!128808 () Bool)

(declare-fun e!74149 () Option!205)

(assert (=> b!128808 (= e!74149 (Some!204 (_2!1417 (h!7523 (toList!290 (map!535 thiss!47465))))))))

(declare-fun b!128810 () Bool)

(declare-fun e!74150 () Option!205)

(assert (=> b!128810 (= e!74150 (getValueByKey!9 (t!22712 (toList!290 (map!535 thiss!47465))) key!7065))))

(declare-fun b!128811 () Bool)

(assert (=> b!128811 (= e!74150 None!204)))

(declare-fun b!128809 () Bool)

(assert (=> b!128809 (= e!74149 e!74150)))

(declare-fun c!28080 () Bool)

(assert (=> b!128809 (= c!28080 (and ((_ is Cons!2126) (toList!290 (map!535 thiss!47465))) (not (= (_1!1417 (h!7523 (toList!290 (map!535 thiss!47465)))) key!7065))))))

(declare-fun d!30362 () Bool)

(declare-fun c!28079 () Bool)

(assert (=> d!30362 (= c!28079 (and ((_ is Cons!2126) (toList!290 (map!535 thiss!47465))) (= (_1!1417 (h!7523 (toList!290 (map!535 thiss!47465)))) key!7065)))))

(assert (=> d!30362 (= (getValueByKey!9 (toList!290 (map!535 thiss!47465)) key!7065) e!74149)))

(assert (= (and d!30362 c!28079) b!128808))

(assert (= (and d!30362 (not c!28079)) b!128809))

(assert (= (and b!128809 c!28080) b!128810))

(assert (= (and b!128809 (not c!28080)) b!128811))

(declare-fun m!113403 () Bool)

(assert (=> b!128810 m!113403))

(assert (=> b!128767 d!30362))

(declare-fun d!30364 () Bool)

(declare-fun map!536 (LongMapFixedSize!890) ListLongMap!37)

(assert (=> d!30364 (= (map!535 thiss!47465) (map!536 (v!13472 (underlying!1076 thiss!47465))))))

(declare-fun bs!12553 () Bool)

(assert (= bs!12553 d!30364))

(declare-fun m!113405 () Bool)

(assert (=> bs!12553 m!113405))

(assert (=> b!128767 d!30364))

(declare-fun d!30366 () Bool)

(assert (=> d!30366 (= (isEmpty!851 lt!38492) (not ((_ is Some!204) lt!38492)))))

(assert (=> d!30332 d!30366))

(assert (=> d!30326 d!30344))

(declare-fun b!128848 () Bool)

(declare-fun e!74175 () Bool)

(declare-datatypes ((SeekEntryResult!4 0))(
  ( (Found!4 (index!690 (_ BitVec 32))) (Undefined!4) (MissingZero!4 (index!691 (_ BitVec 32))) (MissingVacant!4 (index!692 (_ BitVec 32))) (Intermediate!4 (undefined!85 Bool) (index!693 (_ BitVec 32)) (x!34019 (_ BitVec 32))) )
))
(declare-fun lt!38544 () SeekEntryResult!4)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!128848 (= e!74175 (inRange!0 (index!690 lt!38544) (mask!1429 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun b!128850 () Bool)

(declare-fun e!74182 () Bool)

(declare-fun e!74180 () Bool)

(assert (=> b!128850 (= e!74182 e!74180)))

(declare-fun c!28096 () Bool)

(assert (=> b!128850 (= c!28096 (= key!7065 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!128851 () Bool)

(declare-fun lt!38540 () Unit!1651)

(declare-fun lt!38546 () Unit!1651)

(assert (=> b!128851 (= lt!38540 lt!38546)))

(assert (=> b!128851 e!74182))

(declare-fun c!28095 () Bool)

(assert (=> b!128851 (= c!28095 (= key!7065 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!38541 () SeekEntryResult!4)

(declare-fun lemmaKeyInListMapThenSameValueInArray!1 (array!1669 array!1667 (_ BitVec 32) (_ BitVec 32) V!946 V!946 (_ BitVec 64) (_ BitVec 32) Int) Unit!1651)

(assert (=> b!128851 (= lt!38546 (lemmaKeyInListMapThenSameValueInArray!1 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (_values!723 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465))) (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))) (minValue!701 (v!13472 (underlying!1076 thiss!47465))) key!7065 (index!690 lt!38541) (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun lt!38542 () Unit!1651)

(declare-fun lt!38548 () Unit!1651)

(assert (=> b!128851 (= lt!38542 lt!38548)))

(declare-fun getCurrentListMap!3 (array!1669 array!1667 (_ BitVec 32) (_ BitVec 32) V!946 V!946 (_ BitVec 32) Int) ListLongMap!37)

(assert (=> b!128851 (contains!304 (getCurrentListMap!3 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (_values!723 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465))) (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))) (minValue!701 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000000 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465)))) (select (arr!775 (_keys!736 (v!13472 (underlying!1076 thiss!47465)))) (index!690 lt!38541)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!2 (array!1669 array!1667 (_ BitVec 32) (_ BitVec 32) V!946 V!946 (_ BitVec 32) Int) Unit!1651)

(assert (=> b!128851 (= lt!38548 (lemmaValidKeyInArrayIsInListMap!2 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (_values!723 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465))) (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))) (minValue!701 (v!13472 (underlying!1076 thiss!47465))) (index!690 lt!38541) (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun lt!38550 () Unit!1651)

(declare-fun lt!38545 () Unit!1651)

(assert (=> b!128851 (= lt!38550 lt!38545)))

(declare-fun arrayContainsKey!0 (array!1669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!128851 (arrayContainsKey!0 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) key!7065 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1669 (_ BitVec 64) (_ BitVec 32)) Unit!1651)

(assert (=> b!128851 (= lt!38545 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) key!7065 (index!690 lt!38541)))))

(declare-fun e!74179 () V!946)

(assert (=> b!128851 (= e!74179 (select (arr!774 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) (index!690 lt!38541)))))

(declare-fun b!128852 () Bool)

(declare-fun e!74174 () Bool)

(assert (=> b!128852 (= e!74182 e!74174)))

(declare-fun res!59334 () Bool)

(assert (=> b!128852 (= res!59334 (not (= (bvand (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!128852 (=> (not res!59334) (not e!74174))))

(declare-fun b!128853 () Bool)

(declare-fun res!59335 () Bool)

(declare-fun e!74181 () Bool)

(assert (=> b!128853 (=> (not res!59335) (not e!74181))))

(assert (=> b!128853 (= res!59335 (not (= (bvand (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!128853 (= e!74180 e!74181)))

(declare-fun bm!5566 () Bool)

(declare-fun call!5574 () V!946)

(declare-fun call!5572 () V!946)

(assert (=> bm!5566 (= call!5574 call!5572)))

(declare-fun lt!38543 () V!946)

(declare-fun b!128854 () Bool)

(declare-fun e!74173 () Bool)

(assert (=> b!128854 (= e!74173 (= lt!38543 (get!578 (getValueByKey!9 (toList!290 (map!536 (v!13472 (underlying!1076 thiss!47465)))) key!7065))))))

(declare-fun b!128855 () Bool)

(declare-fun c!28100 () Bool)

(assert (=> b!128855 (= c!28100 (and (= key!7065 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!74177 () V!946)

(declare-fun e!74178 () V!946)

(assert (=> b!128855 (= e!74177 e!74178)))

(declare-fun b!128856 () Bool)

(assert (=> b!128856 (= e!74174 (= call!5572 (zeroValue!701 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun b!128857 () Bool)

(assert (=> b!128857 (= e!74179 (dynLambda!757 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) key!7065))))

(declare-fun bm!5567 () Bool)

(declare-fun call!5573 () ListLongMap!37)

(declare-fun call!5571 () ListLongMap!37)

(assert (=> bm!5567 (= call!5573 call!5571)))

(declare-fun b!128849 () Bool)

(assert (=> b!128849 (= e!74178 (dynLambda!757 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) key!7065))))

(declare-fun d!30368 () Bool)

(assert (=> d!30368 e!74173))

(declare-fun c!28098 () Bool)

(assert (=> d!30368 (= c!28098 (contains!307 (v!13472 (underlying!1076 thiss!47465)) key!7065))))

(declare-fun e!74176 () V!946)

(assert (=> d!30368 (= lt!38543 e!74176)))

(declare-fun c!28101 () Bool)

(assert (=> d!30368 (= c!28101 (= key!7065 (bvneg key!7065)))))

(assert (=> d!30368 (valid!401 (v!13472 (underlying!1076 thiss!47465)))))

(assert (=> d!30368 (= (apply!289 (v!13472 (underlying!1076 thiss!47465)) key!7065) lt!38543)))

(declare-fun b!128858 () Bool)

(declare-fun e!74183 () Bool)

(assert (=> b!128858 (= e!74183 (= call!5574 (select (arr!774 (_values!723 (v!13472 (underlying!1076 thiss!47465)))) (index!690 lt!38541))))))

(declare-fun bm!5568 () Bool)

(declare-fun apply!290 (ListLongMap!37 (_ BitVec 64)) V!946)

(assert (=> bm!5568 (= call!5572 (apply!290 (ite c!28095 call!5571 call!5573) key!7065))))

(declare-fun b!128859 () Bool)

(assert (=> b!128859 (= e!74177 (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))))))

(declare-fun bm!5569 () Bool)

(assert (=> bm!5569 (= call!5571 (getCurrentListMap!3 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (_values!723 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465))) (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))) (minValue!701 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000000 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun b!128860 () Bool)

(declare-fun res!59333 () Bool)

(assert (=> b!128860 (=> (not res!59333) (not e!74183))))

(assert (=> b!128860 (= res!59333 (arrayContainsKey!0 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) key!7065 #b00000000000000000000000000000000))))

(assert (=> b!128860 (= e!74180 e!74183)))

(declare-fun b!128861 () Bool)

(assert (=> b!128861 (= e!74173 (= lt!38543 (dynLambda!757 (defaultEntry!785 (v!13472 (underlying!1076 thiss!47465))) key!7065)))))

(declare-fun b!128862 () Bool)

(assert (=> b!128862 (= e!74181 (= call!5574 (minValue!701 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun b!128863 () Bool)

(assert (=> b!128863 (= e!74178 (minValue!701 (v!13472 (underlying!1076 thiss!47465))))))

(declare-fun b!128864 () Bool)

(assert (=> b!128864 (= e!74176 e!74179)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1669 (_ BitVec 32)) SeekEntryResult!4)

(assert (=> b!128864 (= lt!38541 (seekEntry!0 key!7065 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun lt!38547 () Unit!1651)

(declare-fun lemmaSeekEntryGivesInRangeIndex!1 (array!1669 array!1667 (_ BitVec 32) (_ BitVec 32) V!946 V!946 (_ BitVec 64)) Unit!1651)

(assert (=> b!128864 (= lt!38547 (lemmaSeekEntryGivesInRangeIndex!1 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (_values!723 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465))) (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) (zeroValue!701 (v!13472 (underlying!1076 thiss!47465))) (minValue!701 (v!13472 (underlying!1076 thiss!47465))) key!7065))))

(assert (=> b!128864 (= lt!38544 (seekEntry!0 key!7065 (_keys!736 (v!13472 (underlying!1076 thiss!47465))) (mask!1429 (v!13472 (underlying!1076 thiss!47465)))))))

(declare-fun res!59332 () Bool)

(assert (=> b!128864 (= res!59332 (not ((_ is Found!4) lt!38544)))))

(assert (=> b!128864 (=> res!59332 e!74175)))

(assert (=> b!128864 e!74175))

(declare-fun lt!38549 () Unit!1651)

(assert (=> b!128864 (= lt!38549 lt!38547)))

(declare-fun c!28097 () Bool)

(assert (=> b!128864 (= c!28097 ((_ is Found!4) lt!38541))))

(declare-fun b!128865 () Bool)

(assert (=> b!128865 (= e!74176 e!74177)))

(declare-fun c!28099 () Bool)

(assert (=> b!128865 (= c!28099 (and (= key!7065 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!691 (v!13472 (underlying!1076 thiss!47465))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and d!30368 c!28101) b!128865))

(assert (= (and d!30368 (not c!28101)) b!128864))

(assert (= (and b!128865 c!28099) b!128859))

(assert (= (and b!128865 (not c!28099)) b!128855))

(assert (= (and b!128855 c!28100) b!128863))

(assert (= (and b!128855 (not c!28100)) b!128849))

(assert (= (and b!128864 (not res!59332)) b!128848))

(assert (= (and b!128864 c!28097) b!128851))

(assert (= (and b!128864 (not c!28097)) b!128857))

(assert (= (and b!128851 c!28095) b!128852))

(assert (= (and b!128851 (not c!28095)) b!128850))

(assert (= (and b!128852 res!59334) b!128856))

(assert (= (and b!128850 c!28096) b!128853))

(assert (= (and b!128850 (not c!28096)) b!128860))

(assert (= (and b!128853 res!59335) b!128862))

(assert (= (and b!128860 res!59333) b!128858))

(assert (= (or b!128862 b!128858) bm!5567))

(assert (= (or b!128862 b!128858) bm!5566))

(assert (= (or b!128856 bm!5567) bm!5569))

(assert (= (or b!128856 bm!5566) bm!5568))

(assert (= (and d!30368 c!28098) b!128854))

(assert (= (and d!30368 (not c!28098)) b!128861))

(declare-fun b_lambda!1715 () Bool)

(assert (=> (not b_lambda!1715) (not b!128857)))

(assert (=> b!128857 t!22714))

(declare-fun b_and!6121 () Bool)

(assert (= b_and!6119 (and (=> t!22714 result!5540) b_and!6121)))

(declare-fun b_lambda!1717 () Bool)

(assert (=> (not b_lambda!1717) (not b!128849)))

(assert (=> b!128849 t!22714))

(declare-fun b_and!6123 () Bool)

(assert (= b_and!6121 (and (=> t!22714 result!5540) b_and!6123)))

(declare-fun b_lambda!1719 () Bool)

(assert (=> (not b_lambda!1719) (not b!128861)))

(assert (=> b!128861 t!22714))

(declare-fun b_and!6125 () Bool)

(assert (= b_and!6123 (and (=> t!22714 result!5540) b_and!6125)))

(assert (=> b!128849 m!113369))

(declare-fun m!113407 () Bool)

(assert (=> b!128851 m!113407))

(declare-fun m!113409 () Bool)

(assert (=> b!128851 m!113409))

(declare-fun m!113411 () Bool)

(assert (=> b!128851 m!113411))

(declare-fun m!113413 () Bool)

(assert (=> b!128851 m!113413))

(assert (=> b!128851 m!113407))

(assert (=> b!128851 m!113409))

(declare-fun m!113415 () Bool)

(assert (=> b!128851 m!113415))

(declare-fun m!113417 () Bool)

(assert (=> b!128851 m!113417))

(declare-fun m!113419 () Bool)

(assert (=> b!128851 m!113419))

(declare-fun m!113421 () Bool)

(assert (=> b!128851 m!113421))

(assert (=> b!128858 m!113419))

(declare-fun m!113423 () Bool)

(assert (=> b!128864 m!113423))

(declare-fun m!113425 () Bool)

(assert (=> b!128864 m!113425))

(assert (=> b!128857 m!113369))

(assert (=> b!128861 m!113369))

(assert (=> bm!5569 m!113407))

(assert (=> d!30368 m!113387))

(assert (=> d!30368 m!113393))

(declare-fun m!113427 () Bool)

(assert (=> b!128848 m!113427))

(assert (=> b!128854 m!113405))

(declare-fun m!113429 () Bool)

(assert (=> b!128854 m!113429))

(assert (=> b!128854 m!113429))

(declare-fun m!113431 () Bool)

(assert (=> b!128854 m!113431))

(assert (=> b!128860 m!113417))

(declare-fun m!113433 () Bool)

(assert (=> bm!5568 m!113433))

(assert (=> d!30326 d!30368))

(assert (=> d!30326 d!30350))

(declare-fun d!30370 () Bool)

(declare-fun choose!1648 (MutLongMap!445) Int)

(assert (=> d!30370 (= (defaultEntry!788 thiss!47465) (choose!1648 thiss!47465))))

(declare-fun bs!12554 () Bool)

(assert (= bs!12554 d!30370))

(declare-fun m!113435 () Bool)

(assert (=> bs!12554 m!113435))

(assert (=> b!128756 d!30370))

(declare-fun condMapEmpty!1715 () Bool)

(declare-fun mapDefault!1715 () V!946)

(assert (=> mapNonEmpty!1714 (= condMapEmpty!1715 (= mapRest!1714 ((as const (Array (_ BitVec 32) V!946)) mapDefault!1715)))))

(declare-fun mapRes!1715 () Bool)

(assert (=> mapNonEmpty!1714 (= tp!70038 (and tp_is_empty!1297 mapRes!1715))))

(declare-fun mapIsEmpty!1715 () Bool)

(assert (=> mapIsEmpty!1715 mapRes!1715))

(declare-fun mapNonEmpty!1715 () Bool)

(declare-fun tp!70039 () Bool)

(assert (=> mapNonEmpty!1715 (= mapRes!1715 (and tp!70039 tp_is_empty!1297))))

(declare-fun mapKey!1715 () (_ BitVec 32))

(declare-fun mapRest!1715 () (Array (_ BitVec 32) V!946))

(declare-fun mapValue!1715 () V!946)

(assert (=> mapNonEmpty!1715 (= mapRest!1714 (store mapRest!1715 mapKey!1715 mapValue!1715))))

(assert (= (and mapNonEmpty!1714 condMapEmpty!1715) mapIsEmpty!1715))

(assert (= (and mapNonEmpty!1714 (not condMapEmpty!1715)) mapNonEmpty!1715))

(declare-fun m!113437 () Bool)

(assert (=> mapNonEmpty!1715 m!113437))

(declare-fun b_lambda!1721 () Bool)

(assert (= b_lambda!1717 (or (and b!128740 b_free!3983) b_lambda!1721)))

(declare-fun b_lambda!1723 () Bool)

(assert (= b_lambda!1715 (or (and b!128740 b_free!3983) b_lambda!1723)))

(declare-fun b_lambda!1725 () Bool)

(assert (= b_lambda!1719 (or (and b!128740 b_free!3983) b_lambda!1725)))

(check-sat (not b!128810) (not b!128797) (not d!30364) (not bm!5569) (not d!30348) (not b_lambda!1723) (not b!128860) (not d!30356) (not d!30350) (not b_lambda!1725) (not d!30344) (not d!30342) (not b!128854) (not b!128807) (not mapNonEmpty!1715) (not b!128848) (not b_lambda!1711) (not b!128805) (not b_lambda!1721) (not b_next!3983) (not b!128864) (not b_lambda!1713) b_and!6125 (not d!30370) (not d!30368) tp_is_empty!1297 (not b!128851) (not bm!5568) (not d!30352) (not d!30354))
(check-sat b_and!6125 (not b_next!3983))
