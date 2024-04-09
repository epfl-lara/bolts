; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42416 () Bool)

(assert start!42416)

(declare-fun b_free!11883 () Bool)

(declare-fun b_next!11883 () Bool)

(assert (=> start!42416 (= b_free!11883 (not b_next!11883))))

(declare-fun tp!41682 () Bool)

(declare-fun b_and!20357 () Bool)

(assert (=> start!42416 (= tp!41682 b_and!20357)))

(declare-fun b!472973 () Bool)

(declare-fun e!277441 () Bool)

(declare-fun tp_is_empty!13311 () Bool)

(assert (=> b!472973 (= e!277441 tp_is_empty!13311)))

(declare-fun b!472974 () Bool)

(declare-fun res!282585 () Bool)

(declare-fun e!277446 () Bool)

(assert (=> b!472974 (=> (not res!282585) (not e!277446))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30343 0))(
  ( (array!30344 (arr!14588 (Array (_ BitVec 32) (_ BitVec 64))) (size!14940 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30343)

(declare-datatypes ((V!18853 0))(
  ( (V!18854 (val!6700 Int)) )
))
(declare-datatypes ((ValueCell!6312 0))(
  ( (ValueCellFull!6312 (v!8987 V!18853)) (EmptyCell!6312) )
))
(declare-datatypes ((array!30345 0))(
  ( (array!30346 (arr!14589 (Array (_ BitVec 32) ValueCell!6312)) (size!14941 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30345)

(assert (=> b!472974 (= res!282585 (and (= (size!14941 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14940 _keys!1025) (size!14941 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472975 () Bool)

(declare-fun e!277444 () Bool)

(assert (=> b!472975 (= e!277444 tp_is_empty!13311)))

(declare-fun b!472976 () Bool)

(declare-fun e!277445 () Bool)

(assert (=> b!472976 (= e!277445 true)))

(declare-datatypes ((tuple2!8818 0))(
  ( (tuple2!8819 (_1!4419 (_ BitVec 64)) (_2!4419 V!18853)) )
))
(declare-datatypes ((List!8933 0))(
  ( (Nil!8930) (Cons!8929 (h!9785 tuple2!8818) (t!14911 List!8933)) )
))
(declare-datatypes ((ListLongMap!7745 0))(
  ( (ListLongMap!7746 (toList!3888 List!8933)) )
))
(declare-fun lt!214833 () ListLongMap!7745)

(declare-fun lt!214838 () tuple2!8818)

(declare-fun minValueBefore!38 () V!18853)

(declare-fun +!1697 (ListLongMap!7745 tuple2!8818) ListLongMap!7745)

(assert (=> b!472976 (= (+!1697 lt!214833 lt!214838) (+!1697 (+!1697 lt!214833 (tuple2!8819 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214838))))

(declare-fun minValueAfter!38 () V!18853)

(assert (=> b!472976 (= lt!214838 (tuple2!8819 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13897 0))(
  ( (Unit!13898) )
))
(declare-fun lt!214835 () Unit!13897)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!134 (ListLongMap!7745 (_ BitVec 64) V!18853 V!18853) Unit!13897)

(assert (=> b!472976 (= lt!214835 (addSameAsAddTwiceSameKeyDiffValues!134 lt!214833 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214831 () ListLongMap!7745)

(declare-fun zeroValue!794 () V!18853)

(assert (=> b!472976 (= lt!214833 (+!1697 lt!214831 (tuple2!8819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214832 () ListLongMap!7745)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMap!2234 (array!30343 array!30345 (_ BitVec 32) (_ BitVec 32) V!18853 V!18853 (_ BitVec 32) Int) ListLongMap!7745)

(assert (=> b!472976 (= lt!214832 (getCurrentListMap!2234 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214837 () ListLongMap!7745)

(assert (=> b!472976 (= lt!214837 (getCurrentListMap!2234 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472977 () Bool)

(declare-fun res!282586 () Bool)

(assert (=> b!472977 (=> (not res!282586) (not e!277446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30343 (_ BitVec 32)) Bool)

(assert (=> b!472977 (= res!282586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472978 () Bool)

(declare-fun e!277443 () Bool)

(declare-fun mapRes!21679 () Bool)

(assert (=> b!472978 (= e!277443 (and e!277441 mapRes!21679))))

(declare-fun condMapEmpty!21679 () Bool)

(declare-fun mapDefault!21679 () ValueCell!6312)

(assert (=> b!472978 (= condMapEmpty!21679 (= (arr!14589 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6312)) mapDefault!21679)))))

(declare-fun b!472979 () Bool)

(assert (=> b!472979 (= e!277446 (not e!277445))))

(declare-fun res!282583 () Bool)

(assert (=> b!472979 (=> res!282583 e!277445)))

(assert (=> b!472979 (= res!282583 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214834 () ListLongMap!7745)

(assert (=> b!472979 (= lt!214831 lt!214834)))

(declare-fun lt!214836 () Unit!13897)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!242 (array!30343 array!30345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18853 V!18853 V!18853 V!18853 (_ BitVec 32) Int) Unit!13897)

(assert (=> b!472979 (= lt!214836 (lemmaNoChangeToArrayThenSameMapNoExtras!242 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2047 (array!30343 array!30345 (_ BitVec 32) (_ BitVec 32) V!18853 V!18853 (_ BitVec 32) Int) ListLongMap!7745)

(assert (=> b!472979 (= lt!214834 (getCurrentListMapNoExtraKeys!2047 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472979 (= lt!214831 (getCurrentListMapNoExtraKeys!2047 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282584 () Bool)

(assert (=> start!42416 (=> (not res!282584) (not e!277446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42416 (= res!282584 (validMask!0 mask!1365))))

(assert (=> start!42416 e!277446))

(assert (=> start!42416 tp_is_empty!13311))

(assert (=> start!42416 tp!41682))

(assert (=> start!42416 true))

(declare-fun array_inv!10520 (array!30343) Bool)

(assert (=> start!42416 (array_inv!10520 _keys!1025)))

(declare-fun array_inv!10521 (array!30345) Bool)

(assert (=> start!42416 (and (array_inv!10521 _values!833) e!277443)))

(declare-fun mapNonEmpty!21679 () Bool)

(declare-fun tp!41683 () Bool)

(assert (=> mapNonEmpty!21679 (= mapRes!21679 (and tp!41683 e!277444))))

(declare-fun mapKey!21679 () (_ BitVec 32))

(declare-fun mapValue!21679 () ValueCell!6312)

(declare-fun mapRest!21679 () (Array (_ BitVec 32) ValueCell!6312))

(assert (=> mapNonEmpty!21679 (= (arr!14589 _values!833) (store mapRest!21679 mapKey!21679 mapValue!21679))))

(declare-fun b!472980 () Bool)

(declare-fun res!282582 () Bool)

(assert (=> b!472980 (=> (not res!282582) (not e!277446))))

(declare-datatypes ((List!8934 0))(
  ( (Nil!8931) (Cons!8930 (h!9786 (_ BitVec 64)) (t!14912 List!8934)) )
))
(declare-fun arrayNoDuplicates!0 (array!30343 (_ BitVec 32) List!8934) Bool)

(assert (=> b!472980 (= res!282582 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8931))))

(declare-fun mapIsEmpty!21679 () Bool)

(assert (=> mapIsEmpty!21679 mapRes!21679))

(assert (= (and start!42416 res!282584) b!472974))

(assert (= (and b!472974 res!282585) b!472977))

(assert (= (and b!472977 res!282586) b!472980))

(assert (= (and b!472980 res!282582) b!472979))

(assert (= (and b!472979 (not res!282583)) b!472976))

(assert (= (and b!472978 condMapEmpty!21679) mapIsEmpty!21679))

(assert (= (and b!472978 (not condMapEmpty!21679)) mapNonEmpty!21679))

(get-info :version)

(assert (= (and mapNonEmpty!21679 ((_ is ValueCellFull!6312) mapValue!21679)) b!472975))

(assert (= (and b!472978 ((_ is ValueCellFull!6312) mapDefault!21679)) b!472973))

(assert (= start!42416 b!472978))

(declare-fun m!454969 () Bool)

(assert (=> start!42416 m!454969))

(declare-fun m!454971 () Bool)

(assert (=> start!42416 m!454971))

(declare-fun m!454973 () Bool)

(assert (=> start!42416 m!454973))

(declare-fun m!454975 () Bool)

(assert (=> b!472976 m!454975))

(declare-fun m!454977 () Bool)

(assert (=> b!472976 m!454977))

(declare-fun m!454979 () Bool)

(assert (=> b!472976 m!454979))

(declare-fun m!454981 () Bool)

(assert (=> b!472976 m!454981))

(assert (=> b!472976 m!454979))

(declare-fun m!454983 () Bool)

(assert (=> b!472976 m!454983))

(declare-fun m!454985 () Bool)

(assert (=> b!472976 m!454985))

(declare-fun m!454987 () Bool)

(assert (=> b!472976 m!454987))

(declare-fun m!454989 () Bool)

(assert (=> b!472977 m!454989))

(declare-fun m!454991 () Bool)

(assert (=> mapNonEmpty!21679 m!454991))

(declare-fun m!454993 () Bool)

(assert (=> b!472980 m!454993))

(declare-fun m!454995 () Bool)

(assert (=> b!472979 m!454995))

(declare-fun m!454997 () Bool)

(assert (=> b!472979 m!454997))

(declare-fun m!454999 () Bool)

(assert (=> b!472979 m!454999))

(check-sat (not b_next!11883) (not b!472977) tp_is_empty!13311 (not b!472979) b_and!20357 (not b!472976) (not b!472980) (not mapNonEmpty!21679) (not start!42416))
(check-sat b_and!20357 (not b_next!11883))
