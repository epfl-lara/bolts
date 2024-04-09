; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38834 () Bool)

(assert start!38834)

(declare-fun mapNonEmpty!16989 () Bool)

(declare-fun mapRes!16989 () Bool)

(declare-fun tp!33108 () Bool)

(declare-fun e!243602 () Bool)

(assert (=> mapNonEmpty!16989 (= mapRes!16989 (and tp!33108 e!243602))))

(declare-datatypes ((V!14765 0))(
  ( (V!14766 (val!5167 Int)) )
))
(declare-datatypes ((ValueCell!4779 0))(
  ( (ValueCellFull!4779 (v!7410 V!14765)) (EmptyCell!4779) )
))
(declare-fun mapValue!16989 () ValueCell!4779)

(declare-datatypes ((array!24351 0))(
  ( (array!24352 (arr!11622 (Array (_ BitVec 32) ValueCell!4779)) (size!11974 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24351)

(declare-fun mapRest!16989 () (Array (_ BitVec 32) ValueCell!4779))

(declare-fun mapKey!16989 () (_ BitVec 32))

(assert (=> mapNonEmpty!16989 (= (arr!11622 _values!549) (store mapRest!16989 mapKey!16989 mapValue!16989))))

(declare-fun b!405104 () Bool)

(declare-fun tp_is_empty!10245 () Bool)

(assert (=> b!405104 (= e!243602 tp_is_empty!10245)))

(declare-fun b!405105 () Bool)

(declare-fun res!233860 () Bool)

(declare-fun e!243604 () Bool)

(assert (=> b!405105 (=> (not res!233860) (not e!243604))))

(declare-datatypes ((array!24353 0))(
  ( (array!24354 (arr!11623 (Array (_ BitVec 32) (_ BitVec 64))) (size!11975 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24353)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24353 (_ BitVec 32)) Bool)

(assert (=> b!405105 (= res!233860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405106 () Bool)

(declare-fun res!233855 () Bool)

(assert (=> b!405106 (=> (not res!233855) (not e!243604))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405106 (= res!233855 (or (= (select (arr!11623 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11623 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405107 () Bool)

(declare-fun e!243605 () Bool)

(declare-fun e!243603 () Bool)

(assert (=> b!405107 (= e!243605 (and e!243603 mapRes!16989))))

(declare-fun condMapEmpty!16989 () Bool)

(declare-fun mapDefault!16989 () ValueCell!4779)

(assert (=> b!405107 (= condMapEmpty!16989 (= (arr!11622 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4779)) mapDefault!16989)))))

(declare-fun b!405108 () Bool)

(declare-fun res!233859 () Bool)

(assert (=> b!405108 (=> (not res!233859) (not e!243604))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405108 (= res!233859 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405110 () Bool)

(declare-fun e!243607 () Bool)

(assert (=> b!405110 (= e!243604 e!243607)))

(declare-fun res!233861 () Bool)

(assert (=> b!405110 (=> (not res!233861) (not e!243607))))

(declare-fun lt!188277 () array!24353)

(assert (=> b!405110 (= res!233861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188277 mask!1025))))

(assert (=> b!405110 (= lt!188277 (array!24354 (store (arr!11623 _keys!709) i!563 k0!794) (size!11975 _keys!709)))))

(declare-fun b!405111 () Bool)

(declare-fun res!233858 () Bool)

(assert (=> b!405111 (=> (not res!233858) (not e!243604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405111 (= res!233858 (validMask!0 mask!1025))))

(declare-fun b!405112 () Bool)

(declare-fun res!233854 () Bool)

(assert (=> b!405112 (=> (not res!233854) (not e!243604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405112 (= res!233854 (validKeyInArray!0 k0!794))))

(declare-fun b!405113 () Bool)

(declare-fun res!233857 () Bool)

(assert (=> b!405113 (=> (not res!233857) (not e!243604))))

(declare-datatypes ((List!6738 0))(
  ( (Nil!6735) (Cons!6734 (h!7590 (_ BitVec 64)) (t!11920 List!6738)) )
))
(declare-fun arrayNoDuplicates!0 (array!24353 (_ BitVec 32) List!6738) Bool)

(assert (=> b!405113 (= res!233857 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6735))))

(declare-fun mapIsEmpty!16989 () Bool)

(assert (=> mapIsEmpty!16989 mapRes!16989))

(declare-fun res!233853 () Bool)

(assert (=> start!38834 (=> (not res!233853) (not e!243604))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38834 (= res!233853 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11975 _keys!709))))))

(assert (=> start!38834 e!243604))

(assert (=> start!38834 true))

(declare-fun array_inv!8490 (array!24351) Bool)

(assert (=> start!38834 (and (array_inv!8490 _values!549) e!243605)))

(declare-fun array_inv!8491 (array!24353) Bool)

(assert (=> start!38834 (array_inv!8491 _keys!709)))

(declare-fun b!405109 () Bool)

(assert (=> b!405109 (= e!243607 false)))

(declare-fun lt!188276 () Bool)

(assert (=> b!405109 (= lt!188276 (arrayNoDuplicates!0 lt!188277 #b00000000000000000000000000000000 Nil!6735))))

(declare-fun b!405114 () Bool)

(declare-fun res!233856 () Bool)

(assert (=> b!405114 (=> (not res!233856) (not e!243604))))

(assert (=> b!405114 (= res!233856 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11975 _keys!709))))))

(declare-fun b!405115 () Bool)

(declare-fun res!233862 () Bool)

(assert (=> b!405115 (=> (not res!233862) (not e!243604))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405115 (= res!233862 (and (= (size!11974 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11975 _keys!709) (size!11974 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405116 () Bool)

(assert (=> b!405116 (= e!243603 tp_is_empty!10245)))

(assert (= (and start!38834 res!233853) b!405111))

(assert (= (and b!405111 res!233858) b!405115))

(assert (= (and b!405115 res!233862) b!405105))

(assert (= (and b!405105 res!233860) b!405113))

(assert (= (and b!405113 res!233857) b!405114))

(assert (= (and b!405114 res!233856) b!405112))

(assert (= (and b!405112 res!233854) b!405106))

(assert (= (and b!405106 res!233855) b!405108))

(assert (= (and b!405108 res!233859) b!405110))

(assert (= (and b!405110 res!233861) b!405109))

(assert (= (and b!405107 condMapEmpty!16989) mapIsEmpty!16989))

(assert (= (and b!405107 (not condMapEmpty!16989)) mapNonEmpty!16989))

(get-info :version)

(assert (= (and mapNonEmpty!16989 ((_ is ValueCellFull!4779) mapValue!16989)) b!405104))

(assert (= (and b!405107 ((_ is ValueCellFull!4779) mapDefault!16989)) b!405116))

(assert (= start!38834 b!405107))

(declare-fun m!397653 () Bool)

(assert (=> b!405110 m!397653))

(declare-fun m!397655 () Bool)

(assert (=> b!405110 m!397655))

(declare-fun m!397657 () Bool)

(assert (=> start!38834 m!397657))

(declare-fun m!397659 () Bool)

(assert (=> start!38834 m!397659))

(declare-fun m!397661 () Bool)

(assert (=> b!405109 m!397661))

(declare-fun m!397663 () Bool)

(assert (=> mapNonEmpty!16989 m!397663))

(declare-fun m!397665 () Bool)

(assert (=> b!405108 m!397665))

(declare-fun m!397667 () Bool)

(assert (=> b!405106 m!397667))

(declare-fun m!397669 () Bool)

(assert (=> b!405113 m!397669))

(declare-fun m!397671 () Bool)

(assert (=> b!405105 m!397671))

(declare-fun m!397673 () Bool)

(assert (=> b!405111 m!397673))

(declare-fun m!397675 () Bool)

(assert (=> b!405112 m!397675))

(check-sat (not b!405109) (not b!405111) (not b!405112) (not b!405108) (not start!38834) (not b!405113) (not b!405110) (not b!405105) (not mapNonEmpty!16989) tp_is_empty!10245)
(check-sat)
