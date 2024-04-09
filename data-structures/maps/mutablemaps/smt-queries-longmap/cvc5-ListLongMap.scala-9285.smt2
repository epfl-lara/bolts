; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111094 () Bool)

(assert start!111094)

(declare-fun b_free!29893 () Bool)

(declare-fun b_next!29893 () Bool)

(assert (=> start!111094 (= b_free!29893 (not b_next!29893))))

(declare-fun tp!105002 () Bool)

(declare-fun b_and!48111 () Bool)

(assert (=> start!111094 (= tp!105002 b_and!48111)))

(declare-fun b!1314790 () Bool)

(declare-fun e!750034 () Bool)

(assert (=> b!1314790 (= e!750034 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52601 0))(
  ( (V!52602 (val!17886 Int)) )
))
(declare-fun minValue!1296 () V!52601)

(declare-datatypes ((ValueCell!16913 0))(
  ( (ValueCellFull!16913 (v!20511 V!52601)) (EmptyCell!16913) )
))
(declare-datatypes ((array!88175 0))(
  ( (array!88176 (arr!42563 (Array (_ BitVec 32) ValueCell!16913)) (size!43114 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88175)

(declare-fun zeroValue!1296 () V!52601)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585781 () Bool)

(declare-datatypes ((array!88177 0))(
  ( (array!88178 (arr!42564 (Array (_ BitVec 32) (_ BitVec 64))) (size!43115 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88177)

(declare-datatypes ((tuple2!23230 0))(
  ( (tuple2!23231 (_1!11625 (_ BitVec 64)) (_2!11625 V!52601)) )
))
(declare-datatypes ((List!30394 0))(
  ( (Nil!30391) (Cons!30390 (h!31599 tuple2!23230) (t!44007 List!30394)) )
))
(declare-datatypes ((ListLongMap!20899 0))(
  ( (ListLongMap!20900 (toList!10465 List!30394)) )
))
(declare-fun contains!8551 (ListLongMap!20899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5421 (array!88177 array!88175 (_ BitVec 32) (_ BitVec 32) V!52601 V!52601 (_ BitVec 32) Int) ListLongMap!20899)

(assert (=> b!1314790 (= lt!585781 (contains!8551 (getCurrentListMap!5421 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314791 () Bool)

(declare-fun res!872935 () Bool)

(assert (=> b!1314791 (=> (not res!872935) (not e!750034))))

(assert (=> b!1314791 (= res!872935 (and (= (size!43114 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43115 _keys!1628) (size!43114 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314792 () Bool)

(declare-fun e!750031 () Bool)

(declare-fun tp_is_empty!35623 () Bool)

(assert (=> b!1314792 (= e!750031 tp_is_empty!35623)))

(declare-fun b!1314793 () Bool)

(declare-fun e!750032 () Bool)

(declare-fun e!750033 () Bool)

(declare-fun mapRes!55063 () Bool)

(assert (=> b!1314793 (= e!750032 (and e!750033 mapRes!55063))))

(declare-fun condMapEmpty!55063 () Bool)

(declare-fun mapDefault!55063 () ValueCell!16913)

