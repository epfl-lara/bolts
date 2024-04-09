; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41638 () Bool)

(assert start!41638)

(declare-fun b_free!11283 () Bool)

(declare-fun b_next!11283 () Bool)

(assert (=> start!41638 (= b_free!11283 (not b_next!11283))))

(declare-fun tp!39850 () Bool)

(declare-fun b_and!19649 () Bool)

(assert (=> start!41638 (= tp!39850 b_and!19649)))

(declare-fun b!464708 () Bool)

(declare-fun res!277878 () Bool)

(declare-fun e!271517 () Bool)

(assert (=> b!464708 (=> (not res!277878) (not e!271517))))

(declare-datatypes ((array!29169 0))(
  ( (array!29170 (arr!14012 (Array (_ BitVec 32) (_ BitVec 64))) (size!14364 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29169)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29169 (_ BitVec 32)) Bool)

(assert (=> b!464708 (= res!277878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20746 () Bool)

(declare-fun mapRes!20746 () Bool)

(assert (=> mapIsEmpty!20746 mapRes!20746))

(declare-fun b!464709 () Bool)

(declare-fun e!271520 () Bool)

(declare-fun e!271516 () Bool)

(assert (=> b!464709 (= e!271520 (and e!271516 mapRes!20746))))

(declare-fun condMapEmpty!20746 () Bool)

(declare-datatypes ((V!18053 0))(
  ( (V!18054 (val!6400 Int)) )
))
(declare-datatypes ((ValueCell!6012 0))(
  ( (ValueCellFull!6012 (v!8683 V!18053)) (EmptyCell!6012) )
))
(declare-datatypes ((array!29171 0))(
  ( (array!29172 (arr!14013 (Array (_ BitVec 32) ValueCell!6012)) (size!14365 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29171)

(declare-fun mapDefault!20746 () ValueCell!6012)

(assert (=> b!464709 (= condMapEmpty!20746 (= (arr!14013 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6012)) mapDefault!20746)))))

(declare-fun b!464710 () Bool)

(assert (=> b!464710 (= e!271517 (not true))))

(declare-datatypes ((tuple2!8364 0))(
  ( (tuple2!8365 (_1!4192 (_ BitVec 64)) (_2!4192 V!18053)) )
))
(declare-datatypes ((List!8491 0))(
  ( (Nil!8488) (Cons!8487 (h!9343 tuple2!8364) (t!14447 List!8491)) )
))
(declare-datatypes ((ListLongMap!7291 0))(
  ( (ListLongMap!7292 (toList!3661 List!8491)) )
))
(declare-fun lt!209879 () ListLongMap!7291)

(declare-fun lt!209880 () ListLongMap!7291)

(assert (=> b!464710 (= lt!209879 lt!209880)))

(declare-datatypes ((Unit!13443 0))(
  ( (Unit!13444) )
))
(declare-fun lt!209881 () Unit!13443)

(declare-fun minValueBefore!38 () V!18053)

(declare-fun zeroValue!794 () V!18053)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18053)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!24 (array!29169 array!29171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18053 V!18053 V!18053 V!18053 (_ BitVec 32) Int) Unit!13443)

(assert (=> b!464710 (= lt!209881 (lemmaNoChangeToArrayThenSameMapNoExtras!24 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1829 (array!29169 array!29171 (_ BitVec 32) (_ BitVec 32) V!18053 V!18053 (_ BitVec 32) Int) ListLongMap!7291)

(assert (=> b!464710 (= lt!209880 (getCurrentListMapNoExtraKeys!1829 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464710 (= lt!209879 (getCurrentListMapNoExtraKeys!1829 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464711 () Bool)

(declare-fun e!271519 () Bool)

(declare-fun tp_is_empty!12711 () Bool)

(assert (=> b!464711 (= e!271519 tp_is_empty!12711)))

(declare-fun b!464712 () Bool)

(declare-fun res!277876 () Bool)

(assert (=> b!464712 (=> (not res!277876) (not e!271517))))

(assert (=> b!464712 (= res!277876 (and (= (size!14365 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14364 _keys!1025) (size!14365 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464713 () Bool)

(assert (=> b!464713 (= e!271516 tp_is_empty!12711)))

(declare-fun mapNonEmpty!20746 () Bool)

(declare-fun tp!39849 () Bool)

(assert (=> mapNonEmpty!20746 (= mapRes!20746 (and tp!39849 e!271519))))

(declare-fun mapKey!20746 () (_ BitVec 32))

(declare-fun mapValue!20746 () ValueCell!6012)

(declare-fun mapRest!20746 () (Array (_ BitVec 32) ValueCell!6012))

(assert (=> mapNonEmpty!20746 (= (arr!14013 _values!833) (store mapRest!20746 mapKey!20746 mapValue!20746))))

(declare-fun b!464714 () Bool)

(declare-fun res!277877 () Bool)

(assert (=> b!464714 (=> (not res!277877) (not e!271517))))

(declare-datatypes ((List!8492 0))(
  ( (Nil!8489) (Cons!8488 (h!9344 (_ BitVec 64)) (t!14448 List!8492)) )
))
(declare-fun arrayNoDuplicates!0 (array!29169 (_ BitVec 32) List!8492) Bool)

(assert (=> b!464714 (= res!277877 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8489))))

(declare-fun res!277875 () Bool)

(assert (=> start!41638 (=> (not res!277875) (not e!271517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41638 (= res!277875 (validMask!0 mask!1365))))

(assert (=> start!41638 e!271517))

(assert (=> start!41638 tp_is_empty!12711))

(assert (=> start!41638 tp!39850))

(assert (=> start!41638 true))

(declare-fun array_inv!10100 (array!29169) Bool)

(assert (=> start!41638 (array_inv!10100 _keys!1025)))

(declare-fun array_inv!10101 (array!29171) Bool)

(assert (=> start!41638 (and (array_inv!10101 _values!833) e!271520)))

(assert (= (and start!41638 res!277875) b!464712))

(assert (= (and b!464712 res!277876) b!464708))

(assert (= (and b!464708 res!277878) b!464714))

(assert (= (and b!464714 res!277877) b!464710))

(assert (= (and b!464709 condMapEmpty!20746) mapIsEmpty!20746))

(assert (= (and b!464709 (not condMapEmpty!20746)) mapNonEmpty!20746))

(get-info :version)

(assert (= (and mapNonEmpty!20746 ((_ is ValueCellFull!6012) mapValue!20746)) b!464711))

(assert (= (and b!464709 ((_ is ValueCellFull!6012) mapDefault!20746)) b!464713))

(assert (= start!41638 b!464709))

(declare-fun m!447055 () Bool)

(assert (=> b!464710 m!447055))

(declare-fun m!447057 () Bool)

(assert (=> b!464710 m!447057))

(declare-fun m!447059 () Bool)

(assert (=> b!464710 m!447059))

(declare-fun m!447061 () Bool)

(assert (=> b!464708 m!447061))

(declare-fun m!447063 () Bool)

(assert (=> b!464714 m!447063))

(declare-fun m!447065 () Bool)

(assert (=> mapNonEmpty!20746 m!447065))

(declare-fun m!447067 () Bool)

(assert (=> start!41638 m!447067))

(declare-fun m!447069 () Bool)

(assert (=> start!41638 m!447069))

(declare-fun m!447071 () Bool)

(assert (=> start!41638 m!447071))

(check-sat (not b!464714) b_and!19649 (not b!464710) (not b!464708) (not start!41638) tp_is_empty!12711 (not b_next!11283) (not mapNonEmpty!20746))
(check-sat b_and!19649 (not b_next!11283))
