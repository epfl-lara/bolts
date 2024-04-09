; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20548 () Bool)

(assert start!20548)

(declare-fun b_free!5195 () Bool)

(declare-fun b_next!5195 () Bool)

(assert (=> start!20548 (= b_free!5195 (not b_next!5195))))

(declare-fun tp!18617 () Bool)

(declare-fun b_and!11959 () Bool)

(assert (=> start!20548 (= tp!18617 b_and!11959)))

(declare-fun b!204103 () Bool)

(declare-fun res!98279 () Bool)

(declare-fun e!133581 () Bool)

(assert (=> b!204103 (=> (not res!98279) (not e!133581))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9320 0))(
  ( (array!9321 (arr!4410 (Array (_ BitVec 32) (_ BitVec 64))) (size!4735 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9320)

(assert (=> b!204103 (= res!98279 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4735 _keys!825))))))

(declare-fun b!204104 () Bool)

(declare-fun res!98283 () Bool)

(assert (=> b!204104 (=> (not res!98283) (not e!133581))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!204104 (= res!98283 (= (select (arr!4410 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8645 () Bool)

(declare-fun mapRes!8645 () Bool)

(declare-fun tp!18616 () Bool)

(declare-fun e!133576 () Bool)

(assert (=> mapNonEmpty!8645 (= mapRes!8645 (and tp!18616 e!133576))))

(declare-fun mapKey!8645 () (_ BitVec 32))

(declare-datatypes ((V!6381 0))(
  ( (V!6382 (val!2570 Int)) )
))
(declare-datatypes ((ValueCell!2182 0))(
  ( (ValueCellFull!2182 (v!4536 V!6381)) (EmptyCell!2182) )
))
(declare-fun mapRest!8645 () (Array (_ BitVec 32) ValueCell!2182))

(declare-datatypes ((array!9322 0))(
  ( (array!9323 (arr!4411 (Array (_ BitVec 32) ValueCell!2182)) (size!4736 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9322)

(declare-fun mapValue!8645 () ValueCell!2182)

(assert (=> mapNonEmpty!8645 (= (arr!4411 _values!649) (store mapRest!8645 mapKey!8645 mapValue!8645))))

(declare-fun b!204105 () Bool)

(declare-fun res!98281 () Bool)

(assert (=> b!204105 (=> (not res!98281) (not e!133581))))

(declare-datatypes ((List!2819 0))(
  ( (Nil!2816) (Cons!2815 (h!3457 (_ BitVec 64)) (t!7758 List!2819)) )
))
(declare-fun arrayNoDuplicates!0 (array!9320 (_ BitVec 32) List!2819) Bool)

(assert (=> b!204105 (= res!98281 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2816))))

(declare-fun b!204106 () Bool)

(declare-fun res!98284 () Bool)

(assert (=> b!204106 (=> (not res!98284) (not e!133581))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9320 (_ BitVec 32)) Bool)

(assert (=> b!204106 (= res!98284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204107 () Bool)

(declare-fun e!133578 () Bool)

(declare-fun e!133580 () Bool)

(assert (=> b!204107 (= e!133578 (and e!133580 mapRes!8645))))

(declare-fun condMapEmpty!8645 () Bool)

(declare-fun mapDefault!8645 () ValueCell!2182)

