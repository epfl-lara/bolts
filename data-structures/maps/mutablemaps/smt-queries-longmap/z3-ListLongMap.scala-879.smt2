; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20384 () Bool)

(assert start!20384)

(declare-fun b_free!5031 () Bool)

(declare-fun b_next!5031 () Bool)

(assert (=> start!20384 (= b_free!5031 (not b_next!5031))))

(declare-fun tp!18125 () Bool)

(declare-fun b_and!11795 () Bool)

(assert (=> start!20384 (= tp!18125 b_and!11795)))

(declare-fun b!201142 () Bool)

(declare-fun res!96057 () Bool)

(declare-fun e!131855 () Bool)

(assert (=> b!201142 (=> (not res!96057) (not e!131855))))

(declare-datatypes ((array!9002 0))(
  ( (array!9003 (arr!4251 (Array (_ BitVec 32) (_ BitVec 64))) (size!4576 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9002)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201142 (= res!96057 (= (select (arr!4251 _keys!825) i!601) k0!843))))

(declare-fun res!96062 () Bool)

(assert (=> start!20384 (=> (not res!96062) (not e!131855))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20384 (= res!96062 (validMask!0 mask!1149))))

(assert (=> start!20384 e!131855))

(declare-datatypes ((V!6163 0))(
  ( (V!6164 (val!2488 Int)) )
))
(declare-datatypes ((ValueCell!2100 0))(
  ( (ValueCellFull!2100 (v!4454 V!6163)) (EmptyCell!2100) )
))
(declare-datatypes ((array!9004 0))(
  ( (array!9005 (arr!4252 (Array (_ BitVec 32) ValueCell!2100)) (size!4577 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9004)

(declare-fun e!131856 () Bool)

(declare-fun array_inv!2791 (array!9004) Bool)

(assert (=> start!20384 (and (array_inv!2791 _values!649) e!131856)))

(assert (=> start!20384 true))

(declare-fun tp_is_empty!4887 () Bool)

(assert (=> start!20384 tp_is_empty!4887))

(declare-fun array_inv!2792 (array!9002) Bool)

(assert (=> start!20384 (array_inv!2792 _keys!825)))

(assert (=> start!20384 tp!18125))

(declare-fun mapNonEmpty!8399 () Bool)

(declare-fun mapRes!8399 () Bool)

(declare-fun tp!18124 () Bool)

(declare-fun e!131858 () Bool)

(assert (=> mapNonEmpty!8399 (= mapRes!8399 (and tp!18124 e!131858))))

(declare-fun mapRest!8399 () (Array (_ BitVec 32) ValueCell!2100))

(declare-fun mapKey!8399 () (_ BitVec 32))

(declare-fun mapValue!8399 () ValueCell!2100)

(assert (=> mapNonEmpty!8399 (= (arr!4252 _values!649) (store mapRest!8399 mapKey!8399 mapValue!8399))))

(declare-fun b!201143 () Bool)

(declare-fun e!131860 () Bool)

(assert (=> b!201143 (= e!131856 (and e!131860 mapRes!8399))))

(declare-fun condMapEmpty!8399 () Bool)

(declare-fun mapDefault!8399 () ValueCell!2100)

(assert (=> b!201143 (= condMapEmpty!8399 (= (arr!4252 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2100)) mapDefault!8399)))))

(declare-fun mapIsEmpty!8399 () Bool)

(assert (=> mapIsEmpty!8399 mapRes!8399))

(declare-fun b!201144 () Bool)

(declare-fun e!131859 () Bool)

(assert (=> b!201144 (= e!131859 true)))

(declare-datatypes ((tuple2!3760 0))(
  ( (tuple2!3761 (_1!1890 (_ BitVec 64)) (_2!1890 V!6163)) )
))
(declare-datatypes ((List!2700 0))(
  ( (Nil!2697) (Cons!2696 (h!3338 tuple2!3760) (t!7639 List!2700)) )
))
(declare-datatypes ((ListLongMap!2687 0))(
  ( (ListLongMap!2688 (toList!1359 List!2700)) )
))
(declare-fun lt!100063 () ListLongMap!2687)

(declare-fun lt!100060 () ListLongMap!2687)

(declare-fun lt!100057 () tuple2!3760)

(declare-fun lt!100064 () tuple2!3760)

(declare-fun +!376 (ListLongMap!2687 tuple2!3760) ListLongMap!2687)

(assert (=> b!201144 (= (+!376 lt!100063 lt!100057) (+!376 lt!100060 lt!100064))))

(declare-fun minValue!615 () V!6163)

(declare-fun lt!100061 () ListLongMap!2687)

(declare-fun v!520 () V!6163)

(declare-datatypes ((Unit!6059 0))(
  ( (Unit!6060) )
))
(declare-fun lt!100054 () Unit!6059)

(declare-fun addCommutativeForDiffKeys!97 (ListLongMap!2687 (_ BitVec 64) V!6163 (_ BitVec 64) V!6163) Unit!6059)

(assert (=> b!201144 (= lt!100054 (addCommutativeForDiffKeys!97 lt!100061 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201145 () Bool)

(declare-fun res!96060 () Bool)

(assert (=> b!201145 (=> (not res!96060) (not e!131855))))

(declare-datatypes ((List!2701 0))(
  ( (Nil!2698) (Cons!2697 (h!3339 (_ BitVec 64)) (t!7640 List!2701)) )
))
(declare-fun arrayNoDuplicates!0 (array!9002 (_ BitVec 32) List!2701) Bool)

(assert (=> b!201145 (= res!96060 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2698))))

(declare-fun b!201146 () Bool)

(declare-fun res!96059 () Bool)

(assert (=> b!201146 (=> (not res!96059) (not e!131855))))

(assert (=> b!201146 (= res!96059 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4576 _keys!825))))))

(declare-fun b!201147 () Bool)

(assert (=> b!201147 (= e!131858 tp_is_empty!4887)))

(declare-fun b!201148 () Bool)

(declare-fun res!96064 () Bool)

(assert (=> b!201148 (=> (not res!96064) (not e!131855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201148 (= res!96064 (validKeyInArray!0 k0!843))))

(declare-fun b!201149 () Bool)

(declare-fun res!96061 () Bool)

(assert (=> b!201149 (=> (not res!96061) (not e!131855))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201149 (= res!96061 (and (= (size!4577 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4576 _keys!825) (size!4577 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201150 () Bool)

(assert (=> b!201150 (= e!131860 tp_is_empty!4887)))

(declare-fun b!201151 () Bool)

(declare-fun res!96058 () Bool)

(assert (=> b!201151 (=> (not res!96058) (not e!131855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9002 (_ BitVec 32)) Bool)

(assert (=> b!201151 (= res!96058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201152 () Bool)

(declare-fun e!131854 () Bool)

(assert (=> b!201152 (= e!131854 e!131859)))

(declare-fun res!96063 () Bool)

(assert (=> b!201152 (=> res!96063 e!131859)))

(assert (=> b!201152 (= res!96063 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100062 () ListLongMap!2687)

(assert (=> b!201152 (= lt!100062 lt!100063)))

(assert (=> b!201152 (= lt!100063 (+!376 lt!100061 lt!100064))))

(declare-fun lt!100056 () ListLongMap!2687)

(declare-fun lt!100066 () Unit!6059)

(declare-fun zeroValue!615 () V!6163)

(assert (=> b!201152 (= lt!100066 (addCommutativeForDiffKeys!97 lt!100056 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100068 () ListLongMap!2687)

(assert (=> b!201152 (= lt!100068 (+!376 lt!100062 lt!100057))))

(declare-fun lt!100067 () ListLongMap!2687)

(declare-fun lt!100065 () tuple2!3760)

(assert (=> b!201152 (= lt!100062 (+!376 lt!100067 lt!100065))))

(declare-fun lt!100069 () ListLongMap!2687)

(assert (=> b!201152 (= lt!100069 lt!100060)))

(assert (=> b!201152 (= lt!100060 (+!376 lt!100061 lt!100057))))

(assert (=> b!201152 (= lt!100061 (+!376 lt!100056 lt!100065))))

(declare-fun lt!100059 () ListLongMap!2687)

(assert (=> b!201152 (= lt!100068 (+!376 (+!376 lt!100059 lt!100065) lt!100057))))

(assert (=> b!201152 (= lt!100057 (tuple2!3761 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201152 (= lt!100065 (tuple2!3761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201153 () Bool)

(assert (=> b!201153 (= e!131855 (not e!131854))))

(declare-fun res!96056 () Bool)

(assert (=> b!201153 (=> res!96056 e!131854)))

(assert (=> b!201153 (= res!96056 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!943 (array!9002 array!9004 (_ BitVec 32) (_ BitVec 32) V!6163 V!6163 (_ BitVec 32) Int) ListLongMap!2687)

(assert (=> b!201153 (= lt!100069 (getCurrentListMap!943 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100055 () array!9004)

(assert (=> b!201153 (= lt!100068 (getCurrentListMap!943 _keys!825 lt!100055 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201153 (and (= lt!100059 lt!100067) (= lt!100067 lt!100059))))

(assert (=> b!201153 (= lt!100067 (+!376 lt!100056 lt!100064))))

(assert (=> b!201153 (= lt!100064 (tuple2!3761 k0!843 v!520))))

(declare-fun lt!100058 () Unit!6059)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!56 (array!9002 array!9004 (_ BitVec 32) (_ BitVec 32) V!6163 V!6163 (_ BitVec 32) (_ BitVec 64) V!6163 (_ BitVec 32) Int) Unit!6059)

(assert (=> b!201153 (= lt!100058 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!56 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!314 (array!9002 array!9004 (_ BitVec 32) (_ BitVec 32) V!6163 V!6163 (_ BitVec 32) Int) ListLongMap!2687)

(assert (=> b!201153 (= lt!100059 (getCurrentListMapNoExtraKeys!314 _keys!825 lt!100055 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201153 (= lt!100055 (array!9005 (store (arr!4252 _values!649) i!601 (ValueCellFull!2100 v!520)) (size!4577 _values!649)))))

(assert (=> b!201153 (= lt!100056 (getCurrentListMapNoExtraKeys!314 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20384 res!96062) b!201149))

(assert (= (and b!201149 res!96061) b!201151))

(assert (= (and b!201151 res!96058) b!201145))

(assert (= (and b!201145 res!96060) b!201146))

(assert (= (and b!201146 res!96059) b!201148))

(assert (= (and b!201148 res!96064) b!201142))

(assert (= (and b!201142 res!96057) b!201153))

(assert (= (and b!201153 (not res!96056)) b!201152))

(assert (= (and b!201152 (not res!96063)) b!201144))

(assert (= (and b!201143 condMapEmpty!8399) mapIsEmpty!8399))

(assert (= (and b!201143 (not condMapEmpty!8399)) mapNonEmpty!8399))

(get-info :version)

(assert (= (and mapNonEmpty!8399 ((_ is ValueCellFull!2100) mapValue!8399)) b!201147))

(assert (= (and b!201143 ((_ is ValueCellFull!2100) mapDefault!8399)) b!201150))

(assert (= start!20384 b!201143))

(declare-fun m!227977 () Bool)

(assert (=> b!201151 m!227977))

(declare-fun m!227979 () Bool)

(assert (=> b!201145 m!227979))

(declare-fun m!227981 () Bool)

(assert (=> b!201144 m!227981))

(declare-fun m!227983 () Bool)

(assert (=> b!201144 m!227983))

(declare-fun m!227985 () Bool)

(assert (=> b!201144 m!227985))

(declare-fun m!227987 () Bool)

(assert (=> b!201152 m!227987))

(declare-fun m!227989 () Bool)

(assert (=> b!201152 m!227989))

(declare-fun m!227991 () Bool)

(assert (=> b!201152 m!227991))

(declare-fun m!227993 () Bool)

(assert (=> b!201152 m!227993))

(declare-fun m!227995 () Bool)

(assert (=> b!201152 m!227995))

(assert (=> b!201152 m!227987))

(declare-fun m!227997 () Bool)

(assert (=> b!201152 m!227997))

(declare-fun m!227999 () Bool)

(assert (=> b!201152 m!227999))

(declare-fun m!228001 () Bool)

(assert (=> b!201152 m!228001))

(declare-fun m!228003 () Bool)

(assert (=> b!201142 m!228003))

(declare-fun m!228005 () Bool)

(assert (=> mapNonEmpty!8399 m!228005))

(declare-fun m!228007 () Bool)

(assert (=> start!20384 m!228007))

(declare-fun m!228009 () Bool)

(assert (=> start!20384 m!228009))

(declare-fun m!228011 () Bool)

(assert (=> start!20384 m!228011))

(declare-fun m!228013 () Bool)

(assert (=> b!201153 m!228013))

(declare-fun m!228015 () Bool)

(assert (=> b!201153 m!228015))

(declare-fun m!228017 () Bool)

(assert (=> b!201153 m!228017))

(declare-fun m!228019 () Bool)

(assert (=> b!201153 m!228019))

(declare-fun m!228021 () Bool)

(assert (=> b!201153 m!228021))

(declare-fun m!228023 () Bool)

(assert (=> b!201153 m!228023))

(declare-fun m!228025 () Bool)

(assert (=> b!201153 m!228025))

(declare-fun m!228027 () Bool)

(assert (=> b!201148 m!228027))

(check-sat tp_is_empty!4887 (not b!201152) b_and!11795 (not b!201151) (not b_next!5031) (not b!201148) (not mapNonEmpty!8399) (not b!201144) (not b!201153) (not b!201145) (not start!20384))
(check-sat b_and!11795 (not b_next!5031))
