; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131968 () Bool)

(assert start!131968)

(declare-fun b_free!31649 () Bool)

(declare-fun b_next!31649 () Bool)

(assert (=> start!131968 (= b_free!31649 (not b_next!31649))))

(declare-fun tp!111199 () Bool)

(declare-fun b_and!51069 () Bool)

(assert (=> start!131968 (= tp!111199 b_and!51069)))

(declare-fun b!1544892 () Bool)

(declare-datatypes ((V!59009 0))(
  ( (V!59010 (val!19040 Int)) )
))
(declare-datatypes ((tuple2!24608 0))(
  ( (tuple2!24609 (_1!12314 (_ BitVec 64)) (_2!12314 V!59009)) )
))
(declare-datatypes ((List!36127 0))(
  ( (Nil!36124) (Cons!36123 (h!37569 tuple2!24608) (t!50828 List!36127)) )
))
(declare-datatypes ((ListLongMap!22229 0))(
  ( (ListLongMap!22230 (toList!11130 List!36127)) )
))
(declare-fun e!859938 () ListLongMap!22229)

(declare-fun e!859939 () ListLongMap!22229)

(assert (=> b!1544892 (= e!859938 e!859939)))

(declare-fun c!141483 () Bool)

(declare-fun lt!666142 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544892 (= c!141483 (and (not lt!666142) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69089 () Bool)

(declare-fun call!69095 () ListLongMap!22229)

(declare-fun call!69096 () ListLongMap!22229)

(assert (=> bm!69089 (= call!69095 call!69096)))

(declare-fun mapIsEmpty!58591 () Bool)

(declare-fun mapRes!58591 () Bool)

(assert (=> mapIsEmpty!58591 mapRes!58591))

(declare-datatypes ((array!103023 0))(
  ( (array!103024 (arr!49709 (Array (_ BitVec 32) (_ BitVec 64))) (size!50260 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103023)

(declare-fun zeroValue!436 () V!59009)

(declare-fun call!69094 () ListLongMap!22229)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69090 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18052 0))(
  ( (ValueCellFull!18052 (v!21838 V!59009)) (EmptyCell!18052) )
))
(declare-datatypes ((array!103025 0))(
  ( (array!103026 (arr!49710 (Array (_ BitVec 32) ValueCell!18052)) (size!50261 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103025)

(declare-fun minValue!436 () V!59009)

(declare-fun getCurrentListMapNoExtraKeys!6579 (array!103023 array!103025 (_ BitVec 32) (_ BitVec 32) V!59009 V!59009 (_ BitVec 32) Int) ListLongMap!22229)

(assert (=> bm!69090 (= call!69094 (getCurrentListMapNoExtraKeys!6579 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544893 () Bool)

(declare-fun e!859942 () ListLongMap!22229)

(declare-fun call!69093 () ListLongMap!22229)

(assert (=> b!1544893 (= e!859942 call!69093)))

(declare-fun b!1544894 () Bool)

(declare-fun e!859943 () Bool)

(assert (=> b!1544894 (= e!859943 false)))

(declare-fun lt!666143 () ListLongMap!22229)

(assert (=> b!1544894 (= lt!666143 e!859938)))

(declare-fun c!141484 () Bool)

(assert (=> b!1544894 (= c!141484 (and (not lt!666142) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544894 (= lt!666142 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69091 () Bool)

(declare-fun call!69092 () ListLongMap!22229)

(declare-fun +!4862 (ListLongMap!22229 tuple2!24608) ListLongMap!22229)

(assert (=> bm!69091 (= call!69096 (+!4862 (ite c!141484 call!69094 (ite c!141483 call!69092 call!69093)) (ite (or c!141484 c!141483) (tuple2!24609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544896 () Bool)

(declare-fun res!1059635 () Bool)

(assert (=> b!1544896 (=> (not res!1059635) (not e!859943))))

(declare-datatypes ((List!36128 0))(
  ( (Nil!36125) (Cons!36124 (h!37570 (_ BitVec 64)) (t!50829 List!36128)) )
))
(declare-fun arrayNoDuplicates!0 (array!103023 (_ BitVec 32) List!36128) Bool)

(assert (=> b!1544896 (= res!1059635 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36125))))

(declare-fun b!1544897 () Bool)

(declare-fun e!859945 () Bool)

(declare-fun e!859944 () Bool)

(assert (=> b!1544897 (= e!859945 (and e!859944 mapRes!58591))))

(declare-fun condMapEmpty!58591 () Bool)

(declare-fun mapDefault!58591 () ValueCell!18052)

