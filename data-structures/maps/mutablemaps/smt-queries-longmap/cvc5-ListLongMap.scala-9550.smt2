; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113198 () Bool)

(assert start!113198)

(declare-fun b_free!31213 () Bool)

(declare-fun b_next!31213 () Bool)

(assert (=> start!113198 (= b_free!31213 (not b_next!31213))))

(declare-fun tp!109444 () Bool)

(declare-fun b_and!50343 () Bool)

(assert (=> start!113198 (= tp!109444 b_and!50343)))

(declare-fun b!1341840 () Bool)

(declare-fun res!890295 () Bool)

(declare-fun e!764049 () Bool)

(assert (=> b!1341840 (=> (not res!890295) (not e!764049))))

(declare-datatypes ((array!91235 0))(
  ( (array!91236 (arr!44069 (Array (_ BitVec 32) (_ BitVec 64))) (size!44620 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91235)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341840 (= res!890295 (validKeyInArray!0 (select (arr!44069 _keys!1571) from!1960)))))

(declare-fun b!1341841 () Bool)

(declare-fun e!764048 () Bool)

(declare-fun tp_is_empty!37213 () Bool)

(assert (=> b!1341841 (= e!764048 tp_is_empty!37213)))

(declare-fun b!1341842 () Bool)

(declare-fun res!890300 () Bool)

(assert (=> b!1341842 (=> (not res!890300) (not e!764049))))

(declare-datatypes ((V!54721 0))(
  ( (V!54722 (val!18681 Int)) )
))
(declare-fun minValue!1245 () V!54721)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54721)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17708 0))(
  ( (ValueCellFull!17708 (v!21327 V!54721)) (EmptyCell!17708) )
))
(declare-datatypes ((array!91237 0))(
  ( (array!91238 (arr!44070 (Array (_ BitVec 32) ValueCell!17708)) (size!44621 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91237)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24206 0))(
  ( (tuple2!24207 (_1!12113 (_ BitVec 64)) (_2!12113 V!54721)) )
))
(declare-datatypes ((List!31386 0))(
  ( (Nil!31383) (Cons!31382 (h!32591 tuple2!24206) (t!45817 List!31386)) )
))
(declare-datatypes ((ListLongMap!21875 0))(
  ( (ListLongMap!21876 (toList!10953 List!31386)) )
))
(declare-fun contains!9065 (ListLongMap!21875 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5853 (array!91235 array!91237 (_ BitVec 32) (_ BitVec 32) V!54721 V!54721 (_ BitVec 32) Int) ListLongMap!21875)

(assert (=> b!1341842 (= res!890300 (contains!9065 (getCurrentListMap!5853 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341844 () Bool)

(declare-fun e!764050 () Bool)

(assert (=> b!1341844 (= e!764050 tp_is_empty!37213)))

(declare-fun b!1341845 () Bool)

(declare-fun res!890292 () Bool)

(assert (=> b!1341845 (=> (not res!890292) (not e!764049))))

(assert (=> b!1341845 (= res!890292 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341846 () Bool)

(declare-fun res!890299 () Bool)

(assert (=> b!1341846 (=> (not res!890299) (not e!764049))))

(declare-datatypes ((List!31387 0))(
  ( (Nil!31384) (Cons!31383 (h!32592 (_ BitVec 64)) (t!45818 List!31387)) )
))
(declare-fun arrayNoDuplicates!0 (array!91235 (_ BitVec 32) List!31387) Bool)

(assert (=> b!1341846 (= res!890299 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31384))))

(declare-fun b!1341847 () Bool)

(declare-fun res!890296 () Bool)

(assert (=> b!1341847 (=> (not res!890296) (not e!764049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91235 (_ BitVec 32)) Bool)

(assert (=> b!1341847 (= res!890296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341848 () Bool)

(declare-fun e!764047 () Bool)

(declare-fun mapRes!57526 () Bool)

(assert (=> b!1341848 (= e!764047 (and e!764050 mapRes!57526))))

(declare-fun condMapEmpty!57526 () Bool)

(declare-fun mapDefault!57526 () ValueCell!17708)

