; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38846 () Bool)

(assert start!38846)

(declare-fun b!405338 () Bool)

(declare-fun res!234037 () Bool)

(declare-fun e!243713 () Bool)

(assert (=> b!405338 (=> (not res!234037) (not e!243713))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24373 0))(
  ( (array!24374 (arr!11633 (Array (_ BitVec 32) (_ BitVec 64))) (size!11985 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24373)

(assert (=> b!405338 (= res!234037 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11985 _keys!709))))))

(declare-fun b!405339 () Bool)

(declare-fun res!234033 () Bool)

(assert (=> b!405339 (=> (not res!234033) (not e!243713))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24373 (_ BitVec 32)) Bool)

(assert (=> b!405339 (= res!234033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405340 () Bool)

(declare-fun e!243710 () Bool)

(declare-fun tp_is_empty!10257 () Bool)

(assert (=> b!405340 (= e!243710 tp_is_empty!10257)))

(declare-fun b!405341 () Bool)

(declare-fun res!234039 () Bool)

(assert (=> b!405341 (=> (not res!234039) (not e!243713))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405341 (= res!234039 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405342 () Bool)

(declare-fun res!234040 () Bool)

(assert (=> b!405342 (=> (not res!234040) (not e!243713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405342 (= res!234040 (validKeyInArray!0 k0!794))))

(declare-fun b!405343 () Bool)

(declare-fun res!234042 () Bool)

(assert (=> b!405343 (=> (not res!234042) (not e!243713))))

(declare-datatypes ((List!6742 0))(
  ( (Nil!6739) (Cons!6738 (h!7594 (_ BitVec 64)) (t!11924 List!6742)) )
))
(declare-fun arrayNoDuplicates!0 (array!24373 (_ BitVec 32) List!6742) Bool)

(assert (=> b!405343 (= res!234042 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6739))))

(declare-fun b!405344 () Bool)

(declare-fun e!243711 () Bool)

(declare-fun mapRes!17007 () Bool)

(assert (=> b!405344 (= e!243711 (and e!243710 mapRes!17007))))

(declare-fun condMapEmpty!17007 () Bool)

(declare-datatypes ((V!14781 0))(
  ( (V!14782 (val!5173 Int)) )
))
(declare-datatypes ((ValueCell!4785 0))(
  ( (ValueCellFull!4785 (v!7416 V!14781)) (EmptyCell!4785) )
))
(declare-datatypes ((array!24375 0))(
  ( (array!24376 (arr!11634 (Array (_ BitVec 32) ValueCell!4785)) (size!11986 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24375)

(declare-fun mapDefault!17007 () ValueCell!4785)

(assert (=> b!405344 (= condMapEmpty!17007 (= (arr!11634 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4785)) mapDefault!17007)))))

(declare-fun b!405345 () Bool)

(declare-fun e!243712 () Bool)

(assert (=> b!405345 (= e!243712 tp_is_empty!10257)))

(declare-fun b!405346 () Bool)

(declare-fun res!234036 () Bool)

(assert (=> b!405346 (=> (not res!234036) (not e!243713))))

(assert (=> b!405346 (= res!234036 (or (= (select (arr!11633 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11633 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405347 () Bool)

(declare-fun e!243715 () Bool)

(assert (=> b!405347 (= e!243713 e!243715)))

(declare-fun res!234041 () Bool)

(assert (=> b!405347 (=> (not res!234041) (not e!243715))))

(declare-fun lt!188313 () array!24373)

(assert (=> b!405347 (= res!234041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188313 mask!1025))))

(assert (=> b!405347 (= lt!188313 (array!24374 (store (arr!11633 _keys!709) i!563 k0!794) (size!11985 _keys!709)))))

(declare-fun mapIsEmpty!17007 () Bool)

(assert (=> mapIsEmpty!17007 mapRes!17007))

(declare-fun b!405348 () Bool)

(assert (=> b!405348 (= e!243715 false)))

(declare-fun lt!188312 () Bool)

(assert (=> b!405348 (= lt!188312 (arrayNoDuplicates!0 lt!188313 #b00000000000000000000000000000000 Nil!6739))))

(declare-fun b!405349 () Bool)

(declare-fun res!234035 () Bool)

(assert (=> b!405349 (=> (not res!234035) (not e!243713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405349 (= res!234035 (validMask!0 mask!1025))))

(declare-fun b!405350 () Bool)

(declare-fun res!234034 () Bool)

(assert (=> b!405350 (=> (not res!234034) (not e!243713))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405350 (= res!234034 (and (= (size!11986 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11985 _keys!709) (size!11986 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17007 () Bool)

(declare-fun tp!33126 () Bool)

(assert (=> mapNonEmpty!17007 (= mapRes!17007 (and tp!33126 e!243712))))

(declare-fun mapRest!17007 () (Array (_ BitVec 32) ValueCell!4785))

(declare-fun mapValue!17007 () ValueCell!4785)

(declare-fun mapKey!17007 () (_ BitVec 32))

(assert (=> mapNonEmpty!17007 (= (arr!11634 _values!549) (store mapRest!17007 mapKey!17007 mapValue!17007))))

(declare-fun res!234038 () Bool)

(assert (=> start!38846 (=> (not res!234038) (not e!243713))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38846 (= res!234038 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11985 _keys!709))))))

(assert (=> start!38846 e!243713))

(assert (=> start!38846 true))

(declare-fun array_inv!8498 (array!24375) Bool)

(assert (=> start!38846 (and (array_inv!8498 _values!549) e!243711)))

(declare-fun array_inv!8499 (array!24373) Bool)

(assert (=> start!38846 (array_inv!8499 _keys!709)))

(assert (= (and start!38846 res!234038) b!405349))

(assert (= (and b!405349 res!234035) b!405350))

(assert (= (and b!405350 res!234034) b!405339))

(assert (= (and b!405339 res!234033) b!405343))

(assert (= (and b!405343 res!234042) b!405338))

(assert (= (and b!405338 res!234037) b!405342))

(assert (= (and b!405342 res!234040) b!405346))

(assert (= (and b!405346 res!234036) b!405341))

(assert (= (and b!405341 res!234039) b!405347))

(assert (= (and b!405347 res!234041) b!405348))

(assert (= (and b!405344 condMapEmpty!17007) mapIsEmpty!17007))

(assert (= (and b!405344 (not condMapEmpty!17007)) mapNonEmpty!17007))

(get-info :version)

(assert (= (and mapNonEmpty!17007 ((_ is ValueCellFull!4785) mapValue!17007)) b!405345))

(assert (= (and b!405344 ((_ is ValueCellFull!4785) mapDefault!17007)) b!405340))

(assert (= start!38846 b!405344))

(declare-fun m!397797 () Bool)

(assert (=> b!405343 m!397797))

(declare-fun m!397799 () Bool)

(assert (=> start!38846 m!397799))

(declare-fun m!397801 () Bool)

(assert (=> start!38846 m!397801))

(declare-fun m!397803 () Bool)

(assert (=> b!405346 m!397803))

(declare-fun m!397805 () Bool)

(assert (=> b!405341 m!397805))

(declare-fun m!397807 () Bool)

(assert (=> mapNonEmpty!17007 m!397807))

(declare-fun m!397809 () Bool)

(assert (=> b!405349 m!397809))

(declare-fun m!397811 () Bool)

(assert (=> b!405339 m!397811))

(declare-fun m!397813 () Bool)

(assert (=> b!405347 m!397813))

(declare-fun m!397815 () Bool)

(assert (=> b!405347 m!397815))

(declare-fun m!397817 () Bool)

(assert (=> b!405342 m!397817))

(declare-fun m!397819 () Bool)

(assert (=> b!405348 m!397819))

(check-sat (not b!405347) (not b!405348) tp_is_empty!10257 (not mapNonEmpty!17007) (not b!405349) (not b!405341) (not b!405343) (not b!405342) (not b!405339) (not start!38846))
(check-sat)
