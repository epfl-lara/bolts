; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99572 () Bool)

(assert start!99572)

(declare-fun b_free!25115 () Bool)

(declare-fun b_next!25115 () Bool)

(assert (=> start!99572 (= b_free!25115 (not b_next!25115))))

(declare-fun tp!88059 () Bool)

(declare-fun b_and!41111 () Bool)

(assert (=> start!99572 (= tp!88059 b_and!41111)))

(declare-fun b!1177516 () Bool)

(declare-fun e!669431 () Bool)

(declare-fun e!669427 () Bool)

(assert (=> b!1177516 (= e!669431 e!669427)))

(declare-fun res!782275 () Bool)

(assert (=> b!1177516 (=> res!782275 e!669427)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177516 (= res!782275 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44653 0))(
  ( (V!44654 (val!14879 Int)) )
))
(declare-fun zeroValue!944 () V!44653)

(declare-datatypes ((ValueCell!14113 0))(
  ( (ValueCellFull!14113 (v!17518 V!44653)) (EmptyCell!14113) )
))
(declare-datatypes ((array!76064 0))(
  ( (array!76065 (arr!36678 (Array (_ BitVec 32) ValueCell!14113)) (size!37215 (_ BitVec 32))) )
))
(declare-fun lt!531704 () array!76064)

(declare-datatypes ((array!76066 0))(
  ( (array!76067 (arr!36679 (Array (_ BitVec 32) (_ BitVec 64))) (size!37216 (_ BitVec 32))) )
))
(declare-fun lt!531710 () array!76066)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19154 0))(
  ( (tuple2!19155 (_1!9587 (_ BitVec 64)) (_2!9587 V!44653)) )
))
(declare-datatypes ((List!25921 0))(
  ( (Nil!25918) (Cons!25917 (h!27126 tuple2!19154) (t!38035 List!25921)) )
))
(declare-datatypes ((ListLongMap!17135 0))(
  ( (ListLongMap!17136 (toList!8583 List!25921)) )
))
(declare-fun lt!531711 () ListLongMap!17135)

(declare-fun minValue!944 () V!44653)

(declare-fun getCurrentListMapNoExtraKeys!5014 (array!76066 array!76064 (_ BitVec 32) (_ BitVec 32) V!44653 V!44653 (_ BitVec 32) Int) ListLongMap!17135)

(assert (=> b!1177516 (= lt!531711 (getCurrentListMapNoExtraKeys!5014 lt!531710 lt!531704 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531708 () V!44653)

(declare-fun _values!996 () array!76064)

(assert (=> b!1177516 (= lt!531704 (array!76065 (store (arr!36678 _values!996) i!673 (ValueCellFull!14113 lt!531708)) (size!37215 _values!996)))))

(declare-fun dynLambda!2990 (Int (_ BitVec 64)) V!44653)

(assert (=> b!1177516 (= lt!531708 (dynLambda!2990 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76066)

(declare-fun lt!531714 () ListLongMap!17135)

(assert (=> b!1177516 (= lt!531714 (getCurrentListMapNoExtraKeys!5014 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177517 () Bool)

(declare-fun res!782272 () Bool)

(declare-fun e!669433 () Bool)

(assert (=> b!1177517 (=> (not res!782272) (not e!669433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177517 (= res!782272 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46295 () Bool)

(declare-fun mapRes!46295 () Bool)

(declare-fun tp!88060 () Bool)

(declare-fun e!669425 () Bool)

(assert (=> mapNonEmpty!46295 (= mapRes!46295 (and tp!88060 e!669425))))

(declare-fun mapKey!46295 () (_ BitVec 32))

(declare-fun mapRest!46295 () (Array (_ BitVec 32) ValueCell!14113))

(declare-fun mapValue!46295 () ValueCell!14113)

(assert (=> mapNonEmpty!46295 (= (arr!36678 _values!996) (store mapRest!46295 mapKey!46295 mapValue!46295))))

(declare-fun res!782277 () Bool)

(assert (=> start!99572 (=> (not res!782277) (not e!669433))))

(assert (=> start!99572 (= res!782277 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37216 _keys!1208))))))

(assert (=> start!99572 e!669433))

(declare-fun tp_is_empty!29645 () Bool)

(assert (=> start!99572 tp_is_empty!29645))

(declare-fun array_inv!27900 (array!76066) Bool)

(assert (=> start!99572 (array_inv!27900 _keys!1208)))

(assert (=> start!99572 true))

(assert (=> start!99572 tp!88059))

(declare-fun e!669428 () Bool)

(declare-fun array_inv!27901 (array!76064) Bool)

(assert (=> start!99572 (and (array_inv!27901 _values!996) e!669428)))

(declare-fun b!1177518 () Bool)

(declare-fun e!669422 () Bool)

(declare-fun e!669423 () Bool)

(assert (=> b!1177518 (= e!669422 e!669423)))

(declare-fun res!782268 () Bool)

(assert (=> b!1177518 (=> res!782268 e!669423)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1177518 (= res!782268 (not (= (select (arr!36679 _keys!1208) from!1455) k!934)))))

(declare-fun b!1177519 () Bool)

(declare-fun lt!531700 () tuple2!19154)

(declare-fun e!669432 () Bool)

(declare-fun lt!531713 () ListLongMap!17135)

(declare-fun +!3806 (ListLongMap!17135 tuple2!19154) ListLongMap!17135)

(assert (=> b!1177519 (= e!669432 (= lt!531714 (+!3806 lt!531713 lt!531700)))))

(declare-fun b!1177520 () Bool)

(assert (=> b!1177520 (= e!669425 tp_is_empty!29645)))

(declare-fun b!1177521 () Bool)

(declare-fun res!782270 () Bool)

(assert (=> b!1177521 (=> (not res!782270) (not e!669433))))

(assert (=> b!1177521 (= res!782270 (= (select (arr!36679 _keys!1208) i!673) k!934))))

(declare-fun b!1177522 () Bool)

(declare-fun res!782266 () Bool)

(assert (=> b!1177522 (=> (not res!782266) (not e!669433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177522 (= res!782266 (validKeyInArray!0 k!934))))

(declare-fun b!1177523 () Bool)

(declare-fun e!669430 () Bool)

(assert (=> b!1177523 (= e!669428 (and e!669430 mapRes!46295))))

(declare-fun condMapEmpty!46295 () Bool)

(declare-fun mapDefault!46295 () ValueCell!14113)

