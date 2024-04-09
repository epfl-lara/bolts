; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38254 () Bool)

(assert start!38254)

(declare-fun b!394441 () Bool)

(declare-fun e!238777 () Bool)

(declare-fun e!238778 () Bool)

(declare-fun mapRes!16233 () Bool)

(assert (=> b!394441 (= e!238777 (and e!238778 mapRes!16233))))

(declare-fun condMapEmpty!16233 () Bool)

(declare-datatypes ((V!14111 0))(
  ( (V!14112 (val!4922 Int)) )
))
(declare-datatypes ((ValueCell!4534 0))(
  ( (ValueCellFull!4534 (v!7163 V!14111)) (EmptyCell!4534) )
))
(declare-datatypes ((array!23395 0))(
  ( (array!23396 (arr!11151 (Array (_ BitVec 32) ValueCell!4534)) (size!11503 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23395)

(declare-fun mapDefault!16233 () ValueCell!4534)

