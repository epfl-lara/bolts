; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132136 () Bool)

(assert start!132136)

(declare-fun b_free!31817 () Bool)

(declare-fun b_next!31817 () Bool)

(assert (=> start!132136 (= b_free!31817 (not b_next!31817))))

(declare-fun tp!111703 () Bool)

(declare-fun b_and!51237 () Bool)

(assert (=> start!132136 (= tp!111703 b_and!51237)))

(declare-datatypes ((V!59233 0))(
  ( (V!59234 (val!19124 Int)) )
))
(declare-fun zeroValue!436 () V!59233)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((tuple2!24770 0))(
  ( (tuple2!24771 (_1!12395 (_ BitVec 64)) (_2!12395 V!59233)) )
))
(declare-datatypes ((List!36270 0))(
  ( (Nil!36267) (Cons!36266 (h!37712 tuple2!24770) (t!50971 List!36270)) )
))
(declare-datatypes ((ListLongMap!22391 0))(
  ( (ListLongMap!22392 (toList!11211 List!36270)) )
))
(declare-fun call!70352 () ListLongMap!22391)

(declare-datatypes ((ValueCell!18136 0))(
  ( (ValueCellFull!18136 (v!21922 V!59233)) (EmptyCell!18136) )
))
(declare-datatypes ((array!103347 0))(
  ( (array!103348 (arr!49871 (Array (_ BitVec 32) ValueCell!18136)) (size!50422 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103347)

(declare-fun minValue!436 () V!59233)

(declare-datatypes ((array!103349 0))(
  ( (array!103350 (arr!49872 (Array (_ BitVec 32) (_ BitVec 64))) (size!50423 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103349)

(declare-fun bm!70349 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6649 (array!103349 array!103347 (_ BitVec 32) (_ BitVec 32) V!59233 V!59233 (_ BitVec 32) Int) ListLongMap!22391)

(assert (=> bm!70349 (= call!70352 (getCurrentListMapNoExtraKeys!6649 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548922 () Bool)

(declare-fun res!1061399 () Bool)

(declare-fun e!862205 () Bool)

(assert (=> b!1548922 (=> (not res!1061399) (not e!862205))))

(assert (=> b!1548922 (= res!1061399 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50423 _keys!618))))))

(declare-fun res!1061401 () Bool)

(assert (=> start!132136 (=> (not res!1061401) (not e!862205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132136 (= res!1061401 (validMask!0 mask!926))))

(assert (=> start!132136 e!862205))

(declare-fun array_inv!38707 (array!103349) Bool)

(assert (=> start!132136 (array_inv!38707 _keys!618)))

(declare-fun tp_is_empty!38093 () Bool)

(assert (=> start!132136 tp_is_empty!38093))

(assert (=> start!132136 true))

(assert (=> start!132136 tp!111703))

(declare-fun e!862212 () Bool)

(declare-fun array_inv!38708 (array!103347) Bool)

(assert (=> start!132136 (and (array_inv!38708 _values!470) e!862212)))

(declare-fun bm!70350 () Bool)

(declare-fun call!70353 () ListLongMap!22391)

(assert (=> bm!70350 (= call!70353 call!70352)))

(declare-fun bm!70351 () Bool)

(declare-fun call!70356 () ListLongMap!22391)

(assert (=> bm!70351 (= call!70356 call!70353)))

(declare-fun b!1548923 () Bool)

(declare-fun res!1061400 () Bool)

(assert (=> b!1548923 (=> (not res!1061400) (not e!862205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103349 (_ BitVec 32)) Bool)

(assert (=> b!1548923 (= res!1061400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548924 () Bool)

(declare-fun res!1061398 () Bool)

(assert (=> b!1548924 (=> (not res!1061398) (not e!862205))))

(declare-datatypes ((List!36271 0))(
  ( (Nil!36268) (Cons!36267 (h!37713 (_ BitVec 64)) (t!50972 List!36271)) )
))
(declare-fun arrayNoDuplicates!0 (array!103349 (_ BitVec 32) List!36271) Bool)

(assert (=> b!1548924 (= res!1061398 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36268))))

(declare-fun b!1548925 () Bool)

(declare-fun e!862213 () ListLongMap!22391)

(declare-fun call!70355 () ListLongMap!22391)

(declare-fun +!4929 (ListLongMap!22391 tuple2!24770) ListLongMap!22391)

(assert (=> b!1548925 (= e!862213 (+!4929 call!70355 (tuple2!24771 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548926 () Bool)

(declare-fun e!862207 () Bool)

(assert (=> b!1548926 (= e!862207 tp_is_empty!38093)))

(declare-fun b!1548927 () Bool)

(declare-fun e!862209 () Bool)

(assert (=> b!1548927 (= e!862205 e!862209)))

(declare-fun res!1061397 () Bool)

(assert (=> b!1548927 (=> (not res!1061397) (not e!862209))))

(assert (=> b!1548927 (= res!1061397 (bvslt from!762 (size!50423 _keys!618)))))

(declare-fun lt!667562 () ListLongMap!22391)

(assert (=> b!1548927 (= lt!667562 e!862213)))

(declare-fun c!142240 () Bool)

(declare-fun lt!667559 () Bool)

(assert (=> b!1548927 (= c!142240 (and (not lt!667559) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548927 (= lt!667559 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58843 () Bool)

(declare-fun mapRes!58843 () Bool)

(assert (=> mapIsEmpty!58843 mapRes!58843))

(declare-fun b!1548928 () Bool)

(declare-fun e!862208 () ListLongMap!22391)

(assert (=> b!1548928 (= e!862213 e!862208)))

(declare-fun c!142241 () Bool)

(assert (=> b!1548928 (= c!142241 (and (not lt!667559) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548929 () Bool)

(declare-fun e!862211 () ListLongMap!22391)

(declare-fun call!70354 () ListLongMap!22391)

(assert (=> b!1548929 (= e!862211 call!70354)))

(declare-fun b!1548930 () Bool)

(declare-fun e!862206 () Bool)

(assert (=> b!1548930 (= e!862206 tp_is_empty!38093)))

(declare-fun bm!70352 () Bool)

(assert (=> bm!70352 (= call!70354 call!70355)))

(declare-fun b!1548931 () Bool)

(assert (=> b!1548931 (= e!862208 call!70354)))

(declare-fun b!1548932 () Bool)

(declare-fun res!1061402 () Bool)

(assert (=> b!1548932 (=> (not res!1061402) (not e!862205))))

(assert (=> b!1548932 (= res!1061402 (and (= (size!50422 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50423 _keys!618) (size!50422 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548933 () Bool)

(assert (=> b!1548933 (= e!862212 (and e!862207 mapRes!58843))))

(declare-fun condMapEmpty!58843 () Bool)

(declare-fun mapDefault!58843 () ValueCell!18136)

