; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131986 () Bool)

(assert start!131986)

(declare-fun b_free!31667 () Bool)

(declare-fun b_next!31667 () Bool)

(assert (=> start!131986 (= b_free!31667 (not b_next!31667))))

(declare-fun tp!111254 () Bool)

(declare-fun b_and!51087 () Bool)

(assert (=> start!131986 (= tp!111254 b_and!51087)))

(declare-fun bm!69224 () Bool)

(declare-datatypes ((V!59033 0))(
  ( (V!59034 (val!19049 Int)) )
))
(declare-datatypes ((tuple2!24626 0))(
  ( (tuple2!24627 (_1!12323 (_ BitVec 64)) (_2!12323 V!59033)) )
))
(declare-datatypes ((List!36142 0))(
  ( (Nil!36139) (Cons!36138 (h!37584 tuple2!24626) (t!50843 List!36142)) )
))
(declare-datatypes ((ListLongMap!22247 0))(
  ( (ListLongMap!22248 (toList!11139 List!36142)) )
))
(declare-fun call!69230 () ListLongMap!22247)

(declare-fun call!69227 () ListLongMap!22247)

(assert (=> bm!69224 (= call!69230 call!69227)))

(declare-fun zeroValue!436 () V!59033)

(declare-fun c!141564 () Bool)

(declare-fun bm!69225 () Bool)

(declare-fun c!141566 () Bool)

(declare-fun minValue!436 () V!59033)

(declare-fun call!69229 () ListLongMap!22247)

(declare-fun call!69228 () ListLongMap!22247)

(declare-fun call!69231 () ListLongMap!22247)

(declare-fun +!4869 (ListLongMap!22247 tuple2!24626) ListLongMap!22247)

(assert (=> bm!69225 (= call!69227 (+!4869 (ite c!141564 call!69231 (ite c!141566 call!69229 call!69228)) (ite (or c!141564 c!141566) (tuple2!24627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24627 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69226 () Bool)

(assert (=> bm!69226 (= call!69229 call!69231)))

(declare-fun b!1545322 () Bool)

(declare-fun e!860183 () ListLongMap!22247)

(assert (=> b!1545322 (= e!860183 call!69230)))

(declare-fun b!1545323 () Bool)

(declare-fun e!860182 () ListLongMap!22247)

(assert (=> b!1545323 (= e!860182 call!69230)))

(declare-fun b!1545324 () Bool)

(declare-fun res!1059821 () Bool)

(declare-fun e!860188 () Bool)

(assert (=> b!1545324 (=> (not res!1059821) (not e!860188))))

(declare-datatypes ((array!103059 0))(
  ( (array!103060 (arr!49727 (Array (_ BitVec 32) (_ BitVec 64))) (size!50278 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103059)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545324 (= res!1059821 (validKeyInArray!0 (select (arr!49727 _keys!618) from!762)))))

(declare-fun b!1545326 () Bool)

(declare-fun res!1059822 () Bool)

(declare-fun e!860184 () Bool)

(assert (=> b!1545326 (=> (not res!1059822) (not e!860184))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103059 (_ BitVec 32)) Bool)

(assert (=> b!1545326 (= res!1059822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69227 () Bool)

(declare-datatypes ((ValueCell!18061 0))(
  ( (ValueCellFull!18061 (v!21847 V!59033)) (EmptyCell!18061) )
))
(declare-datatypes ((array!103061 0))(
  ( (array!103062 (arr!49728 (Array (_ BitVec 32) ValueCell!18061)) (size!50279 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103061)

(declare-fun getCurrentListMapNoExtraKeys!6588 (array!103059 array!103061 (_ BitVec 32) (_ BitVec 32) V!59033 V!59033 (_ BitVec 32) Int) ListLongMap!22247)

(assert (=> bm!69227 (= call!69231 (getCurrentListMapNoExtraKeys!6588 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545327 () Bool)

(declare-fun res!1059824 () Bool)

(assert (=> b!1545327 (=> (not res!1059824) (not e!860184))))

(declare-datatypes ((List!36143 0))(
  ( (Nil!36140) (Cons!36139 (h!37585 (_ BitVec 64)) (t!50844 List!36143)) )
))
(declare-fun arrayNoDuplicates!0 (array!103059 (_ BitVec 32) List!36143) Bool)

(assert (=> b!1545327 (= res!1059824 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36140))))

(declare-fun b!1545328 () Bool)

(declare-fun e!860185 () Bool)

(declare-fun tp_is_empty!37943 () Bool)

(assert (=> b!1545328 (= e!860185 tp_is_empty!37943)))

(declare-fun b!1545329 () Bool)

(declare-fun e!860186 () Bool)

(declare-fun e!860187 () Bool)

(declare-fun mapRes!58618 () Bool)

(assert (=> b!1545329 (= e!860186 (and e!860187 mapRes!58618))))

(declare-fun condMapEmpty!58618 () Bool)

(declare-fun mapDefault!58618 () ValueCell!18061)

