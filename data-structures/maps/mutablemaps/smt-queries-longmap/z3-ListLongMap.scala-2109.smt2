; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35832 () Bool)

(assert start!35832)

(declare-fun b!359716 () Bool)

(declare-fun res!200032 () Bool)

(declare-fun e!220342 () Bool)

(assert (=> b!359716 (=> (not res!200032) (not e!220342))))

(declare-datatypes ((array!20075 0))(
  ( (array!20076 (arr!9528 (Array (_ BitVec 32) (_ BitVec 64))) (size!9880 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20075)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!359716 (= res!200032 (not (= (select (arr!9528 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!359717 () Bool)

(declare-fun res!200034 () Bool)

(assert (=> b!359717 (=> (not res!200034) (not e!220342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359717 (= res!200034 (validKeyInArray!0 k0!1077))))

(declare-fun b!359718 () Bool)

(declare-fun res!200036 () Bool)

(assert (=> b!359718 (=> (not res!200036) (not e!220342))))

(declare-datatypes ((List!5505 0))(
  ( (Nil!5502) (Cons!5501 (h!6357 (_ BitVec 64)) (t!10663 List!5505)) )
))
(declare-fun arrayNoDuplicates!0 (array!20075 (_ BitVec 32) List!5505) Bool)

(assert (=> b!359718 (= res!200036 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5502))))

(declare-fun b!359719 () Bool)

(declare-fun e!220343 () Bool)

(declare-fun e!220344 () Bool)

(declare-fun mapRes!13923 () Bool)

(assert (=> b!359719 (= e!220343 (and e!220344 mapRes!13923))))

(declare-fun condMapEmpty!13923 () Bool)

(declare-datatypes ((V!12013 0))(
  ( (V!12014 (val!4183 Int)) )
))
(declare-datatypes ((ValueCell!3795 0))(
  ( (ValueCellFull!3795 (v!6373 V!12013)) (EmptyCell!3795) )
))
(declare-datatypes ((array!20077 0))(
  ( (array!20078 (arr!9529 (Array (_ BitVec 32) ValueCell!3795)) (size!9881 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20077)

(declare-fun mapDefault!13923 () ValueCell!3795)

(assert (=> b!359719 (= condMapEmpty!13923 (= (arr!9529 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3795)) mapDefault!13923)))))

(declare-fun b!359720 () Bool)

(declare-fun tp_is_empty!8277 () Bool)

(assert (=> b!359720 (= e!220344 tp_is_empty!8277)))

(declare-fun b!359721 () Bool)

(declare-fun res!200038 () Bool)

(assert (=> b!359721 (=> (not res!200038) (not e!220342))))

(declare-fun arrayContainsKey!0 (array!20075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359721 (= res!200038 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!359722 () Bool)

(declare-fun res!200033 () Bool)

(assert (=> b!359722 (=> (not res!200033) (not e!220342))))

(assert (=> b!359722 (= res!200033 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9880 _keys!1456))))))

(declare-fun b!359723 () Bool)

(declare-fun e!220346 () Bool)

(assert (=> b!359723 (= e!220346 tp_is_empty!8277)))

(declare-fun b!359724 () Bool)

(declare-fun res!200037 () Bool)

(assert (=> b!359724 (=> (not res!200037) (not e!220342))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!359724 (= res!200037 (and (= (size!9881 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9880 _keys!1456) (size!9881 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13923 () Bool)

(declare-fun tp!27990 () Bool)

(assert (=> mapNonEmpty!13923 (= mapRes!13923 (and tp!27990 e!220346))))

(declare-fun mapRest!13923 () (Array (_ BitVec 32) ValueCell!3795))

(declare-fun mapKey!13923 () (_ BitVec 32))

(declare-fun mapValue!13923 () ValueCell!3795)

(assert (=> mapNonEmpty!13923 (= (arr!9529 _values!1208) (store mapRest!13923 mapKey!13923 mapValue!13923))))

(declare-fun res!200035 () Bool)

(assert (=> start!35832 (=> (not res!200035) (not e!220342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35832 (= res!200035 (validMask!0 mask!1842))))

(assert (=> start!35832 e!220342))

(assert (=> start!35832 tp_is_empty!8277))

(assert (=> start!35832 true))

(declare-fun array_inv!7016 (array!20075) Bool)

(assert (=> start!35832 (array_inv!7016 _keys!1456)))

(declare-fun array_inv!7017 (array!20077) Bool)

(assert (=> start!35832 (and (array_inv!7017 _values!1208) e!220343)))

(declare-fun b!359725 () Bool)

(declare-fun res!200031 () Bool)

(assert (=> b!359725 (=> (not res!200031) (not e!220342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20075 (_ BitVec 32)) Bool)

(assert (=> b!359725 (= res!200031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359726 () Bool)

(assert (=> b!359726 (= e!220342 (not true))))

(assert (=> b!359726 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11059 0))(
  ( (Unit!11060) )
))
(declare-fun lt!166363 () Unit!11059)

(declare-fun minValue!1150 () V!12013)

(declare-fun zeroValue!1150 () V!12013)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!46 (array!20075 array!20077 (_ BitVec 32) (_ BitVec 32) V!12013 V!12013 (_ BitVec 64) (_ BitVec 32)) Unit!11059)

(assert (=> b!359726 (= lt!166363 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!46 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13923 () Bool)

(assert (=> mapIsEmpty!13923 mapRes!13923))

(assert (= (and start!35832 res!200035) b!359724))

(assert (= (and b!359724 res!200037) b!359725))

(assert (= (and b!359725 res!200031) b!359718))

(assert (= (and b!359718 res!200036) b!359717))

(assert (= (and b!359717 res!200034) b!359722))

(assert (= (and b!359722 res!200033) b!359721))

(assert (= (and b!359721 res!200038) b!359716))

(assert (= (and b!359716 res!200032) b!359726))

(assert (= (and b!359719 condMapEmpty!13923) mapIsEmpty!13923))

(assert (= (and b!359719 (not condMapEmpty!13923)) mapNonEmpty!13923))

(get-info :version)

(assert (= (and mapNonEmpty!13923 ((_ is ValueCellFull!3795) mapValue!13923)) b!359723))

(assert (= (and b!359719 ((_ is ValueCellFull!3795) mapDefault!13923)) b!359720))

(assert (= start!35832 b!359719))

(declare-fun m!357097 () Bool)

(assert (=> start!35832 m!357097))

(declare-fun m!357099 () Bool)

(assert (=> start!35832 m!357099))

(declare-fun m!357101 () Bool)

(assert (=> start!35832 m!357101))

(declare-fun m!357103 () Bool)

(assert (=> b!359718 m!357103))

(declare-fun m!357105 () Bool)

(assert (=> mapNonEmpty!13923 m!357105))

(declare-fun m!357107 () Bool)

(assert (=> b!359717 m!357107))

(declare-fun m!357109 () Bool)

(assert (=> b!359725 m!357109))

(declare-fun m!357111 () Bool)

(assert (=> b!359716 m!357111))

(declare-fun m!357113 () Bool)

(assert (=> b!359721 m!357113))

(declare-fun m!357115 () Bool)

(assert (=> b!359726 m!357115))

(declare-fun m!357117 () Bool)

(assert (=> b!359726 m!357117))

(check-sat (not b!359721) (not b!359717) (not start!35832) (not b!359726) (not b!359718) tp_is_empty!8277 (not b!359725) (not mapNonEmpty!13923))
(check-sat)
