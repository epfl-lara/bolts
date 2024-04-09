; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108048 () Bool)

(assert start!108048)

(declare-fun b!1275704 () Bool)

(declare-fun e!728367 () Bool)

(assert (=> b!1275704 (= e!728367 false)))

(declare-fun lt!575331 () Bool)

(declare-datatypes ((array!83621 0))(
  ( (array!83622 (arr!40318 (Array (_ BitVec 32) (_ BitVec 64))) (size!40869 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83621)

(declare-datatypes ((List!28785 0))(
  ( (Nil!28782) (Cons!28781 (h!29990 (_ BitVec 64)) (t!42328 List!28785)) )
))
(declare-fun arrayNoDuplicates!0 (array!83621 (_ BitVec 32) List!28785) Bool)

(assert (=> b!1275704 (= lt!575331 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28782))))

(declare-fun mapNonEmpty!51455 () Bool)

(declare-fun mapRes!51455 () Bool)

(declare-fun tp!98214 () Bool)

(declare-fun e!728365 () Bool)

(assert (=> mapNonEmpty!51455 (= mapRes!51455 (and tp!98214 e!728365))))

(declare-fun mapKey!51455 () (_ BitVec 32))

(declare-datatypes ((V!49483 0))(
  ( (V!49484 (val!16717 Int)) )
))
(declare-datatypes ((ValueCell!15744 0))(
  ( (ValueCellFull!15744 (v!19312 V!49483)) (EmptyCell!15744) )
))
(declare-fun mapValue!51455 () ValueCell!15744)

(declare-fun mapRest!51455 () (Array (_ BitVec 32) ValueCell!15744))

(declare-datatypes ((array!83623 0))(
  ( (array!83624 (arr!40319 (Array (_ BitVec 32) ValueCell!15744)) (size!40870 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83623)

(assert (=> mapNonEmpty!51455 (= (arr!40319 _values!1187) (store mapRest!51455 mapKey!51455 mapValue!51455))))

(declare-fun b!1275705 () Bool)

(declare-fun e!728369 () Bool)

(declare-fun tp_is_empty!33285 () Bool)

(assert (=> b!1275705 (= e!728369 tp_is_empty!33285)))

(declare-fun b!1275706 () Bool)

(declare-fun res!847967 () Bool)

(assert (=> b!1275706 (=> (not res!847967) (not e!728367))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275706 (= res!847967 (and (= (size!40870 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40869 _keys!1427) (size!40870 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275707 () Bool)

(assert (=> b!1275707 (= e!728365 tp_is_empty!33285)))

(declare-fun res!847968 () Bool)

(assert (=> start!108048 (=> (not res!847968) (not e!728367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108048 (= res!847968 (validMask!0 mask!1805))))

(assert (=> start!108048 e!728367))

(assert (=> start!108048 true))

(declare-fun e!728366 () Bool)

(declare-fun array_inv!30597 (array!83623) Bool)

(assert (=> start!108048 (and (array_inv!30597 _values!1187) e!728366)))

(declare-fun array_inv!30598 (array!83621) Bool)

(assert (=> start!108048 (array_inv!30598 _keys!1427)))

(declare-fun b!1275708 () Bool)

(declare-fun res!847966 () Bool)

(assert (=> b!1275708 (=> (not res!847966) (not e!728367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83621 (_ BitVec 32)) Bool)

(assert (=> b!1275708 (= res!847966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275709 () Bool)

(assert (=> b!1275709 (= e!728366 (and e!728369 mapRes!51455))))

(declare-fun condMapEmpty!51455 () Bool)

(declare-fun mapDefault!51455 () ValueCell!15744)

(assert (=> b!1275709 (= condMapEmpty!51455 (= (arr!40319 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15744)) mapDefault!51455)))))

(declare-fun mapIsEmpty!51455 () Bool)

(assert (=> mapIsEmpty!51455 mapRes!51455))

(assert (= (and start!108048 res!847968) b!1275706))

(assert (= (and b!1275706 res!847967) b!1275708))

(assert (= (and b!1275708 res!847966) b!1275704))

(assert (= (and b!1275709 condMapEmpty!51455) mapIsEmpty!51455))

(assert (= (and b!1275709 (not condMapEmpty!51455)) mapNonEmpty!51455))

(get-info :version)

(assert (= (and mapNonEmpty!51455 ((_ is ValueCellFull!15744) mapValue!51455)) b!1275707))

(assert (= (and b!1275709 ((_ is ValueCellFull!15744) mapDefault!51455)) b!1275705))

(assert (= start!108048 b!1275709))

(declare-fun m!1171865 () Bool)

(assert (=> b!1275704 m!1171865))

(declare-fun m!1171867 () Bool)

(assert (=> mapNonEmpty!51455 m!1171867))

(declare-fun m!1171869 () Bool)

(assert (=> start!108048 m!1171869))

(declare-fun m!1171871 () Bool)

(assert (=> start!108048 m!1171871))

(declare-fun m!1171873 () Bool)

(assert (=> start!108048 m!1171873))

(declare-fun m!1171875 () Bool)

(assert (=> b!1275708 m!1171875))

(check-sat (not b!1275708) (not mapNonEmpty!51455) tp_is_empty!33285 (not start!108048) (not b!1275704))
(check-sat)
