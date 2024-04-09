; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113090 () Bool)

(assert start!113090)

(declare-fun b_free!31105 () Bool)

(declare-fun b_next!31105 () Bool)

(assert (=> start!113090 (= b_free!31105 (not b_next!31105))))

(declare-fun tp!109121 () Bool)

(declare-fun b_and!50145 () Bool)

(assert (=> start!113090 (= tp!109121 b_and!50145)))

(declare-fun b!1339879 () Bool)

(declare-fun e!763240 () Bool)

(assert (=> b!1339879 (= e!763240 false)))

(declare-fun lt!593884 () Bool)

(declare-datatypes ((V!54577 0))(
  ( (V!54578 (val!18627 Int)) )
))
(declare-fun minValue!1245 () V!54577)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91027 0))(
  ( (array!91028 (arr!43965 (Array (_ BitVec 32) (_ BitVec 64))) (size!44516 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91027)

(declare-fun zeroValue!1245 () V!54577)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17654 0))(
  ( (ValueCellFull!17654 (v!21273 V!54577)) (EmptyCell!17654) )
))
(declare-datatypes ((array!91029 0))(
  ( (array!91030 (arr!43966 (Array (_ BitVec 32) ValueCell!17654)) (size!44517 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91029)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24124 0))(
  ( (tuple2!24125 (_1!12072 (_ BitVec 64)) (_2!12072 V!54577)) )
))
(declare-datatypes ((List!31310 0))(
  ( (Nil!31307) (Cons!31306 (h!32515 tuple2!24124) (t!45649 List!31310)) )
))
(declare-datatypes ((ListLongMap!21793 0))(
  ( (ListLongMap!21794 (toList!10912 List!31310)) )
))
(declare-fun contains!9024 (ListLongMap!21793 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5816 (array!91027 array!91029 (_ BitVec 32) (_ BitVec 32) V!54577 V!54577 (_ BitVec 32) Int) ListLongMap!21793)

(assert (=> b!1339879 (= lt!593884 (contains!9024 (getCurrentListMap!5816 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339880 () Bool)

(declare-fun res!888910 () Bool)

(assert (=> b!1339880 (=> (not res!888910) (not e!763240))))

(assert (=> b!1339880 (= res!888910 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44516 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339881 () Bool)

(declare-fun e!763238 () Bool)

(declare-fun e!763237 () Bool)

(declare-fun mapRes!57364 () Bool)

(assert (=> b!1339881 (= e!763238 (and e!763237 mapRes!57364))))

(declare-fun condMapEmpty!57364 () Bool)

(declare-fun mapDefault!57364 () ValueCell!17654)

