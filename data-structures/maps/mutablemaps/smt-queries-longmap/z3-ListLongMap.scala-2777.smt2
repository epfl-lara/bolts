; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40544 () Bool)

(assert start!40544)

(declare-fun b!446546 () Bool)

(declare-fun res!265179 () Bool)

(declare-fun e!262310 () Bool)

(assert (=> b!446546 (=> (not res!265179) (not e!262310))))

(declare-datatypes ((array!27569 0))(
  ( (array!27570 (arr!13228 (Array (_ BitVec 32) (_ BitVec 64))) (size!13580 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27569)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16973 0))(
  ( (V!16974 (val!5995 Int)) )
))
(declare-datatypes ((ValueCell!5607 0))(
  ( (ValueCellFull!5607 (v!8246 V!16973)) (EmptyCell!5607) )
))
(declare-datatypes ((array!27571 0))(
  ( (array!27572 (arr!13229 (Array (_ BitVec 32) ValueCell!5607)) (size!13581 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27571)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!446546 (= res!265179 (and (= (size!13581 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13580 _keys!709) (size!13581 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446547 () Bool)

(declare-fun res!265169 () Bool)

(assert (=> b!446547 (=> (not res!265169) (not e!262310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27569 (_ BitVec 32)) Bool)

(assert (=> b!446547 (= res!265169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446548 () Bool)

(declare-fun e!262315 () Bool)

(declare-fun tp_is_empty!11901 () Bool)

(assert (=> b!446548 (= e!262315 tp_is_empty!11901)))

(declare-fun b!446549 () Bool)

(declare-fun res!265175 () Bool)

(assert (=> b!446549 (=> (not res!265175) (not e!262310))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446549 (= res!265175 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13580 _keys!709))))))

(declare-fun b!446550 () Bool)

(declare-fun res!265172 () Bool)

(assert (=> b!446550 (=> (not res!265172) (not e!262310))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446550 (= res!265172 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!446551 () Bool)

(declare-fun e!262314 () Bool)

(declare-fun e!262311 () Bool)

(declare-fun mapRes!19482 () Bool)

(assert (=> b!446551 (= e!262314 (and e!262311 mapRes!19482))))

(declare-fun condMapEmpty!19482 () Bool)

(declare-fun mapDefault!19482 () ValueCell!5607)

(assert (=> b!446551 (= condMapEmpty!19482 (= (arr!13229 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5607)) mapDefault!19482)))))

(declare-fun b!446552 () Bool)

(assert (=> b!446552 (= e!262311 tp_is_empty!11901)))

(declare-fun b!446553 () Bool)

(declare-fun res!265177 () Bool)

(assert (=> b!446553 (=> (not res!265177) (not e!262310))))

(declare-datatypes ((List!7895 0))(
  ( (Nil!7892) (Cons!7891 (h!8747 (_ BitVec 64)) (t!13663 List!7895)) )
))
(declare-fun arrayNoDuplicates!0 (array!27569 (_ BitVec 32) List!7895) Bool)

(assert (=> b!446553 (= res!265177 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7892))))

(declare-fun e!262313 () Bool)

(declare-fun b!446554 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!446554 (= e!262313 (and (bvsgt from!863 i!563) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13580 _keys!709)) (bvsge i!563 (size!13581 _values!549))))))

(declare-fun b!446555 () Bool)

(declare-fun res!265176 () Bool)

(assert (=> b!446555 (=> (not res!265176) (not e!262310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446555 (= res!265176 (validMask!0 mask!1025))))

(declare-fun b!446556 () Bool)

(declare-fun res!265174 () Bool)

(assert (=> b!446556 (=> (not res!265174) (not e!262310))))

(assert (=> b!446556 (= res!265174 (or (= (select (arr!13228 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13228 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19482 () Bool)

(assert (=> mapIsEmpty!19482 mapRes!19482))

(declare-fun b!446558 () Bool)

(assert (=> b!446558 (= e!262310 e!262313)))

(declare-fun res!265178 () Bool)

(assert (=> b!446558 (=> (not res!265178) (not e!262313))))

(declare-fun lt!203811 () array!27569)

(assert (=> b!446558 (= res!265178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203811 mask!1025))))

(assert (=> b!446558 (= lt!203811 (array!27570 (store (arr!13228 _keys!709) i!563 k0!794) (size!13580 _keys!709)))))

(declare-fun mapNonEmpty!19482 () Bool)

(declare-fun tp!37509 () Bool)

(assert (=> mapNonEmpty!19482 (= mapRes!19482 (and tp!37509 e!262315))))

(declare-fun mapValue!19482 () ValueCell!5607)

(declare-fun mapKey!19482 () (_ BitVec 32))

(declare-fun mapRest!19482 () (Array (_ BitVec 32) ValueCell!5607))

(assert (=> mapNonEmpty!19482 (= (arr!13229 _values!549) (store mapRest!19482 mapKey!19482 mapValue!19482))))

(declare-fun b!446559 () Bool)

(declare-fun res!265171 () Bool)

(assert (=> b!446559 (=> (not res!265171) (not e!262313))))

(assert (=> b!446559 (= res!265171 (arrayNoDuplicates!0 lt!203811 #b00000000000000000000000000000000 Nil!7892))))

(declare-fun b!446557 () Bool)

(declare-fun res!265170 () Bool)

(assert (=> b!446557 (=> (not res!265170) (not e!262310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446557 (= res!265170 (validKeyInArray!0 k0!794))))

(declare-fun res!265173 () Bool)

(assert (=> start!40544 (=> (not res!265173) (not e!262310))))

(assert (=> start!40544 (= res!265173 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13580 _keys!709))))))

(assert (=> start!40544 e!262310))

(assert (=> start!40544 true))

(declare-fun array_inv!9580 (array!27571) Bool)

(assert (=> start!40544 (and (array_inv!9580 _values!549) e!262314)))

(declare-fun array_inv!9581 (array!27569) Bool)

(assert (=> start!40544 (array_inv!9581 _keys!709)))

(assert (= (and start!40544 res!265173) b!446555))

(assert (= (and b!446555 res!265176) b!446546))

(assert (= (and b!446546 res!265179) b!446547))

(assert (= (and b!446547 res!265169) b!446553))

(assert (= (and b!446553 res!265177) b!446549))

(assert (= (and b!446549 res!265175) b!446557))

(assert (= (and b!446557 res!265170) b!446556))

(assert (= (and b!446556 res!265174) b!446550))

(assert (= (and b!446550 res!265172) b!446558))

(assert (= (and b!446558 res!265178) b!446559))

(assert (= (and b!446559 res!265171) b!446554))

(assert (= (and b!446551 condMapEmpty!19482) mapIsEmpty!19482))

(assert (= (and b!446551 (not condMapEmpty!19482)) mapNonEmpty!19482))

(get-info :version)

(assert (= (and mapNonEmpty!19482 ((_ is ValueCellFull!5607) mapValue!19482)) b!446548))

(assert (= (and b!446551 ((_ is ValueCellFull!5607) mapDefault!19482)) b!446552))

(assert (= start!40544 b!446551))

(declare-fun m!431707 () Bool)

(assert (=> b!446547 m!431707))

(declare-fun m!431709 () Bool)

(assert (=> b!446553 m!431709))

(declare-fun m!431711 () Bool)

(assert (=> b!446558 m!431711))

(declare-fun m!431713 () Bool)

(assert (=> b!446558 m!431713))

(declare-fun m!431715 () Bool)

(assert (=> b!446556 m!431715))

(declare-fun m!431717 () Bool)

(assert (=> b!446559 m!431717))

(declare-fun m!431719 () Bool)

(assert (=> mapNonEmpty!19482 m!431719))

(declare-fun m!431721 () Bool)

(assert (=> b!446557 m!431721))

(declare-fun m!431723 () Bool)

(assert (=> start!40544 m!431723))

(declare-fun m!431725 () Bool)

(assert (=> start!40544 m!431725))

(declare-fun m!431727 () Bool)

(assert (=> b!446550 m!431727))

(declare-fun m!431729 () Bool)

(assert (=> b!446555 m!431729))

(check-sat (not b!446553) (not mapNonEmpty!19482) tp_is_empty!11901 (not start!40544) (not b!446557) (not b!446550) (not b!446547) (not b!446559) (not b!446558) (not b!446555))
(check-sat)
