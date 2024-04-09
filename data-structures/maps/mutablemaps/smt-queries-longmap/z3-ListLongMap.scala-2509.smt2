; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38882 () Bool)

(assert start!38882)

(declare-fun b!406040 () Bool)

(declare-fun e!244039 () Bool)

(declare-fun e!244036 () Bool)

(assert (=> b!406040 (= e!244039 e!244036)))

(declare-fun res!234577 () Bool)

(assert (=> b!406040 (=> (not res!234577) (not e!244036))))

(declare-datatypes ((array!24443 0))(
  ( (array!24444 (arr!11668 (Array (_ BitVec 32) (_ BitVec 64))) (size!12020 (_ BitVec 32))) )
))
(declare-fun lt!188420 () array!24443)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24443 (_ BitVec 32)) Bool)

(assert (=> b!406040 (= res!234577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188420 mask!1025))))

(declare-fun _keys!709 () array!24443)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406040 (= lt!188420 (array!24444 (store (arr!11668 _keys!709) i!563 k0!794) (size!12020 _keys!709)))))

(declare-fun b!406041 () Bool)

(declare-fun res!234581 () Bool)

(assert (=> b!406041 (=> (not res!234581) (not e!244039))))

(assert (=> b!406041 (= res!234581 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12020 _keys!709))))))

(declare-fun b!406042 () Bool)

(declare-fun res!234575 () Bool)

(assert (=> b!406042 (=> (not res!234575) (not e!244039))))

(declare-datatypes ((List!6757 0))(
  ( (Nil!6754) (Cons!6753 (h!7609 (_ BitVec 64)) (t!11939 List!6757)) )
))
(declare-fun arrayNoDuplicates!0 (array!24443 (_ BitVec 32) List!6757) Bool)

(assert (=> b!406042 (= res!234575 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6754))))

(declare-fun b!406043 () Bool)

(declare-fun e!244037 () Bool)

(declare-fun tp_is_empty!10293 () Bool)

(assert (=> b!406043 (= e!244037 tp_is_empty!10293)))

(declare-fun b!406044 () Bool)

(declare-fun res!234574 () Bool)

(assert (=> b!406044 (=> (not res!234574) (not e!244039))))

