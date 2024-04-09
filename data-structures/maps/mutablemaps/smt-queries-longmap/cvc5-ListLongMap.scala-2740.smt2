; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40266 () Bool)

(assert start!40266)

(declare-fun mapNonEmpty!19137 () Bool)

(declare-fun mapRes!19137 () Bool)

(declare-fun tp!37101 () Bool)

(declare-fun e!260048 () Bool)

(assert (=> mapNonEmpty!19137 (= mapRes!19137 (and tp!37101 e!260048))))

(declare-fun mapKey!19137 () (_ BitVec 32))

(declare-datatypes ((V!16675 0))(
  ( (V!16676 (val!5883 Int)) )
))
(declare-datatypes ((ValueCell!5495 0))(
  ( (ValueCellFull!5495 (v!8126 V!16675)) (EmptyCell!5495) )
))
(declare-fun mapRest!19137 () (Array (_ BitVec 32) ValueCell!5495))

(declare-datatypes ((array!27141 0))(
  ( (array!27142 (arr!13017 (Array (_ BitVec 32) ValueCell!5495)) (size!13369 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27141)

(declare-fun mapValue!19137 () ValueCell!5495)

(assert (=> mapNonEmpty!19137 (= (arr!13017 _values!549) (store mapRest!19137 mapKey!19137 mapValue!19137))))

(declare-fun b!441755 () Bool)

(declare-fun res!261686 () Bool)

(declare-fun e!260050 () Bool)

(assert (=> b!441755 (=> (not res!261686) (not e!260050))))

(declare-datatypes ((array!27143 0))(
  ( (array!27144 (arr!13018 (Array (_ BitVec 32) (_ BitVec 64))) (size!13370 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27143)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27143 (_ BitVec 32)) Bool)

(assert (=> b!441755 (= res!261686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441756 () Bool)

(declare-fun e!260046 () Bool)

(assert (=> b!441756 (= e!260046 false)))

(declare-fun lt!203013 () Bool)

(declare-fun lt!203012 () array!27143)

(declare-datatypes ((List!7794 0))(
  ( (Nil!7791) (Cons!7790 (h!8646 (_ BitVec 64)) (t!13558 List!7794)) )
))
(declare-fun arrayNoDuplicates!0 (array!27143 (_ BitVec 32) List!7794) Bool)

(assert (=> b!441756 (= lt!203013 (arrayNoDuplicates!0 lt!203012 #b00000000000000000000000000000000 Nil!7791))))

(declare-fun b!441757 () Bool)

(declare-fun tp_is_empty!11677 () Bool)

(assert (=> b!441757 (= e!260048 tp_is_empty!11677)))

(declare-fun b!441758 () Bool)

(declare-fun res!261685 () Bool)

(assert (=> b!441758 (=> (not res!261685) (not e!260050))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441758 (= res!261685 (or (= (select (arr!13018 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13018 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441759 () Bool)

(declare-fun res!261687 () Bool)

(assert (=> b!441759 (=> (not res!261687) (not e!260050))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441759 (= res!261687 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!441760 () Bool)

(declare-fun res!261683 () Bool)

(assert (=> b!441760 (=> (not res!261683) (not e!260050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441760 (= res!261683 (validMask!0 mask!1025))))

(declare-fun b!441761 () Bool)

(declare-fun res!261680 () Bool)

(assert (=> b!441761 (=> (not res!261680) (not e!260050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441761 (= res!261680 (validKeyInArray!0 k!794))))

(declare-fun b!441762 () Bool)

(assert (=> b!441762 (= e!260050 e!260046)))

(declare-fun res!261678 () Bool)

(assert (=> b!441762 (=> (not res!261678) (not e!260046))))

(assert (=> b!441762 (= res!261678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203012 mask!1025))))

(assert (=> b!441762 (= lt!203012 (array!27144 (store (arr!13018 _keys!709) i!563 k!794) (size!13370 _keys!709)))))

(declare-fun res!261679 () Bool)

(assert (=> start!40266 (=> (not res!261679) (not e!260050))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40266 (= res!261679 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13370 _keys!709))))))

(assert (=> start!40266 e!260050))

(assert (=> start!40266 true))

(declare-fun e!260045 () Bool)

(declare-fun array_inv!9436 (array!27141) Bool)

(assert (=> start!40266 (and (array_inv!9436 _values!549) e!260045)))

(declare-fun array_inv!9437 (array!27143) Bool)

(assert (=> start!40266 (array_inv!9437 _keys!709)))

(declare-fun b!441763 () Bool)

(declare-fun res!261684 () Bool)

(assert (=> b!441763 (=> (not res!261684) (not e!260050))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!441763 (= res!261684 (and (= (size!13369 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13370 _keys!709) (size!13369 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441764 () Bool)

(declare-fun res!261682 () Bool)

(assert (=> b!441764 (=> (not res!261682) (not e!260050))))

(assert (=> b!441764 (= res!261682 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7791))))

(declare-fun mapIsEmpty!19137 () Bool)

(assert (=> mapIsEmpty!19137 mapRes!19137))

(declare-fun b!441765 () Bool)

(declare-fun e!260049 () Bool)

(assert (=> b!441765 (= e!260049 tp_is_empty!11677)))

(declare-fun b!441766 () Bool)

(declare-fun res!261681 () Bool)

(assert (=> b!441766 (=> (not res!261681) (not e!260050))))

(assert (=> b!441766 (= res!261681 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13370 _keys!709))))))

(declare-fun b!441767 () Bool)

(assert (=> b!441767 (= e!260045 (and e!260049 mapRes!19137))))

(declare-fun condMapEmpty!19137 () Bool)

(declare-fun mapDefault!19137 () ValueCell!5495)

