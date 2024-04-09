; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108042 () Bool)

(assert start!108042)

(declare-fun mapIsEmpty!51446 () Bool)

(declare-fun mapRes!51446 () Bool)

(assert (=> mapIsEmpty!51446 mapRes!51446))

(declare-fun b!1275650 () Bool)

(declare-fun e!728320 () Bool)

(declare-fun tp_is_empty!33279 () Bool)

(assert (=> b!1275650 (= e!728320 tp_is_empty!33279)))

(declare-fun res!847939 () Bool)

(declare-fun e!728324 () Bool)

(assert (=> start!108042 (=> (not res!847939) (not e!728324))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108042 (= res!847939 (validMask!0 mask!1805))))

(assert (=> start!108042 e!728324))

(assert (=> start!108042 true))

(declare-datatypes ((V!49475 0))(
  ( (V!49476 (val!16714 Int)) )
))
(declare-datatypes ((ValueCell!15741 0))(
  ( (ValueCellFull!15741 (v!19309 V!49475)) (EmptyCell!15741) )
))
(declare-datatypes ((array!83611 0))(
  ( (array!83612 (arr!40313 (Array (_ BitVec 32) ValueCell!15741)) (size!40864 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83611)

(declare-fun e!728322 () Bool)

(declare-fun array_inv!30595 (array!83611) Bool)

(assert (=> start!108042 (and (array_inv!30595 _values!1187) e!728322)))

(declare-datatypes ((array!83613 0))(
  ( (array!83614 (arr!40314 (Array (_ BitVec 32) (_ BitVec 64))) (size!40865 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83613)

(declare-fun array_inv!30596 (array!83613) Bool)

(assert (=> start!108042 (array_inv!30596 _keys!1427)))

(declare-fun b!1275651 () Bool)

(declare-fun e!728323 () Bool)

(assert (=> b!1275651 (= e!728322 (and e!728323 mapRes!51446))))

(declare-fun condMapEmpty!51446 () Bool)

(declare-fun mapDefault!51446 () ValueCell!15741)

(assert (=> b!1275651 (= condMapEmpty!51446 (= (arr!40313 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15741)) mapDefault!51446)))))

(declare-fun mapNonEmpty!51446 () Bool)

(declare-fun tp!98205 () Bool)

(assert (=> mapNonEmpty!51446 (= mapRes!51446 (and tp!98205 e!728320))))

(declare-fun mapKey!51446 () (_ BitVec 32))

(declare-fun mapRest!51446 () (Array (_ BitVec 32) ValueCell!15741))

(declare-fun mapValue!51446 () ValueCell!15741)

(assert (=> mapNonEmpty!51446 (= (arr!40313 _values!1187) (store mapRest!51446 mapKey!51446 mapValue!51446))))

(declare-fun b!1275652 () Bool)

(assert (=> b!1275652 (= e!728324 false)))

(declare-fun lt!575322 () Bool)

(declare-datatypes ((List!28783 0))(
  ( (Nil!28780) (Cons!28779 (h!29988 (_ BitVec 64)) (t!42326 List!28783)) )
))
(declare-fun arrayNoDuplicates!0 (array!83613 (_ BitVec 32) List!28783) Bool)

(assert (=> b!1275652 (= lt!575322 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28780))))

(declare-fun b!1275653 () Bool)

(declare-fun res!847940 () Bool)

(assert (=> b!1275653 (=> (not res!847940) (not e!728324))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275653 (= res!847940 (and (= (size!40864 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40865 _keys!1427) (size!40864 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275654 () Bool)

(assert (=> b!1275654 (= e!728323 tp_is_empty!33279)))

(declare-fun b!1275655 () Bool)

(declare-fun res!847941 () Bool)

(assert (=> b!1275655 (=> (not res!847941) (not e!728324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83613 (_ BitVec 32)) Bool)

(assert (=> b!1275655 (= res!847941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(assert (= (and start!108042 res!847939) b!1275653))

(assert (= (and b!1275653 res!847940) b!1275655))

(assert (= (and b!1275655 res!847941) b!1275652))

(assert (= (and b!1275651 condMapEmpty!51446) mapIsEmpty!51446))

(assert (= (and b!1275651 (not condMapEmpty!51446)) mapNonEmpty!51446))

(get-info :version)

(assert (= (and mapNonEmpty!51446 ((_ is ValueCellFull!15741) mapValue!51446)) b!1275650))

(assert (= (and b!1275651 ((_ is ValueCellFull!15741) mapDefault!51446)) b!1275654))

(assert (= start!108042 b!1275651))

(declare-fun m!1171829 () Bool)

(assert (=> start!108042 m!1171829))

(declare-fun m!1171831 () Bool)

(assert (=> start!108042 m!1171831))

(declare-fun m!1171833 () Bool)

(assert (=> start!108042 m!1171833))

(declare-fun m!1171835 () Bool)

(assert (=> mapNonEmpty!51446 m!1171835))

(declare-fun m!1171837 () Bool)

(assert (=> b!1275652 m!1171837))

(declare-fun m!1171839 () Bool)

(assert (=> b!1275655 m!1171839))

(check-sat (not b!1275652) (not start!108042) tp_is_empty!33279 (not b!1275655) (not mapNonEmpty!51446))
(check-sat)
