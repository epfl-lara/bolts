; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38572 () Bool)

(assert start!38572)

(declare-fun b_free!9101 () Bool)

(declare-fun b_next!9101 () Bool)

(assert (=> start!38572 (= b_free!9101 (not b_next!9101))))

(declare-fun tp!32427 () Bool)

(declare-fun b_and!16505 () Bool)

(assert (=> start!38572 (= tp!32427 b_and!16505)))

(declare-fun b!398839 () Bool)

(declare-fun e!240955 () Bool)

(declare-datatypes ((V!14415 0))(
  ( (V!14416 (val!5036 Int)) )
))
(declare-datatypes ((tuple2!6596 0))(
  ( (tuple2!6597 (_1!3308 (_ BitVec 64)) (_2!3308 V!14415)) )
))
(declare-datatypes ((List!6552 0))(
  ( (Nil!6549) (Cons!6548 (h!7404 tuple2!6596) (t!11734 List!6552)) )
))
(declare-datatypes ((ListLongMap!5523 0))(
  ( (ListLongMap!5524 (toList!2777 List!6552)) )
))
(declare-fun call!27964 () ListLongMap!5523)

(declare-fun call!27965 () ListLongMap!5523)

(assert (=> b!398839 (= e!240955 (= call!27964 call!27965))))

(declare-fun mapIsEmpty!16596 () Bool)

(declare-fun mapRes!16596 () Bool)

(assert (=> mapIsEmpty!16596 mapRes!16596))

(declare-fun b!398840 () Bool)

(declare-fun res!229345 () Bool)

(declare-fun e!240958 () Bool)

(assert (=> b!398840 (=> (not res!229345) (not e!240958))))

(declare-datatypes ((array!23845 0))(
  ( (array!23846 (arr!11369 (Array (_ BitVec 32) (_ BitVec 64))) (size!11721 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23845)

(declare-datatypes ((List!6553 0))(
  ( (Nil!6550) (Cons!6549 (h!7405 (_ BitVec 64)) (t!11735 List!6553)) )
))
(declare-fun arrayNoDuplicates!0 (array!23845 (_ BitVec 32) List!6553) Bool)

(assert (=> b!398840 (= res!229345 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6550))))

(declare-fun b!398841 () Bool)

(declare-fun res!229348 () Bool)

(assert (=> b!398841 (=> (not res!229348) (not e!240958))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23845 (_ BitVec 32)) Bool)

(assert (=> b!398841 (= res!229348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398842 () Bool)

(declare-fun e!240961 () Bool)

(declare-fun e!240957 () Bool)

(assert (=> b!398842 (= e!240961 (and e!240957 mapRes!16596))))

(declare-fun condMapEmpty!16596 () Bool)

(declare-datatypes ((ValueCell!4648 0))(
  ( (ValueCellFull!4648 (v!7279 V!14415)) (EmptyCell!4648) )
))
(declare-datatypes ((array!23847 0))(
  ( (array!23848 (arr!11370 (Array (_ BitVec 32) ValueCell!4648)) (size!11722 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23847)

(declare-fun mapDefault!16596 () ValueCell!4648)

