; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84872 () Bool)

(assert start!84872)

(declare-fun b!991535 () Bool)

(declare-fun e!559272 () Bool)

(declare-fun e!559271 () Bool)

(declare-fun mapRes!37083 () Bool)

(assert (=> b!991535 (= e!559272 (and e!559271 mapRes!37083))))

(declare-fun condMapEmpty!37083 () Bool)

(declare-datatypes ((V!36109 0))(
  ( (V!36110 (val!11723 Int)) )
))
(declare-datatypes ((ValueCell!11191 0))(
  ( (ValueCellFull!11191 (v!14299 V!36109)) (EmptyCell!11191) )
))
(declare-datatypes ((array!62643 0))(
  ( (array!62644 (arr!30164 (Array (_ BitVec 32) ValueCell!11191)) (size!30644 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62643)

(declare-fun mapDefault!37083 () ValueCell!11191)

