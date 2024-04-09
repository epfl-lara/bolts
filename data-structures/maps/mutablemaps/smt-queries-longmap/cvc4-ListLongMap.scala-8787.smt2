; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106948 () Bool)

(assert start!106948)

(declare-fun mapNonEmpty!50527 () Bool)

(declare-fun mapRes!50527 () Bool)

(declare-fun tp!96707 () Bool)

(declare-fun e!722514 () Bool)

(assert (=> mapNonEmpty!50527 (= mapRes!50527 (and tp!96707 e!722514))))

(declare-datatypes ((V!48711 0))(
  ( (V!48712 (val!16394 Int)) )
))
(declare-datatypes ((ValueCell!15466 0))(
  ( (ValueCellFull!15466 (v!19028 V!48711)) (EmptyCell!15466) )
))
(declare-datatypes ((array!82527 0))(
  ( (array!82528 (arr!39800 (Array (_ BitVec 32) ValueCell!15466)) (size!40337 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82527)

(declare-fun mapValue!50527 () ValueCell!15466)

(declare-fun mapKey!50527 () (_ BitVec 32))

(declare-fun mapRest!50527 () (Array (_ BitVec 32) ValueCell!15466))

(assert (=> mapNonEmpty!50527 (= (arr!39800 _values!1134) (store mapRest!50527 mapKey!50527 mapValue!50527))))

(declare-fun mapIsEmpty!50527 () Bool)

(assert (=> mapIsEmpty!50527 mapRes!50527))

(declare-fun b!1268015 () Bool)

(declare-fun e!722510 () Bool)

(declare-fun tp_is_empty!32639 () Bool)

(assert (=> b!1268015 (= e!722510 tp_is_empty!32639)))

(declare-fun b!1268016 () Bool)

(declare-fun e!722511 () Bool)

(assert (=> b!1268016 (= e!722511 (and e!722510 mapRes!50527))))

(declare-fun condMapEmpty!50527 () Bool)

(declare-fun mapDefault!50527 () ValueCell!15466)

