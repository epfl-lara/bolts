; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70608 () Bool)

(assert start!70608)

(declare-fun b_free!12891 () Bool)

(declare-fun b_next!12891 () Bool)

(assert (=> start!70608 (= b_free!12891 (not b_next!12891))))

(declare-fun tp!45408 () Bool)

(declare-fun b_and!21751 () Bool)

(assert (=> start!70608 (= tp!45408 b_and!21751)))

(declare-fun b!819822 () Bool)

(declare-fun res!559529 () Bool)

(declare-fun e!455415 () Bool)

(assert (=> b!819822 (=> (not res!559529) (not e!455415))))

(declare-datatypes ((array!45366 0))(
  ( (array!45367 (arr!21732 (Array (_ BitVec 32) (_ BitVec 64))) (size!22153 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45366)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24469 0))(
  ( (V!24470 (val!7348 Int)) )
))
(declare-datatypes ((ValueCell!6885 0))(
  ( (ValueCellFull!6885 (v!9774 V!24469)) (EmptyCell!6885) )
))
(declare-datatypes ((array!45368 0))(
  ( (array!45369 (arr!21733 (Array (_ BitVec 32) ValueCell!6885)) (size!22154 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45368)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!819822 (= res!559529 (and (= (size!22154 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22153 _keys!976) (size!22154 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819823 () Bool)

(declare-fun e!455414 () Bool)

(assert (=> b!819823 (= e!455415 (not e!455414))))

(declare-fun res!559527 () Bool)

(assert (=> b!819823 (=> res!559527 e!455414)))

(assert (=> b!819823 (= res!559527 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9686 0))(
  ( (tuple2!9687 (_1!4853 (_ BitVec 64)) (_2!4853 V!24469)) )
))
(declare-datatypes ((List!15543 0))(
  ( (Nil!15540) (Cons!15539 (h!16668 tuple2!9686) (t!21882 List!15543)) )
))
(declare-datatypes ((ListLongMap!8523 0))(
  ( (ListLongMap!8524 (toList!4277 List!15543)) )
))
(declare-fun lt!368252 () ListLongMap!8523)

(declare-fun lt!368256 () ListLongMap!8523)

(assert (=> b!819823 (= lt!368252 lt!368256)))

(declare-fun zeroValueBefore!34 () V!24469)

(declare-fun zeroValueAfter!34 () V!24469)

(declare-fun minValue!754 () V!24469)

(declare-datatypes ((Unit!28005 0))(
  ( (Unit!28006) )
))
(declare-fun lt!368253 () Unit!28005)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!430 (array!45366 array!45368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24469 V!24469 V!24469 V!24469 (_ BitVec 32) Int) Unit!28005)

(assert (=> b!819823 (= lt!368253 (lemmaNoChangeToArrayThenSameMapNoExtras!430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2314 (array!45366 array!45368 (_ BitVec 32) (_ BitVec 32) V!24469 V!24469 (_ BitVec 32) Int) ListLongMap!8523)

(assert (=> b!819823 (= lt!368256 (getCurrentListMapNoExtraKeys!2314 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819823 (= lt!368252 (getCurrentListMapNoExtraKeys!2314 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819824 () Bool)

(declare-fun e!455418 () Bool)

(declare-fun tp_is_empty!14601 () Bool)

(assert (=> b!819824 (= e!455418 tp_is_empty!14601)))

(declare-fun b!819825 () Bool)

(assert (=> b!819825 (= e!455414 true)))

(declare-fun lt!368261 () tuple2!9686)

(declare-fun lt!368254 () tuple2!9686)

(declare-fun lt!368257 () ListLongMap!8523)

(declare-fun +!1818 (ListLongMap!8523 tuple2!9686) ListLongMap!8523)

(assert (=> b!819825 (= lt!368257 (+!1818 (+!1818 lt!368256 lt!368254) lt!368261))))

(declare-fun lt!368255 () ListLongMap!8523)

(assert (=> b!819825 (= (+!1818 lt!368252 lt!368261) (+!1818 lt!368255 lt!368261))))

(declare-fun lt!368258 () Unit!28005)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!194 (ListLongMap!8523 (_ BitVec 64) V!24469 V!24469) Unit!28005)

(assert (=> b!819825 (= lt!368258 (addSameAsAddTwiceSameKeyDiffValues!194 lt!368252 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819825 (= lt!368261 (tuple2!9687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455417 () Bool)

(assert (=> b!819825 e!455417))

(declare-fun res!559526 () Bool)

(assert (=> b!819825 (=> (not res!559526) (not e!455417))))

(declare-fun lt!368259 () ListLongMap!8523)

(assert (=> b!819825 (= res!559526 (= lt!368259 lt!368255))))

(assert (=> b!819825 (= lt!368255 (+!1818 lt!368252 lt!368254))))

(assert (=> b!819825 (= lt!368254 (tuple2!9687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!368260 () ListLongMap!8523)

(declare-fun getCurrentListMap!2429 (array!45366 array!45368 (_ BitVec 32) (_ BitVec 32) V!24469 V!24469 (_ BitVec 32) Int) ListLongMap!8523)

(assert (=> b!819825 (= lt!368260 (getCurrentListMap!2429 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819825 (= lt!368259 (getCurrentListMap!2429 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819826 () Bool)

(declare-fun e!455419 () Bool)

(assert (=> b!819826 (= e!455419 tp_is_empty!14601)))

(declare-fun mapNonEmpty!23503 () Bool)

(declare-fun mapRes!23503 () Bool)

(declare-fun tp!45409 () Bool)

(assert (=> mapNonEmpty!23503 (= mapRes!23503 (and tp!45409 e!455418))))

(declare-fun mapRest!23503 () (Array (_ BitVec 32) ValueCell!6885))

(declare-fun mapValue!23503 () ValueCell!6885)

(declare-fun mapKey!23503 () (_ BitVec 32))

(assert (=> mapNonEmpty!23503 (= (arr!21733 _values!788) (store mapRest!23503 mapKey!23503 mapValue!23503))))

(declare-fun b!819827 () Bool)

(declare-fun e!455420 () Bool)

(assert (=> b!819827 (= e!455420 (and e!455419 mapRes!23503))))

(declare-fun condMapEmpty!23503 () Bool)

(declare-fun mapDefault!23503 () ValueCell!6885)

(assert (=> b!819827 (= condMapEmpty!23503 (= (arr!21733 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6885)) mapDefault!23503)))))

(declare-fun b!819828 () Bool)

(declare-fun res!559530 () Bool)

(assert (=> b!819828 (=> (not res!559530) (not e!455415))))

(declare-datatypes ((List!15544 0))(
  ( (Nil!15541) (Cons!15540 (h!16669 (_ BitVec 64)) (t!21883 List!15544)) )
))
(declare-fun arrayNoDuplicates!0 (array!45366 (_ BitVec 32) List!15544) Bool)

(assert (=> b!819828 (= res!559530 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15541))))

(declare-fun res!559528 () Bool)

(assert (=> start!70608 (=> (not res!559528) (not e!455415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70608 (= res!559528 (validMask!0 mask!1312))))

(assert (=> start!70608 e!455415))

(assert (=> start!70608 tp_is_empty!14601))

(declare-fun array_inv!17341 (array!45366) Bool)

(assert (=> start!70608 (array_inv!17341 _keys!976)))

(assert (=> start!70608 true))

(declare-fun array_inv!17342 (array!45368) Bool)

(assert (=> start!70608 (and (array_inv!17342 _values!788) e!455420)))

(assert (=> start!70608 tp!45408))

(declare-fun b!819821 () Bool)

(assert (=> b!819821 (= e!455417 (= lt!368260 (+!1818 lt!368256 (tuple2!9687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819829 () Bool)

(declare-fun res!559531 () Bool)

(assert (=> b!819829 (=> (not res!559531) (not e!455415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45366 (_ BitVec 32)) Bool)

(assert (=> b!819829 (= res!559531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23503 () Bool)

(assert (=> mapIsEmpty!23503 mapRes!23503))

(assert (= (and start!70608 res!559528) b!819822))

(assert (= (and b!819822 res!559529) b!819829))

(assert (= (and b!819829 res!559531) b!819828))

(assert (= (and b!819828 res!559530) b!819823))

(assert (= (and b!819823 (not res!559527)) b!819825))

(assert (= (and b!819825 res!559526) b!819821))

(assert (= (and b!819827 condMapEmpty!23503) mapIsEmpty!23503))

(assert (= (and b!819827 (not condMapEmpty!23503)) mapNonEmpty!23503))

(get-info :version)

(assert (= (and mapNonEmpty!23503 ((_ is ValueCellFull!6885) mapValue!23503)) b!819824))

(assert (= (and b!819827 ((_ is ValueCellFull!6885) mapDefault!23503)) b!819826))

(assert (= start!70608 b!819827))

(declare-fun m!761717 () Bool)

(assert (=> mapNonEmpty!23503 m!761717))

(declare-fun m!761719 () Bool)

(assert (=> b!819828 m!761719))

(declare-fun m!761721 () Bool)

(assert (=> b!819821 m!761721))

(declare-fun m!761723 () Bool)

(assert (=> b!819829 m!761723))

(declare-fun m!761725 () Bool)

(assert (=> b!819825 m!761725))

(declare-fun m!761727 () Bool)

(assert (=> b!819825 m!761727))

(declare-fun m!761729 () Bool)

(assert (=> b!819825 m!761729))

(declare-fun m!761731 () Bool)

(assert (=> b!819825 m!761731))

(declare-fun m!761733 () Bool)

(assert (=> b!819825 m!761733))

(assert (=> b!819825 m!761731))

(declare-fun m!761735 () Bool)

(assert (=> b!819825 m!761735))

(declare-fun m!761737 () Bool)

(assert (=> b!819825 m!761737))

(declare-fun m!761739 () Bool)

(assert (=> b!819825 m!761739))

(declare-fun m!761741 () Bool)

(assert (=> start!70608 m!761741))

(declare-fun m!761743 () Bool)

(assert (=> start!70608 m!761743))

(declare-fun m!761745 () Bool)

(assert (=> start!70608 m!761745))

(declare-fun m!761747 () Bool)

(assert (=> b!819823 m!761747))

(declare-fun m!761749 () Bool)

(assert (=> b!819823 m!761749))

(declare-fun m!761751 () Bool)

(assert (=> b!819823 m!761751))

(check-sat (not mapNonEmpty!23503) (not b_next!12891) (not b!819821) (not b!819828) (not b!819823) tp_is_empty!14601 (not b!819825) (not b!819829) (not start!70608) b_and!21751)
(check-sat b_and!21751 (not b_next!12891))
