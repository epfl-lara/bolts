; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84394 () Bool)

(assert start!84394)

(declare-fun b!986671 () Bool)

(declare-fun res!660208 () Bool)

(declare-fun e!556430 () Bool)

(assert (=> b!986671 (=> (not res!660208) (not e!556430))))

(declare-datatypes ((array!62285 0))(
  ( (array!62286 (arr!29996 (Array (_ BitVec 32) (_ BitVec 64))) (size!30476 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62285)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62285 (_ BitVec 32)) Bool)

(assert (=> b!986671 (= res!660208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986673 () Bool)

(declare-fun e!556426 () Bool)

(declare-fun tp_is_empty!23169 () Bool)

(assert (=> b!986673 (= e!556426 tp_is_empty!23169)))

(declare-fun mapIsEmpty!36782 () Bool)

(declare-fun mapRes!36782 () Bool)

(assert (=> mapIsEmpty!36782 mapRes!36782))

(declare-fun b!986674 () Bool)

(declare-fun e!556428 () Bool)

(assert (=> b!986674 (= e!556428 tp_is_empty!23169)))

(declare-fun b!986675 () Bool)

(declare-fun e!556429 () Bool)

(assert (=> b!986675 (= e!556429 (and e!556428 mapRes!36782))))

(declare-fun condMapEmpty!36782 () Bool)

(declare-datatypes ((V!35875 0))(
  ( (V!35876 (val!11635 Int)) )
))
(declare-datatypes ((ValueCell!11103 0))(
  ( (ValueCellFull!11103 (v!14197 V!35875)) (EmptyCell!11103) )
))
(declare-datatypes ((array!62287 0))(
  ( (array!62288 (arr!29997 (Array (_ BitVec 32) ValueCell!11103)) (size!30477 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62287)

(declare-fun mapDefault!36782 () ValueCell!11103)

(assert (=> b!986675 (= condMapEmpty!36782 (= (arr!29997 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11103)) mapDefault!36782)))))

(declare-fun mapNonEmpty!36782 () Bool)

(declare-fun tp!69638 () Bool)

(assert (=> mapNonEmpty!36782 (= mapRes!36782 (and tp!69638 e!556426))))

(declare-fun mapValue!36782 () ValueCell!11103)

(declare-fun mapKey!36782 () (_ BitVec 32))

(declare-fun mapRest!36782 () (Array (_ BitVec 32) ValueCell!11103))

(assert (=> mapNonEmpty!36782 (= (arr!29997 _values!1278) (store mapRest!36782 mapKey!36782 mapValue!36782))))

(declare-fun b!986676 () Bool)

(assert (=> b!986676 (= e!556430 false)))

(declare-fun lt!437494 () Bool)

(declare-datatypes ((List!20868 0))(
  ( (Nil!20865) (Cons!20864 (h!22026 (_ BitVec 64)) (t!29775 List!20868)) )
))
(declare-fun arrayNoDuplicates!0 (array!62285 (_ BitVec 32) List!20868) Bool)

(assert (=> b!986676 (= lt!437494 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20865))))

(declare-fun b!986672 () Bool)

(declare-fun res!660210 () Bool)

(assert (=> b!986672 (=> (not res!660210) (not e!556430))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986672 (= res!660210 (and (= (size!30477 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30476 _keys!1544) (size!30477 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!660209 () Bool)

(assert (=> start!84394 (=> (not res!660209) (not e!556430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84394 (= res!660209 (validMask!0 mask!1948))))

(assert (=> start!84394 e!556430))

(assert (=> start!84394 true))

(declare-fun array_inv!23043 (array!62287) Bool)

(assert (=> start!84394 (and (array_inv!23043 _values!1278) e!556429)))

(declare-fun array_inv!23044 (array!62285) Bool)

(assert (=> start!84394 (array_inv!23044 _keys!1544)))

(assert (= (and start!84394 res!660209) b!986672))

(assert (= (and b!986672 res!660210) b!986671))

(assert (= (and b!986671 res!660208) b!986676))

(assert (= (and b!986675 condMapEmpty!36782) mapIsEmpty!36782))

(assert (= (and b!986675 (not condMapEmpty!36782)) mapNonEmpty!36782))

(get-info :version)

(assert (= (and mapNonEmpty!36782 ((_ is ValueCellFull!11103) mapValue!36782)) b!986673))

(assert (= (and b!986675 ((_ is ValueCellFull!11103) mapDefault!36782)) b!986674))

(assert (= start!84394 b!986675))

(declare-fun m!913475 () Bool)

(assert (=> b!986671 m!913475))

(declare-fun m!913477 () Bool)

(assert (=> mapNonEmpty!36782 m!913477))

(declare-fun m!913479 () Bool)

(assert (=> b!986676 m!913479))

(declare-fun m!913481 () Bool)

(assert (=> start!84394 m!913481))

(declare-fun m!913483 () Bool)

(assert (=> start!84394 m!913483))

(declare-fun m!913485 () Bool)

(assert (=> start!84394 m!913485))

(check-sat (not b!986676) tp_is_empty!23169 (not mapNonEmpty!36782) (not start!84394) (not b!986671))
(check-sat)
