; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84352 () Bool)

(assert start!84352)

(declare-fun b!986266 () Bool)

(declare-fun e!556115 () Bool)

(declare-fun tp_is_empty!23127 () Bool)

(assert (=> b!986266 (= e!556115 tp_is_empty!23127)))

(declare-fun b!986267 () Bool)

(declare-fun res!659994 () Bool)

(declare-fun e!556113 () Bool)

(assert (=> b!986267 (=> (not res!659994) (not e!556113))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35819 0))(
  ( (V!35820 (val!11614 Int)) )
))
(declare-datatypes ((ValueCell!11082 0))(
  ( (ValueCellFull!11082 (v!14176 V!35819)) (EmptyCell!11082) )
))
(declare-datatypes ((array!62205 0))(
  ( (array!62206 (arr!29956 (Array (_ BitVec 32) ValueCell!11082)) (size!30436 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62205)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62207 0))(
  ( (array!62208 (arr!29957 (Array (_ BitVec 32) (_ BitVec 64))) (size!30437 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62207)

(assert (=> b!986267 (= res!659994 (and (= (size!30436 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30437 _keys!1544) (size!30436 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986268 () Bool)

(assert (=> b!986268 (= e!556113 false)))

(declare-fun lt!437431 () Bool)

(declare-datatypes ((List!20854 0))(
  ( (Nil!20851) (Cons!20850 (h!22012 (_ BitVec 64)) (t!29761 List!20854)) )
))
(declare-fun arrayNoDuplicates!0 (array!62207 (_ BitVec 32) List!20854) Bool)

(assert (=> b!986268 (= lt!437431 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20851))))

(declare-fun b!986269 () Bool)

(declare-fun e!556112 () Bool)

(declare-fun e!556114 () Bool)

(declare-fun mapRes!36719 () Bool)

(assert (=> b!986269 (= e!556112 (and e!556114 mapRes!36719))))

(declare-fun condMapEmpty!36719 () Bool)

(declare-fun mapDefault!36719 () ValueCell!11082)

(assert (=> b!986269 (= condMapEmpty!36719 (= (arr!29956 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11082)) mapDefault!36719)))))

(declare-fun mapIsEmpty!36719 () Bool)

(assert (=> mapIsEmpty!36719 mapRes!36719))

(declare-fun res!659993 () Bool)

(assert (=> start!84352 (=> (not res!659993) (not e!556113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84352 (= res!659993 (validMask!0 mask!1948))))

(assert (=> start!84352 e!556113))

(assert (=> start!84352 true))

(declare-fun array_inv!23017 (array!62205) Bool)

(assert (=> start!84352 (and (array_inv!23017 _values!1278) e!556112)))

(declare-fun array_inv!23018 (array!62207) Bool)

(assert (=> start!84352 (array_inv!23018 _keys!1544)))

(declare-fun b!986270 () Bool)

(assert (=> b!986270 (= e!556114 tp_is_empty!23127)))

(declare-fun mapNonEmpty!36719 () Bool)

(declare-fun tp!69575 () Bool)

(assert (=> mapNonEmpty!36719 (= mapRes!36719 (and tp!69575 e!556115))))

(declare-fun mapRest!36719 () (Array (_ BitVec 32) ValueCell!11082))

(declare-fun mapValue!36719 () ValueCell!11082)

(declare-fun mapKey!36719 () (_ BitVec 32))

(assert (=> mapNonEmpty!36719 (= (arr!29956 _values!1278) (store mapRest!36719 mapKey!36719 mapValue!36719))))

(declare-fun b!986271 () Bool)

(declare-fun res!659992 () Bool)

(assert (=> b!986271 (=> (not res!659992) (not e!556113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62207 (_ BitVec 32)) Bool)

(assert (=> b!986271 (= res!659992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84352 res!659993) b!986267))

(assert (= (and b!986267 res!659994) b!986271))

(assert (= (and b!986271 res!659992) b!986268))

(assert (= (and b!986269 condMapEmpty!36719) mapIsEmpty!36719))

(assert (= (and b!986269 (not condMapEmpty!36719)) mapNonEmpty!36719))

(get-info :version)

(assert (= (and mapNonEmpty!36719 ((_ is ValueCellFull!11082) mapValue!36719)) b!986266))

(assert (= (and b!986269 ((_ is ValueCellFull!11082) mapDefault!36719)) b!986270))

(assert (= start!84352 b!986269))

(declare-fun m!913211 () Bool)

(assert (=> b!986268 m!913211))

(declare-fun m!913213 () Bool)

(assert (=> start!84352 m!913213))

(declare-fun m!913215 () Bool)

(assert (=> start!84352 m!913215))

(declare-fun m!913217 () Bool)

(assert (=> start!84352 m!913217))

(declare-fun m!913219 () Bool)

(assert (=> mapNonEmpty!36719 m!913219))

(declare-fun m!913221 () Bool)

(assert (=> b!986271 m!913221))

(check-sat (not b!986271) tp_is_empty!23127 (not b!986268) (not start!84352) (not mapNonEmpty!36719))
(check-sat)
