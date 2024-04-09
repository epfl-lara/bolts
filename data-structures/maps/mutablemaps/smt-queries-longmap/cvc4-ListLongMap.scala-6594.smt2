; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83480 () Bool)

(assert start!83480)

(declare-fun b_free!19439 () Bool)

(declare-fun b_next!19439 () Bool)

(assert (=> start!83480 (= b_free!19439 (not b_next!19439))))

(declare-fun tp!67606 () Bool)

(declare-fun b_and!31059 () Bool)

(assert (=> start!83480 (= tp!67606 b_and!31059)))

(declare-fun b!974588 () Bool)

(declare-fun e!549347 () Bool)

(declare-fun tp_is_empty!22343 () Bool)

(assert (=> b!974588 (= e!549347 tp_is_empty!22343)))

(declare-fun mapIsEmpty!35524 () Bool)

(declare-fun mapRes!35524 () Bool)

(assert (=> mapIsEmpty!35524 mapRes!35524))

(declare-fun res!652505 () Bool)

(declare-fun e!549346 () Bool)

(assert (=> start!83480 (=> (not res!652505) (not e!549346))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83480 (= res!652505 (validMask!0 mask!2147))))

(assert (=> start!83480 e!549346))

(assert (=> start!83480 true))

(declare-datatypes ((V!34773 0))(
  ( (V!34774 (val!11222 Int)) )
))
(declare-datatypes ((ValueCell!10690 0))(
  ( (ValueCellFull!10690 (v!13781 V!34773)) (EmptyCell!10690) )
))
(declare-datatypes ((array!60703 0))(
  ( (array!60704 (arr!29211 (Array (_ BitVec 32) ValueCell!10690)) (size!29691 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60703)

(declare-fun e!549348 () Bool)

(declare-fun array_inv!22491 (array!60703) Bool)

(assert (=> start!83480 (and (array_inv!22491 _values!1425) e!549348)))

(assert (=> start!83480 tp_is_empty!22343))

(assert (=> start!83480 tp!67606))

(declare-datatypes ((array!60705 0))(
  ( (array!60706 (arr!29212 (Array (_ BitVec 32) (_ BitVec 64))) (size!29692 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60705)

(declare-fun array_inv!22492 (array!60705) Bool)

(assert (=> start!83480 (array_inv!22492 _keys!1717)))

(declare-fun b!974589 () Bool)

(declare-fun res!652503 () Bool)

(assert (=> b!974589 (=> (not res!652503) (not e!549346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60705 (_ BitVec 32)) Bool)

(assert (=> b!974589 (= res!652503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974590 () Bool)

(declare-fun e!549345 () Bool)

(assert (=> b!974590 (= e!549348 (and e!549345 mapRes!35524))))

(declare-fun condMapEmpty!35524 () Bool)

(declare-fun mapDefault!35524 () ValueCell!10690)

