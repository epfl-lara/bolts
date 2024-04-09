; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42006 () Bool)

(assert start!42006)

(declare-fun b_free!11571 () Bool)

(declare-fun b_next!11571 () Bool)

(assert (=> start!42006 (= b_free!11571 (not b_next!11571))))

(declare-fun tp!40728 () Bool)

(declare-fun b_and!19987 () Bool)

(assert (=> start!42006 (= tp!40728 b_and!19987)))

(declare-fun b!468711 () Bool)

(declare-fun res!280181 () Bool)

(declare-fun e!274394 () Bool)

(assert (=> b!468711 (=> (not res!280181) (not e!274394))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29731 0))(
  ( (array!29732 (arr!14288 (Array (_ BitVec 32) (_ BitVec 64))) (size!14640 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29731)

(declare-datatypes ((V!18437 0))(
  ( (V!18438 (val!6544 Int)) )
))
(declare-datatypes ((ValueCell!6156 0))(
  ( (ValueCellFull!6156 (v!8829 V!18437)) (EmptyCell!6156) )
))
(declare-datatypes ((array!29733 0))(
  ( (array!29734 (arr!14289 (Array (_ BitVec 32) ValueCell!6156)) (size!14641 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29733)

(assert (=> b!468711 (= res!280181 (and (= (size!14641 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14640 _keys!1025) (size!14641 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468713 () Bool)

(declare-fun e!274397 () Bool)

(assert (=> b!468713 (= e!274394 (not e!274397))))

(declare-fun res!280183 () Bool)

(assert (=> b!468713 (=> res!280183 e!274397)))

(assert (=> b!468713 (= res!280183 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8584 0))(
  ( (tuple2!8585 (_1!4302 (_ BitVec 64)) (_2!4302 V!18437)) )
))
(declare-datatypes ((List!8704 0))(
  ( (Nil!8701) (Cons!8700 (h!9556 tuple2!8584) (t!14670 List!8704)) )
))
(declare-datatypes ((ListLongMap!7511 0))(
  ( (ListLongMap!7512 (toList!3771 List!8704)) )
))
(declare-fun lt!212213 () ListLongMap!7511)

(declare-fun lt!212214 () ListLongMap!7511)

(assert (=> b!468713 (= lt!212213 lt!212214)))

(declare-fun minValueBefore!38 () V!18437)

(declare-fun zeroValue!794 () V!18437)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13664 0))(
  ( (Unit!13665) )
))
(declare-fun lt!212210 () Unit!13664)

(declare-fun minValueAfter!38 () V!18437)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!130 (array!29731 array!29733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18437 V!18437 V!18437 V!18437 (_ BitVec 32) Int) Unit!13664)

(assert (=> b!468713 (= lt!212210 (lemmaNoChangeToArrayThenSameMapNoExtras!130 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1935 (array!29731 array!29733 (_ BitVec 32) (_ BitVec 32) V!18437 V!18437 (_ BitVec 32) Int) ListLongMap!7511)

(assert (=> b!468713 (= lt!212214 (getCurrentListMapNoExtraKeys!1935 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468713 (= lt!212213 (getCurrentListMapNoExtraKeys!1935 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21193 () Bool)

(declare-fun mapRes!21193 () Bool)

(assert (=> mapIsEmpty!21193 mapRes!21193))

(declare-fun b!468714 () Bool)

(assert (=> b!468714 (= e!274397 true)))

(declare-fun lt!212211 () tuple2!8584)

(declare-fun +!1660 (ListLongMap!7511 tuple2!8584) ListLongMap!7511)

(assert (=> b!468714 (= (+!1660 lt!212213 lt!212211) (+!1660 (+!1660 lt!212213 (tuple2!8585 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212211))))

(assert (=> b!468714 (= lt!212211 (tuple2!8585 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212212 () Unit!13664)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!101 (ListLongMap!7511 (_ BitVec 64) V!18437 V!18437) Unit!13664)

(assert (=> b!468714 (= lt!212212 (addSameAsAddTwiceSameKeyDiffValues!101 lt!212213 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212216 () ListLongMap!7511)

(declare-fun getCurrentListMap!2182 (array!29731 array!29733 (_ BitVec 32) (_ BitVec 32) V!18437 V!18437 (_ BitVec 32) Int) ListLongMap!7511)

(assert (=> b!468714 (= lt!212216 (getCurrentListMap!2182 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212215 () ListLongMap!7511)

(assert (=> b!468714 (= lt!212215 (getCurrentListMap!2182 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468715 () Bool)

(declare-fun e!274398 () Bool)

(declare-fun tp_is_empty!12999 () Bool)

(assert (=> b!468715 (= e!274398 tp_is_empty!12999)))

(declare-fun mapNonEmpty!21193 () Bool)

(declare-fun tp!40729 () Bool)

(declare-fun e!274396 () Bool)

(assert (=> mapNonEmpty!21193 (= mapRes!21193 (and tp!40729 e!274396))))

(declare-fun mapKey!21193 () (_ BitVec 32))

(declare-fun mapValue!21193 () ValueCell!6156)

(declare-fun mapRest!21193 () (Array (_ BitVec 32) ValueCell!6156))

(assert (=> mapNonEmpty!21193 (= (arr!14289 _values!833) (store mapRest!21193 mapKey!21193 mapValue!21193))))

(declare-fun b!468716 () Bool)

(assert (=> b!468716 (= e!274396 tp_is_empty!12999)))

(declare-fun res!280180 () Bool)

(assert (=> start!42006 (=> (not res!280180) (not e!274394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42006 (= res!280180 (validMask!0 mask!1365))))

(assert (=> start!42006 e!274394))

(assert (=> start!42006 tp_is_empty!12999))

(assert (=> start!42006 tp!40728))

(assert (=> start!42006 true))

(declare-fun array_inv!10306 (array!29731) Bool)

(assert (=> start!42006 (array_inv!10306 _keys!1025)))

(declare-fun e!274395 () Bool)

(declare-fun array_inv!10307 (array!29733) Bool)

(assert (=> start!42006 (and (array_inv!10307 _values!833) e!274395)))

(declare-fun b!468712 () Bool)

(declare-fun res!280182 () Bool)

(assert (=> b!468712 (=> (not res!280182) (not e!274394))))

(declare-datatypes ((List!8705 0))(
  ( (Nil!8702) (Cons!8701 (h!9557 (_ BitVec 64)) (t!14671 List!8705)) )
))
(declare-fun arrayNoDuplicates!0 (array!29731 (_ BitVec 32) List!8705) Bool)

(assert (=> b!468712 (= res!280182 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8702))))

(declare-fun b!468717 () Bool)

(declare-fun res!280184 () Bool)

(assert (=> b!468717 (=> (not res!280184) (not e!274394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29731 (_ BitVec 32)) Bool)

(assert (=> b!468717 (= res!280184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468718 () Bool)

(assert (=> b!468718 (= e!274395 (and e!274398 mapRes!21193))))

(declare-fun condMapEmpty!21193 () Bool)

(declare-fun mapDefault!21193 () ValueCell!6156)

(assert (=> b!468718 (= condMapEmpty!21193 (= (arr!14289 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6156)) mapDefault!21193)))))

(assert (= (and start!42006 res!280180) b!468711))

(assert (= (and b!468711 res!280181) b!468717))

(assert (= (and b!468717 res!280184) b!468712))

(assert (= (and b!468712 res!280182) b!468713))

(assert (= (and b!468713 (not res!280183)) b!468714))

(assert (= (and b!468718 condMapEmpty!21193) mapIsEmpty!21193))

(assert (= (and b!468718 (not condMapEmpty!21193)) mapNonEmpty!21193))

(get-info :version)

(assert (= (and mapNonEmpty!21193 ((_ is ValueCellFull!6156) mapValue!21193)) b!468716))

(assert (= (and b!468718 ((_ is ValueCellFull!6156) mapDefault!21193)) b!468715))

(assert (= start!42006 b!468718))

(declare-fun m!450801 () Bool)

(assert (=> b!468717 m!450801))

(declare-fun m!450803 () Bool)

(assert (=> start!42006 m!450803))

(declare-fun m!450805 () Bool)

(assert (=> start!42006 m!450805))

(declare-fun m!450807 () Bool)

(assert (=> start!42006 m!450807))

(declare-fun m!450809 () Bool)

(assert (=> mapNonEmpty!21193 m!450809))

(declare-fun m!450811 () Bool)

(assert (=> b!468712 m!450811))

(declare-fun m!450813 () Bool)

(assert (=> b!468714 m!450813))

(declare-fun m!450815 () Bool)

(assert (=> b!468714 m!450815))

(declare-fun m!450817 () Bool)

(assert (=> b!468714 m!450817))

(declare-fun m!450819 () Bool)

(assert (=> b!468714 m!450819))

(assert (=> b!468714 m!450817))

(declare-fun m!450821 () Bool)

(assert (=> b!468714 m!450821))

(declare-fun m!450823 () Bool)

(assert (=> b!468714 m!450823))

(declare-fun m!450825 () Bool)

(assert (=> b!468713 m!450825))

(declare-fun m!450827 () Bool)

(assert (=> b!468713 m!450827))

(declare-fun m!450829 () Bool)

(assert (=> b!468713 m!450829))

(check-sat (not start!42006) tp_is_empty!12999 b_and!19987 (not b!468717) (not b!468713) (not b!468714) (not mapNonEmpty!21193) (not b_next!11571) (not b!468712))
(check-sat b_and!19987 (not b_next!11571))
