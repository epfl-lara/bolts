; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40944 () Bool)

(assert start!40944)

(declare-fun b_free!10871 () Bool)

(declare-fun b_next!10871 () Bool)

(assert (=> start!40944 (= b_free!10871 (not b_next!10871))))

(declare-fun tp!38439 () Bool)

(declare-fun b_and!19031 () Bool)

(assert (=> start!40944 (= tp!38439 b_and!19031)))

(declare-fun b!455027 () Bool)

(declare-fun res!271356 () Bool)

(declare-fun e!266085 () Bool)

(assert (=> b!455027 (=> (not res!271356) (not e!266085))))

(declare-datatypes ((array!28187 0))(
  ( (array!28188 (arr!13534 (Array (_ BitVec 32) (_ BitVec 64))) (size!13886 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28187)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455027 (= res!271356 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455028 () Bool)

(declare-fun e!266090 () Bool)

(declare-fun e!266089 () Bool)

(declare-fun mapRes!19954 () Bool)

(assert (=> b!455028 (= e!266090 (and e!266089 mapRes!19954))))

(declare-fun condMapEmpty!19954 () Bool)

(declare-datatypes ((V!17383 0))(
  ( (V!17384 (val!6149 Int)) )
))
(declare-datatypes ((ValueCell!5761 0))(
  ( (ValueCellFull!5761 (v!8411 V!17383)) (EmptyCell!5761) )
))
(declare-datatypes ((array!28189 0))(
  ( (array!28190 (arr!13535 (Array (_ BitVec 32) ValueCell!5761)) (size!13887 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28189)

(declare-fun mapDefault!19954 () ValueCell!5761)

