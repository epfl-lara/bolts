; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132324 () Bool)

(assert start!132324)

(declare-fun b_free!31919 () Bool)

(declare-fun b_next!31919 () Bool)

(assert (=> start!132324 (= b_free!31919 (not b_next!31919))))

(declare-fun tp!112022 () Bool)

(declare-fun b_and!51367 () Bool)

(assert (=> start!132324 (= tp!112022 b_and!51367)))

(declare-fun b!1551943 () Bool)

(declare-datatypes ((Unit!51619 0))(
  ( (Unit!51620) )
))
(declare-fun e!863978 () Unit!51619)

(declare-fun lt!668979 () Unit!51619)

(assert (=> b!1551943 (= e!863978 lt!668979)))

(declare-datatypes ((array!103549 0))(
  ( (array!103550 (arr!49968 (Array (_ BitVec 32) (_ BitVec 64))) (size!50519 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103549)

(declare-datatypes ((V!59369 0))(
  ( (V!59370 (val!19175 Int)) )
))
(declare-fun zeroValue!436 () V!59369)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18187 0))(
  ( (ValueCellFull!18187 (v!21977 V!59369)) (EmptyCell!18187) )
))
(declare-datatypes ((array!103551 0))(
  ( (array!103552 (arr!49969 (Array (_ BitVec 32) ValueCell!18187)) (size!50520 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103551)

(declare-fun minValue!436 () V!59369)

(declare-datatypes ((tuple2!24866 0))(
  ( (tuple2!24867 (_1!12443 (_ BitVec 64)) (_2!12443 V!59369)) )
))
(declare-datatypes ((List!36346 0))(
  ( (Nil!36343) (Cons!36342 (h!37788 tuple2!24866) (t!51067 List!36346)) )
))
(declare-datatypes ((ListLongMap!22487 0))(
  ( (ListLongMap!22488 (toList!11259 List!36346)) )
))
(declare-fun lt!668981 () ListLongMap!22487)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6682 (array!103549 array!103551 (_ BitVec 32) (_ BitVec 32) V!59369 V!59369 (_ BitVec 32) Int) ListLongMap!22487)

(assert (=> b!1551943 (= lt!668981 (getCurrentListMapNoExtraKeys!6682 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668987 () Unit!51619)

(declare-fun addStillContains!1300 (ListLongMap!22487 (_ BitVec 64) V!59369 (_ BitVec 64)) Unit!51619)

(assert (=> b!1551943 (= lt!668987 (addStillContains!1300 lt!668981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49968 _keys!618) from!762)))))

(declare-fun lt!668988 () ListLongMap!22487)

(declare-fun +!4965 (ListLongMap!22487 tuple2!24866) ListLongMap!22487)

(assert (=> b!1551943 (= lt!668988 (+!4965 lt!668981 (tuple2!24867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10129 (ListLongMap!22487 (_ BitVec 64)) Bool)

(assert (=> b!1551943 (contains!10129 lt!668988 (select (arr!49968 _keys!618) from!762))))

(declare-fun addApplyDifferent!633 (ListLongMap!22487 (_ BitVec 64) V!59369 (_ BitVec 64)) Unit!51619)

(assert (=> b!1551943 (= lt!668979 (addApplyDifferent!633 lt!668981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49968 _keys!618) from!762)))))

(declare-fun lt!668983 () V!59369)

(declare-fun apply!1132 (ListLongMap!22487 (_ BitVec 64)) V!59369)

(assert (=> b!1551943 (= lt!668983 (apply!1132 (+!4965 lt!668981 (tuple2!24867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49968 _keys!618) from!762)))))

(declare-fun lt!668980 () V!59369)

(assert (=> b!1551943 (= lt!668980 (apply!1132 lt!668981 (select (arr!49968 _keys!618) from!762)))))

(assert (=> b!1551943 (= lt!668983 lt!668980)))

(declare-fun lt!668985 () Unit!51619)

(assert (=> b!1551943 (= lt!668985 (addApplyDifferent!633 lt!668981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49968 _keys!618) from!762)))))

(assert (=> b!1551943 (= (apply!1132 lt!668988 (select (arr!49968 _keys!618) from!762)) lt!668980)))

(declare-fun b!1551944 () Bool)

(declare-fun c!142838 () Bool)

(declare-fun lt!668984 () Bool)

(assert (=> b!1551944 (= c!142838 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668984))))

(declare-fun e!863980 () ListLongMap!22487)

(declare-fun e!863983 () ListLongMap!22487)

(assert (=> b!1551944 (= e!863980 e!863983)))

(declare-fun b!1551945 () Bool)

(declare-fun res!1062706 () Bool)

(declare-fun e!863977 () Bool)

(assert (=> b!1551945 (=> (not res!1062706) (not e!863977))))

(assert (=> b!1551945 (= res!1062706 (and (= (size!50520 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50519 _keys!618) (size!50520 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551946 () Bool)

(declare-fun res!1062708 () Bool)

(assert (=> b!1551946 (=> (not res!1062708) (not e!863977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103549 (_ BitVec 32)) Bool)

(assert (=> b!1551946 (= res!1062708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551947 () Bool)

(declare-fun e!863984 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551947 (= e!863984 (validKeyInArray!0 (select (arr!49968 _keys!618) from!762)))))

(declare-fun bm!71159 () Bool)

(declare-fun call!71162 () ListLongMap!22487)

(declare-fun call!71166 () ListLongMap!22487)

(assert (=> bm!71159 (= call!71162 call!71166)))

(declare-fun b!1551948 () Bool)

(declare-fun e!863976 () ListLongMap!22487)

(assert (=> b!1551948 (= e!863976 (+!4965 call!71166 (tuple2!24867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1551949 () Bool)

(declare-fun Unit!51621 () Unit!51619)

(assert (=> b!1551949 (= e!863978 Unit!51621)))

(declare-fun b!1551950 () Bool)

(declare-fun e!863979 () Bool)

(declare-fun e!863975 () Bool)

(declare-fun mapRes!59008 () Bool)

(assert (=> b!1551950 (= e!863979 (and e!863975 mapRes!59008))))

(declare-fun condMapEmpty!59008 () Bool)

(declare-fun mapDefault!59008 () ValueCell!18187)

