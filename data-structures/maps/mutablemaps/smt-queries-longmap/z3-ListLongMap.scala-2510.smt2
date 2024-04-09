; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38888 () Bool)

(assert start!38888)

(declare-fun res!234666 () Bool)

(declare-fun e!244092 () Bool)

(assert (=> start!38888 (=> (not res!234666) (not e!244092))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24455 0))(
  ( (array!24456 (arr!11674 (Array (_ BitVec 32) (_ BitVec 64))) (size!12026 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24455)

(assert (=> start!38888 (= res!234666 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12026 _keys!709))))))

(assert (=> start!38888 e!244092))

(assert (=> start!38888 true))

(declare-datatypes ((V!14837 0))(
  ( (V!14838 (val!5194 Int)) )
))
(declare-datatypes ((ValueCell!4806 0))(
  ( (ValueCellFull!4806 (v!7437 V!14837)) (EmptyCell!4806) )
))
(declare-datatypes ((array!24457 0))(
  ( (array!24458 (arr!11675 (Array (_ BitVec 32) ValueCell!4806)) (size!12027 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24457)

(declare-fun e!244089 () Bool)

(declare-fun array_inv!8528 (array!24457) Bool)

(assert (=> start!38888 (and (array_inv!8528 _values!549) e!244089)))

(declare-fun array_inv!8529 (array!24455) Bool)

(assert (=> start!38888 (array_inv!8529 _keys!709)))

(declare-fun b!406157 () Bool)

(declare-fun res!234665 () Bool)

(assert (=> b!406157 (=> (not res!234665) (not e!244092))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406157 (= res!234665 (and (= (size!12027 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12026 _keys!709) (size!12027 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406158 () Bool)

(declare-fun res!234669 () Bool)

(assert (=> b!406158 (=> (not res!234669) (not e!244092))))

(declare-datatypes ((List!6760 0))(
  ( (Nil!6757) (Cons!6756 (h!7612 (_ BitVec 64)) (t!11942 List!6760)) )
))
(declare-fun arrayNoDuplicates!0 (array!24455 (_ BitVec 32) List!6760) Bool)

(assert (=> b!406158 (= res!234669 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6757))))

(declare-fun b!406159 () Bool)

(declare-fun e!244090 () Bool)

(declare-fun mapRes!17070 () Bool)

(assert (=> b!406159 (= e!244089 (and e!244090 mapRes!17070))))

(declare-fun condMapEmpty!17070 () Bool)

(declare-fun mapDefault!17070 () ValueCell!4806)

(assert (=> b!406159 (= condMapEmpty!17070 (= (arr!11675 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4806)) mapDefault!17070)))))

(declare-fun b!406160 () Bool)

(declare-fun res!234664 () Bool)

(assert (=> b!406160 (=> (not res!234664) (not e!244092))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406160 (= res!234664 (or (= (select (arr!11674 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11674 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17070 () Bool)

(declare-fun tp!33189 () Bool)

(declare-fun e!244088 () Bool)

(assert (=> mapNonEmpty!17070 (= mapRes!17070 (and tp!33189 e!244088))))

(declare-fun mapValue!17070 () ValueCell!4806)

(declare-fun mapKey!17070 () (_ BitVec 32))

(declare-fun mapRest!17070 () (Array (_ BitVec 32) ValueCell!4806))

(assert (=> mapNonEmpty!17070 (= (arr!11675 _values!549) (store mapRest!17070 mapKey!17070 mapValue!17070))))

(declare-fun b!406161 () Bool)

(declare-fun res!234672 () Bool)

(assert (=> b!406161 (=> (not res!234672) (not e!244092))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406161 (= res!234672 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17070 () Bool)

(assert (=> mapIsEmpty!17070 mapRes!17070))

(declare-fun b!406162 () Bool)

(declare-fun tp_is_empty!10299 () Bool)

(assert (=> b!406162 (= e!244088 tp_is_empty!10299)))

(declare-fun b!406163 () Bool)

(declare-fun res!234663 () Bool)

(assert (=> b!406163 (=> (not res!234663) (not e!244092))))

(assert (=> b!406163 (= res!234663 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12026 _keys!709))))))

(declare-fun b!406164 () Bool)

(assert (=> b!406164 (= e!244090 tp_is_empty!10299)))

(declare-fun b!406165 () Bool)

(declare-fun e!244093 () Bool)

(assert (=> b!406165 (= e!244093 false)))

(declare-fun lt!188438 () Bool)

(declare-fun lt!188439 () array!24455)

(assert (=> b!406165 (= lt!188438 (arrayNoDuplicates!0 lt!188439 #b00000000000000000000000000000000 Nil!6757))))

(declare-fun b!406166 () Bool)

(declare-fun res!234671 () Bool)

(assert (=> b!406166 (=> (not res!234671) (not e!244092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406166 (= res!234671 (validMask!0 mask!1025))))

(declare-fun b!406167 () Bool)

(assert (=> b!406167 (= e!244092 e!244093)))

(declare-fun res!234670 () Bool)

(assert (=> b!406167 (=> (not res!234670) (not e!244093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24455 (_ BitVec 32)) Bool)

(assert (=> b!406167 (= res!234670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188439 mask!1025))))

(assert (=> b!406167 (= lt!188439 (array!24456 (store (arr!11674 _keys!709) i!563 k0!794) (size!12026 _keys!709)))))

(declare-fun b!406168 () Bool)

(declare-fun res!234668 () Bool)

(assert (=> b!406168 (=> (not res!234668) (not e!244092))))

(assert (=> b!406168 (= res!234668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406169 () Bool)

(declare-fun res!234667 () Bool)

(assert (=> b!406169 (=> (not res!234667) (not e!244092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406169 (= res!234667 (validKeyInArray!0 k0!794))))

(assert (= (and start!38888 res!234666) b!406166))

(assert (= (and b!406166 res!234671) b!406157))

(assert (= (and b!406157 res!234665) b!406168))

(assert (= (and b!406168 res!234668) b!406158))

(assert (= (and b!406158 res!234669) b!406163))

(assert (= (and b!406163 res!234663) b!406169))

(assert (= (and b!406169 res!234667) b!406160))

(assert (= (and b!406160 res!234664) b!406161))

(assert (= (and b!406161 res!234672) b!406167))

(assert (= (and b!406167 res!234670) b!406165))

(assert (= (and b!406159 condMapEmpty!17070) mapIsEmpty!17070))

(assert (= (and b!406159 (not condMapEmpty!17070)) mapNonEmpty!17070))

(get-info :version)

(assert (= (and mapNonEmpty!17070 ((_ is ValueCellFull!4806) mapValue!17070)) b!406162))

(assert (= (and b!406159 ((_ is ValueCellFull!4806) mapDefault!17070)) b!406164))

(assert (= start!38888 b!406159))

(declare-fun m!398301 () Bool)

(assert (=> mapNonEmpty!17070 m!398301))

(declare-fun m!398303 () Bool)

(assert (=> start!38888 m!398303))

(declare-fun m!398305 () Bool)

(assert (=> start!38888 m!398305))

(declare-fun m!398307 () Bool)

(assert (=> b!406168 m!398307))

(declare-fun m!398309 () Bool)

(assert (=> b!406167 m!398309))

(declare-fun m!398311 () Bool)

(assert (=> b!406167 m!398311))

(declare-fun m!398313 () Bool)

(assert (=> b!406165 m!398313))

(declare-fun m!398315 () Bool)

(assert (=> b!406158 m!398315))

(declare-fun m!398317 () Bool)

(assert (=> b!406160 m!398317))

(declare-fun m!398319 () Bool)

(assert (=> b!406161 m!398319))

(declare-fun m!398321 () Bool)

(assert (=> b!406166 m!398321))

(declare-fun m!398323 () Bool)

(assert (=> b!406169 m!398323))

(check-sat (not b!406165) (not b!406158) (not start!38888) (not mapNonEmpty!17070) tp_is_empty!10299 (not b!406167) (not b!406161) (not b!406166) (not b!406168) (not b!406169))
(check-sat)
