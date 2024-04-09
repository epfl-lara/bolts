; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40330 () Bool)

(assert start!40330)

(declare-fun b!442644 () Bool)

(declare-fun res!262279 () Bool)

(declare-fun e!260516 () Bool)

(assert (=> b!442644 (=> (not res!262279) (not e!260516))))

(declare-datatypes ((array!27223 0))(
  ( (array!27224 (arr!13057 (Array (_ BitVec 32) (_ BitVec 64))) (size!13409 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27223)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442644 (= res!262279 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!442645 () Bool)

(declare-fun e!260515 () Bool)

(assert (=> b!442645 (= e!260515 false)))

(declare-fun lt!203214 () Bool)

(declare-fun lt!203213 () array!27223)

(declare-datatypes ((List!7812 0))(
  ( (Nil!7809) (Cons!7808 (h!8664 (_ BitVec 64)) (t!13578 List!7812)) )
))
(declare-fun arrayNoDuplicates!0 (array!27223 (_ BitVec 32) List!7812) Bool)

(assert (=> b!442645 (= lt!203214 (arrayNoDuplicates!0 lt!203213 #b00000000000000000000000000000000 Nil!7809))))

(declare-fun b!442646 () Bool)

(declare-fun res!262275 () Bool)

(assert (=> b!442646 (=> (not res!262275) (not e!260516))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27223 (_ BitVec 32)) Bool)

(assert (=> b!442646 (= res!262275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442647 () Bool)

(declare-fun res!262274 () Bool)

(assert (=> b!442647 (=> (not res!262274) (not e!260516))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16733 0))(
  ( (V!16734 (val!5905 Int)) )
))
(declare-datatypes ((ValueCell!5517 0))(
  ( (ValueCellFull!5517 (v!8152 V!16733)) (EmptyCell!5517) )
))
(declare-datatypes ((array!27225 0))(
  ( (array!27226 (arr!13058 (Array (_ BitVec 32) ValueCell!5517)) (size!13410 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27225)

(assert (=> b!442647 (= res!262274 (and (= (size!13410 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13409 _keys!709) (size!13410 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442648 () Bool)

(declare-fun e!260518 () Bool)

(declare-fun tp_is_empty!11721 () Bool)

(assert (=> b!442648 (= e!260518 tp_is_empty!11721)))

(declare-fun mapIsEmpty!19206 () Bool)

(declare-fun mapRes!19206 () Bool)

(assert (=> mapIsEmpty!19206 mapRes!19206))

(declare-fun b!442649 () Bool)

(declare-fun e!260519 () Bool)

(assert (=> b!442649 (= e!260519 tp_is_empty!11721)))

(declare-fun b!442650 () Bool)

(declare-fun res!262273 () Bool)

(assert (=> b!442650 (=> (not res!262273) (not e!260516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442650 (= res!262273 (validMask!0 mask!1025))))

(declare-fun b!442651 () Bool)

(declare-fun res!262271 () Bool)

(assert (=> b!442651 (=> (not res!262271) (not e!260516))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442651 (= res!262271 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13409 _keys!709))))))

(declare-fun b!442652 () Bool)

(declare-fun res!262278 () Bool)

(assert (=> b!442652 (=> (not res!262278) (not e!260516))))

(assert (=> b!442652 (= res!262278 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7809))))

(declare-fun b!442654 () Bool)

(declare-fun res!262280 () Bool)

(assert (=> b!442654 (=> (not res!262280) (not e!260516))))

(assert (=> b!442654 (= res!262280 (or (= (select (arr!13057 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13057 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442655 () Bool)

(declare-fun res!262272 () Bool)

(assert (=> b!442655 (=> (not res!262272) (not e!260516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442655 (= res!262272 (validKeyInArray!0 k0!794))))

(declare-fun b!442653 () Bool)

(declare-fun e!260517 () Bool)

(assert (=> b!442653 (= e!260517 (and e!260518 mapRes!19206))))

(declare-fun condMapEmpty!19206 () Bool)

(declare-fun mapDefault!19206 () ValueCell!5517)

(assert (=> b!442653 (= condMapEmpty!19206 (= (arr!13058 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5517)) mapDefault!19206)))))

(declare-fun res!262276 () Bool)

(assert (=> start!40330 (=> (not res!262276) (not e!260516))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40330 (= res!262276 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13409 _keys!709))))))

(assert (=> start!40330 e!260516))

(assert (=> start!40330 true))

(declare-fun array_inv!9464 (array!27225) Bool)

(assert (=> start!40330 (and (array_inv!9464 _values!549) e!260517)))

(declare-fun array_inv!9465 (array!27223) Bool)

(assert (=> start!40330 (array_inv!9465 _keys!709)))

(declare-fun b!442656 () Bool)

(assert (=> b!442656 (= e!260516 e!260515)))

(declare-fun res!262277 () Bool)

(assert (=> b!442656 (=> (not res!262277) (not e!260515))))

(assert (=> b!442656 (= res!262277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203213 mask!1025))))

(assert (=> b!442656 (= lt!203213 (array!27224 (store (arr!13057 _keys!709) i!563 k0!794) (size!13409 _keys!709)))))

(declare-fun mapNonEmpty!19206 () Bool)

(declare-fun tp!37188 () Bool)

(assert (=> mapNonEmpty!19206 (= mapRes!19206 (and tp!37188 e!260519))))

(declare-fun mapKey!19206 () (_ BitVec 32))

(declare-fun mapRest!19206 () (Array (_ BitVec 32) ValueCell!5517))

(declare-fun mapValue!19206 () ValueCell!5517)

(assert (=> mapNonEmpty!19206 (= (arr!13058 _values!549) (store mapRest!19206 mapKey!19206 mapValue!19206))))

(assert (= (and start!40330 res!262276) b!442650))

(assert (= (and b!442650 res!262273) b!442647))

(assert (= (and b!442647 res!262274) b!442646))

(assert (= (and b!442646 res!262275) b!442652))

(assert (= (and b!442652 res!262278) b!442651))

(assert (= (and b!442651 res!262271) b!442655))

(assert (= (and b!442655 res!262272) b!442654))

(assert (= (and b!442654 res!262280) b!442644))

(assert (= (and b!442644 res!262279) b!442656))

(assert (= (and b!442656 res!262277) b!442645))

(assert (= (and b!442653 condMapEmpty!19206) mapIsEmpty!19206))

(assert (= (and b!442653 (not condMapEmpty!19206)) mapNonEmpty!19206))

(get-info :version)

(assert (= (and mapNonEmpty!19206 ((_ is ValueCellFull!5517) mapValue!19206)) b!442649))

(assert (= (and b!442653 ((_ is ValueCellFull!5517) mapDefault!19206)) b!442648))

(assert (= start!40330 b!442653))

(declare-fun m!429179 () Bool)

(assert (=> b!442650 m!429179))

(declare-fun m!429181 () Bool)

(assert (=> b!442655 m!429181))

(declare-fun m!429183 () Bool)

(assert (=> b!442652 m!429183))

(declare-fun m!429185 () Bool)

(assert (=> b!442644 m!429185))

(declare-fun m!429187 () Bool)

(assert (=> b!442645 m!429187))

(declare-fun m!429189 () Bool)

(assert (=> mapNonEmpty!19206 m!429189))

(declare-fun m!429191 () Bool)

(assert (=> b!442646 m!429191))

(declare-fun m!429193 () Bool)

(assert (=> b!442656 m!429193))

(declare-fun m!429195 () Bool)

(assert (=> b!442656 m!429195))

(declare-fun m!429197 () Bool)

(assert (=> start!40330 m!429197))

(declare-fun m!429199 () Bool)

(assert (=> start!40330 m!429199))

(declare-fun m!429201 () Bool)

(assert (=> b!442654 m!429201))

(check-sat tp_is_empty!11721 (not b!442650) (not b!442656) (not b!442652) (not b!442645) (not mapNonEmpty!19206) (not b!442655) (not b!442644) (not start!40330) (not b!442646))
(check-sat)
