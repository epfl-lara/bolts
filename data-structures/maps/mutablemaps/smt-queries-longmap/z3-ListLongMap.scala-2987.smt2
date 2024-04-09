; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42222 () Bool)

(assert start!42222)

(declare-fun b_free!11733 () Bool)

(declare-fun b_next!11733 () Bool)

(assert (=> start!42222 (= b_free!11733 (not b_next!11733))))

(declare-fun tp!41223 () Bool)

(declare-fun b_and!20181 () Bool)

(assert (=> start!42222 (= tp!41223 b_and!20181)))

(declare-fun mapIsEmpty!21445 () Bool)

(declare-fun mapRes!21445 () Bool)

(assert (=> mapIsEmpty!21445 mapRes!21445))

(declare-fun res!281449 () Bool)

(declare-fun e!275999 () Bool)

(assert (=> start!42222 (=> (not res!281449) (not e!275999))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42222 (= res!281449 (validMask!0 mask!1365))))

(assert (=> start!42222 e!275999))

(declare-fun tp_is_empty!13161 () Bool)

(assert (=> start!42222 tp_is_empty!13161))

(assert (=> start!42222 tp!41223))

(assert (=> start!42222 true))

(declare-datatypes ((array!30049 0))(
  ( (array!30050 (arr!14444 (Array (_ BitVec 32) (_ BitVec 64))) (size!14796 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30049)

(declare-fun array_inv!10422 (array!30049) Bool)

(assert (=> start!42222 (array_inv!10422 _keys!1025)))

(declare-datatypes ((V!18653 0))(
  ( (V!18654 (val!6625 Int)) )
))
(declare-datatypes ((ValueCell!6237 0))(
  ( (ValueCellFull!6237 (v!8912 V!18653)) (EmptyCell!6237) )
))
(declare-datatypes ((array!30051 0))(
  ( (array!30052 (arr!14445 (Array (_ BitVec 32) ValueCell!6237)) (size!14797 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30051)

(declare-fun e!276002 () Bool)

(declare-fun array_inv!10423 (array!30051) Bool)

(assert (=> start!42222 (and (array_inv!10423 _values!833) e!276002)))

(declare-fun b!470967 () Bool)

(declare-fun res!281450 () Bool)

(assert (=> b!470967 (=> (not res!281450) (not e!275999))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470967 (= res!281450 (and (= (size!14797 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14796 _keys!1025) (size!14797 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470968 () Bool)

(declare-fun res!281451 () Bool)

(assert (=> b!470968 (=> (not res!281451) (not e!275999))))

(declare-datatypes ((List!8815 0))(
  ( (Nil!8812) (Cons!8811 (h!9667 (_ BitVec 64)) (t!14787 List!8815)) )
))
(declare-fun arrayNoDuplicates!0 (array!30049 (_ BitVec 32) List!8815) Bool)

(assert (=> b!470968 (= res!281451 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8812))))

(declare-fun b!470969 () Bool)

(assert (=> b!470969 (= e!275999 (not true))))

(declare-datatypes ((tuple2!8694 0))(
  ( (tuple2!8695 (_1!4357 (_ BitVec 64)) (_2!4357 V!18653)) )
))
(declare-datatypes ((List!8816 0))(
  ( (Nil!8813) (Cons!8812 (h!9668 tuple2!8694) (t!14788 List!8816)) )
))
(declare-datatypes ((ListLongMap!7621 0))(
  ( (ListLongMap!7622 (toList!3826 List!8816)) )
))
(declare-fun lt!213730 () ListLongMap!7621)

(declare-fun lt!213731 () ListLongMap!7621)

(assert (=> b!470969 (= lt!213730 lt!213731)))

(declare-fun minValueBefore!38 () V!18653)

(declare-fun zeroValue!794 () V!18653)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13778 0))(
  ( (Unit!13779) )
))
(declare-fun lt!213729 () Unit!13778)

(declare-fun minValueAfter!38 () V!18653)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!183 (array!30049 array!30051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18653 V!18653 V!18653 V!18653 (_ BitVec 32) Int) Unit!13778)

(assert (=> b!470969 (= lt!213729 (lemmaNoChangeToArrayThenSameMapNoExtras!183 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1988 (array!30049 array!30051 (_ BitVec 32) (_ BitVec 32) V!18653 V!18653 (_ BitVec 32) Int) ListLongMap!7621)

(assert (=> b!470969 (= lt!213731 (getCurrentListMapNoExtraKeys!1988 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470969 (= lt!213730 (getCurrentListMapNoExtraKeys!1988 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470970 () Bool)

(declare-fun e!276001 () Bool)

(assert (=> b!470970 (= e!276001 tp_is_empty!13161)))

(declare-fun mapNonEmpty!21445 () Bool)

(declare-fun tp!41224 () Bool)

(assert (=> mapNonEmpty!21445 (= mapRes!21445 (and tp!41224 e!276001))))

(declare-fun mapValue!21445 () ValueCell!6237)

(declare-fun mapKey!21445 () (_ BitVec 32))

(declare-fun mapRest!21445 () (Array (_ BitVec 32) ValueCell!6237))

(assert (=> mapNonEmpty!21445 (= (arr!14445 _values!833) (store mapRest!21445 mapKey!21445 mapValue!21445))))

(declare-fun b!470971 () Bool)

(declare-fun res!281452 () Bool)

(assert (=> b!470971 (=> (not res!281452) (not e!275999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30049 (_ BitVec 32)) Bool)

(assert (=> b!470971 (= res!281452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470972 () Bool)

(declare-fun e!276000 () Bool)

(assert (=> b!470972 (= e!276000 tp_is_empty!13161)))

(declare-fun b!470973 () Bool)

(assert (=> b!470973 (= e!276002 (and e!276000 mapRes!21445))))

(declare-fun condMapEmpty!21445 () Bool)

(declare-fun mapDefault!21445 () ValueCell!6237)

(assert (=> b!470973 (= condMapEmpty!21445 (= (arr!14445 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6237)) mapDefault!21445)))))

(assert (= (and start!42222 res!281449) b!470967))

(assert (= (and b!470967 res!281450) b!470971))

(assert (= (and b!470971 res!281452) b!470968))

(assert (= (and b!470968 res!281451) b!470969))

(assert (= (and b!470973 condMapEmpty!21445) mapIsEmpty!21445))

(assert (= (and b!470973 (not condMapEmpty!21445)) mapNonEmpty!21445))

(get-info :version)

(assert (= (and mapNonEmpty!21445 ((_ is ValueCellFull!6237) mapValue!21445)) b!470970))

(assert (= (and b!470973 ((_ is ValueCellFull!6237) mapDefault!21445)) b!470972))

(assert (= start!42222 b!470973))

(declare-fun m!453181 () Bool)

(assert (=> mapNonEmpty!21445 m!453181))

(declare-fun m!453183 () Bool)

(assert (=> b!470969 m!453183))

(declare-fun m!453185 () Bool)

(assert (=> b!470969 m!453185))

(declare-fun m!453187 () Bool)

(assert (=> b!470969 m!453187))

(declare-fun m!453189 () Bool)

(assert (=> start!42222 m!453189))

(declare-fun m!453191 () Bool)

(assert (=> start!42222 m!453191))

(declare-fun m!453193 () Bool)

(assert (=> start!42222 m!453193))

(declare-fun m!453195 () Bool)

(assert (=> b!470968 m!453195))

(declare-fun m!453197 () Bool)

(assert (=> b!470971 m!453197))

(check-sat tp_is_empty!13161 b_and!20181 (not b_next!11733) (not start!42222) (not b!470968) (not b!470969) (not mapNonEmpty!21445) (not b!470971))
(check-sat b_and!20181 (not b_next!11733))
