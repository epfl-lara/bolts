; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77622 () Bool)

(assert start!77622)

(declare-fun b_free!16179 () Bool)

(declare-fun b_next!16179 () Bool)

(assert (=> start!77622 (= b_free!16179 (not b_next!16179))))

(declare-fun tp!56799 () Bool)

(declare-fun b_and!26563 () Bool)

(assert (=> start!77622 (= tp!56799 b_and!26563)))

(declare-fun b!904113 () Bool)

(declare-fun res!610133 () Bool)

(declare-fun e!506644 () Bool)

(assert (=> b!904113 (=> (not res!610133) (not e!506644))))

(declare-datatypes ((array!53224 0))(
  ( (array!53225 (arr!25567 (Array (_ BitVec 32) (_ BitVec 64))) (size!26027 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53224)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53224 (_ BitVec 32)) Bool)

(assert (=> b!904113 (= res!610133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904114 () Bool)

(declare-fun res!610134 () Bool)

(assert (=> b!904114 (=> (not res!610134) (not e!506644))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904114 (= res!610134 (inRange!0 i!717 mask!1756))))

(declare-fun mapNonEmpty!29608 () Bool)

(declare-fun mapRes!29608 () Bool)

(declare-fun tp!56800 () Bool)

(declare-fun e!506639 () Bool)

(assert (=> mapNonEmpty!29608 (= mapRes!29608 (and tp!56800 e!506639))))

(declare-datatypes ((V!29761 0))(
  ( (V!29762 (val!9349 Int)) )
))
(declare-datatypes ((ValueCell!8817 0))(
  ( (ValueCellFull!8817 (v!11854 V!29761)) (EmptyCell!8817) )
))
(declare-fun mapRest!29608 () (Array (_ BitVec 32) ValueCell!8817))

(declare-fun mapValue!29608 () ValueCell!8817)

(declare-fun mapKey!29608 () (_ BitVec 32))

(declare-datatypes ((array!53226 0))(
  ( (array!53227 (arr!25568 (Array (_ BitVec 32) ValueCell!8817)) (size!26028 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53226)

(assert (=> mapNonEmpty!29608 (= (arr!25568 _values!1152) (store mapRest!29608 mapKey!29608 mapValue!29608))))

(declare-fun mapIsEmpty!29608 () Bool)

(assert (=> mapIsEmpty!29608 mapRes!29608))

(declare-fun b!904115 () Bool)

(declare-fun e!506645 () Bool)

(assert (=> b!904115 (= e!506645 true)))

(declare-fun lt!408136 () V!29761)

(declare-datatypes ((tuple2!12162 0))(
  ( (tuple2!12163 (_1!6091 (_ BitVec 64)) (_2!6091 V!29761)) )
))
(declare-datatypes ((List!18037 0))(
  ( (Nil!18034) (Cons!18033 (h!19179 tuple2!12162) (t!25428 List!18037)) )
))
(declare-datatypes ((ListLongMap!10873 0))(
  ( (ListLongMap!10874 (toList!5452 List!18037)) )
))
(declare-fun lt!408135 () ListLongMap!10873)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!435 (ListLongMap!10873 (_ BitVec 64)) V!29761)

(assert (=> b!904115 (= lt!408136 (apply!435 lt!408135 k0!1033))))

(declare-fun b!904116 () Bool)

(declare-fun res!610137 () Bool)

(assert (=> b!904116 (=> (not res!610137) (not e!506644))))

(assert (=> b!904116 (= res!610137 (and (= (select (arr!25567 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904117 () Bool)

(declare-fun res!610132 () Bool)

(assert (=> b!904117 (=> (not res!610132) (not e!506644))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29761)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29761)

(declare-fun contains!4465 (ListLongMap!10873 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2689 (array!53224 array!53226 (_ BitVec 32) (_ BitVec 32) V!29761 V!29761 (_ BitVec 32) Int) ListLongMap!10873)

(assert (=> b!904117 (= res!610132 (contains!4465 (getCurrentListMap!2689 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!904118 () Bool)

(declare-fun e!506642 () Bool)

(assert (=> b!904118 (= e!506644 (not e!506642))))

(declare-fun res!610138 () Bool)

(assert (=> b!904118 (=> res!610138 e!506642)))

(assert (=> b!904118 (= res!610138 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26027 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904118 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30635 0))(
  ( (Unit!30636) )
))
(declare-fun lt!408137 () Unit!30635)

(declare-fun lemmaKeyInListMapIsInArray!180 (array!53224 array!53226 (_ BitVec 32) (_ BitVec 32) V!29761 V!29761 (_ BitVec 64) Int) Unit!30635)

(assert (=> b!904118 (= lt!408137 (lemmaKeyInListMapIsInArray!180 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904119 () Bool)

(declare-fun e!506640 () Bool)

(declare-fun tp_is_empty!18597 () Bool)

(assert (=> b!904119 (= e!506640 tp_is_empty!18597)))

(declare-fun b!904120 () Bool)

(assert (=> b!904120 (= e!506639 tp_is_empty!18597)))

(declare-fun res!610136 () Bool)

(assert (=> start!77622 (=> (not res!610136) (not e!506644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77622 (= res!610136 (validMask!0 mask!1756))))

(assert (=> start!77622 e!506644))

(declare-fun e!506641 () Bool)

(declare-fun array_inv!20012 (array!53226) Bool)

(assert (=> start!77622 (and (array_inv!20012 _values!1152) e!506641)))

(assert (=> start!77622 tp!56799))

(assert (=> start!77622 true))

(assert (=> start!77622 tp_is_empty!18597))

(declare-fun array_inv!20013 (array!53224) Bool)

(assert (=> start!77622 (array_inv!20013 _keys!1386)))

(declare-fun b!904121 () Bool)

(assert (=> b!904121 (= e!506641 (and e!506640 mapRes!29608))))

(declare-fun condMapEmpty!29608 () Bool)

(declare-fun mapDefault!29608 () ValueCell!8817)

(assert (=> b!904121 (= condMapEmpty!29608 (= (arr!25568 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8817)) mapDefault!29608)))))

(declare-fun b!904122 () Bool)

(declare-fun res!610139 () Bool)

(assert (=> b!904122 (=> (not res!610139) (not e!506644))))

(declare-datatypes ((List!18038 0))(
  ( (Nil!18035) (Cons!18034 (h!19180 (_ BitVec 64)) (t!25429 List!18038)) )
))
(declare-fun arrayNoDuplicates!0 (array!53224 (_ BitVec 32) List!18038) Bool)

(assert (=> b!904122 (= res!610139 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18035))))

(declare-fun b!904123 () Bool)

(declare-fun res!610140 () Bool)

(assert (=> b!904123 (=> (not res!610140) (not e!506644))))

(assert (=> b!904123 (= res!610140 (and (= (size!26028 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26027 _keys!1386) (size!26028 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904124 () Bool)

(assert (=> b!904124 (= e!506642 e!506645)))

(declare-fun res!610135 () Bool)

(assert (=> b!904124 (=> res!610135 e!506645)))

(assert (=> b!904124 (= res!610135 (not (contains!4465 lt!408135 k0!1033)))))

(assert (=> b!904124 (= lt!408135 (getCurrentListMap!2689 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(assert (= (and start!77622 res!610136) b!904123))

(assert (= (and b!904123 res!610140) b!904113))

(assert (= (and b!904113 res!610133) b!904122))

(assert (= (and b!904122 res!610139) b!904117))

(assert (= (and b!904117 res!610132) b!904114))

(assert (= (and b!904114 res!610134) b!904116))

(assert (= (and b!904116 res!610137) b!904118))

(assert (= (and b!904118 (not res!610138)) b!904124))

(assert (= (and b!904124 (not res!610135)) b!904115))

(assert (= (and b!904121 condMapEmpty!29608) mapIsEmpty!29608))

(assert (= (and b!904121 (not condMapEmpty!29608)) mapNonEmpty!29608))

(get-info :version)

(assert (= (and mapNonEmpty!29608 ((_ is ValueCellFull!8817) mapValue!29608)) b!904120))

(assert (= (and b!904121 ((_ is ValueCellFull!8817) mapDefault!29608)) b!904119))

(assert (= start!77622 b!904121))

(declare-fun m!839741 () Bool)

(assert (=> b!904114 m!839741))

(declare-fun m!839743 () Bool)

(assert (=> mapNonEmpty!29608 m!839743))

(declare-fun m!839745 () Bool)

(assert (=> b!904116 m!839745))

(declare-fun m!839747 () Bool)

(assert (=> b!904117 m!839747))

(assert (=> b!904117 m!839747))

(declare-fun m!839749 () Bool)

(assert (=> b!904117 m!839749))

(declare-fun m!839751 () Bool)

(assert (=> b!904113 m!839751))

(declare-fun m!839753 () Bool)

(assert (=> b!904122 m!839753))

(declare-fun m!839755 () Bool)

(assert (=> b!904124 m!839755))

(declare-fun m!839757 () Bool)

(assert (=> b!904124 m!839757))

(declare-fun m!839759 () Bool)

(assert (=> b!904118 m!839759))

(declare-fun m!839761 () Bool)

(assert (=> b!904118 m!839761))

(declare-fun m!839763 () Bool)

(assert (=> b!904115 m!839763))

(declare-fun m!839765 () Bool)

(assert (=> start!77622 m!839765))

(declare-fun m!839767 () Bool)

(assert (=> start!77622 m!839767))

(declare-fun m!839769 () Bool)

(assert (=> start!77622 m!839769))

(check-sat (not b!904115) (not b!904122) (not b!904117) (not b_next!16179) (not mapNonEmpty!29608) b_and!26563 (not b!904114) (not b!904118) tp_is_empty!18597 (not b!904113) (not b!904124) (not start!77622))
(check-sat b_and!26563 (not b_next!16179))
