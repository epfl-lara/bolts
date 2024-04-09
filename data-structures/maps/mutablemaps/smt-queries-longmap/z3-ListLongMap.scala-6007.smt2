; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77924 () Bool)

(assert start!77924)

(declare-fun b_free!16455 () Bool)

(declare-fun b_next!16455 () Bool)

(assert (=> start!77924 (= b_free!16455 (not b_next!16455))))

(declare-fun tp!57630 () Bool)

(declare-fun b_and!27041 () Bool)

(assert (=> start!77924 (= tp!57630 b_and!27041)))

(declare-fun res!613882 () Bool)

(declare-fun e!509803 () Bool)

(assert (=> start!77924 (=> (not res!613882) (not e!509803))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77924 (= res!613882 (validMask!0 mask!1756))))

(assert (=> start!77924 e!509803))

(declare-datatypes ((V!30129 0))(
  ( (V!30130 (val!9487 Int)) )
))
(declare-datatypes ((ValueCell!8955 0))(
  ( (ValueCellFull!8955 (v!11994 V!30129)) (EmptyCell!8955) )
))
(declare-datatypes ((array!53762 0))(
  ( (array!53763 (arr!25835 (Array (_ BitVec 32) ValueCell!8955)) (size!26295 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53762)

(declare-fun e!509804 () Bool)

(declare-fun array_inv!20190 (array!53762) Bool)

(assert (=> start!77924 (and (array_inv!20190 _values!1152) e!509804)))

(assert (=> start!77924 tp!57630))

(assert (=> start!77924 true))

(declare-fun tp_is_empty!18873 () Bool)

(assert (=> start!77924 tp_is_empty!18873))

(declare-datatypes ((array!53764 0))(
  ( (array!53765 (arr!25836 (Array (_ BitVec 32) (_ BitVec 64))) (size!26296 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53764)

(declare-fun array_inv!20191 (array!53764) Bool)

(assert (=> start!77924 (array_inv!20191 _keys!1386)))

(declare-fun b!909388 () Bool)

(declare-fun e!509802 () Bool)

(declare-fun mapRes!30025 () Bool)

(assert (=> b!909388 (= e!509804 (and e!509802 mapRes!30025))))

(declare-fun condMapEmpty!30025 () Bool)

(declare-fun mapDefault!30025 () ValueCell!8955)

(assert (=> b!909388 (= condMapEmpty!30025 (= (arr!25835 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8955)) mapDefault!30025)))))

(declare-fun b!909389 () Bool)

(declare-fun res!613881 () Bool)

(assert (=> b!909389 (=> (not res!613881) (not e!509803))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909389 (= res!613881 (and (= (size!26295 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26296 _keys!1386) (size!26295 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909390 () Bool)

(declare-fun e!509800 () Bool)

(assert (=> b!909390 (= e!509800 tp_is_empty!18873)))

(declare-fun mapNonEmpty!30025 () Bool)

(declare-fun tp!57631 () Bool)

(assert (=> mapNonEmpty!30025 (= mapRes!30025 (and tp!57631 e!509800))))

(declare-fun mapKey!30025 () (_ BitVec 32))

(declare-fun mapRest!30025 () (Array (_ BitVec 32) ValueCell!8955))

(declare-fun mapValue!30025 () ValueCell!8955)

(assert (=> mapNonEmpty!30025 (= (arr!25835 _values!1152) (store mapRest!30025 mapKey!30025 mapValue!30025))))

(declare-fun b!909391 () Bool)

(assert (=> b!909391 (= e!509802 tp_is_empty!18873)))

(declare-fun b!909392 () Bool)

(assert (=> b!909392 (= e!509803 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30129)

(declare-fun lt!409954 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30129)

(declare-datatypes ((tuple2!12390 0))(
  ( (tuple2!12391 (_1!6205 (_ BitVec 64)) (_2!6205 V!30129)) )
))
(declare-datatypes ((List!18247 0))(
  ( (Nil!18244) (Cons!18243 (h!19389 tuple2!12390) (t!25836 List!18247)) )
))
(declare-datatypes ((ListLongMap!11101 0))(
  ( (ListLongMap!11102 (toList!5566 List!18247)) )
))
(declare-fun contains!4573 (ListLongMap!11101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2796 (array!53764 array!53762 (_ BitVec 32) (_ BitVec 32) V!30129 V!30129 (_ BitVec 32) Int) ListLongMap!11101)

(assert (=> b!909392 (= lt!409954 (contains!4573 (getCurrentListMap!2796 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909393 () Bool)

(declare-fun res!613879 () Bool)

(assert (=> b!909393 (=> (not res!613879) (not e!509803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53764 (_ BitVec 32)) Bool)

(assert (=> b!909393 (= res!613879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909394 () Bool)

(declare-fun res!613880 () Bool)

(assert (=> b!909394 (=> (not res!613880) (not e!509803))))

(declare-datatypes ((List!18248 0))(
  ( (Nil!18245) (Cons!18244 (h!19390 (_ BitVec 64)) (t!25837 List!18248)) )
))
(declare-fun arrayNoDuplicates!0 (array!53764 (_ BitVec 32) List!18248) Bool)

(assert (=> b!909394 (= res!613880 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18245))))

(declare-fun mapIsEmpty!30025 () Bool)

(assert (=> mapIsEmpty!30025 mapRes!30025))

(assert (= (and start!77924 res!613882) b!909389))

(assert (= (and b!909389 res!613881) b!909393))

(assert (= (and b!909393 res!613879) b!909394))

(assert (= (and b!909394 res!613880) b!909392))

(assert (= (and b!909388 condMapEmpty!30025) mapIsEmpty!30025))

(assert (= (and b!909388 (not condMapEmpty!30025)) mapNonEmpty!30025))

(get-info :version)

(assert (= (and mapNonEmpty!30025 ((_ is ValueCellFull!8955) mapValue!30025)) b!909390))

(assert (= (and b!909388 ((_ is ValueCellFull!8955) mapDefault!30025)) b!909391))

(assert (= start!77924 b!909388))

(declare-fun m!844717 () Bool)

(assert (=> b!909393 m!844717))

(declare-fun m!844719 () Bool)

(assert (=> start!77924 m!844719))

(declare-fun m!844721 () Bool)

(assert (=> start!77924 m!844721))

(declare-fun m!844723 () Bool)

(assert (=> start!77924 m!844723))

(declare-fun m!844725 () Bool)

(assert (=> b!909394 m!844725))

(declare-fun m!844727 () Bool)

(assert (=> b!909392 m!844727))

(assert (=> b!909392 m!844727))

(declare-fun m!844729 () Bool)

(assert (=> b!909392 m!844729))

(declare-fun m!844731 () Bool)

(assert (=> mapNonEmpty!30025 m!844731))

(check-sat (not b!909394) (not b_next!16455) (not b!909393) b_and!27041 (not start!77924) (not mapNonEmpty!30025) tp_is_empty!18873 (not b!909392))
(check-sat b_and!27041 (not b_next!16455))
