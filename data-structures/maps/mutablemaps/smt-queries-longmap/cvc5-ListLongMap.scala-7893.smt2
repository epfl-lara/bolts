; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98138 () Bool)

(assert start!98138)

(declare-fun b_free!23803 () Bool)

(declare-fun b_next!23803 () Bool)

(assert (=> start!98138 (= b_free!23803 (not b_next!23803))))

(declare-fun tp!84114 () Bool)

(declare-fun b_and!38411 () Bool)

(assert (=> start!98138 (= tp!84114 b_and!38411)))

(declare-fun b!1127057 () Bool)

(declare-fun res!753231 () Bool)

(declare-fun e!641542 () Bool)

(assert (=> b!1127057 (=> (not res!753231) (not e!641542))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127057 (= res!753231 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44317 () Bool)

(declare-fun mapRes!44317 () Bool)

(assert (=> mapIsEmpty!44317 mapRes!44317))

(declare-fun b!1127058 () Bool)

(declare-fun e!641541 () Bool)

(declare-fun e!641535 () Bool)

(assert (=> b!1127058 (= e!641541 e!641535)))

(declare-fun res!753240 () Bool)

(assert (=> b!1127058 (=> res!753240 e!641535)))

(declare-datatypes ((array!73486 0))(
  ( (array!73487 (arr!35392 (Array (_ BitVec 32) (_ BitVec 64))) (size!35929 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73486)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1127058 (= res!753240 (not (= (select (arr!35392 _keys!1208) from!1455) k!934)))))

(declare-fun e!641540 () Bool)

(assert (=> b!1127058 e!641540))

(declare-fun c!109655 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127058 (= c!109655 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42905 0))(
  ( (V!42906 (val!14223 Int)) )
))
(declare-fun zeroValue!944 () V!42905)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36879 0))(
  ( (Unit!36880) )
))
(declare-fun lt!500430 () Unit!36879)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13457 0))(
  ( (ValueCellFull!13457 (v!16857 V!42905)) (EmptyCell!13457) )
))
(declare-datatypes ((array!73488 0))(
  ( (array!73489 (arr!35393 (Array (_ BitVec 32) ValueCell!13457)) (size!35930 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73488)

(declare-fun minValue!944 () V!42905)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!388 (array!73486 array!73488 (_ BitVec 32) (_ BitVec 32) V!42905 V!42905 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36879)

(assert (=> b!1127058 (= lt!500430 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!388 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127059 () Bool)

(declare-fun res!753236 () Bool)

(assert (=> b!1127059 (=> (not res!753236) (not e!641542))))

(assert (=> b!1127059 (= res!753236 (and (= (size!35930 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35929 _keys!1208) (size!35930 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127060 () Bool)

(declare-fun e!641539 () Bool)

(declare-fun e!641538 () Bool)

(assert (=> b!1127060 (= e!641539 (and e!641538 mapRes!44317))))

(declare-fun condMapEmpty!44317 () Bool)

(declare-fun mapDefault!44317 () ValueCell!13457)

