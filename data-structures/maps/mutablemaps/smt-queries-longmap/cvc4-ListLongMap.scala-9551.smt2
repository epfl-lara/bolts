; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113208 () Bool)

(assert start!113208)

(declare-fun b_free!31223 () Bool)

(declare-fun b_next!31223 () Bool)

(assert (=> start!113208 (= b_free!31223 (not b_next!31223))))

(declare-fun tp!109474 () Bool)

(declare-fun b_and!50363 () Bool)

(assert (=> start!113208 (= tp!109474 b_and!50363)))

(declare-fun b!1342030 () Bool)

(declare-fun e!764125 () Bool)

(declare-fun tp_is_empty!37223 () Bool)

(assert (=> b!1342030 (= e!764125 tp_is_empty!37223)))

(declare-fun b!1342031 () Bool)

(declare-fun res!890433 () Bool)

(declare-fun e!764126 () Bool)

(assert (=> b!1342031 (=> (not res!890433) (not e!764126))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91255 0))(
  ( (array!91256 (arr!44079 (Array (_ BitVec 32) (_ BitVec 64))) (size!44630 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91255)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54733 0))(
  ( (V!54734 (val!18686 Int)) )
))
(declare-datatypes ((ValueCell!17713 0))(
  ( (ValueCellFull!17713 (v!21332 V!54733)) (EmptyCell!17713) )
))
(declare-datatypes ((array!91257 0))(
  ( (array!91258 (arr!44080 (Array (_ BitVec 32) ValueCell!17713)) (size!44631 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91257)

(assert (=> b!1342031 (= res!890433 (and (= (size!44631 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44630 _keys!1571) (size!44631 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342032 () Bool)

(declare-fun res!890434 () Bool)

(assert (=> b!1342032 (=> (not res!890434) (not e!764126))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342032 (= res!890434 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44630 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342033 () Bool)

(declare-fun res!890435 () Bool)

(assert (=> b!1342033 (=> (not res!890435) (not e!764126))))

(declare-fun zeroValue!1245 () V!54733)

(declare-fun minValue!1245 () V!54733)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24214 0))(
  ( (tuple2!24215 (_1!12117 (_ BitVec 64)) (_2!12117 V!54733)) )
))
(declare-datatypes ((List!31394 0))(
  ( (Nil!31391) (Cons!31390 (h!32599 tuple2!24214) (t!45835 List!31394)) )
))
(declare-datatypes ((ListLongMap!21883 0))(
  ( (ListLongMap!21884 (toList!10957 List!31394)) )
))
(declare-fun contains!9069 (ListLongMap!21883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5857 (array!91255 array!91257 (_ BitVec 32) (_ BitVec 32) V!54733 V!54733 (_ BitVec 32) Int) ListLongMap!21883)

(assert (=> b!1342033 (= res!890435 (contains!9069 (getCurrentListMap!5857 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342034 () Bool)

(declare-fun res!890432 () Bool)

(assert (=> b!1342034 (=> (not res!890432) (not e!764126))))

(assert (=> b!1342034 (= res!890432 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342035 () Bool)

(declare-fun res!890431 () Bool)

(assert (=> b!1342035 (=> (not res!890431) (not e!764126))))

(assert (=> b!1342035 (= res!890431 (not (= (select (arr!44079 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342036 () Bool)

(declare-fun res!890429 () Bool)

(assert (=> b!1342036 (=> (not res!890429) (not e!764126))))

(declare-datatypes ((List!31395 0))(
  ( (Nil!31392) (Cons!31391 (h!32600 (_ BitVec 64)) (t!45836 List!31395)) )
))
(declare-fun arrayNoDuplicates!0 (array!91255 (_ BitVec 32) List!31395) Bool)

(assert (=> b!1342036 (= res!890429 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31392))))

(declare-fun b!1342037 () Bool)

(declare-fun e!764124 () Bool)

(declare-fun mapRes!57541 () Bool)

(assert (=> b!1342037 (= e!764124 (and e!764125 mapRes!57541))))

(declare-fun condMapEmpty!57541 () Bool)

(declare-fun mapDefault!57541 () ValueCell!17713)

