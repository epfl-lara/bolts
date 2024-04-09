; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110924 () Bool)

(assert start!110924)

(declare-fun b_free!29723 () Bool)

(declare-fun b_next!29723 () Bool)

(assert (=> start!110924 (= b_free!29723 (not b_next!29723))))

(declare-fun tp!104492 () Bool)

(declare-fun b_and!47941 () Bool)

(assert (=> start!110924 (= tp!104492 b_and!47941)))

(declare-fun b!1312686 () Bool)

(declare-fun res!871598 () Bool)

(declare-fun e!748756 () Bool)

(assert (=> b!1312686 (=> (not res!871598) (not e!748756))))

(declare-datatypes ((array!87855 0))(
  ( (array!87856 (arr!42403 (Array (_ BitVec 32) (_ BitVec 64))) (size!42954 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87855)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87855 (_ BitVec 32)) Bool)

(assert (=> b!1312686 (= res!871598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312687 () Bool)

(declare-fun e!748759 () Bool)

(declare-fun tp_is_empty!35453 () Bool)

(assert (=> b!1312687 (= e!748759 tp_is_empty!35453)))

(declare-fun mapNonEmpty!54808 () Bool)

(declare-fun mapRes!54808 () Bool)

(declare-fun tp!104491 () Bool)

(assert (=> mapNonEmpty!54808 (= mapRes!54808 (and tp!104491 e!748759))))

(declare-datatypes ((V!52373 0))(
  ( (V!52374 (val!17801 Int)) )
))
(declare-datatypes ((ValueCell!16828 0))(
  ( (ValueCellFull!16828 (v!20426 V!52373)) (EmptyCell!16828) )
))
(declare-fun mapRest!54808 () (Array (_ BitVec 32) ValueCell!16828))

(declare-fun mapKey!54808 () (_ BitVec 32))

(declare-fun mapValue!54808 () ValueCell!16828)

(declare-datatypes ((array!87857 0))(
  ( (array!87858 (arr!42404 (Array (_ BitVec 32) ValueCell!16828)) (size!42955 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87857)

(assert (=> mapNonEmpty!54808 (= (arr!42404 _values!1354) (store mapRest!54808 mapKey!54808 mapValue!54808))))

(declare-fun b!1312688 () Bool)

(assert (=> b!1312688 (= e!748756 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52373)

(declare-fun zeroValue!1296 () V!52373)

(declare-fun lt!585535 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23124 0))(
  ( (tuple2!23125 (_1!11572 (_ BitVec 64)) (_2!11572 V!52373)) )
))
(declare-datatypes ((List!30284 0))(
  ( (Nil!30281) (Cons!30280 (h!31489 tuple2!23124) (t!43897 List!30284)) )
))
(declare-datatypes ((ListLongMap!20793 0))(
  ( (ListLongMap!20794 (toList!10412 List!30284)) )
))
(declare-fun contains!8498 (ListLongMap!20793 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5368 (array!87855 array!87857 (_ BitVec 32) (_ BitVec 32) V!52373 V!52373 (_ BitVec 32) Int) ListLongMap!20793)

(assert (=> b!1312688 (= lt!585535 (contains!8498 (getCurrentListMap!5368 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312689 () Bool)

(declare-fun res!871601 () Bool)

(assert (=> b!1312689 (=> (not res!871601) (not e!748756))))

(declare-datatypes ((List!30285 0))(
  ( (Nil!30282) (Cons!30281 (h!31490 (_ BitVec 64)) (t!43898 List!30285)) )
))
(declare-fun arrayNoDuplicates!0 (array!87855 (_ BitVec 32) List!30285) Bool)

(assert (=> b!1312689 (= res!871601 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30282))))

(declare-fun b!1312690 () Bool)

(declare-fun res!871599 () Bool)

(assert (=> b!1312690 (=> (not res!871599) (not e!748756))))

(assert (=> b!1312690 (= res!871599 (and (= (size!42955 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42954 _keys!1628) (size!42955 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312691 () Bool)

(declare-fun res!871600 () Bool)

(assert (=> b!1312691 (=> (not res!871600) (not e!748756))))

(assert (=> b!1312691 (= res!871600 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42954 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312692 () Bool)

(declare-fun e!748758 () Bool)

(assert (=> b!1312692 (= e!748758 tp_is_empty!35453)))

(declare-fun b!1312693 () Bool)

(declare-fun e!748757 () Bool)

(assert (=> b!1312693 (= e!748757 (and e!748758 mapRes!54808))))

(declare-fun condMapEmpty!54808 () Bool)

(declare-fun mapDefault!54808 () ValueCell!16828)

