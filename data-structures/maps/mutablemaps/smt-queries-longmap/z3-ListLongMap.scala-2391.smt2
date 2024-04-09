; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37840 () Bool)

(assert start!37840)

(declare-fun b_free!8913 () Bool)

(declare-fun b_next!8913 () Bool)

(assert (=> start!37840 (= b_free!8913 (not b_next!8913))))

(declare-fun tp!31494 () Bool)

(declare-fun b_and!16185 () Bool)

(assert (=> start!37840 (= tp!31494 b_and!16185)))

(declare-fun b!388530 () Bool)

(declare-fun e!235427 () Bool)

(declare-fun tp_is_empty!9585 () Bool)

(assert (=> b!388530 (= e!235427 tp_is_empty!9585)))

(declare-fun b!388531 () Bool)

(declare-fun e!235422 () Bool)

(declare-fun e!235423 () Bool)

(assert (=> b!388531 (= e!235422 e!235423)))

(declare-fun res!222260 () Bool)

(assert (=> b!388531 (=> (not res!222260) (not e!235423))))

(declare-datatypes ((array!23039 0))(
  ( (array!23040 (arr!10984 (Array (_ BitVec 32) (_ BitVec 64))) (size!11336 (_ BitVec 32))) )
))
(declare-fun lt!182537 () array!23039)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23039 (_ BitVec 32)) Bool)

(assert (=> b!388531 (= res!222260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182537 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23039)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388531 (= lt!182537 (array!23040 (store (arr!10984 _keys!658) i!548 k0!778) (size!11336 _keys!658)))))

(declare-fun b!388532 () Bool)

(declare-fun res!222262 () Bool)

