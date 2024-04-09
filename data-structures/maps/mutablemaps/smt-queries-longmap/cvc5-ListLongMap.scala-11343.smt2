; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131994 () Bool)

(assert start!131994)

(declare-fun b_free!31675 () Bool)

(declare-fun b_next!31675 () Bool)

(assert (=> start!131994 (= b_free!31675 (not b_next!31675))))

(declare-fun tp!111277 () Bool)

(declare-fun b_and!51095 () Bool)

(assert (=> start!131994 (= tp!111277 b_and!51095)))

(declare-fun res!1059911 () Bool)

(declare-fun e!860295 () Bool)

(assert (=> start!131994 (=> (not res!1059911) (not e!860295))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131994 (= res!1059911 (validMask!0 mask!926))))

(assert (=> start!131994 e!860295))

(declare-datatypes ((array!103075 0))(
  ( (array!103076 (arr!49735 (Array (_ BitVec 32) (_ BitVec 64))) (size!50286 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103075)

(declare-fun array_inv!38605 (array!103075) Bool)

(assert (=> start!131994 (array_inv!38605 _keys!618)))

(declare-fun tp_is_empty!37951 () Bool)

(assert (=> start!131994 tp_is_empty!37951))

(assert (=> start!131994 true))

(assert (=> start!131994 tp!111277))

(declare-datatypes ((V!59045 0))(
  ( (V!59046 (val!19053 Int)) )
))
(declare-datatypes ((ValueCell!18065 0))(
  ( (ValueCellFull!18065 (v!21851 V!59045)) (EmptyCell!18065) )
))
(declare-datatypes ((array!103077 0))(
  ( (array!103078 (arr!49736 (Array (_ BitVec 32) ValueCell!18065)) (size!50287 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103077)

(declare-fun e!860292 () Bool)

(declare-fun array_inv!38606 (array!103077) Bool)

(assert (=> start!131994 (and (array_inv!38606 _values!470) e!860292)))

(declare-fun b!1545514 () Bool)

(declare-fun e!860291 () Bool)

(assert (=> b!1545514 (= e!860291 tp_is_empty!37951)))

(declare-fun b!1545515 () Bool)

(declare-fun c!141602 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666287 () Bool)

(assert (=> b!1545515 (= c!141602 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666287))))

(declare-datatypes ((tuple2!24634 0))(
  ( (tuple2!24635 (_1!12327 (_ BitVec 64)) (_2!12327 V!59045)) )
))
(declare-datatypes ((List!36149 0))(
  ( (Nil!36146) (Cons!36145 (h!37591 tuple2!24634) (t!50850 List!36149)) )
))
(declare-datatypes ((ListLongMap!22255 0))(
  ( (ListLongMap!22256 (toList!11143 List!36149)) )
))
(declare-fun e!860293 () ListLongMap!22255)

(declare-fun e!860290 () ListLongMap!22255)

(assert (=> b!1545515 (= e!860293 e!860290)))

(declare-fun b!1545516 () Bool)

(declare-fun e!860294 () Bool)

(assert (=> b!1545516 (= e!860295 e!860294)))

(declare-fun res!1059906 () Bool)

(assert (=> b!1545516 (=> (not res!1059906) (not e!860294))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1545516 (= res!1059906 (bvslt from!762 (size!50286 _keys!618)))))

(declare-fun lt!666289 () ListLongMap!22255)

(declare-fun e!860296 () ListLongMap!22255)

(assert (=> b!1545516 (= lt!666289 e!860296)))

(declare-fun c!141600 () Bool)

(assert (=> b!1545516 (= c!141600 (and (not lt!666287) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545516 (= lt!666287 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1545517 () Bool)

(declare-fun call!69289 () ListLongMap!22255)

(assert (=> b!1545517 (= e!860293 call!69289)))

(declare-fun mapIsEmpty!58630 () Bool)

(declare-fun mapRes!58630 () Bool)

(assert (=> mapIsEmpty!58630 mapRes!58630))

(declare-fun mapNonEmpty!58630 () Bool)

(declare-fun tp!111278 () Bool)

(assert (=> mapNonEmpty!58630 (= mapRes!58630 (and tp!111278 e!860291))))

(declare-fun mapRest!58630 () (Array (_ BitVec 32) ValueCell!18065))

(declare-fun mapKey!58630 () (_ BitVec 32))

(declare-fun mapValue!58630 () ValueCell!18065)

(assert (=> mapNonEmpty!58630 (= (arr!49736 _values!470) (store mapRest!58630 mapKey!58630 mapValue!58630))))

(declare-fun b!1545518 () Bool)

(assert (=> b!1545518 (= e!860294 (not true))))

(declare-fun zeroValue!436 () V!59045)

(declare-fun lt!666288 () ListLongMap!22255)

(declare-fun contains!10045 (ListLongMap!22255 (_ BitVec 64)) Bool)

(declare-fun +!4873 (ListLongMap!22255 tuple2!24634) ListLongMap!22255)

(assert (=> b!1545518 (contains!10045 (+!4873 lt!666288 (tuple2!24635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49735 _keys!618) from!762))))

(declare-datatypes ((Unit!51452 0))(
  ( (Unit!51453) )
))
(declare-fun lt!666290 () Unit!51452)

(declare-fun addStillContains!1227 (ListLongMap!22255 (_ BitVec 64) V!59045 (_ BitVec 64)) Unit!51452)

(assert (=> b!1545518 (= lt!666290 (addStillContains!1227 lt!666288 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49735 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59045)

(declare-fun getCurrentListMapNoExtraKeys!6592 (array!103075 array!103077 (_ BitVec 32) (_ BitVec 32) V!59045 V!59045 (_ BitVec 32) Int) ListLongMap!22255)

(assert (=> b!1545518 (= lt!666288 (getCurrentListMapNoExtraKeys!6592 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545519 () Bool)

(assert (=> b!1545519 (= e!860296 e!860293)))

(declare-fun c!141601 () Bool)

(assert (=> b!1545519 (= c!141601 (and (not lt!666287) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69284 () Bool)

(declare-fun call!69290 () ListLongMap!22255)

(declare-fun call!69288 () ListLongMap!22255)

(assert (=> bm!69284 (= call!69290 call!69288)))

(declare-fun b!1545520 () Bool)

(declare-fun call!69291 () ListLongMap!22255)

(assert (=> b!1545520 (= e!860290 call!69291)))

(declare-fun b!1545521 () Bool)

(declare-fun e!860289 () Bool)

(assert (=> b!1545521 (= e!860289 tp_is_empty!37951)))

(declare-fun b!1545522 () Bool)

(assert (=> b!1545522 (= e!860292 (and e!860289 mapRes!58630))))

(declare-fun condMapEmpty!58630 () Bool)

(declare-fun mapDefault!58630 () ValueCell!18065)

