; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110992 () Bool)

(assert start!110992)

(declare-fun b_free!29791 () Bool)

(declare-fun b_next!29791 () Bool)

(assert (=> start!110992 (= b_free!29791 (not b_next!29791))))

(declare-fun tp!104695 () Bool)

(declare-fun b_and!48009 () Bool)

(assert (=> start!110992 (= tp!104695 b_and!48009)))

(declare-fun b!1313529 () Bool)

(declare-fun e!749269 () Bool)

(declare-fun tp_is_empty!35521 () Bool)

(assert (=> b!1313529 (= e!749269 tp_is_empty!35521)))

(declare-fun b!1313530 () Bool)

(declare-fun res!872135 () Bool)

(declare-fun e!749266 () Bool)

(assert (=> b!1313530 (=> (not res!872135) (not e!749266))))

(declare-datatypes ((array!87983 0))(
  ( (array!87984 (arr!42467 (Array (_ BitVec 32) (_ BitVec 64))) (size!43018 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87983)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87983 (_ BitVec 32)) Bool)

(assert (=> b!1313530 (= res!872135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54910 () Bool)

(declare-fun mapRes!54910 () Bool)

(declare-fun tp!104696 () Bool)

(declare-fun e!749268 () Bool)

(assert (=> mapNonEmpty!54910 (= mapRes!54910 (and tp!104696 e!749268))))

(declare-fun mapKey!54910 () (_ BitVec 32))

(declare-datatypes ((V!52465 0))(
  ( (V!52466 (val!17835 Int)) )
))
(declare-datatypes ((ValueCell!16862 0))(
  ( (ValueCellFull!16862 (v!20460 V!52465)) (EmptyCell!16862) )
))
(declare-fun mapRest!54910 () (Array (_ BitVec 32) ValueCell!16862))

(declare-fun mapValue!54910 () ValueCell!16862)

(declare-datatypes ((array!87985 0))(
  ( (array!87986 (arr!42468 (Array (_ BitVec 32) ValueCell!16862)) (size!43019 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87985)

(assert (=> mapNonEmpty!54910 (= (arr!42468 _values!1354) (store mapRest!54910 mapKey!54910 mapValue!54910))))

(declare-fun b!1313531 () Bool)

(assert (=> b!1313531 (= e!749266 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52465)

(declare-fun zeroValue!1296 () V!52465)

(declare-fun lt!585628 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23164 0))(
  ( (tuple2!23165 (_1!11592 (_ BitVec 64)) (_2!11592 V!52465)) )
))
(declare-datatypes ((List!30328 0))(
  ( (Nil!30325) (Cons!30324 (h!31533 tuple2!23164) (t!43941 List!30328)) )
))
(declare-datatypes ((ListLongMap!20833 0))(
  ( (ListLongMap!20834 (toList!10432 List!30328)) )
))
(declare-fun contains!8518 (ListLongMap!20833 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5388 (array!87983 array!87985 (_ BitVec 32) (_ BitVec 32) V!52465 V!52465 (_ BitVec 32) Int) ListLongMap!20833)

(assert (=> b!1313531 (= lt!585628 (contains!8518 (getCurrentListMap!5388 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313532 () Bool)

(assert (=> b!1313532 (= e!749268 tp_is_empty!35521)))

(declare-fun res!872137 () Bool)

(assert (=> start!110992 (=> (not res!872137) (not e!749266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110992 (= res!872137 (validMask!0 mask!2040))))

(assert (=> start!110992 e!749266))

(assert (=> start!110992 tp!104695))

(declare-fun array_inv!32059 (array!87983) Bool)

(assert (=> start!110992 (array_inv!32059 _keys!1628)))

(assert (=> start!110992 true))

(assert (=> start!110992 tp_is_empty!35521))

(declare-fun e!749270 () Bool)

(declare-fun array_inv!32060 (array!87985) Bool)

(assert (=> start!110992 (and (array_inv!32060 _values!1354) e!749270)))

(declare-fun b!1313533 () Bool)

(declare-fun res!872138 () Bool)

(assert (=> b!1313533 (=> (not res!872138) (not e!749266))))

(declare-datatypes ((List!30329 0))(
  ( (Nil!30326) (Cons!30325 (h!31534 (_ BitVec 64)) (t!43942 List!30329)) )
))
(declare-fun arrayNoDuplicates!0 (array!87983 (_ BitVec 32) List!30329) Bool)

(assert (=> b!1313533 (= res!872138 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30326))))

(declare-fun b!1313534 () Bool)

(declare-fun res!872136 () Bool)

(assert (=> b!1313534 (=> (not res!872136) (not e!749266))))

(assert (=> b!1313534 (= res!872136 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43018 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313535 () Bool)

(assert (=> b!1313535 (= e!749270 (and e!749269 mapRes!54910))))

(declare-fun condMapEmpty!54910 () Bool)

(declare-fun mapDefault!54910 () ValueCell!16862)

