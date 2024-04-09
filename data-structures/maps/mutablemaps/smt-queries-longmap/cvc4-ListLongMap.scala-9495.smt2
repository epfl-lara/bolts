; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112618 () Bool)

(assert start!112618)

(declare-fun b_free!30977 () Bool)

(declare-fun b_next!30977 () Bool)

(assert (=> start!112618 (= b_free!30977 (not b_next!30977))))

(declare-fun tp!108568 () Bool)

(declare-fun b_and!49895 () Bool)

(assert (=> start!112618 (= tp!108568 b_and!49895)))

(declare-fun b!1335396 () Bool)

(declare-fun res!886368 () Bool)

(declare-fun e!760582 () Bool)

(assert (=> b!1335396 (=> (not res!886368) (not e!760582))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90611 0))(
  ( (array!90612 (arr!43767 (Array (_ BitVec 32) (_ BitVec 64))) (size!44318 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90611)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1335396 (= res!886368 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44318 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335397 () Bool)

(declare-fun res!886370 () Bool)

(assert (=> b!1335397 (=> (not res!886370) (not e!760582))))

(assert (=> b!1335397 (= res!886370 (not (= (select (arr!43767 _keys!1590) from!1980) k!1153)))))

(declare-fun mapIsEmpty!57004 () Bool)

(declare-fun mapRes!57004 () Bool)

(assert (=> mapIsEmpty!57004 mapRes!57004))

(declare-fun b!1335398 () Bool)

(declare-fun e!760585 () Bool)

(declare-fun tp_is_empty!36887 () Bool)

(assert (=> b!1335398 (= e!760585 tp_is_empty!36887)))

(declare-fun b!1335399 () Bool)

(assert (=> b!1335399 (= e!760582 false)))

(declare-datatypes ((V!54285 0))(
  ( (V!54286 (val!18518 Int)) )
))
(declare-datatypes ((ValueCell!17545 0))(
  ( (ValueCellFull!17545 (v!21153 V!54285)) (EmptyCell!17545) )
))
(declare-datatypes ((array!90613 0))(
  ( (array!90614 (arr!43768 (Array (_ BitVec 32) ValueCell!17545)) (size!44319 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90613)

(declare-datatypes ((tuple2!24034 0))(
  ( (tuple2!24035 (_1!12027 (_ BitVec 64)) (_2!12027 V!54285)) )
))
(declare-datatypes ((List!31205 0))(
  ( (Nil!31202) (Cons!31201 (h!32410 tuple2!24034) (t!45476 List!31205)) )
))
(declare-datatypes ((ListLongMap!21703 0))(
  ( (ListLongMap!21704 (toList!10867 List!31205)) )
))
(declare-fun lt!592394 () ListLongMap!21703)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54285)

(declare-fun zeroValue!1262 () V!54285)

(declare-fun getCurrentListMapNoExtraKeys!6423 (array!90611 array!90613 (_ BitVec 32) (_ BitVec 32) V!54285 V!54285 (_ BitVec 32) Int) ListLongMap!21703)

(assert (=> b!1335399 (= lt!592394 (getCurrentListMapNoExtraKeys!6423 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1335400 () Bool)

(declare-fun e!760581 () Bool)

(assert (=> b!1335400 (= e!760581 tp_is_empty!36887)))

(declare-fun b!1335402 () Bool)

(declare-fun e!760583 () Bool)

(assert (=> b!1335402 (= e!760583 (and e!760581 mapRes!57004))))

(declare-fun condMapEmpty!57004 () Bool)

(declare-fun mapDefault!57004 () ValueCell!17545)

