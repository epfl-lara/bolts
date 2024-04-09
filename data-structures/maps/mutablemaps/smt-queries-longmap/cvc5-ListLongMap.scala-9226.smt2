; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110740 () Bool)

(assert start!110740)

(declare-fun b_free!29539 () Bool)

(declare-fun b_next!29539 () Bool)

(assert (=> start!110740 (= b_free!29539 (not b_next!29539))))

(declare-fun tp!103939 () Bool)

(declare-fun b_and!47757 () Bool)

(assert (=> start!110740 (= tp!103939 b_and!47757)))

(declare-fun b!1309946 () Bool)

(declare-fun res!869689 () Bool)

(declare-fun e!747378 () Bool)

(assert (=> b!1309946 (=> (not res!869689) (not e!747378))))

(declare-datatypes ((array!87493 0))(
  ( (array!87494 (arr!42222 (Array (_ BitVec 32) (_ BitVec 64))) (size!42773 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87493)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309946 (= res!869689 (validKeyInArray!0 (select (arr!42222 _keys!1628) from!2020)))))

(declare-fun b!1309947 () Bool)

(declare-fun res!869690 () Bool)

(assert (=> b!1309947 (=> (not res!869690) (not e!747378))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1309947 (= res!869690 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42773 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309948 () Bool)

(declare-fun res!869687 () Bool)

(assert (=> b!1309948 (=> (not res!869687) (not e!747378))))

(declare-datatypes ((List!30146 0))(
  ( (Nil!30143) (Cons!30142 (h!31351 (_ BitVec 64)) (t!43759 List!30146)) )
))
(declare-fun arrayNoDuplicates!0 (array!87493 (_ BitVec 32) List!30146) Bool)

(assert (=> b!1309948 (= res!869687 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30143))))

(declare-fun b!1309949 () Bool)

(declare-fun res!869692 () Bool)

(assert (=> b!1309949 (=> (not res!869692) (not e!747378))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309949 (= res!869692 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!869688 () Bool)

(assert (=> start!110740 (=> (not res!869688) (not e!747378))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110740 (= res!869688 (validMask!0 mask!2040))))

(assert (=> start!110740 e!747378))

(assert (=> start!110740 tp!103939))

(declare-fun array_inv!31901 (array!87493) Bool)

(assert (=> start!110740 (array_inv!31901 _keys!1628)))

(assert (=> start!110740 true))

(declare-fun tp_is_empty!35269 () Bool)

(assert (=> start!110740 tp_is_empty!35269))

(declare-datatypes ((V!52129 0))(
  ( (V!52130 (val!17709 Int)) )
))
(declare-datatypes ((ValueCell!16736 0))(
  ( (ValueCellFull!16736 (v!20334 V!52129)) (EmptyCell!16736) )
))
(declare-datatypes ((array!87495 0))(
  ( (array!87496 (arr!42223 (Array (_ BitVec 32) ValueCell!16736)) (size!42774 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87495)

(declare-fun e!747376 () Bool)

(declare-fun array_inv!31902 (array!87495) Bool)

(assert (=> start!110740 (and (array_inv!31902 _values!1354) e!747376)))

(declare-fun mapIsEmpty!54532 () Bool)

(declare-fun mapRes!54532 () Bool)

(assert (=> mapIsEmpty!54532 mapRes!54532))

(declare-fun mapNonEmpty!54532 () Bool)

(declare-fun tp!103940 () Bool)

(declare-fun e!747377 () Bool)

(assert (=> mapNonEmpty!54532 (= mapRes!54532 (and tp!103940 e!747377))))

(declare-fun mapValue!54532 () ValueCell!16736)

(declare-fun mapKey!54532 () (_ BitVec 32))

(declare-fun mapRest!54532 () (Array (_ BitVec 32) ValueCell!16736))

(assert (=> mapNonEmpty!54532 (= (arr!42223 _values!1354) (store mapRest!54532 mapKey!54532 mapValue!54532))))

(declare-fun b!1309950 () Bool)

(assert (=> b!1309950 (= e!747378 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52129)

(declare-fun zeroValue!1296 () V!52129)

(declare-datatypes ((tuple2!22980 0))(
  ( (tuple2!22981 (_1!11500 (_ BitVec 64)) (_2!11500 V!52129)) )
))
(declare-datatypes ((List!30147 0))(
  ( (Nil!30144) (Cons!30143 (h!31352 tuple2!22980) (t!43760 List!30147)) )
))
(declare-datatypes ((ListLongMap!20649 0))(
  ( (ListLongMap!20650 (toList!10340 List!30147)) )
))
(declare-fun contains!8426 (ListLongMap!20649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5296 (array!87493 array!87495 (_ BitVec 32) (_ BitVec 32) V!52129 V!52129 (_ BitVec 32) Int) ListLongMap!20649)

(assert (=> b!1309950 (contains!8426 (getCurrentListMap!5296 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43270 0))(
  ( (Unit!43271) )
))
(declare-fun lt!585259 () Unit!43270)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!9 (array!87493 array!87495 (_ BitVec 32) (_ BitVec 32) V!52129 V!52129 (_ BitVec 64) (_ BitVec 32) Int) Unit!43270)

(assert (=> b!1309950 (= lt!585259 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!9 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309951 () Bool)

(declare-fun res!869691 () Bool)

(assert (=> b!1309951 (=> (not res!869691) (not e!747378))))

(assert (=> b!1309951 (= res!869691 (and (= (size!42774 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42773 _keys!1628) (size!42774 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309952 () Bool)

(declare-fun e!747379 () Bool)

(assert (=> b!1309952 (= e!747376 (and e!747379 mapRes!54532))))

(declare-fun condMapEmpty!54532 () Bool)

(declare-fun mapDefault!54532 () ValueCell!16736)

