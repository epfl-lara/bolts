; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83354 () Bool)

(assert start!83354)

(declare-fun b_free!19319 () Bool)

(declare-fun b_next!19319 () Bool)

(assert (=> start!83354 (= b_free!19319 (not b_next!19319))))

(declare-fun tp!67237 () Bool)

(declare-fun b_and!30877 () Bool)

(assert (=> start!83354 (= tp!67237 b_and!30877)))

(declare-fun res!651119 () Bool)

(declare-fun e!548220 () Bool)

(assert (=> start!83354 (=> (not res!651119) (not e!548220))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83354 (= res!651119 (validMask!0 mask!2147))))

(assert (=> start!83354 e!548220))

(assert (=> start!83354 true))

(declare-datatypes ((V!34605 0))(
  ( (V!34606 (val!11159 Int)) )
))
(declare-datatypes ((ValueCell!10627 0))(
  ( (ValueCellFull!10627 (v!13718 V!34605)) (EmptyCell!10627) )
))
(declare-datatypes ((array!60461 0))(
  ( (array!60462 (arr!29090 (Array (_ BitVec 32) ValueCell!10627)) (size!29570 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60461)

(declare-fun e!548221 () Bool)

(declare-fun array_inv!22401 (array!60461) Bool)

(assert (=> start!83354 (and (array_inv!22401 _values!1425) e!548221)))

(declare-fun tp_is_empty!22217 () Bool)

(assert (=> start!83354 tp_is_empty!22217))

(assert (=> start!83354 tp!67237))

(declare-datatypes ((array!60463 0))(
  ( (array!60464 (arr!29091 (Array (_ BitVec 32) (_ BitVec 64))) (size!29571 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60463)

(declare-fun array_inv!22402 (array!60463) Bool)

(assert (=> start!83354 (array_inv!22402 _keys!1717)))

(declare-fun mapIsEmpty!35335 () Bool)

(declare-fun mapRes!35335 () Bool)

(assert (=> mapIsEmpty!35335 mapRes!35335))

(declare-fun b!972571 () Bool)

(declare-fun e!548218 () Bool)

(assert (=> b!972571 (= e!548221 (and e!548218 mapRes!35335))))

(declare-fun condMapEmpty!35335 () Bool)

(declare-fun mapDefault!35335 () ValueCell!10627)

