; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110870 () Bool)

(assert start!110870)

(declare-fun b_free!29669 () Bool)

(declare-fun b_next!29669 () Bool)

(assert (=> start!110870 (= b_free!29669 (not b_next!29669))))

(declare-fun tp!104330 () Bool)

(declare-fun b_and!47887 () Bool)

(assert (=> start!110870 (= tp!104330 b_and!47887)))

(declare-fun b!1311854 () Bool)

(declare-fun res!871011 () Bool)

(declare-fun e!748352 () Bool)

(assert (=> b!1311854 (=> (not res!871011) (not e!748352))))

(declare-datatypes ((array!87749 0))(
  ( (array!87750 (arr!42350 (Array (_ BitVec 32) (_ BitVec 64))) (size!42901 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87749)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311854 (= res!871011 (validKeyInArray!0 (select (arr!42350 _keys!1628) from!2020)))))

(declare-fun b!1311855 () Bool)

(declare-fun res!871009 () Bool)

(assert (=> b!1311855 (=> (not res!871009) (not e!748352))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52301 0))(
  ( (V!52302 (val!17774 Int)) )
))
(declare-datatypes ((ValueCell!16801 0))(
  ( (ValueCellFull!16801 (v!20399 V!52301)) (EmptyCell!16801) )
))
(declare-datatypes ((array!87751 0))(
  ( (array!87752 (arr!42351 (Array (_ BitVec 32) ValueCell!16801)) (size!42902 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87751)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311855 (= res!871009 (and (= (size!42902 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42901 _keys!1628) (size!42902 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311856 () Bool)

(declare-fun e!748353 () Bool)

(declare-fun tp_is_empty!35399 () Bool)

(assert (=> b!1311856 (= e!748353 tp_is_empty!35399)))

(declare-fun b!1311857 () Bool)

(declare-fun res!871014 () Bool)

(assert (=> b!1311857 (=> (not res!871014) (not e!748352))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1311857 (= res!871014 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42901 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54727 () Bool)

(declare-fun mapRes!54727 () Bool)

(assert (=> mapIsEmpty!54727 mapRes!54727))

(declare-fun b!1311858 () Bool)

(declare-fun res!871015 () Bool)

(assert (=> b!1311858 (=> (not res!871015) (not e!748352))))

(declare-fun minValue!1296 () V!52301)

(declare-fun zeroValue!1296 () V!52301)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23080 0))(
  ( (tuple2!23081 (_1!11550 (_ BitVec 64)) (_2!11550 V!52301)) )
))
(declare-datatypes ((List!30242 0))(
  ( (Nil!30239) (Cons!30238 (h!31447 tuple2!23080) (t!43855 List!30242)) )
))
(declare-datatypes ((ListLongMap!20749 0))(
  ( (ListLongMap!20750 (toList!10390 List!30242)) )
))
(declare-fun contains!8476 (ListLongMap!20749 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5346 (array!87749 array!87751 (_ BitVec 32) (_ BitVec 32) V!52301 V!52301 (_ BitVec 32) Int) ListLongMap!20749)

(assert (=> b!1311858 (= res!871015 (contains!8476 (getCurrentListMap!5346 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!871010 () Bool)

(assert (=> start!110870 (=> (not res!871010) (not e!748352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110870 (= res!871010 (validMask!0 mask!2040))))

(assert (=> start!110870 e!748352))

(assert (=> start!110870 tp!104330))

(declare-fun array_inv!31981 (array!87749) Bool)

(assert (=> start!110870 (array_inv!31981 _keys!1628)))

(assert (=> start!110870 true))

(assert (=> start!110870 tp_is_empty!35399))

(declare-fun e!748355 () Bool)

(declare-fun array_inv!31982 (array!87751) Bool)

(assert (=> start!110870 (and (array_inv!31982 _values!1354) e!748355)))

(declare-fun b!1311859 () Bool)

(assert (=> b!1311859 (= e!748355 (and e!748353 mapRes!54727))))

(declare-fun condMapEmpty!54727 () Bool)

(declare-fun mapDefault!54727 () ValueCell!16801)

