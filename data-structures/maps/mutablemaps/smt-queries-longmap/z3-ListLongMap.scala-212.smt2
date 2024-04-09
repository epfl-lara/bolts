; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3954 () Bool)

(assert start!3954)

(declare-fun b_free!861 () Bool)

(declare-fun b_next!861 () Bool)

(assert (=> start!3954 (= b_free!861 (not b_next!861))))

(declare-fun tp!4002 () Bool)

(declare-fun b_and!1673 () Bool)

(assert (=> start!3954 (= tp!4002 b_and!1673)))

(declare-fun b!28325 () Bool)

(declare-fun e!18323 () Bool)

(assert (=> b!28325 (= e!18323 false)))

(declare-fun lt!10776 () (_ BitVec 32))

(declare-datatypes ((array!1655 0))(
  ( (array!1656 (arr!781 (Array (_ BitVec 32) (_ BitVec 64))) (size!882 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1655)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1655 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28325 (= lt!10776 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28326 () Bool)

(declare-fun res!16843 () Bool)

(assert (=> b!28326 (=> (not res!16843) (not e!18323))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1445 0))(
  ( (V!1446 (val!634 Int)) )
))
(declare-datatypes ((ValueCell!408 0))(
  ( (ValueCellFull!408 (v!1723 V!1445)) (EmptyCell!408) )
))
(declare-datatypes ((array!1657 0))(
  ( (array!1658 (arr!782 (Array (_ BitVec 32) ValueCell!408)) (size!883 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1657)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1445)

(declare-fun minValue!1443 () V!1445)

(declare-datatypes ((tuple2!1038 0))(
  ( (tuple2!1039 (_1!529 (_ BitVec 64)) (_2!529 V!1445)) )
))
(declare-datatypes ((List!653 0))(
  ( (Nil!650) (Cons!649 (h!1216 tuple2!1038) (t!3348 List!653)) )
))
(declare-datatypes ((ListLongMap!619 0))(
  ( (ListLongMap!620 (toList!325 List!653)) )
))
(declare-fun contains!262 (ListLongMap!619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!153 (array!1655 array!1657 (_ BitVec 32) (_ BitVec 32) V!1445 V!1445 (_ BitVec 32) Int) ListLongMap!619)

(assert (=> b!28326 (= res!16843 (not (contains!262 (getCurrentListMap!153 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun res!16844 () Bool)

(assert (=> start!3954 (=> (not res!16844) (not e!18323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3954 (= res!16844 (validMask!0 mask!2294))))

(assert (=> start!3954 e!18323))

(assert (=> start!3954 true))

(assert (=> start!3954 tp!4002))

(declare-fun e!18325 () Bool)

(declare-fun array_inv!531 (array!1657) Bool)

(assert (=> start!3954 (and (array_inv!531 _values!1501) e!18325)))

(declare-fun array_inv!532 (array!1655) Bool)

(assert (=> start!3954 (array_inv!532 _keys!1833)))

(declare-fun tp_is_empty!1215 () Bool)

(assert (=> start!3954 tp_is_empty!1215))

(declare-fun b!28327 () Bool)

(declare-fun res!16840 () Bool)

(assert (=> b!28327 (=> (not res!16840) (not e!18323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28327 (= res!16840 (validKeyInArray!0 k0!1304))))

(declare-fun b!28328 () Bool)

(declare-fun res!16841 () Bool)

(assert (=> b!28328 (=> (not res!16841) (not e!18323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1655 (_ BitVec 32)) Bool)

(assert (=> b!28328 (= res!16841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28329 () Bool)

(declare-fun res!16846 () Bool)

(assert (=> b!28329 (=> (not res!16846) (not e!18323))))

(declare-datatypes ((List!654 0))(
  ( (Nil!651) (Cons!650 (h!1217 (_ BitVec 64)) (t!3349 List!654)) )
))
(declare-fun arrayNoDuplicates!0 (array!1655 (_ BitVec 32) List!654) Bool)

(assert (=> b!28329 (= res!16846 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!651))))

(declare-fun mapNonEmpty!1351 () Bool)

(declare-fun mapRes!1351 () Bool)

(declare-fun tp!4003 () Bool)

(declare-fun e!18322 () Bool)

(assert (=> mapNonEmpty!1351 (= mapRes!1351 (and tp!4003 e!18322))))

(declare-fun mapValue!1351 () ValueCell!408)

(declare-fun mapKey!1351 () (_ BitVec 32))

(declare-fun mapRest!1351 () (Array (_ BitVec 32) ValueCell!408))

(assert (=> mapNonEmpty!1351 (= (arr!782 _values!1501) (store mapRest!1351 mapKey!1351 mapValue!1351))))

(declare-fun mapIsEmpty!1351 () Bool)

(assert (=> mapIsEmpty!1351 mapRes!1351))

(declare-fun b!28330 () Bool)

(declare-fun e!18321 () Bool)

(assert (=> b!28330 (= e!18321 tp_is_empty!1215)))

(declare-fun b!28331 () Bool)

(assert (=> b!28331 (= e!18325 (and e!18321 mapRes!1351))))

(declare-fun condMapEmpty!1351 () Bool)

(declare-fun mapDefault!1351 () ValueCell!408)

(assert (=> b!28331 (= condMapEmpty!1351 (= (arr!782 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!408)) mapDefault!1351)))))

(declare-fun b!28332 () Bool)

(declare-fun res!16845 () Bool)

(assert (=> b!28332 (=> (not res!16845) (not e!18323))))

(declare-fun arrayContainsKey!0 (array!1655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28332 (= res!16845 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28333 () Bool)

(declare-fun res!16842 () Bool)

(assert (=> b!28333 (=> (not res!16842) (not e!18323))))

(assert (=> b!28333 (= res!16842 (and (= (size!883 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!882 _keys!1833) (size!883 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28334 () Bool)

(assert (=> b!28334 (= e!18322 tp_is_empty!1215)))

(assert (= (and start!3954 res!16844) b!28333))

(assert (= (and b!28333 res!16842) b!28328))

(assert (= (and b!28328 res!16841) b!28329))

(assert (= (and b!28329 res!16846) b!28327))

(assert (= (and b!28327 res!16840) b!28326))

(assert (= (and b!28326 res!16843) b!28332))

(assert (= (and b!28332 res!16845) b!28325))

(assert (= (and b!28331 condMapEmpty!1351) mapIsEmpty!1351))

(assert (= (and b!28331 (not condMapEmpty!1351)) mapNonEmpty!1351))

(get-info :version)

(assert (= (and mapNonEmpty!1351 ((_ is ValueCellFull!408) mapValue!1351)) b!28334))

(assert (= (and b!28331 ((_ is ValueCellFull!408) mapDefault!1351)) b!28330))

(assert (= start!3954 b!28331))

(declare-fun m!22555 () Bool)

(assert (=> b!28328 m!22555))

(declare-fun m!22557 () Bool)

(assert (=> mapNonEmpty!1351 m!22557))

(declare-fun m!22559 () Bool)

(assert (=> b!28326 m!22559))

(assert (=> b!28326 m!22559))

(declare-fun m!22561 () Bool)

(assert (=> b!28326 m!22561))

(declare-fun m!22563 () Bool)

(assert (=> start!3954 m!22563))

(declare-fun m!22565 () Bool)

(assert (=> start!3954 m!22565))

(declare-fun m!22567 () Bool)

(assert (=> start!3954 m!22567))

(declare-fun m!22569 () Bool)

(assert (=> b!28332 m!22569))

(declare-fun m!22571 () Bool)

(assert (=> b!28329 m!22571))

(declare-fun m!22573 () Bool)

(assert (=> b!28325 m!22573))

(declare-fun m!22575 () Bool)

(assert (=> b!28327 m!22575))

(check-sat (not b!28328) (not start!3954) (not b!28332) (not b!28327) (not b_next!861) (not b!28325) tp_is_empty!1215 b_and!1673 (not b!28329) (not b!28326) (not mapNonEmpty!1351))
(check-sat b_and!1673 (not b_next!861))
