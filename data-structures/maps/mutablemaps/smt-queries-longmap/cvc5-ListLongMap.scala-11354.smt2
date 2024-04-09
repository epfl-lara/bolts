; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132060 () Bool)

(assert start!132060)

(declare-fun b_free!31741 () Bool)

(declare-fun b_next!31741 () Bool)

(assert (=> start!132060 (= b_free!31741 (not b_next!31741))))

(declare-fun tp!111475 () Bool)

(declare-fun b_and!51161 () Bool)

(assert (=> start!132060 (= tp!111475 b_and!51161)))

(declare-fun b!1547098 () Bool)

(declare-fun res!1060602 () Bool)

(declare-fun e!861184 () Bool)

(assert (=> b!1547098 (=> (not res!1060602) (not e!861184))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103201 0))(
  ( (array!103202 (arr!49798 (Array (_ BitVec 32) (_ BitVec 64))) (size!50349 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103201)

(assert (=> b!1547098 (= res!1060602 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50349 _keys!618))))))

(declare-fun b!1547099 () Bool)

(declare-fun e!861182 () Bool)

(declare-fun tp_is_empty!38017 () Bool)

(assert (=> b!1547099 (= e!861182 tp_is_empty!38017)))

(declare-fun b!1547100 () Bool)

(declare-fun res!1060603 () Bool)

(assert (=> b!1547100 (=> (not res!1060603) (not e!861184))))

(declare-datatypes ((List!36206 0))(
  ( (Nil!36203) (Cons!36202 (h!37648 (_ BitVec 64)) (t!50907 List!36206)) )
))
(declare-fun arrayNoDuplicates!0 (array!103201 (_ BitVec 32) List!36206) Bool)

(assert (=> b!1547100 (= res!1060603 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36203))))

(declare-fun b!1547101 () Bool)

(declare-datatypes ((V!59133 0))(
  ( (V!59134 (val!19086 Int)) )
))
(declare-datatypes ((tuple2!24696 0))(
  ( (tuple2!24697 (_1!12358 (_ BitVec 64)) (_2!12358 V!59133)) )
))
(declare-datatypes ((List!36207 0))(
  ( (Nil!36204) (Cons!36203 (h!37649 tuple2!24696) (t!50908 List!36207)) )
))
(declare-datatypes ((ListLongMap!22317 0))(
  ( (ListLongMap!22318 (toList!11174 List!36207)) )
))
(declare-fun e!861181 () ListLongMap!22317)

(declare-fun call!69783 () ListLongMap!22317)

(assert (=> b!1547101 (= e!861181 call!69783)))

(declare-fun b!1547102 () Bool)

(declare-fun call!69786 () ListLongMap!22317)

(assert (=> b!1547102 (= e!861181 call!69786)))

(declare-fun res!1060599 () Bool)

(assert (=> start!132060 (=> (not res!1060599) (not e!861184))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132060 (= res!1060599 (validMask!0 mask!926))))

(assert (=> start!132060 e!861184))

(declare-fun array_inv!38653 (array!103201) Bool)

(assert (=> start!132060 (array_inv!38653 _keys!618)))

(assert (=> start!132060 tp_is_empty!38017))

(assert (=> start!132060 true))

(assert (=> start!132060 tp!111475))

