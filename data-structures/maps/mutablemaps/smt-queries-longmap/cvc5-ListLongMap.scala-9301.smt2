; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111190 () Bool)

(assert start!111190)

(declare-fun b_free!29989 () Bool)

(declare-fun b_next!29989 () Bool)

(assert (=> start!111190 (= b_free!29989 (not b_next!29989))))

(declare-fun tp!105289 () Bool)

(declare-fun b_and!48207 () Bool)

(assert (=> start!111190 (= tp!105289 b_and!48207)))

(declare-fun b!1315977 () Bool)

(declare-fun e!750752 () Bool)

(declare-fun tp_is_empty!35719 () Bool)

(assert (=> b!1315977 (= e!750752 tp_is_empty!35719)))

(declare-fun res!873695 () Bool)

(declare-fun e!750753 () Bool)

(assert (=> start!111190 (=> (not res!873695) (not e!750753))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111190 (= res!873695 (validMask!0 mask!2040))))

(assert (=> start!111190 e!750753))

(assert (=> start!111190 tp!105289))

(declare-datatypes ((array!88355 0))(
  ( (array!88356 (arr!42653 (Array (_ BitVec 32) (_ BitVec 64))) (size!43204 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88355)

(declare-fun array_inv!32179 (array!88355) Bool)

(assert (=> start!111190 (array_inv!32179 _keys!1628)))

(assert (=> start!111190 true))

(assert (=> start!111190 tp_is_empty!35719))

(declare-datatypes ((V!52729 0))(
  ( (V!52730 (val!17934 Int)) )
))
(declare-datatypes ((ValueCell!16961 0))(
  ( (ValueCellFull!16961 (v!20559 V!52729)) (EmptyCell!16961) )
))
(declare-datatypes ((array!88357 0))(
  ( (array!88358 (arr!42654 (Array (_ BitVec 32) ValueCell!16961)) (size!43205 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88357)

(declare-fun e!750754 () Bool)

(declare-fun array_inv!32180 (array!88357) Bool)

(assert (=> start!111190 (and (array_inv!32180 _values!1354) e!750754)))

(declare-fun b!1315978 () Bool)

(declare-fun e!750755 () Bool)

(assert (=> b!1315978 (= e!750755 tp_is_empty!35719)))

(declare-fun b!1315979 () Bool)

(declare-fun res!873692 () Bool)

(assert (=> b!1315979 (=> (not res!873692) (not e!750753))))

(declare-datatypes ((List!30451 0))(
  ( (Nil!30448) (Cons!30447 (h!31656 (_ BitVec 64)) (t!44064 List!30451)) )
))
(declare-fun arrayNoDuplicates!0 (array!88355 (_ BitVec 32) List!30451) Bool)

(assert (=> b!1315979 (= res!873692 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30448))))

(declare-fun mapNonEmpty!55207 () Bool)

(declare-fun mapRes!55207 () Bool)

(declare-fun tp!105290 () Bool)

(assert (=> mapNonEmpty!55207 (= mapRes!55207 (and tp!105290 e!750755))))

(declare-fun mapRest!55207 () (Array (_ BitVec 32) ValueCell!16961))

(declare-fun mapKey!55207 () (_ BitVec 32))

(declare-fun mapValue!55207 () ValueCell!16961)

(assert (=> mapNonEmpty!55207 (= (arr!42654 _values!1354) (store mapRest!55207 mapKey!55207 mapValue!55207))))

(declare-fun b!1315980 () Bool)

(declare-fun res!873694 () Bool)

(assert (=> b!1315980 (=> (not res!873694) (not e!750753))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315980 (= res!873694 (and (= (size!43205 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43204 _keys!1628) (size!43205 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315981 () Bool)

(declare-fun res!873693 () Bool)

(assert (=> b!1315981 (=> (not res!873693) (not e!750753))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315981 (= res!873693 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43204 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55207 () Bool)

(assert (=> mapIsEmpty!55207 mapRes!55207))

(declare-fun b!1315982 () Bool)

(assert (=> b!1315982 (= e!750753 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585925 () Bool)

(declare-fun minValue!1296 () V!52729)

(declare-fun zeroValue!1296 () V!52729)

(declare-datatypes ((tuple2!23282 0))(
  ( (tuple2!23283 (_1!11651 (_ BitVec 64)) (_2!11651 V!52729)) )
))
(declare-datatypes ((List!30452 0))(
  ( (Nil!30449) (Cons!30448 (h!31657 tuple2!23282) (t!44065 List!30452)) )
))
(declare-datatypes ((ListLongMap!20951 0))(
  ( (ListLongMap!20952 (toList!10491 List!30452)) )
))
(declare-fun contains!8577 (ListLongMap!20951 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5447 (array!88355 array!88357 (_ BitVec 32) (_ BitVec 32) V!52729 V!52729 (_ BitVec 32) Int) ListLongMap!20951)

(assert (=> b!1315982 (= lt!585925 (contains!8577 (getCurrentListMap!5447 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315983 () Bool)

(assert (=> b!1315983 (= e!750754 (and e!750752 mapRes!55207))))

(declare-fun condMapEmpty!55207 () Bool)

(declare-fun mapDefault!55207 () ValueCell!16961)

