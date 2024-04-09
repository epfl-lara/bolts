; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98090 () Bool)

(assert start!98090)

(declare-fun b_free!23755 () Bool)

(declare-fun b_next!23755 () Bool)

(assert (=> start!98090 (= b_free!23755 (not b_next!23755))))

(declare-fun tp!83969 () Bool)

(declare-fun b_and!38315 () Bool)

(assert (=> start!98090 (= tp!83969 b_and!38315)))

(declare-fun b!1125704 () Bool)

(declare-fun res!752289 () Bool)

(declare-fun e!640819 () Bool)

(assert (=> b!1125704 (=> (not res!752289) (not e!640819))))

(declare-datatypes ((array!73392 0))(
  ( (array!73393 (arr!35345 (Array (_ BitVec 32) (_ BitVec 64))) (size!35882 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73392)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125704 (= res!752289 (= (select (arr!35345 _keys!1208) i!673) k!934))))

(declare-fun b!1125705 () Bool)

(declare-fun e!640818 () Bool)

(declare-fun e!640814 () Bool)

(assert (=> b!1125705 (= e!640818 e!640814)))

(declare-fun res!752290 () Bool)

(assert (=> b!1125705 (=> res!752290 e!640814)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1125705 (= res!752290 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42841 0))(
  ( (V!42842 (val!14199 Int)) )
))
(declare-fun zeroValue!944 () V!42841)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13433 0))(
  ( (ValueCellFull!13433 (v!16833 V!42841)) (EmptyCell!13433) )
))
(declare-datatypes ((array!73394 0))(
  ( (array!73395 (arr!35346 (Array (_ BitVec 32) ValueCell!13433)) (size!35883 (_ BitVec 32))) )
))
(declare-fun lt!499936 () array!73394)

(declare-datatypes ((tuple2!17930 0))(
  ( (tuple2!17931 (_1!8975 (_ BitVec 64)) (_2!8975 V!42841)) )
))
(declare-datatypes ((List!24758 0))(
  ( (Nil!24755) (Cons!24754 (h!25963 tuple2!17930) (t!35512 List!24758)) )
))
(declare-datatypes ((ListLongMap!15911 0))(
  ( (ListLongMap!15912 (toList!7971 List!24758)) )
))
(declare-fun lt!499940 () ListLongMap!15911)

(declare-fun lt!499937 () array!73392)

(declare-fun minValue!944 () V!42841)

(declare-fun getCurrentListMapNoExtraKeys!4430 (array!73392 array!73394 (_ BitVec 32) (_ BitVec 32) V!42841 V!42841 (_ BitVec 32) Int) ListLongMap!15911)

(assert (=> b!1125705 (= lt!499940 (getCurrentListMapNoExtraKeys!4430 lt!499937 lt!499936 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73394)

(declare-fun dynLambda!2514 (Int (_ BitVec 64)) V!42841)

(assert (=> b!1125705 (= lt!499936 (array!73395 (store (arr!35346 _values!996) i!673 (ValueCellFull!13433 (dynLambda!2514 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35883 _values!996)))))

(declare-fun lt!499938 () ListLongMap!15911)

(assert (=> b!1125705 (= lt!499938 (getCurrentListMapNoExtraKeys!4430 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125706 () Bool)

(declare-fun res!752287 () Bool)

(assert (=> b!1125706 (=> (not res!752287) (not e!640819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125706 (= res!752287 (validMask!0 mask!1564))))

(declare-fun b!1125708 () Bool)

(declare-fun res!752293 () Bool)

(assert (=> b!1125708 (=> (not res!752293) (not e!640819))))

(assert (=> b!1125708 (= res!752293 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35882 _keys!1208))))))

(declare-fun b!1125709 () Bool)

(declare-fun e!640816 () Bool)

(declare-fun e!640815 () Bool)

(declare-fun mapRes!44245 () Bool)

(assert (=> b!1125709 (= e!640816 (and e!640815 mapRes!44245))))

(declare-fun condMapEmpty!44245 () Bool)

(declare-fun mapDefault!44245 () ValueCell!13433)

