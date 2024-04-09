; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20414 () Bool)

(assert start!20414)

(declare-fun b_free!5061 () Bool)

(declare-fun b_next!5061 () Bool)

(assert (=> start!20414 (= b_free!5061 (not b_next!5061))))

(declare-fun tp!18214 () Bool)

(declare-fun b_and!11825 () Bool)

(assert (=> start!20414 (= tp!18214 b_and!11825)))

(declare-fun b!201682 () Bool)

(declare-fun res!96463 () Bool)

(declare-fun e!132174 () Bool)

(assert (=> b!201682 (=> (not res!96463) (not e!132174))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9062 0))(
  ( (array!9063 (arr!4281 (Array (_ BitVec 32) (_ BitVec 64))) (size!4606 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9062)

(assert (=> b!201682 (= res!96463 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4606 _keys!825))))))

(declare-fun b!201683 () Bool)

(declare-fun res!96464 () Bool)

(assert (=> b!201683 (=> (not res!96464) (not e!132174))))

(declare-datatypes ((List!2723 0))(
  ( (Nil!2720) (Cons!2719 (h!3361 (_ BitVec 64)) (t!7662 List!2723)) )
))
(declare-fun arrayNoDuplicates!0 (array!9062 (_ BitVec 32) List!2723) Bool)

(assert (=> b!201683 (= res!96464 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2720))))

(declare-fun b!201684 () Bool)

(declare-fun e!132169 () Bool)

(assert (=> b!201684 (= e!132174 (not e!132169))))

(declare-fun res!96461 () Bool)

(assert (=> b!201684 (=> res!96461 e!132169)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201684 (= res!96461 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6203 0))(
  ( (V!6204 (val!2503 Int)) )
))
(declare-datatypes ((ValueCell!2115 0))(
  ( (ValueCellFull!2115 (v!4469 V!6203)) (EmptyCell!2115) )
))
(declare-datatypes ((array!9064 0))(
  ( (array!9065 (arr!4282 (Array (_ BitVec 32) ValueCell!2115)) (size!4607 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9064)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3788 0))(
  ( (tuple2!3789 (_1!1904 (_ BitVec 64)) (_2!1904 V!6203)) )
))
(declare-datatypes ((List!2724 0))(
  ( (Nil!2721) (Cons!2720 (h!3362 tuple2!3788) (t!7663 List!2724)) )
))
(declare-datatypes ((ListLongMap!2715 0))(
  ( (ListLongMap!2716 (toList!1373 List!2724)) )
))
(declare-fun lt!100787 () ListLongMap!2715)

(declare-fun zeroValue!615 () V!6203)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6203)

(declare-fun getCurrentListMap!955 (array!9062 array!9064 (_ BitVec 32) (_ BitVec 32) V!6203 V!6203 (_ BitVec 32) Int) ListLongMap!2715)

