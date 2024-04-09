; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132124 () Bool)

(assert start!132124)

(declare-fun b_free!31805 () Bool)

(declare-fun b_next!31805 () Bool)

(assert (=> start!132124 (= b_free!31805 (not b_next!31805))))

(declare-fun tp!111668 () Bool)

(declare-fun b_and!51225 () Bool)

(assert (=> start!132124 (= tp!111668 b_and!51225)))

(declare-fun bm!70259 () Bool)

(declare-datatypes ((V!59217 0))(
  ( (V!59218 (val!19118 Int)) )
))
(declare-datatypes ((tuple2!24758 0))(
  ( (tuple2!24759 (_1!12389 (_ BitVec 64)) (_2!12389 V!59217)) )
))
(declare-datatypes ((List!36259 0))(
  ( (Nil!36256) (Cons!36255 (h!37701 tuple2!24758) (t!50960 List!36259)) )
))
(declare-datatypes ((ListLongMap!22379 0))(
  ( (ListLongMap!22380 (toList!11205 List!36259)) )
))
(declare-fun call!70265 () ListLongMap!22379)

(declare-fun call!70264 () ListLongMap!22379)

(assert (=> bm!70259 (= call!70265 call!70264)))

(declare-fun b!1548634 () Bool)

(declare-fun res!1061273 () Bool)

(declare-fun e!862050 () Bool)

(assert (=> b!1548634 (=> (not res!1061273) (not e!862050))))

(declare-datatypes ((array!103325 0))(
  ( (array!103326 (arr!49860 (Array (_ BitVec 32) (_ BitVec 64))) (size!50411 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103325)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103325 (_ BitVec 32)) Bool)

(assert (=> b!1548634 (= res!1061273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548635 () Bool)

(declare-fun e!862049 () ListLongMap!22379)

(declare-fun call!70263 () ListLongMap!22379)

(assert (=> b!1548635 (= e!862049 call!70263)))

(declare-fun res!1061276 () Bool)

(assert (=> start!132124 (=> (not res!1061276) (not e!862050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132124 (= res!1061276 (validMask!0 mask!926))))

(assert (=> start!132124 e!862050))

(declare-fun array_inv!38697 (array!103325) Bool)

(assert (=> start!132124 (array_inv!38697 _keys!618)))

(declare-fun tp_is_empty!38081 () Bool)

(assert (=> start!132124 tp_is_empty!38081))

(assert (=> start!132124 true))

(assert (=> start!132124 tp!111668))

(declare-datatypes ((ValueCell!18130 0))(
  ( (ValueCellFull!18130 (v!21916 V!59217)) (EmptyCell!18130) )
))
(declare-datatypes ((array!103327 0))(
  ( (array!103328 (arr!49861 (Array (_ BitVec 32) ValueCell!18130)) (size!50412 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103327)

(declare-fun e!862044 () Bool)

(declare-fun array_inv!38698 (array!103327) Bool)

(assert (=> start!132124 (and (array_inv!38698 _values!470) e!862044)))

(declare-fun b!1548636 () Bool)

(declare-fun e!862046 () Bool)

(assert (=> b!1548636 (= e!862046 tp_is_empty!38081)))

(declare-fun mapNonEmpty!58825 () Bool)

(declare-fun mapRes!58825 () Bool)

(declare-fun tp!111667 () Bool)

(declare-fun e!862051 () Bool)

(assert (=> mapNonEmpty!58825 (= mapRes!58825 (and tp!111667 e!862051))))

(declare-fun mapValue!58825 () ValueCell!18130)

(declare-fun mapKey!58825 () (_ BitVec 32))

(declare-fun mapRest!58825 () (Array (_ BitVec 32) ValueCell!18130))

(assert (=> mapNonEmpty!58825 (= (arr!49861 _values!470) (store mapRest!58825 mapKey!58825 mapValue!58825))))

(declare-fun b!1548637 () Bool)

(declare-fun res!1061270 () Bool)

(declare-fun e!862043 () Bool)

(assert (=> b!1548637 (=> (not res!1061270) (not e!862043))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548637 (= res!1061270 (validKeyInArray!0 (select (arr!49860 _keys!618) from!762)))))

(declare-fun b!1548638 () Bool)

(declare-fun e!862047 () ListLongMap!22379)

(declare-fun minValue!436 () V!59217)

(declare-fun +!4924 (ListLongMap!22379 tuple2!24758) ListLongMap!22379)

(assert (=> b!1548638 (= e!862047 (+!4924 call!70264 (tuple2!24759 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548639 () Bool)

(assert (=> b!1548639 (= e!862051 tp_is_empty!38081)))

(declare-fun b!1548640 () Bool)

(declare-fun e!862045 () ListLongMap!22379)

(assert (=> b!1548640 (= e!862045 call!70265)))

(declare-fun b!1548641 () Bool)

(declare-fun res!1061275 () Bool)

(assert (=> b!1548641 (=> (not res!1061275) (not e!862050))))

(declare-datatypes ((List!36260 0))(
  ( (Nil!36257) (Cons!36256 (h!37702 (_ BitVec 64)) (t!50961 List!36260)) )
))
(declare-fun arrayNoDuplicates!0 (array!103325 (_ BitVec 32) List!36260) Bool)

(assert (=> b!1548641 (= res!1061275 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36257))))

(declare-fun b!1548642 () Bool)

(assert (=> b!1548642 (= e!862047 e!862045)))

(declare-fun c!142187 () Bool)

(declare-fun lt!667403 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1548642 (= c!142187 (and (not lt!667403) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548643 () Bool)

(assert (=> b!1548643 (= e!862049 call!70265)))

(declare-fun bm!70260 () Bool)

(declare-fun call!70266 () ListLongMap!22379)

(assert (=> bm!70260 (= call!70263 call!70266)))

(declare-fun b!1548644 () Bool)

(declare-fun res!1061272 () Bool)

(assert (=> b!1548644 (=> (not res!1061272) (not e!862050))))

(assert (=> b!1548644 (= res!1061272 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50411 _keys!618))))))

(declare-fun mapIsEmpty!58825 () Bool)

(assert (=> mapIsEmpty!58825 mapRes!58825))

(declare-fun b!1548645 () Bool)

(assert (=> b!1548645 (= e!862050 e!862043)))

(declare-fun res!1061271 () Bool)

(assert (=> b!1548645 (=> (not res!1061271) (not e!862043))))

(assert (=> b!1548645 (= res!1061271 (bvslt from!762 (size!50411 _keys!618)))))

(declare-fun lt!667399 () ListLongMap!22379)

(assert (=> b!1548645 (= lt!667399 e!862047)))

(declare-fun c!142185 () Bool)

(assert (=> b!1548645 (= c!142185 (and (not lt!667403) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548645 (= lt!667403 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!70261 () Bool)

(declare-fun call!70262 () ListLongMap!22379)

(assert (=> bm!70261 (= call!70266 call!70262)))

(declare-fun b!1548646 () Bool)

(assert (=> b!1548646 (= e!862044 (and e!862046 mapRes!58825))))

(declare-fun condMapEmpty!58825 () Bool)

(declare-fun mapDefault!58825 () ValueCell!18130)

