; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40470 () Bool)

(assert start!40470)

(declare-fun b!445165 () Bool)

(declare-fun e!261691 () Bool)

(declare-fun e!261689 () Bool)

(assert (=> b!445165 (= e!261691 e!261689)))

(declare-fun res!264206 () Bool)

(assert (=> b!445165 (=> (not res!264206) (not e!261689))))

(declare-datatypes ((array!27463 0))(
  ( (array!27464 (arr!13176 (Array (_ BitVec 32) (_ BitVec 64))) (size!13528 (_ BitVec 32))) )
))
(declare-fun lt!203589 () array!27463)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27463 (_ BitVec 32)) Bool)

(assert (=> b!445165 (= res!264206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203589 mask!1025))))

(declare-fun _keys!709 () array!27463)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445165 (= lt!203589 (array!27464 (store (arr!13176 _keys!709) i!563 k0!794) (size!13528 _keys!709)))))

(declare-fun res!264208 () Bool)

(assert (=> start!40470 (=> (not res!264208) (not e!261691))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40470 (= res!264208 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13528 _keys!709))))))

(assert (=> start!40470 e!261691))

(assert (=> start!40470 true))

(declare-datatypes ((V!16901 0))(
  ( (V!16902 (val!5968 Int)) )
))
(declare-datatypes ((ValueCell!5580 0))(
  ( (ValueCellFull!5580 (v!8215 V!16901)) (EmptyCell!5580) )
))
(declare-datatypes ((array!27465 0))(
  ( (array!27466 (arr!13177 (Array (_ BitVec 32) ValueCell!5580)) (size!13529 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27465)

(declare-fun e!261690 () Bool)

(declare-fun array_inv!9546 (array!27465) Bool)

(assert (=> start!40470 (and (array_inv!9546 _values!549) e!261690)))

(declare-fun array_inv!9547 (array!27463) Bool)

(assert (=> start!40470 (array_inv!9547 _keys!709)))

(declare-fun b!445166 () Bool)

(declare-fun e!261693 () Bool)

(declare-fun tp_is_empty!11847 () Bool)

(assert (=> b!445166 (= e!261693 tp_is_empty!11847)))

(declare-fun b!445167 () Bool)

(declare-fun e!261688 () Bool)

(assert (=> b!445167 (= e!261688 tp_is_empty!11847)))

(declare-fun b!445168 () Bool)

(declare-fun res!264202 () Bool)

(assert (=> b!445168 (=> (not res!264202) (not e!261691))))

(assert (=> b!445168 (= res!264202 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13528 _keys!709))))))

(declare-fun b!445169 () Bool)

(declare-fun mapRes!19398 () Bool)

(assert (=> b!445169 (= e!261690 (and e!261688 mapRes!19398))))

(declare-fun condMapEmpty!19398 () Bool)

(declare-fun mapDefault!19398 () ValueCell!5580)

(assert (=> b!445169 (= condMapEmpty!19398 (= (arr!13177 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5580)) mapDefault!19398)))))

(declare-fun b!445170 () Bool)

(assert (=> b!445170 (= e!261689 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13528 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsge (bvsub (size!13528 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13528 _keys!709) from!863))))))

(declare-fun b!445171 () Bool)

(declare-fun res!264210 () Bool)

(assert (=> b!445171 (=> (not res!264210) (not e!261691))))

(declare-datatypes ((List!7861 0))(
  ( (Nil!7858) (Cons!7857 (h!8713 (_ BitVec 64)) (t!13627 List!7861)) )
))
(declare-fun arrayNoDuplicates!0 (array!27463 (_ BitVec 32) List!7861) Bool)

(assert (=> b!445171 (= res!264210 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7858))))

(declare-fun b!445172 () Bool)

(declare-fun res!264209 () Bool)

