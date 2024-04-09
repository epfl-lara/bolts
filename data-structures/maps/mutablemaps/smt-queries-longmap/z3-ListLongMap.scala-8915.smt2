; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108196 () Bool)

(assert start!108196)

(declare-fun b_free!27855 () Bool)

(declare-fun b_next!27855 () Bool)

(assert (=> start!108196 (= b_free!27855 (not b_next!27855))))

(declare-fun tp!98523 () Bool)

(declare-fun b_and!45923 () Bool)

(assert (=> start!108196 (= tp!98523 b_and!45923)))

(declare-fun mapNonEmpty!51641 () Bool)

(declare-fun mapRes!51641 () Bool)

(declare-fun tp!98522 () Bool)

(declare-fun e!729403 () Bool)

(assert (=> mapNonEmpty!51641 (= mapRes!51641 (and tp!98522 e!729403))))

(declare-fun mapKey!51641 () (_ BitVec 32))

(declare-datatypes ((V!49643 0))(
  ( (V!49644 (val!16777 Int)) )
))
(declare-datatypes ((ValueCell!15804 0))(
  ( (ValueCellFull!15804 (v!19373 V!49643)) (EmptyCell!15804) )
))
(declare-fun mapValue!51641 () ValueCell!15804)

(declare-fun mapRest!51641 () (Array (_ BitVec 32) ValueCell!15804))

(declare-datatypes ((array!83853 0))(
  ( (array!83854 (arr!40432 (Array (_ BitVec 32) ValueCell!15804)) (size!40983 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83853)

(assert (=> mapNonEmpty!51641 (= (arr!40432 _values!1187) (store mapRest!51641 mapKey!51641 mapValue!51641))))

(declare-fun b!1277179 () Bool)

(declare-fun res!848759 () Bool)

(declare-fun e!729401 () Bool)

(assert (=> b!1277179 (=> (not res!848759) (not e!729401))))

(declare-datatypes ((array!83855 0))(
  ( (array!83856 (arr!40433 (Array (_ BitVec 32) (_ BitVec 64))) (size!40984 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83855)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83855 (_ BitVec 32)) Bool)

(assert (=> b!1277179 (= res!848759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51641 () Bool)

(assert (=> mapIsEmpty!51641 mapRes!51641))

(declare-fun b!1277180 () Bool)

(declare-fun res!848760 () Bool)

(assert (=> b!1277180 (=> (not res!848760) (not e!729401))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1277180 (= res!848760 (and (= (size!40983 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40984 _keys!1427) (size!40983 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277181 () Bool)

(declare-fun e!729400 () Bool)

(declare-fun e!729402 () Bool)

(assert (=> b!1277181 (= e!729400 (and e!729402 mapRes!51641))))

(declare-fun condMapEmpty!51641 () Bool)

(declare-fun mapDefault!51641 () ValueCell!15804)

(assert (=> b!1277181 (= condMapEmpty!51641 (= (arr!40432 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15804)) mapDefault!51641)))))

(declare-fun b!1277182 () Bool)

(declare-fun tp_is_empty!33405 () Bool)

(assert (=> b!1277182 (= e!729402 tp_is_empty!33405)))

(declare-fun b!1277183 () Bool)

(assert (=> b!1277183 (= e!729403 tp_is_empty!33405)))

(declare-fun res!848757 () Bool)

(assert (=> start!108196 (=> (not res!848757) (not e!729401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108196 (= res!848757 (validMask!0 mask!1805))))

(assert (=> start!108196 e!729401))

(assert (=> start!108196 true))

(assert (=> start!108196 tp!98523))

(assert (=> start!108196 tp_is_empty!33405))

(declare-fun array_inv!30687 (array!83853) Bool)

(assert (=> start!108196 (and (array_inv!30687 _values!1187) e!729400)))

(declare-fun array_inv!30688 (array!83855) Bool)

(assert (=> start!108196 (array_inv!30688 _keys!1427)))

(declare-fun b!1277184 () Bool)

(assert (=> b!1277184 (= e!729401 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49643)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun lt!575610 () Bool)

(declare-fun zeroValue!1129 () V!49643)

(declare-datatypes ((tuple2!21668 0))(
  ( (tuple2!21669 (_1!10844 (_ BitVec 64)) (_2!10844 V!49643)) )
))
(declare-datatypes ((List!28853 0))(
  ( (Nil!28850) (Cons!28849 (h!30058 tuple2!21668) (t!42398 List!28853)) )
))
(declare-datatypes ((ListLongMap!19337 0))(
  ( (ListLongMap!19338 (toList!9684 List!28853)) )
))
(declare-fun contains!7732 (ListLongMap!19337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4704 (array!83855 array!83853 (_ BitVec 32) (_ BitVec 32) V!49643 V!49643 (_ BitVec 32) Int) ListLongMap!19337)

(assert (=> b!1277184 (= lt!575610 (contains!7732 (getCurrentListMap!4704 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277185 () Bool)

(declare-fun res!848758 () Bool)

(assert (=> b!1277185 (=> (not res!848758) (not e!729401))))

(declare-datatypes ((List!28854 0))(
  ( (Nil!28851) (Cons!28850 (h!30059 (_ BitVec 64)) (t!42399 List!28854)) )
))
(declare-fun arrayNoDuplicates!0 (array!83855 (_ BitVec 32) List!28854) Bool)

(assert (=> b!1277185 (= res!848758 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28851))))

(assert (= (and start!108196 res!848757) b!1277180))

(assert (= (and b!1277180 res!848760) b!1277179))

(assert (= (and b!1277179 res!848759) b!1277185))

(assert (= (and b!1277185 res!848758) b!1277184))

(assert (= (and b!1277181 condMapEmpty!51641) mapIsEmpty!51641))

(assert (= (and b!1277181 (not condMapEmpty!51641)) mapNonEmpty!51641))

(get-info :version)

(assert (= (and mapNonEmpty!51641 ((_ is ValueCellFull!15804) mapValue!51641)) b!1277183))

(assert (= (and b!1277181 ((_ is ValueCellFull!15804) mapDefault!51641)) b!1277182))

(assert (= start!108196 b!1277181))

(declare-fun m!1172883 () Bool)

(assert (=> b!1277184 m!1172883))

(assert (=> b!1277184 m!1172883))

(declare-fun m!1172885 () Bool)

(assert (=> b!1277184 m!1172885))

(declare-fun m!1172887 () Bool)

(assert (=> b!1277179 m!1172887))

(declare-fun m!1172889 () Bool)

(assert (=> b!1277185 m!1172889))

(declare-fun m!1172891 () Bool)

(assert (=> start!108196 m!1172891))

(declare-fun m!1172893 () Bool)

(assert (=> start!108196 m!1172893))

(declare-fun m!1172895 () Bool)

(assert (=> start!108196 m!1172895))

(declare-fun m!1172897 () Bool)

(assert (=> mapNonEmpty!51641 m!1172897))

(check-sat (not b!1277185) (not b_next!27855) (not start!108196) (not b!1277184) (not b!1277179) (not mapNonEmpty!51641) b_and!45923 tp_is_empty!33405)
(check-sat b_and!45923 (not b_next!27855))
