; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108160 () Bool)

(assert start!108160)

(declare-fun b_free!27837 () Bool)

(declare-fun b_next!27837 () Bool)

(assert (=> start!108160 (= b_free!27837 (not b_next!27837))))

(declare-fun tp!98465 () Bool)

(declare-fun b_and!45903 () Bool)

(assert (=> start!108160 (= tp!98465 b_and!45903)))

(declare-fun b!1276781 () Bool)

(declare-fun res!848558 () Bool)

(declare-fun e!729166 () Bool)

(assert (=> b!1276781 (=> (not res!848558) (not e!729166))))

(declare-datatypes ((array!83817 0))(
  ( (array!83818 (arr!40415 (Array (_ BitVec 32) (_ BitVec 64))) (size!40966 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83817)

(declare-datatypes ((List!28839 0))(
  ( (Nil!28836) (Cons!28835 (h!30044 (_ BitVec 64)) (t!42382 List!28839)) )
))
(declare-fun arrayNoDuplicates!0 (array!83817 (_ BitVec 32) List!28839) Bool)

(assert (=> b!1276781 (= res!848558 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28836))))

(declare-fun b!1276782 () Bool)

(declare-fun res!848557 () Bool)

(assert (=> b!1276782 (=> (not res!848557) (not e!729166))))

(assert (=> b!1276782 (= res!848557 (bvslt #b00000000000000000000000000000000 (size!40966 _keys!1427)))))

(declare-fun b!1276783 () Bool)

(declare-fun res!848555 () Bool)

(assert (=> b!1276783 (=> (not res!848555) (not e!729166))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83817 (_ BitVec 32)) Bool)

(assert (=> b!1276783 (= res!848555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276784 () Bool)

(declare-fun res!848556 () Bool)

(assert (=> b!1276784 (=> (not res!848556) (not e!729166))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49619 0))(
  ( (V!49620 (val!16768 Int)) )
))
(declare-fun minValue!1129 () V!49619)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15795 0))(
  ( (ValueCellFull!15795 (v!19363 V!49619)) (EmptyCell!15795) )
))
(declare-datatypes ((array!83819 0))(
  ( (array!83820 (arr!40416 (Array (_ BitVec 32) ValueCell!15795)) (size!40967 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83819)

(declare-fun zeroValue!1129 () V!49619)

(declare-datatypes ((tuple2!21654 0))(
  ( (tuple2!21655 (_1!10837 (_ BitVec 64)) (_2!10837 V!49619)) )
))
(declare-datatypes ((List!28840 0))(
  ( (Nil!28837) (Cons!28836 (h!30045 tuple2!21654) (t!42383 List!28840)) )
))
(declare-datatypes ((ListLongMap!19323 0))(
  ( (ListLongMap!19324 (toList!9677 List!28840)) )
))
(declare-fun contains!7724 (ListLongMap!19323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4697 (array!83817 array!83819 (_ BitVec 32) (_ BitVec 32) V!49619 V!49619 (_ BitVec 32) Int) ListLongMap!19323)

(assert (=> b!1276784 (= res!848556 (contains!7724 (getCurrentListMap!4697 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276785 () Bool)

(declare-fun res!848559 () Bool)

(assert (=> b!1276785 (=> (not res!848559) (not e!729166))))

(assert (=> b!1276785 (= res!848559 (and (= (size!40967 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40966 _keys!1427) (size!40967 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276786 () Bool)

(declare-fun e!729164 () Bool)

(declare-fun tp_is_empty!33387 () Bool)

(assert (=> b!1276786 (= e!729164 tp_is_empty!33387)))

(declare-fun b!1276787 () Bool)

(declare-fun e!729163 () Bool)

(declare-fun e!729162 () Bool)

(declare-fun mapRes!51611 () Bool)

(assert (=> b!1276787 (= e!729163 (and e!729162 mapRes!51611))))

(declare-fun condMapEmpty!51611 () Bool)

(declare-fun mapDefault!51611 () ValueCell!15795)

(assert (=> b!1276787 (= condMapEmpty!51611 (= (arr!40416 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15795)) mapDefault!51611)))))

(declare-fun b!1276788 () Bool)

(declare-fun e!729165 () Bool)

(declare-fun arrayContainsKey!0 (array!83817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276788 (= e!729165 (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!51611 () Bool)

(assert (=> mapIsEmpty!51611 mapRes!51611))

(declare-fun b!1276789 () Bool)

(assert (=> b!1276789 (= e!729165 (ite (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1276790 () Bool)

(assert (=> b!1276790 (= e!729162 tp_is_empty!33387)))

(declare-fun res!848554 () Bool)

(assert (=> start!108160 (=> (not res!848554) (not e!729166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108160 (= res!848554 (validMask!0 mask!1805))))

(assert (=> start!108160 e!729166))

(assert (=> start!108160 true))

(assert (=> start!108160 tp!98465))

(assert (=> start!108160 tp_is_empty!33387))

(declare-fun array_inv!30671 (array!83819) Bool)

(assert (=> start!108160 (and (array_inv!30671 _values!1187) e!729163)))

(declare-fun array_inv!30672 (array!83817) Bool)

(assert (=> start!108160 (array_inv!30672 _keys!1427)))

(declare-fun b!1276791 () Bool)

(assert (=> b!1276791 (= e!729166 (not true))))

(assert (=> b!1276791 e!729165))

(declare-fun c!123882 () Bool)

(assert (=> b!1276791 (= c!123882 (and (not (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42307 0))(
  ( (Unit!42308) )
))
(declare-fun lt!575484 () Unit!42307)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!626 (array!83817 array!83819 (_ BitVec 32) (_ BitVec 32) V!49619 V!49619 (_ BitVec 64) (_ BitVec 32) Int) Unit!42307)

(assert (=> b!1276791 (= lt!575484 (lemmaListMapContainsThenArrayContainsFrom!626 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun mapNonEmpty!51611 () Bool)

(declare-fun tp!98466 () Bool)

(assert (=> mapNonEmpty!51611 (= mapRes!51611 (and tp!98466 e!729164))))

(declare-fun mapKey!51611 () (_ BitVec 32))

(declare-fun mapRest!51611 () (Array (_ BitVec 32) ValueCell!15795))

(declare-fun mapValue!51611 () ValueCell!15795)

(assert (=> mapNonEmpty!51611 (= (arr!40416 _values!1187) (store mapRest!51611 mapKey!51611 mapValue!51611))))

(assert (= (and start!108160 res!848554) b!1276785))

(assert (= (and b!1276785 res!848559) b!1276783))

(assert (= (and b!1276783 res!848555) b!1276781))

(assert (= (and b!1276781 res!848558) b!1276784))

(assert (= (and b!1276784 res!848556) b!1276782))

(assert (= (and b!1276782 res!848557) b!1276791))

(assert (= (and b!1276791 c!123882) b!1276788))

(assert (= (and b!1276791 (not c!123882)) b!1276789))

(assert (= (and b!1276787 condMapEmpty!51611) mapIsEmpty!51611))

(assert (= (and b!1276787 (not condMapEmpty!51611)) mapNonEmpty!51611))

(get-info :version)

(assert (= (and mapNonEmpty!51611 ((_ is ValueCellFull!15795) mapValue!51611)) b!1276786))

(assert (= (and b!1276787 ((_ is ValueCellFull!15795) mapDefault!51611)) b!1276790))

(assert (= start!108160 b!1276787))

(declare-fun m!1172623 () Bool)

(assert (=> b!1276781 m!1172623))

(declare-fun m!1172625 () Bool)

(assert (=> b!1276791 m!1172625))

(declare-fun m!1172627 () Bool)

(assert (=> start!108160 m!1172627))

(declare-fun m!1172629 () Bool)

(assert (=> start!108160 m!1172629))

(declare-fun m!1172631 () Bool)

(assert (=> start!108160 m!1172631))

(declare-fun m!1172633 () Bool)

(assert (=> b!1276784 m!1172633))

(assert (=> b!1276784 m!1172633))

(declare-fun m!1172635 () Bool)

(assert (=> b!1276784 m!1172635))

(declare-fun m!1172637 () Bool)

(assert (=> mapNonEmpty!51611 m!1172637))

(declare-fun m!1172639 () Bool)

(assert (=> b!1276783 m!1172639))

(declare-fun m!1172641 () Bool)

(assert (=> b!1276788 m!1172641))

(check-sat (not b!1276791) b_and!45903 (not b!1276784) (not b_next!27837) (not mapNonEmpty!51611) (not start!108160) (not b!1276781) (not b!1276783) (not b!1276788) tp_is_empty!33387)
(check-sat b_and!45903 (not b_next!27837))
