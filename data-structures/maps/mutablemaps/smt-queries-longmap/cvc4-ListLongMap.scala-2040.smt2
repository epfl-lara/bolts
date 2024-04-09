; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35420 () Bool)

(assert start!35420)

(declare-fun b!354291 () Bool)

(declare-fun e!217173 () Bool)

(declare-fun e!217174 () Bool)

(declare-fun mapRes!13305 () Bool)

(assert (=> b!354291 (= e!217173 (and e!217174 mapRes!13305))))

(declare-fun condMapEmpty!13305 () Bool)

(declare-datatypes ((V!11463 0))(
  ( (V!11464 (val!3977 Int)) )
))
(declare-datatypes ((ValueCell!3589 0))(
  ( (ValueCellFull!3589 (v!6167 V!11463)) (EmptyCell!3589) )
))
(declare-datatypes ((array!19285 0))(
  ( (array!19286 (arr!9133 (Array (_ BitVec 32) ValueCell!3589)) (size!9485 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19285)

(declare-fun mapDefault!13305 () ValueCell!3589)

