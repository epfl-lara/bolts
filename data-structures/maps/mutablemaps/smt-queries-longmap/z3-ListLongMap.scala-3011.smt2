; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42410 () Bool)

(assert start!42410)

(declare-fun b_free!11877 () Bool)

(declare-fun b_next!11877 () Bool)

(assert (=> start!42410 (= b_free!11877 (not b_next!11877))))

(declare-fun tp!41664 () Bool)

(declare-fun b_and!20351 () Bool)

(assert (=> start!42410 (= tp!41664 b_and!20351)))

(declare-fun mapIsEmpty!21670 () Bool)

(declare-fun mapRes!21670 () Bool)

(assert (=> mapIsEmpty!21670 mapRes!21670))

(declare-fun mapNonEmpty!21670 () Bool)

(declare-fun tp!41665 () Bool)

(declare-fun e!277389 () Bool)

(assert (=> mapNonEmpty!21670 (= mapRes!21670 (and tp!41665 e!277389))))

(declare-datatypes ((V!18845 0))(
  ( (V!18846 (val!6697 Int)) )
))
(declare-datatypes ((ValueCell!6309 0))(
  ( (ValueCellFull!6309 (v!8984 V!18845)) (EmptyCell!6309) )
))
(declare-fun mapValue!21670 () ValueCell!6309)

