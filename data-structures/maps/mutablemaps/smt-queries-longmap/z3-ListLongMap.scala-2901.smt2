; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41558 () Bool)

(assert start!41558)

(declare-fun b_free!11217 () Bool)

(declare-fun b_next!11217 () Bool)

(assert (=> start!41558 (= b_free!11217 (not b_next!11217))))

(declare-fun tp!39649 () Bool)

(declare-fun b_and!19575 () Bool)

(assert (=> start!41558 (= tp!39649 b_and!19575)))

(declare-fun b!463930 () Bool)

(declare-fun e!270969 () Bool)

(assert (=> b!463930 (= e!270969 (not true))))

(declare-datatypes ((V!17965 0))(
  ( (V!17966 (val!6367 Int)) )
))
(declare-datatypes ((tuple2!8318 0))(
  ( (tuple2!8319 (_1!4169 (_ BitVec 64)) (_2!4169 V!17965)) )
))
(declare-datatypes ((List!8445 0))(
  ( (Nil!8442) (Cons!8441 (h!9297 tuple2!8318) (t!14399 List!8445)) )
))
(declare-datatypes ((ListLongMap!7245 0))(
  ( (ListLongMap!7246 (toList!3638 List!8445)) )
))
(declare-fun lt!209544 () ListLongMap!7245)

(declare-fun lt!209542 () ListLongMap!7245)

(assert (=> b!463930 (= lt!209544 lt!209542)))

(declare-fun minValueBefore!38 () V!17965)

(declare-fun zeroValue!794 () V!17965)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29043 0))(
  ( (array!29044 (arr!13950 (Array (_ BitVec 32) (_ BitVec 64))) (size!14302 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29043)

(declare-datatypes ((ValueCell!5979 0))(
  ( (ValueCellFull!5979 (v!8650 V!17965)) (EmptyCell!5979) )
))
(declare-datatypes ((array!29045 0))(
  ( (array!29046 (arr!13951 (Array (_ BitVec 32) ValueCell!5979)) (size!14303 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29045)

(declare-fun minValueAfter!38 () V!17965)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13397 0))(
  ( (Unit!13398) )
))
(declare-fun lt!209543 () Unit!13397)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1 (array!29043 array!29045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17965 V!17965 V!17965 V!17965 (_ BitVec 32) Int) Unit!13397)

(assert (=> b!463930 (= lt!209543 (lemmaNoChangeToArrayThenSameMapNoExtras!1 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1806 (array!29043 array!29045 (_ BitVec 32) (_ BitVec 32) V!17965 V!17965 (_ BitVec 32) Int) ListLongMap!7245)

(assert (=> b!463930 (= lt!209542 (getCurrentListMapNoExtraKeys!1806 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!463930 (= lt!209544 (getCurrentListMapNoExtraKeys!1806 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!277449 () Bool)

(assert (=> start!41558 (=> (not res!277449) (not e!270969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41558 (= res!277449 (validMask!0 mask!1365))))

(assert (=> start!41558 e!270969))

(declare-fun tp_is_empty!12645 () Bool)

(assert (=> start!41558 tp_is_empty!12645))

(assert (=> start!41558 tp!39649))

(assert (=> start!41558 true))

(declare-fun array_inv!10058 (array!29043) Bool)

(assert (=> start!41558 (array_inv!10058 _keys!1025)))

(declare-fun e!270968 () Bool)

(declare-fun array_inv!10059 (array!29045) Bool)

(assert (=> start!41558 (and (array_inv!10059 _values!833) e!270968)))

(declare-fun b!463931 () Bool)

(declare-fun res!277450 () Bool)

(assert (=> b!463931 (=> (not res!277450) (not e!270969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29043 (_ BitVec 32)) Bool)

(assert (=> b!463931 (= res!277450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20644 () Bool)

(declare-fun mapRes!20644 () Bool)

(declare-fun tp!39648 () Bool)

(declare-fun e!270967 () Bool)

(assert (=> mapNonEmpty!20644 (= mapRes!20644 (and tp!39648 e!270967))))

(declare-fun mapValue!20644 () ValueCell!5979)

(declare-fun mapRest!20644 () (Array (_ BitVec 32) ValueCell!5979))

(declare-fun mapKey!20644 () (_ BitVec 32))

(assert (=> mapNonEmpty!20644 (= (arr!13951 _values!833) (store mapRest!20644 mapKey!20644 mapValue!20644))))

(declare-fun b!463932 () Bool)

(declare-fun e!270970 () Bool)

(assert (=> b!463932 (= e!270970 tp_is_empty!12645)))

(declare-fun b!463933 () Bool)

(assert (=> b!463933 (= e!270968 (and e!270970 mapRes!20644))))

(declare-fun condMapEmpty!20644 () Bool)

(declare-fun mapDefault!20644 () ValueCell!5979)

(assert (=> b!463933 (= condMapEmpty!20644 (= (arr!13951 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5979)) mapDefault!20644)))))

(declare-fun b!463934 () Bool)

(assert (=> b!463934 (= e!270967 tp_is_empty!12645)))

(declare-fun b!463935 () Bool)

(declare-fun res!277451 () Bool)

(assert (=> b!463935 (=> (not res!277451) (not e!270969))))

(declare-datatypes ((List!8446 0))(
  ( (Nil!8443) (Cons!8442 (h!9298 (_ BitVec 64)) (t!14400 List!8446)) )
))
(declare-fun arrayNoDuplicates!0 (array!29043 (_ BitVec 32) List!8446) Bool)

(assert (=> b!463935 (= res!277451 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8443))))

(declare-fun mapIsEmpty!20644 () Bool)

(assert (=> mapIsEmpty!20644 mapRes!20644))

(declare-fun b!463936 () Bool)

(declare-fun res!277448 () Bool)

(assert (=> b!463936 (=> (not res!277448) (not e!270969))))

(assert (=> b!463936 (= res!277448 (and (= (size!14303 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14302 _keys!1025) (size!14303 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41558 res!277449) b!463936))

(assert (= (and b!463936 res!277448) b!463931))

(assert (= (and b!463931 res!277450) b!463935))

(assert (= (and b!463935 res!277451) b!463930))

(assert (= (and b!463933 condMapEmpty!20644) mapIsEmpty!20644))

(assert (= (and b!463933 (not condMapEmpty!20644)) mapNonEmpty!20644))

(get-info :version)

(assert (= (and mapNonEmpty!20644 ((_ is ValueCellFull!5979) mapValue!20644)) b!463934))

(assert (= (and b!463933 ((_ is ValueCellFull!5979) mapDefault!20644)) b!463932))

(assert (= start!41558 b!463933))

(declare-fun m!446395 () Bool)

(assert (=> mapNonEmpty!20644 m!446395))

(declare-fun m!446397 () Bool)

(assert (=> b!463935 m!446397))

(declare-fun m!446399 () Bool)

(assert (=> b!463931 m!446399))

(declare-fun m!446401 () Bool)

(assert (=> b!463930 m!446401))

(declare-fun m!446403 () Bool)

(assert (=> b!463930 m!446403))

(declare-fun m!446405 () Bool)

(assert (=> b!463930 m!446405))

(declare-fun m!446407 () Bool)

(assert (=> start!41558 m!446407))

(declare-fun m!446409 () Bool)

(assert (=> start!41558 m!446409))

(declare-fun m!446411 () Bool)

(assert (=> start!41558 m!446411))

(check-sat (not start!41558) tp_is_empty!12645 (not mapNonEmpty!20644) b_and!19575 (not b!463935) (not b!463931) (not b!463930) (not b_next!11217))
(check-sat b_and!19575 (not b_next!11217))
