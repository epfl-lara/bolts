; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108036 () Bool)

(assert start!108036)

(declare-fun b!1275596 () Bool)

(declare-fun e!728277 () Bool)

(declare-fun tp_is_empty!33273 () Bool)

(assert (=> b!1275596 (= e!728277 tp_is_empty!33273)))

(declare-fun b!1275597 () Bool)

(declare-fun e!728276 () Bool)

(assert (=> b!1275597 (= e!728276 tp_is_empty!33273)))

(declare-fun b!1275598 () Bool)

(declare-fun e!728278 () Bool)

(declare-fun mapRes!51437 () Bool)

(assert (=> b!1275598 (= e!728278 (and e!728276 mapRes!51437))))

(declare-fun condMapEmpty!51437 () Bool)

(declare-datatypes ((V!49467 0))(
  ( (V!49468 (val!16711 Int)) )
))
(declare-datatypes ((ValueCell!15738 0))(
  ( (ValueCellFull!15738 (v!19306 V!49467)) (EmptyCell!15738) )
))
(declare-datatypes ((array!83601 0))(
  ( (array!83602 (arr!40308 (Array (_ BitVec 32) ValueCell!15738)) (size!40859 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83601)

(declare-fun mapDefault!51437 () ValueCell!15738)

(assert (=> b!1275598 (= condMapEmpty!51437 (= (arr!40308 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15738)) mapDefault!51437)))))

(declare-fun b!1275599 () Bool)

(declare-fun e!728279 () Bool)

(assert (=> b!1275599 (= e!728279 false)))

(declare-fun lt!575313 () Bool)

(declare-datatypes ((array!83603 0))(
  ( (array!83604 (arr!40309 (Array (_ BitVec 32) (_ BitVec 64))) (size!40860 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83603)

(declare-datatypes ((List!28782 0))(
  ( (Nil!28779) (Cons!28778 (h!29987 (_ BitVec 64)) (t!42325 List!28782)) )
))
(declare-fun arrayNoDuplicates!0 (array!83603 (_ BitVec 32) List!28782) Bool)

(assert (=> b!1275599 (= lt!575313 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28779))))

(declare-fun mapNonEmpty!51437 () Bool)

(declare-fun tp!98196 () Bool)

(assert (=> mapNonEmpty!51437 (= mapRes!51437 (and tp!98196 e!728277))))

(declare-fun mapValue!51437 () ValueCell!15738)

(declare-fun mapKey!51437 () (_ BitVec 32))

(declare-fun mapRest!51437 () (Array (_ BitVec 32) ValueCell!15738))

(assert (=> mapNonEmpty!51437 (= (arr!40308 _values!1187) (store mapRest!51437 mapKey!51437 mapValue!51437))))

(declare-fun b!1275600 () Bool)

(declare-fun res!847914 () Bool)

(assert (=> b!1275600 (=> (not res!847914) (not e!728279))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83603 (_ BitVec 32)) Bool)

(assert (=> b!1275600 (= res!847914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275601 () Bool)

(declare-fun res!847913 () Bool)

(assert (=> b!1275601 (=> (not res!847913) (not e!728279))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275601 (= res!847913 (and (= (size!40859 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40860 _keys!1427) (size!40859 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!847912 () Bool)

(assert (=> start!108036 (=> (not res!847912) (not e!728279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108036 (= res!847912 (validMask!0 mask!1805))))

(assert (=> start!108036 e!728279))

(assert (=> start!108036 true))

(declare-fun array_inv!30591 (array!83601) Bool)

(assert (=> start!108036 (and (array_inv!30591 _values!1187) e!728278)))

(declare-fun array_inv!30592 (array!83603) Bool)

(assert (=> start!108036 (array_inv!30592 _keys!1427)))

(declare-fun mapIsEmpty!51437 () Bool)

(assert (=> mapIsEmpty!51437 mapRes!51437))

(assert (= (and start!108036 res!847912) b!1275601))

(assert (= (and b!1275601 res!847913) b!1275600))

(assert (= (and b!1275600 res!847914) b!1275599))

(assert (= (and b!1275598 condMapEmpty!51437) mapIsEmpty!51437))

(assert (= (and b!1275598 (not condMapEmpty!51437)) mapNonEmpty!51437))

(get-info :version)

(assert (= (and mapNonEmpty!51437 ((_ is ValueCellFull!15738) mapValue!51437)) b!1275596))

(assert (= (and b!1275598 ((_ is ValueCellFull!15738) mapDefault!51437)) b!1275597))

(assert (= start!108036 b!1275598))

(declare-fun m!1171793 () Bool)

(assert (=> b!1275599 m!1171793))

(declare-fun m!1171795 () Bool)

(assert (=> mapNonEmpty!51437 m!1171795))

(declare-fun m!1171797 () Bool)

(assert (=> b!1275600 m!1171797))

(declare-fun m!1171799 () Bool)

(assert (=> start!108036 m!1171799))

(declare-fun m!1171801 () Bool)

(assert (=> start!108036 m!1171801))

(declare-fun m!1171803 () Bool)

(assert (=> start!108036 m!1171803))

(check-sat (not start!108036) tp_is_empty!33273 (not mapNonEmpty!51437) (not b!1275600) (not b!1275599))
(check-sat)
