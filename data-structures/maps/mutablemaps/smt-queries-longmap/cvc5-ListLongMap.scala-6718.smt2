; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84308 () Bool)

(assert start!84308)

(declare-fun b!985843 () Bool)

(declare-fun e!555781 () Bool)

(declare-fun e!555783 () Bool)

(declare-fun mapRes!36653 () Bool)

(assert (=> b!985843 (= e!555781 (and e!555783 mapRes!36653))))

(declare-fun condMapEmpty!36653 () Bool)

(declare-datatypes ((V!35761 0))(
  ( (V!35762 (val!11592 Int)) )
))
(declare-datatypes ((ValueCell!11060 0))(
  ( (ValueCellFull!11060 (v!14154 V!35761)) (EmptyCell!11060) )
))
(declare-datatypes ((array!62127 0))(
  ( (array!62128 (arr!29917 (Array (_ BitVec 32) ValueCell!11060)) (size!30397 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62127)

(declare-fun mapDefault!36653 () ValueCell!11060)

