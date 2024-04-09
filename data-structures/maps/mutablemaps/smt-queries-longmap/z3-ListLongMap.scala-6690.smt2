; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84142 () Bool)

(assert start!84142)

(declare-fun b!983368 () Bool)

(declare-fun e!554374 () Bool)

(assert (=> b!983368 (= e!554374 false)))

(declare-fun lt!436477 () Bool)

(declare-datatypes ((array!61807 0))(
  ( (array!61808 (arr!29757 (Array (_ BitVec 32) (_ BitVec 64))) (size!30237 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61807)

(declare-datatypes ((List!20745 0))(
  ( (Nil!20742) (Cons!20741 (h!21903 (_ BitVec 64)) (t!29544 List!20745)) )
))
(declare-fun arrayNoDuplicates!0 (array!61807 (_ BitVec 32) List!20745) Bool)

(assert (=> b!983368 (= lt!436477 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20742))))

(declare-fun b!983369 () Bool)

(declare-fun res!658148 () Bool)

(assert (=> b!983369 (=> (not res!658148) (not e!554374))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61807 (_ BitVec 32)) Bool)

(assert (=> b!983369 (= res!658148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36404 () Bool)

(declare-fun mapRes!36404 () Bool)

(declare-fun tp!69089 () Bool)

(declare-fun e!554376 () Bool)

(assert (=> mapNonEmpty!36404 (= mapRes!36404 (and tp!69089 e!554376))))

(declare-datatypes ((V!35539 0))(
  ( (V!35540 (val!11509 Int)) )
))
(declare-datatypes ((ValueCell!10977 0))(
  ( (ValueCellFull!10977 (v!14071 V!35539)) (EmptyCell!10977) )
))
(declare-datatypes ((array!61809 0))(
  ( (array!61810 (arr!29758 (Array (_ BitVec 32) ValueCell!10977)) (size!30238 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61809)

(declare-fun mapRest!36404 () (Array (_ BitVec 32) ValueCell!10977))

(declare-fun mapValue!36404 () ValueCell!10977)

(declare-fun mapKey!36404 () (_ BitVec 32))

(assert (=> mapNonEmpty!36404 (= (arr!29758 _values!1278) (store mapRest!36404 mapKey!36404 mapValue!36404))))

(declare-fun b!983370 () Bool)

(declare-fun tp_is_empty!22917 () Bool)

(assert (=> b!983370 (= e!554376 tp_is_empty!22917)))

(declare-fun b!983371 () Bool)

(declare-fun e!554375 () Bool)

(assert (=> b!983371 (= e!554375 tp_is_empty!22917)))

(declare-fun b!983372 () Bool)

(declare-fun e!554377 () Bool)

(assert (=> b!983372 (= e!554377 (and e!554375 mapRes!36404))))

(declare-fun condMapEmpty!36404 () Bool)

(declare-fun mapDefault!36404 () ValueCell!10977)

(assert (=> b!983372 (= condMapEmpty!36404 (= (arr!29758 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10977)) mapDefault!36404)))))

(declare-fun b!983373 () Bool)

(declare-fun res!658149 () Bool)

(assert (=> b!983373 (=> (not res!658149) (not e!554374))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983373 (= res!658149 (and (= (size!30238 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30237 _keys!1544) (size!30238 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36404 () Bool)

(assert (=> mapIsEmpty!36404 mapRes!36404))

(declare-fun res!658147 () Bool)

(assert (=> start!84142 (=> (not res!658147) (not e!554374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84142 (= res!658147 (validMask!0 mask!1948))))

(assert (=> start!84142 e!554374))

(assert (=> start!84142 true))

(declare-fun array_inv!22877 (array!61809) Bool)

(assert (=> start!84142 (and (array_inv!22877 _values!1278) e!554377)))

(declare-fun array_inv!22878 (array!61807) Bool)

(assert (=> start!84142 (array_inv!22878 _keys!1544)))

(assert (= (and start!84142 res!658147) b!983373))

(assert (= (and b!983373 res!658149) b!983369))

(assert (= (and b!983369 res!658148) b!983368))

(assert (= (and b!983372 condMapEmpty!36404) mapIsEmpty!36404))

(assert (= (and b!983372 (not condMapEmpty!36404)) mapNonEmpty!36404))

(get-info :version)

(assert (= (and mapNonEmpty!36404 ((_ is ValueCellFull!10977) mapValue!36404)) b!983370))

(assert (= (and b!983372 ((_ is ValueCellFull!10977) mapDefault!36404)) b!983371))

(assert (= start!84142 b!983372))

(declare-fun m!910721 () Bool)

(assert (=> b!983368 m!910721))

(declare-fun m!910723 () Bool)

(assert (=> b!983369 m!910723))

(declare-fun m!910725 () Bool)

(assert (=> mapNonEmpty!36404 m!910725))

(declare-fun m!910727 () Bool)

(assert (=> start!84142 m!910727))

(declare-fun m!910729 () Bool)

(assert (=> start!84142 m!910729))

(declare-fun m!910731 () Bool)

(assert (=> start!84142 m!910731))

(check-sat (not start!84142) (not mapNonEmpty!36404) (not b!983369) (not b!983368) tp_is_empty!22917)
(check-sat)
