; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39798 () Bool)

(assert start!39798)

(declare-fun b_free!10057 () Bool)

(declare-fun b_next!10057 () Bool)

(assert (=> start!39798 (= b_free!10057 (not b_next!10057))))

(declare-fun tp!35699 () Bool)

(declare-fun b_and!17791 () Bool)

(assert (=> start!39798 (= tp!35699 b_and!17791)))

(declare-fun mapNonEmpty!18435 () Bool)

(declare-fun mapRes!18435 () Bool)

(declare-fun tp!35700 () Bool)

(declare-fun e!254058 () Bool)

(assert (=> mapNonEmpty!18435 (= mapRes!18435 (and tp!35700 e!254058))))

(declare-fun mapKey!18435 () (_ BitVec 32))

(declare-datatypes ((V!16051 0))(
  ( (V!16052 (val!5649 Int)) )
))
(declare-datatypes ((ValueCell!5261 0))(
  ( (ValueCellFull!5261 (v!7892 V!16051)) (EmptyCell!5261) )
))
(declare-datatypes ((array!26235 0))(
  ( (array!26236 (arr!12564 (Array (_ BitVec 32) ValueCell!5261)) (size!12916 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26235)

(declare-fun mapRest!18435 () (Array (_ BitVec 32) ValueCell!5261))

(declare-fun mapValue!18435 () ValueCell!5261)

(assert (=> mapNonEmpty!18435 (= (arr!12564 _values!549) (store mapRest!18435 mapKey!18435 mapValue!18435))))

(declare-fun res!251871 () Bool)

(declare-fun e!254059 () Bool)

(assert (=> start!39798 (=> (not res!251871) (not e!254059))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26237 0))(
  ( (array!26238 (arr!12565 (Array (_ BitVec 32) (_ BitVec 64))) (size!12917 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26237)

(assert (=> start!39798 (= res!251871 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12917 _keys!709))))))

(assert (=> start!39798 e!254059))

(declare-fun tp_is_empty!11209 () Bool)

(assert (=> start!39798 tp_is_empty!11209))

(assert (=> start!39798 tp!35699))

(assert (=> start!39798 true))

(declare-fun e!254064 () Bool)

(declare-fun array_inv!9142 (array!26235) Bool)

(assert (=> start!39798 (and (array_inv!9142 _values!549) e!254064)))

(declare-fun array_inv!9143 (array!26237) Bool)

(assert (=> start!39798 (array_inv!9143 _keys!709)))

(declare-fun b!428825 () Bool)

(declare-fun res!251864 () Bool)

(assert (=> b!428825 (=> (not res!251864) (not e!254059))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428825 (= res!251864 (or (= (select (arr!12565 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12565 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428826 () Bool)

(declare-fun res!251863 () Bool)

(assert (=> b!428826 (=> (not res!251863) (not e!254059))))

(declare-datatypes ((List!7421 0))(
  ( (Nil!7418) (Cons!7417 (h!8273 (_ BitVec 64)) (t!12935 List!7421)) )
))
(declare-fun arrayNoDuplicates!0 (array!26237 (_ BitVec 32) List!7421) Bool)

(assert (=> b!428826 (= res!251863 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7418))))

(declare-fun b!428827 () Bool)

(declare-fun e!254057 () Bool)

(assert (=> b!428827 (= e!254057 tp_is_empty!11209)))

(declare-fun b!428828 () Bool)

(declare-fun e!254065 () Bool)

(assert (=> b!428828 (= e!254059 e!254065)))

(declare-fun res!251858 () Bool)

(assert (=> b!428828 (=> (not res!251858) (not e!254065))))

(declare-fun lt!196014 () array!26237)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26237 (_ BitVec 32)) Bool)

(assert (=> b!428828 (= res!251858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196014 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!428828 (= lt!196014 (array!26238 (store (arr!12565 _keys!709) i!563 k!794) (size!12917 _keys!709)))))

(declare-fun b!428829 () Bool)

(assert (=> b!428829 (= e!254064 (and e!254057 mapRes!18435))))

(declare-fun condMapEmpty!18435 () Bool)

(declare-fun mapDefault!18435 () ValueCell!5261)

