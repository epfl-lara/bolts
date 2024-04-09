; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20250 () Bool)

(assert start!20250)

(declare-fun b_free!4897 () Bool)

(declare-fun b_next!4897 () Bool)

(assert (=> start!20250 (= b_free!4897 (not b_next!4897))))

(declare-fun tp!17723 () Bool)

(declare-fun b_and!11661 () Bool)

(assert (=> start!20250 (= tp!17723 b_and!11661)))

(declare-fun b!198960 () Bool)

(declare-fun e!130689 () Bool)

(declare-fun tp_is_empty!4753 () Bool)

(assert (=> b!198960 (= e!130689 tp_is_empty!4753)))

(declare-fun res!94477 () Bool)

(declare-fun e!130690 () Bool)

(assert (=> start!20250 (=> (not res!94477) (not e!130690))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20250 (= res!94477 (validMask!0 mask!1149))))

(assert (=> start!20250 e!130690))

(declare-datatypes ((V!5985 0))(
  ( (V!5986 (val!2421 Int)) )
))
(declare-datatypes ((ValueCell!2033 0))(
  ( (ValueCellFull!2033 (v!4387 V!5985)) (EmptyCell!2033) )
))
(declare-datatypes ((array!8746 0))(
  ( (array!8747 (arr!4123 (Array (_ BitVec 32) ValueCell!2033)) (size!4448 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8746)

(declare-fun e!130688 () Bool)

(declare-fun array_inv!2691 (array!8746) Bool)

(assert (=> start!20250 (and (array_inv!2691 _values!649) e!130688)))

(assert (=> start!20250 true))

(assert (=> start!20250 tp_is_empty!4753))

(declare-datatypes ((array!8748 0))(
  ( (array!8749 (arr!4124 (Array (_ BitVec 32) (_ BitVec 64))) (size!4449 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8748)

(declare-fun array_inv!2692 (array!8748) Bool)

(assert (=> start!20250 (array_inv!2692 _keys!825)))

(assert (=> start!20250 tp!17723))

(declare-fun b!198961 () Bool)

(declare-fun res!94481 () Bool)

(assert (=> b!198961 (=> (not res!94481) (not e!130690))))

(declare-datatypes ((List!2603 0))(
  ( (Nil!2600) (Cons!2599 (h!3241 (_ BitVec 64)) (t!7542 List!2603)) )
))
(declare-fun arrayNoDuplicates!0 (array!8748 (_ BitVec 32) List!2603) Bool)

(assert (=> b!198961 (= res!94481 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2600))))

(declare-fun b!198962 () Bool)

(declare-fun res!94478 () Bool)

(assert (=> b!198962 (=> (not res!94478) (not e!130690))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198962 (= res!94478 (= (select (arr!4124 _keys!825) i!601) k!843))))

(declare-fun b!198963 () Bool)

(declare-fun res!94483 () Bool)

(assert (=> b!198963 (=> (not res!94483) (not e!130690))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198963 (= res!94483 (and (= (size!4448 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4449 _keys!825) (size!4448 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8198 () Bool)

(declare-fun mapRes!8198 () Bool)

(declare-fun tp!17722 () Bool)

(declare-fun e!130687 () Bool)

(assert (=> mapNonEmpty!8198 (= mapRes!8198 (and tp!17722 e!130687))))

(declare-fun mapRest!8198 () (Array (_ BitVec 32) ValueCell!2033))

(declare-fun mapValue!8198 () ValueCell!2033)

(declare-fun mapKey!8198 () (_ BitVec 32))

(assert (=> mapNonEmpty!8198 (= (arr!4123 _values!649) (store mapRest!8198 mapKey!8198 mapValue!8198))))

(declare-fun mapIsEmpty!8198 () Bool)

(assert (=> mapIsEmpty!8198 mapRes!8198))

(declare-fun b!198964 () Bool)

(declare-fun res!94479 () Bool)

(assert (=> b!198964 (=> (not res!94479) (not e!130690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198964 (= res!94479 (validKeyInArray!0 k!843))))

(declare-fun b!198965 () Bool)

(assert (=> b!198965 (= e!130688 (and e!130689 mapRes!8198))))

(declare-fun condMapEmpty!8198 () Bool)

(declare-fun mapDefault!8198 () ValueCell!2033)

