; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98780 () Bool)

(assert start!98780)

(declare-fun b_free!24349 () Bool)

(declare-fun b_next!24349 () Bool)

(assert (=> start!98780 (= b_free!24349 (not b_next!24349))))

(declare-fun tp!85758 () Bool)

(declare-fun b_and!39561 () Bool)

(assert (=> start!98780 (= tp!85758 b_and!39561)))

(declare-datatypes ((V!43633 0))(
  ( (V!43634 (val!14496 Int)) )
))
(declare-fun zeroValue!944 () V!43633)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13730 0))(
  ( (ValueCellFull!13730 (v!17134 V!43633)) (EmptyCell!13730) )
))
(declare-datatypes ((array!74562 0))(
  ( (array!74563 (arr!35928 (Array (_ BitVec 32) ValueCell!13730)) (size!36465 (_ BitVec 32))) )
))
(declare-fun lt!515209 () array!74562)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!74564 0))(
  ( (array!74565 (arr!35929 (Array (_ BitVec 32) (_ BitVec 64))) (size!36466 (_ BitVec 32))) )
))
(declare-fun lt!515216 () array!74564)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18482 0))(
  ( (tuple2!18483 (_1!9251 (_ BitVec 64)) (_2!9251 V!43633)) )
))
(declare-datatypes ((List!25273 0))(
  ( (Nil!25270) (Cons!25269 (h!26478 tuple2!18482) (t!36621 List!25273)) )
))
(declare-datatypes ((ListLongMap!16463 0))(
  ( (ListLongMap!16464 (toList!8247 List!25273)) )
))
(declare-fun call!53733 () ListLongMap!16463)

(declare-fun bm!53726 () Bool)

(declare-fun minValue!944 () V!43633)

(declare-fun getCurrentListMapNoExtraKeys!4688 (array!74564 array!74562 (_ BitVec 32) (_ BitVec 32) V!43633 V!43633 (_ BitVec 32) Int) ListLongMap!16463)

(assert (=> bm!53726 (= call!53733 (getCurrentListMapNoExtraKeys!4688 lt!515216 lt!515209 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151002 () Bool)

(declare-fun e!654694 () Bool)

(declare-fun e!654695 () Bool)

(declare-fun mapRes!45143 () Bool)

(assert (=> b!1151002 (= e!654694 (and e!654695 mapRes!45143))))

(declare-fun condMapEmpty!45143 () Bool)

(declare-fun _values!996 () array!74562)

(declare-fun mapDefault!45143 () ValueCell!13730)

