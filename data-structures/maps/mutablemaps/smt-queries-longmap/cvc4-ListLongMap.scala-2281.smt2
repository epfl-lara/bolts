; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37160 () Bool)

(assert start!37160)

(declare-fun b_free!8279 () Bool)

(declare-fun b_next!8279 () Bool)

(assert (=> start!37160 (= b_free!8279 (not b_next!8279))))

(declare-fun tp!29553 () Bool)

(declare-fun b_and!15539 () Bool)

(assert (=> start!37160 (= tp!29553 b_and!15539)))

(declare-fun b!374517 () Bool)

(declare-fun res!211323 () Bool)

(declare-fun e!228240 () Bool)

(assert (=> b!374517 (=> (not res!211323) (not e!228240))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13007 0))(
  ( (V!13008 (val!4508 Int)) )
))
(declare-datatypes ((ValueCell!4120 0))(
  ( (ValueCellFull!4120 (v!6701 V!13007)) (EmptyCell!4120) )
))
(declare-datatypes ((array!21755 0))(
  ( (array!21756 (arr!10343 (Array (_ BitVec 32) ValueCell!4120)) (size!10695 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21755)

(declare-datatypes ((array!21757 0))(
  ( (array!21758 (arr!10344 (Array (_ BitVec 32) (_ BitVec 64))) (size!10696 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21757)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!374517 (= res!211323 (and (= (size!10695 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10696 _keys!658) (size!10695 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14955 () Bool)

(declare-fun mapRes!14955 () Bool)

(assert (=> mapIsEmpty!14955 mapRes!14955))

(declare-fun b!374518 () Bool)

(declare-fun e!228238 () Bool)

(declare-fun e!228242 () Bool)

(assert (=> b!374518 (= e!228238 (and e!228242 mapRes!14955))))

(declare-fun condMapEmpty!14955 () Bool)

(declare-fun mapDefault!14955 () ValueCell!4120)

