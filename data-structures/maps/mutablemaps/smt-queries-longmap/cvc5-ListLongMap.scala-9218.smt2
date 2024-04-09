; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110692 () Bool)

(assert start!110692)

(declare-fun b_free!29491 () Bool)

(declare-fun b_next!29491 () Bool)

(assert (=> start!110692 (= b_free!29491 (not b_next!29491))))

(declare-fun tp!103796 () Bool)

(declare-fun b_and!47709 () Bool)

(assert (=> start!110692 (= tp!103796 b_and!47709)))

(declare-fun b!1309255 () Bool)

(declare-fun res!869209 () Bool)

(declare-fun e!747019 () Bool)

(assert (=> b!1309255 (=> (not res!869209) (not e!747019))))

(declare-datatypes ((array!87403 0))(
  ( (array!87404 (arr!42177 (Array (_ BitVec 32) (_ BitVec 64))) (size!42728 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87403)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309255 (= res!869209 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42728 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309256 () Bool)

(declare-fun e!747017 () Bool)

(declare-fun tp_is_empty!35221 () Bool)

(assert (=> b!1309256 (= e!747017 tp_is_empty!35221)))

(declare-fun b!1309257 () Bool)

(declare-fun res!869210 () Bool)

(assert (=> b!1309257 (=> (not res!869210) (not e!747019))))

(declare-datatypes ((List!30110 0))(
  ( (Nil!30107) (Cons!30106 (h!31315 (_ BitVec 64)) (t!43723 List!30110)) )
))
(declare-fun arrayNoDuplicates!0 (array!87403 (_ BitVec 32) List!30110) Bool)

(assert (=> b!1309257 (= res!869210 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30107))))

(declare-fun b!1309258 () Bool)

(declare-fun res!869211 () Bool)

(assert (=> b!1309258 (=> (not res!869211) (not e!747019))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52065 0))(
  ( (V!52066 (val!17685 Int)) )
))
(declare-datatypes ((ValueCell!16712 0))(
  ( (ValueCellFull!16712 (v!20310 V!52065)) (EmptyCell!16712) )
))
(declare-datatypes ((array!87405 0))(
  ( (array!87406 (arr!42178 (Array (_ BitVec 32) ValueCell!16712)) (size!42729 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87405)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309258 (= res!869211 (and (= (size!42729 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42728 _keys!1628) (size!42729 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309259 () Bool)

(declare-fun res!869213 () Bool)

(assert (=> b!1309259 (=> (not res!869213) (not e!747019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87403 (_ BitVec 32)) Bool)

(assert (=> b!1309259 (= res!869213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54460 () Bool)

(declare-fun mapRes!54460 () Bool)

(assert (=> mapIsEmpty!54460 mapRes!54460))

(declare-fun res!869212 () Bool)

(assert (=> start!110692 (=> (not res!869212) (not e!747019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110692 (= res!869212 (validMask!0 mask!2040))))

(assert (=> start!110692 e!747019))

(assert (=> start!110692 tp!103796))

(declare-fun array_inv!31875 (array!87403) Bool)

(assert (=> start!110692 (array_inv!31875 _keys!1628)))

(assert (=> start!110692 true))

(assert (=> start!110692 tp_is_empty!35221))

(declare-fun e!747016 () Bool)

(declare-fun array_inv!31876 (array!87405) Bool)

(assert (=> start!110692 (and (array_inv!31876 _values!1354) e!747016)))

(declare-fun b!1309254 () Bool)

(assert (=> b!1309254 (= e!747019 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52065)

(declare-fun zeroValue!1296 () V!52065)

(declare-fun lt!585187 () Bool)

(declare-datatypes ((tuple2!22940 0))(
  ( (tuple2!22941 (_1!11480 (_ BitVec 64)) (_2!11480 V!52065)) )
))
(declare-datatypes ((List!30111 0))(
  ( (Nil!30108) (Cons!30107 (h!31316 tuple2!22940) (t!43724 List!30111)) )
))
(declare-datatypes ((ListLongMap!20609 0))(
  ( (ListLongMap!20610 (toList!10320 List!30111)) )
))
(declare-fun contains!8406 (ListLongMap!20609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5276 (array!87403 array!87405 (_ BitVec 32) (_ BitVec 32) V!52065 V!52065 (_ BitVec 32) Int) ListLongMap!20609)

(assert (=> b!1309254 (= lt!585187 (contains!8406 (getCurrentListMap!5276 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309260 () Bool)

(declare-fun e!747018 () Bool)

(assert (=> b!1309260 (= e!747018 tp_is_empty!35221)))

(declare-fun mapNonEmpty!54460 () Bool)

(declare-fun tp!103795 () Bool)

(assert (=> mapNonEmpty!54460 (= mapRes!54460 (and tp!103795 e!747017))))

(declare-fun mapValue!54460 () ValueCell!16712)

(declare-fun mapKey!54460 () (_ BitVec 32))

(declare-fun mapRest!54460 () (Array (_ BitVec 32) ValueCell!16712))

(assert (=> mapNonEmpty!54460 (= (arr!42178 _values!1354) (store mapRest!54460 mapKey!54460 mapValue!54460))))

(declare-fun b!1309261 () Bool)

(assert (=> b!1309261 (= e!747016 (and e!747018 mapRes!54460))))

(declare-fun condMapEmpty!54460 () Bool)

(declare-fun mapDefault!54460 () ValueCell!16712)

