; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110636 () Bool)

(assert start!110636)

(declare-fun b_free!29435 () Bool)

(declare-fun b_next!29435 () Bool)

(assert (=> start!110636 (= b_free!29435 (not b_next!29435))))

(declare-fun tp!103628 () Bool)

(declare-fun b_and!47653 () Bool)

(assert (=> start!110636 (= tp!103628 b_and!47653)))

(declare-fun b!1308506 () Bool)

(declare-fun res!868717 () Bool)

(declare-fun e!746596 () Bool)

(assert (=> b!1308506 (=> (not res!868717) (not e!746596))))

(declare-datatypes ((array!87295 0))(
  ( (array!87296 (arr!42123 (Array (_ BitVec 32) (_ BitVec 64))) (size!42674 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87295)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51989 0))(
  ( (V!51990 (val!17657 Int)) )
))
(declare-datatypes ((ValueCell!16684 0))(
  ( (ValueCellFull!16684 (v!20282 V!51989)) (EmptyCell!16684) )
))
(declare-datatypes ((array!87297 0))(
  ( (array!87298 (arr!42124 (Array (_ BitVec 32) ValueCell!16684)) (size!42675 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87297)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308506 (= res!868717 (and (= (size!42675 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42674 _keys!1628) (size!42675 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308507 () Bool)

(declare-fun res!868720 () Bool)

(assert (=> b!1308507 (=> (not res!868720) (not e!746596))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308507 (= res!868720 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42674 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308508 () Bool)

(declare-fun res!868721 () Bool)

(assert (=> b!1308508 (=> (not res!868721) (not e!746596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87295 (_ BitVec 32)) Bool)

(assert (=> b!1308508 (= res!868721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308510 () Bool)

(declare-fun e!746598 () Bool)

(declare-fun tp_is_empty!35165 () Bool)

(assert (=> b!1308510 (= e!746598 tp_is_empty!35165)))

(declare-fun b!1308511 () Bool)

(declare-fun res!868716 () Bool)

(assert (=> b!1308511 (=> (not res!868716) (not e!746596))))

(assert (=> b!1308511 (= res!868716 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308512 () Bool)

(declare-fun e!746600 () Bool)

(assert (=> b!1308512 (= e!746600 tp_is_empty!35165)))

(declare-fun mapNonEmpty!54376 () Bool)

(declare-fun mapRes!54376 () Bool)

(declare-fun tp!103627 () Bool)

(assert (=> mapNonEmpty!54376 (= mapRes!54376 (and tp!103627 e!746598))))

(declare-fun mapValue!54376 () ValueCell!16684)

(declare-fun mapRest!54376 () (Array (_ BitVec 32) ValueCell!16684))

(declare-fun mapKey!54376 () (_ BitVec 32))

(assert (=> mapNonEmpty!54376 (= (arr!42124 _values!1354) (store mapRest!54376 mapKey!54376 mapValue!54376))))

(declare-fun res!868715 () Bool)

(assert (=> start!110636 (=> (not res!868715) (not e!746596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110636 (= res!868715 (validMask!0 mask!2040))))

(assert (=> start!110636 e!746596))

(assert (=> start!110636 tp!103628))

(declare-fun array_inv!31839 (array!87295) Bool)

(assert (=> start!110636 (array_inv!31839 _keys!1628)))

(assert (=> start!110636 true))

(assert (=> start!110636 tp_is_empty!35165))

(declare-fun e!746599 () Bool)

(declare-fun array_inv!31840 (array!87297) Bool)

(assert (=> start!110636 (and (array_inv!31840 _values!1354) e!746599)))

(declare-fun b!1308509 () Bool)

(declare-fun res!868718 () Bool)

(assert (=> b!1308509 (=> (not res!868718) (not e!746596))))

(declare-datatypes ((List!30071 0))(
  ( (Nil!30068) (Cons!30067 (h!31276 (_ BitVec 64)) (t!43684 List!30071)) )
))
(declare-fun arrayNoDuplicates!0 (array!87295 (_ BitVec 32) List!30071) Bool)

(assert (=> b!1308509 (= res!868718 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30068))))

(declare-fun b!1308513 () Bool)

(declare-fun res!868713 () Bool)

(assert (=> b!1308513 (=> (not res!868713) (not e!746596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308513 (= res!868713 (validKeyInArray!0 (select (arr!42123 _keys!1628) from!2020)))))

(declare-fun b!1308514 () Bool)

(assert (=> b!1308514 (= e!746596 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51989)

(declare-fun zeroValue!1296 () V!51989)

(declare-datatypes ((tuple2!22898 0))(
  ( (tuple2!22899 (_1!11459 (_ BitVec 64)) (_2!11459 V!51989)) )
))
(declare-datatypes ((List!30072 0))(
  ( (Nil!30069) (Cons!30068 (h!31277 tuple2!22898) (t!43685 List!30072)) )
))
(declare-datatypes ((ListLongMap!20567 0))(
  ( (ListLongMap!20568 (toList!10299 List!30072)) )
))
(declare-fun contains!8385 (ListLongMap!20567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5255 (array!87295 array!87297 (_ BitVec 32) (_ BitVec 32) V!51989 V!51989 (_ BitVec 32) Int) ListLongMap!20567)

(assert (=> b!1308514 (contains!8385 (getCurrentListMap!5255 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43246 0))(
  ( (Unit!43247) )
))
(declare-fun lt!585103 () Unit!43246)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!13 (array!87295 array!87297 (_ BitVec 32) (_ BitVec 32) V!51989 V!51989 (_ BitVec 64) (_ BitVec 32) Int) Unit!43246)

(assert (=> b!1308514 (= lt!585103 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!13 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308515 () Bool)

(declare-fun res!868719 () Bool)

(assert (=> b!1308515 (=> (not res!868719) (not e!746596))))

(assert (=> b!1308515 (= res!868719 (not (= (select (arr!42123 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1308516 () Bool)

(assert (=> b!1308516 (= e!746599 (and e!746600 mapRes!54376))))

(declare-fun condMapEmpty!54376 () Bool)

(declare-fun mapDefault!54376 () ValueCell!16684)

