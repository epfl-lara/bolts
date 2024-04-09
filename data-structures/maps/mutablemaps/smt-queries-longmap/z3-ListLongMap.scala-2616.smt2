; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39524 () Bool)

(assert start!39524)

(declare-fun b_free!9783 () Bool)

(declare-fun b_next!9783 () Bool)

(assert (=> start!39524 (= b_free!9783 (not b_next!9783))))

(declare-fun tp!34878 () Bool)

(declare-fun b_and!17457 () Bool)

(assert (=> start!39524 (= tp!34878 b_and!17457)))

(declare-fun mapIsEmpty!18024 () Bool)

(declare-fun mapRes!18024 () Bool)

(assert (=> mapIsEmpty!18024 mapRes!18024))

(declare-fun b!422169 () Bool)

(declare-fun e!251202 () Bool)

(declare-fun tp_is_empty!10935 () Bool)

(assert (=> b!422169 (= e!251202 tp_is_empty!10935)))

(declare-fun b!422170 () Bool)

(declare-fun res!246572 () Bool)

(declare-fun e!251198 () Bool)

(assert (=> b!422170 (=> (not res!246572) (not e!251198))))

(declare-datatypes ((array!25697 0))(
  ( (array!25698 (arr!12295 (Array (_ BitVec 32) (_ BitVec 64))) (size!12647 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25697)

(declare-datatypes ((List!7207 0))(
  ( (Nil!7204) (Cons!7203 (h!8059 (_ BitVec 64)) (t!12659 List!7207)) )
))
(declare-fun arrayNoDuplicates!0 (array!25697 (_ BitVec 32) List!7207) Bool)

(assert (=> b!422170 (= res!246572 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7204))))

(declare-fun b!422171 () Bool)

(declare-fun e!251203 () Bool)

(assert (=> b!422171 (= e!251198 e!251203)))

(declare-fun res!246580 () Bool)

(assert (=> b!422171 (=> (not res!246580) (not e!251203))))

(declare-fun lt!193916 () array!25697)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25697 (_ BitVec 32)) Bool)

(assert (=> b!422171 (= res!246580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193916 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422171 (= lt!193916 (array!25698 (store (arr!12295 _keys!709) i!563 k0!794) (size!12647 _keys!709)))))

(declare-fun b!422172 () Bool)

(declare-fun e!251201 () Bool)

(assert (=> b!422172 (= e!251201 (and e!251202 mapRes!18024))))

(declare-fun condMapEmpty!18024 () Bool)

(declare-datatypes ((V!15685 0))(
  ( (V!15686 (val!5512 Int)) )
))
(declare-datatypes ((ValueCell!5124 0))(
  ( (ValueCellFull!5124 (v!7755 V!15685)) (EmptyCell!5124) )
))
(declare-datatypes ((array!25699 0))(
  ( (array!25700 (arr!12296 (Array (_ BitVec 32) ValueCell!5124)) (size!12648 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25699)

(declare-fun mapDefault!18024 () ValueCell!5124)

(assert (=> b!422172 (= condMapEmpty!18024 (= (arr!12296 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5124)) mapDefault!18024)))))

(declare-fun b!422173 () Bool)

(declare-fun res!246578 () Bool)

(assert (=> b!422173 (=> (not res!246578) (not e!251198))))

(assert (=> b!422173 (= res!246578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422174 () Bool)

(declare-fun res!246575 () Bool)

(assert (=> b!422174 (=> (not res!246575) (not e!251198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422174 (= res!246575 (validKeyInArray!0 k0!794))))

(declare-fun b!422175 () Bool)

(declare-fun e!251200 () Bool)

(assert (=> b!422175 (= e!251200 tp_is_empty!10935)))

(declare-fun b!422176 () Bool)

(declare-fun res!246571 () Bool)

(assert (=> b!422176 (=> (not res!246571) (not e!251203))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!422176 (= res!246571 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18024 () Bool)

(declare-fun tp!34877 () Bool)

(assert (=> mapNonEmpty!18024 (= mapRes!18024 (and tp!34877 e!251200))))

(declare-fun mapKey!18024 () (_ BitVec 32))

(declare-fun mapRest!18024 () (Array (_ BitVec 32) ValueCell!5124))

(declare-fun mapValue!18024 () ValueCell!5124)

(assert (=> mapNonEmpty!18024 (= (arr!12296 _values!549) (store mapRest!18024 mapKey!18024 mapValue!18024))))

(declare-fun b!422177 () Bool)

(assert (=> b!422177 (= e!251203 false)))

(declare-fun minValue!515 () V!15685)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15685)

(declare-datatypes ((tuple2!7164 0))(
  ( (tuple2!7165 (_1!3592 (_ BitVec 64)) (_2!3592 V!15685)) )
))
(declare-datatypes ((List!7208 0))(
  ( (Nil!7205) (Cons!7204 (h!8060 tuple2!7164) (t!12660 List!7208)) )
))
(declare-datatypes ((ListLongMap!6091 0))(
  ( (ListLongMap!6092 (toList!3061 List!7208)) )
))
(declare-fun lt!193917 () ListLongMap!6091)

(declare-fun v!412 () V!15685)

(declare-fun getCurrentListMapNoExtraKeys!1262 (array!25697 array!25699 (_ BitVec 32) (_ BitVec 32) V!15685 V!15685 (_ BitVec 32) Int) ListLongMap!6091)

(assert (=> b!422177 (= lt!193917 (getCurrentListMapNoExtraKeys!1262 lt!193916 (array!25700 (store (arr!12296 _values!549) i!563 (ValueCellFull!5124 v!412)) (size!12648 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193915 () ListLongMap!6091)

(assert (=> b!422177 (= lt!193915 (getCurrentListMapNoExtraKeys!1262 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422178 () Bool)

(declare-fun res!246579 () Bool)

(assert (=> b!422178 (=> (not res!246579) (not e!251198))))

(declare-fun arrayContainsKey!0 (array!25697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422178 (= res!246579 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422179 () Bool)

(declare-fun res!246577 () Bool)

(assert (=> b!422179 (=> (not res!246577) (not e!251198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422179 (= res!246577 (validMask!0 mask!1025))))

(declare-fun b!422180 () Bool)

(declare-fun res!246576 () Bool)

(assert (=> b!422180 (=> (not res!246576) (not e!251198))))

(assert (=> b!422180 (= res!246576 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12647 _keys!709))))))

(declare-fun b!422181 () Bool)

(declare-fun res!246581 () Bool)

(assert (=> b!422181 (=> (not res!246581) (not e!251198))))

(assert (=> b!422181 (= res!246581 (and (= (size!12648 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12647 _keys!709) (size!12648 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422182 () Bool)

(declare-fun res!246582 () Bool)

(assert (=> b!422182 (=> (not res!246582) (not e!251203))))

(assert (=> b!422182 (= res!246582 (arrayNoDuplicates!0 lt!193916 #b00000000000000000000000000000000 Nil!7204))))

(declare-fun res!246574 () Bool)

(assert (=> start!39524 (=> (not res!246574) (not e!251198))))

(assert (=> start!39524 (= res!246574 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12647 _keys!709))))))

(assert (=> start!39524 e!251198))

(assert (=> start!39524 tp_is_empty!10935))

(assert (=> start!39524 tp!34878))

(assert (=> start!39524 true))

(declare-fun array_inv!8954 (array!25699) Bool)

(assert (=> start!39524 (and (array_inv!8954 _values!549) e!251201)))

(declare-fun array_inv!8955 (array!25697) Bool)

(assert (=> start!39524 (array_inv!8955 _keys!709)))

(declare-fun b!422183 () Bool)

(declare-fun res!246573 () Bool)

(assert (=> b!422183 (=> (not res!246573) (not e!251198))))

(assert (=> b!422183 (= res!246573 (or (= (select (arr!12295 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12295 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39524 res!246574) b!422179))

(assert (= (and b!422179 res!246577) b!422181))

(assert (= (and b!422181 res!246581) b!422173))

(assert (= (and b!422173 res!246578) b!422170))

(assert (= (and b!422170 res!246572) b!422180))

(assert (= (and b!422180 res!246576) b!422174))

(assert (= (and b!422174 res!246575) b!422183))

(assert (= (and b!422183 res!246573) b!422178))

(assert (= (and b!422178 res!246579) b!422171))

(assert (= (and b!422171 res!246580) b!422182))

(assert (= (and b!422182 res!246582) b!422176))

(assert (= (and b!422176 res!246571) b!422177))

(assert (= (and b!422172 condMapEmpty!18024) mapIsEmpty!18024))

(assert (= (and b!422172 (not condMapEmpty!18024)) mapNonEmpty!18024))

(get-info :version)

(assert (= (and mapNonEmpty!18024 ((_ is ValueCellFull!5124) mapValue!18024)) b!422175))

(assert (= (and b!422172 ((_ is ValueCellFull!5124) mapDefault!18024)) b!422169))

(assert (= start!39524 b!422172))

(declare-fun m!412045 () Bool)

(assert (=> b!422171 m!412045))

(declare-fun m!412047 () Bool)

(assert (=> b!422171 m!412047))

(declare-fun m!412049 () Bool)

(assert (=> b!422174 m!412049))

(declare-fun m!412051 () Bool)

(assert (=> b!422173 m!412051))

(declare-fun m!412053 () Bool)

(assert (=> b!422179 m!412053))

(declare-fun m!412055 () Bool)

(assert (=> b!422182 m!412055))

(declare-fun m!412057 () Bool)

(assert (=> b!422177 m!412057))

(declare-fun m!412059 () Bool)

(assert (=> b!422177 m!412059))

(declare-fun m!412061 () Bool)

(assert (=> b!422177 m!412061))

(declare-fun m!412063 () Bool)

(assert (=> b!422170 m!412063))

(declare-fun m!412065 () Bool)

(assert (=> b!422178 m!412065))

(declare-fun m!412067 () Bool)

(assert (=> mapNonEmpty!18024 m!412067))

(declare-fun m!412069 () Bool)

(assert (=> b!422183 m!412069))

(declare-fun m!412071 () Bool)

(assert (=> start!39524 m!412071))

(declare-fun m!412073 () Bool)

(assert (=> start!39524 m!412073))

(check-sat (not b!422170) (not b!422177) tp_is_empty!10935 (not b!422178) (not b!422179) (not b_next!9783) (not start!39524) b_and!17457 (not b!422174) (not b!422171) (not b!422182) (not mapNonEmpty!18024) (not b!422173))
(check-sat b_and!17457 (not b_next!9783))
