; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38360 () Bool)

(assert start!38360)

(declare-fun b!395343 () Bool)

(declare-fun e!239360 () Bool)

(declare-fun e!239359 () Bool)

(declare-fun mapRes!16341 () Bool)

(assert (=> b!395343 (= e!239360 (and e!239359 mapRes!16341))))

(declare-fun condMapEmpty!16341 () Bool)

(declare-datatypes ((V!14197 0))(
  ( (V!14198 (val!4954 Int)) )
))
(declare-datatypes ((ValueCell!4566 0))(
  ( (ValueCellFull!4566 (v!7196 V!14197)) (EmptyCell!4566) )
))
(declare-datatypes ((array!23523 0))(
  ( (array!23524 (arr!11211 (Array (_ BitVec 32) ValueCell!4566)) (size!11563 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23523)

(declare-fun mapDefault!16341 () ValueCell!4566)

(assert (=> b!395343 (= condMapEmpty!16341 (= (arr!11211 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4566)) mapDefault!16341)))))

(declare-fun b!395344 () Bool)

(declare-fun e!239357 () Bool)

(declare-fun tp_is_empty!9819 () Bool)

(assert (=> b!395344 (= e!239357 tp_is_empty!9819)))

(declare-fun res!226725 () Bool)

(declare-fun e!239356 () Bool)

(assert (=> start!38360 (=> (not res!226725) (not e!239356))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23525 0))(
  ( (array!23526 (arr!11212 (Array (_ BitVec 32) (_ BitVec 64))) (size!11564 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23525)

(assert (=> start!38360 (= res!226725 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11564 _keys!709))))))

(assert (=> start!38360 e!239356))

(assert (=> start!38360 true))

(declare-fun array_inv!8210 (array!23523) Bool)

(assert (=> start!38360 (and (array_inv!8210 _values!549) e!239360)))

(declare-fun array_inv!8211 (array!23525) Bool)

(assert (=> start!38360 (array_inv!8211 _keys!709)))

(declare-fun b!395345 () Bool)

(assert (=> b!395345 (= e!239359 tp_is_empty!9819)))

(declare-fun b!395346 () Bool)

(declare-fun res!226726 () Bool)

(assert (=> b!395346 (=> (not res!226726) (not e!239356))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395346 (= res!226726 (and (= (size!11563 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11564 _keys!709) (size!11563 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395347 () Bool)

(declare-fun res!226723 () Bool)

(assert (=> b!395347 (=> (not res!226723) (not e!239356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395347 (= res!226723 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16341 () Bool)

(assert (=> mapIsEmpty!16341 mapRes!16341))

(declare-fun mapNonEmpty!16341 () Bool)

(declare-fun tp!32136 () Bool)

(assert (=> mapNonEmpty!16341 (= mapRes!16341 (and tp!32136 e!239357))))

(declare-fun mapKey!16341 () (_ BitVec 32))

(declare-fun mapRest!16341 () (Array (_ BitVec 32) ValueCell!4566))

(declare-fun mapValue!16341 () ValueCell!4566)

(assert (=> mapNonEmpty!16341 (= (arr!11211 _values!549) (store mapRest!16341 mapKey!16341 mapValue!16341))))

(declare-fun b!395348 () Bool)

(declare-fun res!226724 () Bool)

(assert (=> b!395348 (=> (not res!226724) (not e!239356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23525 (_ BitVec 32)) Bool)

(assert (=> b!395348 (= res!226724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395349 () Bool)

(assert (=> b!395349 (= e!239356 false)))

(declare-fun lt!187052 () Bool)

(declare-datatypes ((List!6476 0))(
  ( (Nil!6473) (Cons!6472 (h!7328 (_ BitVec 64)) (t!11658 List!6476)) )
))
(declare-fun arrayNoDuplicates!0 (array!23525 (_ BitVec 32) List!6476) Bool)

(assert (=> b!395349 (= lt!187052 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6473))))

(assert (= (and start!38360 res!226725) b!395347))

(assert (= (and b!395347 res!226723) b!395346))

(assert (= (and b!395346 res!226726) b!395348))

(assert (= (and b!395348 res!226724) b!395349))

(assert (= (and b!395343 condMapEmpty!16341) mapIsEmpty!16341))

(assert (= (and b!395343 (not condMapEmpty!16341)) mapNonEmpty!16341))

(get-info :version)

(assert (= (and mapNonEmpty!16341 ((_ is ValueCellFull!4566) mapValue!16341)) b!395344))

(assert (= (and b!395343 ((_ is ValueCellFull!4566) mapDefault!16341)) b!395345))

(assert (= start!38360 b!395343))

(declare-fun m!391389 () Bool)

(assert (=> b!395347 m!391389))

(declare-fun m!391391 () Bool)

(assert (=> start!38360 m!391391))

(declare-fun m!391393 () Bool)

(assert (=> start!38360 m!391393))

(declare-fun m!391395 () Bool)

(assert (=> b!395348 m!391395))

(declare-fun m!391397 () Bool)

(assert (=> b!395349 m!391397))

(declare-fun m!391399 () Bool)

(assert (=> mapNonEmpty!16341 m!391399))

(check-sat tp_is_empty!9819 (not start!38360) (not mapNonEmpty!16341) (not b!395347) (not b!395348) (not b!395349))
(check-sat)
