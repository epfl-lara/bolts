; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131938 () Bool)

(assert start!131938)

(declare-fun b_free!31619 () Bool)

(declare-fun b_next!31619 () Bool)

(assert (=> start!131938 (= b_free!31619 (not b_next!31619))))

(declare-fun tp!111109 () Bool)

(declare-fun b_and!51039 () Bool)

(assert (=> start!131938 (= tp!111109 b_and!51039)))

(declare-fun b!1544262 () Bool)

(declare-datatypes ((V!58969 0))(
  ( (V!58970 (val!19025 Int)) )
))
(declare-datatypes ((tuple2!24580 0))(
  ( (tuple2!24581 (_1!12300 (_ BitVec 64)) (_2!12300 V!58969)) )
))
(declare-datatypes ((List!36101 0))(
  ( (Nil!36098) (Cons!36097 (h!37543 tuple2!24580) (t!50802 List!36101)) )
))
(declare-datatypes ((ListLongMap!22201 0))(
  ( (ListLongMap!22202 (toList!11116 List!36101)) )
))
(declare-fun e!859580 () ListLongMap!22201)

(declare-fun e!859582 () ListLongMap!22201)

(assert (=> b!1544262 (= e!859580 e!859582)))

(declare-fun c!141350 () Bool)

(declare-fun lt!666052 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544262 (= c!141350 (and (not lt!666052) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!68864 () Bool)

(declare-fun call!68868 () ListLongMap!22201)

(declare-fun call!68867 () ListLongMap!22201)

(assert (=> bm!68864 (= call!68868 call!68867)))

(declare-fun b!1544263 () Bool)

(declare-fun res!1059411 () Bool)

(declare-fun e!859584 () Bool)

(assert (=> b!1544263 (=> (not res!1059411) (not e!859584))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102963 0))(
  ( (array!102964 (arr!49679 (Array (_ BitVec 32) (_ BitVec 64))) (size!50230 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102963)

(assert (=> b!1544263 (= res!1059411 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50230 _keys!618))))))

(declare-fun call!68869 () ListLongMap!22201)

(declare-fun zeroValue!436 () V!58969)

(declare-fun c!141349 () Bool)

(declare-fun minValue!436 () V!58969)

(declare-fun call!68870 () ListLongMap!22201)

(declare-fun bm!68866 () Bool)

(declare-fun +!4851 (ListLongMap!22201 tuple2!24580) ListLongMap!22201)

(assert (=> bm!68866 (= call!68870 (+!4851 (ite c!141349 call!68869 (ite c!141350 call!68867 call!68868)) (ite (or c!141349 c!141350) (tuple2!24581 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24581 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544264 () Bool)

(declare-fun e!859585 () Bool)

(declare-fun tp_is_empty!37895 () Bool)

(assert (=> b!1544264 (= e!859585 tp_is_empty!37895)))

(declare-fun bm!68867 () Bool)

(declare-fun call!68871 () ListLongMap!22201)

(assert (=> bm!68867 (= call!68871 call!68870)))

(declare-fun b!1544265 () Bool)

(declare-fun e!859579 () Bool)

(assert (=> b!1544265 (= e!859579 tp_is_empty!37895)))

(declare-fun b!1544266 () Bool)

(declare-fun c!141348 () Bool)

(assert (=> b!1544266 (= c!141348 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666052))))

(declare-fun e!859578 () ListLongMap!22201)

(assert (=> b!1544266 (= e!859582 e!859578)))

(declare-fun b!1544267 () Bool)

(assert (=> b!1544267 (= e!859578 call!68868)))

(declare-fun mapNonEmpty!58546 () Bool)

(declare-fun mapRes!58546 () Bool)

(declare-fun tp!111110 () Bool)

(assert (=> mapNonEmpty!58546 (= mapRes!58546 (and tp!111110 e!859579))))

(declare-datatypes ((ValueCell!18037 0))(
  ( (ValueCellFull!18037 (v!21823 V!58969)) (EmptyCell!18037) )
))
(declare-fun mapValue!58546 () ValueCell!18037)

(declare-datatypes ((array!102965 0))(
  ( (array!102966 (arr!49680 (Array (_ BitVec 32) ValueCell!18037)) (size!50231 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102965)

(declare-fun mapRest!58546 () (Array (_ BitVec 32) ValueCell!18037))

(declare-fun mapKey!58546 () (_ BitVec 32))

(assert (=> mapNonEmpty!58546 (= (arr!49680 _values!470) (store mapRest!58546 mapKey!58546 mapValue!58546))))

(declare-fun b!1544268 () Bool)

(assert (=> b!1544268 (= e!859582 call!68871)))

(declare-fun b!1544269 () Bool)

(assert (=> b!1544269 (= e!859584 false)))

(declare-fun lt!666053 () ListLongMap!22201)

(assert (=> b!1544269 (= lt!666053 e!859580)))

(assert (=> b!1544269 (= c!141349 (and (not lt!666052) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544269 (= lt!666052 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544270 () Bool)

(declare-fun res!1059413 () Bool)

(assert (=> b!1544270 (=> (not res!1059413) (not e!859584))))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1544270 (= res!1059413 (and (= (size!50231 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50230 _keys!618) (size!50231 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58546 () Bool)

(assert (=> mapIsEmpty!58546 mapRes!58546))

(declare-fun b!1544271 () Bool)

(assert (=> b!1544271 (= e!859578 call!68871)))

(declare-fun bm!68868 () Bool)

(assert (=> bm!68868 (= call!68867 call!68869)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68865 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6566 (array!102963 array!102965 (_ BitVec 32) (_ BitVec 32) V!58969 V!58969 (_ BitVec 32) Int) ListLongMap!22201)

(assert (=> bm!68865 (= call!68869 (getCurrentListMapNoExtraKeys!6566 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1059410 () Bool)

(assert (=> start!131938 (=> (not res!1059410) (not e!859584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131938 (= res!1059410 (validMask!0 mask!926))))

(assert (=> start!131938 e!859584))

(declare-fun array_inv!38569 (array!102963) Bool)

(assert (=> start!131938 (array_inv!38569 _keys!618)))

(assert (=> start!131938 tp_is_empty!37895))

(assert (=> start!131938 true))

(assert (=> start!131938 tp!111109))

(declare-fun e!859583 () Bool)

(declare-fun array_inv!38570 (array!102965) Bool)

(assert (=> start!131938 (and (array_inv!38570 _values!470) e!859583)))

(declare-fun b!1544272 () Bool)

(declare-fun res!1059412 () Bool)

(assert (=> b!1544272 (=> (not res!1059412) (not e!859584))))

(declare-datatypes ((List!36102 0))(
  ( (Nil!36099) (Cons!36098 (h!37544 (_ BitVec 64)) (t!50803 List!36102)) )
))
(declare-fun arrayNoDuplicates!0 (array!102963 (_ BitVec 32) List!36102) Bool)

(assert (=> b!1544272 (= res!1059412 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36099))))

(declare-fun b!1544273 () Bool)

(assert (=> b!1544273 (= e!859580 (+!4851 call!68870 (tuple2!24581 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544274 () Bool)

(declare-fun res!1059409 () Bool)

(assert (=> b!1544274 (=> (not res!1059409) (not e!859584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102963 (_ BitVec 32)) Bool)

(assert (=> b!1544274 (= res!1059409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544275 () Bool)

(assert (=> b!1544275 (= e!859583 (and e!859585 mapRes!58546))))

(declare-fun condMapEmpty!58546 () Bool)

(declare-fun mapDefault!58546 () ValueCell!18037)

