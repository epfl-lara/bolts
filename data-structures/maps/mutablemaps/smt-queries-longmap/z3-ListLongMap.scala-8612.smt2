; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104954 () Bool)

(assert start!104954)

(declare-fun b_free!26709 () Bool)

(declare-fun b_next!26709 () Bool)

(assert (=> start!104954 (= b_free!26709 (not b_next!26709))))

(declare-fun tp!93621 () Bool)

(declare-fun b_and!44495 () Bool)

(assert (=> start!104954 (= tp!93621 b_and!44495)))

(declare-fun mapNonEmpty!49180 () Bool)

(declare-fun mapRes!49180 () Bool)

(declare-fun tp!93620 () Bool)

(declare-fun e!709949 () Bool)

(assert (=> mapNonEmpty!49180 (= mapRes!49180 (and tp!93620 e!709949))))

(declare-datatypes ((V!47513 0))(
  ( (V!47514 (val!15868 Int)) )
))
(declare-datatypes ((ValueCell!15042 0))(
  ( (ValueCellFull!15042 (v!18564 V!47513)) (EmptyCell!15042) )
))
(declare-fun mapValue!49180 () ValueCell!15042)

(declare-fun mapRest!49180 () (Array (_ BitVec 32) ValueCell!15042))

(declare-datatypes ((array!80871 0))(
  ( (array!80872 (arr!38997 (Array (_ BitVec 32) ValueCell!15042)) (size!39534 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80871)

(declare-fun mapKey!49180 () (_ BitVec 32))

(assert (=> mapNonEmpty!49180 (= (arr!38997 _values!914) (store mapRest!49180 mapKey!49180 mapValue!49180))))

(declare-fun b!1250467 () Bool)

(declare-fun tp_is_empty!31611 () Bool)

(assert (=> b!1250467 (= e!709949 tp_is_empty!31611)))

(declare-fun b!1250468 () Bool)

(declare-fun res!834173 () Bool)

(declare-fun e!709954 () Bool)

(assert (=> b!1250468 (=> (not res!834173) (not e!709954))))

(declare-datatypes ((array!80873 0))(
  ( (array!80874 (arr!38998 (Array (_ BitVec 32) (_ BitVec 64))) (size!39535 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80873)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80873 (_ BitVec 32)) Bool)

(assert (=> b!1250468 (= res!834173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250469 () Bool)

(declare-fun res!834174 () Bool)

(assert (=> b!1250469 (=> (not res!834174) (not e!709954))))

(declare-datatypes ((List!27850 0))(
  ( (Nil!27847) (Cons!27846 (h!29055 (_ BitVec 64)) (t!41330 List!27850)) )
))
(declare-fun arrayNoDuplicates!0 (array!80873 (_ BitVec 32) List!27850) Bool)

(assert (=> b!1250469 (= res!834174 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27847))))

(declare-fun res!834175 () Bool)

(assert (=> start!104954 (=> (not res!834175) (not e!709954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104954 (= res!834175 (validMask!0 mask!1466))))

(assert (=> start!104954 e!709954))

(assert (=> start!104954 true))

(assert (=> start!104954 tp!93621))

(assert (=> start!104954 tp_is_empty!31611))

(declare-fun array_inv!29681 (array!80873) Bool)

(assert (=> start!104954 (array_inv!29681 _keys!1118)))

(declare-fun e!709948 () Bool)

(declare-fun array_inv!29682 (array!80871) Bool)

(assert (=> start!104954 (and (array_inv!29682 _values!914) e!709948)))

(declare-fun b!1250466 () Bool)

(declare-fun e!709951 () Bool)

(declare-fun e!709952 () Bool)

(assert (=> b!1250466 (= e!709951 e!709952)))

(declare-fun res!834176 () Bool)

(assert (=> b!1250466 (=> res!834176 e!709952)))

(declare-datatypes ((tuple2!20594 0))(
  ( (tuple2!20595 (_1!10307 (_ BitVec 64)) (_2!10307 V!47513)) )
))
(declare-datatypes ((List!27851 0))(
  ( (Nil!27848) (Cons!27847 (h!29056 tuple2!20594) (t!41331 List!27851)) )
))
(declare-datatypes ((ListLongMap!18479 0))(
  ( (ListLongMap!18480 (toList!9255 List!27851)) )
))
(declare-fun lt!564238 () ListLongMap!18479)

(declare-fun contains!7506 (ListLongMap!18479 (_ BitVec 64)) Bool)

(assert (=> b!1250466 (= res!834176 (contains!7506 lt!564238 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47513)

(declare-fun minValueBefore!43 () V!47513)

(declare-fun getCurrentListMap!4472 (array!80873 array!80871 (_ BitVec 32) (_ BitVec 32) V!47513 V!47513 (_ BitVec 32) Int) ListLongMap!18479)

(assert (=> b!1250466 (= lt!564238 (getCurrentListMap!4472 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250470 () Bool)

(assert (=> b!1250470 (= e!709952 true)))

(declare-fun -!2021 (ListLongMap!18479 (_ BitVec 64)) ListLongMap!18479)

(assert (=> b!1250470 (= (-!2021 lt!564238 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564238)))

(declare-datatypes ((Unit!41487 0))(
  ( (Unit!41488) )
))
(declare-fun lt!564237 () Unit!41487)

(declare-fun removeNotPresentStillSame!88 (ListLongMap!18479 (_ BitVec 64)) Unit!41487)

(assert (=> b!1250470 (= lt!564237 (removeNotPresentStillSame!88 lt!564238 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250471 () Bool)

(assert (=> b!1250471 (= e!709954 (not e!709951))))

(declare-fun res!834178 () Bool)

(assert (=> b!1250471 (=> res!834178 e!709951)))

(assert (=> b!1250471 (= res!834178 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564236 () ListLongMap!18479)

(declare-fun lt!564234 () ListLongMap!18479)

(assert (=> b!1250471 (= lt!564236 lt!564234)))

(declare-fun lt!564235 () Unit!41487)

(declare-fun minValueAfter!43 () V!47513)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!952 (array!80873 array!80871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47513 V!47513 V!47513 V!47513 (_ BitVec 32) Int) Unit!41487)

(assert (=> b!1250471 (= lt!564235 (lemmaNoChangeToArrayThenSameMapNoExtras!952 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5634 (array!80873 array!80871 (_ BitVec 32) (_ BitVec 32) V!47513 V!47513 (_ BitVec 32) Int) ListLongMap!18479)

(assert (=> b!1250471 (= lt!564234 (getCurrentListMapNoExtraKeys!5634 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250471 (= lt!564236 (getCurrentListMapNoExtraKeys!5634 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250472 () Bool)

(declare-fun e!709950 () Bool)

(assert (=> b!1250472 (= e!709948 (and e!709950 mapRes!49180))))

(declare-fun condMapEmpty!49180 () Bool)

(declare-fun mapDefault!49180 () ValueCell!15042)

(assert (=> b!1250472 (= condMapEmpty!49180 (= (arr!38997 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15042)) mapDefault!49180)))))

(declare-fun mapIsEmpty!49180 () Bool)

(assert (=> mapIsEmpty!49180 mapRes!49180))

(declare-fun b!1250473 () Bool)

(declare-fun res!834177 () Bool)

(assert (=> b!1250473 (=> (not res!834177) (not e!709954))))

(assert (=> b!1250473 (= res!834177 (and (= (size!39534 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39535 _keys!1118) (size!39534 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250474 () Bool)

(assert (=> b!1250474 (= e!709950 tp_is_empty!31611)))

(assert (= (and start!104954 res!834175) b!1250473))

(assert (= (and b!1250473 res!834177) b!1250468))

(assert (= (and b!1250468 res!834173) b!1250469))

(assert (= (and b!1250469 res!834174) b!1250471))

(assert (= (and b!1250471 (not res!834178)) b!1250466))

(assert (= (and b!1250466 (not res!834176)) b!1250470))

(assert (= (and b!1250472 condMapEmpty!49180) mapIsEmpty!49180))

(assert (= (and b!1250472 (not condMapEmpty!49180)) mapNonEmpty!49180))

(get-info :version)

(assert (= (and mapNonEmpty!49180 ((_ is ValueCellFull!15042) mapValue!49180)) b!1250467))

(assert (= (and b!1250472 ((_ is ValueCellFull!15042) mapDefault!49180)) b!1250474))

(assert (= start!104954 b!1250472))

(declare-fun m!1151335 () Bool)

(assert (=> b!1250470 m!1151335))

(declare-fun m!1151337 () Bool)

(assert (=> b!1250470 m!1151337))

(declare-fun m!1151339 () Bool)

(assert (=> b!1250468 m!1151339))

(declare-fun m!1151341 () Bool)

(assert (=> b!1250466 m!1151341))

(declare-fun m!1151343 () Bool)

(assert (=> b!1250466 m!1151343))

(declare-fun m!1151345 () Bool)

(assert (=> mapNonEmpty!49180 m!1151345))

(declare-fun m!1151347 () Bool)

(assert (=> b!1250469 m!1151347))

(declare-fun m!1151349 () Bool)

(assert (=> b!1250471 m!1151349))

(declare-fun m!1151351 () Bool)

(assert (=> b!1250471 m!1151351))

(declare-fun m!1151353 () Bool)

(assert (=> b!1250471 m!1151353))

(declare-fun m!1151355 () Bool)

(assert (=> start!104954 m!1151355))

(declare-fun m!1151357 () Bool)

(assert (=> start!104954 m!1151357))

(declare-fun m!1151359 () Bool)

(assert (=> start!104954 m!1151359))

(check-sat (not b!1250470) b_and!44495 (not mapNonEmpty!49180) (not b!1250466) (not start!104954) (not b!1250469) (not b!1250471) tp_is_empty!31611 (not b!1250468) (not b_next!26709))
(check-sat b_and!44495 (not b_next!26709))
