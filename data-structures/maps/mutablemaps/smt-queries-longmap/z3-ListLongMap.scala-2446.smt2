; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38504 () Bool)

(assert start!38504)

(declare-fun b!397373 () Bool)

(declare-fun res!228258 () Bool)

(declare-fun e!240310 () Bool)

(assert (=> b!397373 (=> (not res!228258) (not e!240310))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397373 (= res!228258 (validKeyInArray!0 k0!794))))

(declare-fun b!397374 () Bool)

(declare-fun res!228262 () Bool)

(assert (=> b!397374 (=> (not res!228262) (not e!240310))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397374 (= res!228262 (validMask!0 mask!1025))))

(declare-fun b!397375 () Bool)

(declare-fun e!240308 () Bool)

(assert (=> b!397375 (= e!240310 e!240308)))

(declare-fun res!228257 () Bool)

(assert (=> b!397375 (=> (not res!228257) (not e!240308))))

(declare-datatypes ((array!23713 0))(
  ( (array!23714 (arr!11303 (Array (_ BitVec 32) (_ BitVec 64))) (size!11655 (_ BitVec 32))) )
))
(declare-fun lt!187287 () array!23713)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23713 (_ BitVec 32)) Bool)

(assert (=> b!397375 (= res!228257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187287 mask!1025))))

(declare-fun _keys!709 () array!23713)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397375 (= lt!187287 (array!23714 (store (arr!11303 _keys!709) i!563 k0!794) (size!11655 _keys!709)))))

(declare-fun b!397376 () Bool)

(declare-fun res!228255 () Bool)

