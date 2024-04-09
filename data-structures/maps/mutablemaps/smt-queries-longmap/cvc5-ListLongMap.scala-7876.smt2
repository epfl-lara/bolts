; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98036 () Bool)

(assert start!98036)

(declare-fun b_free!23701 () Bool)

(declare-fun b_next!23701 () Bool)

(assert (=> start!98036 (= b_free!23701 (not b_next!23701))))

(declare-fun tp!83808 () Bool)

(declare-fun b_and!38207 () Bool)

(assert (=> start!98036 (= tp!83808 b_and!38207)))

(declare-fun res!751097 () Bool)

(declare-fun e!639939 () Bool)

(assert (=> start!98036 (=> (not res!751097) (not e!639939))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73288 0))(
  ( (array!73289 (arr!35293 (Array (_ BitVec 32) (_ BitVec 64))) (size!35830 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73288)

(assert (=> start!98036 (= res!751097 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35830 _keys!1208))))))

(assert (=> start!98036 e!639939))

(declare-fun tp_is_empty!28231 () Bool)

(assert (=> start!98036 tp_is_empty!28231))

(declare-fun array_inv!26964 (array!73288) Bool)

(assert (=> start!98036 (array_inv!26964 _keys!1208)))

(assert (=> start!98036 true))

(assert (=> start!98036 tp!83808))

(declare-datatypes ((V!42769 0))(
  ( (V!42770 (val!14172 Int)) )
))
(declare-datatypes ((ValueCell!13406 0))(
  ( (ValueCellFull!13406 (v!16806 V!42769)) (EmptyCell!13406) )
))
(declare-datatypes ((array!73290 0))(
  ( (array!73291 (arr!35294 (Array (_ BitVec 32) ValueCell!13406)) (size!35831 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73290)

(declare-fun e!639934 () Bool)

(declare-fun array_inv!26965 (array!73290) Bool)

(assert (=> start!98036 (and (array_inv!26965 _values!996) e!639934)))

(declare-fun b!1124052 () Bool)

(declare-fun e!639938 () Bool)

(assert (=> b!1124052 (= e!639939 e!639938)))

(declare-fun res!751094 () Bool)

(assert (=> b!1124052 (=> (not res!751094) (not e!639938))))

(declare-fun lt!499303 () array!73288)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73288 (_ BitVec 32)) Bool)

(assert (=> b!1124052 (= res!751094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499303 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124052 (= lt!499303 (array!73289 (store (arr!35293 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35830 _keys!1208)))))

(declare-fun b!1124053 () Bool)

(declare-fun e!639941 () Bool)

(declare-fun e!639944 () Bool)

(assert (=> b!1124053 (= e!639941 e!639944)))

(declare-fun res!751099 () Bool)

(assert (=> b!1124053 (=> res!751099 e!639944)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1124053 (= res!751099 (not (= (select (arr!35293 _keys!1208) from!1455) k!934)))))

(declare-fun e!639942 () Bool)

(assert (=> b!1124053 e!639942))

(declare-fun c!109502 () Bool)

(assert (=> b!1124053 (= c!109502 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42769)

(declare-fun zeroValue!944 () V!42769)

(declare-datatypes ((Unit!36791 0))(
  ( (Unit!36792) )
))
(declare-fun lt!499302 () Unit!36791)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!352 (array!73288 array!73290 (_ BitVec 32) (_ BitVec 32) V!42769 V!42769 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36791)

(assert (=> b!1124053 (= lt!499302 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124054 () Bool)

(declare-fun e!639943 () Bool)

(assert (=> b!1124054 (= e!639943 e!639941)))

(declare-fun res!751104 () Bool)

(assert (=> b!1124054 (=> res!751104 e!639941)))

(assert (=> b!1124054 (= res!751104 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!17880 0))(
  ( (tuple2!17881 (_1!8950 (_ BitVec 64)) (_2!8950 V!42769)) )
))
(declare-datatypes ((List!24713 0))(
  ( (Nil!24710) (Cons!24709 (h!25918 tuple2!17880) (t!35413 List!24713)) )
))
(declare-datatypes ((ListLongMap!15861 0))(
  ( (ListLongMap!15862 (toList!7946 List!24713)) )
))
(declare-fun lt!499300 () ListLongMap!15861)

(declare-fun lt!499298 () array!73290)

(declare-fun getCurrentListMapNoExtraKeys!4405 (array!73288 array!73290 (_ BitVec 32) (_ BitVec 32) V!42769 V!42769 (_ BitVec 32) Int) ListLongMap!15861)

(assert (=> b!1124054 (= lt!499300 (getCurrentListMapNoExtraKeys!4405 lt!499303 lt!499298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2496 (Int (_ BitVec 64)) V!42769)

(assert (=> b!1124054 (= lt!499298 (array!73291 (store (arr!35294 _values!996) i!673 (ValueCellFull!13406 (dynLambda!2496 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35831 _values!996)))))

(declare-fun lt!499304 () ListLongMap!15861)

(assert (=> b!1124054 (= lt!499304 (getCurrentListMapNoExtraKeys!4405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124055 () Bool)

(declare-fun e!639937 () Bool)

(declare-fun mapRes!44164 () Bool)

(assert (=> b!1124055 (= e!639934 (and e!639937 mapRes!44164))))

(declare-fun condMapEmpty!44164 () Bool)

(declare-fun mapDefault!44164 () ValueCell!13406)

