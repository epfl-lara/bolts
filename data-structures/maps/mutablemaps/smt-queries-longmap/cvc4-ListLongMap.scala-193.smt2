; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3780 () Bool)

(assert start!3780)

(declare-fun b!26461 () Bool)

(declare-fun res!15692 () Bool)

(declare-fun e!17232 () Bool)

(assert (=> b!26461 (=> (not res!15692) (not e!17232))))

(declare-datatypes ((V!1295 0))(
  ( (V!1296 (val!578 Int)) )
))
(declare-datatypes ((ValueCell!352 0))(
  ( (ValueCellFull!352 (v!1664 V!1295)) (EmptyCell!352) )
))
(declare-datatypes ((array!1437 0))(
  ( (array!1438 (arr!676 (Array (_ BitVec 32) ValueCell!352)) (size!777 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1437)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1439 0))(
  ( (array!1440 (arr!677 (Array (_ BitVec 32) (_ BitVec 64))) (size!778 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1439)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26461 (= res!15692 (and (= (size!777 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!778 _keys!1833) (size!777 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26462 () Bool)

(declare-fun e!17235 () Bool)

(declare-fun e!17233 () Bool)

(declare-fun mapRes!1171 () Bool)

(assert (=> b!26462 (= e!17235 (and e!17233 mapRes!1171))))

(declare-fun condMapEmpty!1171 () Bool)

(declare-fun mapDefault!1171 () ValueCell!352)

