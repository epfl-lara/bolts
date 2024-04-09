; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40120 () Bool)

(assert start!40120)

(declare-fun b_free!10379 () Bool)

(declare-fun b_next!10379 () Bool)

(assert (=> start!40120 (= b_free!10379 (not b_next!10379))))

(declare-fun tp!36666 () Bool)

(declare-fun b_and!18365 () Bool)

(assert (=> start!40120 (= tp!36666 b_and!18365)))

(declare-fun b!438257 () Bool)

(declare-fun e!258515 () Bool)

(declare-fun e!258516 () Bool)

(declare-fun mapRes!18918 () Bool)

(assert (=> b!438257 (= e!258515 (and e!258516 mapRes!18918))))

(declare-fun condMapEmpty!18918 () Bool)

(declare-datatypes ((V!16479 0))(
  ( (V!16480 (val!5810 Int)) )
))
(declare-datatypes ((ValueCell!5422 0))(
  ( (ValueCellFull!5422 (v!8053 V!16479)) (EmptyCell!5422) )
))
(declare-datatypes ((array!26859 0))(
  ( (array!26860 (arr!12876 (Array (_ BitVec 32) ValueCell!5422)) (size!13228 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26859)

(declare-fun mapDefault!18918 () ValueCell!5422)

