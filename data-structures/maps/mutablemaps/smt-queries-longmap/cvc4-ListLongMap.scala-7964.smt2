; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98664 () Bool)

(assert start!98664)

(declare-fun b_free!24233 () Bool)

(declare-fun b_next!24233 () Bool)

(assert (=> start!98664 (= b_free!24233 (not b_next!24233))))

(declare-fun tp!85411 () Bool)

(declare-fun b_and!39329 () Bool)

(assert (=> start!98664 (= tp!85411 b_and!39329)))

(declare-datatypes ((V!43477 0))(
  ( (V!43478 (val!14438 Int)) )
))
(declare-fun zeroValue!944 () V!43477)

(declare-datatypes ((array!74332 0))(
  ( (array!74333 (arr!35813 (Array (_ BitVec 32) (_ BitVec 64))) (size!36350 (_ BitVec 32))) )
))
(declare-fun lt!511477 () array!74332)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!52334 () Bool)

(declare-fun minValue!944 () V!43477)

(declare-datatypes ((ValueCell!13672 0))(
  ( (ValueCellFull!13672 (v!17076 V!43477)) (EmptyCell!13672) )
))
(declare-datatypes ((array!74334 0))(
  ( (array!74335 (arr!35814 (Array (_ BitVec 32) ValueCell!13672)) (size!36351 (_ BitVec 32))) )
))
(declare-fun lt!511484 () array!74334)

(declare-datatypes ((tuple2!18370 0))(
  ( (tuple2!18371 (_1!9195 (_ BitVec 64)) (_2!9195 V!43477)) )
))
(declare-datatypes ((List!25168 0))(
  ( (Nil!25165) (Cons!25164 (h!26373 tuple2!18370) (t!36400 List!25168)) )
))
(declare-datatypes ((ListLongMap!16351 0))(
  ( (ListLongMap!16352 (toList!8191 List!25168)) )
))
(declare-fun call!52338 () ListLongMap!16351)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4633 (array!74332 array!74334 (_ BitVec 32) (_ BitVec 32) V!43477 V!43477 (_ BitVec 32) Int) ListLongMap!16351)

(assert (=> bm!52334 (= call!52338 (getCurrentListMapNoExtraKeys!4633 lt!511477 lt!511484 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145666 () Bool)

(declare-fun e!651734 () Bool)

(declare-fun e!651740 () Bool)

(assert (=> b!1145666 (= e!651734 e!651740)))

(declare-fun res!762954 () Bool)

(assert (=> b!1145666 (=> res!762954 e!651740)))

(declare-fun _keys!1208 () array!74332)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1145666 (= res!762954 (not (= (select (arr!35813 _keys!1208) from!1455) k!934)))))

(declare-fun e!651738 () Bool)

(assert (=> b!1145666 e!651738))

(declare-fun c!112904 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145666 (= c!112904 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _values!996 () array!74334)

(declare-datatypes ((Unit!37542 0))(
  ( (Unit!37543) )
))
(declare-fun lt!511489 () Unit!37542)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!536 (array!74332 array!74334 (_ BitVec 32) (_ BitVec 32) V!43477 V!43477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37542)

(assert (=> b!1145666 (= lt!511489 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145667 () Bool)

(declare-fun e!651743 () Bool)

(declare-fun tp_is_empty!28763 () Bool)

(assert (=> b!1145667 (= e!651743 tp_is_empty!28763)))

(declare-fun b!1145668 () Bool)

(declare-fun c!112906 () Bool)

(declare-fun lt!511488 () Bool)

(assert (=> b!1145668 (= c!112906 (and (not lt!511488) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651744 () Unit!37542)

(declare-fun e!651731 () Unit!37542)

(assert (=> b!1145668 (= e!651744 e!651731)))

(declare-fun bm!52335 () Bool)

(declare-fun call!52340 () Bool)

(declare-fun call!52339 () Bool)

(assert (=> bm!52335 (= call!52340 call!52339)))

(declare-fun b!1145669 () Bool)

(declare-fun res!762965 () Bool)

(declare-fun e!651730 () Bool)

(assert (=> b!1145669 (=> (not res!762965) (not e!651730))))

(declare-datatypes ((List!25169 0))(
  ( (Nil!25166) (Cons!25165 (h!26374 (_ BitVec 64)) (t!36401 List!25169)) )
))
(declare-fun arrayNoDuplicates!0 (array!74332 (_ BitVec 32) List!25169) Bool)

(assert (=> b!1145669 (= res!762965 (arrayNoDuplicates!0 lt!511477 #b00000000000000000000000000000000 Nil!25166))))

(declare-fun mapNonEmpty!44969 () Bool)

(declare-fun mapRes!44969 () Bool)

(declare-fun tp!85410 () Bool)

(declare-fun e!651728 () Bool)

(assert (=> mapNonEmpty!44969 (= mapRes!44969 (and tp!85410 e!651728))))

(declare-fun mapKey!44969 () (_ BitVec 32))

(declare-fun mapValue!44969 () ValueCell!13672)

(declare-fun mapRest!44969 () (Array (_ BitVec 32) ValueCell!13672))

(assert (=> mapNonEmpty!44969 (= (arr!35814 _values!996) (store mapRest!44969 mapKey!44969 mapValue!44969))))

(declare-fun mapIsEmpty!44969 () Bool)

(assert (=> mapIsEmpty!44969 mapRes!44969))

(declare-fun b!1145670 () Bool)

(declare-fun e!651735 () Unit!37542)

(declare-fun Unit!37544 () Unit!37542)

(assert (=> b!1145670 (= e!651735 Unit!37544)))

(declare-fun b!1145671 () Bool)

(assert (=> b!1145671 call!52340))

(declare-fun lt!511480 () Unit!37542)

(declare-fun call!52341 () Unit!37542)

(assert (=> b!1145671 (= lt!511480 call!52341)))

(declare-fun e!651737 () Unit!37542)

(assert (=> b!1145671 (= e!651737 lt!511480)))

(declare-fun b!1145672 () Bool)

(declare-fun e!651733 () Bool)

(assert (=> b!1145672 (= e!651733 (and e!651743 mapRes!44969))))

(declare-fun condMapEmpty!44969 () Bool)

(declare-fun mapDefault!44969 () ValueCell!13672)

