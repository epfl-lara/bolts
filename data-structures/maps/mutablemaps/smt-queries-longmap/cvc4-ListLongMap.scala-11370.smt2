; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132160 () Bool)

(assert start!132160)

(declare-fun b_free!31841 () Bool)

(declare-fun b_next!31841 () Bool)

(assert (=> start!132160 (= b_free!31841 (not b_next!31841))))

(declare-fun tp!111776 () Bool)

(declare-fun b_and!51261 () Bool)

(assert (=> start!132160 (= tp!111776 b_and!51261)))

(declare-fun b!1549514 () Bool)

(declare-fun e!862555 () Bool)

(declare-fun e!862549 () Bool)

(assert (=> b!1549514 (= e!862555 e!862549)))

(declare-fun res!1061654 () Bool)

(assert (=> b!1549514 (=> (not res!1061654) (not e!862549))))

(declare-fun lt!667924 () Bool)

(assert (=> b!1549514 (= res!1061654 (not lt!667924))))

(declare-datatypes ((Unit!51567 0))(
  ( (Unit!51568) )
))
(declare-fun lt!667916 () Unit!51567)

(declare-fun e!862553 () Unit!51567)

(assert (=> b!1549514 (= lt!667916 e!862553)))

(declare-fun c!142358 () Bool)

(assert (=> b!1549514 (= c!142358 (not lt!667924))))

(declare-fun e!862552 () Bool)

(assert (=> b!1549514 (= lt!667924 e!862552)))

(declare-fun res!1061652 () Bool)

(assert (=> b!1549514 (=> res!1061652 e!862552)))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103395 0))(
  ( (array!103396 (arr!49895 (Array (_ BitVec 32) (_ BitVec 64))) (size!50446 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103395)

(assert (=> b!1549514 (= res!1061652 (bvsge from!762 (size!50446 _keys!618)))))

(declare-datatypes ((V!59265 0))(
  ( (V!59266 (val!19136 Int)) )
))
(declare-datatypes ((tuple2!24794 0))(
  ( (tuple2!24795 (_1!12407 (_ BitVec 64)) (_2!12407 V!59265)) )
))
(declare-datatypes ((List!36291 0))(
  ( (Nil!36288) (Cons!36287 (h!37733 tuple2!24794) (t!50992 List!36291)) )
))
(declare-datatypes ((ListLongMap!22415 0))(
  ( (ListLongMap!22416 (toList!11223 List!36291)) )
))
(declare-fun lt!667925 () ListLongMap!22415)

(declare-fun e!862554 () ListLongMap!22415)

(assert (=> b!1549514 (= lt!667925 e!862554)))

(declare-fun c!142355 () Bool)

(declare-fun lt!667917 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549514 (= c!142355 (and (not lt!667917) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549514 (= lt!667917 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549515 () Bool)

(declare-fun e!862546 () ListLongMap!22415)

(declare-fun call!70535 () ListLongMap!22415)

(assert (=> b!1549515 (= e!862546 call!70535)))

(declare-fun b!1549516 () Bool)

(declare-fun res!1061651 () Bool)

(assert (=> b!1549516 (=> (not res!1061651) (not e!862555))))

(declare-datatypes ((List!36292 0))(
  ( (Nil!36289) (Cons!36288 (h!37734 (_ BitVec 64)) (t!50993 List!36292)) )
))
(declare-fun arrayNoDuplicates!0 (array!103395 (_ BitVec 32) List!36292) Bool)

(assert (=> b!1549516 (= res!1061651 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36289))))

(declare-fun res!1061649 () Bool)

(assert (=> start!132160 (=> (not res!1061649) (not e!862555))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132160 (= res!1061649 (validMask!0 mask!926))))

(assert (=> start!132160 e!862555))

(declare-fun array_inv!38723 (array!103395) Bool)

(assert (=> start!132160 (array_inv!38723 _keys!618)))

(declare-fun tp_is_empty!38117 () Bool)

(assert (=> start!132160 tp_is_empty!38117))

(assert (=> start!132160 true))

(assert (=> start!132160 tp!111776))

(declare-datatypes ((ValueCell!18148 0))(
  ( (ValueCellFull!18148 (v!21934 V!59265)) (EmptyCell!18148) )
))
(declare-datatypes ((array!103397 0))(
  ( (array!103398 (arr!49896 (Array (_ BitVec 32) ValueCell!18148)) (size!50447 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103397)

(declare-fun e!862545 () Bool)

(declare-fun array_inv!38724 (array!103397) Bool)

(assert (=> start!132160 (and (array_inv!38724 _values!470) e!862545)))

(declare-fun b!1549517 () Bool)

(declare-fun e!862550 () Bool)

(assert (=> b!1549517 (= e!862550 tp_is_empty!38117)))

(declare-fun b!1549518 () Bool)

(declare-fun e!862547 () ListLongMap!22415)

(assert (=> b!1549518 (= e!862554 e!862547)))

(declare-fun c!142356 () Bool)

(assert (=> b!1549518 (= c!142356 (and (not lt!667917) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70529 () Bool)

(declare-fun call!70534 () ListLongMap!22415)

(declare-fun call!70533 () ListLongMap!22415)

(assert (=> bm!70529 (= call!70534 call!70533)))

(declare-fun b!1549519 () Bool)

(declare-fun res!1061650 () Bool)

(assert (=> b!1549519 (=> (not res!1061650) (not e!862555))))

(assert (=> b!1549519 (= res!1061650 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50446 _keys!618))))))

(declare-fun b!1549520 () Bool)

(declare-fun mapRes!58879 () Bool)

(assert (=> b!1549520 (= e!862545 (and e!862550 mapRes!58879))))

(declare-fun condMapEmpty!58879 () Bool)

(declare-fun mapDefault!58879 () ValueCell!18148)

