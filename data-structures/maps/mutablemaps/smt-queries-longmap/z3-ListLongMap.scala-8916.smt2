; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108202 () Bool)

(assert start!108202)

(declare-fun b_free!27861 () Bool)

(declare-fun b_next!27861 () Bool)

(assert (=> start!108202 (= b_free!27861 (not b_next!27861))))

(declare-fun tp!98541 () Bool)

(declare-fun b_and!45929 () Bool)

(assert (=> start!108202 (= tp!98541 b_and!45929)))

(declare-fun mapIsEmpty!51650 () Bool)

(declare-fun mapRes!51650 () Bool)

(assert (=> mapIsEmpty!51650 mapRes!51650))

(declare-fun b!1277243 () Bool)

(declare-fun e!729447 () Bool)

(declare-fun tp_is_empty!33411 () Bool)

(assert (=> b!1277243 (= e!729447 tp_is_empty!33411)))

(declare-fun b!1277244 () Bool)

(declare-fun e!729448 () Bool)

(declare-fun e!729446 () Bool)

(assert (=> b!1277244 (= e!729448 (and e!729446 mapRes!51650))))

(declare-fun condMapEmpty!51650 () Bool)

(declare-datatypes ((V!49651 0))(
  ( (V!49652 (val!16780 Int)) )
))
(declare-datatypes ((ValueCell!15807 0))(
  ( (ValueCellFull!15807 (v!19376 V!49651)) (EmptyCell!15807) )
))
(declare-datatypes ((array!83863 0))(
  ( (array!83864 (arr!40437 (Array (_ BitVec 32) ValueCell!15807)) (size!40988 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83863)

(declare-fun mapDefault!51650 () ValueCell!15807)

(assert (=> b!1277244 (= condMapEmpty!51650 (= (arr!40437 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15807)) mapDefault!51650)))))

(declare-fun b!1277245 () Bool)

(declare-fun res!848794 () Bool)

(declare-fun e!729445 () Bool)

(assert (=> b!1277245 (=> (not res!848794) (not e!729445))))

(declare-datatypes ((array!83865 0))(
  ( (array!83866 (arr!40438 (Array (_ BitVec 32) (_ BitVec 64))) (size!40989 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83865)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83865 (_ BitVec 32)) Bool)

(assert (=> b!1277245 (= res!848794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277246 () Bool)

(declare-fun res!848793 () Bool)

(assert (=> b!1277246 (=> (not res!848793) (not e!729445))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1277246 (= res!848793 (and (= (size!40988 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40989 _keys!1427) (size!40988 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51650 () Bool)

(declare-fun tp!98540 () Bool)

(assert (=> mapNonEmpty!51650 (= mapRes!51650 (and tp!98540 e!729447))))

(declare-fun mapRest!51650 () (Array (_ BitVec 32) ValueCell!15807))

(declare-fun mapValue!51650 () ValueCell!15807)

(declare-fun mapKey!51650 () (_ BitVec 32))

(assert (=> mapNonEmpty!51650 (= (arr!40437 _values!1187) (store mapRest!51650 mapKey!51650 mapValue!51650))))

(declare-fun b!1277247 () Bool)

(declare-fun res!848795 () Bool)

(assert (=> b!1277247 (=> (not res!848795) (not e!729445))))

(declare-datatypes ((List!28856 0))(
  ( (Nil!28853) (Cons!28852 (h!30061 (_ BitVec 64)) (t!42401 List!28856)) )
))
(declare-fun arrayNoDuplicates!0 (array!83865 (_ BitVec 32) List!28856) Bool)

(assert (=> b!1277247 (= res!848795 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28853))))

(declare-fun b!1277248 () Bool)

(assert (=> b!1277248 (= e!729446 tp_is_empty!33411)))

(declare-fun res!848796 () Bool)

(assert (=> start!108202 (=> (not res!848796) (not e!729445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108202 (= res!848796 (validMask!0 mask!1805))))

(assert (=> start!108202 e!729445))

(assert (=> start!108202 true))

(assert (=> start!108202 tp!98541))

(assert (=> start!108202 tp_is_empty!33411))

(declare-fun array_inv!30689 (array!83863) Bool)

(assert (=> start!108202 (and (array_inv!30689 _values!1187) e!729448)))

(declare-fun array_inv!30690 (array!83865) Bool)

(assert (=> start!108202 (array_inv!30690 _keys!1427)))

(declare-fun b!1277242 () Bool)

(assert (=> b!1277242 (= e!729445 false)))

(declare-fun lt!575619 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49651)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49651)

(declare-datatypes ((tuple2!21672 0))(
  ( (tuple2!21673 (_1!10846 (_ BitVec 64)) (_2!10846 V!49651)) )
))
(declare-datatypes ((List!28857 0))(
  ( (Nil!28854) (Cons!28853 (h!30062 tuple2!21672) (t!42402 List!28857)) )
))
(declare-datatypes ((ListLongMap!19341 0))(
  ( (ListLongMap!19342 (toList!9686 List!28857)) )
))
(declare-fun contains!7734 (ListLongMap!19341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4706 (array!83865 array!83863 (_ BitVec 32) (_ BitVec 32) V!49651 V!49651 (_ BitVec 32) Int) ListLongMap!19341)

(assert (=> b!1277242 (= lt!575619 (contains!7734 (getCurrentListMap!4706 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(assert (= (and start!108202 res!848796) b!1277246))

(assert (= (and b!1277246 res!848793) b!1277245))

(assert (= (and b!1277245 res!848794) b!1277247))

(assert (= (and b!1277247 res!848795) b!1277242))

(assert (= (and b!1277244 condMapEmpty!51650) mapIsEmpty!51650))

(assert (= (and b!1277244 (not condMapEmpty!51650)) mapNonEmpty!51650))

(get-info :version)

(assert (= (and mapNonEmpty!51650 ((_ is ValueCellFull!15807) mapValue!51650)) b!1277243))

(assert (= (and b!1277244 ((_ is ValueCellFull!15807) mapDefault!51650)) b!1277248))

(assert (= start!108202 b!1277244))

(declare-fun m!1172931 () Bool)

(assert (=> start!108202 m!1172931))

(declare-fun m!1172933 () Bool)

(assert (=> start!108202 m!1172933))

(declare-fun m!1172935 () Bool)

(assert (=> start!108202 m!1172935))

(declare-fun m!1172937 () Bool)

(assert (=> b!1277245 m!1172937))

(declare-fun m!1172939 () Bool)

(assert (=> b!1277242 m!1172939))

(assert (=> b!1277242 m!1172939))

(declare-fun m!1172941 () Bool)

(assert (=> b!1277242 m!1172941))

(declare-fun m!1172943 () Bool)

(assert (=> b!1277247 m!1172943))

(declare-fun m!1172945 () Bool)

(assert (=> mapNonEmpty!51650 m!1172945))

(check-sat (not b!1277247) (not mapNonEmpty!51650) (not b!1277242) (not start!108202) (not b!1277245) b_and!45929 (not b_next!27861) tp_is_empty!33411)
(check-sat b_and!45929 (not b_next!27861))
