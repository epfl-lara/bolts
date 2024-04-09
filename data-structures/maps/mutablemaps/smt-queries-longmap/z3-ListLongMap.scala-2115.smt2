; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35868 () Bool)

(assert start!35868)

(declare-fun mapIsEmpty!13977 () Bool)

(declare-fun mapRes!13977 () Bool)

(assert (=> mapIsEmpty!13977 mapRes!13977))

(declare-fun b!360310 () Bool)

(declare-fun res!200468 () Bool)

(declare-fun e!220613 () Bool)

(assert (=> b!360310 (=> (not res!200468) (not e!220613))))

(declare-datatypes ((array!20147 0))(
  ( (array!20148 (arr!9564 (Array (_ BitVec 32) (_ BitVec 64))) (size!9916 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20147)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!360310 (= res!200468 (not (= (select (arr!9564 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!360311 () Bool)

(declare-fun e!220616 () Bool)

(declare-fun tp_is_empty!8313 () Bool)

(assert (=> b!360311 (= e!220616 tp_is_empty!8313)))

(declare-fun b!360312 () Bool)

(declare-fun res!200470 () Bool)

(assert (=> b!360312 (=> (not res!200470) (not e!220613))))

(assert (=> b!360312 (= res!200470 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9916 _keys!1456))))))

(declare-fun b!360314 () Bool)

(assert (=> b!360314 (= e!220613 (not true))))

(declare-fun arrayContainsKey!0 (array!20147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360314 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12061 0))(
  ( (V!12062 (val!4201 Int)) )
))
(declare-fun minValue!1150 () V!12061)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3813 0))(
  ( (ValueCellFull!3813 (v!6391 V!12061)) (EmptyCell!3813) )
))
(declare-datatypes ((array!20149 0))(
  ( (array!20150 (arr!9565 (Array (_ BitVec 32) ValueCell!3813)) (size!9917 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20149)

(declare-datatypes ((Unit!11083 0))(
  ( (Unit!11084) )
))
(declare-fun lt!166417 () Unit!11083)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12061)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!58 (array!20147 array!20149 (_ BitVec 32) (_ BitVec 32) V!12061 V!12061 (_ BitVec 64) (_ BitVec 32)) Unit!11083)

(assert (=> b!360314 (= lt!166417 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!58 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360315 () Bool)

(declare-fun res!200466 () Bool)

(assert (=> b!360315 (=> (not res!200466) (not e!220613))))

(assert (=> b!360315 (= res!200466 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!360316 () Bool)

(declare-fun res!200469 () Bool)

(assert (=> b!360316 (=> (not res!200469) (not e!220613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20147 (_ BitVec 32)) Bool)

(assert (=> b!360316 (= res!200469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360317 () Bool)

(declare-fun res!200463 () Bool)

(assert (=> b!360317 (=> (not res!200463) (not e!220613))))

(assert (=> b!360317 (= res!200463 (and (= (size!9917 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9916 _keys!1456) (size!9917 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360318 () Bool)

(declare-fun res!200467 () Bool)

(assert (=> b!360318 (=> (not res!200467) (not e!220613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360318 (= res!200467 (validKeyInArray!0 k0!1077))))

(declare-fun mapNonEmpty!13977 () Bool)

(declare-fun tp!28044 () Bool)

(assert (=> mapNonEmpty!13977 (= mapRes!13977 (and tp!28044 e!220616))))

(declare-fun mapKey!13977 () (_ BitVec 32))

(declare-fun mapValue!13977 () ValueCell!3813)

(declare-fun mapRest!13977 () (Array (_ BitVec 32) ValueCell!3813))

(assert (=> mapNonEmpty!13977 (= (arr!9565 _values!1208) (store mapRest!13977 mapKey!13977 mapValue!13977))))

(declare-fun b!360319 () Bool)

(declare-fun e!220614 () Bool)

(declare-fun e!220612 () Bool)

(assert (=> b!360319 (= e!220614 (and e!220612 mapRes!13977))))

(declare-fun condMapEmpty!13977 () Bool)

(declare-fun mapDefault!13977 () ValueCell!3813)

(assert (=> b!360319 (= condMapEmpty!13977 (= (arr!9565 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3813)) mapDefault!13977)))))

(declare-fun b!360320 () Bool)

(assert (=> b!360320 (= e!220612 tp_is_empty!8313)))

(declare-fun res!200465 () Bool)

(assert (=> start!35868 (=> (not res!200465) (not e!220613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35868 (= res!200465 (validMask!0 mask!1842))))

(assert (=> start!35868 e!220613))

(assert (=> start!35868 tp_is_empty!8313))

(assert (=> start!35868 true))

(declare-fun array_inv!7032 (array!20147) Bool)

(assert (=> start!35868 (array_inv!7032 _keys!1456)))

(declare-fun array_inv!7033 (array!20149) Bool)

(assert (=> start!35868 (and (array_inv!7033 _values!1208) e!220614)))

(declare-fun b!360313 () Bool)

(declare-fun res!200464 () Bool)

(assert (=> b!360313 (=> (not res!200464) (not e!220613))))

(declare-datatypes ((List!5518 0))(
  ( (Nil!5515) (Cons!5514 (h!6370 (_ BitVec 64)) (t!10676 List!5518)) )
))
(declare-fun arrayNoDuplicates!0 (array!20147 (_ BitVec 32) List!5518) Bool)

(assert (=> b!360313 (= res!200464 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5515))))

(assert (= (and start!35868 res!200465) b!360317))

(assert (= (and b!360317 res!200463) b!360316))

(assert (= (and b!360316 res!200469) b!360313))

(assert (= (and b!360313 res!200464) b!360318))

(assert (= (and b!360318 res!200467) b!360312))

(assert (= (and b!360312 res!200470) b!360315))

(assert (= (and b!360315 res!200466) b!360310))

(assert (= (and b!360310 res!200468) b!360314))

(assert (= (and b!360319 condMapEmpty!13977) mapIsEmpty!13977))

(assert (= (and b!360319 (not condMapEmpty!13977)) mapNonEmpty!13977))

(get-info :version)

(assert (= (and mapNonEmpty!13977 ((_ is ValueCellFull!3813) mapValue!13977)) b!360311))

(assert (= (and b!360319 ((_ is ValueCellFull!3813) mapDefault!13977)) b!360320))

(assert (= start!35868 b!360319))

(declare-fun m!357493 () Bool)

(assert (=> b!360316 m!357493))

(declare-fun m!357495 () Bool)

(assert (=> b!360315 m!357495))

(declare-fun m!357497 () Bool)

(assert (=> mapNonEmpty!13977 m!357497))

(declare-fun m!357499 () Bool)

(assert (=> start!35868 m!357499))

(declare-fun m!357501 () Bool)

(assert (=> start!35868 m!357501))

(declare-fun m!357503 () Bool)

(assert (=> start!35868 m!357503))

(declare-fun m!357505 () Bool)

(assert (=> b!360318 m!357505))

(declare-fun m!357507 () Bool)

(assert (=> b!360310 m!357507))

(declare-fun m!357509 () Bool)

(assert (=> b!360314 m!357509))

(declare-fun m!357511 () Bool)

(assert (=> b!360314 m!357511))

(declare-fun m!357513 () Bool)

(assert (=> b!360313 m!357513))

(check-sat (not mapNonEmpty!13977) (not b!360318) (not b!360315) (not b!360313) (not start!35868) (not b!360316) (not b!360314) tp_is_empty!8313)
(check-sat)
