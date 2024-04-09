; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35414 () Bool)

(assert start!35414)

(declare-fun b!354237 () Bool)

(declare-fun e!217126 () Bool)

(declare-fun tp_is_empty!7859 () Bool)

(assert (=> b!354237 (= e!217126 tp_is_empty!7859)))

(declare-fun b!354238 () Bool)

(declare-fun e!217129 () Bool)

(assert (=> b!354238 (= e!217129 tp_is_empty!7859)))

(declare-fun b!354239 () Bool)

(declare-fun res!196434 () Bool)

(declare-fun e!217128 () Bool)

(assert (=> b!354239 (=> (not res!196434) (not e!217128))))

(declare-datatypes ((array!19273 0))(
  ( (array!19274 (arr!9127 (Array (_ BitVec 32) (_ BitVec 64))) (size!9479 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19273)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19273 (_ BitVec 32)) Bool)

(assert (=> b!354239 (= res!196434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354240 () Bool)

(declare-fun e!217127 () Bool)

(declare-fun mapRes!13296 () Bool)

(assert (=> b!354240 (= e!217127 (and e!217126 mapRes!13296))))

(declare-fun condMapEmpty!13296 () Bool)

(declare-datatypes ((V!11455 0))(
  ( (V!11456 (val!3974 Int)) )
))
(declare-datatypes ((ValueCell!3586 0))(
  ( (ValueCellFull!3586 (v!6164 V!11455)) (EmptyCell!3586) )
))
(declare-datatypes ((array!19275 0))(
  ( (array!19276 (arr!9128 (Array (_ BitVec 32) ValueCell!3586)) (size!9480 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19275)

(declare-fun mapDefault!13296 () ValueCell!3586)