(declare-datatypes ((array!30333 0))(
  ( (array!30334 (arr!14583 (Array (_ BitVec 32) ValueCell!6309)) (size!14935 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30333)

(declare-fun mapKey!21670 () (_ BitVec 32))

(declare-fun mapRest!21670 () (Array (_ BitVec 32) ValueCell!6309))

(assert (=> mapNonEmpty!21670 (= (arr!14583 _values!833) (store mapRest!21670 mapKey!21670 mapValue!21670))))

(declare-fun res!282538 () Bool)

(declare-fun e!277392 () Bool)

(assert (=> start!42410 (=> (not res!282538) (not e!277392))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42410 (= res!282538 (validMask!0 mask!1365))))

(assert (=> start!42410 e!277392))

(declare-fun tp_is_empty!13305 () Bool)

(assert (=> start!42410 tp_is_empty!13305))

(assert (=> start!42410 tp!41664))

(assert (=> start!42410 true))

(declare-datatypes ((array!30335 0))(
  ( (array!30336 (arr!14584 (Array (_ BitVec 32) (_ BitVec 64))) (size!14936 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30335)

(declare-fun array_inv!10518 (array!30335) Bool)

(assert (=> start!42410 (array_inv!10518 _keys!1025)))

(declare-fun e!277390 () Bool)

(declare-fun array_inv!10519 (array!30333) Bool)

(assert (=> start!42410 (and (array_inv!10519 _values!833) e!277390)))

(declare-fun b!472901 () Bool)

(declare-fun e!277388 () Bool)

(assert (=> b!472901 (= e!277388 tp_is_empty!13305)))

(declare-fun b!472902 () Bool)

(declare-fun res!282539 () Bool)

(assert (=> b!472902 (=> (not res!282539) (not e!277392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30335 (_ BitVec 32)) Bool)

(assert (=> b!472902 (= res!282539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472903 () Bool)

(assert (=> b!472903 (= e!277390 (and e!277388 mapRes!21670))))

(declare-fun condMapEmpty!21670 () Bool)

(declare-fun mapDefault!21670 () ValueCell!6309)

(assert (=> b!472903 (= condMapEmpty!21670 (= (arr!14583 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6309)) mapDefault!21670)))))

(declare-fun b!472904 () Bool)

(declare-fun e!277387 () Bool)

(assert (=> b!472904 (= e!277392 (not e!277387))))

(declare-fun res!282541 () Bool)

(assert (=> b!472904 (=> res!282541 e!277387)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472904 (= res!282541 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8814 0))(
  ( (tuple2!8815 (_1!4417 (_ BitVec 64)) (_2!4417 V!18845)) )
))
(declare-datatypes ((List!8929 0))(
  ( (Nil!8926) (Cons!8925 (h!9781 tuple2!8814) (t!14907 List!8929)) )
))
(declare-datatypes ((ListLongMap!7741 0))(
  ( (ListLongMap!7742 (toList!3886 List!8929)) )
))
(declare-fun lt!214762 () ListLongMap!7741)

(declare-fun lt!214764 () ListLongMap!7741)

(assert (=> b!472904 (= lt!214762 lt!214764)))

(declare-fun minValueBefore!38 () V!18845)

(declare-datatypes ((Unit!13893 0))(
  ( (Unit!13894) )
))
(declare-fun lt!214766 () Unit!13893)

(declare-fun zeroValue!794 () V!18845)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18845)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!240 (array!30335 array!30333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18845 V!18845 V!18845 V!18845 (_ BitVec 32) Int) Unit!13893)

(assert (=> b!472904 (= lt!214766 (lemmaNoChangeToArrayThenSameMapNoExtras!240 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2045 (array!30335 array!30333 (_ BitVec 32) (_ BitVec 32) V!18845 V!18845 (_ BitVec 32) Int) ListLongMap!7741)

(assert (=> b!472904 (= lt!214764 (getCurrentListMapNoExtraKeys!2045 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472904 (= lt!214762 (getCurrentListMapNoExtraKeys!2045 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472905 () Bool)

(declare-fun res!282540 () Bool)

(assert (=> b!472905 (=> (not res!282540) (not e!277392))))

(assert (=> b!472905 (= res!282540 (and (= (size!14935 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14936 _keys!1025) (size!14935 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472906 () Bool)

(assert (=> b!472906 (= e!277389 tp_is_empty!13305)))

(declare-fun b!472907 () Bool)

(declare-fun res!282537 () Bool)

(assert (=> b!472907 (=> (not res!282537) (not e!277392))))

(declare-datatypes ((List!8930 0))(
  ( (Nil!8927) (Cons!8926 (h!9782 (_ BitVec 64)) (t!14908 List!8930)) )
))
(declare-fun arrayNoDuplicates!0 (array!30335 (_ BitVec 32) List!8930) Bool)

(assert (=> b!472907 (= res!282537 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8927))))

(declare-fun b!472908 () Bool)

(assert (=> b!472908 (= e!277387 true)))

(declare-fun lt!214763 () ListLongMap!7741)

(declare-fun lt!214759 () tuple2!8814)

(declare-fun +!1695 (ListLongMap!7741 tuple2!8814) ListLongMap!7741)

(assert (=> b!472908 (= (+!1695 lt!214763 lt!214759) (+!1695 (+!1695 lt!214763 (tuple2!8815 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214759))))

(assert (=> b!472908 (= lt!214759 (tuple2!8815 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214760 () Unit!13893)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!132 (ListLongMap!7741 (_ BitVec 64) V!18845 V!18845) Unit!13893)

(assert (=> b!472908 (= lt!214760 (addSameAsAddTwiceSameKeyDiffValues!132 lt!214763 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!472908 (= lt!214763 (+!1695 lt!214762 (tuple2!8815 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214765 () ListLongMap!7741)

(declare-fun getCurrentListMap!2232 (array!30335 array!30333 (_ BitVec 32) (_ BitVec 32) V!18845 V!18845 (_ BitVec 32) Int) ListLongMap!7741)

(assert (=> b!472908 (= lt!214765 (getCurrentListMap!2232 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214761 () ListLongMap!7741)

(assert (=> b!472908 (= lt!214761 (getCurrentListMap!2232 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42410 res!282538) b!472905))

(assert (= (and b!472905 res!282540) b!472902))

(assert (= (and b!472902 res!282539) b!472907))

(assert (= (and b!472907 res!282537) b!472904))

(assert (= (and b!472904 (not res!282541)) b!472908))

(assert (= (and b!472903 condMapEmpty!21670) mapIsEmpty!21670))

(assert (= (and b!472903 (not condMapEmpty!21670)) mapNonEmpty!21670))

(get-info :version)

(assert (= (and mapNonEmpty!21670 ((_ is ValueCellFull!6309) mapValue!21670)) b!472906))

(assert (= (and b!472903 ((_ is ValueCellFull!6309) mapDefault!21670)) b!472901))

(assert (= start!42410 b!472903))

(declare-fun m!454873 () Bool)

(assert (=> b!472908 m!454873))

(declare-fun m!454875 () Bool)

(assert (=> b!472908 m!454875))

(declare-fun m!454877 () Bool)

(assert (=> b!472908 m!454877))

(declare-fun m!454879 () Bool)

(assert (=> b!472908 m!454879))

(assert (=> b!472908 m!454877))

(declare-fun m!454881 () Bool)

(assert (=> b!472908 m!454881))

(declare-fun m!454883 () Bool)

(assert (=> b!472908 m!454883))

(declare-fun m!454885 () Bool)

(assert (=> b!472908 m!454885))

(declare-fun m!454887 () Bool)

(assert (=> b!472902 m!454887))

(declare-fun m!454889 () Bool)

(assert (=> mapNonEmpty!21670 m!454889))

(declare-fun m!454891 () Bool)

(assert (=> b!472907 m!454891))

(declare-fun m!454893 () Bool)

(assert (=> start!42410 m!454893))

(declare-fun m!454895 () Bool)

(assert (=> start!42410 m!454895))

(declare-fun m!454897 () Bool)

(assert (=> start!42410 m!454897))

(declare-fun m!454899 () Bool)

(assert (=> b!472904 m!454899))

(declare-fun m!454901 () Bool)

(assert (=> b!472904 m!454901))

(declare-fun m!454903 () Bool)

(assert (=> b!472904 m!454903))

(check-sat tp_is_empty!13305 (not start!42410) (not mapNonEmpty!21670) b_and!20351 (not b!472907) (not b!472908) (not b_next!11877) (not b!472902) (not b!472904))
(check-sat b_and!20351 (not b_next!11877))
