; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110884 () Bool)

(assert start!110884)

(declare-fun b_free!29683 () Bool)

(declare-fun b_next!29683 () Bool)

(assert (=> start!110884 (= b_free!29683 (not b_next!29683))))

(declare-fun tp!104371 () Bool)

(declare-fun b_and!47901 () Bool)

(assert (=> start!110884 (= tp!104371 b_and!47901)))

(declare-fun mapNonEmpty!54748 () Bool)

(declare-fun mapRes!54748 () Bool)

(declare-fun tp!104372 () Bool)

(declare-fun e!748460 () Bool)

(assert (=> mapNonEmpty!54748 (= mapRes!54748 (and tp!104372 e!748460))))

(declare-datatypes ((V!52321 0))(
  ( (V!52322 (val!17781 Int)) )
))
(declare-datatypes ((ValueCell!16808 0))(
  ( (ValueCellFull!16808 (v!20406 V!52321)) (EmptyCell!16808) )
))
(declare-fun mapValue!54748 () ValueCell!16808)

(declare-fun mapRest!54748 () (Array (_ BitVec 32) ValueCell!16808))

(declare-datatypes ((array!87777 0))(
  ( (array!87778 (arr!42364 (Array (_ BitVec 32) ValueCell!16808)) (size!42915 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87777)

(declare-fun mapKey!54748 () (_ BitVec 32))

(assert (=> mapNonEmpty!54748 (= (arr!42364 _values!1354) (store mapRest!54748 mapKey!54748 mapValue!54748))))

(declare-fun b!1312106 () Bool)

(declare-fun res!871204 () Bool)

(declare-fun e!748457 () Bool)

(assert (=> b!1312106 (=> (not res!871204) (not e!748457))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87779 0))(
  ( (array!87780 (arr!42365 (Array (_ BitVec 32) (_ BitVec 64))) (size!42916 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87779)

(assert (=> b!1312106 (= res!871204 (and (= (size!42915 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42916 _keys!1628) (size!42915 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54748 () Bool)

(assert (=> mapIsEmpty!54748 mapRes!54748))

(declare-fun b!1312107 () Bool)

(declare-fun res!871198 () Bool)

(assert (=> b!1312107 (=> (not res!871198) (not e!748457))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1312107 (= res!871198 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42916 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312108 () Bool)

(declare-fun e!748458 () Bool)

(declare-fun tp_is_empty!35413 () Bool)

(assert (=> b!1312108 (= e!748458 tp_is_empty!35413)))

(declare-fun res!871202 () Bool)

(assert (=> start!110884 (=> (not res!871202) (not e!748457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110884 (= res!871202 (validMask!0 mask!2040))))

(assert (=> start!110884 e!748457))

(assert (=> start!110884 tp!104371))

(declare-fun array_inv!31993 (array!87779) Bool)

(assert (=> start!110884 (array_inv!31993 _keys!1628)))

(assert (=> start!110884 true))

(assert (=> start!110884 tp_is_empty!35413))

(declare-fun e!748459 () Bool)

(declare-fun array_inv!31994 (array!87777) Bool)

(assert (=> start!110884 (and (array_inv!31994 _values!1354) e!748459)))

(declare-fun b!1312109 () Bool)

(declare-fun res!871200 () Bool)

(assert (=> b!1312109 (=> (not res!871200) (not e!748457))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52321)

(declare-fun zeroValue!1296 () V!52321)

(declare-datatypes ((tuple2!23094 0))(
  ( (tuple2!23095 (_1!11557 (_ BitVec 64)) (_2!11557 V!52321)) )
))
(declare-datatypes ((List!30254 0))(
  ( (Nil!30251) (Cons!30250 (h!31459 tuple2!23094) (t!43867 List!30254)) )
))
(declare-datatypes ((ListLongMap!20763 0))(
  ( (ListLongMap!20764 (toList!10397 List!30254)) )
))
(declare-fun contains!8483 (ListLongMap!20763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5353 (array!87779 array!87777 (_ BitVec 32) (_ BitVec 32) V!52321 V!52321 (_ BitVec 32) Int) ListLongMap!20763)

(assert (=> b!1312109 (= res!871200 (contains!8483 (getCurrentListMap!5353 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312110 () Bool)

(declare-fun res!871197 () Bool)

(assert (=> b!1312110 (=> (not res!871197) (not e!748457))))

(assert (=> b!1312110 (= res!871197 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312111 () Bool)

(assert (=> b!1312111 (= e!748459 (and e!748458 mapRes!54748))))

(declare-fun condMapEmpty!54748 () Bool)

(declare-fun mapDefault!54748 () ValueCell!16808)

