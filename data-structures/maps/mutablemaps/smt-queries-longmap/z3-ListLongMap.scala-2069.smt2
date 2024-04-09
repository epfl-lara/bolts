; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35592 () Bool)

(assert start!35592)

(declare-fun b!356620 () Bool)

(declare-fun e!218462 () Bool)

(assert (=> b!356620 (= e!218462 (not true))))

(declare-datatypes ((array!19611 0))(
  ( (array!19612 (arr!9296 (Array (_ BitVec 32) (_ BitVec 64))) (size!9648 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19611)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356620 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11693 0))(
  ( (V!11694 (val!4063 Int)) )
))
(declare-fun minValue!1150 () V!11693)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!10987 0))(
  ( (Unit!10988) )
))
(declare-fun lt!165931 () Unit!10987)

(declare-datatypes ((ValueCell!3675 0))(
  ( (ValueCellFull!3675 (v!6253 V!11693)) (EmptyCell!3675) )
))
(declare-datatypes ((array!19613 0))(
  ( (array!19614 (arr!9297 (Array (_ BitVec 32) ValueCell!3675)) (size!9649 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19613)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11693)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!14 (array!19611 array!19613 (_ BitVec 32) (_ BitVec 32) V!11693 V!11693 (_ BitVec 64) (_ BitVec 32)) Unit!10987)

(assert (=> b!356620 (= lt!165931 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!14 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356621 () Bool)

(declare-fun res!198015 () Bool)

(assert (=> b!356621 (=> (not res!198015) (not e!218462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19611 (_ BitVec 32)) Bool)

(assert (=> b!356621 (= res!198015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356622 () Bool)

(declare-fun res!198020 () Bool)

(assert (=> b!356622 (=> (not res!198020) (not e!218462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356622 (= res!198020 (validKeyInArray!0 k0!1077))))

(declare-fun b!356623 () Bool)

(declare-fun res!198018 () Bool)

(assert (=> b!356623 (=> (not res!198018) (not e!218462))))

(assert (=> b!356623 (= res!198018 (and (= (size!9649 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9648 _keys!1456) (size!9649 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13563 () Bool)

(declare-fun mapRes!13563 () Bool)

(assert (=> mapIsEmpty!13563 mapRes!13563))

(declare-fun b!356624 () Bool)

(declare-fun e!218461 () Bool)

(declare-fun tp_is_empty!8037 () Bool)

(assert (=> b!356624 (= e!218461 tp_is_empty!8037)))

(declare-fun b!356625 () Bool)

(declare-fun res!198019 () Bool)

(assert (=> b!356625 (=> (not res!198019) (not e!218462))))

(assert (=> b!356625 (= res!198019 (not (= (select (arr!9296 _keys!1456) from!1805) k0!1077)))))

(declare-fun mapNonEmpty!13563 () Bool)

(declare-fun tp!27540 () Bool)

(assert (=> mapNonEmpty!13563 (= mapRes!13563 (and tp!27540 e!218461))))

(declare-fun mapValue!13563 () ValueCell!3675)

(declare-fun mapKey!13563 () (_ BitVec 32))

(declare-fun mapRest!13563 () (Array (_ BitVec 32) ValueCell!3675))

(assert (=> mapNonEmpty!13563 (= (arr!9297 _values!1208) (store mapRest!13563 mapKey!13563 mapValue!13563))))

(declare-fun res!198017 () Bool)

(assert (=> start!35592 (=> (not res!198017) (not e!218462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35592 (= res!198017 (validMask!0 mask!1842))))

(assert (=> start!35592 e!218462))

(assert (=> start!35592 tp_is_empty!8037))

(assert (=> start!35592 true))

(declare-fun array_inv!6846 (array!19611) Bool)

(assert (=> start!35592 (array_inv!6846 _keys!1456)))

(declare-fun e!218465 () Bool)

(declare-fun array_inv!6847 (array!19613) Bool)

(assert (=> start!35592 (and (array_inv!6847 _values!1208) e!218465)))

(declare-fun b!356626 () Bool)

(declare-fun res!198021 () Bool)

(assert (=> b!356626 (=> (not res!198021) (not e!218462))))

(declare-datatypes ((List!5399 0))(
  ( (Nil!5396) (Cons!5395 (h!6251 (_ BitVec 64)) (t!10557 List!5399)) )
))
(declare-fun arrayNoDuplicates!0 (array!19611 (_ BitVec 32) List!5399) Bool)

(assert (=> b!356626 (= res!198021 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5396))))

(declare-fun b!356627 () Bool)

(declare-fun res!198016 () Bool)

(assert (=> b!356627 (=> (not res!198016) (not e!218462))))

(assert (=> b!356627 (= res!198016 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9648 _keys!1456))))))

(declare-fun b!356628 () Bool)

(declare-fun e!218464 () Bool)

(assert (=> b!356628 (= e!218465 (and e!218464 mapRes!13563))))

(declare-fun condMapEmpty!13563 () Bool)

(declare-fun mapDefault!13563 () ValueCell!3675)

(assert (=> b!356628 (= condMapEmpty!13563 (= (arr!9297 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3675)) mapDefault!13563)))))

(declare-fun b!356629 () Bool)

(declare-fun res!198022 () Bool)

(assert (=> b!356629 (=> (not res!198022) (not e!218462))))

(assert (=> b!356629 (= res!198022 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356630 () Bool)

(assert (=> b!356630 (= e!218464 tp_is_empty!8037)))

(assert (= (and start!35592 res!198017) b!356623))

(assert (= (and b!356623 res!198018) b!356621))

(assert (= (and b!356621 res!198015) b!356626))

(assert (= (and b!356626 res!198021) b!356622))

(assert (= (and b!356622 res!198020) b!356627))

(assert (= (and b!356627 res!198016) b!356629))

(assert (= (and b!356629 res!198022) b!356625))

(assert (= (and b!356625 res!198019) b!356620))

(assert (= (and b!356628 condMapEmpty!13563) mapIsEmpty!13563))

(assert (= (and b!356628 (not condMapEmpty!13563)) mapNonEmpty!13563))

(get-info :version)

(assert (= (and mapNonEmpty!13563 ((_ is ValueCellFull!3675) mapValue!13563)) b!356624))

(assert (= (and b!356628 ((_ is ValueCellFull!3675) mapDefault!13563)) b!356630))

(assert (= start!35592 b!356628))

(declare-fun m!354931 () Bool)

(assert (=> mapNonEmpty!13563 m!354931))

(declare-fun m!354933 () Bool)

(assert (=> b!356620 m!354933))

(declare-fun m!354935 () Bool)

(assert (=> b!356620 m!354935))

(declare-fun m!354937 () Bool)

(assert (=> b!356629 m!354937))

(declare-fun m!354939 () Bool)

(assert (=> start!35592 m!354939))

(declare-fun m!354941 () Bool)

(assert (=> start!35592 m!354941))

(declare-fun m!354943 () Bool)

(assert (=> start!35592 m!354943))

(declare-fun m!354945 () Bool)

(assert (=> b!356625 m!354945))

(declare-fun m!354947 () Bool)

(assert (=> b!356622 m!354947))

(declare-fun m!354949 () Bool)

(assert (=> b!356626 m!354949))

(declare-fun m!354951 () Bool)

(assert (=> b!356621 m!354951))

(check-sat (not b!356626) (not b!356620) (not start!35592) (not mapNonEmpty!13563) (not b!356622) (not b!356629) tp_is_empty!8037 (not b!356621))
(check-sat)
