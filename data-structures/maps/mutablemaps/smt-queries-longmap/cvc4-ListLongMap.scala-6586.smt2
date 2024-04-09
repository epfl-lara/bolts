; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83432 () Bool)

(assert start!83432)

(declare-fun b_free!19397 () Bool)

(declare-fun b_next!19397 () Bool)

(assert (=> start!83432 (= b_free!19397 (not b_next!19397))))

(declare-fun tp!67470 () Bool)

(declare-fun b_and!31017 () Bool)

(assert (=> start!83432 (= tp!67470 b_and!31017)))

(declare-fun res!652024 () Bool)

(declare-fun e!548976 () Bool)

(assert (=> start!83432 (=> (not res!652024) (not e!548976))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83432 (= res!652024 (validMask!0 mask!2147))))

(assert (=> start!83432 e!548976))

(assert (=> start!83432 true))

(declare-datatypes ((V!34709 0))(
  ( (V!34710 (val!11198 Int)) )
))
(declare-datatypes ((ValueCell!10666 0))(
  ( (ValueCellFull!10666 (v!13757 V!34709)) (EmptyCell!10666) )
))
(declare-datatypes ((array!60611 0))(
  ( (array!60612 (arr!29165 (Array (_ BitVec 32) ValueCell!10666)) (size!29645 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60611)

(declare-fun e!548979 () Bool)

(declare-fun array_inv!22457 (array!60611) Bool)

(assert (=> start!83432 (and (array_inv!22457 _values!1425) e!548979)))

(declare-fun tp_is_empty!22295 () Bool)

(assert (=> start!83432 tp_is_empty!22295))

(assert (=> start!83432 tp!67470))

(declare-datatypes ((array!60613 0))(
  ( (array!60614 (arr!29166 (Array (_ BitVec 32) (_ BitVec 64))) (size!29646 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60613)

(declare-fun array_inv!22458 (array!60613) Bool)

(assert (=> start!83432 (array_inv!22458 _keys!1717)))

(declare-fun b!973894 () Bool)

(declare-fun e!548978 () Bool)

(declare-fun mapRes!35452 () Bool)

(assert (=> b!973894 (= e!548979 (and e!548978 mapRes!35452))))

(declare-fun condMapEmpty!35452 () Bool)

(declare-fun mapDefault!35452 () ValueCell!10666)

