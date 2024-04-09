; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83230 () Bool)

(assert start!83230)

(declare-fun b_free!19195 () Bool)

(declare-fun b_next!19195 () Bool)

(assert (=> start!83230 (= b_free!19195 (not b_next!19195))))

(declare-fun tp!66864 () Bool)

(declare-fun b_and!30701 () Bool)

(assert (=> start!83230 (= tp!66864 b_and!30701)))

(declare-fun b!970587 () Bool)

(declare-fun e!547209 () Bool)

(declare-fun e!547208 () Bool)

(declare-fun mapRes!35149 () Bool)

(assert (=> b!970587 (= e!547209 (and e!547208 mapRes!35149))))

(declare-fun condMapEmpty!35149 () Bool)

(declare-datatypes ((V!34441 0))(
  ( (V!34442 (val!11097 Int)) )
))
(declare-datatypes ((ValueCell!10565 0))(
  ( (ValueCellFull!10565 (v!13656 V!34441)) (EmptyCell!10565) )
))
(declare-datatypes ((array!60223 0))(
  ( (array!60224 (arr!28971 (Array (_ BitVec 32) ValueCell!10565)) (size!29451 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60223)

(declare-fun mapDefault!35149 () ValueCell!10565)

