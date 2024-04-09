; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38894 () Bool)

(assert start!38894)

(declare-fun b!406274 () Bool)

(declare-fun e!244146 () Bool)

(declare-fun tp_is_empty!10305 () Bool)

(assert (=> b!406274 (= e!244146 tp_is_empty!10305)))

(declare-fun b!406275 () Bool)

(declare-fun e!244147 () Bool)

(declare-fun e!244143 () Bool)

(assert (=> b!406275 (= e!244147 e!244143)))

(declare-fun res!234755 () Bool)

(assert (=> b!406275 (=> (not res!234755) (not e!244143))))

(declare-datatypes ((array!24467 0))(
  ( (array!24468 (arr!11680 (Array (_ BitVec 32) (_ BitVec 64))) (size!12032 (_ BitVec 32))) )
))
(declare-fun lt!188457 () array!24467)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24467 (_ BitVec 32)) Bool)

(assert (=> b!406275 (= res!234755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188457 mask!1025))))

(declare-fun _keys!709 () array!24467)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406275 (= lt!188457 (array!24468 (store (arr!11680 _keys!709) i!563 k0!794) (size!12032 _keys!709)))))

(declare-fun b!406277 () Bool)

(declare-fun e!244145 () Bool)

(declare-fun e!244142 () Bool)

(declare-fun mapRes!17079 () Bool)

(assert (=> b!406277 (= e!244145 (and e!244142 mapRes!17079))))

(declare-fun condMapEmpty!17079 () Bool)

(declare-datatypes ((V!14845 0))(
  ( (V!14846 (val!5197 Int)) )
))
(declare-datatypes ((ValueCell!4809 0))(
  ( (ValueCellFull!4809 (v!7440 V!14845)) (EmptyCell!4809) )
))
(declare-datatypes ((array!24469 0))(
  ( (array!24470 (arr!11681 (Array (_ BitVec 32) ValueCell!4809)) (size!12033 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24469)

(declare-fun mapDefault!17079 () ValueCell!4809)

(assert (=> b!406277 (= condMapEmpty!17079 (= (arr!11681 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4809)) mapDefault!17079)))))

(declare-fun b!406278 () Bool)

(declare-fun res!234753 () Bool)

(assert (=> b!406278 (=> (not res!234753) (not e!244147))))

(assert (=> b!406278 (= res!234753 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12032 _keys!709))))))

(declare-fun b!406279 () Bool)

(declare-fun res!234756 () Bool)

(assert (=> b!406279 (=> (not res!234756) (not e!244147))))

