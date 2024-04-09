; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39396 () Bool)

(assert start!39396)

(declare-fun b_free!9655 () Bool)

(declare-fun b_next!9655 () Bool)

(assert (=> start!39396 (= b_free!9655 (not b_next!9655))))

(declare-fun tp!34494 () Bool)

(declare-fun b_and!17203 () Bool)

(assert (=> start!39396 (= tp!34494 b_and!17203)))

(declare-fun b!418415 () Bool)

(declare-fun res!243903 () Bool)

(declare-fun e!249490 () Bool)

(assert (=> b!418415 (=> (not res!243903) (not e!249490))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418415 (= res!243903 (bvsle from!863 i!563))))

(declare-fun b!418416 () Bool)

(declare-fun e!249491 () Bool)

(declare-fun e!249493 () Bool)

(declare-fun mapRes!17832 () Bool)

(assert (=> b!418416 (= e!249491 (and e!249493 mapRes!17832))))

(declare-fun condMapEmpty!17832 () Bool)

(declare-datatypes ((V!15515 0))(
  ( (V!15516 (val!5448 Int)) )
))
(declare-datatypes ((ValueCell!5060 0))(
  ( (ValueCellFull!5060 (v!7691 V!15515)) (EmptyCell!5060) )
))
(declare-datatypes ((array!25447 0))(
  ( (array!25448 (arr!12170 (Array (_ BitVec 32) ValueCell!5060)) (size!12522 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25447)

(declare-fun mapDefault!17832 () ValueCell!5060)

