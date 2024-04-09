; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4446 () Bool)

(assert start!4446)

(declare-fun b_free!1209 () Bool)

(declare-fun b_next!1209 () Bool)

(assert (=> start!4446 (= b_free!1209 (not b_next!1209))))

(declare-fun tp!5065 () Bool)

(declare-fun b_and!2033 () Bool)

(assert (=> start!4446 (= tp!5065 b_and!2033)))

(declare-fun b!34380 () Bool)

(declare-fun e!21818 () Bool)

(declare-fun tp_is_empty!1563 () Bool)

(assert (=> b!34380 (= e!21818 tp_is_empty!1563)))

(declare-fun mapIsEmpty!1891 () Bool)

(declare-fun mapRes!1891 () Bool)

(assert (=> mapIsEmpty!1891 mapRes!1891))

(declare-fun b!34381 () Bool)

(declare-fun res!20831 () Bool)

(declare-fun e!21820 () Bool)

(assert (=> b!34381 (=> (not res!20831) (not e!21820))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1909 0))(
  ( (V!1910 (val!808 Int)) )
))
(declare-datatypes ((ValueCell!582 0))(
  ( (ValueCellFull!582 (v!1903 V!1909)) (EmptyCell!582) )
))
(declare-datatypes ((array!2333 0))(
  ( (array!2334 (arr!1114 (Array (_ BitVec 32) ValueCell!582)) (size!1215 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2333)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!2335 0))(
  ( (array!2336 (arr!1115 (Array (_ BitVec 32) (_ BitVec 64))) (size!1216 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2335)

(declare-fun zeroValue!1443 () V!1909)

(declare-fun minValue!1443 () V!1909)

(declare-datatypes ((tuple2!1300 0))(
  ( (tuple2!1301 (_1!660 (_ BitVec 64)) (_2!660 V!1909)) )
))
(declare-datatypes ((List!904 0))(
  ( (Nil!901) (Cons!900 (h!1467 tuple2!1300) (t!3611 List!904)) )
))
(declare-datatypes ((ListLongMap!881 0))(
  ( (ListLongMap!882 (toList!456 List!904)) )
))
(declare-fun contains!399 (ListLongMap!881 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!277 (array!2335 array!2333 (_ BitVec 32) (_ BitVec 32) V!1909 V!1909 (_ BitVec 32) Int) ListLongMap!881)

(assert (=> b!34381 (= res!20831 (not (contains!399 (getCurrentListMap!277 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!34382 () Bool)

(assert (=> b!34382 (= e!21820 false)))

(declare-datatypes ((SeekEntryResult!148 0))(
  ( (MissingZero!148 (index!2714 (_ BitVec 32))) (Found!148 (index!2715 (_ BitVec 32))) (Intermediate!148 (undefined!960 Bool) (index!2716 (_ BitVec 32)) (x!6910 (_ BitVec 32))) (Undefined!148) (MissingVacant!148 (index!2717 (_ BitVec 32))) )
))
(declare-fun lt!12781 () SeekEntryResult!148)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2335 (_ BitVec 32)) SeekEntryResult!148)

(assert (=> b!34382 (= lt!12781 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34383 () Bool)

(declare-fun e!21822 () Bool)

(declare-fun e!21819 () Bool)

(assert (=> b!34383 (= e!21822 (and e!21819 mapRes!1891))))

(declare-fun condMapEmpty!1891 () Bool)

(declare-fun mapDefault!1891 () ValueCell!582)

(assert (=> b!34383 (= condMapEmpty!1891 (= (arr!1114 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!582)) mapDefault!1891)))))

(declare-fun res!20833 () Bool)

(assert (=> start!4446 (=> (not res!20833) (not e!21820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4446 (= res!20833 (validMask!0 mask!2294))))

(assert (=> start!4446 e!21820))

(assert (=> start!4446 true))

(assert (=> start!4446 tp!5065))

(declare-fun array_inv!741 (array!2333) Bool)

(assert (=> start!4446 (and (array_inv!741 _values!1501) e!21822)))

(declare-fun array_inv!742 (array!2335) Bool)

(assert (=> start!4446 (array_inv!742 _keys!1833)))

(assert (=> start!4446 tp_is_empty!1563))

(declare-fun b!34384 () Bool)

(declare-fun res!20830 () Bool)

(assert (=> b!34384 (=> (not res!20830) (not e!21820))))

(declare-fun arrayContainsKey!0 (array!2335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34384 (= res!20830 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34385 () Bool)

(declare-fun res!20832 () Bool)

(assert (=> b!34385 (=> (not res!20832) (not e!21820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34385 (= res!20832 (validKeyInArray!0 k0!1304))))

(declare-fun b!34386 () Bool)

(assert (=> b!34386 (= e!21819 tp_is_empty!1563)))

(declare-fun b!34387 () Bool)

(declare-fun res!20828 () Bool)

(assert (=> b!34387 (=> (not res!20828) (not e!21820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2335 (_ BitVec 32)) Bool)

(assert (=> b!34387 (= res!20828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34388 () Bool)

(declare-fun res!20829 () Bool)

(assert (=> b!34388 (=> (not res!20829) (not e!21820))))

(assert (=> b!34388 (= res!20829 (and (= (size!1215 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1216 _keys!1833) (size!1215 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1891 () Bool)

(declare-fun tp!5064 () Bool)

(assert (=> mapNonEmpty!1891 (= mapRes!1891 (and tp!5064 e!21818))))

(declare-fun mapKey!1891 () (_ BitVec 32))

(declare-fun mapRest!1891 () (Array (_ BitVec 32) ValueCell!582))

(declare-fun mapValue!1891 () ValueCell!582)

(assert (=> mapNonEmpty!1891 (= (arr!1114 _values!1501) (store mapRest!1891 mapKey!1891 mapValue!1891))))

(declare-fun b!34389 () Bool)

(declare-fun res!20827 () Bool)

(assert (=> b!34389 (=> (not res!20827) (not e!21820))))

(declare-datatypes ((List!905 0))(
  ( (Nil!902) (Cons!901 (h!1468 (_ BitVec 64)) (t!3612 List!905)) )
))
(declare-fun arrayNoDuplicates!0 (array!2335 (_ BitVec 32) List!905) Bool)

(assert (=> b!34389 (= res!20827 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!902))))

(assert (= (and start!4446 res!20833) b!34388))

(assert (= (and b!34388 res!20829) b!34387))

(assert (= (and b!34387 res!20828) b!34389))

(assert (= (and b!34389 res!20827) b!34385))

(assert (= (and b!34385 res!20832) b!34381))

(assert (= (and b!34381 res!20831) b!34384))

(assert (= (and b!34384 res!20830) b!34382))

(assert (= (and b!34383 condMapEmpty!1891) mapIsEmpty!1891))

(assert (= (and b!34383 (not condMapEmpty!1891)) mapNonEmpty!1891))

(get-info :version)

(assert (= (and mapNonEmpty!1891 ((_ is ValueCellFull!582) mapValue!1891)) b!34380))

(assert (= (and b!34383 ((_ is ValueCellFull!582) mapDefault!1891)) b!34386))

(assert (= start!4446 b!34383))

(declare-fun m!27735 () Bool)

(assert (=> b!34389 m!27735))

(declare-fun m!27737 () Bool)

(assert (=> b!34387 m!27737))

(declare-fun m!27739 () Bool)

(assert (=> b!34381 m!27739))

(assert (=> b!34381 m!27739))

(declare-fun m!27741 () Bool)

(assert (=> b!34381 m!27741))

(declare-fun m!27743 () Bool)

(assert (=> b!34384 m!27743))

(declare-fun m!27745 () Bool)

(assert (=> mapNonEmpty!1891 m!27745))

(declare-fun m!27747 () Bool)

(assert (=> start!4446 m!27747))

(declare-fun m!27749 () Bool)

(assert (=> start!4446 m!27749))

(declare-fun m!27751 () Bool)

(assert (=> start!4446 m!27751))

(declare-fun m!27753 () Bool)

(assert (=> b!34385 m!27753))

(declare-fun m!27755 () Bool)

(assert (=> b!34382 m!27755))

(check-sat (not b!34385) (not b!34384) (not b_next!1209) (not b!34389) tp_is_empty!1563 b_and!2033 (not mapNonEmpty!1891) (not start!4446) (not b!34381) (not b!34382) (not b!34387))
(check-sat b_and!2033 (not b_next!1209))