(assert (=> b!397376 (=> (not res!228255) (not e!240310))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14325 0))(
  ( (V!14326 (val!5002 Int)) )
))
(declare-datatypes ((ValueCell!4614 0))(
  ( (ValueCellFull!4614 (v!7245 V!14325)) (EmptyCell!4614) )
))
(declare-datatypes ((array!23715 0))(
  ( (array!23716 (arr!11304 (Array (_ BitVec 32) ValueCell!4614)) (size!11656 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23715)

(assert (=> b!397376 (= res!228255 (and (= (size!11656 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11655 _keys!709) (size!11656 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397377 () Bool)

(declare-fun e!240309 () Bool)

(declare-fun e!240313 () Bool)

(declare-fun mapRes!16494 () Bool)

(assert (=> b!397377 (= e!240309 (and e!240313 mapRes!16494))))

(declare-fun condMapEmpty!16494 () Bool)

(declare-fun mapDefault!16494 () ValueCell!4614)

(assert (=> b!397377 (= condMapEmpty!16494 (= (arr!11304 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4614)) mapDefault!16494)))))

(declare-fun b!397378 () Bool)

(declare-fun res!228260 () Bool)

(assert (=> b!397378 (=> (not res!228260) (not e!240310))))

(declare-fun arrayContainsKey!0 (array!23713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397378 (= res!228260 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!228263 () Bool)

(assert (=> start!38504 (=> (not res!228263) (not e!240310))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38504 (= res!228263 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11655 _keys!709))))))

(assert (=> start!38504 e!240310))

(assert (=> start!38504 true))

(declare-fun array_inv!8276 (array!23715) Bool)

(assert (=> start!38504 (and (array_inv!8276 _values!549) e!240309)))

(declare-fun array_inv!8277 (array!23713) Bool)

(assert (=> start!38504 (array_inv!8277 _keys!709)))

(declare-fun b!397379 () Bool)

(declare-fun res!228256 () Bool)

(assert (=> b!397379 (=> (not res!228256) (not e!240310))))

(assert (=> b!397379 (= res!228256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397380 () Bool)

(declare-fun res!228264 () Bool)

(assert (=> b!397380 (=> (not res!228264) (not e!240310))))

(assert (=> b!397380 (= res!228264 (or (= (select (arr!11303 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11303 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397381 () Bool)

(declare-fun e!240312 () Bool)

(declare-fun tp_is_empty!9915 () Bool)

(assert (=> b!397381 (= e!240312 tp_is_empty!9915)))

(declare-fun mapNonEmpty!16494 () Bool)

(declare-fun tp!32289 () Bool)

(assert (=> mapNonEmpty!16494 (= mapRes!16494 (and tp!32289 e!240312))))

(declare-fun mapValue!16494 () ValueCell!4614)

(declare-fun mapRest!16494 () (Array (_ BitVec 32) ValueCell!4614))

(declare-fun mapKey!16494 () (_ BitVec 32))

(assert (=> mapNonEmpty!16494 (= (arr!11304 _values!549) (store mapRest!16494 mapKey!16494 mapValue!16494))))

(declare-fun mapIsEmpty!16494 () Bool)

(assert (=> mapIsEmpty!16494 mapRes!16494))

(declare-fun b!397382 () Bool)

(assert (=> b!397382 (= e!240313 tp_is_empty!9915)))

(declare-fun b!397383 () Bool)

(assert (=> b!397383 (= e!240308 false)))

(declare-fun lt!187286 () Bool)

(declare-datatypes ((List!6514 0))(
  ( (Nil!6511) (Cons!6510 (h!7366 (_ BitVec 64)) (t!11696 List!6514)) )
))
(declare-fun arrayNoDuplicates!0 (array!23713 (_ BitVec 32) List!6514) Bool)

(assert (=> b!397383 (= lt!187286 (arrayNoDuplicates!0 lt!187287 #b00000000000000000000000000000000 Nil!6511))))

(declare-fun b!397384 () Bool)

(declare-fun res!228261 () Bool)

(assert (=> b!397384 (=> (not res!228261) (not e!240310))))

(assert (=> b!397384 (= res!228261 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6511))))

(declare-fun b!397385 () Bool)

(declare-fun res!228259 () Bool)

(assert (=> b!397385 (=> (not res!228259) (not e!240310))))

(assert (=> b!397385 (= res!228259 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11655 _keys!709))))))

(assert (= (and start!38504 res!228263) b!397374))

(assert (= (and b!397374 res!228262) b!397376))

(assert (= (and b!397376 res!228255) b!397379))

(assert (= (and b!397379 res!228256) b!397384))

(assert (= (and b!397384 res!228261) b!397385))

(assert (= (and b!397385 res!228259) b!397373))

(assert (= (and b!397373 res!228258) b!397380))

(assert (= (and b!397380 res!228264) b!397378))

(assert (= (and b!397378 res!228260) b!397375))

(assert (= (and b!397375 res!228257) b!397383))

(assert (= (and b!397377 condMapEmpty!16494) mapIsEmpty!16494))

(assert (= (and b!397377 (not condMapEmpty!16494)) mapNonEmpty!16494))

(get-info :version)

(assert (= (and mapNonEmpty!16494 ((_ is ValueCellFull!4614) mapValue!16494)) b!397381))

(assert (= (and b!397377 ((_ is ValueCellFull!4614) mapDefault!16494)) b!397382))

(assert (= start!38504 b!397377))

(declare-fun m!392613 () Bool)

(assert (=> b!397379 m!392613))

(declare-fun m!392615 () Bool)

(assert (=> b!397383 m!392615))

(declare-fun m!392617 () Bool)

(assert (=> b!397375 m!392617))

(declare-fun m!392619 () Bool)

(assert (=> b!397375 m!392619))

(declare-fun m!392621 () Bool)

(assert (=> b!397378 m!392621))

(declare-fun m!392623 () Bool)

(assert (=> b!397374 m!392623))

(declare-fun m!392625 () Bool)

(assert (=> mapNonEmpty!16494 m!392625))

(declare-fun m!392627 () Bool)

(assert (=> b!397373 m!392627))

(declare-fun m!392629 () Bool)

(assert (=> b!397384 m!392629))

(declare-fun m!392631 () Bool)

(assert (=> start!38504 m!392631))

(declare-fun m!392633 () Bool)

(assert (=> start!38504 m!392633))

(declare-fun m!392635 () Bool)

(assert (=> b!397380 m!392635))

(check-sat (not b!397384) (not b!397378) (not b!397373) (not mapNonEmpty!16494) (not b!397383) (not b!397379) tp_is_empty!9915 (not b!397374) (not start!38504) (not b!397375))
(check-sat)
