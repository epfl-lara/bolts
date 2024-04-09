; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41656 () Bool)

(assert start!41656)

(declare-fun b_free!11301 () Bool)

(declare-fun b_next!11301 () Bool)

(assert (=> start!41656 (= b_free!11301 (not b_next!11301))))

(declare-fun tp!39904 () Bool)

(declare-fun b_and!19667 () Bool)

(assert (=> start!41656 (= tp!39904 b_and!19667)))

(declare-fun res!277984 () Bool)

(declare-fun e!271651 () Bool)

(assert (=> start!41656 (=> (not res!277984) (not e!271651))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41656 (= res!277984 (validMask!0 mask!1365))))

(assert (=> start!41656 e!271651))

(declare-fun tp_is_empty!12729 () Bool)

(assert (=> start!41656 tp_is_empty!12729))

(assert (=> start!41656 tp!39904))

(assert (=> start!41656 true))

(declare-datatypes ((array!29199 0))(
  ( (array!29200 (arr!14027 (Array (_ BitVec 32) (_ BitVec 64))) (size!14379 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29199)

(declare-fun array_inv!10112 (array!29199) Bool)

(assert (=> start!41656 (array_inv!10112 _keys!1025)))

(declare-datatypes ((V!18077 0))(
  ( (V!18078 (val!6409 Int)) )
))
(declare-datatypes ((ValueCell!6021 0))(
  ( (ValueCellFull!6021 (v!8692 V!18077)) (EmptyCell!6021) )
))
(declare-datatypes ((array!29201 0))(
  ( (array!29202 (arr!14028 (Array (_ BitVec 32) ValueCell!6021)) (size!14380 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29201)

(declare-fun e!271652 () Bool)

(declare-fun array_inv!10113 (array!29201) Bool)

(assert (=> start!41656 (and (array_inv!10113 _values!833) e!271652)))

(declare-fun b!464897 () Bool)

(declare-fun e!271655 () Bool)

(declare-fun mapRes!20773 () Bool)

(assert (=> b!464897 (= e!271652 (and e!271655 mapRes!20773))))

(declare-fun condMapEmpty!20773 () Bool)

(declare-fun mapDefault!20773 () ValueCell!6021)

(assert (=> b!464897 (= condMapEmpty!20773 (= (arr!14028 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6021)) mapDefault!20773)))))

(declare-fun mapIsEmpty!20773 () Bool)

(assert (=> mapIsEmpty!20773 mapRes!20773))

(declare-fun b!464898 () Bool)

(assert (=> b!464898 (= e!271651 (not true))))

(declare-datatypes ((tuple2!8376 0))(
  ( (tuple2!8377 (_1!4198 (_ BitVec 64)) (_2!4198 V!18077)) )
))
(declare-datatypes ((List!8501 0))(
  ( (Nil!8498) (Cons!8497 (h!9353 tuple2!8376) (t!14457 List!8501)) )
))
(declare-datatypes ((ListLongMap!7303 0))(
  ( (ListLongMap!7304 (toList!3667 List!8501)) )
))
(declare-fun lt!209960 () ListLongMap!7303)

(declare-fun lt!209961 () ListLongMap!7303)

(assert (=> b!464898 (= lt!209960 lt!209961)))

(declare-fun minValueBefore!38 () V!18077)

(declare-fun zeroValue!794 () V!18077)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18077)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13455 0))(
  ( (Unit!13456) )
))
(declare-fun lt!209962 () Unit!13455)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!30 (array!29199 array!29201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18077 V!18077 V!18077 V!18077 (_ BitVec 32) Int) Unit!13455)

(assert (=> b!464898 (= lt!209962 (lemmaNoChangeToArrayThenSameMapNoExtras!30 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1835 (array!29199 array!29201 (_ BitVec 32) (_ BitVec 32) V!18077 V!18077 (_ BitVec 32) Int) ListLongMap!7303)

(assert (=> b!464898 (= lt!209961 (getCurrentListMapNoExtraKeys!1835 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464898 (= lt!209960 (getCurrentListMapNoExtraKeys!1835 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20773 () Bool)

(declare-fun tp!39903 () Bool)

(declare-fun e!271653 () Bool)

(assert (=> mapNonEmpty!20773 (= mapRes!20773 (and tp!39903 e!271653))))

(declare-fun mapRest!20773 () (Array (_ BitVec 32) ValueCell!6021))

(declare-fun mapKey!20773 () (_ BitVec 32))

(declare-fun mapValue!20773 () ValueCell!6021)

(assert (=> mapNonEmpty!20773 (= (arr!14028 _values!833) (store mapRest!20773 mapKey!20773 mapValue!20773))))

(declare-fun b!464899 () Bool)

(declare-fun res!277985 () Bool)

(assert (=> b!464899 (=> (not res!277985) (not e!271651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29199 (_ BitVec 32)) Bool)

(assert (=> b!464899 (= res!277985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464900 () Bool)

(assert (=> b!464900 (= e!271653 tp_is_empty!12729)))

(declare-fun b!464901 () Bool)

(declare-fun res!277983 () Bool)

(assert (=> b!464901 (=> (not res!277983) (not e!271651))))

(declare-datatypes ((List!8502 0))(
  ( (Nil!8499) (Cons!8498 (h!9354 (_ BitVec 64)) (t!14458 List!8502)) )
))
(declare-fun arrayNoDuplicates!0 (array!29199 (_ BitVec 32) List!8502) Bool)

(assert (=> b!464901 (= res!277983 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8499))))

(declare-fun b!464902 () Bool)

(declare-fun res!277986 () Bool)

(assert (=> b!464902 (=> (not res!277986) (not e!271651))))

(assert (=> b!464902 (= res!277986 (and (= (size!14380 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14379 _keys!1025) (size!14380 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464903 () Bool)

(assert (=> b!464903 (= e!271655 tp_is_empty!12729)))

(assert (= (and start!41656 res!277984) b!464902))

(assert (= (and b!464902 res!277986) b!464899))

(assert (= (and b!464899 res!277985) b!464901))

(assert (= (and b!464901 res!277983) b!464898))

(assert (= (and b!464897 condMapEmpty!20773) mapIsEmpty!20773))

(assert (= (and b!464897 (not condMapEmpty!20773)) mapNonEmpty!20773))

(get-info :version)

(assert (= (and mapNonEmpty!20773 ((_ is ValueCellFull!6021) mapValue!20773)) b!464900))

(assert (= (and b!464897 ((_ is ValueCellFull!6021) mapDefault!20773)) b!464903))

(assert (= start!41656 b!464897))

(declare-fun m!447217 () Bool)

(assert (=> b!464901 m!447217))

(declare-fun m!447219 () Bool)

(assert (=> start!41656 m!447219))

(declare-fun m!447221 () Bool)

(assert (=> start!41656 m!447221))

(declare-fun m!447223 () Bool)

(assert (=> start!41656 m!447223))

(declare-fun m!447225 () Bool)

(assert (=> b!464899 m!447225))

(declare-fun m!447227 () Bool)

(assert (=> b!464898 m!447227))

(declare-fun m!447229 () Bool)

(assert (=> b!464898 m!447229))

(declare-fun m!447231 () Bool)

(assert (=> b!464898 m!447231))

(declare-fun m!447233 () Bool)

(assert (=> mapNonEmpty!20773 m!447233))

(check-sat (not b!464901) (not b!464899) (not b!464898) (not start!41656) tp_is_empty!12729 (not mapNonEmpty!20773) b_and!19667 (not b_next!11301))
(check-sat b_and!19667 (not b_next!11301))
