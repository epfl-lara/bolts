; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110842 () Bool)

(assert start!110842)

(declare-fun b_free!29641 () Bool)

(declare-fun b_next!29641 () Bool)

(assert (=> start!110842 (= b_free!29641 (not b_next!29641))))

(declare-fun tp!104246 () Bool)

(declare-fun b_and!47859 () Bool)

(assert (=> start!110842 (= tp!104246 b_and!47859)))

(declare-fun b!1311378 () Bool)

(declare-fun e!748142 () Bool)

(declare-fun tp_is_empty!35371 () Bool)

(assert (=> b!1311378 (= e!748142 tp_is_empty!35371)))

(declare-fun res!870662 () Bool)

(declare-fun e!748141 () Bool)

(assert (=> start!110842 (=> (not res!870662) (not e!748141))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110842 (= res!870662 (validMask!0 mask!2040))))

(assert (=> start!110842 e!748141))

(assert (=> start!110842 tp!104246))

(declare-datatypes ((array!87693 0))(
  ( (array!87694 (arr!42322 (Array (_ BitVec 32) (_ BitVec 64))) (size!42873 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87693)

(declare-fun array_inv!31965 (array!87693) Bool)

(assert (=> start!110842 (array_inv!31965 _keys!1628)))

(assert (=> start!110842 true))

(assert (=> start!110842 tp_is_empty!35371))

(declare-datatypes ((V!52265 0))(
  ( (V!52266 (val!17760 Int)) )
))
(declare-datatypes ((ValueCell!16787 0))(
  ( (ValueCellFull!16787 (v!20385 V!52265)) (EmptyCell!16787) )
))
(declare-datatypes ((array!87695 0))(
  ( (array!87696 (arr!42323 (Array (_ BitVec 32) ValueCell!16787)) (size!42874 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87695)

(declare-fun e!748144 () Bool)

(declare-fun array_inv!31966 (array!87695) Bool)

(assert (=> start!110842 (and (array_inv!31966 _values!1354) e!748144)))

(declare-fun b!1311379 () Bool)

(declare-fun res!870659 () Bool)

(assert (=> b!1311379 (=> (not res!870659) (not e!748141))))

(declare-datatypes ((List!30220 0))(
  ( (Nil!30217) (Cons!30216 (h!31425 (_ BitVec 64)) (t!43833 List!30220)) )
))
(declare-fun arrayNoDuplicates!0 (array!87693 (_ BitVec 32) List!30220) Bool)

(assert (=> b!1311379 (= res!870659 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30217))))

(declare-fun b!1311380 () Bool)

(declare-fun res!870661 () Bool)

(assert (=> b!1311380 (=> (not res!870661) (not e!748141))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311380 (= res!870661 (and (= (size!42874 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42873 _keys!1628) (size!42874 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311381 () Bool)

(declare-fun res!870660 () Bool)

(assert (=> b!1311381 (=> (not res!870660) (not e!748141))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311381 (= res!870660 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42873 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54685 () Bool)

(declare-fun mapRes!54685 () Bool)

(declare-fun tp!104245 () Bool)

(declare-fun e!748143 () Bool)

(assert (=> mapNonEmpty!54685 (= mapRes!54685 (and tp!104245 e!748143))))

(declare-fun mapKey!54685 () (_ BitVec 32))

(declare-fun mapRest!54685 () (Array (_ BitVec 32) ValueCell!16787))

(declare-fun mapValue!54685 () ValueCell!16787)

(assert (=> mapNonEmpty!54685 (= (arr!42323 _values!1354) (store mapRest!54685 mapKey!54685 mapValue!54685))))

(declare-fun b!1311382 () Bool)

(assert (=> b!1311382 (= e!748141 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52265)

(declare-fun zeroValue!1296 () V!52265)

(declare-fun lt!585412 () Bool)

(declare-datatypes ((tuple2!23056 0))(
  ( (tuple2!23057 (_1!11538 (_ BitVec 64)) (_2!11538 V!52265)) )
))
(declare-datatypes ((List!30221 0))(
  ( (Nil!30218) (Cons!30217 (h!31426 tuple2!23056) (t!43834 List!30221)) )
))
(declare-datatypes ((ListLongMap!20725 0))(
  ( (ListLongMap!20726 (toList!10378 List!30221)) )
))
(declare-fun contains!8464 (ListLongMap!20725 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5334 (array!87693 array!87695 (_ BitVec 32) (_ BitVec 32) V!52265 V!52265 (_ BitVec 32) Int) ListLongMap!20725)

(assert (=> b!1311382 (= lt!585412 (contains!8464 (getCurrentListMap!5334 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311383 () Bool)

(assert (=> b!1311383 (= e!748144 (and e!748142 mapRes!54685))))

(declare-fun condMapEmpty!54685 () Bool)

(declare-fun mapDefault!54685 () ValueCell!16787)