(assert (=> b!201684 (= lt!100787 (getCurrentListMap!955 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100776 () array!9064)

(declare-fun lt!100782 () ListLongMap!2715)

(assert (=> b!201684 (= lt!100782 (getCurrentListMap!955 _keys!825 lt!100776 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100775 () ListLongMap!2715)

(declare-fun lt!100781 () ListLongMap!2715)

(assert (=> b!201684 (and (= lt!100775 lt!100781) (= lt!100781 lt!100775))))

(declare-fun lt!100785 () ListLongMap!2715)

(declare-fun lt!100788 () tuple2!3788)

(declare-fun +!390 (ListLongMap!2715 tuple2!3788) ListLongMap!2715)

(assert (=> b!201684 (= lt!100781 (+!390 lt!100785 lt!100788))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6203)

(assert (=> b!201684 (= lt!100788 (tuple2!3789 k0!843 v!520))))

(declare-datatypes ((Unit!6087 0))(
  ( (Unit!6088) )
))
(declare-fun lt!100774 () Unit!6087)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!68 (array!9062 array!9064 (_ BitVec 32) (_ BitVec 32) V!6203 V!6203 (_ BitVec 32) (_ BitVec 64) V!6203 (_ BitVec 32) Int) Unit!6087)

(assert (=> b!201684 (= lt!100774 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!68 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!326 (array!9062 array!9064 (_ BitVec 32) (_ BitVec 32) V!6203 V!6203 (_ BitVec 32) Int) ListLongMap!2715)

(assert (=> b!201684 (= lt!100775 (getCurrentListMapNoExtraKeys!326 _keys!825 lt!100776 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201684 (= lt!100776 (array!9065 (store (arr!4282 _values!649) i!601 (ValueCellFull!2115 v!520)) (size!4607 _values!649)))))

(assert (=> b!201684 (= lt!100785 (getCurrentListMapNoExtraKeys!326 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201685 () Bool)

(declare-fun e!132175 () Bool)

(declare-fun tp_is_empty!4917 () Bool)

(assert (=> b!201685 (= e!132175 tp_is_empty!4917)))

(declare-fun res!96466 () Bool)

(assert (=> start!20414 (=> (not res!96466) (not e!132174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20414 (= res!96466 (validMask!0 mask!1149))))

(assert (=> start!20414 e!132174))

(declare-fun e!132171 () Bool)

(declare-fun array_inv!2817 (array!9064) Bool)

(assert (=> start!20414 (and (array_inv!2817 _values!649) e!132171)))

(assert (=> start!20414 true))

(assert (=> start!20414 tp_is_empty!4917))

(declare-fun array_inv!2818 (array!9062) Bool)

(assert (=> start!20414 (array_inv!2818 _keys!825)))

(assert (=> start!20414 tp!18214))

(declare-fun b!201686 () Bool)

(declare-fun e!132170 () Bool)

(assert (=> b!201686 (= e!132169 e!132170)))

(declare-fun res!96465 () Bool)

(assert (=> b!201686 (=> res!96465 e!132170)))

(assert (=> b!201686 (= res!96465 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100784 () ListLongMap!2715)

(declare-fun lt!100789 () ListLongMap!2715)

(assert (=> b!201686 (= lt!100784 lt!100789)))

(declare-fun lt!100778 () ListLongMap!2715)

(assert (=> b!201686 (= lt!100789 (+!390 lt!100778 lt!100788))))

(declare-fun lt!100786 () Unit!6087)

(declare-fun addCommutativeForDiffKeys!111 (ListLongMap!2715 (_ BitVec 64) V!6203 (_ BitVec 64) V!6203) Unit!6087)

(assert (=> b!201686 (= lt!100786 (addCommutativeForDiffKeys!111 lt!100785 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100779 () tuple2!3788)

(assert (=> b!201686 (= lt!100782 (+!390 lt!100784 lt!100779))))

(declare-fun lt!100777 () tuple2!3788)

(assert (=> b!201686 (= lt!100784 (+!390 lt!100781 lt!100777))))

(declare-fun lt!100780 () ListLongMap!2715)

(assert (=> b!201686 (= lt!100787 lt!100780)))

(assert (=> b!201686 (= lt!100780 (+!390 lt!100778 lt!100779))))

(assert (=> b!201686 (= lt!100778 (+!390 lt!100785 lt!100777))))

(assert (=> b!201686 (= lt!100782 (+!390 (+!390 lt!100775 lt!100777) lt!100779))))

(assert (=> b!201686 (= lt!100779 (tuple2!3789 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201686 (= lt!100777 (tuple2!3789 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201687 () Bool)

(declare-fun res!96467 () Bool)

(assert (=> b!201687 (=> (not res!96467) (not e!132174))))

(assert (=> b!201687 (= res!96467 (= (select (arr!4281 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8444 () Bool)

(declare-fun mapRes!8444 () Bool)

(declare-fun tp!18215 () Bool)

(declare-fun e!132172 () Bool)

(assert (=> mapNonEmpty!8444 (= mapRes!8444 (and tp!18215 e!132172))))

(declare-fun mapRest!8444 () (Array (_ BitVec 32) ValueCell!2115))

(declare-fun mapValue!8444 () ValueCell!2115)

(declare-fun mapKey!8444 () (_ BitVec 32))

(assert (=> mapNonEmpty!8444 (= (arr!4282 _values!649) (store mapRest!8444 mapKey!8444 mapValue!8444))))

(declare-fun b!201688 () Bool)

(declare-fun res!96469 () Bool)

(assert (=> b!201688 (=> (not res!96469) (not e!132174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201688 (= res!96469 (validKeyInArray!0 k0!843))))

(declare-fun b!201689 () Bool)

(assert (=> b!201689 (= e!132171 (and e!132175 mapRes!8444))))

(declare-fun condMapEmpty!8444 () Bool)

(declare-fun mapDefault!8444 () ValueCell!2115)

(assert (=> b!201689 (= condMapEmpty!8444 (= (arr!4282 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2115)) mapDefault!8444)))))

(declare-fun b!201690 () Bool)

(assert (=> b!201690 (= e!132170 true)))

(assert (=> b!201690 (= (+!390 lt!100789 lt!100779) (+!390 lt!100780 lt!100788))))

(declare-fun lt!100783 () Unit!6087)

(assert (=> b!201690 (= lt!100783 (addCommutativeForDiffKeys!111 lt!100778 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8444 () Bool)

(assert (=> mapIsEmpty!8444 mapRes!8444))

(declare-fun b!201691 () Bool)

(declare-fun res!96462 () Bool)

(assert (=> b!201691 (=> (not res!96462) (not e!132174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9062 (_ BitVec 32)) Bool)

(assert (=> b!201691 (= res!96462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201692 () Bool)

(assert (=> b!201692 (= e!132172 tp_is_empty!4917)))

(declare-fun b!201693 () Bool)

(declare-fun res!96468 () Bool)

(assert (=> b!201693 (=> (not res!96468) (not e!132174))))

(assert (=> b!201693 (= res!96468 (and (= (size!4607 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4606 _keys!825) (size!4607 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20414 res!96466) b!201693))

(assert (= (and b!201693 res!96468) b!201691))

(assert (= (and b!201691 res!96462) b!201683))

(assert (= (and b!201683 res!96464) b!201682))

(assert (= (and b!201682 res!96463) b!201688))

(assert (= (and b!201688 res!96469) b!201687))

(assert (= (and b!201687 res!96467) b!201684))

(assert (= (and b!201684 (not res!96461)) b!201686))

(assert (= (and b!201686 (not res!96465)) b!201690))

(assert (= (and b!201689 condMapEmpty!8444) mapIsEmpty!8444))

(assert (= (and b!201689 (not condMapEmpty!8444)) mapNonEmpty!8444))

(get-info :version)

(assert (= (and mapNonEmpty!8444 ((_ is ValueCellFull!2115) mapValue!8444)) b!201692))

(assert (= (and b!201689 ((_ is ValueCellFull!2115) mapDefault!8444)) b!201685))

(assert (= start!20414 b!201689))

(declare-fun m!228757 () Bool)

(assert (=> b!201683 m!228757))

(declare-fun m!228759 () Bool)

(assert (=> b!201690 m!228759))

(declare-fun m!228761 () Bool)

(assert (=> b!201690 m!228761))

(declare-fun m!228763 () Bool)

(assert (=> b!201690 m!228763))

(declare-fun m!228765 () Bool)

(assert (=> b!201684 m!228765))

(declare-fun m!228767 () Bool)

(assert (=> b!201684 m!228767))

(declare-fun m!228769 () Bool)

(assert (=> b!201684 m!228769))

(declare-fun m!228771 () Bool)

(assert (=> b!201684 m!228771))

(declare-fun m!228773 () Bool)

(assert (=> b!201684 m!228773))

(declare-fun m!228775 () Bool)

(assert (=> b!201684 m!228775))

(declare-fun m!228777 () Bool)

(assert (=> b!201684 m!228777))

(declare-fun m!228779 () Bool)

(assert (=> start!20414 m!228779))

(declare-fun m!228781 () Bool)

(assert (=> start!20414 m!228781))

(declare-fun m!228783 () Bool)

(assert (=> start!20414 m!228783))

(declare-fun m!228785 () Bool)

(assert (=> b!201687 m!228785))

(declare-fun m!228787 () Bool)

(assert (=> b!201686 m!228787))

(declare-fun m!228789 () Bool)

(assert (=> b!201686 m!228789))

(declare-fun m!228791 () Bool)

(assert (=> b!201686 m!228791))

(declare-fun m!228793 () Bool)

(assert (=> b!201686 m!228793))

(declare-fun m!228795 () Bool)

(assert (=> b!201686 m!228795))

(declare-fun m!228797 () Bool)

(assert (=> b!201686 m!228797))

(declare-fun m!228799 () Bool)

(assert (=> b!201686 m!228799))

(assert (=> b!201686 m!228795))

(declare-fun m!228801 () Bool)

(assert (=> b!201686 m!228801))

(declare-fun m!228803 () Bool)

(assert (=> mapNonEmpty!8444 m!228803))

(declare-fun m!228805 () Bool)

(assert (=> b!201688 m!228805))

(declare-fun m!228807 () Bool)

(assert (=> b!201691 m!228807))

(check-sat (not mapNonEmpty!8444) (not b!201690) (not b_next!5061) (not b!201684) tp_is_empty!4917 (not b!201686) (not start!20414) (not b!201691) (not b!201688) (not b!201683) b_and!11825)
(check-sat b_and!11825 (not b_next!5061))