(assert (=> b!388532 (=> (not res!222262) (not e!235422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388532 (= res!222262 (validKeyInArray!0 k0!778))))

(declare-fun res!222258 () Bool)

(assert (=> start!37840 (=> (not res!222258) (not e!235422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37840 (= res!222258 (validMask!0 mask!970))))

(assert (=> start!37840 e!235422))

(declare-datatypes ((V!13885 0))(
  ( (V!13886 (val!4837 Int)) )
))
(declare-datatypes ((ValueCell!4449 0))(
  ( (ValueCellFull!4449 (v!7034 V!13885)) (EmptyCell!4449) )
))
(declare-datatypes ((array!23041 0))(
  ( (array!23042 (arr!10985 (Array (_ BitVec 32) ValueCell!4449)) (size!11337 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23041)

(declare-fun e!235425 () Bool)

(declare-fun array_inv!8052 (array!23041) Bool)

(assert (=> start!37840 (and (array_inv!8052 _values!506) e!235425)))

(assert (=> start!37840 tp!31494))

(assert (=> start!37840 true))

(assert (=> start!37840 tp_is_empty!9585))

(declare-fun array_inv!8053 (array!23039) Bool)

(assert (=> start!37840 (array_inv!8053 _keys!658)))

(declare-fun b!388533 () Bool)

(declare-fun res!222261 () Bool)

(assert (=> b!388533 (=> (not res!222261) (not e!235422))))

(assert (=> b!388533 (= res!222261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388534 () Bool)

(declare-fun e!235426 () Bool)

(assert (=> b!388534 (= e!235423 (not e!235426))))

(declare-fun res!222259 () Bool)

(assert (=> b!388534 (=> res!222259 e!235426)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388534 (= res!222259 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6446 0))(
  ( (tuple2!6447 (_1!3233 (_ BitVec 64)) (_2!3233 V!13885)) )
))
(declare-datatypes ((List!6330 0))(
  ( (Nil!6327) (Cons!6326 (h!7182 tuple2!6446) (t!11490 List!6330)) )
))
(declare-datatypes ((ListLongMap!5373 0))(
  ( (ListLongMap!5374 (toList!2702 List!6330)) )
))
(declare-fun lt!182538 () ListLongMap!5373)

(declare-fun zeroValue!472 () V!13885)

(declare-fun minValue!472 () V!13885)

(declare-fun getCurrentListMap!2074 (array!23039 array!23041 (_ BitVec 32) (_ BitVec 32) V!13885 V!13885 (_ BitVec 32) Int) ListLongMap!5373)

(assert (=> b!388534 (= lt!182538 (getCurrentListMap!2074 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182532 () array!23041)

(declare-fun lt!182531 () ListLongMap!5373)

(assert (=> b!388534 (= lt!182531 (getCurrentListMap!2074 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182539 () ListLongMap!5373)

(declare-fun lt!182534 () ListLongMap!5373)

(assert (=> b!388534 (and (= lt!182539 lt!182534) (= lt!182534 lt!182539))))

(declare-fun lt!182540 () ListLongMap!5373)

(declare-fun v!373 () V!13885)

(declare-fun +!1000 (ListLongMap!5373 tuple2!6446) ListLongMap!5373)

(assert (=> b!388534 (= lt!182534 (+!1000 lt!182540 (tuple2!6447 k0!778 v!373)))))

(declare-datatypes ((Unit!11891 0))(
  ( (Unit!11892) )
))
(declare-fun lt!182536 () Unit!11891)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!231 (array!23039 array!23041 (_ BitVec 32) (_ BitVec 32) V!13885 V!13885 (_ BitVec 32) (_ BitVec 64) V!13885 (_ BitVec 32) Int) Unit!11891)

(assert (=> b!388534 (= lt!182536 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!231 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!936 (array!23039 array!23041 (_ BitVec 32) (_ BitVec 32) V!13885 V!13885 (_ BitVec 32) Int) ListLongMap!5373)

(assert (=> b!388534 (= lt!182539 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388534 (= lt!182532 (array!23042 (store (arr!10985 _values!506) i!548 (ValueCellFull!4449 v!373)) (size!11337 _values!506)))))

(assert (=> b!388534 (= lt!182540 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388535 () Bool)

(declare-fun e!235424 () Bool)

(assert (=> b!388535 (= e!235424 tp_is_empty!9585)))

(declare-fun b!388536 () Bool)

(declare-fun res!222266 () Bool)

(assert (=> b!388536 (=> (not res!222266) (not e!235423))))

(declare-datatypes ((List!6331 0))(
  ( (Nil!6328) (Cons!6327 (h!7183 (_ BitVec 64)) (t!11491 List!6331)) )
))
(declare-fun arrayNoDuplicates!0 (array!23039 (_ BitVec 32) List!6331) Bool)

(assert (=> b!388536 (= res!222266 (arrayNoDuplicates!0 lt!182537 #b00000000000000000000000000000000 Nil!6328))))

(declare-fun b!388537 () Bool)

(declare-fun res!222264 () Bool)

(assert (=> b!388537 (=> (not res!222264) (not e!235422))))

(assert (=> b!388537 (= res!222264 (and (= (size!11337 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11336 _keys!658) (size!11337 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388538 () Bool)

(declare-fun res!222263 () Bool)

(assert (=> b!388538 (=> (not res!222263) (not e!235422))))

(assert (=> b!388538 (= res!222263 (or (= (select (arr!10984 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10984 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388539 () Bool)

(declare-fun res!222267 () Bool)

(assert (=> b!388539 (=> (not res!222267) (not e!235422))))

(assert (=> b!388539 (= res!222267 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11336 _keys!658))))))

(declare-fun b!388540 () Bool)

(declare-fun mapRes!15945 () Bool)

(assert (=> b!388540 (= e!235425 (and e!235424 mapRes!15945))))

(declare-fun condMapEmpty!15945 () Bool)

(declare-fun mapDefault!15945 () ValueCell!4449)

(assert (=> b!388540 (= condMapEmpty!15945 (= (arr!10985 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4449)) mapDefault!15945)))))

(declare-fun mapNonEmpty!15945 () Bool)

(declare-fun tp!31493 () Bool)

(assert (=> mapNonEmpty!15945 (= mapRes!15945 (and tp!31493 e!235427))))

(declare-fun mapRest!15945 () (Array (_ BitVec 32) ValueCell!4449))

(declare-fun mapKey!15945 () (_ BitVec 32))

(declare-fun mapValue!15945 () ValueCell!4449)

(assert (=> mapNonEmpty!15945 (= (arr!10985 _values!506) (store mapRest!15945 mapKey!15945 mapValue!15945))))

(declare-fun b!388541 () Bool)

(declare-fun res!222257 () Bool)

(assert (=> b!388541 (=> (not res!222257) (not e!235422))))

(declare-fun arrayContainsKey!0 (array!23039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388541 (= res!222257 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15945 () Bool)

(assert (=> mapIsEmpty!15945 mapRes!15945))

(declare-fun lt!182533 () tuple2!6446)

(declare-fun b!388542 () Bool)

(declare-fun lt!182535 () tuple2!6446)

(assert (=> b!388542 (= e!235426 (= lt!182538 (+!1000 (+!1000 lt!182540 lt!182535) lt!182533)))))

(assert (=> b!388542 (= lt!182531 (+!1000 (+!1000 lt!182539 lt!182535) lt!182533))))

(assert (=> b!388542 (= lt!182533 (tuple2!6447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!388542 (= lt!182535 (tuple2!6447 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!388543 () Bool)

(declare-fun res!222265 () Bool)

(assert (=> b!388543 (=> (not res!222265) (not e!235422))))

(assert (=> b!388543 (= res!222265 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6328))))

(assert (= (and start!37840 res!222258) b!388537))

(assert (= (and b!388537 res!222264) b!388533))

(assert (= (and b!388533 res!222261) b!388543))

(assert (= (and b!388543 res!222265) b!388539))

(assert (= (and b!388539 res!222267) b!388532))

(assert (= (and b!388532 res!222262) b!388538))

(assert (= (and b!388538 res!222263) b!388541))

(assert (= (and b!388541 res!222257) b!388531))

(assert (= (and b!388531 res!222260) b!388536))

(assert (= (and b!388536 res!222266) b!388534))

(assert (= (and b!388534 (not res!222259)) b!388542))

(assert (= (and b!388540 condMapEmpty!15945) mapIsEmpty!15945))

(assert (= (and b!388540 (not condMapEmpty!15945)) mapNonEmpty!15945))

(get-info :version)

(assert (= (and mapNonEmpty!15945 ((_ is ValueCellFull!4449) mapValue!15945)) b!388530))

(assert (= (and b!388540 ((_ is ValueCellFull!4449) mapDefault!15945)) b!388535))

(assert (= start!37840 b!388540))

(declare-fun m!384529 () Bool)

(assert (=> b!388543 m!384529))

(declare-fun m!384531 () Bool)

(assert (=> b!388531 m!384531))

(declare-fun m!384533 () Bool)

(assert (=> b!388531 m!384533))

(declare-fun m!384535 () Bool)

(assert (=> b!388542 m!384535))

(assert (=> b!388542 m!384535))

(declare-fun m!384537 () Bool)

(assert (=> b!388542 m!384537))

(declare-fun m!384539 () Bool)

(assert (=> b!388542 m!384539))

(assert (=> b!388542 m!384539))

(declare-fun m!384541 () Bool)

(assert (=> b!388542 m!384541))

(declare-fun m!384543 () Bool)

(assert (=> b!388536 m!384543))

(declare-fun m!384545 () Bool)

(assert (=> b!388541 m!384545))

(declare-fun m!384547 () Bool)

(assert (=> b!388532 m!384547))

(declare-fun m!384549 () Bool)

(assert (=> b!388534 m!384549))

(declare-fun m!384551 () Bool)

(assert (=> b!388534 m!384551))

(declare-fun m!384553 () Bool)

(assert (=> b!388534 m!384553))

(declare-fun m!384555 () Bool)

(assert (=> b!388534 m!384555))

(declare-fun m!384557 () Bool)

(assert (=> b!388534 m!384557))

(declare-fun m!384559 () Bool)

(assert (=> b!388534 m!384559))

(declare-fun m!384561 () Bool)

(assert (=> b!388534 m!384561))

(declare-fun m!384563 () Bool)

(assert (=> b!388538 m!384563))

(declare-fun m!384565 () Bool)

(assert (=> mapNonEmpty!15945 m!384565))

(declare-fun m!384567 () Bool)

(assert (=> b!388533 m!384567))

(declare-fun m!384569 () Bool)

(assert (=> start!37840 m!384569))

(declare-fun m!384571 () Bool)

(assert (=> start!37840 m!384571))

(declare-fun m!384573 () Bool)

(assert (=> start!37840 m!384573))

(check-sat tp_is_empty!9585 (not b!388534) (not b!388531) b_and!16185 (not b!388536) (not mapNonEmpty!15945) (not b!388533) (not start!37840) (not b_next!8913) (not b!388532) (not b!388543) (not b!388541) (not b!388542))
(check-sat b_and!16185 (not b_next!8913))
(get-model)

(declare-fun b!388610 () Bool)

(declare-fun e!235465 () Bool)

(declare-fun e!235469 () Bool)

(assert (=> b!388610 (= e!235465 e!235469)))

(declare-fun c!53910 () Bool)

(assert (=> b!388610 (= c!53910 (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun b!388611 () Bool)

(declare-fun e!235467 () ListLongMap!5373)

(declare-fun e!235464 () ListLongMap!5373)

(assert (=> b!388611 (= e!235467 e!235464)))

(declare-fun c!53911 () Bool)

(assert (=> b!388611 (= c!53911 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388612 () Bool)

(declare-fun lt!182586 () ListLongMap!5373)

(assert (=> b!388612 (= e!235469 (= lt!182586 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!388613 () Bool)

(declare-fun e!235468 () Bool)

(assert (=> b!388613 (= e!235468 e!235465)))

(declare-fun c!53912 () Bool)

(declare-fun e!235466 () Bool)

(assert (=> b!388613 (= c!53912 e!235466)))

(declare-fun res!222310 () Bool)

(assert (=> b!388613 (=> (not res!222310) (not e!235466))))

(assert (=> b!388613 (= res!222310 (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun b!388614 () Bool)

(declare-fun lt!182588 () Unit!11891)

(declare-fun lt!182590 () Unit!11891)

(assert (=> b!388614 (= lt!182588 lt!182590)))

(declare-fun lt!182591 () ListLongMap!5373)

(declare-fun lt!182587 () (_ BitVec 64))

(declare-fun lt!182585 () (_ BitVec 64))

(declare-fun lt!182589 () V!13885)

(declare-fun contains!2444 (ListLongMap!5373 (_ BitVec 64)) Bool)

(assert (=> b!388614 (not (contains!2444 (+!1000 lt!182591 (tuple2!6447 lt!182587 lt!182589)) lt!182585))))

(declare-fun addStillNotContains!133 (ListLongMap!5373 (_ BitVec 64) V!13885 (_ BitVec 64)) Unit!11891)

(assert (=> b!388614 (= lt!182590 (addStillNotContains!133 lt!182591 lt!182587 lt!182589 lt!182585))))

(assert (=> b!388614 (= lt!182585 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5567 (ValueCell!4449 V!13885) V!13885)

(declare-fun dynLambda!636 (Int (_ BitVec 64)) V!13885)

(assert (=> b!388614 (= lt!182589 (get!5567 (select (arr!10985 _values!506) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!388614 (= lt!182587 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27354 () ListLongMap!5373)

(assert (=> b!388614 (= lt!182591 call!27354)))

(assert (=> b!388614 (= e!235464 (+!1000 call!27354 (tuple2!6447 (select (arr!10984 _keys!658) #b00000000000000000000000000000000) (get!5567 (select (arr!10985 _values!506) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!388615 () Bool)

(declare-fun res!222309 () Bool)

(assert (=> b!388615 (=> (not res!222309) (not e!235468))))

(assert (=> b!388615 (= res!222309 (not (contains!2444 lt!182586 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!27351 () Bool)

(assert (=> bm!27351 (= call!27354 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!388616 () Bool)

(assert (=> b!388616 (= e!235464 call!27354)))

(declare-fun b!388617 () Bool)

(assert (=> b!388617 (= e!235467 (ListLongMap!5374 Nil!6327))))

(declare-fun d!72707 () Bool)

(assert (=> d!72707 e!235468))

(declare-fun res!222311 () Bool)

(assert (=> d!72707 (=> (not res!222311) (not e!235468))))

(assert (=> d!72707 (= res!222311 (not (contains!2444 lt!182586 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72707 (= lt!182586 e!235467)))

(declare-fun c!53909 () Bool)

(assert (=> d!72707 (= c!53909 (bvsge #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> d!72707 (validMask!0 mask!970)))

(assert (=> d!72707 (= (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182586)))

(declare-fun b!388618 () Bool)

(assert (=> b!388618 (= e!235466 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388618 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!388619 () Bool)

(declare-fun isEmpty!549 (ListLongMap!5373) Bool)

(assert (=> b!388619 (= e!235469 (isEmpty!549 lt!182586))))

(declare-fun b!388620 () Bool)

(declare-fun e!235463 () Bool)

(assert (=> b!388620 (= e!235465 e!235463)))

(assert (=> b!388620 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun res!222312 () Bool)

(assert (=> b!388620 (= res!222312 (contains!2444 lt!182586 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388620 (=> (not res!222312) (not e!235463))))

(declare-fun b!388621 () Bool)

(assert (=> b!388621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> b!388621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11337 _values!506)))))

(declare-fun apply!298 (ListLongMap!5373 (_ BitVec 64)) V!13885)

(assert (=> b!388621 (= e!235463 (= (apply!298 lt!182586 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)) (get!5567 (select (arr!10985 _values!506) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!72707 c!53909) b!388617))

(assert (= (and d!72707 (not c!53909)) b!388611))

(assert (= (and b!388611 c!53911) b!388614))

(assert (= (and b!388611 (not c!53911)) b!388616))

(assert (= (or b!388614 b!388616) bm!27351))

(assert (= (and d!72707 res!222311) b!388615))

(assert (= (and b!388615 res!222309) b!388613))

(assert (= (and b!388613 res!222310) b!388618))

(assert (= (and b!388613 c!53912) b!388620))

(assert (= (and b!388613 (not c!53912)) b!388610))

(assert (= (and b!388620 res!222312) b!388621))

(assert (= (and b!388610 c!53910) b!388612))

(assert (= (and b!388610 (not c!53910)) b!388619))

(declare-fun b_lambda!8581 () Bool)

(assert (=> (not b_lambda!8581) (not b!388614)))

(declare-fun t!11495 () Bool)

(declare-fun tb!3119 () Bool)

(assert (=> (and start!37840 (= defaultEntry!514 defaultEntry!514) t!11495) tb!3119))

(declare-fun result!5721 () Bool)

(assert (=> tb!3119 (= result!5721 tp_is_empty!9585)))

(assert (=> b!388614 t!11495))

(declare-fun b_and!16189 () Bool)

(assert (= b_and!16185 (and (=> t!11495 result!5721) b_and!16189)))

(declare-fun b_lambda!8583 () Bool)

(assert (=> (not b_lambda!8583) (not b!388621)))

(assert (=> b!388621 t!11495))

(declare-fun b_and!16191 () Bool)

(assert (= b_and!16189 (and (=> t!11495 result!5721) b_and!16191)))

(declare-fun m!384621 () Bool)

(assert (=> b!388621 m!384621))

(declare-fun m!384623 () Bool)

(assert (=> b!388621 m!384623))

(assert (=> b!388621 m!384623))

(declare-fun m!384625 () Bool)

(assert (=> b!388621 m!384625))

(declare-fun m!384627 () Bool)

(assert (=> b!388621 m!384627))

(assert (=> b!388621 m!384627))

(assert (=> b!388621 m!384621))

(declare-fun m!384629 () Bool)

(assert (=> b!388621 m!384629))

(assert (=> b!388611 m!384623))

(assert (=> b!388611 m!384623))

(declare-fun m!384631 () Bool)

(assert (=> b!388611 m!384631))

(assert (=> b!388618 m!384623))

(assert (=> b!388618 m!384623))

(assert (=> b!388618 m!384631))

(declare-fun m!384633 () Bool)

(assert (=> b!388619 m!384633))

(declare-fun m!384635 () Bool)

(assert (=> bm!27351 m!384635))

(declare-fun m!384637 () Bool)

(assert (=> b!388615 m!384637))

(declare-fun m!384639 () Bool)

(assert (=> d!72707 m!384639))

(assert (=> d!72707 m!384569))

(assert (=> b!388612 m!384635))

(assert (=> b!388620 m!384623))

(assert (=> b!388620 m!384623))

(declare-fun m!384641 () Bool)

(assert (=> b!388620 m!384641))

(assert (=> b!388614 m!384621))

(assert (=> b!388614 m!384623))

(declare-fun m!384643 () Bool)

(assert (=> b!388614 m!384643))

(assert (=> b!388614 m!384643))

(declare-fun m!384645 () Bool)

(assert (=> b!388614 m!384645))

(declare-fun m!384647 () Bool)

(assert (=> b!388614 m!384647))

(assert (=> b!388614 m!384627))

(assert (=> b!388614 m!384627))

(assert (=> b!388614 m!384621))

(assert (=> b!388614 m!384629))

(declare-fun m!384649 () Bool)

(assert (=> b!388614 m!384649))

(assert (=> b!388534 d!72707))

(declare-fun bm!27366 () Bool)

(declare-fun call!27371 () Bool)

(declare-fun lt!182647 () ListLongMap!5373)

(assert (=> bm!27366 (= call!27371 (contains!2444 lt!182647 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27367 () Bool)

(declare-fun call!27369 () ListLongMap!5373)

(assert (=> bm!27367 (= call!27369 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388666 () Bool)

(declare-fun e!235496 () Bool)

(assert (=> b!388666 (= e!235496 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388667 () Bool)

(declare-fun e!235506 () ListLongMap!5373)

(declare-fun call!27372 () ListLongMap!5373)

(assert (=> b!388667 (= e!235506 (+!1000 call!27372 (tuple2!6447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!388668 () Bool)

(declare-fun e!235501 () Unit!11891)

(declare-fun lt!182640 () Unit!11891)

(assert (=> b!388668 (= e!235501 lt!182640)))

(declare-fun lt!182637 () ListLongMap!5373)

(assert (=> b!388668 (= lt!182637 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182649 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182649 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182646 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182646 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182639 () Unit!11891)

(declare-fun addStillContains!274 (ListLongMap!5373 (_ BitVec 64) V!13885 (_ BitVec 64)) Unit!11891)

(assert (=> b!388668 (= lt!182639 (addStillContains!274 lt!182637 lt!182649 zeroValue!472 lt!182646))))

(assert (=> b!388668 (contains!2444 (+!1000 lt!182637 (tuple2!6447 lt!182649 zeroValue!472)) lt!182646)))

(declare-fun lt!182638 () Unit!11891)

(assert (=> b!388668 (= lt!182638 lt!182639)))

(declare-fun lt!182651 () ListLongMap!5373)

(assert (=> b!388668 (= lt!182651 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182652 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182652 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182656 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182656 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182641 () Unit!11891)

(declare-fun addApplyDifferent!274 (ListLongMap!5373 (_ BitVec 64) V!13885 (_ BitVec 64)) Unit!11891)

(assert (=> b!388668 (= lt!182641 (addApplyDifferent!274 lt!182651 lt!182652 minValue!472 lt!182656))))

(assert (=> b!388668 (= (apply!298 (+!1000 lt!182651 (tuple2!6447 lt!182652 minValue!472)) lt!182656) (apply!298 lt!182651 lt!182656))))

(declare-fun lt!182655 () Unit!11891)

(assert (=> b!388668 (= lt!182655 lt!182641)))

(declare-fun lt!182642 () ListLongMap!5373)

(assert (=> b!388668 (= lt!182642 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182645 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182645 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182644 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182644 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182650 () Unit!11891)

(assert (=> b!388668 (= lt!182650 (addApplyDifferent!274 lt!182642 lt!182645 zeroValue!472 lt!182644))))

(assert (=> b!388668 (= (apply!298 (+!1000 lt!182642 (tuple2!6447 lt!182645 zeroValue!472)) lt!182644) (apply!298 lt!182642 lt!182644))))

(declare-fun lt!182636 () Unit!11891)

(assert (=> b!388668 (= lt!182636 lt!182650)))

(declare-fun lt!182657 () ListLongMap!5373)

(assert (=> b!388668 (= lt!182657 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182648 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182648 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182654 () (_ BitVec 64))

(assert (=> b!388668 (= lt!182654 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!388668 (= lt!182640 (addApplyDifferent!274 lt!182657 lt!182648 minValue!472 lt!182654))))

(assert (=> b!388668 (= (apply!298 (+!1000 lt!182657 (tuple2!6447 lt!182648 minValue!472)) lt!182654) (apply!298 lt!182657 lt!182654))))

(declare-fun b!388669 () Bool)

(declare-fun res!222333 () Bool)

(declare-fun e!235497 () Bool)

(assert (=> b!388669 (=> (not res!222333) (not e!235497))))

(declare-fun e!235504 () Bool)

(assert (=> b!388669 (= res!222333 e!235504)))

(declare-fun c!53925 () Bool)

(assert (=> b!388669 (= c!53925 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!388670 () Bool)

(declare-fun e!235502 () Bool)

(assert (=> b!388670 (= e!235502 (= (apply!298 lt!182647 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!388671 () Bool)

(declare-fun e!235500 () Bool)

(assert (=> b!388671 (= e!235500 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388672 () Bool)

(declare-fun e!235508 () Bool)

(declare-fun e!235505 () Bool)

(assert (=> b!388672 (= e!235508 e!235505)))

(declare-fun res!222331 () Bool)

(assert (=> b!388672 (=> (not res!222331) (not e!235505))))

(assert (=> b!388672 (= res!222331 (contains!2444 lt!182647 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun b!388673 () Bool)

(declare-fun e!235503 () Bool)

(assert (=> b!388673 (= e!235497 e!235503)))

(declare-fun c!53929 () Bool)

(assert (=> b!388673 (= c!53929 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!388674 () Bool)

(declare-fun e!235507 () ListLongMap!5373)

(assert (=> b!388674 (= e!235506 e!235507)))

(declare-fun c!53928 () Bool)

(assert (=> b!388674 (= c!53928 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27369 () Bool)

(declare-fun call!27370 () ListLongMap!5373)

(assert (=> bm!27369 (= call!27370 call!27369)))

(declare-fun b!388675 () Bool)

(assert (=> b!388675 (= e!235503 (not call!27371))))

(declare-fun b!388676 () Bool)

(declare-fun e!235498 () ListLongMap!5373)

(declare-fun call!27373 () ListLongMap!5373)

(assert (=> b!388676 (= e!235498 call!27373)))

(declare-fun b!388677 () Bool)

(declare-fun call!27375 () ListLongMap!5373)

(assert (=> b!388677 (= e!235498 call!27375)))

(declare-fun bm!27370 () Bool)

(assert (=> bm!27370 (= call!27373 call!27370)))

(declare-fun b!388678 () Bool)

(declare-fun e!235499 () Bool)

(assert (=> b!388678 (= e!235504 e!235499)))

(declare-fun res!222332 () Bool)

(declare-fun call!27374 () Bool)

(assert (=> b!388678 (= res!222332 call!27374)))

(assert (=> b!388678 (=> (not res!222332) (not e!235499))))

(declare-fun bm!27371 () Bool)

(assert (=> bm!27371 (= call!27375 call!27372)))

(declare-fun b!388679 () Bool)

(declare-fun c!53927 () Bool)

(assert (=> b!388679 (= c!53927 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!388679 (= e!235507 e!235498)))

(declare-fun d!72709 () Bool)

(assert (=> d!72709 e!235497))

(declare-fun res!222339 () Bool)

(assert (=> d!72709 (=> (not res!222339) (not e!235497))))

(assert (=> d!72709 (= res!222339 (or (bvsge #b00000000000000000000000000000000 (size!11336 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))))

(declare-fun lt!182643 () ListLongMap!5373)

(assert (=> d!72709 (= lt!182647 lt!182643)))

(declare-fun lt!182653 () Unit!11891)

(assert (=> d!72709 (= lt!182653 e!235501)))

(declare-fun c!53926 () Bool)

(assert (=> d!72709 (= c!53926 e!235500)))

(declare-fun res!222335 () Bool)

(assert (=> d!72709 (=> (not res!222335) (not e!235500))))

(assert (=> d!72709 (= res!222335 (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> d!72709 (= lt!182643 e!235506)))

(declare-fun c!53930 () Bool)

(assert (=> d!72709 (= c!53930 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72709 (validMask!0 mask!970)))

(assert (=> d!72709 (= (getCurrentListMap!2074 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182647)))

(declare-fun bm!27368 () Bool)

(assert (=> bm!27368 (= call!27374 (contains!2444 lt!182647 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388680 () Bool)

(assert (=> b!388680 (= e!235504 (not call!27374))))

(declare-fun b!388681 () Bool)

(assert (=> b!388681 (= e!235499 (= (apply!298 lt!182647 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!388682 () Bool)

(assert (=> b!388682 (= e!235503 e!235502)))

(declare-fun res!222334 () Bool)

(assert (=> b!388682 (= res!222334 call!27371)))

(assert (=> b!388682 (=> (not res!222334) (not e!235502))))

(declare-fun bm!27372 () Bool)

(assert (=> bm!27372 (= call!27372 (+!1000 (ite c!53930 call!27369 (ite c!53928 call!27370 call!27373)) (ite (or c!53930 c!53928) (tuple2!6447 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!388683 () Bool)

(assert (=> b!388683 (= e!235507 call!27375)))

(declare-fun b!388684 () Bool)

(assert (=> b!388684 (= e!235505 (= (apply!298 lt!182647 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)) (get!5567 (select (arr!10985 _values!506) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11337 _values!506)))))

(assert (=> b!388684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun b!388685 () Bool)

(declare-fun res!222338 () Bool)

(assert (=> b!388685 (=> (not res!222338) (not e!235497))))

(assert (=> b!388685 (= res!222338 e!235508)))

(declare-fun res!222336 () Bool)

(assert (=> b!388685 (=> res!222336 e!235508)))

(assert (=> b!388685 (= res!222336 (not e!235496))))

(declare-fun res!222337 () Bool)

(assert (=> b!388685 (=> (not res!222337) (not e!235496))))

(assert (=> b!388685 (= res!222337 (bvslt #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(declare-fun b!388686 () Bool)

(declare-fun Unit!11895 () Unit!11891)

(assert (=> b!388686 (= e!235501 Unit!11895)))

(assert (= (and d!72709 c!53930) b!388667))

(assert (= (and d!72709 (not c!53930)) b!388674))

(assert (= (and b!388674 c!53928) b!388683))

(assert (= (and b!388674 (not c!53928)) b!388679))

(assert (= (and b!388679 c!53927) b!388677))

(assert (= (and b!388679 (not c!53927)) b!388676))

(assert (= (or b!388677 b!388676) bm!27370))

(assert (= (or b!388683 bm!27370) bm!27369))

(assert (= (or b!388683 b!388677) bm!27371))

(assert (= (or b!388667 bm!27369) bm!27367))

(assert (= (or b!388667 bm!27371) bm!27372))

(assert (= (and d!72709 res!222335) b!388671))

(assert (= (and d!72709 c!53926) b!388668))

(assert (= (and d!72709 (not c!53926)) b!388686))

(assert (= (and d!72709 res!222339) b!388685))

(assert (= (and b!388685 res!222337) b!388666))

(assert (= (and b!388685 (not res!222336)) b!388672))

(assert (= (and b!388672 res!222331) b!388684))

(assert (= (and b!388685 res!222338) b!388669))

(assert (= (and b!388669 c!53925) b!388678))

(assert (= (and b!388669 (not c!53925)) b!388680))

(assert (= (and b!388678 res!222332) b!388681))

(assert (= (or b!388678 b!388680) bm!27368))

(assert (= (and b!388669 res!222333) b!388673))

(assert (= (and b!388673 c!53929) b!388682))

(assert (= (and b!388673 (not c!53929)) b!388675))

(assert (= (and b!388682 res!222334) b!388670))

(assert (= (or b!388682 b!388675) bm!27366))

(declare-fun b_lambda!8585 () Bool)

(assert (=> (not b_lambda!8585) (not b!388684)))

(assert (=> b!388684 t!11495))

(declare-fun b_and!16193 () Bool)

(assert (= b_and!16191 (and (=> t!11495 result!5721) b_and!16193)))

(assert (=> bm!27367 m!384549))

(declare-fun m!384651 () Bool)

(assert (=> b!388668 m!384651))

(declare-fun m!384653 () Bool)

(assert (=> b!388668 m!384653))

(declare-fun m!384655 () Bool)

(assert (=> b!388668 m!384655))

(declare-fun m!384657 () Bool)

(assert (=> b!388668 m!384657))

(declare-fun m!384659 () Bool)

(assert (=> b!388668 m!384659))

(declare-fun m!384661 () Bool)

(assert (=> b!388668 m!384661))

(assert (=> b!388668 m!384549))

(declare-fun m!384663 () Bool)

(assert (=> b!388668 m!384663))

(declare-fun m!384665 () Bool)

(assert (=> b!388668 m!384665))

(assert (=> b!388668 m!384657))

(declare-fun m!384667 () Bool)

(assert (=> b!388668 m!384667))

(declare-fun m!384669 () Bool)

(assert (=> b!388668 m!384669))

(declare-fun m!384671 () Bool)

(assert (=> b!388668 m!384671))

(declare-fun m!384673 () Bool)

(assert (=> b!388668 m!384673))

(assert (=> b!388668 m!384669))

(declare-fun m!384675 () Bool)

(assert (=> b!388668 m!384675))

(declare-fun m!384677 () Bool)

(assert (=> b!388668 m!384677))

(assert (=> b!388668 m!384623))

(assert (=> b!388668 m!384671))

(declare-fun m!384679 () Bool)

(assert (=> b!388668 m!384679))

(assert (=> b!388668 m!384659))

(assert (=> b!388666 m!384623))

(assert (=> b!388666 m!384623))

(assert (=> b!388666 m!384631))

(assert (=> b!388684 m!384623))

(assert (=> b!388684 m!384627))

(assert (=> b!388684 m!384621))

(assert (=> b!388684 m!384627))

(assert (=> b!388684 m!384621))

(assert (=> b!388684 m!384629))

(assert (=> b!388684 m!384623))

(declare-fun m!384681 () Bool)

(assert (=> b!388684 m!384681))

(assert (=> b!388671 m!384623))

(assert (=> b!388671 m!384623))

(assert (=> b!388671 m!384631))

(declare-fun m!384683 () Bool)

(assert (=> bm!27372 m!384683))

(assert (=> b!388672 m!384623))

(assert (=> b!388672 m!384623))

(declare-fun m!384685 () Bool)

(assert (=> b!388672 m!384685))

(declare-fun m!384687 () Bool)

(assert (=> b!388667 m!384687))

(assert (=> d!72709 m!384569))

(declare-fun m!384689 () Bool)

(assert (=> b!388681 m!384689))

(declare-fun m!384691 () Bool)

(assert (=> b!388670 m!384691))

(declare-fun m!384693 () Bool)

(assert (=> bm!27368 m!384693))

(declare-fun m!384695 () Bool)

(assert (=> bm!27366 m!384695))

(assert (=> b!388534 d!72709))

(declare-fun bm!27373 () Bool)

(declare-fun call!27378 () Bool)

(declare-fun lt!182669 () ListLongMap!5373)

(assert (=> bm!27373 (= call!27378 (contains!2444 lt!182669 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!27376 () ListLongMap!5373)

(declare-fun bm!27374 () Bool)

(assert (=> bm!27374 (= call!27376 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388687 () Bool)

(declare-fun e!235509 () Bool)

(assert (=> b!388687 (= e!235509 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(declare-fun b!388688 () Bool)

(declare-fun e!235519 () ListLongMap!5373)

(declare-fun call!27379 () ListLongMap!5373)

(assert (=> b!388688 (= e!235519 (+!1000 call!27379 (tuple2!6447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!388689 () Bool)

(declare-fun e!235514 () Unit!11891)

(declare-fun lt!182662 () Unit!11891)

(assert (=> b!388689 (= e!235514 lt!182662)))

(declare-fun lt!182659 () ListLongMap!5373)

(assert (=> b!388689 (= lt!182659 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182671 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182671 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182668 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182668 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(declare-fun lt!182661 () Unit!11891)

(assert (=> b!388689 (= lt!182661 (addStillContains!274 lt!182659 lt!182671 zeroValue!472 lt!182668))))

(assert (=> b!388689 (contains!2444 (+!1000 lt!182659 (tuple2!6447 lt!182671 zeroValue!472)) lt!182668)))

(declare-fun lt!182660 () Unit!11891)

(assert (=> b!388689 (= lt!182660 lt!182661)))

(declare-fun lt!182673 () ListLongMap!5373)

(assert (=> b!388689 (= lt!182673 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182674 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182674 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182678 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182678 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(declare-fun lt!182663 () Unit!11891)

(assert (=> b!388689 (= lt!182663 (addApplyDifferent!274 lt!182673 lt!182674 minValue!472 lt!182678))))

(assert (=> b!388689 (= (apply!298 (+!1000 lt!182673 (tuple2!6447 lt!182674 minValue!472)) lt!182678) (apply!298 lt!182673 lt!182678))))

(declare-fun lt!182677 () Unit!11891)

(assert (=> b!388689 (= lt!182677 lt!182663)))

(declare-fun lt!182664 () ListLongMap!5373)

(assert (=> b!388689 (= lt!182664 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182667 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182667 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182666 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182666 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(declare-fun lt!182672 () Unit!11891)

(assert (=> b!388689 (= lt!182672 (addApplyDifferent!274 lt!182664 lt!182667 zeroValue!472 lt!182666))))

(assert (=> b!388689 (= (apply!298 (+!1000 lt!182664 (tuple2!6447 lt!182667 zeroValue!472)) lt!182666) (apply!298 lt!182664 lt!182666))))

(declare-fun lt!182658 () Unit!11891)

(assert (=> b!388689 (= lt!182658 lt!182672)))

(declare-fun lt!182679 () ListLongMap!5373)

(assert (=> b!388689 (= lt!182679 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182670 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182670 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182676 () (_ BitVec 64))

(assert (=> b!388689 (= lt!182676 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(assert (=> b!388689 (= lt!182662 (addApplyDifferent!274 lt!182679 lt!182670 minValue!472 lt!182676))))

(assert (=> b!388689 (= (apply!298 (+!1000 lt!182679 (tuple2!6447 lt!182670 minValue!472)) lt!182676) (apply!298 lt!182679 lt!182676))))

(declare-fun b!388690 () Bool)

(declare-fun res!222342 () Bool)

(declare-fun e!235510 () Bool)

(assert (=> b!388690 (=> (not res!222342) (not e!235510))))

(declare-fun e!235517 () Bool)

(assert (=> b!388690 (= res!222342 e!235517)))

(declare-fun c!53931 () Bool)

(assert (=> b!388690 (= c!53931 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!388691 () Bool)

(declare-fun e!235515 () Bool)

(assert (=> b!388691 (= e!235515 (= (apply!298 lt!182669 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!388692 () Bool)

(declare-fun e!235513 () Bool)

(assert (=> b!388692 (= e!235513 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(declare-fun b!388693 () Bool)

(declare-fun e!235521 () Bool)

(declare-fun e!235518 () Bool)

(assert (=> b!388693 (= e!235521 e!235518)))

(declare-fun res!222340 () Bool)

(assert (=> b!388693 (=> (not res!222340) (not e!235518))))

(assert (=> b!388693 (= res!222340 (contains!2444 lt!182669 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(assert (=> b!388693 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun b!388694 () Bool)

(declare-fun e!235516 () Bool)

(assert (=> b!388694 (= e!235510 e!235516)))

(declare-fun c!53935 () Bool)

(assert (=> b!388694 (= c!53935 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!388695 () Bool)

(declare-fun e!235520 () ListLongMap!5373)

(assert (=> b!388695 (= e!235519 e!235520)))

(declare-fun c!53934 () Bool)

(assert (=> b!388695 (= c!53934 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27376 () Bool)

(declare-fun call!27377 () ListLongMap!5373)

(assert (=> bm!27376 (= call!27377 call!27376)))

(declare-fun b!388696 () Bool)

(assert (=> b!388696 (= e!235516 (not call!27378))))

(declare-fun b!388697 () Bool)

(declare-fun e!235511 () ListLongMap!5373)

(declare-fun call!27380 () ListLongMap!5373)

(assert (=> b!388697 (= e!235511 call!27380)))

(declare-fun b!388698 () Bool)

(declare-fun call!27382 () ListLongMap!5373)

(assert (=> b!388698 (= e!235511 call!27382)))

(declare-fun bm!27377 () Bool)

(assert (=> bm!27377 (= call!27380 call!27377)))

(declare-fun b!388699 () Bool)

(declare-fun e!235512 () Bool)

(assert (=> b!388699 (= e!235517 e!235512)))

(declare-fun res!222341 () Bool)

(declare-fun call!27381 () Bool)

(assert (=> b!388699 (= res!222341 call!27381)))

(assert (=> b!388699 (=> (not res!222341) (not e!235512))))

(declare-fun bm!27378 () Bool)

(assert (=> bm!27378 (= call!27382 call!27379)))

(declare-fun b!388700 () Bool)

(declare-fun c!53933 () Bool)

(assert (=> b!388700 (= c!53933 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!388700 (= e!235520 e!235511)))

(declare-fun d!72711 () Bool)

(assert (=> d!72711 e!235510))

(declare-fun res!222348 () Bool)

(assert (=> d!72711 (=> (not res!222348) (not e!235510))))

(assert (=> d!72711 (= res!222348 (or (bvsge #b00000000000000000000000000000000 (size!11336 lt!182537)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))))

(declare-fun lt!182665 () ListLongMap!5373)

(assert (=> d!72711 (= lt!182669 lt!182665)))

(declare-fun lt!182675 () Unit!11891)

(assert (=> d!72711 (= lt!182675 e!235514)))

(declare-fun c!53932 () Bool)

(assert (=> d!72711 (= c!53932 e!235513)))

(declare-fun res!222344 () Bool)

(assert (=> d!72711 (=> (not res!222344) (not e!235513))))

(assert (=> d!72711 (= res!222344 (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(assert (=> d!72711 (= lt!182665 e!235519)))

(declare-fun c!53936 () Bool)

(assert (=> d!72711 (= c!53936 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72711 (validMask!0 mask!970)))

(assert (=> d!72711 (= (getCurrentListMap!2074 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182669)))

(declare-fun bm!27375 () Bool)

(assert (=> bm!27375 (= call!27381 (contains!2444 lt!182669 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388701 () Bool)

(assert (=> b!388701 (= e!235517 (not call!27381))))

(declare-fun b!388702 () Bool)

(assert (=> b!388702 (= e!235512 (= (apply!298 lt!182669 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!388703 () Bool)

(assert (=> b!388703 (= e!235516 e!235515)))

(declare-fun res!222343 () Bool)

(assert (=> b!388703 (= res!222343 call!27378)))

(assert (=> b!388703 (=> (not res!222343) (not e!235515))))

(declare-fun bm!27379 () Bool)

(assert (=> bm!27379 (= call!27379 (+!1000 (ite c!53936 call!27376 (ite c!53934 call!27377 call!27380)) (ite (or c!53936 c!53934) (tuple2!6447 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!388704 () Bool)

(assert (=> b!388704 (= e!235520 call!27382)))

(declare-fun b!388705 () Bool)

(assert (=> b!388705 (= e!235518 (= (apply!298 lt!182669 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)) (get!5567 (select (arr!10985 lt!182532) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388705 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11337 lt!182532)))))

(assert (=> b!388705 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun b!388706 () Bool)

(declare-fun res!222347 () Bool)

(assert (=> b!388706 (=> (not res!222347) (not e!235510))))

(assert (=> b!388706 (= res!222347 e!235521)))

(declare-fun res!222345 () Bool)

(assert (=> b!388706 (=> res!222345 e!235521)))

(assert (=> b!388706 (= res!222345 (not e!235509))))

(declare-fun res!222346 () Bool)

(assert (=> b!388706 (=> (not res!222346) (not e!235509))))

(assert (=> b!388706 (= res!222346 (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun b!388707 () Bool)

(declare-fun Unit!11896 () Unit!11891)

(assert (=> b!388707 (= e!235514 Unit!11896)))

(assert (= (and d!72711 c!53936) b!388688))

(assert (= (and d!72711 (not c!53936)) b!388695))

(assert (= (and b!388695 c!53934) b!388704))

(assert (= (and b!388695 (not c!53934)) b!388700))

(assert (= (and b!388700 c!53933) b!388698))

(assert (= (and b!388700 (not c!53933)) b!388697))

(assert (= (or b!388698 b!388697) bm!27377))

(assert (= (or b!388704 bm!27377) bm!27376))

(assert (= (or b!388704 b!388698) bm!27378))

(assert (= (or b!388688 bm!27376) bm!27374))

(assert (= (or b!388688 bm!27378) bm!27379))

(assert (= (and d!72711 res!222344) b!388692))

(assert (= (and d!72711 c!53932) b!388689))

(assert (= (and d!72711 (not c!53932)) b!388707))

(assert (= (and d!72711 res!222348) b!388706))

(assert (= (and b!388706 res!222346) b!388687))

(assert (= (and b!388706 (not res!222345)) b!388693))

(assert (= (and b!388693 res!222340) b!388705))

(assert (= (and b!388706 res!222347) b!388690))

(assert (= (and b!388690 c!53931) b!388699))

(assert (= (and b!388690 (not c!53931)) b!388701))

(assert (= (and b!388699 res!222341) b!388702))

(assert (= (or b!388699 b!388701) bm!27375))

(assert (= (and b!388690 res!222342) b!388694))

(assert (= (and b!388694 c!53935) b!388703))

(assert (= (and b!388694 (not c!53935)) b!388696))

(assert (= (and b!388703 res!222343) b!388691))

(assert (= (or b!388703 b!388696) bm!27373))

(declare-fun b_lambda!8587 () Bool)

(assert (=> (not b_lambda!8587) (not b!388705)))

(assert (=> b!388705 t!11495))

(declare-fun b_and!16195 () Bool)

(assert (= b_and!16193 (and (=> t!11495 result!5721) b_and!16195)))

(assert (=> bm!27374 m!384551))

(declare-fun m!384697 () Bool)

(assert (=> b!388689 m!384697))

(declare-fun m!384699 () Bool)

(assert (=> b!388689 m!384699))

(declare-fun m!384701 () Bool)

(assert (=> b!388689 m!384701))

(declare-fun m!384703 () Bool)

(assert (=> b!388689 m!384703))

(declare-fun m!384705 () Bool)

(assert (=> b!388689 m!384705))

(declare-fun m!384707 () Bool)

(assert (=> b!388689 m!384707))

(assert (=> b!388689 m!384551))

(declare-fun m!384709 () Bool)

(assert (=> b!388689 m!384709))

(declare-fun m!384711 () Bool)

(assert (=> b!388689 m!384711))

(assert (=> b!388689 m!384703))

(declare-fun m!384713 () Bool)

(assert (=> b!388689 m!384713))

(declare-fun m!384715 () Bool)

(assert (=> b!388689 m!384715))

(declare-fun m!384717 () Bool)

(assert (=> b!388689 m!384717))

(declare-fun m!384719 () Bool)

(assert (=> b!388689 m!384719))

(assert (=> b!388689 m!384715))

(declare-fun m!384721 () Bool)

(assert (=> b!388689 m!384721))

(declare-fun m!384723 () Bool)

(assert (=> b!388689 m!384723))

(declare-fun m!384725 () Bool)

(assert (=> b!388689 m!384725))

(assert (=> b!388689 m!384717))

(declare-fun m!384727 () Bool)

(assert (=> b!388689 m!384727))

(assert (=> b!388689 m!384705))

(assert (=> b!388687 m!384725))

(assert (=> b!388687 m!384725))

(declare-fun m!384729 () Bool)

(assert (=> b!388687 m!384729))

(assert (=> b!388705 m!384725))

(declare-fun m!384731 () Bool)

(assert (=> b!388705 m!384731))

(assert (=> b!388705 m!384621))

(assert (=> b!388705 m!384731))

(assert (=> b!388705 m!384621))

(declare-fun m!384733 () Bool)

(assert (=> b!388705 m!384733))

(assert (=> b!388705 m!384725))

(declare-fun m!384735 () Bool)

(assert (=> b!388705 m!384735))

(assert (=> b!388692 m!384725))

(assert (=> b!388692 m!384725))

(assert (=> b!388692 m!384729))

(declare-fun m!384737 () Bool)

(assert (=> bm!27379 m!384737))

(assert (=> b!388693 m!384725))

(assert (=> b!388693 m!384725))

(declare-fun m!384739 () Bool)

(assert (=> b!388693 m!384739))

(declare-fun m!384741 () Bool)

(assert (=> b!388688 m!384741))

(assert (=> d!72711 m!384569))

(declare-fun m!384743 () Bool)

(assert (=> b!388702 m!384743))

(declare-fun m!384745 () Bool)

(assert (=> b!388691 m!384745))

(declare-fun m!384747 () Bool)

(assert (=> bm!27375 m!384747))

(declare-fun m!384749 () Bool)

(assert (=> bm!27373 m!384749))

(assert (=> b!388534 d!72711))

(declare-fun b!388708 () Bool)

(declare-fun e!235524 () Bool)

(declare-fun e!235528 () Bool)

(assert (=> b!388708 (= e!235524 e!235528)))

(declare-fun c!53938 () Bool)

(assert (=> b!388708 (= c!53938 (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun b!388709 () Bool)

(declare-fun e!235526 () ListLongMap!5373)

(declare-fun e!235523 () ListLongMap!5373)

(assert (=> b!388709 (= e!235526 e!235523)))

(declare-fun c!53939 () Bool)

(assert (=> b!388709 (= c!53939 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(declare-fun lt!182681 () ListLongMap!5373)

(declare-fun b!388710 () Bool)

(assert (=> b!388710 (= e!235528 (= lt!182681 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!388711 () Bool)

(declare-fun e!235527 () Bool)

(assert (=> b!388711 (= e!235527 e!235524)))

(declare-fun c!53940 () Bool)

(declare-fun e!235525 () Bool)

(assert (=> b!388711 (= c!53940 e!235525)))

(declare-fun res!222350 () Bool)

(assert (=> b!388711 (=> (not res!222350) (not e!235525))))

(assert (=> b!388711 (= res!222350 (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun b!388712 () Bool)

(declare-fun lt!182683 () Unit!11891)

(declare-fun lt!182685 () Unit!11891)

(assert (=> b!388712 (= lt!182683 lt!182685)))

(declare-fun lt!182680 () (_ BitVec 64))

(declare-fun lt!182682 () (_ BitVec 64))

(declare-fun lt!182686 () ListLongMap!5373)

(declare-fun lt!182684 () V!13885)

(assert (=> b!388712 (not (contains!2444 (+!1000 lt!182686 (tuple2!6447 lt!182682 lt!182684)) lt!182680))))

(assert (=> b!388712 (= lt!182685 (addStillNotContains!133 lt!182686 lt!182682 lt!182684 lt!182680))))

(assert (=> b!388712 (= lt!182680 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!388712 (= lt!182684 (get!5567 (select (arr!10985 lt!182532) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!388712 (= lt!182682 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(declare-fun call!27383 () ListLongMap!5373)

(assert (=> b!388712 (= lt!182686 call!27383)))

(assert (=> b!388712 (= e!235523 (+!1000 call!27383 (tuple2!6447 (select (arr!10984 lt!182537) #b00000000000000000000000000000000) (get!5567 (select (arr!10985 lt!182532) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!388713 () Bool)

(declare-fun res!222349 () Bool)

(assert (=> b!388713 (=> (not res!222349) (not e!235527))))

(assert (=> b!388713 (= res!222349 (not (contains!2444 lt!182681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!27380 () Bool)

(assert (=> bm!27380 (= call!27383 (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!388714 () Bool)

(assert (=> b!388714 (= e!235523 call!27383)))

(declare-fun b!388715 () Bool)

(assert (=> b!388715 (= e!235526 (ListLongMap!5374 Nil!6327))))

(declare-fun d!72713 () Bool)

(assert (=> d!72713 e!235527))

(declare-fun res!222351 () Bool)

(assert (=> d!72713 (=> (not res!222351) (not e!235527))))

(assert (=> d!72713 (= res!222351 (not (contains!2444 lt!182681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72713 (= lt!182681 e!235526)))

(declare-fun c!53937 () Bool)

(assert (=> d!72713 (= c!53937 (bvsge #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(assert (=> d!72713 (validMask!0 mask!970)))

(assert (=> d!72713 (= (getCurrentListMapNoExtraKeys!936 lt!182537 lt!182532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182681)))

(declare-fun b!388716 () Bool)

(assert (=> b!388716 (= e!235525 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(assert (=> b!388716 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!388717 () Bool)

(assert (=> b!388717 (= e!235528 (isEmpty!549 lt!182681))))

(declare-fun b!388718 () Bool)

(declare-fun e!235522 () Bool)

(assert (=> b!388718 (= e!235524 e!235522)))

(assert (=> b!388718 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(declare-fun res!222352 () Bool)

(assert (=> b!388718 (= res!222352 (contains!2444 lt!182681 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(assert (=> b!388718 (=> (not res!222352) (not e!235522))))

(declare-fun b!388719 () Bool)

(assert (=> b!388719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(assert (=> b!388719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11337 lt!182532)))))

(assert (=> b!388719 (= e!235522 (= (apply!298 lt!182681 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)) (get!5567 (select (arr!10985 lt!182532) #b00000000000000000000000000000000) (dynLambda!636 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!72713 c!53937) b!388715))

(assert (= (and d!72713 (not c!53937)) b!388709))

(assert (= (and b!388709 c!53939) b!388712))

(assert (= (and b!388709 (not c!53939)) b!388714))

(assert (= (or b!388712 b!388714) bm!27380))

(assert (= (and d!72713 res!222351) b!388713))

(assert (= (and b!388713 res!222349) b!388711))

(assert (= (and b!388711 res!222350) b!388716))

(assert (= (and b!388711 c!53940) b!388718))

(assert (= (and b!388711 (not c!53940)) b!388708))

(assert (= (and b!388718 res!222352) b!388719))

(assert (= (and b!388708 c!53938) b!388710))

(assert (= (and b!388708 (not c!53938)) b!388717))

(declare-fun b_lambda!8589 () Bool)

(assert (=> (not b_lambda!8589) (not b!388712)))

(assert (=> b!388712 t!11495))

(declare-fun b_and!16197 () Bool)

(assert (= b_and!16195 (and (=> t!11495 result!5721) b_and!16197)))

(declare-fun b_lambda!8591 () Bool)

(assert (=> (not b_lambda!8591) (not b!388719)))

(assert (=> b!388719 t!11495))

(declare-fun b_and!16199 () Bool)

(assert (= b_and!16197 (and (=> t!11495 result!5721) b_and!16199)))

(assert (=> b!388719 m!384621))

(assert (=> b!388719 m!384725))

(assert (=> b!388719 m!384725))

(declare-fun m!384751 () Bool)

(assert (=> b!388719 m!384751))

(assert (=> b!388719 m!384731))

(assert (=> b!388719 m!384731))

(assert (=> b!388719 m!384621))

(assert (=> b!388719 m!384733))

(assert (=> b!388709 m!384725))

(assert (=> b!388709 m!384725))

(assert (=> b!388709 m!384729))

(assert (=> b!388716 m!384725))

(assert (=> b!388716 m!384725))

(assert (=> b!388716 m!384729))

(declare-fun m!384753 () Bool)

(assert (=> b!388717 m!384753))

(declare-fun m!384755 () Bool)

(assert (=> bm!27380 m!384755))

(declare-fun m!384757 () Bool)

(assert (=> b!388713 m!384757))

(declare-fun m!384759 () Bool)

(assert (=> d!72713 m!384759))

(assert (=> d!72713 m!384569))

(assert (=> b!388710 m!384755))

(assert (=> b!388718 m!384725))

(assert (=> b!388718 m!384725))

(declare-fun m!384761 () Bool)

(assert (=> b!388718 m!384761))

(assert (=> b!388712 m!384621))

(assert (=> b!388712 m!384725))

(declare-fun m!384763 () Bool)

(assert (=> b!388712 m!384763))

(assert (=> b!388712 m!384763))

(declare-fun m!384765 () Bool)

(assert (=> b!388712 m!384765))

(declare-fun m!384767 () Bool)

(assert (=> b!388712 m!384767))

(assert (=> b!388712 m!384731))

(assert (=> b!388712 m!384731))

(assert (=> b!388712 m!384621))

(assert (=> b!388712 m!384733))

(declare-fun m!384769 () Bool)

(assert (=> b!388712 m!384769))

(assert (=> b!388534 d!72713))

(declare-fun d!72715 () Bool)

(declare-fun e!235534 () Bool)

(assert (=> d!72715 e!235534))

(declare-fun res!222355 () Bool)

(assert (=> d!72715 (=> (not res!222355) (not e!235534))))

(assert (=> d!72715 (= res!222355 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11336 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11337 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11336 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11337 _values!506))))))))

(declare-fun lt!182689 () Unit!11891)

(declare-fun choose!1320 (array!23039 array!23041 (_ BitVec 32) (_ BitVec 32) V!13885 V!13885 (_ BitVec 32) (_ BitVec 64) V!13885 (_ BitVec 32) Int) Unit!11891)

(assert (=> d!72715 (= lt!182689 (choose!1320 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72715 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> d!72715 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!231 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!182689)))

(declare-fun call!27388 () ListLongMap!5373)

(declare-fun bm!27385 () Bool)

(assert (=> bm!27385 (= call!27388 (getCurrentListMapNoExtraKeys!936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388726 () Bool)

(declare-fun e!235533 () Bool)

(assert (=> b!388726 (= e!235534 e!235533)))

(declare-fun c!53943 () Bool)

(assert (=> b!388726 (= c!53943 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun call!27389 () ListLongMap!5373)

(declare-fun bm!27386 () Bool)

(assert (=> bm!27386 (= call!27389 (getCurrentListMapNoExtraKeys!936 (array!23040 (store (arr!10984 _keys!658) i!548 k0!778) (size!11336 _keys!658)) (array!23042 (store (arr!10985 _values!506) i!548 (ValueCellFull!4449 v!373)) (size!11337 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388727 () Bool)

(assert (=> b!388727 (= e!235533 (= call!27389 call!27388))))

(declare-fun b!388728 () Bool)

(assert (=> b!388728 (= e!235533 (= call!27389 (+!1000 call!27388 (tuple2!6447 k0!778 v!373))))))

(assert (= (and d!72715 res!222355) b!388726))

(assert (= (and b!388726 c!53943) b!388728))

(assert (= (and b!388726 (not c!53943)) b!388727))

(assert (= (or b!388728 b!388727) bm!27385))

(assert (= (or b!388728 b!388727) bm!27386))

(declare-fun m!384771 () Bool)

(assert (=> d!72715 m!384771))

(assert (=> bm!27385 m!384549))

(assert (=> bm!27386 m!384533))

(assert (=> bm!27386 m!384559))

(declare-fun m!384773 () Bool)

(assert (=> bm!27386 m!384773))

(declare-fun m!384775 () Bool)

(assert (=> b!388728 m!384775))

(assert (=> b!388534 d!72715))

(declare-fun d!72717 () Bool)

(declare-fun e!235537 () Bool)

(assert (=> d!72717 e!235537))

(declare-fun res!222360 () Bool)

(assert (=> d!72717 (=> (not res!222360) (not e!235537))))

(declare-fun lt!182699 () ListLongMap!5373)

(assert (=> d!72717 (= res!222360 (contains!2444 lt!182699 (_1!3233 (tuple2!6447 k0!778 v!373))))))

(declare-fun lt!182698 () List!6330)

(assert (=> d!72717 (= lt!182699 (ListLongMap!5374 lt!182698))))

(declare-fun lt!182701 () Unit!11891)

(declare-fun lt!182700 () Unit!11891)

(assert (=> d!72717 (= lt!182701 lt!182700)))

(declare-datatypes ((Option!361 0))(
  ( (Some!360 (v!7039 V!13885)) (None!359) )
))
(declare-fun getValueByKey!355 (List!6330 (_ BitVec 64)) Option!361)

(assert (=> d!72717 (= (getValueByKey!355 lt!182698 (_1!3233 (tuple2!6447 k0!778 v!373))) (Some!360 (_2!3233 (tuple2!6447 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!179 (List!6330 (_ BitVec 64) V!13885) Unit!11891)

(assert (=> d!72717 (= lt!182700 (lemmaContainsTupThenGetReturnValue!179 lt!182698 (_1!3233 (tuple2!6447 k0!778 v!373)) (_2!3233 (tuple2!6447 k0!778 v!373))))))

(declare-fun insertStrictlySorted!181 (List!6330 (_ BitVec 64) V!13885) List!6330)

(assert (=> d!72717 (= lt!182698 (insertStrictlySorted!181 (toList!2702 lt!182540) (_1!3233 (tuple2!6447 k0!778 v!373)) (_2!3233 (tuple2!6447 k0!778 v!373))))))

(assert (=> d!72717 (= (+!1000 lt!182540 (tuple2!6447 k0!778 v!373)) lt!182699)))

(declare-fun b!388733 () Bool)

(declare-fun res!222361 () Bool)

(assert (=> b!388733 (=> (not res!222361) (not e!235537))))

(assert (=> b!388733 (= res!222361 (= (getValueByKey!355 (toList!2702 lt!182699) (_1!3233 (tuple2!6447 k0!778 v!373))) (Some!360 (_2!3233 (tuple2!6447 k0!778 v!373)))))))

(declare-fun b!388734 () Bool)

(declare-fun contains!2445 (List!6330 tuple2!6446) Bool)

(assert (=> b!388734 (= e!235537 (contains!2445 (toList!2702 lt!182699) (tuple2!6447 k0!778 v!373)))))

(assert (= (and d!72717 res!222360) b!388733))

(assert (= (and b!388733 res!222361) b!388734))

(declare-fun m!384777 () Bool)

(assert (=> d!72717 m!384777))

(declare-fun m!384779 () Bool)

(assert (=> d!72717 m!384779))

(declare-fun m!384781 () Bool)

(assert (=> d!72717 m!384781))

(declare-fun m!384783 () Bool)

(assert (=> d!72717 m!384783))

(declare-fun m!384785 () Bool)

(assert (=> b!388733 m!384785))

(declare-fun m!384787 () Bool)

(assert (=> b!388734 m!384787))

(assert (=> b!388534 d!72717))

(declare-fun bm!27389 () Bool)

(declare-fun call!27392 () Bool)

(declare-fun c!53946 () Bool)

(assert (=> bm!27389 (= call!27392 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53946 (Cons!6327 (select (arr!10984 _keys!658) #b00000000000000000000000000000000) Nil!6328) Nil!6328)))))

(declare-fun b!388746 () Bool)

(declare-fun e!235547 () Bool)

(declare-fun e!235548 () Bool)

(assert (=> b!388746 (= e!235547 e!235548)))

(declare-fun res!222370 () Bool)

(assert (=> b!388746 (=> (not res!222370) (not e!235548))))

(declare-fun e!235549 () Bool)

(assert (=> b!388746 (= res!222370 (not e!235549))))

(declare-fun res!222369 () Bool)

(assert (=> b!388746 (=> (not res!222369) (not e!235549))))

(assert (=> b!388746 (= res!222369 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388747 () Bool)

(declare-fun e!235546 () Bool)

(assert (=> b!388747 (= e!235546 call!27392)))

(declare-fun b!388748 () Bool)

(assert (=> b!388748 (= e!235546 call!27392)))

(declare-fun b!388749 () Bool)

(declare-fun contains!2446 (List!6331 (_ BitVec 64)) Bool)

(assert (=> b!388749 (= e!235549 (contains!2446 Nil!6328 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72719 () Bool)

(declare-fun res!222368 () Bool)

(assert (=> d!72719 (=> res!222368 e!235547)))

(assert (=> d!72719 (= res!222368 (bvsge #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> d!72719 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6328) e!235547)))

(declare-fun b!388745 () Bool)

(assert (=> b!388745 (= e!235548 e!235546)))

(assert (=> b!388745 (= c!53946 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72719 (not res!222368)) b!388746))

(assert (= (and b!388746 res!222369) b!388749))

(assert (= (and b!388746 res!222370) b!388745))

(assert (= (and b!388745 c!53946) b!388747))

(assert (= (and b!388745 (not c!53946)) b!388748))

(assert (= (or b!388747 b!388748) bm!27389))

(assert (=> bm!27389 m!384623))

(declare-fun m!384789 () Bool)

(assert (=> bm!27389 m!384789))

(assert (=> b!388746 m!384623))

(assert (=> b!388746 m!384623))

(assert (=> b!388746 m!384631))

(assert (=> b!388749 m!384623))

(assert (=> b!388749 m!384623))

(declare-fun m!384791 () Bool)

(assert (=> b!388749 m!384791))

(assert (=> b!388745 m!384623))

(assert (=> b!388745 m!384623))

(assert (=> b!388745 m!384631))

(assert (=> b!388543 d!72719))

(declare-fun d!72721 () Bool)

(declare-fun e!235550 () Bool)

(assert (=> d!72721 e!235550))

(declare-fun res!222371 () Bool)

(assert (=> d!72721 (=> (not res!222371) (not e!235550))))

(declare-fun lt!182703 () ListLongMap!5373)

(assert (=> d!72721 (= res!222371 (contains!2444 lt!182703 (_1!3233 lt!182533)))))

(declare-fun lt!182702 () List!6330)

(assert (=> d!72721 (= lt!182703 (ListLongMap!5374 lt!182702))))

(declare-fun lt!182705 () Unit!11891)

(declare-fun lt!182704 () Unit!11891)

(assert (=> d!72721 (= lt!182705 lt!182704)))

(assert (=> d!72721 (= (getValueByKey!355 lt!182702 (_1!3233 lt!182533)) (Some!360 (_2!3233 lt!182533)))))

(assert (=> d!72721 (= lt!182704 (lemmaContainsTupThenGetReturnValue!179 lt!182702 (_1!3233 lt!182533) (_2!3233 lt!182533)))))

(assert (=> d!72721 (= lt!182702 (insertStrictlySorted!181 (toList!2702 (+!1000 lt!182540 lt!182535)) (_1!3233 lt!182533) (_2!3233 lt!182533)))))

(assert (=> d!72721 (= (+!1000 (+!1000 lt!182540 lt!182535) lt!182533) lt!182703)))

(declare-fun b!388750 () Bool)

(declare-fun res!222372 () Bool)

(assert (=> b!388750 (=> (not res!222372) (not e!235550))))

(assert (=> b!388750 (= res!222372 (= (getValueByKey!355 (toList!2702 lt!182703) (_1!3233 lt!182533)) (Some!360 (_2!3233 lt!182533))))))

(declare-fun b!388751 () Bool)

(assert (=> b!388751 (= e!235550 (contains!2445 (toList!2702 lt!182703) lt!182533))))

(assert (= (and d!72721 res!222371) b!388750))

(assert (= (and b!388750 res!222372) b!388751))

(declare-fun m!384793 () Bool)

(assert (=> d!72721 m!384793))

(declare-fun m!384795 () Bool)

(assert (=> d!72721 m!384795))

(declare-fun m!384797 () Bool)

(assert (=> d!72721 m!384797))

(declare-fun m!384799 () Bool)

(assert (=> d!72721 m!384799))

(declare-fun m!384801 () Bool)

(assert (=> b!388750 m!384801))

(declare-fun m!384803 () Bool)

(assert (=> b!388751 m!384803))

(assert (=> b!388542 d!72721))

(declare-fun d!72723 () Bool)

(declare-fun e!235551 () Bool)

(assert (=> d!72723 e!235551))

(declare-fun res!222373 () Bool)

(assert (=> d!72723 (=> (not res!222373) (not e!235551))))

(declare-fun lt!182707 () ListLongMap!5373)

(assert (=> d!72723 (= res!222373 (contains!2444 lt!182707 (_1!3233 lt!182535)))))

(declare-fun lt!182706 () List!6330)

(assert (=> d!72723 (= lt!182707 (ListLongMap!5374 lt!182706))))

(declare-fun lt!182709 () Unit!11891)

(declare-fun lt!182708 () Unit!11891)

(assert (=> d!72723 (= lt!182709 lt!182708)))

(assert (=> d!72723 (= (getValueByKey!355 lt!182706 (_1!3233 lt!182535)) (Some!360 (_2!3233 lt!182535)))))

(assert (=> d!72723 (= lt!182708 (lemmaContainsTupThenGetReturnValue!179 lt!182706 (_1!3233 lt!182535) (_2!3233 lt!182535)))))

(assert (=> d!72723 (= lt!182706 (insertStrictlySorted!181 (toList!2702 lt!182540) (_1!3233 lt!182535) (_2!3233 lt!182535)))))

(assert (=> d!72723 (= (+!1000 lt!182540 lt!182535) lt!182707)))

(declare-fun b!388752 () Bool)

(declare-fun res!222374 () Bool)

(assert (=> b!388752 (=> (not res!222374) (not e!235551))))

(assert (=> b!388752 (= res!222374 (= (getValueByKey!355 (toList!2702 lt!182707) (_1!3233 lt!182535)) (Some!360 (_2!3233 lt!182535))))))

(declare-fun b!388753 () Bool)

(assert (=> b!388753 (= e!235551 (contains!2445 (toList!2702 lt!182707) lt!182535))))

(assert (= (and d!72723 res!222373) b!388752))

(assert (= (and b!388752 res!222374) b!388753))

(declare-fun m!384805 () Bool)

(assert (=> d!72723 m!384805))

(declare-fun m!384807 () Bool)

(assert (=> d!72723 m!384807))

(declare-fun m!384809 () Bool)

(assert (=> d!72723 m!384809))

(declare-fun m!384811 () Bool)

(assert (=> d!72723 m!384811))

(declare-fun m!384813 () Bool)

(assert (=> b!388752 m!384813))

(declare-fun m!384815 () Bool)

(assert (=> b!388753 m!384815))

(assert (=> b!388542 d!72723))

(declare-fun d!72725 () Bool)

(declare-fun e!235552 () Bool)

(assert (=> d!72725 e!235552))

(declare-fun res!222375 () Bool)

(assert (=> d!72725 (=> (not res!222375) (not e!235552))))

(declare-fun lt!182711 () ListLongMap!5373)

(assert (=> d!72725 (= res!222375 (contains!2444 lt!182711 (_1!3233 lt!182533)))))

(declare-fun lt!182710 () List!6330)

(assert (=> d!72725 (= lt!182711 (ListLongMap!5374 lt!182710))))

(declare-fun lt!182713 () Unit!11891)

(declare-fun lt!182712 () Unit!11891)

(assert (=> d!72725 (= lt!182713 lt!182712)))

(assert (=> d!72725 (= (getValueByKey!355 lt!182710 (_1!3233 lt!182533)) (Some!360 (_2!3233 lt!182533)))))

(assert (=> d!72725 (= lt!182712 (lemmaContainsTupThenGetReturnValue!179 lt!182710 (_1!3233 lt!182533) (_2!3233 lt!182533)))))

(assert (=> d!72725 (= lt!182710 (insertStrictlySorted!181 (toList!2702 (+!1000 lt!182539 lt!182535)) (_1!3233 lt!182533) (_2!3233 lt!182533)))))

(assert (=> d!72725 (= (+!1000 (+!1000 lt!182539 lt!182535) lt!182533) lt!182711)))

(declare-fun b!388754 () Bool)

(declare-fun res!222376 () Bool)

(assert (=> b!388754 (=> (not res!222376) (not e!235552))))

(assert (=> b!388754 (= res!222376 (= (getValueByKey!355 (toList!2702 lt!182711) (_1!3233 lt!182533)) (Some!360 (_2!3233 lt!182533))))))

(declare-fun b!388755 () Bool)

(assert (=> b!388755 (= e!235552 (contains!2445 (toList!2702 lt!182711) lt!182533))))

(assert (= (and d!72725 res!222375) b!388754))

(assert (= (and b!388754 res!222376) b!388755))

(declare-fun m!384817 () Bool)

(assert (=> d!72725 m!384817))

(declare-fun m!384819 () Bool)

(assert (=> d!72725 m!384819))

(declare-fun m!384821 () Bool)

(assert (=> d!72725 m!384821))

(declare-fun m!384823 () Bool)

(assert (=> d!72725 m!384823))

(declare-fun m!384825 () Bool)

(assert (=> b!388754 m!384825))

(declare-fun m!384827 () Bool)

(assert (=> b!388755 m!384827))

(assert (=> b!388542 d!72725))

(declare-fun d!72727 () Bool)

(declare-fun e!235553 () Bool)

(assert (=> d!72727 e!235553))

(declare-fun res!222377 () Bool)

(assert (=> d!72727 (=> (not res!222377) (not e!235553))))

(declare-fun lt!182715 () ListLongMap!5373)

(assert (=> d!72727 (= res!222377 (contains!2444 lt!182715 (_1!3233 lt!182535)))))

(declare-fun lt!182714 () List!6330)

(assert (=> d!72727 (= lt!182715 (ListLongMap!5374 lt!182714))))

(declare-fun lt!182717 () Unit!11891)

(declare-fun lt!182716 () Unit!11891)

(assert (=> d!72727 (= lt!182717 lt!182716)))

(assert (=> d!72727 (= (getValueByKey!355 lt!182714 (_1!3233 lt!182535)) (Some!360 (_2!3233 lt!182535)))))

(assert (=> d!72727 (= lt!182716 (lemmaContainsTupThenGetReturnValue!179 lt!182714 (_1!3233 lt!182535) (_2!3233 lt!182535)))))

(assert (=> d!72727 (= lt!182714 (insertStrictlySorted!181 (toList!2702 lt!182539) (_1!3233 lt!182535) (_2!3233 lt!182535)))))

(assert (=> d!72727 (= (+!1000 lt!182539 lt!182535) lt!182715)))

(declare-fun b!388756 () Bool)

(declare-fun res!222378 () Bool)

(assert (=> b!388756 (=> (not res!222378) (not e!235553))))

(assert (=> b!388756 (= res!222378 (= (getValueByKey!355 (toList!2702 lt!182715) (_1!3233 lt!182535)) (Some!360 (_2!3233 lt!182535))))))

(declare-fun b!388757 () Bool)

(assert (=> b!388757 (= e!235553 (contains!2445 (toList!2702 lt!182715) lt!182535))))

(assert (= (and d!72727 res!222377) b!388756))

(assert (= (and b!388756 res!222378) b!388757))

(declare-fun m!384829 () Bool)

(assert (=> d!72727 m!384829))

(declare-fun m!384831 () Bool)

(assert (=> d!72727 m!384831))

(declare-fun m!384833 () Bool)

(assert (=> d!72727 m!384833))

(declare-fun m!384835 () Bool)

(assert (=> d!72727 m!384835))

(declare-fun m!384837 () Bool)

(assert (=> b!388756 m!384837))

(declare-fun m!384839 () Bool)

(assert (=> b!388757 m!384839))

(assert (=> b!388542 d!72727))

(declare-fun b!388766 () Bool)

(declare-fun e!235560 () Bool)

(declare-fun e!235561 () Bool)

(assert (=> b!388766 (= e!235560 e!235561)))

(declare-fun lt!182726 () (_ BitVec 64))

(assert (=> b!388766 (= lt!182726 (select (arr!10984 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182725 () Unit!11891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23039 (_ BitVec 64) (_ BitVec 32)) Unit!11891)

(assert (=> b!388766 (= lt!182725 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!182726 #b00000000000000000000000000000000))))

(assert (=> b!388766 (arrayContainsKey!0 _keys!658 lt!182726 #b00000000000000000000000000000000)))

(declare-fun lt!182724 () Unit!11891)

(assert (=> b!388766 (= lt!182724 lt!182725)))

(declare-fun res!222384 () Bool)

(declare-datatypes ((SeekEntryResult!3497 0))(
  ( (MissingZero!3497 (index!16167 (_ BitVec 32))) (Found!3497 (index!16168 (_ BitVec 32))) (Intermediate!3497 (undefined!4309 Bool) (index!16169 (_ BitVec 32)) (x!38184 (_ BitVec 32))) (Undefined!3497) (MissingVacant!3497 (index!16170 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23039 (_ BitVec 32)) SeekEntryResult!3497)

(assert (=> b!388766 (= res!222384 (= (seekEntryOrOpen!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3497 #b00000000000000000000000000000000)))))

(assert (=> b!388766 (=> (not res!222384) (not e!235561))))

(declare-fun bm!27392 () Bool)

(declare-fun call!27395 () Bool)

(assert (=> bm!27392 (= call!27395 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!388767 () Bool)

(assert (=> b!388767 (= e!235561 call!27395)))

(declare-fun d!72729 () Bool)

(declare-fun res!222383 () Bool)

(declare-fun e!235562 () Bool)

(assert (=> d!72729 (=> res!222383 e!235562)))

(assert (=> d!72729 (= res!222383 (bvsge #b00000000000000000000000000000000 (size!11336 _keys!658)))))

(assert (=> d!72729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!235562)))

(declare-fun b!388768 () Bool)

(assert (=> b!388768 (= e!235560 call!27395)))

(declare-fun b!388769 () Bool)

(assert (=> b!388769 (= e!235562 e!235560)))

(declare-fun c!53949 () Bool)

(assert (=> b!388769 (= c!53949 (validKeyInArray!0 (select (arr!10984 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72729 (not res!222383)) b!388769))

(assert (= (and b!388769 c!53949) b!388766))

(assert (= (and b!388769 (not c!53949)) b!388768))

(assert (= (and b!388766 res!222384) b!388767))

(assert (= (or b!388767 b!388768) bm!27392))

(assert (=> b!388766 m!384623))

(declare-fun m!384841 () Bool)

(assert (=> b!388766 m!384841))

(declare-fun m!384843 () Bool)

(assert (=> b!388766 m!384843))

(assert (=> b!388766 m!384623))

(declare-fun m!384845 () Bool)

(assert (=> b!388766 m!384845))

(declare-fun m!384847 () Bool)

(assert (=> bm!27392 m!384847))

(assert (=> b!388769 m!384623))

(assert (=> b!388769 m!384623))

(assert (=> b!388769 m!384631))

(assert (=> b!388533 d!72729))

(declare-fun d!72731 () Bool)

(assert (=> d!72731 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388532 d!72731))

(declare-fun d!72733 () Bool)

(declare-fun res!222389 () Bool)

(declare-fun e!235567 () Bool)

(assert (=> d!72733 (=> res!222389 e!235567)))

(assert (=> d!72733 (= res!222389 (= (select (arr!10984 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72733 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!235567)))

(declare-fun b!388774 () Bool)

(declare-fun e!235568 () Bool)

(assert (=> b!388774 (= e!235567 e!235568)))

(declare-fun res!222390 () Bool)

(assert (=> b!388774 (=> (not res!222390) (not e!235568))))

(assert (=> b!388774 (= res!222390 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11336 _keys!658)))))

(declare-fun b!388775 () Bool)

(assert (=> b!388775 (= e!235568 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72733 (not res!222389)) b!388774))

(assert (= (and b!388774 res!222390) b!388775))

(assert (=> d!72733 m!384623))

(declare-fun m!384849 () Bool)

(assert (=> b!388775 m!384849))

(assert (=> b!388541 d!72733))

(declare-fun bm!27393 () Bool)

(declare-fun call!27396 () Bool)

(declare-fun c!53950 () Bool)

(assert (=> bm!27393 (= call!27396 (arrayNoDuplicates!0 lt!182537 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53950 (Cons!6327 (select (arr!10984 lt!182537) #b00000000000000000000000000000000) Nil!6328) Nil!6328)))))

(declare-fun b!388777 () Bool)

(declare-fun e!235570 () Bool)

(declare-fun e!235571 () Bool)

(assert (=> b!388777 (= e!235570 e!235571)))

(declare-fun res!222393 () Bool)

(assert (=> b!388777 (=> (not res!222393) (not e!235571))))

(declare-fun e!235572 () Bool)

(assert (=> b!388777 (= res!222393 (not e!235572))))

(declare-fun res!222392 () Bool)

(assert (=> b!388777 (=> (not res!222392) (not e!235572))))

(assert (=> b!388777 (= res!222392 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(declare-fun b!388778 () Bool)

(declare-fun e!235569 () Bool)

(assert (=> b!388778 (= e!235569 call!27396)))

(declare-fun b!388779 () Bool)

(assert (=> b!388779 (= e!235569 call!27396)))

(declare-fun b!388780 () Bool)

(assert (=> b!388780 (= e!235572 (contains!2446 Nil!6328 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(declare-fun d!72735 () Bool)

(declare-fun res!222391 () Bool)

(assert (=> d!72735 (=> res!222391 e!235570)))

(assert (=> d!72735 (= res!222391 (bvsge #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(assert (=> d!72735 (= (arrayNoDuplicates!0 lt!182537 #b00000000000000000000000000000000 Nil!6328) e!235570)))

(declare-fun b!388776 () Bool)

(assert (=> b!388776 (= e!235571 e!235569)))

(assert (=> b!388776 (= c!53950 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(assert (= (and d!72735 (not res!222391)) b!388777))

(assert (= (and b!388777 res!222392) b!388780))

(assert (= (and b!388777 res!222393) b!388776))

(assert (= (and b!388776 c!53950) b!388778))

(assert (= (and b!388776 (not c!53950)) b!388779))

(assert (= (or b!388778 b!388779) bm!27393))

(assert (=> bm!27393 m!384725))

(declare-fun m!384851 () Bool)

(assert (=> bm!27393 m!384851))

(assert (=> b!388777 m!384725))

(assert (=> b!388777 m!384725))

(assert (=> b!388777 m!384729))

(assert (=> b!388780 m!384725))

(assert (=> b!388780 m!384725))

(declare-fun m!384853 () Bool)

(assert (=> b!388780 m!384853))

(assert (=> b!388776 m!384725))

(assert (=> b!388776 m!384725))

(assert (=> b!388776 m!384729))

(assert (=> b!388536 d!72735))

(declare-fun b!388781 () Bool)

(declare-fun e!235573 () Bool)

(declare-fun e!235574 () Bool)

(assert (=> b!388781 (= e!235573 e!235574)))

(declare-fun lt!182729 () (_ BitVec 64))

(assert (=> b!388781 (= lt!182729 (select (arr!10984 lt!182537) #b00000000000000000000000000000000))))

(declare-fun lt!182728 () Unit!11891)

(assert (=> b!388781 (= lt!182728 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!182537 lt!182729 #b00000000000000000000000000000000))))

(assert (=> b!388781 (arrayContainsKey!0 lt!182537 lt!182729 #b00000000000000000000000000000000)))

(declare-fun lt!182727 () Unit!11891)

(assert (=> b!388781 (= lt!182727 lt!182728)))

(declare-fun res!222395 () Bool)

(assert (=> b!388781 (= res!222395 (= (seekEntryOrOpen!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000) lt!182537 mask!970) (Found!3497 #b00000000000000000000000000000000)))))

(assert (=> b!388781 (=> (not res!222395) (not e!235574))))

(declare-fun bm!27394 () Bool)

(declare-fun call!27397 () Bool)

(assert (=> bm!27394 (= call!27397 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!182537 mask!970))))

(declare-fun b!388782 () Bool)

(assert (=> b!388782 (= e!235574 call!27397)))

(declare-fun d!72737 () Bool)

(declare-fun res!222394 () Bool)

(declare-fun e!235575 () Bool)

(assert (=> d!72737 (=> res!222394 e!235575)))

(assert (=> d!72737 (= res!222394 (bvsge #b00000000000000000000000000000000 (size!11336 lt!182537)))))

(assert (=> d!72737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182537 mask!970) e!235575)))

(declare-fun b!388783 () Bool)

(assert (=> b!388783 (= e!235573 call!27397)))

(declare-fun b!388784 () Bool)

(assert (=> b!388784 (= e!235575 e!235573)))

(declare-fun c!53951 () Bool)

(assert (=> b!388784 (= c!53951 (validKeyInArray!0 (select (arr!10984 lt!182537) #b00000000000000000000000000000000)))))

(assert (= (and d!72737 (not res!222394)) b!388784))

(assert (= (and b!388784 c!53951) b!388781))

(assert (= (and b!388784 (not c!53951)) b!388783))

(assert (= (and b!388781 res!222395) b!388782))

(assert (= (or b!388782 b!388783) bm!27394))

(assert (=> b!388781 m!384725))

(declare-fun m!384855 () Bool)

(assert (=> b!388781 m!384855))

(declare-fun m!384857 () Bool)

(assert (=> b!388781 m!384857))

(assert (=> b!388781 m!384725))

(declare-fun m!384859 () Bool)

(assert (=> b!388781 m!384859))

(declare-fun m!384861 () Bool)

(assert (=> bm!27394 m!384861))

(assert (=> b!388784 m!384725))

(assert (=> b!388784 m!384725))

(assert (=> b!388784 m!384729))

(assert (=> b!388531 d!72737))

(declare-fun d!72739 () Bool)

(assert (=> d!72739 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37840 d!72739))

(declare-fun d!72741 () Bool)

(assert (=> d!72741 (= (array_inv!8052 _values!506) (bvsge (size!11337 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37840 d!72741))

(declare-fun d!72743 () Bool)

(assert (=> d!72743 (= (array_inv!8053 _keys!658) (bvsge (size!11336 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37840 d!72743))

(declare-fun b!388792 () Bool)

(declare-fun e!235580 () Bool)

(assert (=> b!388792 (= e!235580 tp_is_empty!9585)))

(declare-fun mapIsEmpty!15951 () Bool)

(declare-fun mapRes!15951 () Bool)

(assert (=> mapIsEmpty!15951 mapRes!15951))

(declare-fun mapNonEmpty!15951 () Bool)

(declare-fun tp!31503 () Bool)

(declare-fun e!235581 () Bool)

(assert (=> mapNonEmpty!15951 (= mapRes!15951 (and tp!31503 e!235581))))

(declare-fun mapValue!15951 () ValueCell!4449)

(declare-fun mapRest!15951 () (Array (_ BitVec 32) ValueCell!4449))

(declare-fun mapKey!15951 () (_ BitVec 32))

(assert (=> mapNonEmpty!15951 (= mapRest!15945 (store mapRest!15951 mapKey!15951 mapValue!15951))))

(declare-fun condMapEmpty!15951 () Bool)

(declare-fun mapDefault!15951 () ValueCell!4449)

(assert (=> mapNonEmpty!15945 (= condMapEmpty!15951 (= mapRest!15945 ((as const (Array (_ BitVec 32) ValueCell!4449)) mapDefault!15951)))))

(assert (=> mapNonEmpty!15945 (= tp!31493 (and e!235580 mapRes!15951))))

(declare-fun b!388791 () Bool)

(assert (=> b!388791 (= e!235581 tp_is_empty!9585)))

(assert (= (and mapNonEmpty!15945 condMapEmpty!15951) mapIsEmpty!15951))

(assert (= (and mapNonEmpty!15945 (not condMapEmpty!15951)) mapNonEmpty!15951))

(assert (= (and mapNonEmpty!15951 ((_ is ValueCellFull!4449) mapValue!15951)) b!388791))

(assert (= (and mapNonEmpty!15945 ((_ is ValueCellFull!4449) mapDefault!15951)) b!388792))

(declare-fun m!384863 () Bool)

(assert (=> mapNonEmpty!15951 m!384863))

(declare-fun b_lambda!8593 () Bool)

(assert (= b_lambda!8583 (or (and start!37840 b_free!8913) b_lambda!8593)))

(declare-fun b_lambda!8595 () Bool)

(assert (= b_lambda!8587 (or (and start!37840 b_free!8913) b_lambda!8595)))

(declare-fun b_lambda!8597 () Bool)

(assert (= b_lambda!8581 (or (and start!37840 b_free!8913) b_lambda!8597)))

(declare-fun b_lambda!8599 () Bool)

(assert (= b_lambda!8591 (or (and start!37840 b_free!8913) b_lambda!8599)))

(declare-fun b_lambda!8601 () Bool)

(assert (= b_lambda!8585 (or (and start!37840 b_free!8913) b_lambda!8601)))

(declare-fun b_lambda!8603 () Bool)

(assert (= b_lambda!8589 (or (and start!37840 b_free!8913) b_lambda!8603)))

(check-sat (not b!388672) (not b!388709) (not b!388667) (not bm!27379) (not d!72715) (not mapNonEmpty!15951) (not b_next!8913) (not bm!27389) (not bm!27366) tp_is_empty!9585 (not b!388710) (not b!388621) (not d!72717) (not b!388734) (not b!388728) (not d!72713) (not b!388691) (not bm!27351) (not b_lambda!8601) (not b!388614) (not b_lambda!8603) b_and!16199 (not bm!27368) (not b!388681) (not b!388688) (not b!388702) (not b!388611) (not b!388693) (not b!388751) (not b_lambda!8599) (not b!388689) (not bm!27394) (not b!388612) (not d!72723) (not b_lambda!8595) (not b!388692) (not bm!27372) (not bm!27386) (not bm!27367) (not b!388776) (not d!72711) (not bm!27374) (not b!388619) (not b!388754) (not b!388777) (not b!388713) (not b!388717) (not b!388718) (not b!388755) (not b!388684) (not b!388712) (not d!72727) (not d!72709) (not b!388615) (not bm!27393) (not b!388781) (not b!388784) (not b!388670) (not b!388756) (not b!388687) (not d!72725) (not b!388705) (not b!388745) (not b!388746) (not b!388618) (not bm!27392) (not b!388757) (not b!388749) (not b!388750) (not b!388769) (not bm!27373) (not b!388668) (not bm!27375) (not b_lambda!8593) (not d!72707) (not b!388671) (not b!388775) (not b!388733) (not b!388766) (not d!72721) (not b_lambda!8597) (not b!388753) (not b!388780) (not b!388666) (not b!388620) (not b!388719) (not b!388752) (not bm!27380) (not bm!27385) (not b!388716))
(check-sat b_and!16199 (not b_next!8913))
