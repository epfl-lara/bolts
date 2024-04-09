; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20582 () Bool)

(assert start!20582)

(declare-fun b_free!5229 () Bool)

(declare-fun b_next!5229 () Bool)

(assert (=> start!20582 (= b_free!5229 (not b_next!5229))))

(declare-fun tp!18719 () Bool)

(declare-fun b_and!11993 () Bool)

(assert (=> start!20582 (= tp!18719 b_and!11993)))

(declare-fun mapIsEmpty!8696 () Bool)

(declare-fun mapRes!8696 () Bool)

(assert (=> mapIsEmpty!8696 mapRes!8696))

(declare-fun mapNonEmpty!8696 () Bool)

(declare-fun tp!18718 () Bool)

(declare-fun e!133937 () Bool)

(assert (=> mapNonEmpty!8696 (= mapRes!8696 (and tp!18718 e!133937))))

(declare-datatypes ((V!6427 0))(
  ( (V!6428 (val!2587 Int)) )
))
(declare-datatypes ((ValueCell!2199 0))(
  ( (ValueCellFull!2199 (v!4553 V!6427)) (EmptyCell!2199) )
))
(declare-fun mapRest!8696 () (Array (_ BitVec 32) ValueCell!2199))

(declare-fun mapKey!8696 () (_ BitVec 32))

(declare-fun mapValue!8696 () ValueCell!2199)

