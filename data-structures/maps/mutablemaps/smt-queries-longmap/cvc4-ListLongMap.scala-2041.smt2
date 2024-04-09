; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35426 () Bool)

(assert start!35426)

(declare-fun b!354345 () Bool)

(declare-fun e!217219 () Bool)

(declare-fun e!217216 () Bool)

(declare-fun mapRes!13314 () Bool)

(assert (=> b!354345 (= e!217219 (and e!217216 mapRes!13314))))

(declare-fun condMapEmpty!13314 () Bool)

(declare-datatypes ((V!11471 0))(
  ( (V!11472 (val!3980 Int)) )
))
(declare-datatypes ((ValueCell!3592 0))(
  ( (ValueCellFull!3592 (v!6170 V!11471)) (EmptyCell!3592) )
))
(declare-datatypes ((array!19295 0))(
  ( (array!19296 (arr!9138 (Array (_ BitVec 32) ValueCell!3592)) (size!9490 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19295)

(declare-fun mapDefault!13314 () ValueCell!3592)

