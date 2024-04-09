; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97678 () Bool)

(assert start!97678)

(declare-fun mapNonEmpty!43627 () Bool)

(declare-fun mapRes!43627 () Bool)

(declare-fun tp!82872 () Bool)

(declare-fun e!635802 () Bool)

(assert (=> mapNonEmpty!43627 (= mapRes!43627 (and tp!82872 e!635802))))

(declare-datatypes ((V!42291 0))(
  ( (V!42292 (val!13993 Int)) )
))
(declare-datatypes ((ValueCell!13227 0))(
  ( (ValueCellFull!13227 (v!16627 V!42291)) (EmptyCell!13227) )
))
(declare-fun mapRest!43627 () (Array (_ BitVec 32) ValueCell!13227))

(declare-fun mapKey!43627 () (_ BitVec 32))

(declare-fun mapValue!43627 () ValueCell!13227)

(declare-datatypes ((array!72586 0))(
  ( (array!72587 (arr!34942 (Array (_ BitVec 32) ValueCell!13227)) (size!35479 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72586)

(assert (=> mapNonEmpty!43627 (= (arr!34942 _values!996) (store mapRest!43627 mapKey!43627 mapValue!43627))))

(declare-fun b!1115731 () Bool)

(declare-fun tp_is_empty!27873 () Bool)

(assert (=> b!1115731 (= e!635802 tp_is_empty!27873)))

(declare-fun b!1115732 () Bool)

(declare-fun res!744976 () Bool)

(declare-fun e!635804 () Bool)

(assert (=> b!1115732 (=> (not res!744976) (not e!635804))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72588 0))(
  ( (array!72589 (arr!34943 (Array (_ BitVec 32) (_ BitVec 64))) (size!35480 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72588)

(assert (=> b!1115732 (= res!744976 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35480 _keys!1208))))))

(declare-fun res!744979 () Bool)

(assert (=> start!97678 (=> (not res!744979) (not e!635804))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97678 (= res!744979 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35480 _keys!1208))))))

(assert (=> start!97678 e!635804))

(declare-fun array_inv!26716 (array!72588) Bool)

(assert (=> start!97678 (array_inv!26716 _keys!1208)))

(assert (=> start!97678 true))

(declare-fun e!635803 () Bool)

(declare-fun array_inv!26717 (array!72586) Bool)

(assert (=> start!97678 (and (array_inv!26717 _values!996) e!635803)))

(declare-fun b!1115733 () Bool)

(declare-fun res!744981 () Bool)

(assert (=> b!1115733 (=> (not res!744981) (not e!635804))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1115733 (= res!744981 (= (select (arr!34943 _keys!1208) i!673) k0!934))))

(declare-fun b!1115734 () Bool)

(declare-fun res!744972 () Bool)

(assert (=> b!1115734 (=> (not res!744972) (not e!635804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115734 (= res!744972 (validKeyInArray!0 k0!934))))

(declare-fun b!1115735 () Bool)

(declare-fun res!744980 () Bool)

(declare-fun e!635805 () Bool)

(assert (=> b!1115735 (=> (not res!744980) (not e!635805))))

(declare-fun lt!497006 () array!72588)

(declare-datatypes ((List!24460 0))(
  ( (Nil!24457) (Cons!24456 (h!25665 (_ BitVec 64)) (t!34948 List!24460)) )
))
(declare-fun arrayNoDuplicates!0 (array!72588 (_ BitVec 32) List!24460) Bool)

(assert (=> b!1115735 (= res!744980 (arrayNoDuplicates!0 lt!497006 #b00000000000000000000000000000000 Nil!24457))))

(declare-fun b!1115736 () Bool)

(assert (=> b!1115736 (= e!635804 e!635805)))

(declare-fun res!744977 () Bool)

(assert (=> b!1115736 (=> (not res!744977) (not e!635805))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72588 (_ BitVec 32)) Bool)

(assert (=> b!1115736 (= res!744977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497006 mask!1564))))

(assert (=> b!1115736 (= lt!497006 (array!72589 (store (arr!34943 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35480 _keys!1208)))))

(declare-fun b!1115737 () Bool)

(declare-fun e!635806 () Bool)

(assert (=> b!1115737 (= e!635803 (and e!635806 mapRes!43627))))

(declare-fun condMapEmpty!43627 () Bool)

(declare-fun mapDefault!43627 () ValueCell!13227)

(assert (=> b!1115737 (= condMapEmpty!43627 (= (arr!34942 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13227)) mapDefault!43627)))))

(declare-fun b!1115738 () Bool)

(assert (=> b!1115738 (= e!635806 tp_is_empty!27873)))

(declare-fun mapIsEmpty!43627 () Bool)

(assert (=> mapIsEmpty!43627 mapRes!43627))

(declare-fun b!1115739 () Bool)

(declare-fun res!744974 () Bool)

(assert (=> b!1115739 (=> (not res!744974) (not e!635804))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115739 (= res!744974 (and (= (size!35479 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35480 _keys!1208) (size!35479 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115740 () Bool)

(declare-fun res!744973 () Bool)

(assert (=> b!1115740 (=> (not res!744973) (not e!635804))))

(assert (=> b!1115740 (= res!744973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115741 () Bool)

(declare-fun res!744975 () Bool)

(assert (=> b!1115741 (=> (not res!744975) (not e!635804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115741 (= res!744975 (validMask!0 mask!1564))))

(declare-fun b!1115742 () Bool)

(declare-fun res!744978 () Bool)

(assert (=> b!1115742 (=> (not res!744978) (not e!635804))))

(assert (=> b!1115742 (= res!744978 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24457))))

(declare-fun b!1115743 () Bool)

(assert (=> b!1115743 (= e!635805 (not true))))

(declare-fun arrayContainsKey!0 (array!72588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115743 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36515 0))(
  ( (Unit!36516) )
))
(declare-fun lt!497007 () Unit!36515)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72588 (_ BitVec 64) (_ BitVec 32)) Unit!36515)

(assert (=> b!1115743 (= lt!497007 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97678 res!744979) b!1115741))

(assert (= (and b!1115741 res!744975) b!1115739))

(assert (= (and b!1115739 res!744974) b!1115740))

(assert (= (and b!1115740 res!744973) b!1115742))

(assert (= (and b!1115742 res!744978) b!1115732))

(assert (= (and b!1115732 res!744976) b!1115734))

(assert (= (and b!1115734 res!744972) b!1115733))

(assert (= (and b!1115733 res!744981) b!1115736))

(assert (= (and b!1115736 res!744977) b!1115735))

(assert (= (and b!1115735 res!744980) b!1115743))

(assert (= (and b!1115737 condMapEmpty!43627) mapIsEmpty!43627))

(assert (= (and b!1115737 (not condMapEmpty!43627)) mapNonEmpty!43627))

(get-info :version)

(assert (= (and mapNonEmpty!43627 ((_ is ValueCellFull!13227) mapValue!43627)) b!1115731))

(assert (= (and b!1115737 ((_ is ValueCellFull!13227) mapDefault!43627)) b!1115738))

(assert (= start!97678 b!1115737))

(declare-fun m!1032279 () Bool)

(assert (=> b!1115740 m!1032279))

(declare-fun m!1032281 () Bool)

(assert (=> b!1115733 m!1032281))

(declare-fun m!1032283 () Bool)

(assert (=> b!1115735 m!1032283))

(declare-fun m!1032285 () Bool)

(assert (=> start!97678 m!1032285))

(declare-fun m!1032287 () Bool)

(assert (=> start!97678 m!1032287))

(declare-fun m!1032289 () Bool)

(assert (=> b!1115736 m!1032289))

(declare-fun m!1032291 () Bool)

(assert (=> b!1115736 m!1032291))

(declare-fun m!1032293 () Bool)

(assert (=> b!1115743 m!1032293))

(declare-fun m!1032295 () Bool)

(assert (=> b!1115743 m!1032295))

(declare-fun m!1032297 () Bool)

(assert (=> b!1115742 m!1032297))

(declare-fun m!1032299 () Bool)

(assert (=> mapNonEmpty!43627 m!1032299))

(declare-fun m!1032301 () Bool)

(assert (=> b!1115741 m!1032301))

(declare-fun m!1032303 () Bool)

(assert (=> b!1115734 m!1032303))

(check-sat (not b!1115741) tp_is_empty!27873 (not start!97678) (not mapNonEmpty!43627) (not b!1115735) (not b!1115742) (not b!1115743) (not b!1115740) (not b!1115736) (not b!1115734))
(check-sat)
