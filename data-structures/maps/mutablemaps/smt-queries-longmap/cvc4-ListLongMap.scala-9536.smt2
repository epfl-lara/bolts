; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113118 () Bool)

(assert start!113118)

(declare-fun b_free!31133 () Bool)

(declare-fun b_next!31133 () Bool)

(assert (=> start!113118 (= b_free!31133 (not b_next!31133))))

(declare-fun tp!109205 () Bool)

(declare-fun b_and!50183 () Bool)

(assert (=> start!113118 (= tp!109205 b_and!50183)))

(declare-fun b!1340320 () Bool)

(declare-fun res!889215 () Bool)

(declare-fun e!763450 () Bool)

(assert (=> b!1340320 (=> (not res!889215) (not e!763450))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91077 0))(
  ( (array!91078 (arr!43990 (Array (_ BitVec 32) (_ BitVec 64))) (size!44541 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91077)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340320 (= res!889215 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44541 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340321 () Bool)

(declare-fun e!763449 () Bool)

(declare-fun e!763447 () Bool)

(declare-fun mapRes!57406 () Bool)

(assert (=> b!1340321 (= e!763449 (and e!763447 mapRes!57406))))

(declare-fun condMapEmpty!57406 () Bool)

(declare-datatypes ((V!54613 0))(
  ( (V!54614 (val!18641 Int)) )
))
(declare-datatypes ((ValueCell!17668 0))(
  ( (ValueCellFull!17668 (v!21287 V!54613)) (EmptyCell!17668) )
))
(declare-datatypes ((array!91079 0))(
  ( (array!91080 (arr!43991 (Array (_ BitVec 32) ValueCell!17668)) (size!44542 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91079)

(declare-fun mapDefault!57406 () ValueCell!17668)

