; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35616 () Bool)

(assert start!35616)

(declare-fun b!357016 () Bool)

(declare-fun e!218642 () Bool)

(declare-fun tp_is_empty!8061 () Bool)

(assert (=> b!357016 (= e!218642 tp_is_empty!8061)))

(declare-fun mapIsEmpty!13599 () Bool)

(declare-fun mapRes!13599 () Bool)

(assert (=> mapIsEmpty!13599 mapRes!13599))

(declare-fun mapNonEmpty!13599 () Bool)

(declare-fun tp!27576 () Bool)

(assert (=> mapNonEmpty!13599 (= mapRes!13599 (and tp!27576 e!218642))))

(declare-fun mapKey!13599 () (_ BitVec 32))

(declare-datatypes ((V!11725 0))(
  ( (V!11726 (val!4075 Int)) )
))
(declare-datatypes ((ValueCell!3687 0))(
  ( (ValueCellFull!3687 (v!6265 V!11725)) (EmptyCell!3687) )
))
(declare-fun mapRest!13599 () (Array (_ BitVec 32) ValueCell!3687))

(declare-fun mapValue!13599 () ValueCell!3687)

(declare-datatypes ((array!19657 0))(
  ( (array!19658 (arr!9319 (Array (_ BitVec 32) ValueCell!3687)) (size!9671 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19657)

(assert (=> mapNonEmpty!13599 (= (arr!9319 _values!1208) (store mapRest!13599 mapKey!13599 mapValue!13599))))

(declare-fun b!357017 () Bool)

(declare-fun res!198303 () Bool)

(declare-fun e!218645 () Bool)

(assert (=> b!357017 (=> (not res!198303) (not e!218645))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357017 (= res!198303 (validKeyInArray!0 k0!1077))))

(declare-fun b!357018 () Bool)

(declare-fun res!198310 () Bool)

(assert (=> b!357018 (=> (not res!198310) (not e!218645))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19659 0))(
  ( (array!19660 (arr!9320 (Array (_ BitVec 32) (_ BitVec 64))) (size!9672 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19659)

(assert (=> b!357018 (= res!198310 (and (= (size!9671 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9672 _keys!1456) (size!9671 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!198304 () Bool)

(assert (=> start!35616 (=> (not res!198304) (not e!218645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35616 (= res!198304 (validMask!0 mask!1842))))

(assert (=> start!35616 e!218645))

(assert (=> start!35616 tp_is_empty!8061))

(assert (=> start!35616 true))

(declare-fun array_inv!6858 (array!19659) Bool)

(assert (=> start!35616 (array_inv!6858 _keys!1456)))

(declare-fun e!218644 () Bool)

(declare-fun array_inv!6859 (array!19657) Bool)

(assert (=> start!35616 (and (array_inv!6859 _values!1208) e!218644)))

(declare-fun b!357019 () Bool)

(declare-fun e!218643 () Bool)

(assert (=> b!357019 (= e!218643 tp_is_empty!8061)))

(declare-fun b!357020 () Bool)

(declare-fun res!198306 () Bool)

(assert (=> b!357020 (=> (not res!198306) (not e!218645))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357020 (= res!198306 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357021 () Bool)

(declare-fun res!198309 () Bool)

(assert (=> b!357021 (=> (not res!198309) (not e!218645))))

(declare-datatypes ((List!5407 0))(
  ( (Nil!5404) (Cons!5403 (h!6259 (_ BitVec 64)) (t!10565 List!5407)) )
))
(declare-fun arrayNoDuplicates!0 (array!19659 (_ BitVec 32) List!5407) Bool)

(assert (=> b!357021 (= res!198309 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5404))))

(declare-fun b!357022 () Bool)

(declare-fun res!198307 () Bool)

(assert (=> b!357022 (=> (not res!198307) (not e!218645))))

(assert (=> b!357022 (= res!198307 (not (= (select (arr!9320 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357023 () Bool)

(declare-fun res!198308 () Bool)

(assert (=> b!357023 (=> (not res!198308) (not e!218645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19659 (_ BitVec 32)) Bool)

(assert (=> b!357023 (= res!198308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357024 () Bool)

(assert (=> b!357024 (= e!218645 (not true))))

(assert (=> b!357024 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11001 0))(
  ( (Unit!11002) )
))
(declare-fun lt!165967 () Unit!11001)

(declare-fun minValue!1150 () V!11725)

(declare-fun zeroValue!1150 () V!11725)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!21 (array!19659 array!19657 (_ BitVec 32) (_ BitVec 32) V!11725 V!11725 (_ BitVec 64) (_ BitVec 32)) Unit!11001)

(assert (=> b!357024 (= lt!165967 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!21 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357025 () Bool)

(declare-fun res!198305 () Bool)

(assert (=> b!357025 (=> (not res!198305) (not e!218645))))

(assert (=> b!357025 (= res!198305 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9672 _keys!1456))))))

(declare-fun b!357026 () Bool)

(assert (=> b!357026 (= e!218644 (and e!218643 mapRes!13599))))

(declare-fun condMapEmpty!13599 () Bool)

(declare-fun mapDefault!13599 () ValueCell!3687)

(assert (=> b!357026 (= condMapEmpty!13599 (= (arr!9319 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3687)) mapDefault!13599)))))

(assert (= (and start!35616 res!198304) b!357018))

(assert (= (and b!357018 res!198310) b!357023))

(assert (= (and b!357023 res!198308) b!357021))

(assert (= (and b!357021 res!198309) b!357017))

(assert (= (and b!357017 res!198303) b!357025))

(assert (= (and b!357025 res!198305) b!357020))

(assert (= (and b!357020 res!198306) b!357022))

(assert (= (and b!357022 res!198307) b!357024))

(assert (= (and b!357026 condMapEmpty!13599) mapIsEmpty!13599))

(assert (= (and b!357026 (not condMapEmpty!13599)) mapNonEmpty!13599))

(get-info :version)

(assert (= (and mapNonEmpty!13599 ((_ is ValueCellFull!3687) mapValue!13599)) b!357016))

(assert (= (and b!357026 ((_ is ValueCellFull!3687) mapDefault!13599)) b!357019))

(assert (= start!35616 b!357026))

(declare-fun m!355195 () Bool)

(assert (=> b!357022 m!355195))

(declare-fun m!355197 () Bool)

(assert (=> b!357023 m!355197))

(declare-fun m!355199 () Bool)

(assert (=> start!35616 m!355199))

(declare-fun m!355201 () Bool)

(assert (=> start!35616 m!355201))

(declare-fun m!355203 () Bool)

(assert (=> start!35616 m!355203))

(declare-fun m!355205 () Bool)

(assert (=> b!357020 m!355205))

(declare-fun m!355207 () Bool)

(assert (=> b!357017 m!355207))

(declare-fun m!355209 () Bool)

(assert (=> b!357024 m!355209))

(declare-fun m!355211 () Bool)

(assert (=> b!357024 m!355211))

(declare-fun m!355213 () Bool)

(assert (=> b!357021 m!355213))

(declare-fun m!355215 () Bool)

(assert (=> mapNonEmpty!13599 m!355215))

(check-sat (not b!357023) (not b!357021) (not mapNonEmpty!13599) (not b!357024) tp_is_empty!8061 (not start!35616) (not b!357017) (not b!357020))
(check-sat)
