; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35242 () Bool)

(assert start!35242)

(declare-fun b_free!7809 () Bool)

(declare-fun b_next!7809 () Bool)

(assert (=> start!35242 (= b_free!7809 (not b_next!7809))))

(declare-fun tp!27020 () Bool)

(declare-fun b_and!15067 () Bool)

(assert (=> start!35242 (= tp!27020 b_and!15067)))

(declare-fun b!353055 () Bool)

(declare-fun e!216189 () Bool)

(declare-fun tp_is_empty!7761 () Bool)

(assert (=> b!353055 (= e!216189 tp_is_empty!7761)))

(declare-fun mapIsEmpty!13128 () Bool)

(declare-fun mapRes!13128 () Bool)

(assert (=> mapIsEmpty!13128 mapRes!13128))

(declare-fun b!353056 () Bool)

(declare-fun res!195861 () Bool)

(declare-fun e!216188 () Bool)

(assert (=> b!353056 (=> (not res!195861) (not e!216188))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353056 (= res!195861 (validKeyInArray!0 k0!1348))))

(declare-fun b!353057 () Bool)

(declare-fun res!195863 () Bool)

(assert (=> b!353057 (=> (not res!195863) (not e!216188))))

(declare-datatypes ((array!19073 0))(
  ( (array!19074 (arr!9034 (Array (_ BitVec 32) (_ BitVec 64))) (size!9386 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19073)

(declare-datatypes ((List!5291 0))(
  ( (Nil!5288) (Cons!5287 (h!6143 (_ BitVec 64)) (t!10447 List!5291)) )
))
(declare-fun arrayNoDuplicates!0 (array!19073 (_ BitVec 32) List!5291) Bool)

(assert (=> b!353057 (= res!195863 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5288))))

(declare-fun b!353059 () Bool)

(declare-fun e!216191 () Bool)

(assert (=> b!353059 (= e!216191 (and e!216189 mapRes!13128))))

(declare-fun condMapEmpty!13128 () Bool)

(declare-datatypes ((V!11325 0))(
  ( (V!11326 (val!3925 Int)) )
))
(declare-datatypes ((ValueCell!3537 0))(
  ( (ValueCellFull!3537 (v!6113 V!11325)) (EmptyCell!3537) )
))
(declare-datatypes ((array!19075 0))(
  ( (array!19076 (arr!9035 (Array (_ BitVec 32) ValueCell!3537)) (size!9387 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19075)

(declare-fun mapDefault!13128 () ValueCell!3537)

(assert (=> b!353059 (= condMapEmpty!13128 (= (arr!9035 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3537)) mapDefault!13128)))))

(declare-fun b!353060 () Bool)

(declare-fun res!195859 () Bool)

(assert (=> b!353060 (=> (not res!195859) (not e!216188))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19073 (_ BitVec 32)) Bool)

(assert (=> b!353060 (= res!195859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!353061 () Bool)

(declare-datatypes ((SeekEntryResult!3472 0))(
  ( (MissingZero!3472 (index!16067 (_ BitVec 32))) (Found!3472 (index!16068 (_ BitVec 32))) (Intermediate!3472 (undefined!4284 Bool) (index!16069 (_ BitVec 32)) (x!35133 (_ BitVec 32))) (Undefined!3472) (MissingVacant!3472 (index!16070 (_ BitVec 32))) )
))
(declare-fun lt!165435 () SeekEntryResult!3472)

(get-info :version)

(assert (=> b!353061 (= e!216188 (and (not ((_ is Found!3472) lt!165435)) (not ((_ is MissingZero!3472) lt!165435)) (not ((_ is MissingVacant!3472) lt!165435)) (not ((_ is Undefined!3472) lt!165435))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19073 (_ BitVec 32)) SeekEntryResult!3472)

(assert (=> b!353061 (= lt!165435 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!353062 () Bool)

(declare-fun e!216190 () Bool)

(assert (=> b!353062 (= e!216190 tp_is_empty!7761)))

(declare-fun b!353058 () Bool)

(declare-fun res!195858 () Bool)

(assert (=> b!353058 (=> (not res!195858) (not e!216188))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!353058 (= res!195858 (and (= (size!9387 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9386 _keys!1895) (size!9387 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!195862 () Bool)

(assert (=> start!35242 (=> (not res!195862) (not e!216188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35242 (= res!195862 (validMask!0 mask!2385))))

(assert (=> start!35242 e!216188))

(assert (=> start!35242 true))

(assert (=> start!35242 tp_is_empty!7761))

(assert (=> start!35242 tp!27020))

(declare-fun array_inv!6652 (array!19075) Bool)

(assert (=> start!35242 (and (array_inv!6652 _values!1525) e!216191)))

(declare-fun array_inv!6653 (array!19073) Bool)

(assert (=> start!35242 (array_inv!6653 _keys!1895)))

(declare-fun mapNonEmpty!13128 () Bool)

(declare-fun tp!27021 () Bool)

(assert (=> mapNonEmpty!13128 (= mapRes!13128 (and tp!27021 e!216190))))

(declare-fun mapKey!13128 () (_ BitVec 32))

(declare-fun mapValue!13128 () ValueCell!3537)

(declare-fun mapRest!13128 () (Array (_ BitVec 32) ValueCell!3537))

(assert (=> mapNonEmpty!13128 (= (arr!9035 _values!1525) (store mapRest!13128 mapKey!13128 mapValue!13128))))

(declare-fun b!353063 () Bool)

(declare-fun res!195860 () Bool)

(assert (=> b!353063 (=> (not res!195860) (not e!216188))))

(declare-fun zeroValue!1467 () V!11325)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11325)

(declare-datatypes ((tuple2!5656 0))(
  ( (tuple2!5657 (_1!2838 (_ BitVec 64)) (_2!2838 V!11325)) )
))
(declare-datatypes ((List!5292 0))(
  ( (Nil!5289) (Cons!5288 (h!6144 tuple2!5656) (t!10448 List!5292)) )
))
(declare-datatypes ((ListLongMap!4583 0))(
  ( (ListLongMap!4584 (toList!2307 List!5292)) )
))
(declare-fun contains!2377 (ListLongMap!4583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1824 (array!19073 array!19075 (_ BitVec 32) (_ BitVec 32) V!11325 V!11325 (_ BitVec 32) Int) ListLongMap!4583)

(assert (=> b!353063 (= res!195860 (not (contains!2377 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!35242 res!195862) b!353058))

(assert (= (and b!353058 res!195858) b!353060))

(assert (= (and b!353060 res!195859) b!353057))

(assert (= (and b!353057 res!195863) b!353056))

(assert (= (and b!353056 res!195861) b!353063))

(assert (= (and b!353063 res!195860) b!353061))

(assert (= (and b!353059 condMapEmpty!13128) mapIsEmpty!13128))

(assert (= (and b!353059 (not condMapEmpty!13128)) mapNonEmpty!13128))

(assert (= (and mapNonEmpty!13128 ((_ is ValueCellFull!3537) mapValue!13128)) b!353062))

(assert (= (and b!353059 ((_ is ValueCellFull!3537) mapDefault!13128)) b!353055))

(assert (= start!35242 b!353059))

(declare-fun m!352521 () Bool)

(assert (=> b!353057 m!352521))

(declare-fun m!352523 () Bool)

(assert (=> b!353063 m!352523))

(assert (=> b!353063 m!352523))

(declare-fun m!352525 () Bool)

(assert (=> b!353063 m!352525))

(declare-fun m!352527 () Bool)

(assert (=> mapNonEmpty!13128 m!352527))

(declare-fun m!352529 () Bool)

(assert (=> b!353056 m!352529))

(declare-fun m!352531 () Bool)

(assert (=> b!353061 m!352531))

(declare-fun m!352533 () Bool)

(assert (=> b!353060 m!352533))

(declare-fun m!352535 () Bool)

(assert (=> start!35242 m!352535))

(declare-fun m!352537 () Bool)

(assert (=> start!35242 m!352537))

(declare-fun m!352539 () Bool)

(assert (=> start!35242 m!352539))

(check-sat (not b!353061) (not b!353056) (not b!353060) tp_is_empty!7761 (not b_next!7809) (not b!353063) (not start!35242) b_and!15067 (not mapNonEmpty!13128) (not b!353057))
(check-sat b_and!15067 (not b_next!7809))
(get-model)

(declare-fun d!71459 () Bool)

(assert (=> d!71459 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35242 d!71459))

(declare-fun d!71461 () Bool)

(assert (=> d!71461 (= (array_inv!6652 _values!1525) (bvsge (size!9387 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35242 d!71461))

(declare-fun d!71463 () Bool)

(assert (=> d!71463 (= (array_inv!6653 _keys!1895) (bvsge (size!9386 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35242 d!71463))

(declare-fun d!71465 () Bool)

(declare-fun e!216212 () Bool)

(assert (=> d!71465 e!216212))

(declare-fun res!195884 () Bool)

(assert (=> d!71465 (=> res!195884 e!216212)))

(declare-fun lt!165447 () Bool)

(assert (=> d!71465 (= res!195884 (not lt!165447))))

(declare-fun lt!165448 () Bool)

(assert (=> d!71465 (= lt!165447 lt!165448)))

(declare-datatypes ((Unit!10911 0))(
  ( (Unit!10912) )
))
(declare-fun lt!165450 () Unit!10911)

(declare-fun e!216213 () Unit!10911)

(assert (=> d!71465 (= lt!165450 e!216213)))

(declare-fun c!53579 () Bool)

(assert (=> d!71465 (= c!53579 lt!165448)))

(declare-fun containsKey!345 (List!5292 (_ BitVec 64)) Bool)

(assert (=> d!71465 (= lt!165448 (containsKey!345 (toList!2307 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71465 (= (contains!2377 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!165447)))

(declare-fun b!353097 () Bool)

(declare-fun lt!165449 () Unit!10911)

(assert (=> b!353097 (= e!216213 lt!165449)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!294 (List!5292 (_ BitVec 64)) Unit!10911)

(assert (=> b!353097 (= lt!165449 (lemmaContainsKeyImpliesGetValueByKeyDefined!294 (toList!2307 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!359 0))(
  ( (Some!358 (v!6115 V!11325)) (None!357) )
))
(declare-fun isDefined!295 (Option!359) Bool)

(declare-fun getValueByKey!353 (List!5292 (_ BitVec 64)) Option!359)

(assert (=> b!353097 (isDefined!295 (getValueByKey!353 (toList!2307 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!353098 () Bool)

(declare-fun Unit!10913 () Unit!10911)

(assert (=> b!353098 (= e!216213 Unit!10913)))

(declare-fun b!353099 () Bool)

(assert (=> b!353099 (= e!216212 (isDefined!295 (getValueByKey!353 (toList!2307 (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71465 c!53579) b!353097))

(assert (= (and d!71465 (not c!53579)) b!353098))

(assert (= (and d!71465 (not res!195884)) b!353099))

(declare-fun m!352561 () Bool)

(assert (=> d!71465 m!352561))

(declare-fun m!352563 () Bool)

(assert (=> b!353097 m!352563))

(declare-fun m!352565 () Bool)

(assert (=> b!353097 m!352565))

(assert (=> b!353097 m!352565))

(declare-fun m!352567 () Bool)

(assert (=> b!353097 m!352567))

(assert (=> b!353099 m!352565))

(assert (=> b!353099 m!352565))

(assert (=> b!353099 m!352567))

(assert (=> b!353063 d!71465))

(declare-fun call!27125 () ListLongMap!4583)

(declare-fun call!27130 () ListLongMap!4583)

(declare-fun bm!27122 () Bool)

(declare-fun c!53593 () Bool)

(declare-fun call!27126 () ListLongMap!4583)

(declare-fun c!53596 () Bool)

(declare-fun call!27131 () ListLongMap!4583)

(declare-fun +!740 (ListLongMap!4583 tuple2!5656) ListLongMap!4583)

(assert (=> bm!27122 (= call!27131 (+!740 (ite c!53593 call!27130 (ite c!53596 call!27126 call!27125)) (ite (or c!53593 c!53596) (tuple2!5657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!353142 () Bool)

(declare-fun e!216246 () Bool)

(assert (=> b!353142 (= e!216246 (validKeyInArray!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!353143 () Bool)

(declare-fun e!216244 () Bool)

(declare-fun e!216248 () Bool)

(assert (=> b!353143 (= e!216244 e!216248)))

(declare-fun c!53595 () Bool)

(assert (=> b!353143 (= c!53595 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!353144 () Bool)

(declare-fun e!216251 () ListLongMap!4583)

(declare-fun e!216243 () ListLongMap!4583)

(assert (=> b!353144 (= e!216251 e!216243)))

(assert (=> b!353144 (= c!53596 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27123 () Bool)

(declare-fun call!27128 () Bool)

(declare-fun lt!165507 () ListLongMap!4583)

(assert (=> bm!27123 (= call!27128 (contains!2377 lt!165507 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353145 () Bool)

(assert (=> b!353145 (= e!216251 (+!740 call!27131 (tuple2!5657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!27124 () Bool)

(assert (=> bm!27124 (= call!27126 call!27130)))

(declare-fun b!353147 () Bool)

(declare-fun call!27129 () ListLongMap!4583)

(assert (=> b!353147 (= e!216243 call!27129)))

(declare-fun b!353148 () Bool)

(declare-fun e!216252 () Bool)

(declare-fun apply!296 (ListLongMap!4583 (_ BitVec 64)) V!11325)

(assert (=> b!353148 (= e!216252 (= (apply!296 lt!165507 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!353149 () Bool)

(declare-fun e!216240 () Bool)

(assert (=> b!353149 (= e!216240 (= (apply!296 lt!165507 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!353150 () Bool)

(declare-fun call!27127 () Bool)

(assert (=> b!353150 (= e!216248 (not call!27127))))

(declare-fun b!353151 () Bool)

(declare-fun e!216241 () Bool)

(assert (=> b!353151 (= e!216241 (not call!27128))))

(declare-fun b!353152 () Bool)

(assert (=> b!353152 (= e!216248 e!216252)))

(declare-fun res!195904 () Bool)

(assert (=> b!353152 (= res!195904 call!27127)))

(assert (=> b!353152 (=> (not res!195904) (not e!216252))))

(declare-fun bm!27125 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!615 (array!19073 array!19075 (_ BitVec 32) (_ BitVec 32) V!11325 V!11325 (_ BitVec 32) Int) ListLongMap!4583)

(assert (=> bm!27125 (= call!27130 (getCurrentListMapNoExtraKeys!615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun d!71467 () Bool)

(assert (=> d!71467 e!216244))

(declare-fun res!195903 () Bool)

(assert (=> d!71467 (=> (not res!195903) (not e!216244))))

(assert (=> d!71467 (= res!195903 (or (bvsge #b00000000000000000000000000000000 (size!9386 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9386 _keys!1895)))))))

(declare-fun lt!165508 () ListLongMap!4583)

(assert (=> d!71467 (= lt!165507 lt!165508)))

(declare-fun lt!165511 () Unit!10911)

(declare-fun e!216245 () Unit!10911)

(assert (=> d!71467 (= lt!165511 e!216245)))

(declare-fun c!53594 () Bool)

(declare-fun e!216250 () Bool)

(assert (=> d!71467 (= c!53594 e!216250)))

(declare-fun res!195908 () Bool)

(assert (=> d!71467 (=> (not res!195908) (not e!216250))))

(assert (=> d!71467 (= res!195908 (bvslt #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(assert (=> d!71467 (= lt!165508 e!216251)))

(assert (=> d!71467 (= c!53593 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71467 (validMask!0 mask!2385)))

(assert (=> d!71467 (= (getCurrentListMap!1824 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!165507)))

(declare-fun b!353146 () Bool)

(declare-fun res!195907 () Bool)

(assert (=> b!353146 (=> (not res!195907) (not e!216244))))

(declare-fun e!216242 () Bool)

(assert (=> b!353146 (= res!195907 e!216242)))

(declare-fun res!195911 () Bool)

(assert (=> b!353146 (=> res!195911 e!216242)))

(assert (=> b!353146 (= res!195911 (not e!216246))))

(declare-fun res!195910 () Bool)

(assert (=> b!353146 (=> (not res!195910) (not e!216246))))

(assert (=> b!353146 (= res!195910 (bvslt #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(declare-fun b!353153 () Bool)

(assert (=> b!353153 (= e!216241 e!216240)))

(declare-fun res!195909 () Bool)

(assert (=> b!353153 (= res!195909 call!27128)))

(assert (=> b!353153 (=> (not res!195909) (not e!216240))))

(declare-fun bm!27126 () Bool)

(assert (=> bm!27126 (= call!27129 call!27131)))

(declare-fun bm!27127 () Bool)

(assert (=> bm!27127 (= call!27125 call!27126)))

(declare-fun e!216247 () Bool)

(declare-fun b!353154 () Bool)

(declare-fun get!4829 (ValueCell!3537 V!11325) V!11325)

(declare-fun dynLambda!634 (Int (_ BitVec 64)) V!11325)

(assert (=> b!353154 (= e!216247 (= (apply!296 lt!165507 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)) (get!4829 (select (arr!9035 _values!1525) #b00000000000000000000000000000000) (dynLambda!634 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!353154 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9387 _values!1525)))))

(assert (=> b!353154 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(declare-fun b!353155 () Bool)

(declare-fun lt!165516 () Unit!10911)

(assert (=> b!353155 (= e!216245 lt!165516)))

(declare-fun lt!165497 () ListLongMap!4583)

(assert (=> b!353155 (= lt!165497 (getCurrentListMapNoExtraKeys!615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165498 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165498 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165495 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165495 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165503 () Unit!10911)

(declare-fun addStillContains!272 (ListLongMap!4583 (_ BitVec 64) V!11325 (_ BitVec 64)) Unit!10911)

(assert (=> b!353155 (= lt!165503 (addStillContains!272 lt!165497 lt!165498 zeroValue!1467 lt!165495))))

(assert (=> b!353155 (contains!2377 (+!740 lt!165497 (tuple2!5657 lt!165498 zeroValue!1467)) lt!165495)))

(declare-fun lt!165515 () Unit!10911)

(assert (=> b!353155 (= lt!165515 lt!165503)))

(declare-fun lt!165514 () ListLongMap!4583)

(assert (=> b!353155 (= lt!165514 (getCurrentListMapNoExtraKeys!615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165500 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165500 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165510 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165510 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165501 () Unit!10911)

(declare-fun addApplyDifferent!272 (ListLongMap!4583 (_ BitVec 64) V!11325 (_ BitVec 64)) Unit!10911)

(assert (=> b!353155 (= lt!165501 (addApplyDifferent!272 lt!165514 lt!165500 minValue!1467 lt!165510))))

(assert (=> b!353155 (= (apply!296 (+!740 lt!165514 (tuple2!5657 lt!165500 minValue!1467)) lt!165510) (apply!296 lt!165514 lt!165510))))

(declare-fun lt!165496 () Unit!10911)

(assert (=> b!353155 (= lt!165496 lt!165501)))

(declare-fun lt!165512 () ListLongMap!4583)

(assert (=> b!353155 (= lt!165512 (getCurrentListMapNoExtraKeys!615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165502 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165499 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165499 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165513 () Unit!10911)

(assert (=> b!353155 (= lt!165513 (addApplyDifferent!272 lt!165512 lt!165502 zeroValue!1467 lt!165499))))

(assert (=> b!353155 (= (apply!296 (+!740 lt!165512 (tuple2!5657 lt!165502 zeroValue!1467)) lt!165499) (apply!296 lt!165512 lt!165499))))

(declare-fun lt!165505 () Unit!10911)

(assert (=> b!353155 (= lt!165505 lt!165513)))

(declare-fun lt!165504 () ListLongMap!4583)

(assert (=> b!353155 (= lt!165504 (getCurrentListMapNoExtraKeys!615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165506 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165506 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165509 () (_ BitVec 64))

(assert (=> b!353155 (= lt!165509 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!353155 (= lt!165516 (addApplyDifferent!272 lt!165504 lt!165506 minValue!1467 lt!165509))))

(assert (=> b!353155 (= (apply!296 (+!740 lt!165504 (tuple2!5657 lt!165506 minValue!1467)) lt!165509) (apply!296 lt!165504 lt!165509))))

(declare-fun b!353156 () Bool)

(assert (=> b!353156 (= e!216250 (validKeyInArray!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!353157 () Bool)

(declare-fun Unit!10914 () Unit!10911)

(assert (=> b!353157 (= e!216245 Unit!10914)))

(declare-fun bm!27128 () Bool)

(assert (=> bm!27128 (= call!27127 (contains!2377 lt!165507 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353158 () Bool)

(declare-fun res!195905 () Bool)

(assert (=> b!353158 (=> (not res!195905) (not e!216244))))

(assert (=> b!353158 (= res!195905 e!216241)))

(declare-fun c!53592 () Bool)

(assert (=> b!353158 (= c!53592 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!353159 () Bool)

(declare-fun c!53597 () Bool)

(assert (=> b!353159 (= c!53597 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!216249 () ListLongMap!4583)

(assert (=> b!353159 (= e!216243 e!216249)))

(declare-fun b!353160 () Bool)

(assert (=> b!353160 (= e!216242 e!216247)))

(declare-fun res!195906 () Bool)

(assert (=> b!353160 (=> (not res!195906) (not e!216247))))

(assert (=> b!353160 (= res!195906 (contains!2377 lt!165507 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!353160 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(declare-fun b!353161 () Bool)

(assert (=> b!353161 (= e!216249 call!27125)))

(declare-fun b!353162 () Bool)

(assert (=> b!353162 (= e!216249 call!27129)))

(assert (= (and d!71467 c!53593) b!353145))

(assert (= (and d!71467 (not c!53593)) b!353144))

(assert (= (and b!353144 c!53596) b!353147))

(assert (= (and b!353144 (not c!53596)) b!353159))

(assert (= (and b!353159 c!53597) b!353162))

(assert (= (and b!353159 (not c!53597)) b!353161))

(assert (= (or b!353162 b!353161) bm!27127))

(assert (= (or b!353147 bm!27127) bm!27124))

(assert (= (or b!353147 b!353162) bm!27126))

(assert (= (or b!353145 bm!27124) bm!27125))

(assert (= (or b!353145 bm!27126) bm!27122))

(assert (= (and d!71467 res!195908) b!353156))

(assert (= (and d!71467 c!53594) b!353155))

(assert (= (and d!71467 (not c!53594)) b!353157))

(assert (= (and d!71467 res!195903) b!353146))

(assert (= (and b!353146 res!195910) b!353142))

(assert (= (and b!353146 (not res!195911)) b!353160))

(assert (= (and b!353160 res!195906) b!353154))

(assert (= (and b!353146 res!195907) b!353158))

(assert (= (and b!353158 c!53592) b!353153))

(assert (= (and b!353158 (not c!53592)) b!353151))

(assert (= (and b!353153 res!195909) b!353149))

(assert (= (or b!353153 b!353151) bm!27123))

(assert (= (and b!353158 res!195905) b!353143))

(assert (= (and b!353143 c!53595) b!353152))

(assert (= (and b!353143 (not c!53595)) b!353150))

(assert (= (and b!353152 res!195904) b!353148))

(assert (= (or b!353152 b!353150) bm!27128))

(declare-fun b_lambda!8553 () Bool)

(assert (=> (not b_lambda!8553) (not b!353154)))

(declare-fun t!10451 () Bool)

(declare-fun tb!3115 () Bool)

(assert (=> (and start!35242 (= defaultEntry!1528 defaultEntry!1528) t!10451) tb!3115))

(declare-fun result!5659 () Bool)

(assert (=> tb!3115 (= result!5659 tp_is_empty!7761)))

(assert (=> b!353154 t!10451))

(declare-fun b_and!15071 () Bool)

(assert (= b_and!15067 (and (=> t!10451 result!5659) b_and!15071)))

(declare-fun m!352569 () Bool)

(assert (=> bm!27128 m!352569))

(assert (=> d!71467 m!352535))

(declare-fun m!352571 () Bool)

(assert (=> b!353155 m!352571))

(assert (=> b!353155 m!352571))

(declare-fun m!352573 () Bool)

(assert (=> b!353155 m!352573))

(declare-fun m!352575 () Bool)

(assert (=> b!353155 m!352575))

(assert (=> b!353155 m!352575))

(declare-fun m!352577 () Bool)

(assert (=> b!353155 m!352577))

(declare-fun m!352579 () Bool)

(assert (=> b!353155 m!352579))

(declare-fun m!352581 () Bool)

(assert (=> b!353155 m!352581))

(declare-fun m!352583 () Bool)

(assert (=> b!353155 m!352583))

(declare-fun m!352585 () Bool)

(assert (=> b!353155 m!352585))

(declare-fun m!352587 () Bool)

(assert (=> b!353155 m!352587))

(declare-fun m!352589 () Bool)

(assert (=> b!353155 m!352589))

(declare-fun m!352591 () Bool)

(assert (=> b!353155 m!352591))

(assert (=> b!353155 m!352579))

(declare-fun m!352593 () Bool)

(assert (=> b!353155 m!352593))

(declare-fun m!352595 () Bool)

(assert (=> b!353155 m!352595))

(assert (=> b!353155 m!352587))

(declare-fun m!352597 () Bool)

(assert (=> b!353155 m!352597))

(declare-fun m!352599 () Bool)

(assert (=> b!353155 m!352599))

(declare-fun m!352601 () Bool)

(assert (=> b!353155 m!352601))

(declare-fun m!352603 () Bool)

(assert (=> b!353155 m!352603))

(declare-fun m!352605 () Bool)

(assert (=> bm!27123 m!352605))

(assert (=> b!353142 m!352603))

(assert (=> b!353142 m!352603))

(declare-fun m!352607 () Bool)

(assert (=> b!353142 m!352607))

(assert (=> bm!27125 m!352583))

(declare-fun m!352609 () Bool)

(assert (=> b!353148 m!352609))

(declare-fun m!352611 () Bool)

(assert (=> b!353145 m!352611))

(assert (=> b!353156 m!352603))

(assert (=> b!353156 m!352603))

(assert (=> b!353156 m!352607))

(declare-fun m!352613 () Bool)

(assert (=> b!353154 m!352613))

(assert (=> b!353154 m!352603))

(assert (=> b!353154 m!352603))

(declare-fun m!352615 () Bool)

(assert (=> b!353154 m!352615))

(declare-fun m!352617 () Bool)

(assert (=> b!353154 m!352617))

(assert (=> b!353154 m!352613))

(assert (=> b!353154 m!352617))

(declare-fun m!352619 () Bool)

(assert (=> b!353154 m!352619))

(assert (=> b!353160 m!352603))

(assert (=> b!353160 m!352603))

(declare-fun m!352621 () Bool)

(assert (=> b!353160 m!352621))

(declare-fun m!352623 () Bool)

(assert (=> bm!27122 m!352623))

(declare-fun m!352625 () Bool)

(assert (=> b!353149 m!352625))

(assert (=> b!353063 d!71467))

(declare-fun b!353177 () Bool)

(declare-fun c!53604 () Bool)

(declare-fun lt!165523 () (_ BitVec 64))

(assert (=> b!353177 (= c!53604 (= lt!165523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!216260 () SeekEntryResult!3472)

(declare-fun e!216259 () SeekEntryResult!3472)

(assert (=> b!353177 (= e!216260 e!216259)))

(declare-fun d!71469 () Bool)

(declare-fun lt!165525 () SeekEntryResult!3472)

(assert (=> d!71469 (and (or ((_ is Undefined!3472) lt!165525) (not ((_ is Found!3472) lt!165525)) (and (bvsge (index!16068 lt!165525) #b00000000000000000000000000000000) (bvslt (index!16068 lt!165525) (size!9386 _keys!1895)))) (or ((_ is Undefined!3472) lt!165525) ((_ is Found!3472) lt!165525) (not ((_ is MissingZero!3472) lt!165525)) (and (bvsge (index!16067 lt!165525) #b00000000000000000000000000000000) (bvslt (index!16067 lt!165525) (size!9386 _keys!1895)))) (or ((_ is Undefined!3472) lt!165525) ((_ is Found!3472) lt!165525) ((_ is MissingZero!3472) lt!165525) (not ((_ is MissingVacant!3472) lt!165525)) (and (bvsge (index!16070 lt!165525) #b00000000000000000000000000000000) (bvslt (index!16070 lt!165525) (size!9386 _keys!1895)))) (or ((_ is Undefined!3472) lt!165525) (ite ((_ is Found!3472) lt!165525) (= (select (arr!9034 _keys!1895) (index!16068 lt!165525)) k0!1348) (ite ((_ is MissingZero!3472) lt!165525) (= (select (arr!9034 _keys!1895) (index!16067 lt!165525)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3472) lt!165525) (= (select (arr!9034 _keys!1895) (index!16070 lt!165525)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!216261 () SeekEntryResult!3472)

(assert (=> d!71469 (= lt!165525 e!216261)))

(declare-fun c!53605 () Bool)

(declare-fun lt!165524 () SeekEntryResult!3472)

(assert (=> d!71469 (= c!53605 (and ((_ is Intermediate!3472) lt!165524) (undefined!4284 lt!165524)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!19073 (_ BitVec 32)) SeekEntryResult!3472)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71469 (= lt!165524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71469 (validMask!0 mask!2385)))

(assert (=> d!71469 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!165525)))

(declare-fun b!353178 () Bool)

(assert (=> b!353178 (= e!216260 (Found!3472 (index!16069 lt!165524)))))

(declare-fun b!353179 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!19073 (_ BitVec 32)) SeekEntryResult!3472)

(assert (=> b!353179 (= e!216259 (seekKeyOrZeroReturnVacant!0 (x!35133 lt!165524) (index!16069 lt!165524) (index!16069 lt!165524) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!353180 () Bool)

(assert (=> b!353180 (= e!216261 e!216260)))

(assert (=> b!353180 (= lt!165523 (select (arr!9034 _keys!1895) (index!16069 lt!165524)))))

(declare-fun c!53606 () Bool)

(assert (=> b!353180 (= c!53606 (= lt!165523 k0!1348))))

(declare-fun b!353181 () Bool)

(assert (=> b!353181 (= e!216261 Undefined!3472)))

(declare-fun b!353182 () Bool)

(assert (=> b!353182 (= e!216259 (MissingZero!3472 (index!16069 lt!165524)))))

(assert (= (and d!71469 c!53605) b!353181))

(assert (= (and d!71469 (not c!53605)) b!353180))

(assert (= (and b!353180 c!53606) b!353178))

(assert (= (and b!353180 (not c!53606)) b!353177))

(assert (= (and b!353177 c!53604) b!353182))

(assert (= (and b!353177 (not c!53604)) b!353179))

(assert (=> d!71469 m!352535))

(declare-fun m!352627 () Bool)

(assert (=> d!71469 m!352627))

(declare-fun m!352629 () Bool)

(assert (=> d!71469 m!352629))

(declare-fun m!352631 () Bool)

(assert (=> d!71469 m!352631))

(assert (=> d!71469 m!352627))

(declare-fun m!352633 () Bool)

(assert (=> d!71469 m!352633))

(declare-fun m!352635 () Bool)

(assert (=> d!71469 m!352635))

(declare-fun m!352637 () Bool)

(assert (=> b!353179 m!352637))

(declare-fun m!352639 () Bool)

(assert (=> b!353180 m!352639))

(assert (=> b!353061 d!71469))

(declare-fun b!353191 () Bool)

(declare-fun e!216270 () Bool)

(declare-fun call!27134 () Bool)

(assert (=> b!353191 (= e!216270 call!27134)))

(declare-fun bm!27131 () Bool)

(assert (=> bm!27131 (= call!27134 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!353192 () Bool)

(declare-fun e!216268 () Bool)

(declare-fun e!216269 () Bool)

(assert (=> b!353192 (= e!216268 e!216269)))

(declare-fun c!53609 () Bool)

(assert (=> b!353192 (= c!53609 (validKeyInArray!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71471 () Bool)

(declare-fun res!195916 () Bool)

(assert (=> d!71471 (=> res!195916 e!216268)))

(assert (=> d!71471 (= res!195916 (bvsge #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(assert (=> d!71471 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!216268)))

(declare-fun b!353193 () Bool)

(assert (=> b!353193 (= e!216269 e!216270)))

(declare-fun lt!165533 () (_ BitVec 64))

(assert (=> b!353193 (= lt!165533 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165534 () Unit!10911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19073 (_ BitVec 64) (_ BitVec 32)) Unit!10911)

(assert (=> b!353193 (= lt!165534 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!165533 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353193 (arrayContainsKey!0 _keys!1895 lt!165533 #b00000000000000000000000000000000)))

(declare-fun lt!165532 () Unit!10911)

(assert (=> b!353193 (= lt!165532 lt!165534)))

(declare-fun res!195917 () Bool)

(assert (=> b!353193 (= res!195917 (= (seekEntryOrOpen!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3472 #b00000000000000000000000000000000)))))

(assert (=> b!353193 (=> (not res!195917) (not e!216270))))

(declare-fun b!353194 () Bool)

(assert (=> b!353194 (= e!216269 call!27134)))

(assert (= (and d!71471 (not res!195916)) b!353192))

(assert (= (and b!353192 c!53609) b!353193))

(assert (= (and b!353192 (not c!53609)) b!353194))

(assert (= (and b!353193 res!195917) b!353191))

(assert (= (or b!353191 b!353194) bm!27131))

(declare-fun m!352641 () Bool)

(assert (=> bm!27131 m!352641))

(assert (=> b!353192 m!352603))

(assert (=> b!353192 m!352603))

(assert (=> b!353192 m!352607))

(assert (=> b!353193 m!352603))

(declare-fun m!352643 () Bool)

(assert (=> b!353193 m!352643))

(declare-fun m!352645 () Bool)

(assert (=> b!353193 m!352645))

(assert (=> b!353193 m!352603))

(declare-fun m!352647 () Bool)

(assert (=> b!353193 m!352647))

(assert (=> b!353060 d!71471))

(declare-fun b!353205 () Bool)

(declare-fun e!216282 () Bool)

(declare-fun e!216279 () Bool)

(assert (=> b!353205 (= e!216282 e!216279)))

(declare-fun res!195926 () Bool)

(assert (=> b!353205 (=> (not res!195926) (not e!216279))))

(declare-fun e!216281 () Bool)

(assert (=> b!353205 (= res!195926 (not e!216281))))

(declare-fun res!195924 () Bool)

(assert (=> b!353205 (=> (not res!195924) (not e!216281))))

(assert (=> b!353205 (= res!195924 (validKeyInArray!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27134 () Bool)

(declare-fun call!27137 () Bool)

(declare-fun c!53612 () Bool)

(assert (=> bm!27134 (= call!27137 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53612 (Cons!5287 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000) Nil!5288) Nil!5288)))))

(declare-fun b!353206 () Bool)

(declare-fun contains!2378 (List!5291 (_ BitVec 64)) Bool)

(assert (=> b!353206 (= e!216281 (contains!2378 Nil!5288 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71473 () Bool)

(declare-fun res!195925 () Bool)

(assert (=> d!71473 (=> res!195925 e!216282)))

(assert (=> d!71473 (= res!195925 (bvsge #b00000000000000000000000000000000 (size!9386 _keys!1895)))))

(assert (=> d!71473 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5288) e!216282)))

(declare-fun b!353207 () Bool)

(declare-fun e!216280 () Bool)

(assert (=> b!353207 (= e!216279 e!216280)))

(assert (=> b!353207 (= c!53612 (validKeyInArray!0 (select (arr!9034 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!353208 () Bool)

(assert (=> b!353208 (= e!216280 call!27137)))

(declare-fun b!353209 () Bool)

(assert (=> b!353209 (= e!216280 call!27137)))

(assert (= (and d!71473 (not res!195925)) b!353205))

(assert (= (and b!353205 res!195924) b!353206))

(assert (= (and b!353205 res!195926) b!353207))

(assert (= (and b!353207 c!53612) b!353209))

(assert (= (and b!353207 (not c!53612)) b!353208))

(assert (= (or b!353209 b!353208) bm!27134))

(assert (=> b!353205 m!352603))

(assert (=> b!353205 m!352603))

(assert (=> b!353205 m!352607))

(assert (=> bm!27134 m!352603))

(declare-fun m!352649 () Bool)

(assert (=> bm!27134 m!352649))

(assert (=> b!353206 m!352603))

(assert (=> b!353206 m!352603))

(declare-fun m!352651 () Bool)

(assert (=> b!353206 m!352651))

(assert (=> b!353207 m!352603))

(assert (=> b!353207 m!352603))

(assert (=> b!353207 m!352607))

(assert (=> b!353057 d!71473))

(declare-fun d!71475 () Bool)

(assert (=> d!71475 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!353056 d!71475))

(declare-fun b!353217 () Bool)

(declare-fun e!216287 () Bool)

(assert (=> b!353217 (= e!216287 tp_is_empty!7761)))

(declare-fun mapIsEmpty!13134 () Bool)

(declare-fun mapRes!13134 () Bool)

(assert (=> mapIsEmpty!13134 mapRes!13134))

(declare-fun b!353216 () Bool)

(declare-fun e!216288 () Bool)

(assert (=> b!353216 (= e!216288 tp_is_empty!7761)))

(declare-fun mapNonEmpty!13134 () Bool)

(declare-fun tp!27030 () Bool)

(assert (=> mapNonEmpty!13134 (= mapRes!13134 (and tp!27030 e!216288))))

(declare-fun mapRest!13134 () (Array (_ BitVec 32) ValueCell!3537))

(declare-fun mapKey!13134 () (_ BitVec 32))

(declare-fun mapValue!13134 () ValueCell!3537)

(assert (=> mapNonEmpty!13134 (= mapRest!13128 (store mapRest!13134 mapKey!13134 mapValue!13134))))

(declare-fun condMapEmpty!13134 () Bool)

(declare-fun mapDefault!13134 () ValueCell!3537)

(assert (=> mapNonEmpty!13128 (= condMapEmpty!13134 (= mapRest!13128 ((as const (Array (_ BitVec 32) ValueCell!3537)) mapDefault!13134)))))

(assert (=> mapNonEmpty!13128 (= tp!27021 (and e!216287 mapRes!13134))))

(assert (= (and mapNonEmpty!13128 condMapEmpty!13134) mapIsEmpty!13134))

(assert (= (and mapNonEmpty!13128 (not condMapEmpty!13134)) mapNonEmpty!13134))

(assert (= (and mapNonEmpty!13134 ((_ is ValueCellFull!3537) mapValue!13134)) b!353216))

(assert (= (and mapNonEmpty!13128 ((_ is ValueCellFull!3537) mapDefault!13134)) b!353217))

(declare-fun m!352653 () Bool)

(assert (=> mapNonEmpty!13134 m!352653))

(declare-fun b_lambda!8555 () Bool)

(assert (= b_lambda!8553 (or (and start!35242 b_free!7809) b_lambda!8555)))

(check-sat (not d!71465) (not b!353207) b_and!15071 (not b_lambda!8555) (not b!353154) (not d!71469) (not b!353155) (not bm!27123) (not bm!27131) (not d!71467) (not b_next!7809) (not b!353142) (not b!353206) (not b!353193) (not b!353205) (not b!353149) (not b!353156) (not b!353192) (not bm!27122) (not b!353099) (not bm!27125) (not mapNonEmpty!13134) (not b!353145) tp_is_empty!7761 (not b!353160) (not bm!27134) (not b!353179) (not bm!27128) (not b!353148) (not b!353097))
(check-sat b_and!15071 (not b_next!7809))
