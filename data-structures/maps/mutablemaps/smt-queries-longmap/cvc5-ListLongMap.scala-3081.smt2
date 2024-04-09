; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43386 () Bool)

(assert start!43386)

(declare-fun b_free!12205 () Bool)

(declare-fun b_next!12205 () Bool)

(assert (=> start!43386 (= b_free!12205 (not b_next!12205))))

(declare-fun tp!42892 () Bool)

(declare-fun b_and!20979 () Bool)

(assert (=> start!43386 (= tp!42892 b_and!20979)))

(declare-fun b!480399 () Bool)

(declare-fun e!282676 () Bool)

(declare-fun tp_is_empty!13717 () Bool)

(assert (=> b!480399 (= e!282676 tp_is_empty!13717)))

(declare-fun b!480400 () Bool)

(declare-fun res!286555 () Bool)

(declare-fun e!282675 () Bool)

(assert (=> b!480400 (=> (not res!286555) (not e!282675))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19361 0))(
  ( (V!19362 (val!6906 Int)) )
))
(declare-fun minValue!1458 () V!19361)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19361)

(declare-datatypes ((ValueCell!6497 0))(
  ( (ValueCellFull!6497 (v!9193 V!19361)) (EmptyCell!6497) )
))
(declare-datatypes ((array!31069 0))(
  ( (array!31070 (arr!14936 (Array (_ BitVec 32) ValueCell!6497)) (size!15294 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31069)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31071 0))(
  ( (array!31072 (arr!14937 (Array (_ BitVec 32) (_ BitVec 64))) (size!15295 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31071)

(declare-datatypes ((tuple2!9058 0))(
  ( (tuple2!9059 (_1!4539 (_ BitVec 64)) (_2!4539 V!19361)) )
))
(declare-datatypes ((List!9173 0))(
  ( (Nil!9170) (Cons!9169 (h!10025 tuple2!9058) (t!15391 List!9173)) )
))
(declare-datatypes ((ListLongMap!7985 0))(
  ( (ListLongMap!7986 (toList!4008 List!9173)) )
))
(declare-fun contains!2617 (ListLongMap!7985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2300 (array!31071 array!31069 (_ BitVec 32) (_ BitVec 32) V!19361 V!19361 (_ BitVec 32) Int) ListLongMap!7985)

(assert (=> b!480400 (= res!286555 (contains!2617 (getCurrentListMap!2300 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480401 () Bool)

(declare-fun res!286560 () Bool)

(assert (=> b!480401 (=> (not res!286560) (not e!282675))))

(declare-datatypes ((List!9174 0))(
  ( (Nil!9171) (Cons!9170 (h!10026 (_ BitVec 64)) (t!15392 List!9174)) )
))
(declare-fun arrayNoDuplicates!0 (array!31071 (_ BitVec 32) List!9174) Bool)

(assert (=> b!480401 (= res!286560 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9171))))

(declare-fun b!480402 () Bool)

(declare-fun e!282672 () Bool)

(declare-fun mapRes!22279 () Bool)

(assert (=> b!480402 (= e!282672 (and e!282676 mapRes!22279))))

(declare-fun condMapEmpty!22279 () Bool)

(declare-fun mapDefault!22279 () ValueCell!6497)

