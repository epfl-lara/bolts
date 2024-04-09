; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40434 () Bool)

(assert start!40434)

(declare-fun b!444458 () Bool)

(declare-fun e!261367 () Bool)

(declare-fun tp_is_empty!11811 () Bool)

(assert (=> b!444458 (= e!261367 tp_is_empty!11811)))

(declare-fun b!444459 () Bool)

(declare-fun res!263664 () Bool)

(declare-fun e!261368 () Bool)

(assert (=> b!444459 (=> (not res!263664) (not e!261368))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27393 0))(
  ( (array!27394 (arr!13141 (Array (_ BitVec 32) (_ BitVec 64))) (size!13493 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27393)

(assert (=> b!444459 (= res!263664 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13493 _keys!709))))))

(declare-fun b!444461 () Bool)

(declare-fun e!261364 () Bool)

(assert (=> b!444461 (= e!261364 false)))

(declare-fun lt!203487 () Bool)

(declare-fun lt!203486 () array!27393)

(declare-datatypes ((List!7846 0))(
  ( (Nil!7843) (Cons!7842 (h!8698 (_ BitVec 64)) (t!13612 List!7846)) )
))
(declare-fun arrayNoDuplicates!0 (array!27393 (_ BitVec 32) List!7846) Bool)

(assert (=> b!444461 (= lt!203487 (arrayNoDuplicates!0 lt!203486 #b00000000000000000000000000000000 Nil!7843))))

(declare-fun b!444462 () Bool)

(assert (=> b!444462 (= e!261368 e!261364)))

(declare-fun res!263661 () Bool)

(assert (=> b!444462 (=> (not res!263661) (not e!261364))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27393 (_ BitVec 32)) Bool)

(assert (=> b!444462 (= res!263661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203486 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!444462 (= lt!203486 (array!27394 (store (arr!13141 _keys!709) i!563 k0!794) (size!13493 _keys!709)))))

(declare-fun b!444463 () Bool)

(declare-fun e!261369 () Bool)

(declare-fun mapRes!19344 () Bool)

(assert (=> b!444463 (= e!261369 (and e!261367 mapRes!19344))))

(declare-fun condMapEmpty!19344 () Bool)

(declare-datatypes ((V!16853 0))(
  ( (V!16854 (val!5950 Int)) )
))
(declare-datatypes ((ValueCell!5562 0))(
  ( (ValueCellFull!5562 (v!8197 V!16853)) (EmptyCell!5562) )
))
(declare-datatypes ((array!27395 0))(
  ( (array!27396 (arr!13142 (Array (_ BitVec 32) ValueCell!5562)) (size!13494 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27395)

(declare-fun mapDefault!19344 () ValueCell!5562)

(assert (=> b!444463 (= condMapEmpty!19344 (= (arr!13142 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5562)) mapDefault!19344)))))

(declare-fun b!444464 () Bool)

(declare-fun res!263665 () Bool)

(assert (=> b!444464 (=> (not res!263665) (not e!261368))))

(assert (=> b!444464 (= res!263665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!263663 () Bool)

(assert (=> start!40434 (=> (not res!263663) (not e!261368))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40434 (= res!263663 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13493 _keys!709))))))

(assert (=> start!40434 e!261368))

(assert (=> start!40434 true))

(declare-fun array_inv!9520 (array!27395) Bool)

(assert (=> start!40434 (and (array_inv!9520 _values!549) e!261369)))

(declare-fun array_inv!9521 (array!27393) Bool)

(assert (=> start!40434 (array_inv!9521 _keys!709)))

(declare-fun b!444460 () Bool)

(declare-fun e!261366 () Bool)

(assert (=> b!444460 (= e!261366 tp_is_empty!11811)))

(declare-fun b!444465 () Bool)

(declare-fun res!263660 () Bool)

(assert (=> b!444465 (=> (not res!263660) (not e!261368))))

(declare-fun arrayContainsKey!0 (array!27393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444465 (= res!263660 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19344 () Bool)

(assert (=> mapIsEmpty!19344 mapRes!19344))

(declare-fun b!444466 () Bool)

(declare-fun res!263656 () Bool)

(assert (=> b!444466 (=> (not res!263656) (not e!261368))))

(assert (=> b!444466 (= res!263656 (or (= (select (arr!13141 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13141 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19344 () Bool)

(declare-fun tp!37326 () Bool)

(assert (=> mapNonEmpty!19344 (= mapRes!19344 (and tp!37326 e!261366))))

(declare-fun mapValue!19344 () ValueCell!5562)

(declare-fun mapRest!19344 () (Array (_ BitVec 32) ValueCell!5562))

(declare-fun mapKey!19344 () (_ BitVec 32))

(assert (=> mapNonEmpty!19344 (= (arr!13142 _values!549) (store mapRest!19344 mapKey!19344 mapValue!19344))))

(declare-fun b!444467 () Bool)

(declare-fun res!263657 () Bool)

(assert (=> b!444467 (=> (not res!263657) (not e!261368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444467 (= res!263657 (validMask!0 mask!1025))))

(declare-fun b!444468 () Bool)

(declare-fun res!263659 () Bool)

(assert (=> b!444468 (=> (not res!263659) (not e!261368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444468 (= res!263659 (validKeyInArray!0 k0!794))))

(declare-fun b!444469 () Bool)

(declare-fun res!263658 () Bool)

(assert (=> b!444469 (=> (not res!263658) (not e!261368))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444469 (= res!263658 (and (= (size!13494 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13493 _keys!709) (size!13494 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444470 () Bool)

(declare-fun res!263662 () Bool)

(assert (=> b!444470 (=> (not res!263662) (not e!261368))))

(assert (=> b!444470 (= res!263662 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7843))))

(assert (= (and start!40434 res!263663) b!444467))

(assert (= (and b!444467 res!263657) b!444469))

(assert (= (and b!444469 res!263658) b!444464))

(assert (= (and b!444464 res!263665) b!444470))

(assert (= (and b!444470 res!263662) b!444459))

(assert (= (and b!444459 res!263664) b!444468))

(assert (= (and b!444468 res!263659) b!444466))

(assert (= (and b!444466 res!263656) b!444465))

(assert (= (and b!444465 res!263660) b!444462))

(assert (= (and b!444462 res!263661) b!444461))

(assert (= (and b!444463 condMapEmpty!19344) mapIsEmpty!19344))

(assert (= (and b!444463 (not condMapEmpty!19344)) mapNonEmpty!19344))

(get-info :version)

(assert (= (and mapNonEmpty!19344 ((_ is ValueCellFull!5562) mapValue!19344)) b!444460))

(assert (= (and b!444463 ((_ is ValueCellFull!5562) mapDefault!19344)) b!444458))

(assert (= start!40434 b!444463))

(declare-fun m!430295 () Bool)

(assert (=> b!444470 m!430295))

(declare-fun m!430297 () Bool)

(assert (=> mapNonEmpty!19344 m!430297))

(declare-fun m!430299 () Bool)

(assert (=> b!444467 m!430299))

(declare-fun m!430301 () Bool)

(assert (=> b!444466 m!430301))

(declare-fun m!430303 () Bool)

(assert (=> b!444464 m!430303))

(declare-fun m!430305 () Bool)

(assert (=> start!40434 m!430305))

(declare-fun m!430307 () Bool)

(assert (=> start!40434 m!430307))

(declare-fun m!430309 () Bool)

(assert (=> b!444468 m!430309))

(declare-fun m!430311 () Bool)

(assert (=> b!444462 m!430311))

(declare-fun m!430313 () Bool)

(assert (=> b!444462 m!430313))

(declare-fun m!430315 () Bool)

(assert (=> b!444461 m!430315))

(declare-fun m!430317 () Bool)

(assert (=> b!444465 m!430317))

(check-sat (not b!444467) (not mapNonEmpty!19344) (not b!444468) (not start!40434) (not b!444462) (not b!444470) tp_is_empty!11811 (not b!444461) (not b!444465) (not b!444464))
(check-sat)
