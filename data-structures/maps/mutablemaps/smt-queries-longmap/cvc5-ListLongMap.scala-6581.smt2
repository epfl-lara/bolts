; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83398 () Bool)

(assert start!83398)

(declare-fun b_free!19363 () Bool)

(declare-fun b_next!19363 () Bool)

(assert (=> start!83398 (= b_free!19363 (not b_next!19363))))

(declare-fun tp!67369 () Bool)

(declare-fun b_and!30965 () Bool)

(assert (=> start!83398 (= tp!67369 b_and!30965)))

(declare-fun b!973342 () Bool)

(declare-fun res!651642 () Bool)

(declare-fun e!548672 () Bool)

(assert (=> b!973342 (=> (not res!651642) (not e!548672))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34665 0))(
  ( (V!34666 (val!11181 Int)) )
))
(declare-datatypes ((ValueCell!10649 0))(
  ( (ValueCellFull!10649 (v!13740 V!34665)) (EmptyCell!10649) )
))
(declare-datatypes ((array!60547 0))(
  ( (array!60548 (arr!29133 (Array (_ BitVec 32) ValueCell!10649)) (size!29613 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60547)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60549 0))(
  ( (array!60550 (arr!29134 (Array (_ BitVec 32) (_ BitVec 64))) (size!29614 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60549)

(assert (=> b!973342 (= res!651642 (and (= (size!29613 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29614 _keys!1717) (size!29613 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973343 () Bool)

(declare-fun e!548673 () Bool)

(declare-fun e!548675 () Bool)

(declare-fun mapRes!35401 () Bool)

(assert (=> b!973343 (= e!548673 (and e!548675 mapRes!35401))))

(declare-fun condMapEmpty!35401 () Bool)

(declare-fun mapDefault!35401 () ValueCell!10649)

