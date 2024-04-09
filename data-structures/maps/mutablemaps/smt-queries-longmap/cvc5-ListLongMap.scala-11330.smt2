; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131916 () Bool)

(assert start!131916)

(declare-fun b_free!31597 () Bool)

(declare-fun b_next!31597 () Bool)

(assert (=> start!131916 (= b_free!31597 (not b_next!31597))))

(declare-fun tp!111043 () Bool)

(declare-fun b_and!51017 () Bool)

(assert (=> start!131916 (= tp!111043 b_and!51017)))

(declare-fun b!1543800 () Bool)

(declare-datatypes ((V!58941 0))(
  ( (V!58942 (val!19014 Int)) )
))
(declare-datatypes ((tuple2!24558 0))(
  ( (tuple2!24559 (_1!12289 (_ BitVec 64)) (_2!12289 V!58941)) )
))
(declare-datatypes ((List!36082 0))(
  ( (Nil!36079) (Cons!36078 (h!37524 tuple2!24558) (t!50783 List!36082)) )
))
(declare-datatypes ((ListLongMap!22179 0))(
  ( (ListLongMap!22180 (toList!11105 List!36082)) )
))
(declare-fun e!859317 () ListLongMap!22179)

(declare-fun call!68704 () ListLongMap!22179)

(assert (=> b!1543800 (= e!859317 call!68704)))

(declare-fun bm!68699 () Bool)

(declare-fun call!68703 () ListLongMap!22179)

(declare-fun c!141250 () Bool)

(declare-fun call!68706 () ListLongMap!22179)

(declare-fun c!141249 () Bool)

(declare-fun zeroValue!436 () V!58941)

(declare-fun call!68705 () ListLongMap!22179)

(declare-fun minValue!436 () V!58941)

(declare-fun +!4843 (ListLongMap!22179 tuple2!24558) ListLongMap!22179)

(assert (=> bm!68699 (= call!68706 (+!4843 (ite c!141250 call!68705 (ite c!141249 call!68703 call!68704)) (ite (or c!141250 c!141249) (tuple2!24559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!68700 () Bool)

(declare-fun call!68702 () ListLongMap!22179)

(assert (=> bm!68700 (= call!68702 call!68706)))

(declare-fun b!1543801 () Bool)

(declare-fun e!859314 () Bool)

(assert (=> b!1543801 (= e!859314 false)))

(declare-fun lt!665987 () ListLongMap!22179)

(declare-fun e!859318 () ListLongMap!22179)

(assert (=> b!1543801 (= lt!665987 e!859318)))

(declare-fun lt!665986 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543801 (= c!141250 (and (not lt!665986) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1543801 (= lt!665986 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1543802 () Bool)

(assert (=> b!1543802 (= e!859318 (+!4843 call!68706 (tuple2!24559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1543803 () Bool)

(declare-fun res!1059247 () Bool)

(assert (=> b!1543803 (=> (not res!1059247) (not e!859314))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102921 0))(
  ( (array!102922 (arr!49658 (Array (_ BitVec 32) (_ BitVec 64))) (size!50209 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102921)

(assert (=> b!1543803 (= res!1059247 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50209 _keys!618))))))

(declare-fun b!1543804 () Bool)

(declare-fun res!1059246 () Bool)

(assert (=> b!1543804 (=> (not res!1059246) (not e!859314))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18026 0))(
  ( (ValueCellFull!18026 (v!21812 V!58941)) (EmptyCell!18026) )
))
(declare-datatypes ((array!102923 0))(
  ( (array!102924 (arr!49659 (Array (_ BitVec 32) ValueCell!18026)) (size!50210 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102923)

(assert (=> b!1543804 (= res!1059246 (and (= (size!50210 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50209 _keys!618) (size!50210 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543805 () Bool)

(declare-fun res!1059248 () Bool)

(assert (=> b!1543805 (=> (not res!1059248) (not e!859314))))

(declare-datatypes ((List!36083 0))(
  ( (Nil!36080) (Cons!36079 (h!37525 (_ BitVec 64)) (t!50784 List!36083)) )
))
(declare-fun arrayNoDuplicates!0 (array!102921 (_ BitVec 32) List!36083) Bool)

(assert (=> b!1543805 (= res!1059248 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36080))))

(declare-fun b!1543806 () Bool)

(declare-fun e!859316 () Bool)

(declare-fun tp_is_empty!37873 () Bool)

(assert (=> b!1543806 (= e!859316 tp_is_empty!37873)))

(declare-fun bm!68701 () Bool)

(assert (=> bm!68701 (= call!68703 call!68705)))

(declare-fun mapIsEmpty!58513 () Bool)

(declare-fun mapRes!58513 () Bool)

(assert (=> mapIsEmpty!58513 mapRes!58513))

(declare-fun b!1543807 () Bool)

(declare-fun e!859321 () Bool)

(assert (=> b!1543807 (= e!859321 (and e!859316 mapRes!58513))))

(declare-fun condMapEmpty!58513 () Bool)

(declare-fun mapDefault!58513 () ValueCell!18026)