(declare-datatypes ((array!9384 0))(
  ( (array!9385 (arr!4442 (Array (_ BitVec 32) ValueCell!2199)) (size!4767 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9384)

(assert (=> mapNonEmpty!8696 (= (arr!4442 _values!649) (store mapRest!8696 mapKey!8696 mapValue!8696))))

(declare-fun b!204724 () Bool)

(declare-fun e!133934 () Bool)

(declare-fun e!133933 () Bool)

(assert (=> b!204724 (= e!133934 (and e!133933 mapRes!8696))))

(declare-fun condMapEmpty!8696 () Bool)

(declare-fun mapDefault!8696 () ValueCell!2199)

(assert (=> b!204724 (= condMapEmpty!8696 (= (arr!4442 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2199)) mapDefault!8696)))))

(declare-fun b!204725 () Bool)

(declare-fun tp_is_empty!5085 () Bool)

(assert (=> b!204725 (= e!133937 tp_is_empty!5085)))

(declare-fun b!204726 () Bool)

(declare-fun e!133939 () Bool)

(declare-fun e!133935 () Bool)

(assert (=> b!204726 (= e!133939 (not e!133935))))

(declare-fun res!98755 () Bool)

(assert (=> b!204726 (=> res!98755 e!133935)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204726 (= res!98755 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3918 0))(
  ( (tuple2!3919 (_1!1969 (_ BitVec 64)) (_2!1969 V!6427)) )
))
(declare-datatypes ((List!2840 0))(
  ( (Nil!2837) (Cons!2836 (h!3478 tuple2!3918) (t!7779 List!2840)) )
))
(declare-datatypes ((ListLongMap!2845 0))(
  ( (ListLongMap!2846 (toList!1438 List!2840)) )
))
(declare-fun lt!103922 () ListLongMap!2845)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6427)

(declare-datatypes ((array!9386 0))(
  ( (array!9387 (arr!4443 (Array (_ BitVec 32) (_ BitVec 64))) (size!4768 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9386)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6427)

(declare-fun getCurrentListMap!1006 (array!9386 array!9384 (_ BitVec 32) (_ BitVec 32) V!6427 V!6427 (_ BitVec 32) Int) ListLongMap!2845)

(assert (=> b!204726 (= lt!103922 (getCurrentListMap!1006 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103933 () ListLongMap!2845)

(declare-fun lt!103925 () array!9384)

(assert (=> b!204726 (= lt!103933 (getCurrentListMap!1006 _keys!825 lt!103925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103928 () ListLongMap!2845)

(declare-fun lt!103932 () ListLongMap!2845)

(assert (=> b!204726 (and (= lt!103928 lt!103932) (= lt!103932 lt!103928))))

(declare-fun lt!103924 () ListLongMap!2845)

(declare-fun lt!103927 () tuple2!3918)

(declare-fun +!455 (ListLongMap!2845 tuple2!3918) ListLongMap!2845)

(assert (=> b!204726 (= lt!103932 (+!455 lt!103924 lt!103927))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6427)

(assert (=> b!204726 (= lt!103927 (tuple2!3919 k0!843 v!520))))

(declare-datatypes ((Unit!6209 0))(
  ( (Unit!6210) )
))
(declare-fun lt!103929 () Unit!6209)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!119 (array!9386 array!9384 (_ BitVec 32) (_ BitVec 32) V!6427 V!6427 (_ BitVec 32) (_ BitVec 64) V!6427 (_ BitVec 32) Int) Unit!6209)

(assert (=> b!204726 (= lt!103929 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!119 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!377 (array!9386 array!9384 (_ BitVec 32) (_ BitVec 32) V!6427 V!6427 (_ BitVec 32) Int) ListLongMap!2845)

(assert (=> b!204726 (= lt!103928 (getCurrentListMapNoExtraKeys!377 _keys!825 lt!103925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204726 (= lt!103925 (array!9385 (store (arr!4442 _values!649) i!601 (ValueCellFull!2199 v!520)) (size!4767 _values!649)))))

(assert (=> b!204726 (= lt!103924 (getCurrentListMapNoExtraKeys!377 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204727 () Bool)

(declare-fun e!133938 () Bool)

(assert (=> b!204727 (= e!133938 true)))

(declare-fun lt!103926 () ListLongMap!2845)

(declare-fun lt!103923 () ListLongMap!2845)

(assert (=> b!204727 (= lt!103926 (+!455 lt!103923 lt!103927))))

(declare-fun lt!103930 () Unit!6209)

(declare-fun addCommutativeForDiffKeys!161 (ListLongMap!2845 (_ BitVec 64) V!6427 (_ BitVec 64) V!6427) Unit!6209)

(assert (=> b!204727 (= lt!103930 (addCommutativeForDiffKeys!161 lt!103924 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204728 () Bool)

(assert (=> b!204728 (= e!133935 e!133938)))

(declare-fun res!98751 () Bool)

(assert (=> b!204728 (=> res!98751 e!133938)))

(assert (=> b!204728 (= res!98751 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!204728 (= lt!103922 lt!103923)))

(declare-fun lt!103931 () tuple2!3918)

(assert (=> b!204728 (= lt!103923 (+!455 lt!103924 lt!103931))))

(assert (=> b!204728 (= lt!103933 lt!103926)))

(assert (=> b!204728 (= lt!103926 (+!455 lt!103932 lt!103931))))

(assert (=> b!204728 (= lt!103933 (+!455 lt!103928 lt!103931))))

(assert (=> b!204728 (= lt!103931 (tuple2!3919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204729 () Bool)

(declare-fun res!98749 () Bool)

(assert (=> b!204729 (=> (not res!98749) (not e!133939))))

(assert (=> b!204729 (= res!98749 (= (select (arr!4443 _keys!825) i!601) k0!843))))

(declare-fun res!98747 () Bool)

(assert (=> start!20582 (=> (not res!98747) (not e!133939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20582 (= res!98747 (validMask!0 mask!1149))))

(assert (=> start!20582 e!133939))

(declare-fun array_inv!2923 (array!9384) Bool)

(assert (=> start!20582 (and (array_inv!2923 _values!649) e!133934)))

(assert (=> start!20582 true))

(assert (=> start!20582 tp_is_empty!5085))

(declare-fun array_inv!2924 (array!9386) Bool)

(assert (=> start!20582 (array_inv!2924 _keys!825)))

(assert (=> start!20582 tp!18719))

(declare-fun b!204730 () Bool)

(assert (=> b!204730 (= e!133933 tp_is_empty!5085)))

(declare-fun b!204731 () Bool)

(declare-fun res!98750 () Bool)

(assert (=> b!204731 (=> (not res!98750) (not e!133939))))

(assert (=> b!204731 (= res!98750 (and (= (size!4767 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4768 _keys!825) (size!4767 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204732 () Bool)

(declare-fun res!98753 () Bool)

(assert (=> b!204732 (=> (not res!98753) (not e!133939))))

(declare-datatypes ((List!2841 0))(
  ( (Nil!2838) (Cons!2837 (h!3479 (_ BitVec 64)) (t!7780 List!2841)) )
))
(declare-fun arrayNoDuplicates!0 (array!9386 (_ BitVec 32) List!2841) Bool)

(assert (=> b!204732 (= res!98753 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2838))))

(declare-fun b!204733 () Bool)

(declare-fun res!98748 () Bool)

(assert (=> b!204733 (=> (not res!98748) (not e!133939))))

(assert (=> b!204733 (= res!98748 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4768 _keys!825))))))

(declare-fun b!204734 () Bool)

(declare-fun res!98754 () Bool)

(assert (=> b!204734 (=> (not res!98754) (not e!133939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9386 (_ BitVec 32)) Bool)

(assert (=> b!204734 (= res!98754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204735 () Bool)

(declare-fun res!98752 () Bool)

(assert (=> b!204735 (=> (not res!98752) (not e!133939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204735 (= res!98752 (validKeyInArray!0 k0!843))))

(assert (= (and start!20582 res!98747) b!204731))

(assert (= (and b!204731 res!98750) b!204734))

(assert (= (and b!204734 res!98754) b!204732))

(assert (= (and b!204732 res!98753) b!204733))

(assert (= (and b!204733 res!98748) b!204735))

(assert (= (and b!204735 res!98752) b!204729))

(assert (= (and b!204729 res!98749) b!204726))

(assert (= (and b!204726 (not res!98755)) b!204728))

(assert (= (and b!204728 (not res!98751)) b!204727))

(assert (= (and b!204724 condMapEmpty!8696) mapIsEmpty!8696))

(assert (= (and b!204724 (not condMapEmpty!8696)) mapNonEmpty!8696))

(get-info :version)

(assert (= (and mapNonEmpty!8696 ((_ is ValueCellFull!2199) mapValue!8696)) b!204725))

(assert (= (and b!204724 ((_ is ValueCellFull!2199) mapDefault!8696)) b!204730))

(assert (= start!20582 b!204724))

(declare-fun m!232297 () Bool)

(assert (=> b!204735 m!232297))

(declare-fun m!232299 () Bool)

(assert (=> start!20582 m!232299))

(declare-fun m!232301 () Bool)

(assert (=> start!20582 m!232301))

(declare-fun m!232303 () Bool)

(assert (=> start!20582 m!232303))

(declare-fun m!232305 () Bool)

(assert (=> b!204727 m!232305))

(declare-fun m!232307 () Bool)

(assert (=> b!204727 m!232307))

(declare-fun m!232309 () Bool)

(assert (=> b!204729 m!232309))

(declare-fun m!232311 () Bool)

(assert (=> mapNonEmpty!8696 m!232311))

(declare-fun m!232313 () Bool)

(assert (=> b!204728 m!232313))

(declare-fun m!232315 () Bool)

(assert (=> b!204728 m!232315))

(declare-fun m!232317 () Bool)

(assert (=> b!204728 m!232317))

(declare-fun m!232319 () Bool)

(assert (=> b!204726 m!232319))

(declare-fun m!232321 () Bool)

(assert (=> b!204726 m!232321))

(declare-fun m!232323 () Bool)

(assert (=> b!204726 m!232323))

(declare-fun m!232325 () Bool)

(assert (=> b!204726 m!232325))

(declare-fun m!232327 () Bool)

(assert (=> b!204726 m!232327))

(declare-fun m!232329 () Bool)

(assert (=> b!204726 m!232329))

(declare-fun m!232331 () Bool)

(assert (=> b!204726 m!232331))

(declare-fun m!232333 () Bool)

(assert (=> b!204732 m!232333))

(declare-fun m!232335 () Bool)

(assert (=> b!204734 m!232335))

(check-sat (not b!204734) (not b!204726) (not b!204727) (not b!204735) (not mapNonEmpty!8696) (not start!20582) (not b!204732) (not b!204728) b_and!11993 (not b_next!5229) tp_is_empty!5085)
(check-sat b_and!11993 (not b_next!5229))
