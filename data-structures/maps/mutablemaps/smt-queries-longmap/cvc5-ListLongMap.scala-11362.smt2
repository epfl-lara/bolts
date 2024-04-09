; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132108 () Bool)

(assert start!132108)

(declare-fun b_free!31789 () Bool)

(declare-fun b_next!31789 () Bool)

(assert (=> start!132108 (= b_free!31789 (not b_next!31789))))

(declare-fun tp!111619 () Bool)

(declare-fun b_and!51209 () Bool)

(assert (=> start!132108 (= tp!111619 b_and!51209)))

(declare-fun c!142114 () Bool)

(declare-datatypes ((V!59197 0))(
  ( (V!59198 (val!19110 Int)) )
))
(declare-datatypes ((tuple2!24744 0))(
  ( (tuple2!24745 (_1!12382 (_ BitVec 64)) (_2!12382 V!59197)) )
))
(declare-datatypes ((List!36247 0))(
  ( (Nil!36244) (Cons!36243 (h!37689 tuple2!24744) (t!50948 List!36247)) )
))
(declare-datatypes ((ListLongMap!22365 0))(
  ( (ListLongMap!22366 (toList!11198 List!36247)) )
))
(declare-fun call!70146 () ListLongMap!22365)

(declare-fun call!70143 () ListLongMap!22365)

(declare-fun c!142113 () Bool)

(declare-fun minValue!436 () V!59197)

(declare-fun call!70144 () ListLongMap!22365)

(declare-fun zeroValue!436 () V!59197)

(declare-fun bm!70139 () Bool)

(declare-fun call!70142 () ListLongMap!22365)

(declare-fun +!4918 (ListLongMap!22365 tuple2!24744) ListLongMap!22365)

