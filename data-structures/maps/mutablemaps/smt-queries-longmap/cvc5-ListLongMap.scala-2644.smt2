; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39690 () Bool)

(assert start!39690)

(declare-fun b_free!9949 () Bool)

(declare-fun b_next!9949 () Bool)

(assert (=> start!39690 (= b_free!9949 (not b_next!9949))))

(declare-fun tp!35375 () Bool)

(declare-fun b_and!17623 () Bool)

(assert (=> start!39690 (= tp!35375 b_and!17623)))

(declare-fun b!425996 () Bool)

(declare-fun res!249652 () Bool)

(declare-fun e!252788 () Bool)

(assert (=> b!425996 (=> (not res!249652) (not e!252788))))

(declare-datatypes ((array!26027 0))(
  ( (array!26028 (arr!12460 (Array (_ BitVec 32) (_ BitVec 64))) (size!12812 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26027)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425996 (= res!249652 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18273 () Bool)

(declare-fun mapRes!18273 () Bool)

(declare-fun tp!35376 () Bool)

(declare-fun e!252784 () Bool)

(assert (=> mapNonEmpty!18273 (= mapRes!18273 (and tp!35376 e!252784))))

(declare-datatypes ((V!15907 0))(
  ( (V!15908 (val!5595 Int)) )
))
(declare-datatypes ((ValueCell!5207 0))(
  ( (ValueCellFull!5207 (v!7838 V!15907)) (EmptyCell!5207) )
))
(declare-fun mapRest!18273 () (Array (_ BitVec 32) ValueCell!5207))

(declare-datatypes ((array!26029 0))(
  ( (array!26030 (arr!12461 (Array (_ BitVec 32) ValueCell!5207)) (size!12813 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26029)

(declare-fun mapKey!18273 () (_ BitVec 32))

(declare-fun mapValue!18273 () ValueCell!5207)

(assert (=> mapNonEmpty!18273 (= (arr!12461 _values!549) (store mapRest!18273 mapKey!18273 mapValue!18273))))

(declare-fun b!425997 () Bool)

(declare-fun res!249659 () Bool)

(assert (=> b!425997 (=> (not res!249659) (not e!252788))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!425997 (= res!249659 (and (= (size!12813 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12812 _keys!709) (size!12813 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425998 () Bool)

(declare-fun res!249653 () Bool)

(assert (=> b!425998 (=> (not res!249653) (not e!252788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425998 (= res!249653 (validMask!0 mask!1025))))

(declare-fun b!425999 () Bool)

(declare-fun e!252785 () Bool)

(assert (=> b!425999 (= e!252788 e!252785)))

(declare-fun res!249658 () Bool)

(assert (=> b!425999 (=> (not res!249658) (not e!252785))))

(declare-fun lt!194848 () array!26027)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26027 (_ BitVec 32)) Bool)

(assert (=> b!425999 (= res!249658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194848 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425999 (= lt!194848 (array!26028 (store (arr!12460 _keys!709) i!563 k!794) (size!12812 _keys!709)))))

(declare-fun b!426001 () Bool)

(declare-fun tp_is_empty!11101 () Bool)

(assert (=> b!426001 (= e!252784 tp_is_empty!11101)))

(declare-fun mapIsEmpty!18273 () Bool)

(assert (=> mapIsEmpty!18273 mapRes!18273))

(declare-fun b!426002 () Bool)

(declare-fun res!249654 () Bool)

(assert (=> b!426002 (=> (not res!249654) (not e!252785))))

(declare-datatypes ((List!7339 0))(
  ( (Nil!7336) (Cons!7335 (h!8191 (_ BitVec 64)) (t!12791 List!7339)) )
))
(declare-fun arrayNoDuplicates!0 (array!26027 (_ BitVec 32) List!7339) Bool)

(assert (=> b!426002 (= res!249654 (arrayNoDuplicates!0 lt!194848 #b00000000000000000000000000000000 Nil!7336))))

(declare-fun b!426003 () Bool)

(declare-fun res!249661 () Bool)

(assert (=> b!426003 (=> (not res!249661) (not e!252788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426003 (= res!249661 (validKeyInArray!0 k!794))))

(declare-fun b!426004 () Bool)

(declare-fun res!249655 () Bool)

(assert (=> b!426004 (=> (not res!249655) (not e!252788))))

(assert (=> b!426004 (= res!249655 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12812 _keys!709))))))

(declare-fun b!426005 () Bool)

(declare-fun res!249660 () Bool)

(assert (=> b!426005 (=> (not res!249660) (not e!252785))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!426005 (= res!249660 (bvsle from!863 i!563))))

(declare-fun b!426006 () Bool)

(declare-fun e!252787 () Bool)

(declare-fun e!252790 () Bool)

(assert (=> b!426006 (= e!252787 (and e!252790 mapRes!18273))))

(declare-fun condMapEmpty!18273 () Bool)

(declare-fun mapDefault!18273 () ValueCell!5207)

