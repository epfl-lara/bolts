; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41712 () Bool)

(assert start!41712)

(declare-fun b_free!11343 () Bool)

(declare-fun b_next!11343 () Bool)

(assert (=> start!41712 (= b_free!11343 (not b_next!11343))))

(declare-fun tp!40033 () Bool)

(declare-fun b_and!19717 () Bool)

(assert (=> start!41712 (= tp!40033 b_and!19717)))

(declare-fun b!465455 () Bool)

(declare-fun res!278300 () Bool)

(declare-fun e!272058 () Bool)

(assert (=> b!465455 (=> (not res!278300) (not e!272058))))

(declare-datatypes ((array!29279 0))(
  ( (array!29280 (arr!14066 (Array (_ BitVec 32) (_ BitVec 64))) (size!14418 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29279)

(declare-datatypes ((List!8529 0))(
  ( (Nil!8526) (Cons!8525 (h!9381 (_ BitVec 64)) (t!14487 List!8529)) )
))
(declare-fun arrayNoDuplicates!0 (array!29279 (_ BitVec 32) List!8529) Bool)

(assert (=> b!465455 (= res!278300 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8526))))

(declare-fun mapIsEmpty!20839 () Bool)

(declare-fun mapRes!20839 () Bool)

(assert (=> mapIsEmpty!20839 mapRes!20839))

(declare-fun res!278298 () Bool)

(assert (=> start!41712 (=> (not res!278298) (not e!272058))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41712 (= res!278298 (validMask!0 mask!1365))))

(assert (=> start!41712 e!272058))

(declare-fun tp_is_empty!12771 () Bool)

(assert (=> start!41712 tp_is_empty!12771))

(assert (=> start!41712 tp!40033))

(assert (=> start!41712 true))

(declare-fun array_inv!10140 (array!29279) Bool)

(assert (=> start!41712 (array_inv!10140 _keys!1025)))

(declare-datatypes ((V!18133 0))(
  ( (V!18134 (val!6430 Int)) )
))
(declare-datatypes ((ValueCell!6042 0))(
  ( (ValueCellFull!6042 (v!8713 V!18133)) (EmptyCell!6042) )
))
(declare-datatypes ((array!29281 0))(
  ( (array!29282 (arr!14067 (Array (_ BitVec 32) ValueCell!6042)) (size!14419 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29281)

(declare-fun e!272053 () Bool)

(declare-fun array_inv!10141 (array!29281) Bool)

(assert (=> start!41712 (and (array_inv!10141 _values!833) e!272053)))

(declare-fun b!465456 () Bool)

(declare-fun e!272054 () Bool)

(assert (=> b!465456 (= e!272054 tp_is_empty!12771)))

(declare-fun b!465457 () Bool)

(declare-fun e!272056 () Bool)

(assert (=> b!465457 (= e!272056 true)))

(declare-fun zeroValue!794 () V!18133)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8406 0))(
  ( (tuple2!8407 (_1!4213 (_ BitVec 64)) (_2!4213 V!18133)) )
))
(declare-datatypes ((List!8530 0))(
  ( (Nil!8527) (Cons!8526 (h!9382 tuple2!8406) (t!14488 List!8530)) )
))
(declare-datatypes ((ListLongMap!7333 0))(
  ( (ListLongMap!7334 (toList!3682 List!8530)) )
))
(declare-fun lt!210256 () ListLongMap!7333)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18133)

(declare-fun getCurrentListMap!2128 (array!29279 array!29281 (_ BitVec 32) (_ BitVec 32) V!18133 V!18133 (_ BitVec 32) Int) ListLongMap!7333)

(assert (=> b!465457 (= lt!210256 (getCurrentListMap!2128 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18133)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!210255 () ListLongMap!7333)

(declare-fun +!1619 (ListLongMap!7333 tuple2!8406) ListLongMap!7333)

(assert (=> b!465457 (= lt!210255 (+!1619 (getCurrentListMap!2128 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8407 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465458 () Bool)

(assert (=> b!465458 (= e!272053 (and e!272054 mapRes!20839))))

(declare-fun condMapEmpty!20839 () Bool)

(declare-fun mapDefault!20839 () ValueCell!6042)

(assert (=> b!465458 (= condMapEmpty!20839 (= (arr!14067 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6042)) mapDefault!20839)))))

(declare-fun b!465459 () Bool)

(declare-fun e!272057 () Bool)

(assert (=> b!465459 (= e!272057 tp_is_empty!12771)))

(declare-fun b!465460 () Bool)

(declare-fun res!278301 () Bool)

(assert (=> b!465460 (=> (not res!278301) (not e!272058))))

(assert (=> b!465460 (= res!278301 (and (= (size!14419 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14418 _keys!1025) (size!14419 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20839 () Bool)

(declare-fun tp!40032 () Bool)

(assert (=> mapNonEmpty!20839 (= mapRes!20839 (and tp!40032 e!272057))))

(declare-fun mapKey!20839 () (_ BitVec 32))

(declare-fun mapValue!20839 () ValueCell!6042)

(declare-fun mapRest!20839 () (Array (_ BitVec 32) ValueCell!6042))

(assert (=> mapNonEmpty!20839 (= (arr!14067 _values!833) (store mapRest!20839 mapKey!20839 mapValue!20839))))

(declare-fun b!465461 () Bool)

(assert (=> b!465461 (= e!272058 (not e!272056))))

(declare-fun res!278299 () Bool)

(assert (=> b!465461 (=> res!278299 e!272056)))

(assert (=> b!465461 (= res!278299 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210254 () ListLongMap!7333)

(declare-fun lt!210257 () ListLongMap!7333)

(assert (=> b!465461 (= lt!210254 lt!210257)))

(declare-datatypes ((Unit!13485 0))(
  ( (Unit!13486) )
))
(declare-fun lt!210253 () Unit!13485)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!45 (array!29279 array!29281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18133 V!18133 V!18133 V!18133 (_ BitVec 32) Int) Unit!13485)

(assert (=> b!465461 (= lt!210253 (lemmaNoChangeToArrayThenSameMapNoExtras!45 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1850 (array!29279 array!29281 (_ BitVec 32) (_ BitVec 32) V!18133 V!18133 (_ BitVec 32) Int) ListLongMap!7333)

(assert (=> b!465461 (= lt!210257 (getCurrentListMapNoExtraKeys!1850 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465461 (= lt!210254 (getCurrentListMapNoExtraKeys!1850 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465462 () Bool)

(declare-fun res!278302 () Bool)

(assert (=> b!465462 (=> (not res!278302) (not e!272058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29279 (_ BitVec 32)) Bool)

(assert (=> b!465462 (= res!278302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41712 res!278298) b!465460))

(assert (= (and b!465460 res!278301) b!465462))

(assert (= (and b!465462 res!278302) b!465455))

(assert (= (and b!465455 res!278300) b!465461))

(assert (= (and b!465461 (not res!278299)) b!465457))

(assert (= (and b!465458 condMapEmpty!20839) mapIsEmpty!20839))

(assert (= (and b!465458 (not condMapEmpty!20839)) mapNonEmpty!20839))

(get-info :version)

(assert (= (and mapNonEmpty!20839 ((_ is ValueCellFull!6042) mapValue!20839)) b!465459))

(assert (= (and b!465458 ((_ is ValueCellFull!6042) mapDefault!20839)) b!465456))

(assert (= start!41712 b!465458))

(declare-fun m!447721 () Bool)

(assert (=> mapNonEmpty!20839 m!447721))

(declare-fun m!447723 () Bool)

(assert (=> b!465462 m!447723))

(declare-fun m!447725 () Bool)

(assert (=> b!465457 m!447725))

(declare-fun m!447727 () Bool)

(assert (=> b!465457 m!447727))

(assert (=> b!465457 m!447727))

(declare-fun m!447729 () Bool)

(assert (=> b!465457 m!447729))

(declare-fun m!447731 () Bool)

(assert (=> start!41712 m!447731))

(declare-fun m!447733 () Bool)

(assert (=> start!41712 m!447733))

(declare-fun m!447735 () Bool)

(assert (=> start!41712 m!447735))

(declare-fun m!447737 () Bool)

(assert (=> b!465455 m!447737))

(declare-fun m!447739 () Bool)

(assert (=> b!465461 m!447739))

(declare-fun m!447741 () Bool)

(assert (=> b!465461 m!447741))

(declare-fun m!447743 () Bool)

(assert (=> b!465461 m!447743))

(check-sat (not b_next!11343) (not start!41712) b_and!19717 tp_is_empty!12771 (not mapNonEmpty!20839) (not b!465455) (not b!465462) (not b!465457) (not b!465461))
(check-sat b_and!19717 (not b_next!11343))
