; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97988 () Bool)

(assert start!97988)

(declare-fun b_free!23653 () Bool)

(declare-fun b_next!23653 () Bool)

(assert (=> start!97988 (= b_free!23653 (not b_next!23653))))

(declare-fun tp!83663 () Bool)

(declare-fun b_and!38111 () Bool)

(assert (=> start!97988 (= tp!83663 b_and!38111)))

(declare-fun b!1122659 () Bool)

(declare-fun res!750114 () Bool)

(declare-fun e!639196 () Bool)

(assert (=> b!1122659 (=> (not res!750114) (not e!639196))))

(declare-datatypes ((array!73192 0))(
  ( (array!73193 (arr!35245 (Array (_ BitVec 32) (_ BitVec 64))) (size!35782 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73192)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42705 0))(
  ( (V!42706 (val!14148 Int)) )
))
(declare-datatypes ((ValueCell!13382 0))(
  ( (ValueCellFull!13382 (v!16782 V!42705)) (EmptyCell!13382) )
))
(declare-datatypes ((array!73194 0))(
  ( (array!73195 (arr!35246 (Array (_ BitVec 32) ValueCell!13382)) (size!35783 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73194)

(assert (=> b!1122659 (= res!750114 (and (= (size!35783 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35782 _keys!1208) (size!35783 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122660 () Bool)

(declare-fun e!639198 () Bool)

(assert (=> b!1122660 (= e!639196 e!639198)))

(declare-fun res!750116 () Bool)

(assert (=> b!1122660 (=> (not res!750116) (not e!639198))))

(declare-fun lt!498786 () array!73192)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73192 (_ BitVec 32)) Bool)

(assert (=> b!1122660 (= res!750116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498786 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122660 (= lt!498786 (array!73193 (store (arr!35245 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35782 _keys!1208)))))

(declare-fun b!1122661 () Bool)

(declare-fun e!639201 () Bool)

(declare-fun e!639200 () Bool)

(assert (=> b!1122661 (= e!639201 e!639200)))

(declare-fun res!750109 () Bool)

(assert (=> b!1122661 (=> res!750109 e!639200)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1122661 (= res!750109 (not (= (select (arr!35245 _keys!1208) from!1455) k!934)))))

(declare-fun e!639197 () Bool)

(assert (=> b!1122661 e!639197))

(declare-fun c!109430 () Bool)

(assert (=> b!1122661 (= c!109430 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42705)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42705)

(declare-datatypes ((Unit!36755 0))(
  ( (Unit!36756) )
))
(declare-fun lt!498787 () Unit!36755)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!337 (array!73192 array!73194 (_ BitVec 32) (_ BitVec 32) V!42705 V!42705 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36755)

(assert (=> b!1122661 (= lt!498787 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122662 () Bool)

(declare-fun e!639194 () Bool)

(declare-fun e!639199 () Bool)

(declare-fun mapRes!44092 () Bool)

(assert (=> b!1122662 (= e!639194 (and e!639199 mapRes!44092))))

(declare-fun condMapEmpty!44092 () Bool)

(declare-fun mapDefault!44092 () ValueCell!13382)