(assert (=> bm!70139 (= call!70143 (+!4918 (ite c!142113 call!70144 (ite c!142114 call!70146 call!70142)) (ite (or c!142113 c!142114) (tuple2!24745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24745 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548250 () Bool)

(declare-fun e!861829 () ListLongMap!22365)

(declare-fun call!70145 () ListLongMap!22365)

(assert (=> b!1548250 (= e!861829 call!70145)))

(declare-fun b!1548251 () Bool)

(declare-fun e!861831 () Bool)

(assert (=> b!1548251 (= e!861831 (not true))))

(declare-datatypes ((array!103295 0))(
  ( (array!103296 (arr!49845 (Array (_ BitVec 32) (_ BitVec 64))) (size!50396 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103295)

(declare-fun lt!667184 () V!59197)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!667182 () ListLongMap!22365)

(declare-fun apply!1101 (ListLongMap!22365 (_ BitVec 64)) V!59197)

(assert (=> b!1548251 (= (apply!1101 lt!667182 (select (arr!49845 _keys!618) from!762)) lt!667184)))

(declare-datatypes ((Unit!51532 0))(
  ( (Unit!51533) )
))
(declare-fun lt!667185 () Unit!51532)

(declare-fun lt!667180 () ListLongMap!22365)

(declare-fun addApplyDifferent!604 (ListLongMap!22365 (_ BitVec 64) V!59197 (_ BitVec 64)) Unit!51532)

(assert (=> b!1548251 (= lt!667185 (addApplyDifferent!604 lt!667180 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49845 _keys!618) from!762)))))

(declare-fun lt!667179 () V!59197)

(assert (=> b!1548251 (= lt!667179 lt!667184)))

(assert (=> b!1548251 (= lt!667184 (apply!1101 lt!667180 (select (arr!49845 _keys!618) from!762)))))

(assert (=> b!1548251 (= lt!667179 (apply!1101 (+!4918 lt!667180 (tuple2!24745 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49845 _keys!618) from!762)))))

(declare-fun lt!667181 () Unit!51532)

(assert (=> b!1548251 (= lt!667181 (addApplyDifferent!604 lt!667180 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49845 _keys!618) from!762)))))

(declare-fun contains!10085 (ListLongMap!22365 (_ BitVec 64)) Bool)

(assert (=> b!1548251 (contains!10085 lt!667182 (select (arr!49845 _keys!618) from!762))))

(assert (=> b!1548251 (= lt!667182 (+!4918 lt!667180 (tuple2!24745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667183 () Unit!51532)

(declare-fun addStillContains!1267 (ListLongMap!22365 (_ BitVec 64) V!59197 (_ BitVec 64)) Unit!51532)

(assert (=> b!1548251 (= lt!667183 (addStillContains!1267 lt!667180 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49845 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18122 0))(
  ( (ValueCellFull!18122 (v!21908 V!59197)) (EmptyCell!18122) )
))
(declare-datatypes ((array!103297 0))(
  ( (array!103298 (arr!49846 (Array (_ BitVec 32) ValueCell!18122)) (size!50397 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103297)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6638 (array!103295 array!103297 (_ BitVec 32) (_ BitVec 32) V!59197 V!59197 (_ BitVec 32) Int) ListLongMap!22365)

(assert (=> b!1548251 (= lt!667180 (getCurrentListMapNoExtraKeys!6638 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548252 () Bool)

(declare-fun e!861830 () Bool)

(declare-fun tp_is_empty!38065 () Bool)

(assert (=> b!1548252 (= e!861830 tp_is_empty!38065)))

(declare-fun b!1548253 () Bool)

(declare-fun e!861827 () ListLongMap!22365)

(assert (=> b!1548253 (= e!861827 (+!4918 call!70143 (tuple2!24745 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapNonEmpty!58801 () Bool)

(declare-fun mapRes!58801 () Bool)

(declare-fun tp!111620 () Bool)

(declare-fun e!861833 () Bool)

(assert (=> mapNonEmpty!58801 (= mapRes!58801 (and tp!111620 e!861833))))

(declare-fun mapKey!58801 () (_ BitVec 32))

(declare-fun mapValue!58801 () ValueCell!18122)

(declare-fun mapRest!58801 () (Array (_ BitVec 32) ValueCell!18122))

(assert (=> mapNonEmpty!58801 (= (arr!49846 _values!470) (store mapRest!58801 mapKey!58801 mapValue!58801))))

(declare-fun b!1548254 () Bool)

(declare-fun e!861834 () ListLongMap!22365)

(assert (=> b!1548254 (= e!861834 call!70142)))

(declare-fun bm!70140 () Bool)

(assert (=> bm!70140 (= call!70142 call!70146)))

(declare-fun bm!70141 () Bool)

(assert (=> bm!70141 (= call!70145 call!70143)))

(declare-fun res!1061104 () Bool)

(declare-fun e!861832 () Bool)

(assert (=> start!132108 (=> (not res!1061104) (not e!861832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132108 (= res!1061104 (validMask!0 mask!926))))

(assert (=> start!132108 e!861832))

(declare-fun array_inv!38687 (array!103295) Bool)

(assert (=> start!132108 (array_inv!38687 _keys!618)))

(assert (=> start!132108 tp_is_empty!38065))

(assert (=> start!132108 true))

(assert (=> start!132108 tp!111619))

(declare-fun e!861828 () Bool)

(declare-fun array_inv!38688 (array!103297) Bool)

(assert (=> start!132108 (and (array_inv!38688 _values!470) e!861828)))

(declare-fun b!1548255 () Bool)

(declare-fun res!1061108 () Bool)

(assert (=> b!1548255 (=> (not res!1061108) (not e!861832))))

(declare-datatypes ((List!36248 0))(
  ( (Nil!36245) (Cons!36244 (h!37690 (_ BitVec 64)) (t!50949 List!36248)) )
))
(declare-fun arrayNoDuplicates!0 (array!103295 (_ BitVec 32) List!36248) Bool)

(assert (=> b!1548255 (= res!1061108 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36245))))

(declare-fun mapIsEmpty!58801 () Bool)

(assert (=> mapIsEmpty!58801 mapRes!58801))

(declare-fun b!1548256 () Bool)

(declare-fun res!1061102 () Bool)

(assert (=> b!1548256 (=> (not res!1061102) (not e!861832))))

(assert (=> b!1548256 (= res!1061102 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50396 _keys!618))))))

(declare-fun b!1548257 () Bool)

(assert (=> b!1548257 (= e!861827 e!861829)))

(declare-fun lt!667186 () Bool)

(assert (=> b!1548257 (= c!142114 (and (not lt!667186) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548258 () Bool)

(declare-fun res!1061105 () Bool)

(assert (=> b!1548258 (=> (not res!1061105) (not e!861832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103295 (_ BitVec 32)) Bool)

(assert (=> b!1548258 (= res!1061105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!70142 () Bool)

(assert (=> bm!70142 (= call!70146 call!70144)))

(declare-fun bm!70143 () Bool)

(assert (=> bm!70143 (= call!70144 (getCurrentListMapNoExtraKeys!6638 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548259 () Bool)

(declare-fun c!142115 () Bool)

(assert (=> b!1548259 (= c!142115 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667186))))

(assert (=> b!1548259 (= e!861829 e!861834)))

(declare-fun b!1548260 () Bool)

(declare-fun res!1061107 () Bool)

(assert (=> b!1548260 (=> (not res!1061107) (not e!861831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548260 (= res!1061107 (validKeyInArray!0 (select (arr!49845 _keys!618) from!762)))))

(declare-fun b!1548261 () Bool)

(assert (=> b!1548261 (= e!861828 (and e!861830 mapRes!58801))))

(declare-fun condMapEmpty!58801 () Bool)

(declare-fun mapDefault!58801 () ValueCell!18122)

