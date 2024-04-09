; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84840 () Bool)

(assert start!84840)

(declare-fun b!991343 () Bool)

(declare-fun e!559120 () Bool)

(declare-datatypes ((array!62607 0))(
  ( (array!62608 (arr!30148 (Array (_ BitVec 32) (_ BitVec 64))) (size!30628 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62607)

(assert (=> b!991343 (= e!559120 (bvsgt #b00000000000000000000000000000000 (size!30628 _keys!1945)))))

(declare-fun mapNonEmpty!37053 () Bool)

(declare-fun mapRes!37053 () Bool)

(declare-fun tp!70125 () Bool)

(declare-fun e!559118 () Bool)

(assert (=> mapNonEmpty!37053 (= mapRes!37053 (and tp!70125 e!559118))))

(declare-datatypes ((V!36089 0))(
  ( (V!36090 (val!11715 Int)) )
))
(declare-datatypes ((ValueCell!11183 0))(
  ( (ValueCellFull!11183 (v!14291 V!36089)) (EmptyCell!11183) )
))
(declare-fun mapValue!37053 () ValueCell!11183)

(declare-datatypes ((array!62609 0))(
  ( (array!62610 (arr!30149 (Array (_ BitVec 32) ValueCell!11183)) (size!30629 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62609)

(declare-fun mapRest!37053 () (Array (_ BitVec 32) ValueCell!11183))

(declare-fun mapKey!37053 () (_ BitVec 32))

(assert (=> mapNonEmpty!37053 (= (arr!30149 _values!1551) (store mapRest!37053 mapKey!37053 mapValue!37053))))

(declare-fun b!991344 () Bool)

(declare-fun e!559121 () Bool)

(declare-fun e!559119 () Bool)

(assert (=> b!991344 (= e!559121 (and e!559119 mapRes!37053))))

(declare-fun condMapEmpty!37053 () Bool)

(declare-fun mapDefault!37053 () ValueCell!11183)

