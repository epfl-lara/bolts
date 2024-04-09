; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97994 () Bool)

(assert start!97994)

(declare-fun b_free!23659 () Bool)

(declare-fun b_next!23659 () Bool)

(assert (=> start!97994 (= b_free!23659 (not b_next!23659))))

(declare-fun tp!83681 () Bool)

(declare-fun b_and!38123 () Bool)

(assert (=> start!97994 (= tp!83681 b_and!38123)))

(declare-fun b!1122828 () Bool)

(declare-fun res!750232 () Bool)

(declare-fun e!639287 () Bool)

(assert (=> b!1122828 (=> (not res!750232) (not e!639287))))

(declare-datatypes ((array!73204 0))(
  ( (array!73205 (arr!35251 (Array (_ BitVec 32) (_ BitVec 64))) (size!35788 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73204)

(declare-datatypes ((List!24674 0))(
  ( (Nil!24671) (Cons!24670 (h!25879 (_ BitVec 64)) (t!35332 List!24674)) )
))
(declare-fun arrayNoDuplicates!0 (array!73204 (_ BitVec 32) List!24674) Bool)

(assert (=> b!1122828 (= res!750232 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24671))))

(declare-fun b!1122829 () Bool)

(declare-fun res!750231 () Bool)

(assert (=> b!1122829 (=> (not res!750231) (not e!639287))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73204 (_ BitVec 32)) Bool)

(assert (=> b!1122829 (= res!750231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122830 () Bool)

(declare-fun res!750229 () Bool)

(assert (=> b!1122830 (=> (not res!750229) (not e!639287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122830 (= res!750229 (validMask!0 mask!1564))))

(declare-fun b!1122831 () Bool)

(declare-fun e!639289 () Bool)

(assert (=> b!1122831 (= e!639289 true)))

(declare-datatypes ((V!42713 0))(
  ( (V!42714 (val!14151 Int)) )
))
(declare-fun zeroValue!944 () V!42713)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!498848 () Bool)

(declare-datatypes ((ValueCell!13385 0))(
  ( (ValueCellFull!13385 (v!16785 V!42713)) (EmptyCell!13385) )
))
(declare-datatypes ((array!73206 0))(
  ( (array!73207 (arr!35252 (Array (_ BitVec 32) ValueCell!13385)) (size!35789 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73206)

(declare-fun minValue!944 () V!42713)

(declare-datatypes ((tuple2!17840 0))(
  ( (tuple2!17841 (_1!8930 (_ BitVec 64)) (_2!8930 V!42713)) )
))
(declare-datatypes ((List!24675 0))(
  ( (Nil!24672) (Cons!24671 (h!25880 tuple2!17840) (t!35333 List!24675)) )
))
(declare-datatypes ((ListLongMap!15821 0))(
  ( (ListLongMap!15822 (toList!7926 List!24675)) )
))
(declare-fun contains!6443 (ListLongMap!15821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4386 (array!73204 array!73206 (_ BitVec 32) (_ BitVec 32) V!42713 V!42713 (_ BitVec 32) Int) ListLongMap!15821)

(assert (=> b!1122831 (= lt!498848 (contains!6443 (getCurrentListMapNoExtraKeys!4386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapIsEmpty!44101 () Bool)

(declare-fun mapRes!44101 () Bool)

(assert (=> mapIsEmpty!44101 mapRes!44101))

(declare-fun b!1122832 () Bool)

(declare-fun res!750223 () Bool)

(assert (=> b!1122832 (=> (not res!750223) (not e!639287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122832 (= res!750223 (validKeyInArray!0 k!934))))

(declare-fun b!1122833 () Bool)

(declare-fun call!47260 () ListLongMap!15821)

(declare-fun e!639288 () Bool)

(declare-fun call!47261 () ListLongMap!15821)

(declare-fun -!1087 (ListLongMap!15821 (_ BitVec 64)) ListLongMap!15821)

(assert (=> b!1122833 (= e!639288 (= call!47261 (-!1087 call!47260 k!934)))))

(declare-fun b!1122834 () Bool)

(declare-fun e!639284 () Bool)

(declare-fun e!639291 () Bool)

(assert (=> b!1122834 (= e!639284 (and e!639291 mapRes!44101))))

(declare-fun condMapEmpty!44101 () Bool)

(declare-fun mapDefault!44101 () ValueCell!13385)