(assert (=> b!406279 (= res!234756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406280 () Bool)

(declare-fun res!234754 () Bool)

(assert (=> b!406280 (=> (not res!234754) (not e!244147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406280 (= res!234754 (validKeyInArray!0 k0!794))))

(declare-fun b!406281 () Bool)

(declare-fun res!234757 () Bool)

(assert (=> b!406281 (=> (not res!234757) (not e!244147))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406281 (= res!234757 (and (= (size!12033 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12032 _keys!709) (size!12033 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17079 () Bool)

(declare-fun tp!33198 () Bool)

(assert (=> mapNonEmpty!17079 (= mapRes!17079 (and tp!33198 e!244146))))

(declare-fun mapRest!17079 () (Array (_ BitVec 32) ValueCell!4809))

(declare-fun mapValue!17079 () ValueCell!4809)

(declare-fun mapKey!17079 () (_ BitVec 32))

(assert (=> mapNonEmpty!17079 (= (arr!11681 _values!549) (store mapRest!17079 mapKey!17079 mapValue!17079))))

(declare-fun b!406282 () Bool)

(declare-fun res!234759 () Bool)

(assert (=> b!406282 (=> (not res!234759) (not e!244147))))

(declare-fun arrayContainsKey!0 (array!24467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406282 (= res!234759 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!406283 () Bool)

(declare-fun res!234762 () Bool)

(assert (=> b!406283 (=> (not res!234762) (not e!244147))))

(assert (=> b!406283 (= res!234762 (or (= (select (arr!11680 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11680 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!234760 () Bool)

(assert (=> start!38894 (=> (not res!234760) (not e!244147))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38894 (= res!234760 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12032 _keys!709))))))

(assert (=> start!38894 e!244147))

(assert (=> start!38894 true))

(declare-fun array_inv!8532 (array!24469) Bool)

(assert (=> start!38894 (and (array_inv!8532 _values!549) e!244145)))

(declare-fun array_inv!8533 (array!24467) Bool)

(assert (=> start!38894 (array_inv!8533 _keys!709)))

(declare-fun b!406276 () Bool)

(declare-fun res!234758 () Bool)

(assert (=> b!406276 (=> (not res!234758) (not e!244147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406276 (= res!234758 (validMask!0 mask!1025))))

(declare-fun b!406284 () Bool)

(assert (=> b!406284 (= e!244142 tp_is_empty!10305)))

(declare-fun mapIsEmpty!17079 () Bool)

(assert (=> mapIsEmpty!17079 mapRes!17079))

(declare-fun b!406285 () Bool)

(declare-fun res!234761 () Bool)

(assert (=> b!406285 (=> (not res!234761) (not e!244147))))

(declare-datatypes ((List!6761 0))(
  ( (Nil!6758) (Cons!6757 (h!7613 (_ BitVec 64)) (t!11943 List!6761)) )
))
(declare-fun arrayNoDuplicates!0 (array!24467 (_ BitVec 32) List!6761) Bool)

(assert (=> b!406285 (= res!234761 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6758))))

(declare-fun b!406286 () Bool)

(assert (=> b!406286 (= e!244143 false)))

(declare-fun lt!188456 () Bool)

(assert (=> b!406286 (= lt!188456 (arrayNoDuplicates!0 lt!188457 #b00000000000000000000000000000000 Nil!6758))))

(assert (= (and start!38894 res!234760) b!406276))

(assert (= (and b!406276 res!234758) b!406281))

(assert (= (and b!406281 res!234757) b!406279))

(assert (= (and b!406279 res!234756) b!406285))

(assert (= (and b!406285 res!234761) b!406278))

(assert (= (and b!406278 res!234753) b!406280))

(assert (= (and b!406280 res!234754) b!406283))

(assert (= (and b!406283 res!234762) b!406282))

(assert (= (and b!406282 res!234759) b!406275))

(assert (= (and b!406275 res!234755) b!406286))

(assert (= (and b!406277 condMapEmpty!17079) mapIsEmpty!17079))

(assert (= (and b!406277 (not condMapEmpty!17079)) mapNonEmpty!17079))

(get-info :version)

(assert (= (and mapNonEmpty!17079 ((_ is ValueCellFull!4809) mapValue!17079)) b!406274))

(assert (= (and b!406277 ((_ is ValueCellFull!4809) mapDefault!17079)) b!406284))

(assert (= start!38894 b!406277))

(declare-fun m!398373 () Bool)

(assert (=> b!406282 m!398373))

(declare-fun m!398375 () Bool)

(assert (=> b!406283 m!398375))

(declare-fun m!398377 () Bool)

(assert (=> start!38894 m!398377))

(declare-fun m!398379 () Bool)

(assert (=> start!38894 m!398379))

(declare-fun m!398381 () Bool)

(assert (=> b!406275 m!398381))

(declare-fun m!398383 () Bool)

(assert (=> b!406275 m!398383))

(declare-fun m!398385 () Bool)

(assert (=> mapNonEmpty!17079 m!398385))

(declare-fun m!398387 () Bool)

(assert (=> b!406276 m!398387))

(declare-fun m!398389 () Bool)

(assert (=> b!406285 m!398389))

(declare-fun m!398391 () Bool)

(assert (=> b!406279 m!398391))

(declare-fun m!398393 () Bool)

(assert (=> b!406280 m!398393))

(declare-fun m!398395 () Bool)

(assert (=> b!406286 m!398395))

(check-sat tp_is_empty!10305 (not start!38894) (not b!406275) (not b!406280) (not b!406285) (not b!406282) (not b!406286) (not b!406276) (not mapNonEmpty!17079) (not b!406279))
(check-sat)
