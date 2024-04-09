; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110854 () Bool)

(assert start!110854)

(declare-fun b_free!29653 () Bool)

(declare-fun b_next!29653 () Bool)

(assert (=> start!110854 (= b_free!29653 (not b_next!29653))))

(declare-fun tp!104281 () Bool)

(declare-fun b_and!47871 () Bool)

(assert (=> start!110854 (= tp!104281 b_and!47871)))

(declare-fun b!1311566 () Bool)

(declare-fun res!870794 () Bool)

(declare-fun e!748234 () Bool)

(assert (=> b!1311566 (=> (not res!870794) (not e!748234))))

(declare-datatypes ((array!87717 0))(
  ( (array!87718 (arr!42334 (Array (_ BitVec 32) (_ BitVec 64))) (size!42885 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87717)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311566 (= res!870794 (validKeyInArray!0 (select (arr!42334 _keys!1628) from!2020)))))

(declare-fun mapIsEmpty!54703 () Bool)

(declare-fun mapRes!54703 () Bool)

(assert (=> mapIsEmpty!54703 mapRes!54703))

(declare-fun mapNonEmpty!54703 () Bool)

(declare-fun tp!104282 () Bool)

(declare-fun e!748232 () Bool)

(assert (=> mapNonEmpty!54703 (= mapRes!54703 (and tp!104282 e!748232))))

(declare-datatypes ((V!52281 0))(
  ( (V!52282 (val!17766 Int)) )
))
(declare-datatypes ((ValueCell!16793 0))(
  ( (ValueCellFull!16793 (v!20391 V!52281)) (EmptyCell!16793) )
))
(declare-fun mapRest!54703 () (Array (_ BitVec 32) ValueCell!16793))

(declare-fun mapValue!54703 () ValueCell!16793)

(declare-datatypes ((array!87719 0))(
  ( (array!87720 (arr!42335 (Array (_ BitVec 32) ValueCell!16793)) (size!42886 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87719)

(declare-fun mapKey!54703 () (_ BitVec 32))

(assert (=> mapNonEmpty!54703 (= (arr!42335 _values!1354) (store mapRest!54703 mapKey!54703 mapValue!54703))))

(declare-fun b!1311567 () Bool)

(declare-fun tp_is_empty!35383 () Bool)

(assert (=> b!1311567 (= e!748232 tp_is_empty!35383)))

(declare-fun b!1311568 () Bool)

(declare-fun res!870797 () Bool)

(assert (=> b!1311568 (=> (not res!870797) (not e!748234))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87717 (_ BitVec 32)) Bool)

(assert (=> b!1311568 (= res!870797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311569 () Bool)

(declare-fun res!870796 () Bool)

(assert (=> b!1311569 (=> (not res!870796) (not e!748234))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311569 (= res!870796 (and (= (size!42886 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42885 _keys!1628) (size!42886 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311570 () Bool)

(declare-fun res!870795 () Bool)

(assert (=> b!1311570 (=> (not res!870795) (not e!748234))))

(assert (=> b!1311570 (= res!870795 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311571 () Bool)

(assert (=> b!1311571 (= e!748234 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52281)

(declare-fun zeroValue!1296 () V!52281)

(declare-datatypes ((tuple2!23068 0))(
  ( (tuple2!23069 (_1!11544 (_ BitVec 64)) (_2!11544 V!52281)) )
))
(declare-datatypes ((List!30232 0))(
  ( (Nil!30229) (Cons!30228 (h!31437 tuple2!23068) (t!43845 List!30232)) )
))
(declare-datatypes ((ListLongMap!20737 0))(
  ( (ListLongMap!20738 (toList!10384 List!30232)) )
))
(declare-fun contains!8470 (ListLongMap!20737 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5340 (array!87717 array!87719 (_ BitVec 32) (_ BitVec 32) V!52281 V!52281 (_ BitVec 32) Int) ListLongMap!20737)

(assert (=> b!1311571 (contains!8470 (getCurrentListMap!5340 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43302 0))(
  ( (Unit!43303) )
))
(declare-fun lt!585430 () Unit!43302)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!4 (array!87717 array!87719 (_ BitVec 32) (_ BitVec 32) V!52281 V!52281 (_ BitVec 64) (_ BitVec 32) Int) Unit!43302)

(assert (=> b!1311571 (= lt!585430 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!4 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311573 () Bool)

(declare-fun e!748235 () Bool)

(declare-fun e!748233 () Bool)

(assert (=> b!1311573 (= e!748235 (and e!748233 mapRes!54703))))

(declare-fun condMapEmpty!54703 () Bool)

(declare-fun mapDefault!54703 () ValueCell!16793)

