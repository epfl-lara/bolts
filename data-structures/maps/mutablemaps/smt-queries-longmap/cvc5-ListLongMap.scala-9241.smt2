; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110830 () Bool)

(assert start!110830)

(declare-fun b_free!29629 () Bool)

(declare-fun b_next!29629 () Bool)

(assert (=> start!110830 (= b_free!29629 (not b_next!29629))))

(declare-fun tp!104210 () Bool)

(declare-fun b_and!47847 () Bool)

(assert (=> start!110830 (= tp!104210 b_and!47847)))

(declare-fun b!1311234 () Bool)

(declare-fun res!870568 () Bool)

(declare-fun e!748055 () Bool)

(assert (=> b!1311234 (=> (not res!870568) (not e!748055))))

(declare-datatypes ((array!87669 0))(
  ( (array!87670 (arr!42310 (Array (_ BitVec 32) (_ BitVec 64))) (size!42861 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87669)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311234 (= res!870568 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42861 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311235 () Bool)

(declare-fun res!870570 () Bool)

(assert (=> b!1311235 (=> (not res!870570) (not e!748055))))

(declare-datatypes ((List!30212 0))(
  ( (Nil!30209) (Cons!30208 (h!31417 (_ BitVec 64)) (t!43825 List!30212)) )
))
(declare-fun arrayNoDuplicates!0 (array!87669 (_ BitVec 32) List!30212) Bool)

(assert (=> b!1311235 (= res!870570 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30209))))

(declare-fun mapNonEmpty!54667 () Bool)

(declare-fun mapRes!54667 () Bool)

(declare-fun tp!104209 () Bool)

(declare-fun e!748051 () Bool)

(assert (=> mapNonEmpty!54667 (= mapRes!54667 (and tp!104209 e!748051))))

(declare-datatypes ((V!52249 0))(
  ( (V!52250 (val!17754 Int)) )
))
(declare-datatypes ((ValueCell!16781 0))(
  ( (ValueCellFull!16781 (v!20379 V!52249)) (EmptyCell!16781) )
))
(declare-fun mapRest!54667 () (Array (_ BitVec 32) ValueCell!16781))

(declare-fun mapValue!54667 () ValueCell!16781)

(declare-fun mapKey!54667 () (_ BitVec 32))

(declare-datatypes ((array!87671 0))(
  ( (array!87672 (arr!42311 (Array (_ BitVec 32) ValueCell!16781)) (size!42862 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87671)

(assert (=> mapNonEmpty!54667 (= (arr!42311 _values!1354) (store mapRest!54667 mapKey!54667 mapValue!54667))))

(declare-fun b!1311236 () Bool)

(declare-fun e!748052 () Bool)

(declare-fun tp_is_empty!35359 () Bool)

(assert (=> b!1311236 (= e!748052 tp_is_empty!35359)))

(declare-fun res!870571 () Bool)

(assert (=> start!110830 (=> (not res!870571) (not e!748055))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110830 (= res!870571 (validMask!0 mask!2040))))

(assert (=> start!110830 e!748055))

(assert (=> start!110830 tp!104210))

(declare-fun array_inv!31957 (array!87669) Bool)

(assert (=> start!110830 (array_inv!31957 _keys!1628)))

(assert (=> start!110830 true))

(assert (=> start!110830 tp_is_empty!35359))

(declare-fun e!748054 () Bool)

(declare-fun array_inv!31958 (array!87671) Bool)

(assert (=> start!110830 (and (array_inv!31958 _values!1354) e!748054)))

(declare-fun mapIsEmpty!54667 () Bool)

(assert (=> mapIsEmpty!54667 mapRes!54667))

(declare-fun b!1311237 () Bool)

(declare-fun res!870569 () Bool)

(assert (=> b!1311237 (=> (not res!870569) (not e!748055))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311237 (= res!870569 (and (= (size!42862 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42861 _keys!1628) (size!42862 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311238 () Bool)

(assert (=> b!1311238 (= e!748051 tp_is_empty!35359)))

(declare-fun b!1311239 () Bool)

(assert (=> b!1311239 (= e!748055 false)))

(declare-fun lt!585394 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52249)

(declare-fun zeroValue!1296 () V!52249)

(declare-datatypes ((tuple2!23046 0))(
  ( (tuple2!23047 (_1!11533 (_ BitVec 64)) (_2!11533 V!52249)) )
))
(declare-datatypes ((List!30213 0))(
  ( (Nil!30210) (Cons!30209 (h!31418 tuple2!23046) (t!43826 List!30213)) )
))
(declare-datatypes ((ListLongMap!20715 0))(
  ( (ListLongMap!20716 (toList!10373 List!30213)) )
))
(declare-fun contains!8459 (ListLongMap!20715 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5329 (array!87669 array!87671 (_ BitVec 32) (_ BitVec 32) V!52249 V!52249 (_ BitVec 32) Int) ListLongMap!20715)

(assert (=> b!1311239 (= lt!585394 (contains!8459 (getCurrentListMap!5329 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311240 () Bool)

(assert (=> b!1311240 (= e!748054 (and e!748052 mapRes!54667))))

(declare-fun condMapEmpty!54667 () Bool)

(declare-fun mapDefault!54667 () ValueCell!16781)

