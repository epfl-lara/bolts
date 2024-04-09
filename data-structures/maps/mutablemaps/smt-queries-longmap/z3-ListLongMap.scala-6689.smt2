; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84136 () Bool)

(assert start!84136)

(declare-fun mapIsEmpty!36395 () Bool)

(declare-fun mapRes!36395 () Bool)

(assert (=> mapIsEmpty!36395 mapRes!36395))

(declare-fun res!658121 () Bool)

(declare-fun e!554333 () Bool)

(assert (=> start!84136 (=> (not res!658121) (not e!554333))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84136 (= res!658121 (validMask!0 mask!1948))))

(assert (=> start!84136 e!554333))

(assert (=> start!84136 true))

(declare-datatypes ((V!35531 0))(
  ( (V!35532 (val!11506 Int)) )
))
(declare-datatypes ((ValueCell!10974 0))(
  ( (ValueCellFull!10974 (v!14068 V!35531)) (EmptyCell!10974) )
))
(declare-datatypes ((array!61795 0))(
  ( (array!61796 (arr!29751 (Array (_ BitVec 32) ValueCell!10974)) (size!30231 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61795)

(declare-fun e!554330 () Bool)

(declare-fun array_inv!22875 (array!61795) Bool)

(assert (=> start!84136 (and (array_inv!22875 _values!1278) e!554330)))

(declare-datatypes ((array!61797 0))(
  ( (array!61798 (arr!29752 (Array (_ BitVec 32) (_ BitVec 64))) (size!30232 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61797)

(declare-fun array_inv!22876 (array!61797) Bool)

(assert (=> start!84136 (array_inv!22876 _keys!1544)))

(declare-fun b!983314 () Bool)

(declare-fun res!658120 () Bool)

(assert (=> b!983314 (=> (not res!658120) (not e!554333))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983314 (= res!658120 (and (= (size!30231 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30232 _keys!1544) (size!30231 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983315 () Bool)

(declare-fun e!554329 () Bool)

(declare-fun tp_is_empty!22911 () Bool)

(assert (=> b!983315 (= e!554329 tp_is_empty!22911)))

(declare-fun b!983316 () Bool)

(declare-fun e!554331 () Bool)

(assert (=> b!983316 (= e!554330 (and e!554331 mapRes!36395))))

(declare-fun condMapEmpty!36395 () Bool)

(declare-fun mapDefault!36395 () ValueCell!10974)

(assert (=> b!983316 (= condMapEmpty!36395 (= (arr!29751 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10974)) mapDefault!36395)))))

(declare-fun b!983317 () Bool)

(assert (=> b!983317 (= e!554333 false)))

(declare-fun lt!436468 () Bool)

(declare-datatypes ((List!20742 0))(
  ( (Nil!20739) (Cons!20738 (h!21900 (_ BitVec 64)) (t!29541 List!20742)) )
))
(declare-fun arrayNoDuplicates!0 (array!61797 (_ BitVec 32) List!20742) Bool)

(assert (=> b!983317 (= lt!436468 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20739))))

(declare-fun mapNonEmpty!36395 () Bool)

(declare-fun tp!69080 () Bool)

(assert (=> mapNonEmpty!36395 (= mapRes!36395 (and tp!69080 e!554329))))

(declare-fun mapKey!36395 () (_ BitVec 32))

(declare-fun mapValue!36395 () ValueCell!10974)

(declare-fun mapRest!36395 () (Array (_ BitVec 32) ValueCell!10974))

(assert (=> mapNonEmpty!36395 (= (arr!29751 _values!1278) (store mapRest!36395 mapKey!36395 mapValue!36395))))

(declare-fun b!983318 () Bool)

(assert (=> b!983318 (= e!554331 tp_is_empty!22911)))

(declare-fun b!983319 () Bool)

(declare-fun res!658122 () Bool)

(assert (=> b!983319 (=> (not res!658122) (not e!554333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61797 (_ BitVec 32)) Bool)

(assert (=> b!983319 (= res!658122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84136 res!658121) b!983314))

(assert (= (and b!983314 res!658120) b!983319))

(assert (= (and b!983319 res!658122) b!983317))

(assert (= (and b!983316 condMapEmpty!36395) mapIsEmpty!36395))

(assert (= (and b!983316 (not condMapEmpty!36395)) mapNonEmpty!36395))

(get-info :version)

(assert (= (and mapNonEmpty!36395 ((_ is ValueCellFull!10974) mapValue!36395)) b!983315))

(assert (= (and b!983316 ((_ is ValueCellFull!10974) mapDefault!36395)) b!983318))

(assert (= start!84136 b!983316))

(declare-fun m!910685 () Bool)

(assert (=> start!84136 m!910685))

(declare-fun m!910687 () Bool)

(assert (=> start!84136 m!910687))

(declare-fun m!910689 () Bool)

(assert (=> start!84136 m!910689))

(declare-fun m!910691 () Bool)

(assert (=> b!983317 m!910691))

(declare-fun m!910693 () Bool)

(assert (=> mapNonEmpty!36395 m!910693))

(declare-fun m!910695 () Bool)

(assert (=> b!983319 m!910695))

(check-sat (not b!983317) (not mapNonEmpty!36395) (not start!84136) (not b!983319) tp_is_empty!22911)
(check-sat)