(assert (=> b!445172 (=> (not res!264209) (not e!261691))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!445172 (= res!264209 (and (= (size!13529 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13528 _keys!709) (size!13529 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445173 () Bool)

(declare-fun res!264211 () Bool)

(assert (=> b!445173 (=> (not res!264211) (not e!261689))))

(assert (=> b!445173 (= res!264211 (arrayNoDuplicates!0 lt!203589 #b00000000000000000000000000000000 Nil!7858))))

(declare-fun b!445174 () Bool)

(declare-fun res!264204 () Bool)

(assert (=> b!445174 (=> (not res!264204) (not e!261691))))

(assert (=> b!445174 (= res!264204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19398 () Bool)

(assert (=> mapIsEmpty!19398 mapRes!19398))

(declare-fun b!445175 () Bool)

(declare-fun res!264203 () Bool)

(assert (=> b!445175 (=> (not res!264203) (not e!261691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445175 (= res!264203 (validKeyInArray!0 k0!794))))

(declare-fun b!445176 () Bool)

(declare-fun res!264207 () Bool)

(assert (=> b!445176 (=> (not res!264207) (not e!261691))))

(assert (=> b!445176 (= res!264207 (or (= (select (arr!13176 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13176 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19398 () Bool)

(declare-fun tp!37380 () Bool)

(assert (=> mapNonEmpty!19398 (= mapRes!19398 (and tp!37380 e!261693))))

(declare-fun mapValue!19398 () ValueCell!5580)

(declare-fun mapKey!19398 () (_ BitVec 32))

(declare-fun mapRest!19398 () (Array (_ BitVec 32) ValueCell!5580))

(assert (=> mapNonEmpty!19398 (= (arr!13177 _values!549) (store mapRest!19398 mapKey!19398 mapValue!19398))))

(declare-fun b!445177 () Bool)

(declare-fun res!264201 () Bool)

(assert (=> b!445177 (=> (not res!264201) (not e!261691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445177 (= res!264201 (validMask!0 mask!1025))))

(declare-fun b!445178 () Bool)

(declare-fun res!264205 () Bool)

(assert (=> b!445178 (=> (not res!264205) (not e!261691))))

(declare-fun arrayContainsKey!0 (array!27463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445178 (= res!264205 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40470 res!264208) b!445177))

(assert (= (and b!445177 res!264201) b!445172))

(assert (= (and b!445172 res!264209) b!445174))

(assert (= (and b!445174 res!264204) b!445171))

(assert (= (and b!445171 res!264210) b!445168))

(assert (= (and b!445168 res!264202) b!445175))

(assert (= (and b!445175 res!264203) b!445176))

(assert (= (and b!445176 res!264207) b!445178))

(assert (= (and b!445178 res!264205) b!445165))

(assert (= (and b!445165 res!264206) b!445173))

(assert (= (and b!445173 res!264211) b!445170))

(assert (= (and b!445169 condMapEmpty!19398) mapIsEmpty!19398))

(assert (= (and b!445169 (not condMapEmpty!19398)) mapNonEmpty!19398))

(get-info :version)

(assert (= (and mapNonEmpty!19398 ((_ is ValueCellFull!5580) mapValue!19398)) b!445166))

(assert (= (and b!445169 ((_ is ValueCellFull!5580) mapDefault!19398)) b!445167))

(assert (= start!40470 b!445169))

(declare-fun m!430727 () Bool)

(assert (=> b!445176 m!430727))

(declare-fun m!430729 () Bool)

(assert (=> b!445171 m!430729))

(declare-fun m!430731 () Bool)

(assert (=> b!445178 m!430731))

(declare-fun m!430733 () Bool)

(assert (=> b!445174 m!430733))

(declare-fun m!430735 () Bool)

(assert (=> start!40470 m!430735))

(declare-fun m!430737 () Bool)

(assert (=> start!40470 m!430737))

(declare-fun m!430739 () Bool)

(assert (=> b!445177 m!430739))

(declare-fun m!430741 () Bool)

(assert (=> b!445165 m!430741))

(declare-fun m!430743 () Bool)

(assert (=> b!445165 m!430743))

(declare-fun m!430745 () Bool)

(assert (=> b!445173 m!430745))

(declare-fun m!430747 () Bool)

(assert (=> mapNonEmpty!19398 m!430747))

(declare-fun m!430749 () Bool)

(assert (=> b!445175 m!430749))

(check-sat (not b!445174) (not b!445171) (not b!445177) tp_is_empty!11847 (not mapNonEmpty!19398) (not b!445165) (not b!445175) (not b!445173) (not b!445178) (not start!40470))
(check-sat)
