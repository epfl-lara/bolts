; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131958 () Bool)

(assert start!131958)

(declare-fun b_free!31639 () Bool)

(declare-fun b_next!31639 () Bool)

(assert (=> start!131958 (= b_free!31639 (not b_next!31639))))

(declare-fun tp!111169 () Bool)

(declare-fun b_and!51059 () Bool)

(assert (=> start!131958 (= tp!111169 b_and!51059)))

(declare-fun bm!69014 () Bool)

(declare-datatypes ((V!58997 0))(
  ( (V!58998 (val!19035 Int)) )
))
(declare-datatypes ((tuple2!24598 0))(
  ( (tuple2!24599 (_1!12309 (_ BitVec 64)) (_2!12309 V!58997)) )
))
(declare-datatypes ((List!36117 0))(
  ( (Nil!36114) (Cons!36113 (h!37559 tuple2!24598) (t!50818 List!36117)) )
))
(declare-datatypes ((ListLongMap!22219 0))(
  ( (ListLongMap!22220 (toList!11125 List!36117)) )
))
(declare-fun call!69021 () ListLongMap!22219)

(declare-fun call!69017 () ListLongMap!22219)

(assert (=> bm!69014 (= call!69021 call!69017)))

(declare-fun res!1059560 () Bool)

(declare-fun e!859825 () Bool)

(assert (=> start!131958 (=> (not res!1059560) (not e!859825))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131958 (= res!1059560 (validMask!0 mask!926))))

(assert (=> start!131958 e!859825))

(declare-datatypes ((array!103003 0))(
  ( (array!103004 (arr!49699 (Array (_ BitVec 32) (_ BitVec 64))) (size!50250 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103003)

(declare-fun array_inv!38581 (array!103003) Bool)

(assert (=> start!131958 (array_inv!38581 _keys!618)))

(declare-fun tp_is_empty!37915 () Bool)

(assert (=> start!131958 tp_is_empty!37915))

(assert (=> start!131958 true))

(assert (=> start!131958 tp!111169))

(declare-datatypes ((ValueCell!18047 0))(
  ( (ValueCellFull!18047 (v!21833 V!58997)) (EmptyCell!18047) )
))
(declare-datatypes ((array!103005 0))(
  ( (array!103006 (arr!49700 (Array (_ BitVec 32) ValueCell!18047)) (size!50251 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103005)

(declare-fun e!859824 () Bool)

(declare-fun array_inv!38582 (array!103005) Bool)

(assert (=> start!131958 (and (array_inv!38582 _values!470) e!859824)))

(declare-fun bm!69015 () Bool)

(declare-fun call!69019 () ListLongMap!22219)

(declare-fun call!69018 () ListLongMap!22219)

(assert (=> bm!69015 (= call!69019 call!69018)))

(declare-fun b!1544682 () Bool)

(assert (=> b!1544682 (= e!859825 false)))

(declare-fun lt!666112 () ListLongMap!22219)

(declare-fun e!859820 () ListLongMap!22219)

(assert (=> b!1544682 (= lt!666112 e!859820)))

(declare-fun c!141440 () Bool)

(declare-fun lt!666113 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544682 (= c!141440 (and (not lt!666113) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544682 (= lt!666113 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544683 () Bool)

(declare-fun minValue!436 () V!58997)

(declare-fun +!4857 (ListLongMap!22219 tuple2!24598) ListLongMap!22219)

(assert (=> b!1544683 (= e!859820 (+!4857 call!69017 (tuple2!24599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69016 () Bool)

(declare-fun zeroValue!436 () V!58997)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun call!69020 () ListLongMap!22219)

(declare-fun getCurrentListMapNoExtraKeys!6574 (array!103003 array!103005 (_ BitVec 32) (_ BitVec 32) V!58997 V!58997 (_ BitVec 32) Int) ListLongMap!22219)

(assert (=> bm!69016 (= call!69020 (getCurrentListMapNoExtraKeys!6574 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544684 () Bool)

(declare-fun e!859821 () ListLongMap!22219)

(assert (=> b!1544684 (= e!859820 e!859821)))

(declare-fun c!141439 () Bool)

(assert (=> b!1544684 (= c!141439 (and (not lt!666113) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1544685 () Bool)

(declare-fun res!1059559 () Bool)

(assert (=> b!1544685 (=> (not res!1059559) (not e!859825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103003 (_ BitVec 32)) Bool)

(assert (=> b!1544685 (= res!1059559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544686 () Bool)

(declare-fun e!859822 () Bool)

(assert (=> b!1544686 (= e!859822 tp_is_empty!37915)))

(declare-fun b!1544687 () Bool)

(assert (=> b!1544687 (= e!859821 call!69021)))

(declare-fun b!1544688 () Bool)

(declare-fun e!859818 () ListLongMap!22219)

(assert (=> b!1544688 (= e!859818 call!69021)))

(declare-fun mapNonEmpty!58576 () Bool)

(declare-fun mapRes!58576 () Bool)

(declare-fun tp!111170 () Bool)

(assert (=> mapNonEmpty!58576 (= mapRes!58576 (and tp!111170 e!859822))))

(declare-fun mapValue!58576 () ValueCell!18047)

(declare-fun mapKey!58576 () (_ BitVec 32))

(declare-fun mapRest!58576 () (Array (_ BitVec 32) ValueCell!18047))

(assert (=> mapNonEmpty!58576 (= (arr!49700 _values!470) (store mapRest!58576 mapKey!58576 mapValue!58576))))

(declare-fun bm!69017 () Bool)

(assert (=> bm!69017 (= call!69017 (+!4857 (ite c!141440 call!69020 (ite c!141439 call!69018 call!69019)) (ite (or c!141440 c!141439) (tuple2!24599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69018 () Bool)

(assert (=> bm!69018 (= call!69018 call!69020)))

(declare-fun b!1544689 () Bool)

(declare-fun c!141438 () Bool)

(assert (=> b!1544689 (= c!141438 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666113))))

(assert (=> b!1544689 (= e!859821 e!859818)))

(declare-fun b!1544690 () Bool)

(declare-fun res!1059561 () Bool)

(assert (=> b!1544690 (=> (not res!1059561) (not e!859825))))

(assert (=> b!1544690 (= res!1059561 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50250 _keys!618))))))

(declare-fun mapIsEmpty!58576 () Bool)

(assert (=> mapIsEmpty!58576 mapRes!58576))

(declare-fun b!1544691 () Bool)

(declare-fun res!1059562 () Bool)

(assert (=> b!1544691 (=> (not res!1059562) (not e!859825))))

(declare-datatypes ((List!36118 0))(
  ( (Nil!36115) (Cons!36114 (h!37560 (_ BitVec 64)) (t!50819 List!36118)) )
))
(declare-fun arrayNoDuplicates!0 (array!103003 (_ BitVec 32) List!36118) Bool)

(assert (=> b!1544691 (= res!1059562 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36115))))

(declare-fun b!1544692 () Bool)

(declare-fun res!1059563 () Bool)

(assert (=> b!1544692 (=> (not res!1059563) (not e!859825))))

(assert (=> b!1544692 (= res!1059563 (and (= (size!50251 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50250 _keys!618) (size!50251 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544693 () Bool)

(declare-fun e!859823 () Bool)

(assert (=> b!1544693 (= e!859824 (and e!859823 mapRes!58576))))

(declare-fun condMapEmpty!58576 () Bool)

(declare-fun mapDefault!58576 () ValueCell!18047)

