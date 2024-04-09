; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132096 () Bool)

(assert start!132096)

(declare-fun b_free!31777 () Bool)

(declare-fun b_next!31777 () Bool)

(assert (=> start!132096 (= b_free!31777 (not b_next!31777))))

(declare-fun tp!111584 () Bool)

(declare-fun b_and!51197 () Bool)

(assert (=> start!132096 (= tp!111584 b_and!51197)))

(declare-fun res!1060981 () Bool)

(declare-fun e!861666 () Bool)

(assert (=> start!132096 (=> (not res!1060981) (not e!861666))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132096 (= res!1060981 (validMask!0 mask!926))))

(assert (=> start!132096 e!861666))

(declare-datatypes ((array!103271 0))(
  ( (array!103272 (arr!49833 (Array (_ BitVec 32) (_ BitVec 64))) (size!50384 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103271)

(declare-fun array_inv!38677 (array!103271) Bool)

(assert (=> start!132096 (array_inv!38677 _keys!618)))

(declare-fun tp_is_empty!38053 () Bool)

(assert (=> start!132096 tp_is_empty!38053))

(assert (=> start!132096 true))

(assert (=> start!132096 tp!111584))

(declare-datatypes ((V!59181 0))(
  ( (V!59182 (val!19104 Int)) )
))
(declare-datatypes ((ValueCell!18116 0))(
  ( (ValueCellFull!18116 (v!21902 V!59181)) (EmptyCell!18116) )
))
(declare-datatypes ((array!103273 0))(
  ( (array!103274 (arr!49834 (Array (_ BitVec 32) ValueCell!18116)) (size!50385 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103273)

(declare-fun e!861668 () Bool)

(declare-fun array_inv!38678 (array!103273) Bool)

(assert (=> start!132096 (and (array_inv!38678 _values!470) e!861668)))

(declare-fun bm!70049 () Bool)

(declare-datatypes ((tuple2!24732 0))(
  ( (tuple2!24733 (_1!12376 (_ BitVec 64)) (_2!12376 V!59181)) )
))
(declare-datatypes ((List!36236 0))(
  ( (Nil!36233) (Cons!36232 (h!37678 tuple2!24732) (t!50937 List!36236)) )
))
(declare-datatypes ((ListLongMap!22353 0))(
  ( (ListLongMap!22354 (toList!11192 List!36236)) )
))
(declare-fun call!70054 () ListLongMap!22353)

(declare-fun call!70052 () ListLongMap!22353)

(assert (=> bm!70049 (= call!70054 call!70052)))

(declare-fun zeroValue!436 () V!59181)

(declare-fun c!142060 () Bool)

(declare-fun call!70055 () ListLongMap!22353)

(declare-fun bm!70050 () Bool)

(declare-fun call!70056 () ListLongMap!22353)

(declare-fun c!142061 () Bool)

(declare-fun minValue!436 () V!59181)

(declare-fun call!70053 () ListLongMap!22353)

(declare-fun +!4913 (ListLongMap!22353 tuple2!24732) ListLongMap!22353)

(assert (=> bm!70050 (= call!70052 (+!4913 (ite c!142060 call!70053 (ite c!142061 call!70055 call!70056)) (ite (or c!142060 c!142061) (tuple2!24733 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24733 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547962 () Bool)

(declare-fun res!1060976 () Bool)

(assert (=> b!1547962 (=> (not res!1060976) (not e!861666))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1547962 (= res!1060976 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50384 _keys!618))))))

(declare-fun b!1547963 () Bool)

(declare-fun res!1060978 () Bool)

(assert (=> b!1547963 (=> (not res!1060978) (not e!861666))))

(declare-datatypes ((List!36237 0))(
  ( (Nil!36234) (Cons!36233 (h!37679 (_ BitVec 64)) (t!50938 List!36237)) )
))
(declare-fun arrayNoDuplicates!0 (array!103271 (_ BitVec 32) List!36237) Bool)

(assert (=> b!1547963 (= res!1060978 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36234))))

(declare-fun b!1547964 () Bool)

(declare-fun res!1060980 () Bool)

(assert (=> b!1547964 (=> (not res!1060980) (not e!861666))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1547964 (= res!1060980 (and (= (size!50385 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50384 _keys!618) (size!50385 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70051 () Bool)

(assert (=> bm!70051 (= call!70056 call!70055)))

(declare-fun b!1547965 () Bool)

(declare-fun e!861670 () Bool)

(assert (=> b!1547965 (= e!861670 tp_is_empty!38053)))

(declare-fun b!1547966 () Bool)

(declare-fun res!1060977 () Bool)

(assert (=> b!1547966 (=> (not res!1060977) (not e!861666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103271 (_ BitVec 32)) Bool)

(assert (=> b!1547966 (= res!1060977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70052 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6633 (array!103271 array!103273 (_ BitVec 32) (_ BitVec 32) V!59181 V!59181 (_ BitVec 32) Int) ListLongMap!22353)

(assert (=> bm!70052 (= call!70053 (getCurrentListMapNoExtraKeys!6633 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547967 () Bool)

(declare-fun e!861667 () Bool)

(assert (=> b!1547967 (= e!861667 (not true))))

(declare-fun lt!667022 () ListLongMap!22353)

(declare-fun lt!667019 () V!59181)

(declare-fun apply!1096 (ListLongMap!22353 (_ BitVec 64)) V!59181)

(assert (=> b!1547967 (= (apply!1096 lt!667022 (select (arr!49833 _keys!618) from!762)) lt!667019)))

(declare-datatypes ((Unit!51522 0))(
  ( (Unit!51523) )
))
(declare-fun lt!667025 () Unit!51522)

(declare-fun lt!667021 () ListLongMap!22353)

(declare-fun addApplyDifferent!599 (ListLongMap!22353 (_ BitVec 64) V!59181 (_ BitVec 64)) Unit!51522)

(assert (=> b!1547967 (= lt!667025 (addApplyDifferent!599 lt!667021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49833 _keys!618) from!762)))))

(declare-fun lt!667024 () V!59181)

(assert (=> b!1547967 (= lt!667024 lt!667019)))

(assert (=> b!1547967 (= lt!667019 (apply!1096 lt!667021 (select (arr!49833 _keys!618) from!762)))))

(assert (=> b!1547967 (= lt!667024 (apply!1096 (+!4913 lt!667021 (tuple2!24733 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49833 _keys!618) from!762)))))

(declare-fun lt!667023 () Unit!51522)

(assert (=> b!1547967 (= lt!667023 (addApplyDifferent!599 lt!667021 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49833 _keys!618) from!762)))))

(declare-fun contains!10080 (ListLongMap!22353 (_ BitVec 64)) Bool)

(assert (=> b!1547967 (contains!10080 lt!667022 (select (arr!49833 _keys!618) from!762))))

(assert (=> b!1547967 (= lt!667022 (+!4913 lt!667021 (tuple2!24733 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667017 () Unit!51522)

(declare-fun addStillContains!1262 (ListLongMap!22353 (_ BitVec 64) V!59181 (_ BitVec 64)) Unit!51522)

(assert (=> b!1547967 (= lt!667017 (addStillContains!1262 lt!667021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49833 _keys!618) from!762)))))

(assert (=> b!1547967 (= lt!667021 (getCurrentListMapNoExtraKeys!6633 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547968 () Bool)

(declare-fun e!861673 () ListLongMap!22353)

(assert (=> b!1547968 (= e!861673 call!70054)))

(declare-fun b!1547969 () Bool)

(declare-fun e!861672 () ListLongMap!22353)

(assert (=> b!1547969 (= e!861672 call!70054)))

(declare-fun b!1547970 () Bool)

(declare-fun mapRes!58783 () Bool)

(assert (=> b!1547970 (= e!861668 (and e!861670 mapRes!58783))))

(declare-fun condMapEmpty!58783 () Bool)

(declare-fun mapDefault!58783 () ValueCell!18116)

