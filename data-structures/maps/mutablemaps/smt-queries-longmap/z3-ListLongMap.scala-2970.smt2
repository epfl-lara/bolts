; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42086 () Bool)

(assert start!42086)

(declare-fun b_free!11631 () Bool)

(declare-fun b_next!11631 () Bool)

(assert (=> start!42086 (= b_free!11631 (not b_next!11631))))

(declare-fun tp!40912 () Bool)

(declare-fun b_and!20059 () Bool)

(assert (=> start!42086 (= tp!40912 b_and!20059)))

(declare-fun b!469610 () Bool)

(declare-fun e!275047 () Bool)

(assert (=> b!469610 (= e!275047 true)))

(declare-datatypes ((V!18517 0))(
  ( (V!18518 (val!6574 Int)) )
))
(declare-datatypes ((tuple2!8630 0))(
  ( (tuple2!8631 (_1!4325 (_ BitVec 64)) (_2!4325 V!18517)) )
))
(declare-datatypes ((List!8748 0))(
  ( (Nil!8745) (Cons!8744 (h!9600 tuple2!8630) (t!14716 List!8748)) )
))
(declare-datatypes ((ListLongMap!7557 0))(
  ( (ListLongMap!7558 (toList!3794 List!8748)) )
))
(declare-fun lt!212996 () ListLongMap!7557)

(declare-fun lt!212994 () tuple2!8630)

(declare-fun minValueBefore!38 () V!18517)

(declare-fun +!1681 (ListLongMap!7557 tuple2!8630) ListLongMap!7557)