(declare-datatypes ((V!14829 0))(
  ( (V!14830 (val!5191 Int)) )
))
(declare-datatypes ((ValueCell!4803 0))(
  ( (ValueCellFull!4803 (v!7434 V!14829)) (EmptyCell!4803) )
))
(declare-datatypes ((array!24445 0))(
  ( (array!24446 (arr!11669 (Array (_ BitVec 32) ValueCell!4803)) (size!12021 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24445)

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406044 (= res!234574 (and (= (size!12021 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12020 _keys!709) (size!12021 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406045 () Bool)

(declare-fun res!234573 () Bool)

(assert (=> b!406045 (=> (not res!234573) (not e!244039))))

(declare-fun arrayContainsKey!0 (array!24443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406045 (= res!234573 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17061 () Bool)

(declare-fun mapRes!17061 () Bool)

(assert (=> mapIsEmpty!17061 mapRes!17061))

(declare-fun mapNonEmpty!17061 () Bool)

(declare-fun tp!33180 () Bool)

(declare-fun e!244038 () Bool)

(assert (=> mapNonEmpty!17061 (= mapRes!17061 (and tp!33180 e!244038))))

(declare-fun mapKey!17061 () (_ BitVec 32))

(declare-fun mapValue!17061 () ValueCell!4803)

(declare-fun mapRest!17061 () (Array (_ BitVec 32) ValueCell!4803))

(assert (=> mapNonEmpty!17061 (= (arr!11669 _values!549) (store mapRest!17061 mapKey!17061 mapValue!17061))))

(declare-fun res!234580 () Bool)

(assert (=> start!38882 (=> (not res!234580) (not e!244039))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38882 (= res!234580 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12020 _keys!709))))))

(assert (=> start!38882 e!244039))

(assert (=> start!38882 true))

(declare-fun e!244035 () Bool)

(declare-fun array_inv!8526 (array!24445) Bool)

(assert (=> start!38882 (and (array_inv!8526 _values!549) e!244035)))

(declare-fun array_inv!8527 (array!24443) Bool)

(assert (=> start!38882 (array_inv!8527 _keys!709)))

(declare-fun b!406046 () Bool)

(assert (=> b!406046 (= e!244038 tp_is_empty!10293)))

(declare-fun b!406047 () Bool)

(declare-fun res!234578 () Bool)

(assert (=> b!406047 (=> (not res!234578) (not e!244039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406047 (= res!234578 (validMask!0 mask!1025))))

(declare-fun b!406048 () Bool)

(assert (=> b!406048 (= e!244036 false)))

(declare-fun lt!188421 () Bool)

(assert (=> b!406048 (= lt!188421 (arrayNoDuplicates!0 lt!188420 #b00000000000000000000000000000000 Nil!6754))))

(declare-fun b!406049 () Bool)

(declare-fun res!234576 () Bool)

(assert (=> b!406049 (=> (not res!234576) (not e!244039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406049 (= res!234576 (validKeyInArray!0 k0!794))))

(declare-fun b!406050 () Bool)

(declare-fun res!234582 () Bool)

(assert (=> b!406050 (=> (not res!234582) (not e!244039))))

(assert (=> b!406050 (= res!234582 (or (= (select (arr!11668 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11668 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406051 () Bool)

(assert (=> b!406051 (= e!244035 (and e!244037 mapRes!17061))))

(declare-fun condMapEmpty!17061 () Bool)

(declare-fun mapDefault!17061 () ValueCell!4803)

(assert (=> b!406051 (= condMapEmpty!17061 (= (arr!11669 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4803)) mapDefault!17061)))))

(declare-fun b!406052 () Bool)

(declare-fun res!234579 () Bool)

(assert (=> b!406052 (=> (not res!234579) (not e!244039))))

(assert (=> b!406052 (= res!234579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38882 res!234580) b!406047))

(assert (= (and b!406047 res!234578) b!406044))

(assert (= (and b!406044 res!234574) b!406052))

(assert (= (and b!406052 res!234579) b!406042))

(assert (= (and b!406042 res!234575) b!406041))

(assert (= (and b!406041 res!234581) b!406049))

(assert (= (and b!406049 res!234576) b!406050))

(assert (= (and b!406050 res!234582) b!406045))

(assert (= (and b!406045 res!234573) b!406040))

(assert (= (and b!406040 res!234577) b!406048))

(assert (= (and b!406051 condMapEmpty!17061) mapIsEmpty!17061))

(assert (= (and b!406051 (not condMapEmpty!17061)) mapNonEmpty!17061))

(get-info :version)

(assert (= (and mapNonEmpty!17061 ((_ is ValueCellFull!4803) mapValue!17061)) b!406046))

(assert (= (and b!406051 ((_ is ValueCellFull!4803) mapDefault!17061)) b!406043))

(assert (= start!38882 b!406051))

(declare-fun m!398229 () Bool)

(assert (=> b!406042 m!398229))

(declare-fun m!398231 () Bool)

(assert (=> b!406049 m!398231))

(declare-fun m!398233 () Bool)

(assert (=> b!406050 m!398233))

(declare-fun m!398235 () Bool)

(assert (=> b!406052 m!398235))

(declare-fun m!398237 () Bool)

(assert (=> b!406045 m!398237))

(declare-fun m!398239 () Bool)

(assert (=> mapNonEmpty!17061 m!398239))

(declare-fun m!398241 () Bool)

(assert (=> start!38882 m!398241))

(declare-fun m!398243 () Bool)

(assert (=> start!38882 m!398243))

(declare-fun m!398245 () Bool)

(assert (=> b!406040 m!398245))

(declare-fun m!398247 () Bool)

(assert (=> b!406040 m!398247))

(declare-fun m!398249 () Bool)

(assert (=> b!406048 m!398249))

(declare-fun m!398251 () Bool)

(assert (=> b!406047 m!398251))

(check-sat (not b!406048) (not b!406040) (not b!406052) (not b!406045) tp_is_empty!10293 (not b!406047) (not mapNonEmpty!17061) (not b!406042) (not b!406049) (not start!38882))
(check-sat)
