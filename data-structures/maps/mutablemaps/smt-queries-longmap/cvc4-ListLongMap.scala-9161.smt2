; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110032 () Bool)

(assert start!110032)

(declare-fun b_free!29243 () Bool)

(declare-fun b_next!29243 () Bool)

(assert (=> start!110032 (= b_free!29243 (not b_next!29243))))

(declare-fun tp!102875 () Bool)

(declare-fun b_and!47405 () Bool)

(assert (=> start!110032 (= tp!102875 b_and!47405)))

(declare-fun b!1302677 () Bool)

(declare-fun res!865352 () Bool)

(declare-fun e!743069 () Bool)

(assert (=> b!1302677 (=> (not res!865352) (not e!743069))))

(declare-datatypes ((array!86739 0))(
  ( (array!86740 (arr!41858 (Array (_ BitVec 32) (_ BitVec 64))) (size!42409 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86739)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302677 (= res!865352 (not (validKeyInArray!0 (select (arr!41858 _keys!1741) from!2144))))))

(declare-fun b!1302678 () Bool)

(declare-fun res!865351 () Bool)

(assert (=> b!1302678 (=> (not res!865351) (not e!743069))))

(declare-datatypes ((List!29905 0))(
  ( (Nil!29902) (Cons!29901 (h!31110 (_ BitVec 64)) (t!43502 List!29905)) )
))
(declare-fun arrayNoDuplicates!0 (array!86739 (_ BitVec 32) List!29905) Bool)

(assert (=> b!1302678 (= res!865351 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29902))))

(declare-fun b!1302679 () Bool)

(declare-fun e!743064 () Bool)

(assert (=> b!1302679 (= e!743069 (not e!743064))))

(declare-fun res!865359 () Bool)

(assert (=> b!1302679 (=> res!865359 e!743064)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1302679 (= res!865359 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51613 0))(
  ( (V!51614 (val!17516 Int)) )
))
(declare-datatypes ((tuple2!22752 0))(
  ( (tuple2!22753 (_1!11386 (_ BitVec 64)) (_2!11386 V!51613)) )
))
(declare-datatypes ((List!29906 0))(
  ( (Nil!29903) (Cons!29902 (h!31111 tuple2!22752) (t!43503 List!29906)) )
))
(declare-datatypes ((ListLongMap!20421 0))(
  ( (ListLongMap!20422 (toList!10226 List!29906)) )
))
(declare-fun contains!8293 (ListLongMap!20421 (_ BitVec 64)) Bool)

(assert (=> b!1302679 (not (contains!8293 (ListLongMap!20422 Nil!29903) k!1205))))

(declare-datatypes ((Unit!43073 0))(
  ( (Unit!43074) )
))
(declare-fun lt!582759 () Unit!43073)

(declare-fun emptyContainsNothing!214 ((_ BitVec 64)) Unit!43073)

(assert (=> b!1302679 (= lt!582759 (emptyContainsNothing!214 k!1205))))

(declare-fun b!1302680 () Bool)

(declare-fun res!865354 () Bool)

(assert (=> b!1302680 (=> (not res!865354) (not e!743069))))

(assert (=> b!1302680 (= res!865354 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42409 _keys!1741))))))

(declare-fun b!1302681 () Bool)

(declare-fun res!865358 () Bool)

(assert (=> b!1302681 (=> (not res!865358) (not e!743069))))

(assert (=> b!1302681 (= res!865358 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42409 _keys!1741))))))

(declare-fun b!1302682 () Bool)

(declare-fun e!743068 () Bool)

(declare-fun e!743070 () Bool)

(declare-fun mapRes!53911 () Bool)

(assert (=> b!1302682 (= e!743068 (and e!743070 mapRes!53911))))

(declare-fun condMapEmpty!53911 () Bool)

(declare-datatypes ((ValueCell!16543 0))(
  ( (ValueCellFull!16543 (v!20128 V!51613)) (EmptyCell!16543) )
))
(declare-datatypes ((array!86741 0))(
  ( (array!86742 (arr!41859 (Array (_ BitVec 32) ValueCell!16543)) (size!42410 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86741)

(declare-fun mapDefault!53911 () ValueCell!16543)

