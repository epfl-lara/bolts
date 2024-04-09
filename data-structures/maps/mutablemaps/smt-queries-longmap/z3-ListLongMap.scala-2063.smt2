; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35556 () Bool)

(assert start!35556)

(declare-fun b!356026 () Bool)

(declare-fun res!197589 () Bool)

(declare-fun e!218195 () Bool)

(assert (=> b!356026 (=> (not res!197589) (not e!218195))))

(declare-datatypes ((array!19545 0))(
  ( (array!19546 (arr!9263 (Array (_ BitVec 32) (_ BitVec 64))) (size!9615 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19545)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!356026 (= res!197589 (not (= (select (arr!9263 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356027 () Bool)

(assert (=> b!356027 (= e!218195 (not true))))

(declare-fun arrayContainsKey!0 (array!19545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356027 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11645 0))(
  ( (V!11646 (val!4045 Int)) )
))
(declare-fun minValue!1150 () V!11645)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!10963 0))(
  ( (Unit!10964) )
))
(declare-fun lt!165877 () Unit!10963)

(declare-datatypes ((ValueCell!3657 0))(
  ( (ValueCellFull!3657 (v!6235 V!11645)) (EmptyCell!3657) )
))
(declare-datatypes ((array!19547 0))(
  ( (array!19548 (arr!9264 (Array (_ BitVec 32) ValueCell!3657)) (size!9616 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19547)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11645)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!2 (array!19545 array!19547 (_ BitVec 32) (_ BitVec 32) V!11645 V!11645 (_ BitVec 64) (_ BitVec 32)) Unit!10963)

(assert (=> b!356027 (= lt!165877 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!2 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356028 () Bool)

(declare-fun e!218192 () Bool)

(declare-fun tp_is_empty!8001 () Bool)

(assert (=> b!356028 (= e!218192 tp_is_empty!8001)))

(declare-fun res!197588 () Bool)

(assert (=> start!35556 (=> (not res!197588) (not e!218195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35556 (= res!197588 (validMask!0 mask!1842))))

(assert (=> start!35556 e!218195))

(assert (=> start!35556 tp_is_empty!8001))

(assert (=> start!35556 true))

(declare-fun array_inv!6820 (array!19545) Bool)

(assert (=> start!35556 (array_inv!6820 _keys!1456)))

(declare-fun e!218193 () Bool)

(declare-fun array_inv!6821 (array!19547) Bool)

(assert (=> start!35556 (and (array_inv!6821 _values!1208) e!218193)))

(declare-fun b!356029 () Bool)

(declare-fun res!197587 () Bool)

(assert (=> b!356029 (=> (not res!197587) (not e!218195))))

(assert (=> b!356029 (= res!197587 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356030 () Bool)

(declare-fun e!218191 () Bool)

(assert (=> b!356030 (= e!218191 tp_is_empty!8001)))

(declare-fun mapNonEmpty!13509 () Bool)

(declare-fun mapRes!13509 () Bool)

(declare-fun tp!27486 () Bool)

(assert (=> mapNonEmpty!13509 (= mapRes!13509 (and tp!27486 e!218191))))

(declare-fun mapRest!13509 () (Array (_ BitVec 32) ValueCell!3657))

(declare-fun mapKey!13509 () (_ BitVec 32))

(declare-fun mapValue!13509 () ValueCell!3657)

(assert (=> mapNonEmpty!13509 (= (arr!9264 _values!1208) (store mapRest!13509 mapKey!13509 mapValue!13509))))

(declare-fun b!356031 () Bool)

(declare-fun res!197590 () Bool)

(assert (=> b!356031 (=> (not res!197590) (not e!218195))))

(assert (=> b!356031 (= res!197590 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9615 _keys!1456))))))

(declare-fun b!356032 () Bool)

(declare-fun res!197583 () Bool)

(assert (=> b!356032 (=> (not res!197583) (not e!218195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19545 (_ BitVec 32)) Bool)

(assert (=> b!356032 (= res!197583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356033 () Bool)

(declare-fun res!197585 () Bool)

(assert (=> b!356033 (=> (not res!197585) (not e!218195))))

(declare-datatypes ((List!5386 0))(
  ( (Nil!5383) (Cons!5382 (h!6238 (_ BitVec 64)) (t!10544 List!5386)) )
))
(declare-fun arrayNoDuplicates!0 (array!19545 (_ BitVec 32) List!5386) Bool)

(assert (=> b!356033 (= res!197585 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5383))))

(declare-fun b!356034 () Bool)

(declare-fun res!197586 () Bool)

(assert (=> b!356034 (=> (not res!197586) (not e!218195))))

(assert (=> b!356034 (= res!197586 (and (= (size!9616 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9615 _keys!1456) (size!9616 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356035 () Bool)

(assert (=> b!356035 (= e!218193 (and e!218192 mapRes!13509))))

(declare-fun condMapEmpty!13509 () Bool)

(declare-fun mapDefault!13509 () ValueCell!3657)

(assert (=> b!356035 (= condMapEmpty!13509 (= (arr!9264 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3657)) mapDefault!13509)))))

(declare-fun mapIsEmpty!13509 () Bool)

(assert (=> mapIsEmpty!13509 mapRes!13509))

(declare-fun b!356036 () Bool)

(declare-fun res!197584 () Bool)

(assert (=> b!356036 (=> (not res!197584) (not e!218195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356036 (= res!197584 (validKeyInArray!0 k0!1077))))

(assert (= (and start!35556 res!197588) b!356034))

(assert (= (and b!356034 res!197586) b!356032))

(assert (= (and b!356032 res!197583) b!356033))

(assert (= (and b!356033 res!197585) b!356036))

(assert (= (and b!356036 res!197584) b!356031))

(assert (= (and b!356031 res!197590) b!356029))

(assert (= (and b!356029 res!197587) b!356026))

(assert (= (and b!356026 res!197589) b!356027))

(assert (= (and b!356035 condMapEmpty!13509) mapIsEmpty!13509))

(assert (= (and b!356035 (not condMapEmpty!13509)) mapNonEmpty!13509))

(get-info :version)

(assert (= (and mapNonEmpty!13509 ((_ is ValueCellFull!3657) mapValue!13509)) b!356030))

(assert (= (and b!356035 ((_ is ValueCellFull!3657) mapDefault!13509)) b!356028))

(assert (= start!35556 b!356035))

(declare-fun m!354535 () Bool)

(assert (=> mapNonEmpty!13509 m!354535))

(declare-fun m!354537 () Bool)

(assert (=> b!356033 m!354537))

(declare-fun m!354539 () Bool)

(assert (=> b!356032 m!354539))

(declare-fun m!354541 () Bool)

(assert (=> b!356027 m!354541))

(declare-fun m!354543 () Bool)

(assert (=> b!356027 m!354543))

(declare-fun m!354545 () Bool)

(assert (=> start!35556 m!354545))

(declare-fun m!354547 () Bool)

(assert (=> start!35556 m!354547))

(declare-fun m!354549 () Bool)

(assert (=> start!35556 m!354549))

(declare-fun m!354551 () Bool)

(assert (=> b!356036 m!354551))

(declare-fun m!354553 () Bool)

(assert (=> b!356029 m!354553))

(declare-fun m!354555 () Bool)

(assert (=> b!356026 m!354555))

(check-sat (not b!356033) (not mapNonEmpty!13509) (not b!356036) tp_is_empty!8001 (not b!356032) (not b!356027) (not b!356029) (not start!35556))
(check-sat)
