; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35410 () Bool)

(assert start!35410)

(declare-fun mapIsEmpty!13290 () Bool)

(declare-fun mapRes!13290 () Bool)

(assert (=> mapIsEmpty!13290 mapRes!13290))

(declare-fun b!354201 () Bool)

(declare-fun e!217097 () Bool)

(declare-fun tp_is_empty!7855 () Bool)

(assert (=> b!354201 (= e!217097 tp_is_empty!7855)))

(declare-fun b!354202 () Bool)

(declare-fun e!217100 () Bool)

(assert (=> b!354202 (= e!217100 (and e!217097 mapRes!13290))))

(declare-fun condMapEmpty!13290 () Bool)

(declare-datatypes ((V!11451 0))(
  ( (V!11452 (val!3972 Int)) )
))
(declare-datatypes ((ValueCell!3584 0))(
  ( (ValueCellFull!3584 (v!6162 V!11451)) (EmptyCell!3584) )
))
(declare-datatypes ((array!19267 0))(
  ( (array!19268 (arr!9124 (Array (_ BitVec 32) ValueCell!3584)) (size!9476 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19267)

(declare-fun mapDefault!13290 () ValueCell!3584)

