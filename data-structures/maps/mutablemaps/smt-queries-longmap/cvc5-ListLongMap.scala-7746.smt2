; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97256 () Bool)

(assert start!97256)

(declare-fun b!1106254 () Bool)

(declare-fun res!738326 () Bool)

(declare-fun e!631327 () Bool)

(assert (=> b!1106254 (=> (not res!738326) (not e!631327))))

(declare-datatypes ((array!71772 0))(
  ( (array!71773 (arr!34535 (Array (_ BitVec 32) (_ BitVec 64))) (size!35072 (_ BitVec 32))) )
))
(declare-fun lt!495416 () array!71772)

(declare-datatypes ((List!24212 0))(
  ( (Nil!24209) (Cons!24208 (h!25417 (_ BitVec 64)) (t!34484 List!24212)) )
))
(declare-fun arrayNoDuplicates!0 (array!71772 (_ BitVec 32) List!24212) Bool)

(assert (=> b!1106254 (= res!738326 (arrayNoDuplicates!0 lt!495416 #b00000000000000000000000000000000 Nil!24209))))

(declare-fun b!1106255 () Bool)

(declare-fun res!738325 () Bool)

(declare-fun e!631330 () Bool)

(assert (=> b!1106255 (=> (not res!738325) (not e!631330))))

(declare-fun _keys!1208 () array!71772)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41729 0))(
  ( (V!41730 (val!13782 Int)) )
))
(declare-datatypes ((ValueCell!13016 0))(
  ( (ValueCellFull!13016 (v!16416 V!41729)) (EmptyCell!13016) )
))
(declare-datatypes ((array!71774 0))(
  ( (array!71775 (arr!34536 (Array (_ BitVec 32) ValueCell!13016)) (size!35073 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71774)

(assert (=> b!1106255 (= res!738325 (and (= (size!35073 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35072 _keys!1208) (size!35073 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42994 () Bool)

(declare-fun mapRes!42994 () Bool)

(declare-fun tp!81915 () Bool)

(declare-fun e!631331 () Bool)

(assert (=> mapNonEmpty!42994 (= mapRes!42994 (and tp!81915 e!631331))))

(declare-fun mapValue!42994 () ValueCell!13016)

(declare-fun mapKey!42994 () (_ BitVec 32))

(declare-fun mapRest!42994 () (Array (_ BitVec 32) ValueCell!13016))

(assert (=> mapNonEmpty!42994 (= (arr!34536 _values!996) (store mapRest!42994 mapKey!42994 mapValue!42994))))

(declare-fun b!1106256 () Bool)

(declare-fun e!631328 () Bool)

(declare-fun tp_is_empty!27451 () Bool)

(assert (=> b!1106256 (= e!631328 tp_is_empty!27451)))

(declare-fun b!1106257 () Bool)

(declare-fun res!738318 () Bool)

(assert (=> b!1106257 (=> (not res!738318) (not e!631330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71772 (_ BitVec 32)) Bool)

(assert (=> b!1106257 (= res!738318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106258 () Bool)

(declare-fun res!738323 () Bool)

(assert (=> b!1106258 (=> (not res!738323) (not e!631330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106258 (= res!738323 (validMask!0 mask!1564))))

(declare-fun b!1106259 () Bool)

(declare-fun res!738327 () Bool)

(assert (=> b!1106259 (=> (not res!738327) (not e!631330))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1106259 (= res!738327 (= (select (arr!34535 _keys!1208) i!673) k!934))))

(declare-fun b!1106260 () Bool)

(assert (=> b!1106260 (= e!631331 tp_is_empty!27451)))

(declare-fun b!1106261 () Bool)

(assert (=> b!1106261 (= e!631330 e!631327)))

(declare-fun res!738319 () Bool)

(assert (=> b!1106261 (=> (not res!738319) (not e!631327))))

(assert (=> b!1106261 (= res!738319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495416 mask!1564))))

(assert (=> b!1106261 (= lt!495416 (array!71773 (store (arr!34535 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35072 _keys!1208)))))

(declare-fun b!1106262 () Bool)

(assert (=> b!1106262 (= e!631327 (not true))))

(declare-fun arrayContainsKey!0 (array!71772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106262 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36241 0))(
  ( (Unit!36242) )
))
(declare-fun lt!495417 () Unit!36241)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71772 (_ BitVec 64) (_ BitVec 32)) Unit!36241)

(assert (=> b!1106262 (= lt!495417 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106263 () Bool)

(declare-fun e!631326 () Bool)

(assert (=> b!1106263 (= e!631326 (and e!631328 mapRes!42994))))

(declare-fun condMapEmpty!42994 () Bool)

(declare-fun mapDefault!42994 () ValueCell!13016)

