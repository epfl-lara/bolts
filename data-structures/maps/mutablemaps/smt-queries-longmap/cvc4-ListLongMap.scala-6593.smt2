; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83474 () Bool)

(assert start!83474)

(declare-fun res!652452 () Bool)

(declare-fun e!549302 () Bool)

(assert (=> start!83474 (=> (not res!652452) (not e!549302))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83474 (= res!652452 (validMask!0 mask!2147))))

(assert (=> start!83474 e!549302))

(assert (=> start!83474 true))

(declare-datatypes ((V!34765 0))(
  ( (V!34766 (val!11219 Int)) )
))
(declare-datatypes ((ValueCell!10687 0))(
  ( (ValueCellFull!10687 (v!13778 V!34765)) (EmptyCell!10687) )
))
(declare-datatypes ((array!60691 0))(
  ( (array!60692 (arr!29205 (Array (_ BitVec 32) ValueCell!10687)) (size!29685 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60691)

(declare-fun e!549303 () Bool)

(declare-fun array_inv!22485 (array!60691) Bool)

(assert (=> start!83474 (and (array_inv!22485 _values!1425) e!549303)))

(declare-datatypes ((array!60693 0))(
  ( (array!60694 (arr!29206 (Array (_ BitVec 32) (_ BitVec 64))) (size!29686 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60693)

(declare-fun array_inv!22486 (array!60693) Bool)

(assert (=> start!83474 (array_inv!22486 _keys!1717)))

(declare-fun b!974509 () Bool)

(declare-fun res!652450 () Bool)

(assert (=> b!974509 (=> (not res!652450) (not e!549302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60693 (_ BitVec 32)) Bool)

(assert (=> b!974509 (= res!652450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974510 () Bool)

(declare-fun e!549299 () Bool)

(declare-fun tp_is_empty!22337 () Bool)

(assert (=> b!974510 (= e!549299 tp_is_empty!22337)))

(declare-fun b!974511 () Bool)

(declare-fun e!549300 () Bool)

(declare-fun mapRes!35515 () Bool)

(assert (=> b!974511 (= e!549303 (and e!549300 mapRes!35515))))

(declare-fun condMapEmpty!35515 () Bool)

(declare-fun mapDefault!35515 () ValueCell!10687)

