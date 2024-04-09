; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110758 () Bool)

(assert start!110758)

(declare-fun b_free!29557 () Bool)

(declare-fun b_next!29557 () Bool)

(assert (=> start!110758 (= b_free!29557 (not b_next!29557))))

(declare-fun tp!103993 () Bool)

(declare-fun b_and!47775 () Bool)

(assert (=> start!110758 (= tp!103993 b_and!47775)))

(declare-fun mapIsEmpty!54559 () Bool)

(declare-fun mapRes!54559 () Bool)

(assert (=> mapIsEmpty!54559 mapRes!54559))

(declare-fun b!1310270 () Bool)

(declare-fun e!747513 () Bool)

(declare-fun tp_is_empty!35287 () Bool)

(assert (=> b!1310270 (= e!747513 tp_is_empty!35287)))

(declare-fun b!1310271 () Bool)

(declare-fun e!747512 () Bool)

(assert (=> b!1310271 (= e!747512 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87529 0))(
  ( (array!87530 (arr!42240 (Array (_ BitVec 32) (_ BitVec 64))) (size!42791 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87529)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52153 0))(
  ( (V!52154 (val!17718 Int)) )
))
(declare-fun minValue!1296 () V!52153)

(declare-datatypes ((ValueCell!16745 0))(
  ( (ValueCellFull!16745 (v!20343 V!52153)) (EmptyCell!16745) )
))
(declare-datatypes ((array!87531 0))(
  ( (array!87532 (arr!42241 (Array (_ BitVec 32) ValueCell!16745)) (size!42792 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87531)

(declare-fun zeroValue!1296 () V!52153)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22994 0))(
  ( (tuple2!22995 (_1!11507 (_ BitVec 64)) (_2!11507 V!52153)) )
))
(declare-datatypes ((List!30159 0))(
  ( (Nil!30156) (Cons!30155 (h!31364 tuple2!22994) (t!43772 List!30159)) )
))
(declare-datatypes ((ListLongMap!20663 0))(
  ( (ListLongMap!20664 (toList!10347 List!30159)) )
))
(declare-fun contains!8433 (ListLongMap!20663 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5303 (array!87529 array!87531 (_ BitVec 32) (_ BitVec 32) V!52153 V!52153 (_ BitVec 32) Int) ListLongMap!20663)

(assert (=> b!1310271 (contains!8433 (getCurrentListMap!5303 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43280 0))(
  ( (Unit!43281) )
))
(declare-fun lt!585286 () Unit!43280)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!14 (array!87529 array!87531 (_ BitVec 32) (_ BitVec 32) V!52153 V!52153 (_ BitVec 64) (_ BitVec 32) Int) Unit!43280)

(assert (=> b!1310271 (= lt!585286 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!14 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310272 () Bool)

(declare-fun res!869928 () Bool)

(assert (=> b!1310272 (=> (not res!869928) (not e!747512))))

(assert (=> b!1310272 (= res!869928 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42791 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310273 () Bool)

(declare-fun res!869931 () Bool)

(assert (=> b!1310273 (=> (not res!869931) (not e!747512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310273 (= res!869931 (validKeyInArray!0 (select (arr!42240 _keys!1628) from!2020)))))

(declare-fun b!1310274 () Bool)

(declare-fun res!869933 () Bool)

(assert (=> b!1310274 (=> (not res!869933) (not e!747512))))

(declare-datatypes ((List!30160 0))(
  ( (Nil!30157) (Cons!30156 (h!31365 (_ BitVec 64)) (t!43773 List!30160)) )
))
(declare-fun arrayNoDuplicates!0 (array!87529 (_ BitVec 32) List!30160) Bool)

(assert (=> b!1310274 (= res!869933 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30157))))

(declare-fun b!1310275 () Bool)

(declare-fun e!747511 () Bool)

(assert (=> b!1310275 (= e!747511 tp_is_empty!35287)))

(declare-fun b!1310276 () Bool)

(declare-fun res!869935 () Bool)

(assert (=> b!1310276 (=> (not res!869935) (not e!747512))))

(assert (=> b!1310276 (= res!869935 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310277 () Bool)

(declare-fun res!869930 () Bool)

(assert (=> b!1310277 (=> (not res!869930) (not e!747512))))

(assert (=> b!1310277 (= res!869930 (and (= (size!42792 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42791 _keys!1628) (size!42792 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310278 () Bool)

(declare-fun res!869929 () Bool)

(assert (=> b!1310278 (=> (not res!869929) (not e!747512))))

(assert (=> b!1310278 (= res!869929 (not (= (select (arr!42240 _keys!1628) from!2020) k!1175)))))

(declare-fun res!869932 () Bool)

(assert (=> start!110758 (=> (not res!869932) (not e!747512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110758 (= res!869932 (validMask!0 mask!2040))))

(assert (=> start!110758 e!747512))

(assert (=> start!110758 tp!103993))

(declare-fun array_inv!31911 (array!87529) Bool)

(assert (=> start!110758 (array_inv!31911 _keys!1628)))

(assert (=> start!110758 true))

(assert (=> start!110758 tp_is_empty!35287))

(declare-fun e!747515 () Bool)

(declare-fun array_inv!31912 (array!87531) Bool)

(assert (=> start!110758 (and (array_inv!31912 _values!1354) e!747515)))

(declare-fun b!1310279 () Bool)

(declare-fun res!869934 () Bool)

(assert (=> b!1310279 (=> (not res!869934) (not e!747512))))

(assert (=> b!1310279 (= res!869934 (contains!8433 (getCurrentListMap!5303 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310280 () Bool)

(declare-fun res!869936 () Bool)

(assert (=> b!1310280 (=> (not res!869936) (not e!747512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87529 (_ BitVec 32)) Bool)

(assert (=> b!1310280 (= res!869936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54559 () Bool)

(declare-fun tp!103994 () Bool)

(assert (=> mapNonEmpty!54559 (= mapRes!54559 (and tp!103994 e!747513))))

(declare-fun mapValue!54559 () ValueCell!16745)

(declare-fun mapKey!54559 () (_ BitVec 32))

(declare-fun mapRest!54559 () (Array (_ BitVec 32) ValueCell!16745))

(assert (=> mapNonEmpty!54559 (= (arr!42241 _values!1354) (store mapRest!54559 mapKey!54559 mapValue!54559))))

(declare-fun b!1310281 () Bool)

(assert (=> b!1310281 (= e!747515 (and e!747511 mapRes!54559))))

(declare-fun condMapEmpty!54559 () Bool)

(declare-fun mapDefault!54559 () ValueCell!16745)

