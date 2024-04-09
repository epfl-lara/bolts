; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98844 () Bool)

(assert start!98844)

(declare-fun b_free!24413 () Bool)

(declare-fun b_next!24413 () Bool)

(assert (=> start!98844 (= b_free!24413 (not b_next!24413))))

(declare-fun tp!85950 () Bool)

(declare-fun b_and!39689 () Bool)

(assert (=> start!98844 (= tp!85950 b_and!39689)))

(declare-fun b!1153946 () Bool)

(declare-fun res!767008 () Bool)

(declare-fun e!656332 () Bool)

(assert (=> b!1153946 (=> (not res!767008) (not e!656332))))

(declare-datatypes ((array!74682 0))(
  ( (array!74683 (arr!35988 (Array (_ BitVec 32) (_ BitVec 64))) (size!36525 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74682)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74682 (_ BitVec 32)) Bool)

(assert (=> b!1153946 (= res!767008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153947 () Bool)

(declare-fun res!767017 () Bool)

(assert (=> b!1153947 (=> (not res!767017) (not e!656332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153947 (= res!767017 (validMask!0 mask!1564))))

(declare-datatypes ((V!43717 0))(
  ( (V!43718 (val!14528 Int)) )
))
(declare-fun zeroValue!944 () V!43717)

(declare-fun bm!54494 () Bool)

(declare-fun c!114523 () Bool)

(declare-fun minValue!944 () V!43717)

(declare-datatypes ((tuple2!18536 0))(
  ( (tuple2!18537 (_1!9278 (_ BitVec 64)) (_2!9278 V!43717)) )
))
(declare-datatypes ((List!25322 0))(
  ( (Nil!25319) (Cons!25318 (h!26527 tuple2!18536) (t!36734 List!25322)) )
))
(declare-datatypes ((ListLongMap!16517 0))(
  ( (ListLongMap!16518 (toList!8274 List!25322)) )
))
(declare-fun call!54499 () ListLongMap!16517)

(declare-fun lt!517321 () ListLongMap!16517)

(declare-fun c!114525 () Bool)

(declare-fun +!3608 (ListLongMap!16517 tuple2!18536) ListLongMap!16517)

(assert (=> bm!54494 (= call!54499 (+!3608 lt!517321 (ite (or c!114523 c!114525) (tuple2!18537 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18537 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1153948 () Bool)

(declare-fun res!767013 () Bool)

(assert (=> b!1153948 (=> (not res!767013) (not e!656332))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13762 0))(
  ( (ValueCellFull!13762 (v!17166 V!43717)) (EmptyCell!13762) )
))
(declare-datatypes ((array!74684 0))(
  ( (array!74685 (arr!35989 (Array (_ BitVec 32) ValueCell!13762)) (size!36526 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74684)

(assert (=> b!1153948 (= res!767013 (and (= (size!36526 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36525 _keys!1208) (size!36526 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!54495 () Bool)

(declare-fun call!54498 () ListLongMap!16517)

(assert (=> bm!54495 (= call!54498 call!54499)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun e!656334 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!517326 () array!74682)

(declare-fun lt!517324 () array!74684)

(declare-fun lt!517322 () ListLongMap!16517)

(declare-fun b!1153949 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4714 (array!74682 array!74684 (_ BitVec 32) (_ BitVec 32) V!43717 V!43717 (_ BitVec 32) Int) ListLongMap!16517)

(assert (=> b!1153949 (= e!656334 (= lt!517322 (getCurrentListMapNoExtraKeys!4714 lt!517326 lt!517324 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153950 () Bool)

(declare-fun e!656327 () Bool)

(declare-fun tp_is_empty!28943 () Bool)

(assert (=> b!1153950 (= e!656327 tp_is_empty!28943)))

(declare-fun b!1153951 () Bool)

(declare-fun e!656329 () Bool)

(declare-fun mapRes!45239 () Bool)

(assert (=> b!1153951 (= e!656329 (and e!656327 mapRes!45239))))

(declare-fun condMapEmpty!45239 () Bool)

(declare-fun mapDefault!45239 () ValueCell!13762)

