; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113646 () Bool)

(assert start!113646)

(declare-fun b_free!31577 () Bool)

(declare-fun b_next!31577 () Bool)

(assert (=> start!113646 (= b_free!31577 (not b_next!31577))))

(declare-fun tp!110544 () Bool)

(declare-fun b_and!50949 () Bool)

(assert (=> start!113646 (= tp!110544 b_and!50949)))

(declare-fun b!1348638 () Bool)

(declare-fun res!894903 () Bool)

(declare-fun e!767223 () Bool)

(assert (=> b!1348638 (=> (not res!894903) (not e!767223))))

(declare-datatypes ((V!55205 0))(
  ( (V!55206 (val!18863 Int)) )
))
(declare-fun minValue!1245 () V!55205)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91943 0))(
  ( (array!91944 (arr!44421 (Array (_ BitVec 32) (_ BitVec 64))) (size!44972 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91943)

(declare-fun zeroValue!1245 () V!55205)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17890 0))(
  ( (ValueCellFull!17890 (v!21513 V!55205)) (EmptyCell!17890) )
))
(declare-datatypes ((array!91945 0))(
  ( (array!91946 (arr!44422 (Array (_ BitVec 32) ValueCell!17890)) (size!44973 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91945)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24464 0))(
  ( (tuple2!24465 (_1!12242 (_ BitVec 64)) (_2!12242 V!55205)) )
))
(declare-datatypes ((List!31631 0))(
  ( (Nil!31628) (Cons!31627 (h!32836 tuple2!24464) (t!46282 List!31631)) )
))
(declare-datatypes ((ListLongMap!22133 0))(
  ( (ListLongMap!22134 (toList!11082 List!31631)) )
))
(declare-fun contains!9197 (ListLongMap!22133 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5972 (array!91943 array!91945 (_ BitVec 32) (_ BitVec 32) V!55205 V!55205 (_ BitVec 32) Int) ListLongMap!22133)

(assert (=> b!1348638 (= res!894903 (contains!9197 (getCurrentListMap!5972 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1348639 () Bool)

(declare-fun res!894902 () Bool)

(assert (=> b!1348639 (=> (not res!894902) (not e!767223))))

(assert (=> b!1348639 (= res!894902 (and (= (size!44973 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44972 _keys!1571) (size!44973 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1348640 () Bool)

(declare-fun e!767226 () Bool)

(declare-fun tp_is_empty!37577 () Bool)

(assert (=> b!1348640 (= e!767226 tp_is_empty!37577)))

(declare-fun b!1348641 () Bool)

(declare-fun res!894904 () Bool)

(assert (=> b!1348641 (=> (not res!894904) (not e!767223))))

(declare-datatypes ((List!31632 0))(
  ( (Nil!31629) (Cons!31628 (h!32837 (_ BitVec 64)) (t!46283 List!31632)) )
))
(declare-fun arrayNoDuplicates!0 (array!91943 (_ BitVec 32) List!31632) Bool)

(assert (=> b!1348641 (= res!894904 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31629))))

(declare-fun b!1348643 () Bool)

(declare-fun res!894900 () Bool)

(assert (=> b!1348643 (=> (not res!894900) (not e!767223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91943 (_ BitVec 32)) Bool)

(assert (=> b!1348643 (= res!894900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348644 () Bool)

(declare-fun res!894896 () Bool)

(assert (=> b!1348644 (=> (not res!894896) (not e!767223))))

(assert (=> b!1348644 (= res!894896 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1348645 () Bool)

(declare-fun e!767222 () Bool)

(declare-fun mapRes!58079 () Bool)

(assert (=> b!1348645 (= e!767222 (and e!767226 mapRes!58079))))

(declare-fun condMapEmpty!58079 () Bool)

(declare-fun mapDefault!58079 () ValueCell!17890)

