; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83482 () Bool)

(assert start!83482)

(declare-fun b_free!19441 () Bool)

(declare-fun b_next!19441 () Bool)

(assert (=> start!83482 (= b_free!19441 (not b_next!19441))))

(declare-fun tp!67611 () Bool)

(declare-fun b_and!31061 () Bool)

(assert (=> start!83482 (= tp!67611 b_and!31061)))

(declare-fun b!974617 () Bool)

(declare-fun res!652526 () Bool)

(declare-fun e!549359 () Bool)

(assert (=> b!974617 (=> (not res!652526) (not e!549359))))

(declare-datatypes ((array!60707 0))(
  ( (array!60708 (arr!29213 (Array (_ BitVec 32) (_ BitVec 64))) (size!29693 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60707)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974617 (= res!652526 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29693 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29693 _keys!1717))))))

(declare-fun b!974618 () Bool)

(declare-fun e!549362 () Bool)

(declare-fun e!549363 () Bool)

(declare-fun mapRes!35527 () Bool)

(assert (=> b!974618 (= e!549362 (and e!549363 mapRes!35527))))

(declare-fun condMapEmpty!35527 () Bool)

(declare-datatypes ((V!34777 0))(
  ( (V!34778 (val!11223 Int)) )
))
(declare-datatypes ((ValueCell!10691 0))(
  ( (ValueCellFull!10691 (v!13782 V!34777)) (EmptyCell!10691) )
))
(declare-datatypes ((array!60709 0))(
  ( (array!60710 (arr!29214 (Array (_ BitVec 32) ValueCell!10691)) (size!29694 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60709)

(declare-fun mapDefault!35527 () ValueCell!10691)

