; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110732 () Bool)

(assert start!110732)

(declare-fun b_free!29531 () Bool)

(declare-fun b_next!29531 () Bool)

(assert (=> start!110732 (= b_free!29531 (not b_next!29531))))

(declare-fun tp!103916 () Bool)

(declare-fun b_and!47749 () Bool)

(assert (=> start!110732 (= tp!103916 b_and!47749)))

(declare-fun b!1309802 () Bool)

(declare-fun e!747317 () Bool)

(assert (=> b!1309802 (= e!747317 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87477 0))(
  ( (array!87478 (arr!42214 (Array (_ BitVec 32) (_ BitVec 64))) (size!42765 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87477)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52117 0))(
  ( (V!52118 (val!17705 Int)) )
))
(declare-fun minValue!1296 () V!52117)

(declare-datatypes ((ValueCell!16732 0))(
  ( (ValueCellFull!16732 (v!20330 V!52117)) (EmptyCell!16732) )
))
(declare-datatypes ((array!87479 0))(
  ( (array!87480 (arr!42215 (Array (_ BitVec 32) ValueCell!16732)) (size!42766 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87479)

(declare-fun zeroValue!1296 () V!52117)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22972 0))(
  ( (tuple2!22973 (_1!11496 (_ BitVec 64)) (_2!11496 V!52117)) )
))
(declare-datatypes ((List!30138 0))(
  ( (Nil!30135) (Cons!30134 (h!31343 tuple2!22972) (t!43751 List!30138)) )
))
(declare-datatypes ((ListLongMap!20641 0))(
  ( (ListLongMap!20642 (toList!10336 List!30138)) )
))
(declare-fun contains!8422 (ListLongMap!20641 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5292 (array!87477 array!87479 (_ BitVec 32) (_ BitVec 32) V!52117 V!52117 (_ BitVec 32) Int) ListLongMap!20641)

(assert (=> b!1309802 (contains!8422 (getCurrentListMap!5292 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43262 0))(
  ( (Unit!43263) )
))
(declare-fun lt!585247 () Unit!43262)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!5 (array!87477 array!87479 (_ BitVec 32) (_ BitVec 32) V!52117 V!52117 (_ BitVec 64) (_ BitVec 32) Int) Unit!43262)

(assert (=> b!1309802 (= lt!585247 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!5 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309803 () Bool)

(declare-fun res!869579 () Bool)

(assert (=> b!1309803 (=> (not res!869579) (not e!747317))))

(assert (=> b!1309803 (= res!869579 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1309804 () Bool)

(declare-fun res!869585 () Bool)

(assert (=> b!1309804 (=> (not res!869585) (not e!747317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87477 (_ BitVec 32)) Bool)

(assert (=> b!1309804 (= res!869585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309805 () Bool)

(declare-fun res!869582 () Bool)

(assert (=> b!1309805 (=> (not res!869582) (not e!747317))))

(declare-datatypes ((List!30139 0))(
  ( (Nil!30136) (Cons!30135 (h!31344 (_ BitVec 64)) (t!43752 List!30139)) )
))
(declare-fun arrayNoDuplicates!0 (array!87477 (_ BitVec 32) List!30139) Bool)

(assert (=> b!1309805 (= res!869582 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30136))))

(declare-fun mapNonEmpty!54520 () Bool)

(declare-fun mapRes!54520 () Bool)

(declare-fun tp!103915 () Bool)

(declare-fun e!747316 () Bool)

(assert (=> mapNonEmpty!54520 (= mapRes!54520 (and tp!103915 e!747316))))

(declare-fun mapRest!54520 () (Array (_ BitVec 32) ValueCell!16732))

(declare-fun mapValue!54520 () ValueCell!16732)

(declare-fun mapKey!54520 () (_ BitVec 32))

(assert (=> mapNonEmpty!54520 (= (arr!42215 _values!1354) (store mapRest!54520 mapKey!54520 mapValue!54520))))

(declare-fun b!1309806 () Bool)

(declare-fun e!747318 () Bool)

(declare-fun e!747319 () Bool)

(assert (=> b!1309806 (= e!747318 (and e!747319 mapRes!54520))))

(declare-fun condMapEmpty!54520 () Bool)

(declare-fun mapDefault!54520 () ValueCell!16732)

