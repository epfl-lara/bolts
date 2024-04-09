; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38780 () Bool)

(assert start!38780)

(declare-fun b!404051 () Bool)

(declare-fun res!233045 () Bool)

(declare-fun e!243120 () Bool)

(assert (=> b!404051 (=> (not res!233045) (not e!243120))))

(declare-datatypes ((array!24249 0))(
  ( (array!24250 (arr!11571 (Array (_ BitVec 32) (_ BitVec 64))) (size!11923 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24249)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14693 0))(
  ( (V!14694 (val!5140 Int)) )
))
(declare-datatypes ((ValueCell!4752 0))(
  ( (ValueCellFull!4752 (v!7383 V!14693)) (EmptyCell!4752) )
))
(declare-datatypes ((array!24251 0))(
  ( (array!24252 (arr!11572 (Array (_ BitVec 32) ValueCell!4752)) (size!11924 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24251)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404051 (= res!233045 (and (= (size!11924 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11923 _keys!709) (size!11924 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404052 () Bool)

(declare-fun res!233047 () Bool)

(assert (=> b!404052 (=> (not res!233047) (not e!243120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404052 (= res!233047 (validMask!0 mask!1025))))

(declare-fun res!233052 () Bool)

(assert (=> start!38780 (=> (not res!233052) (not e!243120))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38780 (= res!233052 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11923 _keys!709))))))

(assert (=> start!38780 e!243120))

(assert (=> start!38780 true))

(declare-fun e!243116 () Bool)

(declare-fun array_inv!8454 (array!24251) Bool)

(assert (=> start!38780 (and (array_inv!8454 _values!549) e!243116)))

(declare-fun array_inv!8455 (array!24249) Bool)

(assert (=> start!38780 (array_inv!8455 _keys!709)))

(declare-fun b!404053 () Bool)

(declare-fun res!233051 () Bool)

(assert (=> b!404053 (=> (not res!233051) (not e!243120))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404053 (= res!233051 (or (= (select (arr!11571 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11571 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404054 () Bool)

(declare-fun res!233044 () Bool)

(assert (=> b!404054 (=> (not res!233044) (not e!243120))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404054 (= res!233044 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404055 () Bool)

(declare-fun res!233048 () Bool)

(assert (=> b!404055 (=> (not res!233048) (not e!243120))))

(assert (=> b!404055 (= res!233048 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11923 _keys!709))))))

(declare-fun b!404056 () Bool)

(declare-fun res!233050 () Bool)

(assert (=> b!404056 (=> (not res!233050) (not e!243120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24249 (_ BitVec 32)) Bool)

(assert (=> b!404056 (= res!233050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404057 () Bool)

(declare-fun e!243117 () Bool)

(assert (=> b!404057 (= e!243117 false)))

(declare-fun lt!188115 () Bool)

(declare-fun lt!188114 () array!24249)

(declare-datatypes ((List!6716 0))(
  ( (Nil!6713) (Cons!6712 (h!7568 (_ BitVec 64)) (t!11898 List!6716)) )
))
(declare-fun arrayNoDuplicates!0 (array!24249 (_ BitVec 32) List!6716) Bool)

(assert (=> b!404057 (= lt!188115 (arrayNoDuplicates!0 lt!188114 #b00000000000000000000000000000000 Nil!6713))))

(declare-fun b!404058 () Bool)

(declare-fun e!243121 () Bool)

(declare-fun tp_is_empty!10191 () Bool)

(assert (=> b!404058 (= e!243121 tp_is_empty!10191)))

(declare-fun b!404059 () Bool)

(declare-fun mapRes!16908 () Bool)

(assert (=> b!404059 (= e!243116 (and e!243121 mapRes!16908))))

(declare-fun condMapEmpty!16908 () Bool)

(declare-fun mapDefault!16908 () ValueCell!4752)

(assert (=> b!404059 (= condMapEmpty!16908 (= (arr!11572 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4752)) mapDefault!16908)))))

(declare-fun mapNonEmpty!16908 () Bool)

(declare-fun tp!33027 () Bool)

(declare-fun e!243119 () Bool)

(assert (=> mapNonEmpty!16908 (= mapRes!16908 (and tp!33027 e!243119))))

(declare-fun mapRest!16908 () (Array (_ BitVec 32) ValueCell!4752))

(declare-fun mapValue!16908 () ValueCell!4752)

(declare-fun mapKey!16908 () (_ BitVec 32))

(assert (=> mapNonEmpty!16908 (= (arr!11572 _values!549) (store mapRest!16908 mapKey!16908 mapValue!16908))))

(declare-fun b!404060 () Bool)

(assert (=> b!404060 (= e!243119 tp_is_empty!10191)))

(declare-fun b!404061 () Bool)

(declare-fun res!233049 () Bool)

(assert (=> b!404061 (=> (not res!233049) (not e!243120))))

(assert (=> b!404061 (= res!233049 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6713))))

(declare-fun b!404062 () Bool)

(assert (=> b!404062 (= e!243120 e!243117)))

(declare-fun res!233043 () Bool)

(assert (=> b!404062 (=> (not res!233043) (not e!243117))))

(assert (=> b!404062 (= res!233043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188114 mask!1025))))

(assert (=> b!404062 (= lt!188114 (array!24250 (store (arr!11571 _keys!709) i!563 k0!794) (size!11923 _keys!709)))))

(declare-fun b!404063 () Bool)

(declare-fun res!233046 () Bool)

(assert (=> b!404063 (=> (not res!233046) (not e!243120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404063 (= res!233046 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16908 () Bool)

(assert (=> mapIsEmpty!16908 mapRes!16908))

(assert (= (and start!38780 res!233052) b!404052))

(assert (= (and b!404052 res!233047) b!404051))

(assert (= (and b!404051 res!233045) b!404056))

(assert (= (and b!404056 res!233050) b!404061))

(assert (= (and b!404061 res!233049) b!404055))

(assert (= (and b!404055 res!233048) b!404063))

(assert (= (and b!404063 res!233046) b!404053))

(assert (= (and b!404053 res!233051) b!404054))

(assert (= (and b!404054 res!233044) b!404062))

(assert (= (and b!404062 res!233043) b!404057))

(assert (= (and b!404059 condMapEmpty!16908) mapIsEmpty!16908))

(assert (= (and b!404059 (not condMapEmpty!16908)) mapNonEmpty!16908))

(get-info :version)

(assert (= (and mapNonEmpty!16908 ((_ is ValueCellFull!4752) mapValue!16908)) b!404060))

(assert (= (and b!404059 ((_ is ValueCellFull!4752) mapDefault!16908)) b!404058))

(assert (= start!38780 b!404059))

(declare-fun m!397005 () Bool)

(assert (=> start!38780 m!397005))

(declare-fun m!397007 () Bool)

(assert (=> start!38780 m!397007))

(declare-fun m!397009 () Bool)

(assert (=> mapNonEmpty!16908 m!397009))

(declare-fun m!397011 () Bool)

(assert (=> b!404054 m!397011))

(declare-fun m!397013 () Bool)

(assert (=> b!404053 m!397013))

(declare-fun m!397015 () Bool)

(assert (=> b!404063 m!397015))

(declare-fun m!397017 () Bool)

(assert (=> b!404056 m!397017))

(declare-fun m!397019 () Bool)

(assert (=> b!404057 m!397019))

(declare-fun m!397021 () Bool)

(assert (=> b!404062 m!397021))

(declare-fun m!397023 () Bool)

(assert (=> b!404062 m!397023))

(declare-fun m!397025 () Bool)

(assert (=> b!404052 m!397025))

(declare-fun m!397027 () Bool)

(assert (=> b!404061 m!397027))

(check-sat (not start!38780) (not b!404063) (not b!404057) (not mapNonEmpty!16908) (not b!404052) (not b!404062) (not b!404054) (not b!404061) (not b!404056) tp_is_empty!10191)
(check-sat)
