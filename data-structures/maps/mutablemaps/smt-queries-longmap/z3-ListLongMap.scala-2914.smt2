; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41650 () Bool)

(assert start!41650)

(declare-fun b_free!11295 () Bool)

(declare-fun b_next!11295 () Bool)

(assert (=> start!41650 (= b_free!11295 (not b_next!11295))))

(declare-fun tp!39885 () Bool)

(declare-fun b_and!19661 () Bool)

(assert (=> start!41650 (= tp!39885 b_and!19661)))

(declare-fun b!464834 () Bool)

(declare-fun res!277950 () Bool)

(declare-fun e!271608 () Bool)

(assert (=> b!464834 (=> (not res!277950) (not e!271608))))

(declare-datatypes ((array!29191 0))(
  ( (array!29192 (arr!14023 (Array (_ BitVec 32) (_ BitVec 64))) (size!14375 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29191)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29191 (_ BitVec 32)) Bool)

(assert (=> b!464834 (= res!277950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464835 () Bool)

(declare-fun e!271610 () Bool)

(declare-fun tp_is_empty!12723 () Bool)

(assert (=> b!464835 (= e!271610 tp_is_empty!12723)))

(declare-fun b!464836 () Bool)

(declare-fun e!271609 () Bool)

(assert (=> b!464836 (= e!271609 tp_is_empty!12723)))

(declare-fun b!464838 () Bool)

(declare-fun e!271606 () Bool)

(declare-fun mapRes!20764 () Bool)

(assert (=> b!464838 (= e!271606 (and e!271609 mapRes!20764))))

(declare-fun condMapEmpty!20764 () Bool)

(declare-datatypes ((V!18069 0))(
  ( (V!18070 (val!6406 Int)) )
))
(declare-datatypes ((ValueCell!6018 0))(
  ( (ValueCellFull!6018 (v!8689 V!18069)) (EmptyCell!6018) )
))
(declare-datatypes ((array!29193 0))(
  ( (array!29194 (arr!14024 (Array (_ BitVec 32) ValueCell!6018)) (size!14376 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29193)

(declare-fun mapDefault!20764 () ValueCell!6018)

(assert (=> b!464838 (= condMapEmpty!20764 (= (arr!14024 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6018)) mapDefault!20764)))))

(declare-fun b!464839 () Bool)

(assert (=> b!464839 (= e!271608 (not true))))

(declare-datatypes ((tuple2!8374 0))(
  ( (tuple2!8375 (_1!4197 (_ BitVec 64)) (_2!4197 V!18069)) )
))
(declare-datatypes ((List!8499 0))(
  ( (Nil!8496) (Cons!8495 (h!9351 tuple2!8374) (t!14455 List!8499)) )
))
(declare-datatypes ((ListLongMap!7301 0))(
  ( (ListLongMap!7302 (toList!3666 List!8499)) )
))
(declare-fun lt!209933 () ListLongMap!7301)

(declare-fun lt!209934 () ListLongMap!7301)

(assert (=> b!464839 (= lt!209933 lt!209934)))

(declare-fun minValueBefore!38 () V!18069)

(declare-fun zeroValue!794 () V!18069)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13453 0))(
  ( (Unit!13454) )
))
(declare-fun lt!209935 () Unit!13453)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18069)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!29 (array!29191 array!29193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18069 V!18069 V!18069 V!18069 (_ BitVec 32) Int) Unit!13453)

(assert (=> b!464839 (= lt!209935 (lemmaNoChangeToArrayThenSameMapNoExtras!29 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1834 (array!29191 array!29193 (_ BitVec 32) (_ BitVec 32) V!18069 V!18069 (_ BitVec 32) Int) ListLongMap!7301)

(assert (=> b!464839 (= lt!209934 (getCurrentListMapNoExtraKeys!1834 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464839 (= lt!209933 (getCurrentListMapNoExtraKeys!1834 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20764 () Bool)

(assert (=> mapIsEmpty!20764 mapRes!20764))

(declare-fun res!277947 () Bool)

(assert (=> start!41650 (=> (not res!277947) (not e!271608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41650 (= res!277947 (validMask!0 mask!1365))))

(assert (=> start!41650 e!271608))

(assert (=> start!41650 tp_is_empty!12723))

(assert (=> start!41650 tp!39885))

(assert (=> start!41650 true))

(declare-fun array_inv!10110 (array!29191) Bool)

(assert (=> start!41650 (array_inv!10110 _keys!1025)))

(declare-fun array_inv!10111 (array!29193) Bool)

(assert (=> start!41650 (and (array_inv!10111 _values!833) e!271606)))

(declare-fun b!464837 () Bool)

(declare-fun res!277949 () Bool)

(assert (=> b!464837 (=> (not res!277949) (not e!271608))))

(declare-datatypes ((List!8500 0))(
  ( (Nil!8497) (Cons!8496 (h!9352 (_ BitVec 64)) (t!14456 List!8500)) )
))
(declare-fun arrayNoDuplicates!0 (array!29191 (_ BitVec 32) List!8500) Bool)

(assert (=> b!464837 (= res!277949 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8497))))

(declare-fun mapNonEmpty!20764 () Bool)

(declare-fun tp!39886 () Bool)

(assert (=> mapNonEmpty!20764 (= mapRes!20764 (and tp!39886 e!271610))))

(declare-fun mapKey!20764 () (_ BitVec 32))

(declare-fun mapRest!20764 () (Array (_ BitVec 32) ValueCell!6018))

(declare-fun mapValue!20764 () ValueCell!6018)

(assert (=> mapNonEmpty!20764 (= (arr!14024 _values!833) (store mapRest!20764 mapKey!20764 mapValue!20764))))

(declare-fun b!464840 () Bool)

(declare-fun res!277948 () Bool)

(assert (=> b!464840 (=> (not res!277948) (not e!271608))))

(assert (=> b!464840 (= res!277948 (and (= (size!14376 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14375 _keys!1025) (size!14376 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41650 res!277947) b!464840))

(assert (= (and b!464840 res!277948) b!464834))

(assert (= (and b!464834 res!277950) b!464837))

(assert (= (and b!464837 res!277949) b!464839))

(assert (= (and b!464838 condMapEmpty!20764) mapIsEmpty!20764))

(assert (= (and b!464838 (not condMapEmpty!20764)) mapNonEmpty!20764))

(get-info :version)

(assert (= (and mapNonEmpty!20764 ((_ is ValueCellFull!6018) mapValue!20764)) b!464835))

(assert (= (and b!464838 ((_ is ValueCellFull!6018) mapDefault!20764)) b!464836))

(assert (= start!41650 b!464838))

(declare-fun m!447163 () Bool)

(assert (=> mapNonEmpty!20764 m!447163))

(declare-fun m!447165 () Bool)

(assert (=> b!464834 m!447165))

(declare-fun m!447167 () Bool)

(assert (=> start!41650 m!447167))

(declare-fun m!447169 () Bool)

(assert (=> start!41650 m!447169))

(declare-fun m!447171 () Bool)

(assert (=> start!41650 m!447171))

(declare-fun m!447173 () Bool)

(assert (=> b!464837 m!447173))

(declare-fun m!447175 () Bool)

(assert (=> b!464839 m!447175))

(declare-fun m!447177 () Bool)

(assert (=> b!464839 m!447177))

(declare-fun m!447179 () Bool)

(assert (=> b!464839 m!447179))

(check-sat (not mapNonEmpty!20764) (not start!41650) (not b!464837) b_and!19661 (not b_next!11295) tp_is_empty!12723 (not b!464839) (not b!464834))
(check-sat b_and!19661 (not b_next!11295))
