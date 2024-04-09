; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71054 () Bool)

(assert start!71054)

(declare-fun b_free!13233 () Bool)

(declare-fun b_next!13233 () Bool)

(assert (=> start!71054 (= b_free!13233 (not b_next!13233))))

(declare-fun tp!46452 () Bool)

(declare-fun b_and!22155 () Bool)

(assert (=> start!71054 (= tp!46452 b_and!22155)))

(declare-fun b!824677 () Bool)

(declare-fun res!562340 () Bool)

(declare-fun e!458925 () Bool)

(assert (=> b!824677 (=> (not res!562340) (not e!458925))))

(declare-datatypes ((array!46032 0))(
  ( (array!46033 (arr!22059 (Array (_ BitVec 32) (_ BitVec 64))) (size!22480 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46032)

(declare-datatypes ((List!15795 0))(
  ( (Nil!15792) (Cons!15791 (h!16920 (_ BitVec 64)) (t!22146 List!15795)) )
))
(declare-fun arrayNoDuplicates!0 (array!46032 (_ BitVec 32) List!15795) Bool)

(assert (=> b!824677 (= res!562340 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15792))))

(declare-fun res!562341 () Bool)

(assert (=> start!71054 (=> (not res!562341) (not e!458925))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71054 (= res!562341 (validMask!0 mask!1312))))

(assert (=> start!71054 e!458925))

(declare-fun tp_is_empty!14943 () Bool)

(assert (=> start!71054 tp_is_empty!14943))

(declare-fun array_inv!17579 (array!46032) Bool)

(assert (=> start!71054 (array_inv!17579 _keys!976)))

(assert (=> start!71054 true))

(declare-datatypes ((V!24925 0))(
  ( (V!24926 (val!7519 Int)) )
))
(declare-datatypes ((ValueCell!7056 0))(
  ( (ValueCellFull!7056 (v!9948 V!24925)) (EmptyCell!7056) )
))
(declare-datatypes ((array!46034 0))(
  ( (array!46035 (arr!22060 (Array (_ BitVec 32) ValueCell!7056)) (size!22481 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46034)

(declare-fun e!458928 () Bool)

(declare-fun array_inv!17580 (array!46034) Bool)

(assert (=> start!71054 (and (array_inv!17580 _values!788) e!458928)))

(assert (=> start!71054 tp!46452))

(declare-fun b!824678 () Bool)

(declare-fun e!458929 () Bool)

(assert (=> b!824678 (= e!458929 tp_is_empty!14943)))

(declare-fun b!824679 () Bool)

(declare-fun e!458926 () Bool)

(assert (=> b!824679 (= e!458925 (not e!458926))))

(declare-fun res!562343 () Bool)

(assert (=> b!824679 (=> res!562343 e!458926)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824679 (= res!562343 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9946 0))(
  ( (tuple2!9947 (_1!4983 (_ BitVec 64)) (_2!4983 V!24925)) )
))
(declare-datatypes ((List!15796 0))(
  ( (Nil!15793) (Cons!15792 (h!16921 tuple2!9946) (t!22147 List!15796)) )
))
(declare-datatypes ((ListLongMap!8783 0))(
  ( (ListLongMap!8784 (toList!4407 List!15796)) )
))
(declare-fun lt!371970 () ListLongMap!8783)

(declare-fun lt!371971 () ListLongMap!8783)

(assert (=> b!824679 (= lt!371970 lt!371971)))

(declare-fun zeroValueBefore!34 () V!24925)

(declare-fun zeroValueAfter!34 () V!24925)

(declare-fun minValue!754 () V!24925)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28256 0))(
  ( (Unit!28257) )
))
(declare-fun lt!371968 () Unit!28256)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!543 (array!46032 array!46034 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24925 V!24925 V!24925 V!24925 (_ BitVec 32) Int) Unit!28256)

(assert (=> b!824679 (= lt!371968 (lemmaNoChangeToArrayThenSameMapNoExtras!543 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2427 (array!46032 array!46034 (_ BitVec 32) (_ BitVec 32) V!24925 V!24925 (_ BitVec 32) Int) ListLongMap!8783)

(assert (=> b!824679 (= lt!371971 (getCurrentListMapNoExtraKeys!2427 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824679 (= lt!371970 (getCurrentListMapNoExtraKeys!2427 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824680 () Bool)

(declare-fun res!562339 () Bool)

(assert (=> b!824680 (=> (not res!562339) (not e!458925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46032 (_ BitVec 32)) Bool)

(assert (=> b!824680 (= res!562339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824681 () Bool)

(declare-fun e!458927 () Bool)

(assert (=> b!824681 (= e!458927 tp_is_empty!14943)))

(declare-fun mapNonEmpty!24034 () Bool)

(declare-fun mapRes!24034 () Bool)

(declare-fun tp!46453 () Bool)

(assert (=> mapNonEmpty!24034 (= mapRes!24034 (and tp!46453 e!458929))))

(declare-fun mapValue!24034 () ValueCell!7056)

(declare-fun mapRest!24034 () (Array (_ BitVec 32) ValueCell!7056))

(declare-fun mapKey!24034 () (_ BitVec 32))

(assert (=> mapNonEmpty!24034 (= (arr!22060 _values!788) (store mapRest!24034 mapKey!24034 mapValue!24034))))

(declare-fun b!824682 () Bool)

(assert (=> b!824682 (= e!458928 (and e!458927 mapRes!24034))))

(declare-fun condMapEmpty!24034 () Bool)

(declare-fun mapDefault!24034 () ValueCell!7056)

(assert (=> b!824682 (= condMapEmpty!24034 (= (arr!22060 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7056)) mapDefault!24034)))))

(declare-fun mapIsEmpty!24034 () Bool)

(assert (=> mapIsEmpty!24034 mapRes!24034))

(declare-fun b!824683 () Bool)

(assert (=> b!824683 (= e!458926 true)))

(declare-fun lt!371969 () ListLongMap!8783)

(declare-fun getCurrentListMap!2519 (array!46032 array!46034 (_ BitVec 32) (_ BitVec 32) V!24925 V!24925 (_ BitVec 32) Int) ListLongMap!8783)

(assert (=> b!824683 (= lt!371969 (getCurrentListMap!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824684 () Bool)

(declare-fun res!562342 () Bool)

(assert (=> b!824684 (=> (not res!562342) (not e!458925))))

(assert (=> b!824684 (= res!562342 (and (= (size!22481 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22480 _keys!976) (size!22481 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71054 res!562341) b!824684))

(assert (= (and b!824684 res!562342) b!824680))

(assert (= (and b!824680 res!562339) b!824677))

(assert (= (and b!824677 res!562340) b!824679))

(assert (= (and b!824679 (not res!562343)) b!824683))

(assert (= (and b!824682 condMapEmpty!24034) mapIsEmpty!24034))

(assert (= (and b!824682 (not condMapEmpty!24034)) mapNonEmpty!24034))

(get-info :version)

(assert (= (and mapNonEmpty!24034 ((_ is ValueCellFull!7056) mapValue!24034)) b!824678))

(assert (= (and b!824682 ((_ is ValueCellFull!7056) mapDefault!24034)) b!824681))

(assert (= start!71054 b!824682))

(declare-fun m!766791 () Bool)

(assert (=> b!824679 m!766791))

(declare-fun m!766793 () Bool)

(assert (=> b!824679 m!766793))

(declare-fun m!766795 () Bool)

(assert (=> b!824679 m!766795))

(declare-fun m!766797 () Bool)

(assert (=> mapNonEmpty!24034 m!766797))

(declare-fun m!766799 () Bool)

(assert (=> b!824680 m!766799))

(declare-fun m!766801 () Bool)

(assert (=> start!71054 m!766801))

(declare-fun m!766803 () Bool)

(assert (=> start!71054 m!766803))

(declare-fun m!766805 () Bool)

(assert (=> start!71054 m!766805))

(declare-fun m!766807 () Bool)

(assert (=> b!824677 m!766807))

(declare-fun m!766809 () Bool)

(assert (=> b!824683 m!766809))

(check-sat (not b!824679) (not mapNonEmpty!24034) (not b!824683) (not b_next!13233) (not start!71054) b_and!22155 (not b!824680) tp_is_empty!14943 (not b!824677))
(check-sat b_and!22155 (not b_next!13233))
