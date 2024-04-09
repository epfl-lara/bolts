; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41498 () Bool)

(assert start!41498)

(declare-fun b_free!11157 () Bool)

(declare-fun b_next!11157 () Bool)

(assert (=> start!41498 (= b_free!11157 (not b_next!11157))))

(declare-fun tp!39468 () Bool)

(declare-fun b_and!19515 () Bool)

(assert (=> start!41498 (= tp!39468 b_and!19515)))

(declare-fun b!463300 () Bool)

(declare-fun res!277090 () Bool)

(declare-fun e!270519 () Bool)

(assert (=> b!463300 (=> (not res!277090) (not e!270519))))

(declare-datatypes ((array!28931 0))(
  ( (array!28932 (arr!13894 (Array (_ BitVec 32) (_ BitVec 64))) (size!14246 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28931)

(declare-datatypes ((List!8404 0))(
  ( (Nil!8401) (Cons!8400 (h!9256 (_ BitVec 64)) (t!14358 List!8404)) )
))
(declare-fun arrayNoDuplicates!0 (array!28931 (_ BitVec 32) List!8404) Bool)

(assert (=> b!463300 (= res!277090 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8401))))

(declare-fun b!463301 () Bool)

(declare-fun e!270520 () Bool)

(declare-fun tp_is_empty!12585 () Bool)

(assert (=> b!463301 (= e!270520 tp_is_empty!12585)))

(declare-fun b!463302 () Bool)

(declare-fun res!277091 () Bool)

(assert (=> b!463302 (=> (not res!277091) (not e!270519))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17885 0))(
  ( (V!17886 (val!6337 Int)) )
))
(declare-datatypes ((ValueCell!5949 0))(
  ( (ValueCellFull!5949 (v!8620 V!17885)) (EmptyCell!5949) )
))
(declare-datatypes ((array!28933 0))(
  ( (array!28934 (arr!13895 (Array (_ BitVec 32) ValueCell!5949)) (size!14247 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28933)

(assert (=> b!463302 (= res!277091 (and (= (size!14247 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14246 _keys!1025) (size!14247 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463303 () Bool)

(declare-fun e!270518 () Bool)

(declare-fun mapRes!20554 () Bool)

(assert (=> b!463303 (= e!270518 (and e!270520 mapRes!20554))))

(declare-fun condMapEmpty!20554 () Bool)

(declare-fun mapDefault!20554 () ValueCell!5949)

(assert (=> b!463303 (= condMapEmpty!20554 (= (arr!13895 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5949)) mapDefault!20554)))))

(declare-fun res!277088 () Bool)

(assert (=> start!41498 (=> (not res!277088) (not e!270519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41498 (= res!277088 (validMask!0 mask!1365))))

(assert (=> start!41498 e!270519))

(assert (=> start!41498 tp_is_empty!12585))

(assert (=> start!41498 tp!39468))

(assert (=> start!41498 true))

(declare-fun array_inv!10024 (array!28931) Bool)

(assert (=> start!41498 (array_inv!10024 _keys!1025)))

(declare-fun array_inv!10025 (array!28933) Bool)

(assert (=> start!41498 (and (array_inv!10025 _values!833) e!270518)))

(declare-fun mapNonEmpty!20554 () Bool)

(declare-fun tp!39469 () Bool)

(declare-fun e!270516 () Bool)

(assert (=> mapNonEmpty!20554 (= mapRes!20554 (and tp!39469 e!270516))))

(declare-fun mapValue!20554 () ValueCell!5949)

(declare-fun mapRest!20554 () (Array (_ BitVec 32) ValueCell!5949))

(declare-fun mapKey!20554 () (_ BitVec 32))

(assert (=> mapNonEmpty!20554 (= (arr!13895 _values!833) (store mapRest!20554 mapKey!20554 mapValue!20554))))

(declare-fun b!463304 () Bool)

(declare-fun res!277089 () Bool)

(assert (=> b!463304 (=> (not res!277089) (not e!270519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28931 (_ BitVec 32)) Bool)

(assert (=> b!463304 (= res!277089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463305 () Bool)

(assert (=> b!463305 (= e!270516 tp_is_empty!12585)))

(declare-fun b!463306 () Bool)

(assert (=> b!463306 (= e!270519 false)))

(declare-fun zeroValue!794 () V!17885)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8278 0))(
  ( (tuple2!8279 (_1!4149 (_ BitVec 64)) (_2!4149 V!17885)) )
))
(declare-datatypes ((List!8405 0))(
  ( (Nil!8402) (Cons!8401 (h!9257 tuple2!8278) (t!14359 List!8405)) )
))
(declare-datatypes ((ListLongMap!7205 0))(
  ( (ListLongMap!7206 (toList!3618 List!8405)) )
))
(declare-fun lt!209358 () ListLongMap!7205)

(declare-fun minValueAfter!38 () V!17885)

(declare-fun getCurrentListMapNoExtraKeys!1786 (array!28931 array!28933 (_ BitVec 32) (_ BitVec 32) V!17885 V!17885 (_ BitVec 32) Int) ListLongMap!7205)

(assert (=> b!463306 (= lt!209358 (getCurrentListMapNoExtraKeys!1786 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17885)

(declare-fun lt!209357 () ListLongMap!7205)

(assert (=> b!463306 (= lt!209357 (getCurrentListMapNoExtraKeys!1786 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20554 () Bool)

(assert (=> mapIsEmpty!20554 mapRes!20554))

(assert (= (and start!41498 res!277088) b!463302))

(assert (= (and b!463302 res!277091) b!463304))

(assert (= (and b!463304 res!277089) b!463300))

(assert (= (and b!463300 res!277090) b!463306))

(assert (= (and b!463303 condMapEmpty!20554) mapIsEmpty!20554))

(assert (= (and b!463303 (not condMapEmpty!20554)) mapNonEmpty!20554))

(get-info :version)

(assert (= (and mapNonEmpty!20554 ((_ is ValueCellFull!5949) mapValue!20554)) b!463305))

(assert (= (and b!463303 ((_ is ValueCellFull!5949) mapDefault!20554)) b!463301))

(assert (= start!41498 b!463303))

(declare-fun m!445913 () Bool)

(assert (=> mapNonEmpty!20554 m!445913))

(declare-fun m!445915 () Bool)

(assert (=> start!41498 m!445915))

(declare-fun m!445917 () Bool)

(assert (=> start!41498 m!445917))

(declare-fun m!445919 () Bool)

(assert (=> start!41498 m!445919))

(declare-fun m!445921 () Bool)

(assert (=> b!463306 m!445921))

(declare-fun m!445923 () Bool)

(assert (=> b!463306 m!445923))

(declare-fun m!445925 () Bool)

(assert (=> b!463304 m!445925))

(declare-fun m!445927 () Bool)

(assert (=> b!463300 m!445927))

(check-sat (not b!463306) (not start!41498) (not mapNonEmpty!20554) (not b!463304) (not b!463300) (not b_next!11157) b_and!19515 tp_is_empty!12585)
(check-sat b_and!19515 (not b_next!11157))
