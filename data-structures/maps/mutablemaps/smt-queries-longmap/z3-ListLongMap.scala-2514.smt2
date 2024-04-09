; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38912 () Bool)

(assert start!38912)

(declare-fun b!406625 () Bool)

(declare-fun res!235028 () Bool)

(declare-fun e!244308 () Bool)

(assert (=> b!406625 (=> (not res!235028) (not e!244308))))

(declare-datatypes ((array!24503 0))(
  ( (array!24504 (arr!11698 (Array (_ BitVec 32) (_ BitVec 64))) (size!12050 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24503)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406625 (= res!235028 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!406626 () Bool)

(declare-fun res!235023 () Bool)

(assert (=> b!406626 (=> (not res!235023) (not e!244308))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14869 0))(
  ( (V!14870 (val!5206 Int)) )
))
(declare-datatypes ((ValueCell!4818 0))(
  ( (ValueCellFull!4818 (v!7449 V!14869)) (EmptyCell!4818) )
))
(declare-datatypes ((array!24505 0))(
  ( (array!24506 (arr!11699 (Array (_ BitVec 32) ValueCell!4818)) (size!12051 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24505)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!406626 (= res!235023 (and (= (size!12051 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12050 _keys!709) (size!12051 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406627 () Bool)

(declare-fun res!235024 () Bool)

(assert (=> b!406627 (=> (not res!235024) (not e!244308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406627 (= res!235024 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17106 () Bool)

(declare-fun mapRes!17106 () Bool)

(assert (=> mapIsEmpty!17106 mapRes!17106))

(declare-fun b!406628 () Bool)

(declare-fun e!244306 () Bool)

(assert (=> b!406628 (= e!244306 false)))

(declare-fun lt!188510 () Bool)

(declare-fun lt!188511 () array!24503)

(declare-datatypes ((List!6769 0))(
  ( (Nil!6766) (Cons!6765 (h!7621 (_ BitVec 64)) (t!11951 List!6769)) )
))
(declare-fun arrayNoDuplicates!0 (array!24503 (_ BitVec 32) List!6769) Bool)

(assert (=> b!406628 (= lt!188510 (arrayNoDuplicates!0 lt!188511 #b00000000000000000000000000000000 Nil!6766))))

(declare-fun b!406629 () Bool)

(declare-fun e!244307 () Bool)

(declare-fun tp_is_empty!10323 () Bool)

(assert (=> b!406629 (= e!244307 tp_is_empty!10323)))

(declare-fun b!406630 () Bool)

(declare-fun res!235030 () Bool)

(assert (=> b!406630 (=> (not res!235030) (not e!244308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24503 (_ BitVec 32)) Bool)

(assert (=> b!406630 (= res!235030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17106 () Bool)

(declare-fun tp!33225 () Bool)

(assert (=> mapNonEmpty!17106 (= mapRes!17106 (and tp!33225 e!244307))))

(declare-fun mapRest!17106 () (Array (_ BitVec 32) ValueCell!4818))

(declare-fun mapValue!17106 () ValueCell!4818)

(declare-fun mapKey!17106 () (_ BitVec 32))

(assert (=> mapNonEmpty!17106 (= (arr!11699 _values!549) (store mapRest!17106 mapKey!17106 mapValue!17106))))

(declare-fun b!406631 () Bool)

(assert (=> b!406631 (= e!244308 e!244306)))

(declare-fun res!235029 () Bool)

(assert (=> b!406631 (=> (not res!235029) (not e!244306))))

(assert (=> b!406631 (= res!235029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188511 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406631 (= lt!188511 (array!24504 (store (arr!11698 _keys!709) i!563 k0!794) (size!12050 _keys!709)))))

(declare-fun res!235026 () Bool)

(assert (=> start!38912 (=> (not res!235026) (not e!244308))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38912 (= res!235026 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12050 _keys!709))))))

(assert (=> start!38912 e!244308))

(assert (=> start!38912 true))

(declare-fun e!244304 () Bool)

(declare-fun array_inv!8546 (array!24505) Bool)

(assert (=> start!38912 (and (array_inv!8546 _values!549) e!244304)))

(declare-fun array_inv!8547 (array!24503) Bool)

(assert (=> start!38912 (array_inv!8547 _keys!709)))

(declare-fun b!406632 () Bool)

(declare-fun e!244305 () Bool)

(assert (=> b!406632 (= e!244305 tp_is_empty!10323)))

(declare-fun b!406633 () Bool)

(assert (=> b!406633 (= e!244304 (and e!244305 mapRes!17106))))

(declare-fun condMapEmpty!17106 () Bool)

(declare-fun mapDefault!17106 () ValueCell!4818)

(assert (=> b!406633 (= condMapEmpty!17106 (= (arr!11699 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4818)) mapDefault!17106)))))

(declare-fun b!406634 () Bool)

(declare-fun res!235025 () Bool)

(assert (=> b!406634 (=> (not res!235025) (not e!244308))))

(assert (=> b!406634 (= res!235025 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6766))))

(declare-fun b!406635 () Bool)

(declare-fun res!235027 () Bool)

(assert (=> b!406635 (=> (not res!235027) (not e!244308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406635 (= res!235027 (validMask!0 mask!1025))))

(declare-fun b!406636 () Bool)

(declare-fun res!235031 () Bool)

(assert (=> b!406636 (=> (not res!235031) (not e!244308))))

(assert (=> b!406636 (= res!235031 (or (= (select (arr!11698 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11698 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406637 () Bool)

(declare-fun res!235032 () Bool)

(assert (=> b!406637 (=> (not res!235032) (not e!244308))))

(assert (=> b!406637 (= res!235032 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12050 _keys!709))))))

(assert (= (and start!38912 res!235026) b!406635))

(assert (= (and b!406635 res!235027) b!406626))

(assert (= (and b!406626 res!235023) b!406630))

(assert (= (and b!406630 res!235030) b!406634))

(assert (= (and b!406634 res!235025) b!406637))

(assert (= (and b!406637 res!235032) b!406627))

(assert (= (and b!406627 res!235024) b!406636))

(assert (= (and b!406636 res!235031) b!406625))

(assert (= (and b!406625 res!235028) b!406631))

(assert (= (and b!406631 res!235029) b!406628))

(assert (= (and b!406633 condMapEmpty!17106) mapIsEmpty!17106))

(assert (= (and b!406633 (not condMapEmpty!17106)) mapNonEmpty!17106))

(get-info :version)

(assert (= (and mapNonEmpty!17106 ((_ is ValueCellFull!4818) mapValue!17106)) b!406629))

(assert (= (and b!406633 ((_ is ValueCellFull!4818) mapDefault!17106)) b!406632))

(assert (= start!38912 b!406633))

(declare-fun m!398589 () Bool)

(assert (=> start!38912 m!398589))

(declare-fun m!398591 () Bool)

(assert (=> start!38912 m!398591))

(declare-fun m!398593 () Bool)

(assert (=> b!406625 m!398593))

(declare-fun m!398595 () Bool)

(assert (=> b!406631 m!398595))

(declare-fun m!398597 () Bool)

(assert (=> b!406631 m!398597))

(declare-fun m!398599 () Bool)

(assert (=> b!406628 m!398599))

(declare-fun m!398601 () Bool)

(assert (=> mapNonEmpty!17106 m!398601))

(declare-fun m!398603 () Bool)

(assert (=> b!406630 m!398603))

(declare-fun m!398605 () Bool)

(assert (=> b!406635 m!398605))

(declare-fun m!398607 () Bool)

(assert (=> b!406627 m!398607))

(declare-fun m!398609 () Bool)

(assert (=> b!406634 m!398609))

(declare-fun m!398611 () Bool)

(assert (=> b!406636 m!398611))

(check-sat (not b!406634) (not b!406627) tp_is_empty!10323 (not start!38912) (not b!406635) (not b!406631) (not b!406625) (not b!406628) (not mapNonEmpty!17106) (not b!406630))
(check-sat)
