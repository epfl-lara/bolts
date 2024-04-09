; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43298 () Bool)

(assert start!43298)

(declare-fun b_free!12157 () Bool)

(declare-fun b_next!12157 () Bool)

(assert (=> start!43298 (= b_free!12157 (not b_next!12157))))

(declare-fun tp!42741 () Bool)

(declare-fun b_and!20927 () Bool)

(assert (=> start!43298 (= tp!42741 b_and!20927)))

(declare-fun res!286044 () Bool)

(declare-fun e!282086 () Bool)

(assert (=> start!43298 (=> (not res!286044) (not e!282086))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43298 (= res!286044 (validMask!0 mask!2352))))

(assert (=> start!43298 e!282086))

(assert (=> start!43298 true))

(declare-fun tp_is_empty!13669 () Bool)

(assert (=> start!43298 tp_is_empty!13669))

(declare-datatypes ((V!19297 0))(
  ( (V!19298 (val!6882 Int)) )
))
(declare-datatypes ((ValueCell!6473 0))(
  ( (ValueCellFull!6473 (v!9167 V!19297)) (EmptyCell!6473) )
))
(declare-datatypes ((array!30975 0))(
  ( (array!30976 (arr!14891 (Array (_ BitVec 32) ValueCell!6473)) (size!15249 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30975)

(declare-fun e!282087 () Bool)

(declare-fun array_inv!10726 (array!30975) Bool)

(assert (=> start!43298 (and (array_inv!10726 _values!1516) e!282087)))

(assert (=> start!43298 tp!42741))

(declare-datatypes ((array!30977 0))(
  ( (array!30978 (arr!14892 (Array (_ BitVec 32) (_ BitVec 64))) (size!15250 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30977)

(declare-fun array_inv!10727 (array!30977) Bool)

(assert (=> start!43298 (array_inv!10727 _keys!1874)))

(declare-fun b!479420 () Bool)

(declare-fun e!282084 () Bool)

(declare-fun mapRes!22201 () Bool)

(assert (=> b!479420 (= e!282087 (and e!282084 mapRes!22201))))

(declare-fun condMapEmpty!22201 () Bool)

(declare-fun mapDefault!22201 () ValueCell!6473)

