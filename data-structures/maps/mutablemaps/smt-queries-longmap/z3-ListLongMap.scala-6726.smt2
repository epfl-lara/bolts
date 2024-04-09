; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84358 () Bool)

(assert start!84358)

(declare-fun b!986320 () Bool)

(declare-fun e!556156 () Bool)

(declare-fun tp_is_empty!23133 () Bool)

(assert (=> b!986320 (= e!556156 tp_is_empty!23133)))

(declare-fun b!986321 () Bool)

(declare-fun e!556159 () Bool)

(assert (=> b!986321 (= e!556159 tp_is_empty!23133)))

(declare-fun b!986322 () Bool)

(declare-fun res!660019 () Bool)

(declare-fun e!556160 () Bool)

(assert (=> b!986322 (=> (not res!660019) (not e!556160))))

(declare-datatypes ((array!62217 0))(
  ( (array!62218 (arr!29962 (Array (_ BitVec 32) (_ BitVec 64))) (size!30442 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62217)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62217 (_ BitVec 32)) Bool)

(assert (=> b!986322 (= res!660019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!660020 () Bool)

(assert (=> start!84358 (=> (not res!660020) (not e!556160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84358 (= res!660020 (validMask!0 mask!1948))))

(assert (=> start!84358 e!556160))

(assert (=> start!84358 true))

(declare-datatypes ((V!35827 0))(
  ( (V!35828 (val!11617 Int)) )
))
(declare-datatypes ((ValueCell!11085 0))(
  ( (ValueCellFull!11085 (v!14179 V!35827)) (EmptyCell!11085) )
))
(declare-datatypes ((array!62219 0))(
  ( (array!62220 (arr!29963 (Array (_ BitVec 32) ValueCell!11085)) (size!30443 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62219)

(declare-fun e!556158 () Bool)

(declare-fun array_inv!23021 (array!62219) Bool)

(assert (=> start!84358 (and (array_inv!23021 _values!1278) e!556158)))

(declare-fun array_inv!23022 (array!62217) Bool)

(assert (=> start!84358 (array_inv!23022 _keys!1544)))

(declare-fun b!986323 () Bool)

(assert (=> b!986323 (= e!556160 false)))

(declare-fun lt!437440 () Bool)

(declare-datatypes ((List!20856 0))(
  ( (Nil!20853) (Cons!20852 (h!22014 (_ BitVec 64)) (t!29763 List!20856)) )
))
(declare-fun arrayNoDuplicates!0 (array!62217 (_ BitVec 32) List!20856) Bool)

(assert (=> b!986323 (= lt!437440 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20853))))

(declare-fun b!986324 () Bool)

(declare-fun res!660021 () Bool)

(assert (=> b!986324 (=> (not res!660021) (not e!556160))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986324 (= res!660021 (and (= (size!30443 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30442 _keys!1544) (size!30443 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36728 () Bool)

(declare-fun mapRes!36728 () Bool)

(assert (=> mapIsEmpty!36728 mapRes!36728))

(declare-fun mapNonEmpty!36728 () Bool)

(declare-fun tp!69584 () Bool)

(assert (=> mapNonEmpty!36728 (= mapRes!36728 (and tp!69584 e!556159))))

(declare-fun mapKey!36728 () (_ BitVec 32))

(declare-fun mapRest!36728 () (Array (_ BitVec 32) ValueCell!11085))

(declare-fun mapValue!36728 () ValueCell!11085)

(assert (=> mapNonEmpty!36728 (= (arr!29963 _values!1278) (store mapRest!36728 mapKey!36728 mapValue!36728))))

(declare-fun b!986325 () Bool)

(assert (=> b!986325 (= e!556158 (and e!556156 mapRes!36728))))

(declare-fun condMapEmpty!36728 () Bool)

(declare-fun mapDefault!36728 () ValueCell!11085)

(assert (=> b!986325 (= condMapEmpty!36728 (= (arr!29963 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11085)) mapDefault!36728)))))

(assert (= (and start!84358 res!660020) b!986324))

(assert (= (and b!986324 res!660021) b!986322))

(assert (= (and b!986322 res!660019) b!986323))

(assert (= (and b!986325 condMapEmpty!36728) mapIsEmpty!36728))

(assert (= (and b!986325 (not condMapEmpty!36728)) mapNonEmpty!36728))

(get-info :version)

(assert (= (and mapNonEmpty!36728 ((_ is ValueCellFull!11085) mapValue!36728)) b!986321))

(assert (= (and b!986325 ((_ is ValueCellFull!11085) mapDefault!36728)) b!986320))

(assert (= start!84358 b!986325))

(declare-fun m!913247 () Bool)

(assert (=> b!986322 m!913247))

(declare-fun m!913249 () Bool)

(assert (=> start!84358 m!913249))

(declare-fun m!913251 () Bool)

(assert (=> start!84358 m!913251))

(declare-fun m!913253 () Bool)

(assert (=> start!84358 m!913253))

(declare-fun m!913255 () Bool)

(assert (=> b!986323 m!913255))

(declare-fun m!913257 () Bool)

(assert (=> mapNonEmpty!36728 m!913257))

(check-sat (not mapNonEmpty!36728) (not b!986323) tp_is_empty!23133 (not b!986322) (not start!84358))
(check-sat)
