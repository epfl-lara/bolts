; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131928 () Bool)

(assert start!131928)

(declare-fun b_free!31609 () Bool)

(declare-fun b_next!31609 () Bool)

(assert (=> start!131928 (= b_free!31609 (not b_next!31609))))

(declare-fun tp!111080 () Bool)

(declare-fun b_and!51029 () Bool)

(assert (=> start!131928 (= tp!111080 b_and!51029)))

(declare-fun mapIsEmpty!58531 () Bool)

(declare-fun mapRes!58531 () Bool)

(assert (=> mapIsEmpty!58531 mapRes!58531))

(declare-fun b!1544052 () Bool)

(declare-fun e!859461 () Bool)

(declare-fun tp_is_empty!37885 () Bool)

(assert (=> b!1544052 (= e!859461 tp_is_empty!37885)))

(declare-fun b!1544053 () Bool)

(declare-datatypes ((V!58957 0))(
  ( (V!58958 (val!19020 Int)) )
))
(declare-datatypes ((tuple2!24570 0))(
  ( (tuple2!24571 (_1!12295 (_ BitVec 64)) (_2!12295 V!58957)) )
))
(declare-datatypes ((List!36092 0))(
  ( (Nil!36089) (Cons!36088 (h!37534 tuple2!24570) (t!50793 List!36092)) )
))
(declare-datatypes ((ListLongMap!22191 0))(
  ( (ListLongMap!22192 (toList!11111 List!36092)) )
))
(declare-fun e!859460 () ListLongMap!22191)

(declare-fun call!68792 () ListLongMap!22191)

(assert (=> b!1544053 (= e!859460 call!68792)))

(declare-fun bm!68789 () Bool)

(declare-fun call!68795 () ListLongMap!22191)

(assert (=> bm!68789 (= call!68792 call!68795)))

(declare-fun b!1544054 () Bool)

(declare-fun e!859459 () ListLongMap!22191)

(assert (=> b!1544054 (= e!859459 e!859460)))

(declare-fun c!141303 () Bool)

(declare-fun lt!666023 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544054 (= c!141303 (and (not lt!666023) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!58531 () Bool)

(declare-fun tp!111079 () Bool)

(declare-fun e!859458 () Bool)

(assert (=> mapNonEmpty!58531 (= mapRes!58531 (and tp!111079 e!859458))))

(declare-fun mapKey!58531 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18032 0))(
  ( (ValueCellFull!18032 (v!21818 V!58957)) (EmptyCell!18032) )
))
(declare-datatypes ((array!102943 0))(
  ( (array!102944 (arr!49669 (Array (_ BitVec 32) ValueCell!18032)) (size!50220 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102943)

(declare-fun mapValue!58531 () ValueCell!18032)

(declare-fun mapRest!58531 () (Array (_ BitVec 32) ValueCell!18032))

(assert (=> mapNonEmpty!58531 (= (arr!49669 _values!470) (store mapRest!58531 mapKey!58531 mapValue!58531))))

(declare-fun b!1544055 () Bool)

(declare-fun minValue!436 () V!58957)

(declare-fun +!4848 (ListLongMap!22191 tuple2!24570) ListLongMap!22191)

(assert (=> b!1544055 (= e!859459 (+!4848 call!68795 (tuple2!24571 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544056 () Bool)

(declare-fun e!859463 () ListLongMap!22191)

(assert (=> b!1544056 (= e!859463 call!68792)))

(declare-fun res!1059338 () Bool)

(declare-fun e!859465 () Bool)

(assert (=> start!131928 (=> (not res!1059338) (not e!859465))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131928 (= res!1059338 (validMask!0 mask!926))))

(assert (=> start!131928 e!859465))

(declare-datatypes ((array!102945 0))(
  ( (array!102946 (arr!49670 (Array (_ BitVec 32) (_ BitVec 64))) (size!50221 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102945)

(declare-fun array_inv!38561 (array!102945) Bool)

(assert (=> start!131928 (array_inv!38561 _keys!618)))

(assert (=> start!131928 tp_is_empty!37885))

(assert (=> start!131928 true))

(assert (=> start!131928 tp!111080))

(declare-fun e!859464 () Bool)

(declare-fun array_inv!38562 (array!102943) Bool)

(assert (=> start!131928 (and (array_inv!38562 _values!470) e!859464)))

(declare-fun b!1544057 () Bool)

(assert (=> b!1544057 (= e!859465 false)))

(declare-fun lt!666022 () ListLongMap!22191)

(assert (=> b!1544057 (= lt!666022 e!859459)))

(declare-fun c!141304 () Bool)

(assert (=> b!1544057 (= c!141304 (and (not lt!666023) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544057 (= lt!666023 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544058 () Bool)

(declare-fun res!1059335 () Bool)

(assert (=> b!1544058 (=> (not res!1059335) (not e!859465))))

(declare-datatypes ((List!36093 0))(
  ( (Nil!36090) (Cons!36089 (h!37535 (_ BitVec 64)) (t!50794 List!36093)) )
))
(declare-fun arrayNoDuplicates!0 (array!102945 (_ BitVec 32) List!36093) Bool)

(assert (=> b!1544058 (= res!1059335 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36090))))

(declare-fun b!1544059 () Bool)

(assert (=> b!1544059 (= e!859458 tp_is_empty!37885)))

(declare-fun bm!68790 () Bool)

(declare-fun call!68796 () ListLongMap!22191)

(declare-fun call!68794 () ListLongMap!22191)

(assert (=> bm!68790 (= call!68796 call!68794)))

(declare-fun zeroValue!436 () V!58957)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68791 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6562 (array!102945 array!102943 (_ BitVec 32) (_ BitVec 32) V!58957 V!58957 (_ BitVec 32) Int) ListLongMap!22191)

(assert (=> bm!68791 (= call!68794 (getCurrentListMapNoExtraKeys!6562 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544060 () Bool)

(assert (=> b!1544060 (= e!859464 (and e!859461 mapRes!58531))))

(declare-fun condMapEmpty!58531 () Bool)

(declare-fun mapDefault!58531 () ValueCell!18032)

