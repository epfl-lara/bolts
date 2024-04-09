; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113578 () Bool)

(assert start!113578)

(declare-fun b_free!31535 () Bool)

(declare-fun b_next!31535 () Bool)

(assert (=> start!113578 (= b_free!31535 (not b_next!31535))))

(declare-fun tp!110414 () Bool)

(declare-fun b_and!50869 () Bool)

(assert (=> start!113578 (= tp!110414 b_and!50869)))

(declare-fun b!1347706 () Bool)

(declare-fun res!894300 () Bool)

(declare-fun e!766790 () Bool)

(assert (=> b!1347706 (=> (not res!894300) (not e!766790))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91861 0))(
  ( (array!91862 (arr!44381 (Array (_ BitVec 32) (_ BitVec 64))) (size!44932 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91861)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347706 (= res!894300 (not (= (select (arr!44381 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347707 () Bool)

(declare-fun res!894304 () Bool)

(assert (=> b!1347707 (=> (not res!894304) (not e!766790))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55149 0))(
  ( (V!55150 (val!18842 Int)) )
))
(declare-datatypes ((ValueCell!17869 0))(
  ( (ValueCellFull!17869 (v!21491 V!55149)) (EmptyCell!17869) )
))
(declare-datatypes ((array!91863 0))(
  ( (array!91864 (arr!44382 (Array (_ BitVec 32) ValueCell!17869)) (size!44933 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91863)

(assert (=> b!1347707 (= res!894304 (and (= (size!44933 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44932 _keys!1571) (size!44933 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347708 () Bool)

(declare-fun res!894303 () Bool)

(assert (=> b!1347708 (=> (not res!894303) (not e!766790))))

(assert (=> b!1347708 (= res!894303 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347709 () Bool)

(declare-fun res!894298 () Bool)

(assert (=> b!1347709 (=> (not res!894298) (not e!766790))))

(declare-datatypes ((List!31603 0))(
  ( (Nil!31600) (Cons!31599 (h!32808 (_ BitVec 64)) (t!46224 List!31603)) )
))
(declare-fun arrayNoDuplicates!0 (array!91861 (_ BitVec 32) List!31603) Bool)

(assert (=> b!1347709 (= res!894298 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31600))))

(declare-fun b!1347710 () Bool)

(declare-fun res!894301 () Bool)

(assert (=> b!1347710 (=> (not res!894301) (not e!766790))))

(declare-fun minValue!1245 () V!55149)

(declare-fun zeroValue!1245 () V!55149)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24434 0))(
  ( (tuple2!24435 (_1!12227 (_ BitVec 64)) (_2!12227 V!55149)) )
))
(declare-datatypes ((List!31604 0))(
  ( (Nil!31601) (Cons!31600 (h!32809 tuple2!24434) (t!46225 List!31604)) )
))
(declare-datatypes ((ListLongMap!22103 0))(
  ( (ListLongMap!22104 (toList!11067 List!31604)) )
))
(declare-fun contains!9180 (ListLongMap!22103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5957 (array!91861 array!91863 (_ BitVec 32) (_ BitVec 32) V!55149 V!55149 (_ BitVec 32) Int) ListLongMap!22103)

(assert (=> b!1347710 (= res!894301 (contains!9180 (getCurrentListMap!5957 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347711 () Bool)

(declare-fun res!894299 () Bool)

(assert (=> b!1347711 (=> (not res!894299) (not e!766790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347711 (= res!894299 (validKeyInArray!0 (select (arr!44381 _keys!1571) from!1960)))))

(declare-fun b!1347712 () Bool)

(declare-fun e!766788 () Bool)

(declare-fun tp_is_empty!37535 () Bool)

(assert (=> b!1347712 (= e!766788 tp_is_empty!37535)))

(declare-fun b!1347713 () Bool)

(declare-fun res!894302 () Bool)

(assert (=> b!1347713 (=> (not res!894302) (not e!766790))))

(assert (=> b!1347713 (= res!894302 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44932 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347714 () Bool)

(declare-fun res!894296 () Bool)

(assert (=> b!1347714 (=> (not res!894296) (not e!766790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91861 (_ BitVec 32)) Bool)

(assert (=> b!1347714 (= res!894296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347715 () Bool)

(declare-fun e!766789 () Bool)

(assert (=> b!1347715 (= e!766789 tp_is_empty!37535)))

(declare-fun b!1347716 () Bool)

(declare-fun e!766787 () Bool)

(declare-fun mapRes!58013 () Bool)

(assert (=> b!1347716 (= e!766787 (and e!766788 mapRes!58013))))

(declare-fun condMapEmpty!58013 () Bool)

(declare-fun mapDefault!58013 () ValueCell!17869)

