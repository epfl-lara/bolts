; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42484 () Bool)

(assert start!42484)

(declare-fun b_free!11931 () Bool)

(declare-fun b_next!11931 () Bool)

(assert (=> start!42484 (= b_free!11931 (not b_next!11931))))

(declare-fun tp!41829 () Bool)

(declare-fun b_and!20417 () Bool)

(assert (=> start!42484 (= tp!41829 b_and!20417)))

(declare-fun mapIsEmpty!21754 () Bool)

(declare-fun mapRes!21754 () Bool)

(assert (=> mapIsEmpty!21754 mapRes!21754))

(declare-fun b!473730 () Bool)

(declare-fun e!277986 () Bool)

(declare-fun e!277988 () Bool)

(assert (=> b!473730 (= e!277986 (and e!277988 mapRes!21754))))

(declare-fun condMapEmpty!21754 () Bool)

(declare-datatypes ((V!18917 0))(
  ( (V!18918 (val!6724 Int)) )
))
(declare-datatypes ((ValueCell!6336 0))(
  ( (ValueCellFull!6336 (v!9012 V!18917)) (EmptyCell!6336) )
))
(declare-datatypes ((array!30437 0))(
  ( (array!30438 (arr!14634 (Array (_ BitVec 32) ValueCell!6336)) (size!14986 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30437)

(declare-fun mapDefault!21754 () ValueCell!6336)

(assert (=> b!473730 (= condMapEmpty!21754 (= (arr!14634 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6336)) mapDefault!21754)))))

(declare-fun b!473731 () Bool)

(declare-fun e!277987 () Bool)

(assert (=> b!473731 (= e!277987 true)))

(declare-datatypes ((tuple2!8858 0))(
  ( (tuple2!8859 (_1!4439 (_ BitVec 64)) (_2!4439 V!18917)) )
))
(declare-datatypes ((List!8966 0))(
  ( (Nil!8963) (Cons!8962 (h!9818 tuple2!8858) (t!14946 List!8966)) )
))
(declare-datatypes ((ListLongMap!7785 0))(
  ( (ListLongMap!7786 (toList!3908 List!8966)) )
))
(declare-fun lt!215569 () ListLongMap!7785)

(declare-fun lt!215566 () tuple2!8858)

(declare-fun minValueBefore!38 () V!18917)

(declare-fun +!1714 (ListLongMap!7785 tuple2!8858) ListLongMap!7785)

(assert (=> b!473731 (= (+!1714 lt!215569 lt!215566) (+!1714 (+!1714 lt!215569 (tuple2!8859 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215566))))

(declare-fun minValueAfter!38 () V!18917)

(assert (=> b!473731 (= lt!215566 (tuple2!8859 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13939 0))(
  ( (Unit!13940) )
))
(declare-fun lt!215568 () Unit!13939)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!151 (ListLongMap!7785 (_ BitVec 64) V!18917 V!18917) Unit!13939)

(assert (=> b!473731 (= lt!215568 (addSameAsAddTwiceSameKeyDiffValues!151 lt!215569 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215563 () ListLongMap!7785)

(declare-fun zeroValue!794 () V!18917)

(assert (=> b!473731 (= lt!215569 (+!1714 lt!215563 (tuple2!8859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215564 () ListLongMap!7785)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30439 0))(
  ( (array!30440 (arr!14635 (Array (_ BitVec 32) (_ BitVec 64))) (size!14987 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30439)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2251 (array!30439 array!30437 (_ BitVec 32) (_ BitVec 32) V!18917 V!18917 (_ BitVec 32) Int) ListLongMap!7785)

(assert (=> b!473731 (= lt!215564 (getCurrentListMap!2251 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215565 () ListLongMap!7785)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473731 (= lt!215565 (getCurrentListMap!2251 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473732 () Bool)

(declare-fun res!283024 () Bool)

(declare-fun e!277991 () Bool)

(assert (=> b!473732 (=> (not res!283024) (not e!277991))))

(assert (=> b!473732 (= res!283024 (and (= (size!14986 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14987 _keys!1025) (size!14986 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21754 () Bool)

(declare-fun tp!41830 () Bool)

(declare-fun e!277989 () Bool)

(assert (=> mapNonEmpty!21754 (= mapRes!21754 (and tp!41830 e!277989))))

(declare-fun mapRest!21754 () (Array (_ BitVec 32) ValueCell!6336))

(declare-fun mapKey!21754 () (_ BitVec 32))

(declare-fun mapValue!21754 () ValueCell!6336)

(assert (=> mapNonEmpty!21754 (= (arr!14634 _values!833) (store mapRest!21754 mapKey!21754 mapValue!21754))))

(declare-fun b!473734 () Bool)

(assert (=> b!473734 (= e!277991 (not e!277987))))

(declare-fun res!283023 () Bool)

(assert (=> b!473734 (=> res!283023 e!277987)))

(assert (=> b!473734 (= res!283023 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215562 () ListLongMap!7785)

(assert (=> b!473734 (= lt!215563 lt!215562)))

(declare-fun lt!215567 () Unit!13939)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!260 (array!30439 array!30437 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18917 V!18917 V!18917 V!18917 (_ BitVec 32) Int) Unit!13939)

(assert (=> b!473734 (= lt!215567 (lemmaNoChangeToArrayThenSameMapNoExtras!260 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2065 (array!30439 array!30437 (_ BitVec 32) (_ BitVec 32) V!18917 V!18917 (_ BitVec 32) Int) ListLongMap!7785)

(assert (=> b!473734 (= lt!215562 (getCurrentListMapNoExtraKeys!2065 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473734 (= lt!215563 (getCurrentListMapNoExtraKeys!2065 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473735 () Bool)

(declare-fun res!283021 () Bool)

(assert (=> b!473735 (=> (not res!283021) (not e!277991))))

(declare-datatypes ((List!8967 0))(
  ( (Nil!8964) (Cons!8963 (h!9819 (_ BitVec 64)) (t!14947 List!8967)) )
))
(declare-fun arrayNoDuplicates!0 (array!30439 (_ BitVec 32) List!8967) Bool)

(assert (=> b!473735 (= res!283021 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8964))))

(declare-fun res!283025 () Bool)

(assert (=> start!42484 (=> (not res!283025) (not e!277991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42484 (= res!283025 (validMask!0 mask!1365))))

(assert (=> start!42484 e!277991))

(declare-fun tp_is_empty!13359 () Bool)

(assert (=> start!42484 tp_is_empty!13359))

(assert (=> start!42484 tp!41829))

(assert (=> start!42484 true))

(declare-fun array_inv!10546 (array!30439) Bool)

(assert (=> start!42484 (array_inv!10546 _keys!1025)))

(declare-fun array_inv!10547 (array!30437) Bool)

(assert (=> start!42484 (and (array_inv!10547 _values!833) e!277986)))

(declare-fun b!473733 () Bool)

(assert (=> b!473733 (= e!277988 tp_is_empty!13359)))

(declare-fun b!473736 () Bool)

(declare-fun res!283022 () Bool)

(assert (=> b!473736 (=> (not res!283022) (not e!277991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30439 (_ BitVec 32)) Bool)

(assert (=> b!473736 (= res!283022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473737 () Bool)

(assert (=> b!473737 (= e!277989 tp_is_empty!13359)))

(assert (= (and start!42484 res!283025) b!473732))

(assert (= (and b!473732 res!283024) b!473736))

(assert (= (and b!473736 res!283022) b!473735))

(assert (= (and b!473735 res!283021) b!473734))

(assert (= (and b!473734 (not res!283023)) b!473731))

(assert (= (and b!473730 condMapEmpty!21754) mapIsEmpty!21754))

(assert (= (and b!473730 (not condMapEmpty!21754)) mapNonEmpty!21754))

(get-info :version)

(assert (= (and mapNonEmpty!21754 ((_ is ValueCellFull!6336) mapValue!21754)) b!473737))

(assert (= (and b!473730 ((_ is ValueCellFull!6336) mapDefault!21754)) b!473733))

(assert (= start!42484 b!473730))

(declare-fun m!455949 () Bool)

(assert (=> b!473734 m!455949))

(declare-fun m!455951 () Bool)

(assert (=> b!473734 m!455951))

(declare-fun m!455953 () Bool)

(assert (=> b!473734 m!455953))

(declare-fun m!455955 () Bool)

(assert (=> start!42484 m!455955))

(declare-fun m!455957 () Bool)

(assert (=> start!42484 m!455957))

(declare-fun m!455959 () Bool)

(assert (=> start!42484 m!455959))

(declare-fun m!455961 () Bool)

(assert (=> mapNonEmpty!21754 m!455961))

(declare-fun m!455963 () Bool)

(assert (=> b!473736 m!455963))

(declare-fun m!455965 () Bool)

(assert (=> b!473731 m!455965))

(declare-fun m!455967 () Bool)

(assert (=> b!473731 m!455967))

(declare-fun m!455969 () Bool)

(assert (=> b!473731 m!455969))

(declare-fun m!455971 () Bool)

(assert (=> b!473731 m!455971))

(declare-fun m!455973 () Bool)

(assert (=> b!473731 m!455973))

(assert (=> b!473731 m!455965))

(declare-fun m!455975 () Bool)

(assert (=> b!473731 m!455975))

(declare-fun m!455977 () Bool)

(assert (=> b!473731 m!455977))

(declare-fun m!455979 () Bool)

(assert (=> b!473735 m!455979))

(check-sat (not start!42484) (not mapNonEmpty!21754) (not b_next!11931) (not b!473734) (not b!473731) (not b!473735) (not b!473736) b_and!20417 tp_is_empty!13359)
(check-sat b_and!20417 (not b_next!11931))
