; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109208 () Bool)

(assert start!109208)

(declare-fun b_free!28661 () Bool)

(declare-fun b_next!28661 () Bool)

(assert (=> start!109208 (= b_free!28661 (not b_next!28661))))

(declare-fun tp!101102 () Bool)

(declare-fun b_and!46761 () Bool)

(assert (=> start!109208 (= tp!101102 b_and!46761)))

(declare-fun b!1291083 () Bool)

(declare-fun e!737062 () Bool)

(declare-fun e!737065 () Bool)

(assert (=> b!1291083 (= e!737062 (not e!737065))))

(declare-fun res!857848 () Bool)

(assert (=> b!1291083 (=> res!857848 e!737065)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291083 (= res!857848 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50837 0))(
  ( (V!50838 (val!17225 Int)) )
))
(declare-datatypes ((tuple2!22276 0))(
  ( (tuple2!22277 (_1!11148 (_ BitVec 64)) (_2!11148 V!50837)) )
))
(declare-datatypes ((List!29471 0))(
  ( (Nil!29468) (Cons!29467 (h!30676 tuple2!22276) (t!43042 List!29471)) )
))
(declare-datatypes ((ListLongMap!19945 0))(
  ( (ListLongMap!19946 (toList!9988 List!29471)) )
))
(declare-fun contains!8044 (ListLongMap!19945 (_ BitVec 64)) Bool)

(assert (=> b!1291083 (not (contains!8044 (ListLongMap!19946 Nil!29468) k!1205))))

(declare-datatypes ((Unit!42665 0))(
  ( (Unit!42666) )
))
(declare-fun lt!578937 () Unit!42665)

(declare-fun emptyContainsNothing!92 ((_ BitVec 64)) Unit!42665)

(assert (=> b!1291083 (= lt!578937 (emptyContainsNothing!92 k!1205))))

(declare-fun b!1291084 () Bool)

(declare-fun res!857850 () Bool)

(assert (=> b!1291084 (=> (not res!857850) (not e!737062))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85597 0))(
  ( (array!85598 (arr!41295 (Array (_ BitVec 32) (_ BitVec 64))) (size!41846 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85597)

(assert (=> b!1291084 (= res!857850 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41846 _keys!1741))))))

(declare-fun b!1291085 () Bool)

(declare-fun e!737064 () Bool)

(declare-fun e!737063 () Bool)

(declare-fun mapRes!53012 () Bool)

(assert (=> b!1291085 (= e!737064 (and e!737063 mapRes!53012))))

(declare-fun condMapEmpty!53012 () Bool)

(declare-datatypes ((ValueCell!16252 0))(
  ( (ValueCellFull!16252 (v!19826 V!50837)) (EmptyCell!16252) )
))
(declare-datatypes ((array!85599 0))(
  ( (array!85600 (arr!41296 (Array (_ BitVec 32) ValueCell!16252)) (size!41847 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85599)

(declare-fun mapDefault!53012 () ValueCell!16252)