(assert (=> b!469610 (= (+!1681 lt!212996 lt!212994) (+!1681 (+!1681 lt!212996 (tuple2!8631 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212994))))

(declare-fun minValueAfter!38 () V!18517)

(assert (=> b!469610 (= lt!212994 (tuple2!8631 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13712 0))(
  ( (Unit!13713) )
))
(declare-fun lt!212995 () Unit!13712)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!122 (ListLongMap!7557 (_ BitVec 64) V!18517 V!18517) Unit!13712)

(assert (=> b!469610 (= lt!212995 (addSameAsAddTwiceSameKeyDiffValues!122 lt!212996 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18517)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212992 () ListLongMap!7557)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29853 0))(
  ( (array!29854 (arr!14348 (Array (_ BitVec 32) (_ BitVec 64))) (size!14700 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29853)

(declare-datatypes ((ValueCell!6186 0))(
  ( (ValueCellFull!6186 (v!8860 V!18517)) (EmptyCell!6186) )
))
(declare-datatypes ((array!29855 0))(
  ( (array!29856 (arr!14349 (Array (_ BitVec 32) ValueCell!6186)) (size!14701 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29855)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2203 (array!29853 array!29855 (_ BitVec 32) (_ BitVec 32) V!18517 V!18517 (_ BitVec 32) Int) ListLongMap!7557)

(assert (=> b!469610 (= lt!212992 (getCurrentListMap!2203 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212991 () ListLongMap!7557)

(assert (=> b!469610 (= lt!212991 (getCurrentListMap!2203 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469611 () Bool)

(declare-fun res!280707 () Bool)

(declare-fun e!275045 () Bool)

(assert (=> b!469611 (=> (not res!280707) (not e!275045))))

(assert (=> b!469611 (= res!280707 (and (= (size!14701 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14700 _keys!1025) (size!14701 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469612 () Bool)

(declare-fun res!280708 () Bool)

(assert (=> b!469612 (=> (not res!280708) (not e!275045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29853 (_ BitVec 32)) Bool)

(assert (=> b!469612 (= res!280708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469613 () Bool)

(declare-fun e!275050 () Bool)

(declare-fun tp_is_empty!13059 () Bool)

(assert (=> b!469613 (= e!275050 tp_is_empty!13059)))

(declare-fun res!280711 () Bool)

(assert (=> start!42086 (=> (not res!280711) (not e!275045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42086 (= res!280711 (validMask!0 mask!1365))))

(assert (=> start!42086 e!275045))

(assert (=> start!42086 tp_is_empty!13059))

(assert (=> start!42086 tp!40912))

(assert (=> start!42086 true))

(declare-fun array_inv!10346 (array!29853) Bool)

(assert (=> start!42086 (array_inv!10346 _keys!1025)))

(declare-fun e!275046 () Bool)

(declare-fun array_inv!10347 (array!29855) Bool)

(assert (=> start!42086 (and (array_inv!10347 _values!833) e!275046)))

(declare-fun mapNonEmpty!21286 () Bool)

(declare-fun mapRes!21286 () Bool)

(declare-fun tp!40911 () Bool)

(assert (=> mapNonEmpty!21286 (= mapRes!21286 (and tp!40911 e!275050))))

(declare-fun mapRest!21286 () (Array (_ BitVec 32) ValueCell!6186))

(declare-fun mapKey!21286 () (_ BitVec 32))

(declare-fun mapValue!21286 () ValueCell!6186)

(assert (=> mapNonEmpty!21286 (= (arr!14349 _values!833) (store mapRest!21286 mapKey!21286 mapValue!21286))))

(declare-fun b!469614 () Bool)

(assert (=> b!469614 (= e!275045 (not e!275047))))

(declare-fun res!280709 () Bool)

(assert (=> b!469614 (=> res!280709 e!275047)))

(assert (=> b!469614 (= res!280709 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212997 () ListLongMap!7557)

(assert (=> b!469614 (= lt!212996 lt!212997)))

(declare-fun lt!212993 () Unit!13712)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!151 (array!29853 array!29855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18517 V!18517 V!18517 V!18517 (_ BitVec 32) Int) Unit!13712)

(assert (=> b!469614 (= lt!212993 (lemmaNoChangeToArrayThenSameMapNoExtras!151 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1956 (array!29853 array!29855 (_ BitVec 32) (_ BitVec 32) V!18517 V!18517 (_ BitVec 32) Int) ListLongMap!7557)

(assert (=> b!469614 (= lt!212997 (getCurrentListMapNoExtraKeys!1956 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469614 (= lt!212996 (getCurrentListMapNoExtraKeys!1956 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469615 () Bool)

(declare-fun e!275049 () Bool)

(assert (=> b!469615 (= e!275049 tp_is_empty!13059)))

(declare-fun b!469616 () Bool)

(assert (=> b!469616 (= e!275046 (and e!275049 mapRes!21286))))

(declare-fun condMapEmpty!21286 () Bool)

(declare-fun mapDefault!21286 () ValueCell!6186)

(assert (=> b!469616 (= condMapEmpty!21286 (= (arr!14349 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6186)) mapDefault!21286)))))

(declare-fun b!469617 () Bool)

(declare-fun res!280710 () Bool)

(assert (=> b!469617 (=> (not res!280710) (not e!275045))))

(declare-datatypes ((List!8749 0))(
  ( (Nil!8746) (Cons!8745 (h!9601 (_ BitVec 64)) (t!14717 List!8749)) )
))
(declare-fun arrayNoDuplicates!0 (array!29853 (_ BitVec 32) List!8749) Bool)

(assert (=> b!469617 (= res!280710 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8746))))

(declare-fun mapIsEmpty!21286 () Bool)

(assert (=> mapIsEmpty!21286 mapRes!21286))

(assert (= (and start!42086 res!280711) b!469611))

(assert (= (and b!469611 res!280707) b!469612))

(assert (= (and b!469612 res!280708) b!469617))

(assert (= (and b!469617 res!280710) b!469614))

(assert (= (and b!469614 (not res!280709)) b!469610))

(assert (= (and b!469616 condMapEmpty!21286) mapIsEmpty!21286))

(assert (= (and b!469616 (not condMapEmpty!21286)) mapNonEmpty!21286))

(get-info :version)

(assert (= (and mapNonEmpty!21286 ((_ is ValueCellFull!6186) mapValue!21286)) b!469613))

(assert (= (and b!469616 ((_ is ValueCellFull!6186) mapDefault!21286)) b!469615))

(assert (= start!42086 b!469616))

(declare-fun m!451901 () Bool)

(assert (=> start!42086 m!451901))

(declare-fun m!451903 () Bool)

(assert (=> start!42086 m!451903))

(declare-fun m!451905 () Bool)

(assert (=> start!42086 m!451905))

(declare-fun m!451907 () Bool)

(assert (=> b!469614 m!451907))

(declare-fun m!451909 () Bool)

(assert (=> b!469614 m!451909))

(declare-fun m!451911 () Bool)

(assert (=> b!469614 m!451911))

(declare-fun m!451913 () Bool)

(assert (=> b!469612 m!451913))

(declare-fun m!451915 () Bool)

(assert (=> b!469617 m!451915))

(declare-fun m!451917 () Bool)

(assert (=> b!469610 m!451917))

(declare-fun m!451919 () Bool)

(assert (=> b!469610 m!451919))

(assert (=> b!469610 m!451917))

(declare-fun m!451921 () Bool)

(assert (=> b!469610 m!451921))

(declare-fun m!451923 () Bool)

(assert (=> b!469610 m!451923))

(declare-fun m!451925 () Bool)

(assert (=> b!469610 m!451925))

(declare-fun m!451927 () Bool)

(assert (=> b!469610 m!451927))

(declare-fun m!451929 () Bool)

(assert (=> mapNonEmpty!21286 m!451929))

(check-sat (not b!469614) (not mapNonEmpty!21286) (not start!42086) tp_is_empty!13059 (not b!469610) (not b!469617) (not b!469612) b_and!20059 (not b_next!11631))
(check-sat b_and!20059 (not b_next!11631))
