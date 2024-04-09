; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74954 () Bool)

(assert start!74954)

(declare-fun b_free!15445 () Bool)

(declare-fun b_next!15445 () Bool)

(assert (=> start!74954 (= b_free!15445 (not b_next!15445))))

(declare-fun tp!54038 () Bool)

(declare-fun b_and!25607 () Bool)

(assert (=> start!74954 (= tp!54038 b_and!25607)))

(declare-fun b!883499 () Bool)

(declare-fun e!491726 () Bool)

(declare-fun tp_is_empty!17689 () Bool)

(assert (=> b!883499 (= e!491726 tp_is_empty!17689)))

(declare-fun b!883500 () Bool)

(declare-fun res!600344 () Bool)

(declare-fun e!491721 () Bool)

(assert (=> b!883500 (=> (not res!600344) (not e!491721))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51488 0))(
  ( (array!51489 (arr!24759 (Array (_ BitVec 32) (_ BitVec 64))) (size!25200 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51488)

(declare-datatypes ((V!28633 0))(
  ( (V!28634 (val!8892 Int)) )
))
(declare-datatypes ((ValueCell!8405 0))(
  ( (ValueCellFull!8405 (v!11357 V!28633)) (EmptyCell!8405) )
))
(declare-datatypes ((array!51490 0))(
  ( (array!51491 (arr!24760 (Array (_ BitVec 32) ValueCell!8405)) (size!25201 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51490)

(assert (=> b!883500 (= res!600344 (and (= (size!25201 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25200 _keys!868) (size!25201 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28170 () Bool)

(declare-fun mapRes!28170 () Bool)

(declare-fun tp!54039 () Bool)

(declare-fun e!491720 () Bool)

(assert (=> mapNonEmpty!28170 (= mapRes!28170 (and tp!54039 e!491720))))

(declare-fun mapRest!28170 () (Array (_ BitVec 32) ValueCell!8405))

(declare-fun mapKey!28170 () (_ BitVec 32))

(declare-fun mapValue!28170 () ValueCell!8405)

(assert (=> mapNonEmpty!28170 (= (arr!24760 _values!688) (store mapRest!28170 mapKey!28170 mapValue!28170))))

(declare-fun b!883501 () Bool)

(declare-fun res!600340 () Bool)

(assert (=> b!883501 (=> (not res!600340) (not e!491721))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883501 (= res!600340 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!28170 () Bool)

(assert (=> mapIsEmpty!28170 mapRes!28170))

(declare-fun b!883502 () Bool)

(declare-fun e!491722 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883502 (= e!491722 (bvslt from!1053 (size!25201 _values!688)))))

(assert (=> b!883502 (not (= (select (arr!24759 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!30126 0))(
  ( (Unit!30127) )
))
(declare-fun lt!399942 () Unit!30126)

(declare-fun e!491719 () Unit!30126)

(assert (=> b!883502 (= lt!399942 e!491719)))

(declare-fun c!92991 () Bool)

(assert (=> b!883502 (= c!92991 (= (select (arr!24759 _keys!868) from!1053) k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11816 0))(
  ( (tuple2!11817 (_1!5918 (_ BitVec 64)) (_2!5918 V!28633)) )
))
(declare-datatypes ((List!17680 0))(
  ( (Nil!17677) (Cons!17676 (h!18807 tuple2!11816) (t!24935 List!17680)) )
))
(declare-datatypes ((ListLongMap!10599 0))(
  ( (ListLongMap!10600 (toList!5315 List!17680)) )
))
(declare-fun lt!399936 () ListLongMap!10599)

(declare-fun lt!399939 () ListLongMap!10599)

(declare-fun +!2519 (ListLongMap!10599 tuple2!11816) ListLongMap!10599)

(declare-fun get!13060 (ValueCell!8405 V!28633) V!28633)

(declare-fun dynLambda!1273 (Int (_ BitVec 64)) V!28633)

(assert (=> b!883502 (= lt!399936 (+!2519 lt!399939 (tuple2!11817 (select (arr!24759 _keys!868) from!1053) (get!13060 (select (arr!24760 _values!688) from!1053) (dynLambda!1273 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883503 () Bool)

(declare-fun Unit!30128 () Unit!30126)

(assert (=> b!883503 (= e!491719 Unit!30128)))

(declare-fun res!600342 () Bool)

(assert (=> start!74954 (=> (not res!600342) (not e!491721))))

(assert (=> start!74954 (= res!600342 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25200 _keys!868))))))

(assert (=> start!74954 e!491721))

(assert (=> start!74954 tp_is_empty!17689))

(assert (=> start!74954 true))

(assert (=> start!74954 tp!54038))

(declare-fun array_inv!19474 (array!51488) Bool)

(assert (=> start!74954 (array_inv!19474 _keys!868)))

(declare-fun e!491723 () Bool)

(declare-fun array_inv!19475 (array!51490) Bool)

(assert (=> start!74954 (and (array_inv!19475 _values!688) e!491723)))

(declare-fun b!883504 () Bool)

(assert (=> b!883504 (= e!491723 (and e!491726 mapRes!28170))))

(declare-fun condMapEmpty!28170 () Bool)

(declare-fun mapDefault!28170 () ValueCell!8405)

