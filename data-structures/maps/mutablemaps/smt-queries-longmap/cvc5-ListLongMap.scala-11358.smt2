; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132084 () Bool)

(assert start!132084)

(declare-fun b_free!31765 () Bool)

(declare-fun b_next!31765 () Bool)

(assert (=> start!132084 (= b_free!31765 (not b_next!31765))))

(declare-fun tp!111547 () Bool)

(declare-fun b_and!51185 () Bool)

(assert (=> start!132084 (= tp!111547 b_and!51185)))

(declare-fun bm!69959 () Bool)

(declare-datatypes ((V!59165 0))(
  ( (V!59166 (val!19098 Int)) )
))
(declare-datatypes ((tuple2!24720 0))(
  ( (tuple2!24721 (_1!12370 (_ BitVec 64)) (_2!12370 V!59165)) )
))
(declare-datatypes ((List!36227 0))(
  ( (Nil!36224) (Cons!36223 (h!37669 tuple2!24720) (t!50928 List!36227)) )
))
(declare-datatypes ((ListLongMap!22341 0))(
  ( (ListLongMap!22342 (toList!11186 List!36227)) )
))
(declare-fun call!69962 () ListLongMap!22341)

(declare-fun call!69965 () ListLongMap!22341)

(assert (=> bm!69959 (= call!69962 call!69965)))

(declare-fun b!1547674 () Bool)

(declare-fun e!861510 () Bool)

(declare-fun tp_is_empty!38041 () Bool)

(assert (=> b!1547674 (= e!861510 tp_is_empty!38041)))

(declare-datatypes ((array!103247 0))(
  ( (array!103248 (arr!49821 (Array (_ BitVec 32) (_ BitVec 64))) (size!50372 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103247)

(declare-fun zeroValue!436 () V!59165)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun minValue!436 () V!59165)

(declare-fun bm!69960 () Bool)

(declare-datatypes ((ValueCell!18110 0))(
  ( (ValueCellFull!18110 (v!21896 V!59165)) (EmptyCell!18110) )
))
(declare-datatypes ((array!103249 0))(
  ( (array!103250 (arr!49822 (Array (_ BitVec 32) ValueCell!18110)) (size!50373 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103249)

(declare-fun getCurrentListMapNoExtraKeys!6629 (array!103247 array!103249 (_ BitVec 32) (_ BitVec 32) V!59165 V!59165 (_ BitVec 32) Int) ListLongMap!22341)

(assert (=> bm!69960 (= call!69965 (getCurrentListMapNoExtraKeys!6629 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547675 () Bool)

(declare-fun e!861511 () ListLongMap!22341)

(declare-fun call!69963 () ListLongMap!22341)

(assert (=> b!1547675 (= e!861511 call!69963)))

(declare-fun b!1547676 () Bool)

(declare-fun res!1060855 () Bool)

(declare-fun e!861507 () Bool)

(assert (=> b!1547676 (=> (not res!1060855) (not e!861507))))

(declare-datatypes ((List!36228 0))(
  ( (Nil!36225) (Cons!36224 (h!37670 (_ BitVec 64)) (t!50929 List!36228)) )
))
(declare-fun arrayNoDuplicates!0 (array!103247 (_ BitVec 32) List!36228) Bool)

(assert (=> b!1547676 (= res!1060855 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36225))))

(declare-fun b!1547677 () Bool)

(declare-fun e!861503 () Bool)

(assert (=> b!1547677 (= e!861507 e!861503)))

(declare-fun res!1060850 () Bool)

(assert (=> b!1547677 (=> (not res!1060850) (not e!861503))))

(assert (=> b!1547677 (= res!1060850 (bvslt from!762 (size!50372 _keys!618)))))

(declare-fun lt!666913 () ListLongMap!22341)

(declare-fun e!861509 () ListLongMap!22341)

(assert (=> b!1547677 (= lt!666913 e!861509)))

(declare-fun c!142006 () Bool)

(declare-fun lt!666914 () Bool)

(assert (=> b!1547677 (= c!142006 (and (not lt!666914) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547677 (= lt!666914 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547678 () Bool)

(assert (=> b!1547678 (= e!861509 e!861511)))

(declare-fun c!142007 () Bool)

(assert (=> b!1547678 (= c!142007 (and (not lt!666914) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69961 () Bool)

(declare-fun call!69964 () ListLongMap!22341)

(assert (=> bm!69961 (= call!69964 call!69962)))

(declare-fun res!1060853 () Bool)

(assert (=> start!132084 (=> (not res!1060853) (not e!861507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132084 (= res!1060853 (validMask!0 mask!926))))

(assert (=> start!132084 e!861507))

(declare-fun array_inv!38669 (array!103247) Bool)

(assert (=> start!132084 (array_inv!38669 _keys!618)))

(assert (=> start!132084 tp_is_empty!38041))

(assert (=> start!132084 true))

(assert (=> start!132084 tp!111547))

(declare-fun e!861504 () Bool)

(declare-fun array_inv!38670 (array!103249) Bool)

(assert (=> start!132084 (and (array_inv!38670 _values!470) e!861504)))

(declare-fun b!1547679 () Bool)

(declare-fun e!861506 () ListLongMap!22341)

(assert (=> b!1547679 (= e!861506 call!69964)))

(declare-fun b!1547680 () Bool)

(declare-fun call!69966 () ListLongMap!22341)

(declare-fun +!4909 (ListLongMap!22341 tuple2!24720) ListLongMap!22341)

(assert (=> b!1547680 (= e!861509 (+!4909 call!69966 (tuple2!24721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69962 () Bool)

(assert (=> bm!69962 (= call!69963 call!69966)))

(declare-fun b!1547681 () Bool)

(declare-fun res!1060852 () Bool)

(assert (=> b!1547681 (=> (not res!1060852) (not e!861507))))

(assert (=> b!1547681 (= res!1060852 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50372 _keys!618))))))

(declare-fun b!1547682 () Bool)

(declare-fun c!142005 () Bool)

(assert (=> b!1547682 (= c!142005 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666914))))

(assert (=> b!1547682 (= e!861511 e!861506)))

(declare-fun b!1547683 () Bool)

(declare-fun e!861508 () Bool)

(assert (=> b!1547683 (= e!861508 tp_is_empty!38041)))

(declare-fun b!1547684 () Bool)

(declare-fun mapRes!58765 () Bool)

(assert (=> b!1547684 (= e!861504 (and e!861508 mapRes!58765))))

(declare-fun condMapEmpty!58765 () Bool)

(declare-fun mapDefault!58765 () ValueCell!18110)

