; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110782 () Bool)

(assert start!110782)

(declare-fun b_free!29581 () Bool)

(declare-fun b_next!29581 () Bool)

(assert (=> start!110782 (= b_free!29581 (not b_next!29581))))

(declare-fun tp!104065 () Bool)

(declare-fun b_and!47799 () Bool)

(assert (=> start!110782 (= tp!104065 b_and!47799)))

(declare-fun mapNonEmpty!54595 () Bool)

(declare-fun mapRes!54595 () Bool)

(declare-fun tp!104066 () Bool)

(declare-fun e!747692 () Bool)

(assert (=> mapNonEmpty!54595 (= mapRes!54595 (and tp!104066 e!747692))))

(declare-datatypes ((V!52185 0))(
  ( (V!52186 (val!17730 Int)) )
))
(declare-datatypes ((ValueCell!16757 0))(
  ( (ValueCellFull!16757 (v!20355 V!52185)) (EmptyCell!16757) )
))
(declare-fun mapRest!54595 () (Array (_ BitVec 32) ValueCell!16757))

(declare-datatypes ((array!87575 0))(
  ( (array!87576 (arr!42263 (Array (_ BitVec 32) ValueCell!16757)) (size!42814 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87575)

(declare-fun mapValue!54595 () ValueCell!16757)

(declare-fun mapKey!54595 () (_ BitVec 32))

(assert (=> mapNonEmpty!54595 (= (arr!42263 _values!1354) (store mapRest!54595 mapKey!54595 mapValue!54595))))

(declare-fun b!1310658 () Bool)

(declare-fun res!870209 () Bool)

(declare-fun e!747694 () Bool)

(assert (=> b!1310658 (=> (not res!870209) (not e!747694))))

(declare-datatypes ((array!87577 0))(
  ( (array!87578 (arr!42264 (Array (_ BitVec 32) (_ BitVec 64))) (size!42815 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87577)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310658 (= res!870209 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42815 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310659 () Bool)

(declare-fun res!870211 () Bool)

(assert (=> b!1310659 (=> (not res!870211) (not e!747694))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310659 (= res!870211 (and (= (size!42814 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42815 _keys!1628) (size!42814 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310660 () Bool)

(declare-fun res!870208 () Bool)

(assert (=> b!1310660 (=> (not res!870208) (not e!747694))))

(declare-datatypes ((List!30176 0))(
  ( (Nil!30173) (Cons!30172 (h!31381 (_ BitVec 64)) (t!43789 List!30176)) )
))
(declare-fun arrayNoDuplicates!0 (array!87577 (_ BitVec 32) List!30176) Bool)

(assert (=> b!1310660 (= res!870208 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30173))))

(declare-fun b!1310661 () Bool)

(assert (=> b!1310661 (= e!747694 false)))

(declare-fun lt!585322 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52185)

(declare-fun zeroValue!1296 () V!52185)

(declare-datatypes ((tuple2!23012 0))(
  ( (tuple2!23013 (_1!11516 (_ BitVec 64)) (_2!11516 V!52185)) )
))
(declare-datatypes ((List!30177 0))(
  ( (Nil!30174) (Cons!30173 (h!31382 tuple2!23012) (t!43790 List!30177)) )
))
(declare-datatypes ((ListLongMap!20681 0))(
  ( (ListLongMap!20682 (toList!10356 List!30177)) )
))
(declare-fun contains!8442 (ListLongMap!20681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5312 (array!87577 array!87575 (_ BitVec 32) (_ BitVec 32) V!52185 V!52185 (_ BitVec 32) Int) ListLongMap!20681)

(assert (=> b!1310661 (= lt!585322 (contains!8442 (getCurrentListMap!5312 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310662 () Bool)

(declare-fun tp_is_empty!35311 () Bool)

(assert (=> b!1310662 (= e!747692 tp_is_empty!35311)))

(declare-fun res!870212 () Bool)

(assert (=> start!110782 (=> (not res!870212) (not e!747694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110782 (= res!870212 (validMask!0 mask!2040))))

(assert (=> start!110782 e!747694))

(assert (=> start!110782 tp!104065))

(declare-fun array_inv!31929 (array!87577) Bool)

(assert (=> start!110782 (array_inv!31929 _keys!1628)))

(assert (=> start!110782 true))

(assert (=> start!110782 tp_is_empty!35311))

(declare-fun e!747693 () Bool)

(declare-fun array_inv!31930 (array!87575) Bool)

(assert (=> start!110782 (and (array_inv!31930 _values!1354) e!747693)))

(declare-fun b!1310663 () Bool)

(declare-fun e!747695 () Bool)

(assert (=> b!1310663 (= e!747693 (and e!747695 mapRes!54595))))

(declare-fun condMapEmpty!54595 () Bool)

(declare-fun mapDefault!54595 () ValueCell!16757)

