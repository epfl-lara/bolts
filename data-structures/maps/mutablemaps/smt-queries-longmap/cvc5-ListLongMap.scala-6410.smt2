; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82284 () Bool)

(assert start!82284)

(declare-fun b_free!18529 () Bool)

(declare-fun b_next!18529 () Bool)

(assert (=> start!82284 (= b_free!18529 (not b_next!18529))))

(declare-fun tp!64548 () Bool)

(declare-fun b_and!30035 () Bool)

(assert (=> start!82284 (= tp!64548 b_and!30035)))

(declare-fun mapNonEmpty!33832 () Bool)

(declare-fun mapRes!33832 () Bool)

(declare-fun tp!64549 () Bool)

(declare-fun e!540484 () Bool)

(assert (=> mapNonEmpty!33832 (= mapRes!33832 (and tp!64549 e!540484))))

(declare-datatypes ((V!33297 0))(
  ( (V!33298 (val!10668 Int)) )
))
(declare-datatypes ((ValueCell!10136 0))(
  ( (ValueCellFull!10136 (v!13225 V!33297)) (EmptyCell!10136) )
))
(declare-fun mapValue!33832 () ValueCell!10136)

(declare-datatypes ((array!58583 0))(
  ( (array!58584 (arr!28161 (Array (_ BitVec 32) ValueCell!10136)) (size!28641 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58583)

(declare-fun mapKey!33832 () (_ BitVec 32))

(declare-fun mapRest!33832 () (Array (_ BitVec 32) ValueCell!10136))

(assert (=> mapNonEmpty!33832 (= (arr!28161 _values!1386) (store mapRest!33832 mapKey!33832 mapValue!33832))))

(declare-fun b!958672 () Bool)

(declare-fun res!641814 () Bool)

(declare-fun e!540487 () Bool)

(assert (=> b!958672 (=> (not res!641814) (not e!540487))))

(declare-datatypes ((array!58585 0))(
  ( (array!58586 (arr!28162 (Array (_ BitVec 32) (_ BitVec 64))) (size!28642 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58585)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958672 (= res!641814 (validKeyInArray!0 (select (arr!28162 _keys!1668) i!793)))))

(declare-fun b!958673 () Bool)

(declare-fun e!540486 () Bool)

(declare-fun e!540485 () Bool)

(assert (=> b!958673 (= e!540486 (and e!540485 mapRes!33832))))

(declare-fun condMapEmpty!33832 () Bool)

(declare-fun mapDefault!33832 () ValueCell!10136)

