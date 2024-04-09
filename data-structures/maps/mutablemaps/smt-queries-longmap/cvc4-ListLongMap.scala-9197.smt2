; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110570 () Bool)

(assert start!110570)

(declare-fun b_free!29369 () Bool)

(declare-fun b_next!29369 () Bool)

(assert (=> start!110570 (= b_free!29369 (not b_next!29369))))

(declare-fun tp!103430 () Bool)

(declare-fun b_and!47587 () Bool)

(assert (=> start!110570 (= tp!103430 b_and!47587)))

(declare-fun b!1307466 () Bool)

(declare-fun res!867974 () Bool)

(declare-fun e!746104 () Bool)

(assert (=> b!1307466 (=> (not res!867974) (not e!746104))))

(declare-datatypes ((array!87173 0))(
  ( (array!87174 (arr!42062 (Array (_ BitVec 32) (_ BitVec 64))) (size!42613 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87173)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51901 0))(
  ( (V!51902 (val!17624 Int)) )
))
(declare-datatypes ((ValueCell!16651 0))(
  ( (ValueCellFull!16651 (v!20249 V!51901)) (EmptyCell!16651) )
))
(declare-datatypes ((array!87175 0))(
  ( (array!87176 (arr!42063 (Array (_ BitVec 32) ValueCell!16651)) (size!42614 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87175)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307466 (= res!867974 (and (= (size!42614 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42613 _keys!1628) (size!42614 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307468 () Bool)

(declare-fun e!746101 () Bool)

(declare-fun tp_is_empty!35099 () Bool)

(assert (=> b!1307468 (= e!746101 tp_is_empty!35099)))

(declare-fun b!1307469 () Bool)

(declare-fun res!867973 () Bool)

(assert (=> b!1307469 (=> (not res!867973) (not e!746104))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307469 (= res!867973 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42613 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307470 () Bool)

(declare-fun res!867971 () Bool)

(assert (=> b!1307470 (=> (not res!867971) (not e!746104))))

(declare-datatypes ((List!30025 0))(
  ( (Nil!30022) (Cons!30021 (h!31230 (_ BitVec 64)) (t!43638 List!30025)) )
))
(declare-fun arrayNoDuplicates!0 (array!87173 (_ BitVec 32) List!30025) Bool)

(assert (=> b!1307470 (= res!867971 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30022))))

(declare-fun b!1307471 () Bool)

(declare-fun res!867972 () Bool)

(assert (=> b!1307471 (=> (not res!867972) (not e!746104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87173 (_ BitVec 32)) Bool)

(assert (=> b!1307471 (= res!867972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54277 () Bool)

(declare-fun mapRes!54277 () Bool)

(declare-fun tp!103429 () Bool)

(assert (=> mapNonEmpty!54277 (= mapRes!54277 (and tp!103429 e!746101))))

(declare-fun mapRest!54277 () (Array (_ BitVec 32) ValueCell!16651))

(declare-fun mapKey!54277 () (_ BitVec 32))

(declare-fun mapValue!54277 () ValueCell!16651)

(assert (=> mapNonEmpty!54277 (= (arr!42063 _values!1354) (store mapRest!54277 mapKey!54277 mapValue!54277))))

(declare-fun b!1307472 () Bool)

(assert (=> b!1307472 (= e!746104 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585004 () Bool)

(declare-fun minValue!1296 () V!51901)

(declare-fun zeroValue!1296 () V!51901)

(declare-datatypes ((tuple2!22852 0))(
  ( (tuple2!22853 (_1!11436 (_ BitVec 64)) (_2!11436 V!51901)) )
))
(declare-datatypes ((List!30026 0))(
  ( (Nil!30023) (Cons!30022 (h!31231 tuple2!22852) (t!43639 List!30026)) )
))
(declare-datatypes ((ListLongMap!20521 0))(
  ( (ListLongMap!20522 (toList!10276 List!30026)) )
))
(declare-fun contains!8362 (ListLongMap!20521 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5232 (array!87173 array!87175 (_ BitVec 32) (_ BitVec 32) V!51901 V!51901 (_ BitVec 32) Int) ListLongMap!20521)

(assert (=> b!1307472 (= lt!585004 (contains!8362 (getCurrentListMap!5232 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!867970 () Bool)

(assert (=> start!110570 (=> (not res!867970) (not e!746104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110570 (= res!867970 (validMask!0 mask!2040))))

(assert (=> start!110570 e!746104))

(assert (=> start!110570 tp!103430))

(declare-fun array_inv!31793 (array!87173) Bool)

(assert (=> start!110570 (array_inv!31793 _keys!1628)))

(assert (=> start!110570 true))

(assert (=> start!110570 tp_is_empty!35099))

(declare-fun e!746103 () Bool)

(declare-fun array_inv!31794 (array!87175) Bool)

(assert (=> start!110570 (and (array_inv!31794 _values!1354) e!746103)))

(declare-fun b!1307467 () Bool)

(declare-fun e!746102 () Bool)

(assert (=> b!1307467 (= e!746102 tp_is_empty!35099)))

(declare-fun mapIsEmpty!54277 () Bool)

(assert (=> mapIsEmpty!54277 mapRes!54277))

(declare-fun b!1307473 () Bool)

(assert (=> b!1307473 (= e!746103 (and e!746102 mapRes!54277))))

(declare-fun condMapEmpty!54277 () Bool)

(declare-fun mapDefault!54277 () ValueCell!16651)

