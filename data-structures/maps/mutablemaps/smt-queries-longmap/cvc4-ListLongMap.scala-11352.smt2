; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132052 () Bool)

(assert start!132052)

(declare-fun b_free!31733 () Bool)

(declare-fun b_next!31733 () Bool)

(assert (=> start!132052 (= b_free!31733 (not b_next!31733))))

(declare-fun tp!111452 () Bool)

(declare-fun b_and!51153 () Bool)

(assert (=> start!132052 (= tp!111452 b_and!51153)))

(declare-fun b!1546906 () Bool)

(declare-fun e!861079 () Bool)

(declare-fun tp_is_empty!38009 () Bool)

(assert (=> b!1546906 (= e!861079 tp_is_empty!38009)))

(declare-datatypes ((array!103185 0))(
  ( (array!103186 (arr!49790 (Array (_ BitVec 32) (_ BitVec 64))) (size!50341 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103185)

(declare-datatypes ((V!59121 0))(
  ( (V!59122 (val!19082 Int)) )
))
(declare-fun zeroValue!436 () V!59121)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18094 0))(
  ( (ValueCellFull!18094 (v!21880 V!59121)) (EmptyCell!18094) )
))
(declare-datatypes ((array!103187 0))(
  ( (array!103188 (arr!49791 (Array (_ BitVec 32) ValueCell!18094)) (size!50342 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103187)

(declare-fun minValue!436 () V!59121)

(declare-fun bm!69719 () Bool)

(declare-datatypes ((tuple2!24688 0))(
  ( (tuple2!24689 (_1!12354 (_ BitVec 64)) (_2!12354 V!59121)) )
))
(declare-datatypes ((List!36198 0))(
  ( (Nil!36195) (Cons!36194 (h!37640 tuple2!24688) (t!50899 List!36198)) )
))
(declare-datatypes ((ListLongMap!22309 0))(
  ( (ListLongMap!22310 (toList!11170 List!36198)) )
))
(declare-fun call!69723 () ListLongMap!22309)

(declare-fun getCurrentListMapNoExtraKeys!6615 (array!103185 array!103187 (_ BitVec 32) (_ BitVec 32) V!59121 V!59121 (_ BitVec 32) Int) ListLongMap!22309)

(assert (=> bm!69719 (= call!69723 (getCurrentListMapNoExtraKeys!6615 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69720 () Bool)

(declare-fun call!69725 () ListLongMap!22309)

(assert (=> bm!69720 (= call!69725 call!69723)))

(declare-fun b!1546908 () Bool)

(declare-fun res!1060515 () Bool)

(declare-fun e!861073 () Bool)

(assert (=> b!1546908 (=> (not res!1060515) (not e!861073))))

(assert (=> b!1546908 (= res!1060515 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50341 _keys!618))))))

(declare-fun b!1546909 () Bool)

(declare-fun res!1060517 () Bool)

(assert (=> b!1546909 (=> (not res!1060517) (not e!861073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103185 (_ BitVec 32)) Bool)

(assert (=> b!1546909 (= res!1060517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546910 () Bool)

(declare-fun e!861075 () Bool)

(assert (=> b!1546910 (= e!861075 tp_is_empty!38009)))

(declare-fun b!1546911 () Bool)

(declare-fun e!861078 () ListLongMap!22309)

(declare-fun call!69722 () ListLongMap!22309)

(assert (=> b!1546911 (= e!861078 call!69722)))

(declare-fun b!1546912 () Bool)

(declare-fun res!1060518 () Bool)

(declare-fun e!861077 () Bool)

(assert (=> b!1546912 (=> (not res!1060518) (not e!861077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546912 (= res!1060518 (validKeyInArray!0 (select (arr!49790 _keys!618) from!762)))))

(declare-fun b!1546913 () Bool)

(declare-fun e!861074 () ListLongMap!22309)

(declare-fun e!861071 () ListLongMap!22309)

(assert (=> b!1546913 (= e!861074 e!861071)))

(declare-fun c!141861 () Bool)

(declare-fun lt!666674 () Bool)

(assert (=> b!1546913 (= c!141861 (and (not lt!666674) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69721 () Bool)

(assert (=> bm!69721 (= call!69722 call!69725)))

(declare-fun b!1546907 () Bool)

(declare-fun res!1060516 () Bool)

(assert (=> b!1546907 (=> (not res!1060516) (not e!861073))))

(declare-datatypes ((List!36199 0))(
  ( (Nil!36196) (Cons!36195 (h!37641 (_ BitVec 64)) (t!50900 List!36199)) )
))
(declare-fun arrayNoDuplicates!0 (array!103185 (_ BitVec 32) List!36199) Bool)

(assert (=> b!1546907 (= res!1060516 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36196))))

(declare-fun res!1060519 () Bool)

(assert (=> start!132052 (=> (not res!1060519) (not e!861073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132052 (= res!1060519 (validMask!0 mask!926))))

(assert (=> start!132052 e!861073))

(declare-fun array_inv!38647 (array!103185) Bool)

(assert (=> start!132052 (array_inv!38647 _keys!618)))

(assert (=> start!132052 tp_is_empty!38009))

(assert (=> start!132052 true))

(assert (=> start!132052 tp!111452))

(declare-fun e!861076 () Bool)

(declare-fun array_inv!38648 (array!103187) Bool)

(assert (=> start!132052 (and (array_inv!38648 _values!470) e!861076)))

(declare-fun b!1546914 () Bool)

(declare-fun mapRes!58717 () Bool)

(assert (=> b!1546914 (= e!861076 (and e!861079 mapRes!58717))))

(declare-fun condMapEmpty!58717 () Bool)

(declare-fun mapDefault!58717 () ValueCell!18094)

