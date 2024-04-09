; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110930 () Bool)

(assert start!110930)

(declare-fun b_free!29729 () Bool)

(declare-fun b_next!29729 () Bool)

(assert (=> start!110930 (= b_free!29729 (not b_next!29729))))

(declare-fun tp!104510 () Bool)

(declare-fun b_and!47947 () Bool)

(assert (=> start!110930 (= tp!104510 b_and!47947)))

(declare-fun res!871642 () Bool)

(declare-fun e!748804 () Bool)

(assert (=> start!110930 (=> (not res!871642) (not e!748804))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110930 (= res!871642 (validMask!0 mask!2040))))

(assert (=> start!110930 e!748804))

(assert (=> start!110930 tp!104510))

(declare-datatypes ((array!87867 0))(
  ( (array!87868 (arr!42409 (Array (_ BitVec 32) (_ BitVec 64))) (size!42960 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87867)

(declare-fun array_inv!32019 (array!87867) Bool)

(assert (=> start!110930 (array_inv!32019 _keys!1628)))

(assert (=> start!110930 true))

(declare-fun tp_is_empty!35459 () Bool)

(assert (=> start!110930 tp_is_empty!35459))

(declare-datatypes ((V!52381 0))(
  ( (V!52382 (val!17804 Int)) )
))
(declare-datatypes ((ValueCell!16831 0))(
  ( (ValueCellFull!16831 (v!20429 V!52381)) (EmptyCell!16831) )
))
(declare-datatypes ((array!87869 0))(
  ( (array!87870 (arr!42410 (Array (_ BitVec 32) ValueCell!16831)) (size!42961 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87869)

(declare-fun e!748801 () Bool)

(declare-fun array_inv!32020 (array!87869) Bool)

(assert (=> start!110930 (and (array_inv!32020 _values!1354) e!748801)))

(declare-fun b!1312758 () Bool)

(declare-fun e!748802 () Bool)

(assert (=> b!1312758 (= e!748802 tp_is_empty!35459)))

(declare-fun b!1312759 () Bool)

(declare-fun e!748803 () Bool)

(assert (=> b!1312759 (= e!748803 tp_is_empty!35459)))

(declare-fun b!1312760 () Bool)

(assert (=> b!1312760 (= e!748804 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52381)

(declare-fun zeroValue!1296 () V!52381)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585544 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23128 0))(
  ( (tuple2!23129 (_1!11574 (_ BitVec 64)) (_2!11574 V!52381)) )
))
(declare-datatypes ((List!30288 0))(
  ( (Nil!30285) (Cons!30284 (h!31493 tuple2!23128) (t!43901 List!30288)) )
))
(declare-datatypes ((ListLongMap!20797 0))(
  ( (ListLongMap!20798 (toList!10414 List!30288)) )
))
(declare-fun contains!8500 (ListLongMap!20797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5370 (array!87867 array!87869 (_ BitVec 32) (_ BitVec 32) V!52381 V!52381 (_ BitVec 32) Int) ListLongMap!20797)

(assert (=> b!1312760 (= lt!585544 (contains!8500 (getCurrentListMap!5370 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312761 () Bool)

(declare-fun res!871643 () Bool)

(assert (=> b!1312761 (=> (not res!871643) (not e!748804))))

(declare-datatypes ((List!30289 0))(
  ( (Nil!30286) (Cons!30285 (h!31494 (_ BitVec 64)) (t!43902 List!30289)) )
))
(declare-fun arrayNoDuplicates!0 (array!87867 (_ BitVec 32) List!30289) Bool)

(assert (=> b!1312761 (= res!871643 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30286))))

(declare-fun mapIsEmpty!54817 () Bool)

(declare-fun mapRes!54817 () Bool)

(assert (=> mapIsEmpty!54817 mapRes!54817))

(declare-fun b!1312762 () Bool)

(declare-fun res!871646 () Bool)

(assert (=> b!1312762 (=> (not res!871646) (not e!748804))))

(assert (=> b!1312762 (= res!871646 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42960 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312763 () Bool)

(declare-fun res!871645 () Bool)

(assert (=> b!1312763 (=> (not res!871645) (not e!748804))))

(assert (=> b!1312763 (= res!871645 (and (= (size!42961 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42960 _keys!1628) (size!42961 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312764 () Bool)

(assert (=> b!1312764 (= e!748801 (and e!748802 mapRes!54817))))

(declare-fun condMapEmpty!54817 () Bool)

(declare-fun mapDefault!54817 () ValueCell!16831)

