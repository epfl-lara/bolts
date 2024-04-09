; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37092 () Bool)

(assert start!37092)

(declare-fun b_free!8211 () Bool)

(declare-fun b_next!8211 () Bool)

(assert (=> start!37092 (= b_free!8211 (not b_next!8211))))

(declare-fun tp!29348 () Bool)

(declare-fun b_and!15471 () Bool)

(assert (=> start!37092 (= tp!29348 b_and!15471)))

(declare-fun b!372991 () Bool)

(declare-fun res!210099 () Bool)

(declare-fun e!227430 () Bool)

(assert (=> b!372991 (=> (not res!210099) (not e!227430))))

(declare-datatypes ((array!21625 0))(
  ( (array!21626 (arr!10278 (Array (_ BitVec 32) (_ BitVec 64))) (size!10630 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21625)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21625 (_ BitVec 32)) Bool)

(assert (=> b!372991 (= res!210099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372992 () Bool)

(declare-fun res!210098 () Bool)

(assert (=> b!372992 (=> (not res!210098) (not e!227430))))

(declare-datatypes ((List!5790 0))(
  ( (Nil!5787) (Cons!5786 (h!6642 (_ BitVec 64)) (t!10948 List!5790)) )
))
(declare-fun arrayNoDuplicates!0 (array!21625 (_ BitVec 32) List!5790) Bool)

(assert (=> b!372992 (= res!210098 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5787))))

(declare-fun b!372993 () Bool)

(declare-fun res!210105 () Bool)

(declare-fun e!227427 () Bool)

(assert (=> b!372993 (=> (not res!210105) (not e!227427))))

(declare-fun lt!171165 () array!21625)

(assert (=> b!372993 (= res!210105 (arrayNoDuplicates!0 lt!171165 #b00000000000000000000000000000000 Nil!5787))))

(declare-fun b!372994 () Bool)

(declare-fun e!227424 () Bool)

(declare-fun e!227426 () Bool)

(declare-fun mapRes!14853 () Bool)

(assert (=> b!372994 (= e!227424 (and e!227426 mapRes!14853))))

(declare-fun condMapEmpty!14853 () Bool)

(declare-datatypes ((V!12917 0))(
  ( (V!12918 (val!4474 Int)) )
))
(declare-datatypes ((ValueCell!4086 0))(
  ( (ValueCellFull!4086 (v!6667 V!12917)) (EmptyCell!4086) )
))
(declare-datatypes ((array!21627 0))(
  ( (array!21628 (arr!10279 (Array (_ BitVec 32) ValueCell!4086)) (size!10631 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21627)

(declare-fun mapDefault!14853 () ValueCell!4086)

(assert (=> b!372994 (= condMapEmpty!14853 (= (arr!10279 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4086)) mapDefault!14853)))))

(declare-fun b!372995 () Bool)

(declare-fun res!210100 () Bool)

(assert (=> b!372995 (=> (not res!210100) (not e!227430))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372995 (= res!210100 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372996 () Bool)

(declare-fun res!210104 () Bool)

(assert (=> b!372996 (=> (not res!210104) (not e!227430))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372996 (= res!210104 (and (= (size!10631 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10630 _keys!658) (size!10631 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372997 () Bool)

(declare-fun tp_is_empty!8859 () Bool)

(assert (=> b!372997 (= e!227426 tp_is_empty!8859)))

(declare-fun b!372999 () Bool)

(declare-fun res!210106 () Bool)

(assert (=> b!372999 (=> (not res!210106) (not e!227430))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372999 (= res!210106 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10630 _keys!658))))))

(declare-fun b!373000 () Bool)

(assert (=> b!373000 (= e!227430 e!227427)))

(declare-fun res!210103 () Bool)

(assert (=> b!373000 (=> (not res!210103) (not e!227427))))

(assert (=> b!373000 (= res!210103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171165 mask!970))))

(assert (=> b!373000 (= lt!171165 (array!21626 (store (arr!10278 _keys!658) i!548 k0!778) (size!10630 _keys!658)))))

(declare-fun b!373001 () Bool)

(declare-fun e!227429 () Bool)

(assert (=> b!373001 (= e!227429 tp_is_empty!8859)))

(declare-fun mapNonEmpty!14853 () Bool)

(declare-fun tp!29349 () Bool)

(assert (=> mapNonEmpty!14853 (= mapRes!14853 (and tp!29349 e!227429))))

(declare-fun mapKey!14853 () (_ BitVec 32))

(declare-fun mapRest!14853 () (Array (_ BitVec 32) ValueCell!4086))

(declare-fun mapValue!14853 () ValueCell!4086)

(assert (=> mapNonEmpty!14853 (= (arr!10279 _values!506) (store mapRest!14853 mapKey!14853 mapValue!14853))))

(declare-fun b!373002 () Bool)

(declare-fun res!210102 () Bool)

(assert (=> b!373002 (=> (not res!210102) (not e!227430))))

(assert (=> b!373002 (= res!210102 (or (= (select (arr!10278 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10278 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14853 () Bool)

(assert (=> mapIsEmpty!14853 mapRes!14853))

(declare-fun b!373003 () Bool)

(declare-fun e!227428 () Bool)

(assert (=> b!373003 (= e!227428 true)))

(declare-datatypes ((tuple2!5914 0))(
  ( (tuple2!5915 (_1!2967 (_ BitVec 64)) (_2!2967 V!12917)) )
))
(declare-datatypes ((List!5791 0))(
  ( (Nil!5788) (Cons!5787 (h!6643 tuple2!5914) (t!10949 List!5791)) )
))
(declare-datatypes ((ListLongMap!4841 0))(
  ( (ListLongMap!4842 (toList!2436 List!5791)) )
))
(declare-fun lt!171170 () ListLongMap!4841)

(declare-fun lt!171160 () ListLongMap!4841)

(declare-fun lt!171167 () tuple2!5914)

(declare-fun +!777 (ListLongMap!4841 tuple2!5914) ListLongMap!4841)

(assert (=> b!373003 (= lt!171170 (+!777 lt!171160 lt!171167))))

(declare-datatypes ((Unit!11457 0))(
  ( (Unit!11458) )
))
(declare-fun lt!171162 () Unit!11457)

(declare-fun zeroValue!472 () V!12917)

(declare-fun lt!171163 () ListLongMap!4841)

(declare-fun v!373 () V!12917)

(declare-fun addCommutativeForDiffKeys!207 (ListLongMap!4841 (_ BitVec 64) V!12917 (_ BitVec 64) V!12917) Unit!11457)

(assert (=> b!373003 (= lt!171162 (addCommutativeForDiffKeys!207 lt!171163 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171171 () ListLongMap!4841)

(declare-fun lt!171164 () tuple2!5914)

(assert (=> b!373003 (= lt!171171 (+!777 lt!171170 lt!171164))))

(declare-fun lt!171168 () ListLongMap!4841)

(declare-fun lt!171159 () tuple2!5914)

(assert (=> b!373003 (= lt!171170 (+!777 lt!171168 lt!171159))))

(declare-fun lt!171166 () ListLongMap!4841)

(assert (=> b!373003 (= lt!171166 (+!777 lt!171160 lt!171164))))

(assert (=> b!373003 (= lt!171160 (+!777 lt!171163 lt!171159))))

(declare-fun lt!171172 () ListLongMap!4841)

(assert (=> b!373003 (= lt!171171 (+!777 (+!777 lt!171172 lt!171159) lt!171164))))

(declare-fun minValue!472 () V!12917)

(assert (=> b!373003 (= lt!171164 (tuple2!5915 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373003 (= lt!171159 (tuple2!5915 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373004 () Bool)

(declare-fun res!210101 () Bool)

(assert (=> b!373004 (=> (not res!210101) (not e!227430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373004 (= res!210101 (validKeyInArray!0 k0!778))))

(declare-fun res!210097 () Bool)

(assert (=> start!37092 (=> (not res!210097) (not e!227430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37092 (= res!210097 (validMask!0 mask!970))))

(assert (=> start!37092 e!227430))

(declare-fun array_inv!7590 (array!21627) Bool)

(assert (=> start!37092 (and (array_inv!7590 _values!506) e!227424)))

(assert (=> start!37092 tp!29348))

(assert (=> start!37092 true))

(assert (=> start!37092 tp_is_empty!8859))

(declare-fun array_inv!7591 (array!21625) Bool)

(assert (=> start!37092 (array_inv!7591 _keys!658)))

(declare-fun b!372998 () Bool)

(assert (=> b!372998 (= e!227427 (not e!227428))))

(declare-fun res!210107 () Bool)

(assert (=> b!372998 (=> res!210107 e!227428)))

(assert (=> b!372998 (= res!210107 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1885 (array!21625 array!21627 (_ BitVec 32) (_ BitVec 32) V!12917 V!12917 (_ BitVec 32) Int) ListLongMap!4841)

(assert (=> b!372998 (= lt!171166 (getCurrentListMap!1885 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171161 () array!21627)

(assert (=> b!372998 (= lt!171171 (getCurrentListMap!1885 lt!171165 lt!171161 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372998 (and (= lt!171172 lt!171168) (= lt!171168 lt!171172))))

(assert (=> b!372998 (= lt!171168 (+!777 lt!171163 lt!171167))))

(assert (=> b!372998 (= lt!171167 (tuple2!5915 k0!778 v!373))))

(declare-fun lt!171169 () Unit!11457)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!36 (array!21625 array!21627 (_ BitVec 32) (_ BitVec 32) V!12917 V!12917 (_ BitVec 32) (_ BitVec 64) V!12917 (_ BitVec 32) Int) Unit!11457)

(assert (=> b!372998 (= lt!171169 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!36 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!703 (array!21625 array!21627 (_ BitVec 32) (_ BitVec 32) V!12917 V!12917 (_ BitVec 32) Int) ListLongMap!4841)

(assert (=> b!372998 (= lt!171172 (getCurrentListMapNoExtraKeys!703 lt!171165 lt!171161 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372998 (= lt!171161 (array!21628 (store (arr!10279 _values!506) i!548 (ValueCellFull!4086 v!373)) (size!10631 _values!506)))))

(assert (=> b!372998 (= lt!171163 (getCurrentListMapNoExtraKeys!703 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37092 res!210097) b!372996))

(assert (= (and b!372996 res!210104) b!372991))

(assert (= (and b!372991 res!210099) b!372992))

(assert (= (and b!372992 res!210098) b!372999))

(assert (= (and b!372999 res!210106) b!373004))

(assert (= (and b!373004 res!210101) b!373002))

(assert (= (and b!373002 res!210102) b!372995))

(assert (= (and b!372995 res!210100) b!373000))

(assert (= (and b!373000 res!210103) b!372993))

(assert (= (and b!372993 res!210105) b!372998))

(assert (= (and b!372998 (not res!210107)) b!373003))

(assert (= (and b!372994 condMapEmpty!14853) mapIsEmpty!14853))

(assert (= (and b!372994 (not condMapEmpty!14853)) mapNonEmpty!14853))

(get-info :version)

(assert (= (and mapNonEmpty!14853 ((_ is ValueCellFull!4086) mapValue!14853)) b!373001))

(assert (= (and b!372994 ((_ is ValueCellFull!4086) mapDefault!14853)) b!372997))

(assert (= start!37092 b!372994))

(declare-fun m!368873 () Bool)

(assert (=> b!372993 m!368873))

(declare-fun m!368875 () Bool)

(assert (=> b!372991 m!368875))

(declare-fun m!368877 () Bool)

(assert (=> b!372995 m!368877))

(declare-fun m!368879 () Bool)

(assert (=> b!373002 m!368879))

(declare-fun m!368881 () Bool)

(assert (=> b!373000 m!368881))

(declare-fun m!368883 () Bool)

(assert (=> b!373000 m!368883))

(declare-fun m!368885 () Bool)

(assert (=> b!373004 m!368885))

(declare-fun m!368887 () Bool)

(assert (=> start!37092 m!368887))

(declare-fun m!368889 () Bool)

(assert (=> start!37092 m!368889))

(declare-fun m!368891 () Bool)

(assert (=> start!37092 m!368891))

(declare-fun m!368893 () Bool)

(assert (=> b!372998 m!368893))

(declare-fun m!368895 () Bool)

(assert (=> b!372998 m!368895))

(declare-fun m!368897 () Bool)

(assert (=> b!372998 m!368897))

(declare-fun m!368899 () Bool)

(assert (=> b!372998 m!368899))

(declare-fun m!368901 () Bool)

(assert (=> b!372998 m!368901))

(declare-fun m!368903 () Bool)

(assert (=> b!372998 m!368903))

(declare-fun m!368905 () Bool)

(assert (=> b!372998 m!368905))

(declare-fun m!368907 () Bool)

(assert (=> b!373003 m!368907))

(declare-fun m!368909 () Bool)

(assert (=> b!373003 m!368909))

(declare-fun m!368911 () Bool)

(assert (=> b!373003 m!368911))

(declare-fun m!368913 () Bool)

(assert (=> b!373003 m!368913))

(declare-fun m!368915 () Bool)

(assert (=> b!373003 m!368915))

(declare-fun m!368917 () Bool)

(assert (=> b!373003 m!368917))

(declare-fun m!368919 () Bool)

(assert (=> b!373003 m!368919))

(assert (=> b!373003 m!368915))

(declare-fun m!368921 () Bool)

(assert (=> b!373003 m!368921))

(declare-fun m!368923 () Bool)

(assert (=> mapNonEmpty!14853 m!368923))

(declare-fun m!368925 () Bool)

(assert (=> b!372992 m!368925))

(check-sat (not b!373000) (not b_next!8211) (not b!372998) (not b!372992) tp_is_empty!8859 (not b!372991) (not mapNonEmpty!14853) (not b!373003) (not b!372995) (not start!37092) b_and!15471 (not b!372993) (not b!373004))
(check-sat b_and!15471 (not b_next!8211))
