; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42142 () Bool)

(assert start!42142)

(declare-fun b_free!11667 () Bool)

(declare-fun b_next!11667 () Bool)

(assert (=> start!42142 (= b_free!11667 (not b_next!11667))))

(declare-fun tp!41023 () Bool)

(declare-fun b_and!20107 () Bool)

(assert (=> start!42142 (= tp!41023 b_and!20107)))

(declare-fun b!470189 () Bool)

(declare-fun res!281023 () Bool)

(declare-fun e!275449 () Bool)

(assert (=> b!470189 (=> (not res!281023) (not e!275449))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29921 0))(
  ( (array!29922 (arr!14381 (Array (_ BitVec 32) (_ BitVec 64))) (size!14733 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29921)

(declare-datatypes ((V!18565 0))(
  ( (V!18566 (val!6592 Int)) )
))
(declare-datatypes ((ValueCell!6204 0))(
  ( (ValueCellFull!6204 (v!8879 V!18565)) (EmptyCell!6204) )
))
(declare-datatypes ((array!29923 0))(
  ( (array!29924 (arr!14382 (Array (_ BitVec 32) ValueCell!6204)) (size!14734 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29923)

(assert (=> b!470189 (= res!281023 (and (= (size!14734 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14733 _keys!1025) (size!14734 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281024 () Bool)

(assert (=> start!42142 (=> (not res!281024) (not e!275449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42142 (= res!281024 (validMask!0 mask!1365))))

(assert (=> start!42142 e!275449))

(declare-fun tp_is_empty!13095 () Bool)

(assert (=> start!42142 tp_is_empty!13095))

(assert (=> start!42142 tp!41023))

(assert (=> start!42142 true))

(declare-fun array_inv!10374 (array!29921) Bool)

(assert (=> start!42142 (array_inv!10374 _keys!1025)))

(declare-fun e!275451 () Bool)

(declare-fun array_inv!10375 (array!29923) Bool)

(assert (=> start!42142 (and (array_inv!10375 _values!833) e!275451)))

(declare-fun b!470190 () Bool)

(assert (=> b!470190 (= e!275449 (not true))))

(declare-datatypes ((tuple2!8650 0))(
  ( (tuple2!8651 (_1!4335 (_ BitVec 64)) (_2!4335 V!18565)) )
))
(declare-datatypes ((List!8772 0))(
  ( (Nil!8769) (Cons!8768 (h!9624 tuple2!8650) (t!14742 List!8772)) )
))
(declare-datatypes ((ListLongMap!7577 0))(
  ( (ListLongMap!7578 (toList!3804 List!8772)) )
))
(declare-fun lt!213394 () ListLongMap!7577)

(declare-fun lt!213393 () ListLongMap!7577)

(assert (=> b!470190 (= lt!213394 lt!213393)))

(declare-fun minValueBefore!38 () V!18565)

(declare-fun zeroValue!794 () V!18565)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13734 0))(
  ( (Unit!13735) )
))
(declare-fun lt!213392 () Unit!13734)

(declare-fun minValueAfter!38 () V!18565)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!161 (array!29921 array!29923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18565 V!18565 V!18565 V!18565 (_ BitVec 32) Int) Unit!13734)

(assert (=> b!470190 (= lt!213392 (lemmaNoChangeToArrayThenSameMapNoExtras!161 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1966 (array!29921 array!29923 (_ BitVec 32) (_ BitVec 32) V!18565 V!18565 (_ BitVec 32) Int) ListLongMap!7577)

(assert (=> b!470190 (= lt!213393 (getCurrentListMapNoExtraKeys!1966 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470190 (= lt!213394 (getCurrentListMapNoExtraKeys!1966 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470191 () Bool)

(declare-fun res!281022 () Bool)

(assert (=> b!470191 (=> (not res!281022) (not e!275449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29921 (_ BitVec 32)) Bool)

(assert (=> b!470191 (= res!281022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470192 () Bool)

(declare-fun res!281025 () Bool)

(assert (=> b!470192 (=> (not res!281025) (not e!275449))))

(declare-datatypes ((List!8773 0))(
  ( (Nil!8770) (Cons!8769 (h!9625 (_ BitVec 64)) (t!14743 List!8773)) )
))
(declare-fun arrayNoDuplicates!0 (array!29921 (_ BitVec 32) List!8773) Bool)

(assert (=> b!470192 (= res!281025 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8770))))

(declare-fun mapNonEmpty!21343 () Bool)

(declare-fun mapRes!21343 () Bool)

(declare-fun tp!41022 () Bool)

(declare-fun e!275452 () Bool)

(assert (=> mapNonEmpty!21343 (= mapRes!21343 (and tp!41022 e!275452))))

(declare-fun mapKey!21343 () (_ BitVec 32))

(declare-fun mapValue!21343 () ValueCell!6204)

(declare-fun mapRest!21343 () (Array (_ BitVec 32) ValueCell!6204))

(assert (=> mapNonEmpty!21343 (= (arr!14382 _values!833) (store mapRest!21343 mapKey!21343 mapValue!21343))))

(declare-fun mapIsEmpty!21343 () Bool)

(assert (=> mapIsEmpty!21343 mapRes!21343))

(declare-fun b!470193 () Bool)

(assert (=> b!470193 (= e!275452 tp_is_empty!13095)))

(declare-fun b!470194 () Bool)

(declare-fun e!275450 () Bool)

(assert (=> b!470194 (= e!275451 (and e!275450 mapRes!21343))))

(declare-fun condMapEmpty!21343 () Bool)

(declare-fun mapDefault!21343 () ValueCell!6204)

(assert (=> b!470194 (= condMapEmpty!21343 (= (arr!14382 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6204)) mapDefault!21343)))))

(declare-fun b!470195 () Bool)

(assert (=> b!470195 (= e!275450 tp_is_empty!13095)))

(assert (= (and start!42142 res!281024) b!470189))

(assert (= (and b!470189 res!281023) b!470191))

(assert (= (and b!470191 res!281022) b!470192))

(assert (= (and b!470192 res!281025) b!470190))

(assert (= (and b!470194 condMapEmpty!21343) mapIsEmpty!21343))

(assert (= (and b!470194 (not condMapEmpty!21343)) mapNonEmpty!21343))

(get-info :version)

(assert (= (and mapNonEmpty!21343 ((_ is ValueCellFull!6204) mapValue!21343)) b!470193))

(assert (= (and b!470194 ((_ is ValueCellFull!6204) mapDefault!21343)) b!470195))

(assert (= start!42142 b!470194))

(declare-fun m!452521 () Bool)

(assert (=> start!42142 m!452521))

(declare-fun m!452523 () Bool)

(assert (=> start!42142 m!452523))

(declare-fun m!452525 () Bool)

(assert (=> start!42142 m!452525))

(declare-fun m!452527 () Bool)

(assert (=> b!470191 m!452527))

(declare-fun m!452529 () Bool)

(assert (=> b!470190 m!452529))

(declare-fun m!452531 () Bool)

(assert (=> b!470190 m!452531))

(declare-fun m!452533 () Bool)

(assert (=> b!470190 m!452533))

(declare-fun m!452535 () Bool)

(assert (=> mapNonEmpty!21343 m!452535))

(declare-fun m!452537 () Bool)

(assert (=> b!470192 m!452537))

(check-sat (not b_next!11667) tp_is_empty!13095 (not b!470190) (not b!470191) (not b!470192) (not start!42142) b_and!20107 (not mapNonEmpty!21343))
(check-sat b_and!20107 (not b_next!11667))
