; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108066 () Bool)

(assert start!108066)

(declare-fun b!1275866 () Bool)

(declare-fun e!728501 () Bool)

(assert (=> b!1275866 (= e!728501 false)))

(declare-fun lt!575358 () Bool)

(declare-datatypes ((array!83657 0))(
  ( (array!83658 (arr!40336 (Array (_ BitVec 32) (_ BitVec 64))) (size!40887 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83657)

(declare-datatypes ((List!28791 0))(
  ( (Nil!28788) (Cons!28787 (h!29996 (_ BitVec 64)) (t!42334 List!28791)) )
))
(declare-fun arrayNoDuplicates!0 (array!83657 (_ BitVec 32) List!28791) Bool)

(assert (=> b!1275866 (= lt!575358 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28788))))

(declare-fun res!848048 () Bool)

(assert (=> start!108066 (=> (not res!848048) (not e!728501))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108066 (= res!848048 (validMask!0 mask!1805))))

(assert (=> start!108066 e!728501))

(assert (=> start!108066 true))

(declare-datatypes ((V!49507 0))(
  ( (V!49508 (val!16726 Int)) )
))
(declare-datatypes ((ValueCell!15753 0))(
  ( (ValueCellFull!15753 (v!19321 V!49507)) (EmptyCell!15753) )
))
(declare-datatypes ((array!83659 0))(
  ( (array!83660 (arr!40337 (Array (_ BitVec 32) ValueCell!15753)) (size!40888 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83659)

(declare-fun e!728504 () Bool)

(declare-fun array_inv!30613 (array!83659) Bool)

(assert (=> start!108066 (and (array_inv!30613 _values!1187) e!728504)))

(declare-fun array_inv!30614 (array!83657) Bool)

(assert (=> start!108066 (array_inv!30614 _keys!1427)))

(declare-fun b!1275867 () Bool)

(declare-fun res!848047 () Bool)

(assert (=> b!1275867 (=> (not res!848047) (not e!728501))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275867 (= res!848047 (and (= (size!40888 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40887 _keys!1427) (size!40888 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275868 () Bool)

(declare-fun e!728503 () Bool)

(declare-fun tp_is_empty!33303 () Bool)

(assert (=> b!1275868 (= e!728503 tp_is_empty!33303)))

(declare-fun mapNonEmpty!51482 () Bool)

(declare-fun mapRes!51482 () Bool)

(declare-fun tp!98241 () Bool)

(declare-fun e!728500 () Bool)

(assert (=> mapNonEmpty!51482 (= mapRes!51482 (and tp!98241 e!728500))))

(declare-fun mapRest!51482 () (Array (_ BitVec 32) ValueCell!15753))

(declare-fun mapKey!51482 () (_ BitVec 32))

(declare-fun mapValue!51482 () ValueCell!15753)

(assert (=> mapNonEmpty!51482 (= (arr!40337 _values!1187) (store mapRest!51482 mapKey!51482 mapValue!51482))))

(declare-fun b!1275869 () Bool)

(declare-fun res!848049 () Bool)

(assert (=> b!1275869 (=> (not res!848049) (not e!728501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83657 (_ BitVec 32)) Bool)

(assert (=> b!1275869 (= res!848049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275870 () Bool)

(assert (=> b!1275870 (= e!728500 tp_is_empty!33303)))

(declare-fun b!1275871 () Bool)

(assert (=> b!1275871 (= e!728504 (and e!728503 mapRes!51482))))

(declare-fun condMapEmpty!51482 () Bool)

(declare-fun mapDefault!51482 () ValueCell!15753)

(assert (=> b!1275871 (= condMapEmpty!51482 (= (arr!40337 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15753)) mapDefault!51482)))))

(declare-fun mapIsEmpty!51482 () Bool)

(assert (=> mapIsEmpty!51482 mapRes!51482))

(assert (= (and start!108066 res!848048) b!1275867))

(assert (= (and b!1275867 res!848047) b!1275869))

(assert (= (and b!1275869 res!848049) b!1275866))

(assert (= (and b!1275871 condMapEmpty!51482) mapIsEmpty!51482))

(assert (= (and b!1275871 (not condMapEmpty!51482)) mapNonEmpty!51482))

(get-info :version)

(assert (= (and mapNonEmpty!51482 ((_ is ValueCellFull!15753) mapValue!51482)) b!1275870))

(assert (= (and b!1275871 ((_ is ValueCellFull!15753) mapDefault!51482)) b!1275868))

(assert (= start!108066 b!1275871))

(declare-fun m!1171973 () Bool)

(assert (=> b!1275866 m!1171973))

(declare-fun m!1171975 () Bool)

(assert (=> start!108066 m!1171975))

(declare-fun m!1171977 () Bool)

(assert (=> start!108066 m!1171977))

(declare-fun m!1171979 () Bool)

(assert (=> start!108066 m!1171979))

(declare-fun m!1171981 () Bool)

(assert (=> mapNonEmpty!51482 m!1171981))

(declare-fun m!1171983 () Bool)

(assert (=> b!1275869 m!1171983))

(check-sat (not b!1275866) (not b!1275869) (not start!108066) tp_is_empty!33303 (not mapNonEmpty!51482))
(check-sat)