(declare-datatypes ((ValueCell!18098 0))(
  ( (ValueCellFull!18098 (v!21884 V!59133)) (EmptyCell!18098) )
))
(declare-datatypes ((array!103203 0))(
  ( (array!103204 (arr!49799 (Array (_ BitVec 32) ValueCell!18098)) (size!50350 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103203)

(declare-fun e!861185 () Bool)

(declare-fun array_inv!38654 (array!103203) Bool)

(assert (=> start!132060 (and (array_inv!38654 _values!470) e!861185)))

(declare-fun b!1547103 () Bool)

(declare-fun e!861183 () ListLongMap!22317)

(declare-fun call!69785 () ListLongMap!22317)

(declare-fun minValue!436 () V!59133)

(declare-fun +!4900 (ListLongMap!22317 tuple2!24696) ListLongMap!22317)

(assert (=> b!1547103 (= e!861183 (+!4900 call!69785 (tuple2!24697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547104 () Bool)

(declare-fun e!861186 () Bool)

(assert (=> b!1547104 (= e!861184 e!861186)))

(declare-fun res!1060598 () Bool)

(assert (=> b!1547104 (=> (not res!1060598) (not e!861186))))

(assert (=> b!1547104 (= res!1060598 (bvslt from!762 (size!50349 _keys!618)))))

(declare-fun lt!666733 () ListLongMap!22317)

(assert (=> b!1547104 (= lt!666733 e!861183)))

(declare-fun c!141899 () Bool)

(declare-fun lt!666732 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1547104 (= c!141899 (and (not lt!666732) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547104 (= lt!666732 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69779 () Bool)

(declare-fun call!69784 () ListLongMap!22317)

(declare-fun call!69782 () ListLongMap!22317)

(assert (=> bm!69779 (= call!69784 call!69782)))

(declare-fun mapIsEmpty!58729 () Bool)

(declare-fun mapRes!58729 () Bool)

(assert (=> mapIsEmpty!58729 mapRes!58729))

(declare-fun bm!69780 () Bool)

(assert (=> bm!69780 (= call!69783 call!69784)))

(declare-fun b!1547105 () Bool)

(declare-fun res!1060604 () Bool)

(assert (=> b!1547105 (=> (not res!1060604) (not e!861184))))

(assert (=> b!1547105 (= res!1060604 (and (= (size!50350 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50349 _keys!618) (size!50350 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59133)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69781 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6619 (array!103201 array!103203 (_ BitVec 32) (_ BitVec 32) V!59133 V!59133 (_ BitVec 32) Int) ListLongMap!22317)

(assert (=> bm!69781 (= call!69782 (getCurrentListMapNoExtraKeys!6619 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58729 () Bool)

(declare-fun tp!111476 () Bool)

(declare-fun e!861179 () Bool)

(assert (=> mapNonEmpty!58729 (= mapRes!58729 (and tp!111476 e!861179))))

(declare-fun mapRest!58729 () (Array (_ BitVec 32) ValueCell!18098))

(declare-fun mapKey!58729 () (_ BitVec 32))

(declare-fun mapValue!58729 () ValueCell!18098)

(assert (=> mapNonEmpty!58729 (= (arr!49799 _values!470) (store mapRest!58729 mapKey!58729 mapValue!58729))))

(declare-fun b!1547106 () Bool)

(declare-fun res!1060601 () Bool)

(assert (=> b!1547106 (=> (not res!1060601) (not e!861184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103201 (_ BitVec 32)) Bool)

(assert (=> b!1547106 (= res!1060601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547107 () Bool)

(assert (=> b!1547107 (= e!861186 (not true))))

(declare-fun lt!666731 () ListLongMap!22317)

(declare-fun apply!1084 (ListLongMap!22317 (_ BitVec 64)) V!59133)

(assert (=> b!1547107 (= (apply!1084 (+!4900 lt!666731 (tuple2!24697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49798 _keys!618) from!762)) (apply!1084 lt!666731 (select (arr!49798 _keys!618) from!762)))))

(declare-datatypes ((Unit!51498 0))(
  ( (Unit!51499) )
))
(declare-fun lt!666730 () Unit!51498)

(declare-fun addApplyDifferent!587 (ListLongMap!22317 (_ BitVec 64) V!59133 (_ BitVec 64)) Unit!51498)

(assert (=> b!1547107 (= lt!666730 (addApplyDifferent!587 lt!666731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49798 _keys!618) from!762)))))

(declare-fun contains!10068 (ListLongMap!22317 (_ BitVec 64)) Bool)

(assert (=> b!1547107 (contains!10068 (+!4900 lt!666731 (tuple2!24697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49798 _keys!618) from!762))))

(declare-fun lt!666734 () Unit!51498)

(declare-fun addStillContains!1250 (ListLongMap!22317 (_ BitVec 64) V!59133 (_ BitVec 64)) Unit!51498)

(assert (=> b!1547107 (= lt!666734 (addStillContains!1250 lt!666731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49798 _keys!618) from!762)))))

(assert (=> b!1547107 (= lt!666731 (getCurrentListMapNoExtraKeys!6619 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69782 () Bool)

(assert (=> bm!69782 (= call!69786 call!69785)))

(declare-fun b!1547108 () Bool)

(assert (=> b!1547108 (= e!861179 tp_is_empty!38017)))

(declare-fun b!1547109 () Bool)

(declare-fun res!1060600 () Bool)

(assert (=> b!1547109 (=> (not res!1060600) (not e!861186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547109 (= res!1060600 (validKeyInArray!0 (select (arr!49798 _keys!618) from!762)))))

(declare-fun b!1547110 () Bool)

(declare-fun e!861187 () ListLongMap!22317)

(assert (=> b!1547110 (= e!861187 call!69786)))

(declare-fun c!141897 () Bool)

(declare-fun bm!69783 () Bool)

(assert (=> bm!69783 (= call!69785 (+!4900 (ite c!141899 call!69782 (ite c!141897 call!69784 call!69783)) (ite (or c!141899 c!141897) (tuple2!24697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547111 () Bool)

(declare-fun c!141898 () Bool)

(assert (=> b!1547111 (= c!141898 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666732))))

(assert (=> b!1547111 (= e!861187 e!861181)))

(declare-fun b!1547112 () Bool)

(assert (=> b!1547112 (= e!861185 (and e!861182 mapRes!58729))))

(declare-fun condMapEmpty!58729 () Bool)

(declare-fun mapDefault!58729 () ValueCell!18098)

