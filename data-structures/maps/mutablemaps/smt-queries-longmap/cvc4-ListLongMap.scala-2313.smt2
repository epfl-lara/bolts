; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37352 () Bool)

(assert start!37352)

(declare-fun b_free!8471 () Bool)

(declare-fun b_next!8471 () Bool)

(assert (=> start!37352 (= b_free!8471 (not b_next!8471))))

(declare-fun tp!30129 () Bool)

(declare-fun b_and!15731 () Bool)

(assert (=> start!37352 (= tp!30129 b_and!15731)))

(declare-fun b!378855 () Bool)

(declare-fun res!214792 () Bool)

(declare-fun e!230543 () Bool)

(assert (=> b!378855 (=> (not res!214792) (not e!230543))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378855 (= res!214792 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15243 () Bool)

(declare-fun mapRes!15243 () Bool)

(declare-fun tp!30128 () Bool)

(declare-fun e!230540 () Bool)

(assert (=> mapNonEmpty!15243 (= mapRes!15243 (and tp!30128 e!230540))))

(declare-datatypes ((V!13263 0))(
  ( (V!13264 (val!4604 Int)) )
))
(declare-datatypes ((ValueCell!4216 0))(
  ( (ValueCellFull!4216 (v!6797 V!13263)) (EmptyCell!4216) )
))
(declare-fun mapRest!15243 () (Array (_ BitVec 32) ValueCell!4216))

(declare-fun mapValue!15243 () ValueCell!4216)

(declare-datatypes ((array!22135 0))(
  ( (array!22136 (arr!10533 (Array (_ BitVec 32) ValueCell!4216)) (size!10885 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22135)

(declare-fun mapKey!15243 () (_ BitVec 32))

(assert (=> mapNonEmpty!15243 (= (arr!10533 _values!506) (store mapRest!15243 mapKey!15243 mapValue!15243))))

(declare-fun b!378856 () Bool)

(declare-fun tp_is_empty!9119 () Bool)

(assert (=> b!378856 (= e!230540 tp_is_empty!9119)))

(declare-fun b!378857 () Bool)

(declare-fun res!214797 () Bool)

(assert (=> b!378857 (=> (not res!214797) (not e!230543))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22137 0))(
  ( (array!22138 (arr!10534 (Array (_ BitVec 32) (_ BitVec 64))) (size!10886 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22137)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!378857 (= res!214797 (and (= (size!10885 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10886 _keys!658) (size!10885 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378858 () Bool)

(declare-fun res!214791 () Bool)

(assert (=> b!378858 (=> (not res!214791) (not e!230543))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378858 (= res!214791 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10886 _keys!658))))))

(declare-fun mapIsEmpty!15243 () Bool)

(assert (=> mapIsEmpty!15243 mapRes!15243))

(declare-fun b!378859 () Bool)

(declare-fun res!214801 () Bool)

(assert (=> b!378859 (=> (not res!214801) (not e!230543))))

(declare-fun arrayContainsKey!0 (array!22137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378859 (= res!214801 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378860 () Bool)

(declare-fun res!214798 () Bool)

(declare-fun e!230547 () Bool)

(assert (=> b!378860 (=> (not res!214798) (not e!230547))))

(declare-fun lt!176813 () array!22137)

(declare-datatypes ((List!5996 0))(
  ( (Nil!5993) (Cons!5992 (h!6848 (_ BitVec 64)) (t!11154 List!5996)) )
))
(declare-fun arrayNoDuplicates!0 (array!22137 (_ BitVec 32) List!5996) Bool)

(assert (=> b!378860 (= res!214798 (arrayNoDuplicates!0 lt!176813 #b00000000000000000000000000000000 Nil!5993))))

(declare-fun b!378861 () Bool)

(declare-fun e!230541 () Bool)

(declare-fun e!230542 () Bool)

(assert (=> b!378861 (= e!230541 e!230542)))

(declare-fun res!214799 () Bool)

(assert (=> b!378861 (=> res!214799 e!230542)))

(assert (=> b!378861 (= res!214799 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6124 0))(
  ( (tuple2!6125 (_1!3072 (_ BitVec 64)) (_2!3072 V!13263)) )
))
(declare-datatypes ((List!5997 0))(
  ( (Nil!5994) (Cons!5993 (h!6849 tuple2!6124) (t!11155 List!5997)) )
))
(declare-datatypes ((ListLongMap!5051 0))(
  ( (ListLongMap!5052 (toList!2541 List!5997)) )
))
(declare-fun lt!176821 () ListLongMap!5051)

(declare-fun lt!176815 () ListLongMap!5051)

(assert (=> b!378861 (= lt!176821 lt!176815)))

(declare-fun lt!176814 () ListLongMap!5051)

(declare-fun lt!176816 () tuple2!6124)

(declare-fun +!882 (ListLongMap!5051 tuple2!6124) ListLongMap!5051)

(assert (=> b!378861 (= lt!176815 (+!882 lt!176814 lt!176816))))

(declare-fun lt!176817 () ListLongMap!5051)

(declare-fun lt!176812 () ListLongMap!5051)

(assert (=> b!378861 (= lt!176817 lt!176812)))

(declare-fun lt!176820 () ListLongMap!5051)

(assert (=> b!378861 (= lt!176812 (+!882 lt!176820 lt!176816))))

(declare-fun lt!176809 () ListLongMap!5051)

(assert (=> b!378861 (= lt!176817 (+!882 lt!176809 lt!176816))))

(declare-fun minValue!472 () V!13263)

(assert (=> b!378861 (= lt!176816 (tuple2!6125 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378862 () Bool)

(assert (=> b!378862 (= e!230542 true)))

(declare-fun lt!176818 () tuple2!6124)

(assert (=> b!378862 (= lt!176812 (+!882 lt!176815 lt!176818))))

(declare-fun v!373 () V!13263)

(declare-datatypes ((Unit!11659 0))(
  ( (Unit!11660) )
))
(declare-fun lt!176819 () Unit!11659)

(declare-fun addCommutativeForDiffKeys!296 (ListLongMap!5051 (_ BitVec 64) V!13263 (_ BitVec 64) V!13263) Unit!11659)

(assert (=> b!378862 (= lt!176819 (addCommutativeForDiffKeys!296 lt!176814 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun res!214802 () Bool)

(assert (=> start!37352 (=> (not res!214802) (not e!230543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37352 (= res!214802 (validMask!0 mask!970))))

(assert (=> start!37352 e!230543))

(declare-fun e!230546 () Bool)

(declare-fun array_inv!7750 (array!22135) Bool)

(assert (=> start!37352 (and (array_inv!7750 _values!506) e!230546)))

(assert (=> start!37352 tp!30129))

(assert (=> start!37352 true))

(assert (=> start!37352 tp_is_empty!9119))

(declare-fun array_inv!7751 (array!22137) Bool)

(assert (=> start!37352 (array_inv!7751 _keys!658)))

(declare-fun b!378863 () Bool)

(declare-fun res!214794 () Bool)

(assert (=> b!378863 (=> (not res!214794) (not e!230543))))

(assert (=> b!378863 (= res!214794 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5993))))

(declare-fun b!378864 () Bool)

(declare-fun e!230544 () Bool)

(assert (=> b!378864 (= e!230546 (and e!230544 mapRes!15243))))

(declare-fun condMapEmpty!15243 () Bool)

(declare-fun mapDefault!15243 () ValueCell!4216)

