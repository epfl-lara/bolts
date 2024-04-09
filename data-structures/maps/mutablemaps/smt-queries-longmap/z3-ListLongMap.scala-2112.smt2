; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35850 () Bool)

(assert start!35850)

(declare-fun res!200253 () Bool)

(declare-fun e!220477 () Bool)

(assert (=> start!35850 (=> (not res!200253) (not e!220477))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35850 (= res!200253 (validMask!0 mask!1842))))

(assert (=> start!35850 e!220477))

(declare-fun tp_is_empty!8295 () Bool)

(assert (=> start!35850 tp_is_empty!8295))

(assert (=> start!35850 true))

(declare-datatypes ((array!20111 0))(
  ( (array!20112 (arr!9546 (Array (_ BitVec 32) (_ BitVec 64))) (size!9898 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20111)

(declare-fun array_inv!7022 (array!20111) Bool)

(assert (=> start!35850 (array_inv!7022 _keys!1456)))

(declare-datatypes ((V!12037 0))(
  ( (V!12038 (val!4192 Int)) )
))
(declare-datatypes ((ValueCell!3804 0))(
  ( (ValueCellFull!3804 (v!6382 V!12037)) (EmptyCell!3804) )
))
(declare-datatypes ((array!20113 0))(
  ( (array!20114 (arr!9547 (Array (_ BitVec 32) ValueCell!3804)) (size!9899 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20113)

(declare-fun e!220478 () Bool)

(declare-fun array_inv!7023 (array!20113) Bool)

(assert (=> start!35850 (and (array_inv!7023 _values!1208) e!220478)))

(declare-fun b!360013 () Bool)

(declare-fun res!200247 () Bool)

(assert (=> b!360013 (=> (not res!200247) (not e!220477))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360013 (= res!200247 (validKeyInArray!0 k0!1077))))

(declare-fun b!360014 () Bool)

(declare-fun e!220481 () Bool)

(assert (=> b!360014 (= e!220481 tp_is_empty!8295)))

(declare-fun b!360015 () Bool)

(declare-fun res!200248 () Bool)

(assert (=> b!360015 (=> (not res!200248) (not e!220477))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360015 (= res!200248 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!360016 () Bool)

(declare-fun res!200250 () Bool)

(assert (=> b!360016 (=> (not res!200250) (not e!220477))))

(declare-datatypes ((List!5511 0))(
  ( (Nil!5508) (Cons!5507 (h!6363 (_ BitVec 64)) (t!10669 List!5511)) )
))
(declare-fun arrayNoDuplicates!0 (array!20111 (_ BitVec 32) List!5511) Bool)

(assert (=> b!360016 (= res!200250 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5508))))

(declare-fun b!360017 () Bool)

(assert (=> b!360017 (= e!220477 (not true))))

(assert (=> b!360017 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12037)

(declare-fun minValue!1150 () V!12037)

(declare-datatypes ((Unit!11067 0))(
  ( (Unit!11068) )
))
(declare-fun lt!166390 () Unit!11067)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!50 (array!20111 array!20113 (_ BitVec 32) (_ BitVec 32) V!12037 V!12037 (_ BitVec 64) (_ BitVec 32)) Unit!11067)

(assert (=> b!360017 (= lt!166390 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!50 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360018 () Bool)

(declare-fun res!200254 () Bool)

(assert (=> b!360018 (=> (not res!200254) (not e!220477))))

(assert (=> b!360018 (= res!200254 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9898 _keys!1456))))))

(declare-fun b!360019 () Bool)

(declare-fun mapRes!13950 () Bool)

(assert (=> b!360019 (= e!220478 (and e!220481 mapRes!13950))))

(declare-fun condMapEmpty!13950 () Bool)

(declare-fun mapDefault!13950 () ValueCell!3804)

(assert (=> b!360019 (= condMapEmpty!13950 (= (arr!9547 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3804)) mapDefault!13950)))))

(declare-fun b!360020 () Bool)

(declare-fun e!220479 () Bool)

(assert (=> b!360020 (= e!220479 tp_is_empty!8295)))

(declare-fun b!360021 () Bool)

(declare-fun res!200251 () Bool)

(assert (=> b!360021 (=> (not res!200251) (not e!220477))))

(assert (=> b!360021 (= res!200251 (and (= (size!9899 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9898 _keys!1456) (size!9899 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360022 () Bool)

(declare-fun res!200249 () Bool)

(assert (=> b!360022 (=> (not res!200249) (not e!220477))))

(assert (=> b!360022 (= res!200249 (not (= (select (arr!9546 _keys!1456) from!1805) k0!1077)))))

(declare-fun mapIsEmpty!13950 () Bool)

(assert (=> mapIsEmpty!13950 mapRes!13950))

(declare-fun b!360023 () Bool)

(declare-fun res!200252 () Bool)

(assert (=> b!360023 (=> (not res!200252) (not e!220477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20111 (_ BitVec 32)) Bool)

(assert (=> b!360023 (= res!200252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13950 () Bool)

(declare-fun tp!28017 () Bool)

(assert (=> mapNonEmpty!13950 (= mapRes!13950 (and tp!28017 e!220479))))

(declare-fun mapValue!13950 () ValueCell!3804)

(declare-fun mapRest!13950 () (Array (_ BitVec 32) ValueCell!3804))

(declare-fun mapKey!13950 () (_ BitVec 32))

(assert (=> mapNonEmpty!13950 (= (arr!9547 _values!1208) (store mapRest!13950 mapKey!13950 mapValue!13950))))

(assert (= (and start!35850 res!200253) b!360021))

(assert (= (and b!360021 res!200251) b!360023))

(assert (= (and b!360023 res!200252) b!360016))

(assert (= (and b!360016 res!200250) b!360013))

(assert (= (and b!360013 res!200247) b!360018))

(assert (= (and b!360018 res!200254) b!360015))

(assert (= (and b!360015 res!200248) b!360022))

(assert (= (and b!360022 res!200249) b!360017))

(assert (= (and b!360019 condMapEmpty!13950) mapIsEmpty!13950))

(assert (= (and b!360019 (not condMapEmpty!13950)) mapNonEmpty!13950))

(get-info :version)

(assert (= (and mapNonEmpty!13950 ((_ is ValueCellFull!3804) mapValue!13950)) b!360020))

(assert (= (and b!360019 ((_ is ValueCellFull!3804) mapDefault!13950)) b!360014))

(assert (= start!35850 b!360019))

(declare-fun m!357295 () Bool)

(assert (=> b!360013 m!357295))

(declare-fun m!357297 () Bool)

(assert (=> start!35850 m!357297))

(declare-fun m!357299 () Bool)

(assert (=> start!35850 m!357299))

(declare-fun m!357301 () Bool)

(assert (=> start!35850 m!357301))

(declare-fun m!357303 () Bool)

(assert (=> b!360017 m!357303))

(declare-fun m!357305 () Bool)

(assert (=> b!360017 m!357305))

(declare-fun m!357307 () Bool)

(assert (=> b!360016 m!357307))

(declare-fun m!357309 () Bool)

(assert (=> mapNonEmpty!13950 m!357309))

(declare-fun m!357311 () Bool)

(assert (=> b!360015 m!357311))

(declare-fun m!357313 () Bool)

(assert (=> b!360023 m!357313))

(declare-fun m!357315 () Bool)

(assert (=> b!360022 m!357315))

(check-sat tp_is_empty!8295 (not b!360013) (not mapNonEmpty!13950) (not b!360017) (not b!360023) (not start!35850) (not b!360016) (not b!360015))
(check-sat)
