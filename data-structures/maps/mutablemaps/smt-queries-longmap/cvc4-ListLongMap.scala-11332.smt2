; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131932 () Bool)

(assert start!131932)

(declare-fun b_free!31613 () Bool)

(declare-fun b_next!31613 () Bool)

(assert (=> start!131932 (= b_free!31613 (not b_next!31613))))

(declare-fun tp!111092 () Bool)

(declare-fun b_and!51033 () Bool)

(assert (=> start!131932 (= tp!111092 b_and!51033)))

(declare-fun b!1544136 () Bool)

(declare-datatypes ((V!58961 0))(
  ( (V!58962 (val!19022 Int)) )
))
(declare-datatypes ((tuple2!24574 0))(
  ( (tuple2!24575 (_1!12297 (_ BitVec 64)) (_2!12297 V!58961)) )
))
(declare-datatypes ((List!36096 0))(
  ( (Nil!36093) (Cons!36092 (h!37538 tuple2!24574) (t!50797 List!36096)) )
))
(declare-datatypes ((ListLongMap!22195 0))(
  ( (ListLongMap!22196 (toList!11113 List!36096)) )
))
(declare-fun e!859511 () ListLongMap!22195)

(declare-fun call!68824 () ListLongMap!22195)

(assert (=> b!1544136 (= e!859511 call!68824)))

(declare-fun b!1544137 () Bool)

(declare-fun res!1059365 () Bool)

(declare-fun e!859506 () Bool)

(assert (=> b!1544137 (=> (not res!1059365) (not e!859506))))

(declare-datatypes ((array!102951 0))(
  ( (array!102952 (arr!49673 (Array (_ BitVec 32) (_ BitVec 64))) (size!50224 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102951)

(declare-datatypes ((List!36097 0))(
  ( (Nil!36094) (Cons!36093 (h!37539 (_ BitVec 64)) (t!50798 List!36097)) )
))
(declare-fun arrayNoDuplicates!0 (array!102951 (_ BitVec 32) List!36097) Bool)

(assert (=> b!1544137 (= res!1059365 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36094))))

(declare-fun b!1544138 () Bool)

(declare-fun res!1059367 () Bool)

(assert (=> b!1544138 (=> (not res!1059367) (not e!859506))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1544138 (= res!1059367 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50224 _keys!618))))))

(declare-fun b!1544139 () Bool)

(declare-fun res!1059368 () Bool)

(assert (=> b!1544139 (=> (not res!1059368) (not e!859506))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102951 (_ BitVec 32)) Bool)

(assert (=> b!1544139 (= res!1059368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544140 () Bool)

(assert (=> b!1544140 (= e!859506 false)))

(declare-fun lt!666034 () ListLongMap!22195)

(declare-fun e!859509 () ListLongMap!22195)

(assert (=> b!1544140 (= lt!666034 e!859509)))

(declare-fun c!141323 () Bool)

(declare-fun lt!666035 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544140 (= c!141323 (and (not lt!666035) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544140 (= lt!666035 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544141 () Bool)

(declare-fun e!859510 () ListLongMap!22195)

(declare-fun call!68823 () ListLongMap!22195)

(assert (=> b!1544141 (= e!859510 call!68823)))

(declare-fun b!1544142 () Bool)

(assert (=> b!1544142 (= e!859511 call!68823)))

(declare-fun bm!68819 () Bool)

(declare-fun call!68825 () ListLongMap!22195)

(assert (=> bm!68819 (= call!68823 call!68825)))

(declare-fun bm!68820 () Bool)

(declare-fun call!68822 () ListLongMap!22195)

(declare-fun call!68826 () ListLongMap!22195)

(assert (=> bm!68820 (= call!68822 call!68826)))

(declare-fun b!1544143 () Bool)

(declare-fun e!859508 () Bool)

(declare-fun e!859507 () Bool)

(declare-fun mapRes!58537 () Bool)

(assert (=> b!1544143 (= e!859508 (and e!859507 mapRes!58537))))

(declare-fun condMapEmpty!58537 () Bool)

(declare-datatypes ((ValueCell!18034 0))(
  ( (ValueCellFull!18034 (v!21820 V!58961)) (EmptyCell!18034) )
))
(declare-datatypes ((array!102953 0))(
  ( (array!102954 (arr!49674 (Array (_ BitVec 32) ValueCell!18034)) (size!50225 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102953)

(declare-fun mapDefault!58537 () ValueCell!18034)

