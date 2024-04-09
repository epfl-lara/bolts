; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131922 () Bool)

(assert start!131922)

(declare-fun b_free!31603 () Bool)

(declare-fun b_next!31603 () Bool)

(assert (=> start!131922 (= b_free!31603 (not b_next!31603))))

(declare-fun tp!111061 () Bool)

(declare-fun b_and!51023 () Bool)

(assert (=> start!131922 (= tp!111061 b_and!51023)))

(declare-fun b!1543926 () Bool)

(declare-fun e!859389 () Bool)

(assert (=> b!1543926 (= e!859389 false)))

(declare-datatypes ((V!58949 0))(
  ( (V!58950 (val!19017 Int)) )
))
(declare-datatypes ((tuple2!24564 0))(
  ( (tuple2!24565 (_1!12292 (_ BitVec 64)) (_2!12292 V!58949)) )
))
(declare-datatypes ((List!36088 0))(
  ( (Nil!36085) (Cons!36084 (h!37530 tuple2!24564) (t!50789 List!36088)) )
))
(declare-datatypes ((ListLongMap!22185 0))(
  ( (ListLongMap!22186 (toList!11108 List!36088)) )
))
(declare-fun lt!666004 () ListLongMap!22185)

(declare-fun e!859390 () ListLongMap!22185)

(assert (=> b!1543926 (= lt!666004 e!859390)))

(declare-fun c!141276 () Bool)

(declare-fun lt!666005 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543926 (= c!141276 (and (not lt!666005) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1543926 (= lt!666005 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1543927 () Bool)

(declare-fun c!141278 () Bool)

(assert (=> b!1543927 (= c!141278 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666005))))

(declare-fun e!859386 () ListLongMap!22185)

(declare-fun e!859391 () ListLongMap!22185)

(assert (=> b!1543927 (= e!859386 e!859391)))

(declare-fun bm!68744 () Bool)

(declare-fun call!68747 () ListLongMap!22185)

(declare-fun call!68750 () ListLongMap!22185)

(assert (=> bm!68744 (= call!68747 call!68750)))

(declare-datatypes ((array!102933 0))(
  ( (array!102934 (arr!49664 (Array (_ BitVec 32) (_ BitVec 64))) (size!50215 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102933)

(declare-fun zeroValue!436 () V!58949)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18029 0))(
  ( (ValueCellFull!18029 (v!21815 V!58949)) (EmptyCell!18029) )
))
(declare-datatypes ((array!102935 0))(
  ( (array!102936 (arr!49665 (Array (_ BitVec 32) ValueCell!18029)) (size!50216 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102935)

(declare-fun minValue!436 () V!58949)

(declare-fun call!68751 () ListLongMap!22185)

(declare-fun bm!68745 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6560 (array!102933 array!102935 (_ BitVec 32) (_ BitVec 32) V!58949 V!58949 (_ BitVec 32) Int) ListLongMap!22185)

(assert (=> bm!68745 (= call!68751 (getCurrentListMapNoExtraKeys!6560 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58522 () Bool)

(declare-fun mapRes!58522 () Bool)

(declare-fun tp!111062 () Bool)

(declare-fun e!859393 () Bool)

(assert (=> mapNonEmpty!58522 (= mapRes!58522 (and tp!111062 e!859393))))

(declare-fun mapKey!58522 () (_ BitVec 32))

(declare-fun mapValue!58522 () ValueCell!18029)

(declare-fun mapRest!58522 () (Array (_ BitVec 32) ValueCell!18029))

(assert (=> mapNonEmpty!58522 (= (arr!49665 _values!470) (store mapRest!58522 mapKey!58522 mapValue!58522))))

(declare-fun b!1543928 () Bool)

(declare-fun call!68749 () ListLongMap!22185)

(assert (=> b!1543928 (= e!859386 call!68749)))

(declare-fun b!1543929 () Bool)

(declare-fun call!68748 () ListLongMap!22185)

(declare-fun +!4846 (ListLongMap!22185 tuple2!24564) ListLongMap!22185)

(assert (=> b!1543929 (= e!859390 (+!4846 call!68748 (tuple2!24565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1543930 () Bool)

(declare-fun res!1059292 () Bool)

(assert (=> b!1543930 (=> (not res!1059292) (not e!859389))))

(assert (=> b!1543930 (= res!1059292 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50215 _keys!618))))))

(declare-fun mapIsEmpty!58522 () Bool)

(assert (=> mapIsEmpty!58522 mapRes!58522))

(declare-fun res!1059289 () Bool)

(assert (=> start!131922 (=> (not res!1059289) (not e!859389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131922 (= res!1059289 (validMask!0 mask!926))))

(assert (=> start!131922 e!859389))

(declare-fun array_inv!38557 (array!102933) Bool)

(assert (=> start!131922 (array_inv!38557 _keys!618)))

(declare-fun tp_is_empty!37879 () Bool)

(assert (=> start!131922 tp_is_empty!37879))

(assert (=> start!131922 true))

(assert (=> start!131922 tp!111061))

(declare-fun e!859392 () Bool)

(declare-fun array_inv!38558 (array!102935) Bool)

(assert (=> start!131922 (and (array_inv!38558 _values!470) e!859392)))

(declare-fun b!1543931 () Bool)

(declare-fun e!859388 () Bool)

(assert (=> b!1543931 (= e!859392 (and e!859388 mapRes!58522))))

(declare-fun condMapEmpty!58522 () Bool)

(declare-fun mapDefault!58522 () ValueCell!18029)

