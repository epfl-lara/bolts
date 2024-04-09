; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97478 () Bool)

(assert start!97478)

(declare-fun b_free!23413 () Bool)

(declare-fun b_next!23413 () Bool)

(assert (=> start!97478 (= b_free!23413 (not b_next!23413))))

(declare-fun tp!82538 () Bool)

(declare-fun b_and!37683 () Bool)

(assert (=> start!97478 (= tp!82538 b_and!37683)))

(declare-fun b!1111693 () Bool)

(declare-fun res!741941 () Bool)

(declare-fun e!633932 () Bool)

(assert (=> b!1111693 (=> (not res!741941) (not e!633932))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72206 0))(
  ( (array!72207 (arr!34752 (Array (_ BitVec 32) (_ BitVec 64))) (size!35289 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72206)

(assert (=> b!1111693 (= res!741941 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35289 _keys!1208))))))

(declare-fun b!1111694 () Bool)

(declare-fun res!741938 () Bool)

(assert (=> b!1111694 (=> (not res!741938) (not e!633932))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42025 0))(
  ( (V!42026 (val!13893 Int)) )
))
(declare-datatypes ((ValueCell!13127 0))(
  ( (ValueCellFull!13127 (v!16527 V!42025)) (EmptyCell!13127) )
))
(declare-datatypes ((array!72208 0))(
  ( (array!72209 (arr!34753 (Array (_ BitVec 32) ValueCell!13127)) (size!35290 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72208)

(assert (=> b!1111694 (= res!741938 (and (= (size!35290 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35289 _keys!1208) (size!35290 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111695 () Bool)

(declare-fun e!633928 () Bool)

(assert (=> b!1111695 (= e!633928 true)))

(declare-fun e!633935 () Bool)

(assert (=> b!1111695 e!633935))

(declare-fun c!109271 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1111695 (= c!109271 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42025)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!42025)

(declare-datatypes ((Unit!36395 0))(
  ( (Unit!36396) )
))
(declare-fun lt!496373 () Unit!36395)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!303 (array!72206 array!72208 (_ BitVec 32) (_ BitVec 32) V!42025 V!42025 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36395)

(assert (=> b!1111695 (= lt!496373 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!303 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!741940 () Bool)

(assert (=> start!97478 (=> (not res!741940) (not e!633932))))

(assert (=> start!97478 (= res!741940 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35289 _keys!1208))))))

(assert (=> start!97478 e!633932))

(declare-fun tp_is_empty!27673 () Bool)

(assert (=> start!97478 tp_is_empty!27673))

(declare-fun array_inv!26596 (array!72206) Bool)

(assert (=> start!97478 (array_inv!26596 _keys!1208)))

(assert (=> start!97478 true))

(assert (=> start!97478 tp!82538))

(declare-fun e!633929 () Bool)

(declare-fun array_inv!26597 (array!72208) Bool)

(assert (=> start!97478 (and (array_inv!26597 _values!996) e!633929)))

(declare-fun b!1111696 () Bool)

(declare-fun res!741947 () Bool)

(declare-fun e!633931 () Bool)

(assert (=> b!1111696 (=> (not res!741947) (not e!633931))))

(declare-fun lt!496374 () array!72206)

(declare-datatypes ((List!24379 0))(
  ( (Nil!24376) (Cons!24375 (h!25584 (_ BitVec 64)) (t!34845 List!24379)) )
))
(declare-fun arrayNoDuplicates!0 (array!72206 (_ BitVec 32) List!24379) Bool)

(assert (=> b!1111696 (= res!741947 (arrayNoDuplicates!0 lt!496374 #b00000000000000000000000000000000 Nil!24376))))

(declare-fun b!1111697 () Bool)

(declare-fun e!633930 () Bool)

(declare-fun mapRes!43327 () Bool)

(assert (=> b!1111697 (= e!633929 (and e!633930 mapRes!43327))))

(declare-fun condMapEmpty!43327 () Bool)

(declare-fun mapDefault!43327 () ValueCell!13127)

