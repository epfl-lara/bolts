; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94052 () Bool)

(assert start!94052)

(declare-fun b_free!21453 () Bool)

(declare-fun b_next!21453 () Bool)

(assert (=> start!94052 (= b_free!21453 (not b_next!21453))))

(declare-fun tp!75788 () Bool)

(declare-fun b_and!34203 () Bool)

(assert (=> start!94052 (= tp!75788 b_and!34203)))

(declare-fun b!1063299 () Bool)

(declare-fun e!605892 () Bool)

(declare-fun e!605888 () Bool)

(declare-fun mapRes!39571 () Bool)

(assert (=> b!1063299 (= e!605892 (and e!605888 mapRes!39571))))

(declare-fun condMapEmpty!39571 () Bool)

(declare-datatypes ((V!38819 0))(
  ( (V!38820 (val!12682 Int)) )
))
(declare-datatypes ((ValueCell!11928 0))(
  ( (ValueCellFull!11928 (v!15294 V!38819)) (EmptyCell!11928) )
))
(declare-datatypes ((array!67500 0))(
  ( (array!67501 (arr!32452 (Array (_ BitVec 32) ValueCell!11928)) (size!32989 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67500)

(declare-fun mapDefault!39571 () ValueCell!11928)

(assert (=> b!1063299 (= condMapEmpty!39571 (= (arr!32452 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11928)) mapDefault!39571)))))

(declare-fun mapIsEmpty!39571 () Bool)

(assert (=> mapIsEmpty!39571 mapRes!39571))

(declare-fun res!710053 () Bool)

(declare-fun e!605889 () Bool)

(assert (=> start!94052 (=> (not res!710053) (not e!605889))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94052 (= res!710053 (validMask!0 mask!1515))))

(assert (=> start!94052 e!605889))

(assert (=> start!94052 true))

(declare-fun tp_is_empty!25263 () Bool)

(assert (=> start!94052 tp_is_empty!25263))

(declare-fun array_inv!24974 (array!67500) Bool)

(assert (=> start!94052 (and (array_inv!24974 _values!955) e!605892)))

(assert (=> start!94052 tp!75788))

(declare-datatypes ((array!67502 0))(
  ( (array!67503 (arr!32453 (Array (_ BitVec 32) (_ BitVec 64))) (size!32990 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67502)

(declare-fun array_inv!24975 (array!67502) Bool)

(assert (=> start!94052 (array_inv!24975 _keys!1163)))

(declare-fun b!1063300 () Bool)

(declare-fun e!605893 () Bool)

(assert (=> b!1063300 (= e!605889 (not e!605893))))

(declare-fun res!710054 () Bool)

(assert (=> b!1063300 (=> res!710054 e!605893)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063300 (= res!710054 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16144 0))(
  ( (tuple2!16145 (_1!8082 (_ BitVec 64)) (_2!8082 V!38819)) )
))
(declare-datatypes ((List!22750 0))(
  ( (Nil!22747) (Cons!22746 (h!23955 tuple2!16144) (t!32070 List!22750)) )
))
(declare-datatypes ((ListLongMap!14125 0))(
  ( (ListLongMap!14126 (toList!7078 List!22750)) )
))
(declare-fun lt!468618 () ListLongMap!14125)

(declare-fun lt!468620 () ListLongMap!14125)

(assert (=> b!1063300 (= lt!468618 lt!468620)))

(declare-fun zeroValueBefore!47 () V!38819)

(declare-datatypes ((Unit!34821 0))(
  ( (Unit!34822) )
))
(declare-fun lt!468621 () Unit!34821)

(declare-fun minValue!907 () V!38819)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38819)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!672 (array!67502 array!67500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38819 V!38819 V!38819 V!38819 (_ BitVec 32) Int) Unit!34821)

(assert (=> b!1063300 (= lt!468621 (lemmaNoChangeToArrayThenSameMapNoExtras!672 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3633 (array!67502 array!67500 (_ BitVec 32) (_ BitVec 32) V!38819 V!38819 (_ BitVec 32) Int) ListLongMap!14125)

(assert (=> b!1063300 (= lt!468620 (getCurrentListMapNoExtraKeys!3633 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063300 (= lt!468618 (getCurrentListMapNoExtraKeys!3633 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063301 () Bool)

(declare-fun res!710052 () Bool)

(assert (=> b!1063301 (=> (not res!710052) (not e!605889))))

(declare-datatypes ((List!22751 0))(
  ( (Nil!22748) (Cons!22747 (h!23956 (_ BitVec 64)) (t!32071 List!22751)) )
))
(declare-fun arrayNoDuplicates!0 (array!67502 (_ BitVec 32) List!22751) Bool)

(assert (=> b!1063301 (= res!710052 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22748))))

(declare-fun b!1063302 () Bool)

(assert (=> b!1063302 (= e!605888 tp_is_empty!25263)))

(declare-fun mapNonEmpty!39571 () Bool)

(declare-fun tp!75789 () Bool)

(declare-fun e!605887 () Bool)

(assert (=> mapNonEmpty!39571 (= mapRes!39571 (and tp!75789 e!605887))))

(declare-fun mapValue!39571 () ValueCell!11928)

(declare-fun mapKey!39571 () (_ BitVec 32))

(declare-fun mapRest!39571 () (Array (_ BitVec 32) ValueCell!11928))

(assert (=> mapNonEmpty!39571 (= (arr!32452 _values!955) (store mapRest!39571 mapKey!39571 mapValue!39571))))

(declare-fun b!1063303 () Bool)

(assert (=> b!1063303 (= e!605887 tp_is_empty!25263)))

(declare-fun b!1063304 () Bool)

(declare-fun e!605890 () Bool)

(assert (=> b!1063304 (= e!605893 e!605890)))

(declare-fun res!710051 () Bool)

(assert (=> b!1063304 (=> res!710051 e!605890)))

(declare-fun lt!468622 () ListLongMap!14125)

(declare-fun contains!6273 (ListLongMap!14125 (_ BitVec 64)) Bool)

(assert (=> b!1063304 (= res!710051 (contains!6273 lt!468622 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4022 (array!67502 array!67500 (_ BitVec 32) (_ BitVec 32) V!38819 V!38819 (_ BitVec 32) Int) ListLongMap!14125)

(assert (=> b!1063304 (= lt!468622 (getCurrentListMap!4022 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063305 () Bool)

(declare-fun res!710049 () Bool)

(assert (=> b!1063305 (=> (not res!710049) (not e!605889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67502 (_ BitVec 32)) Bool)

(assert (=> b!1063305 (= res!710049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063306 () Bool)

(assert (=> b!1063306 (= e!605890 true)))

(declare-fun -!586 (ListLongMap!14125 (_ BitVec 64)) ListLongMap!14125)

(assert (=> b!1063306 (= (-!586 lt!468622 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468622)))

(declare-fun lt!468619 () Unit!34821)

(declare-fun removeNotPresentStillSame!32 (ListLongMap!14125 (_ BitVec 64)) Unit!34821)

(assert (=> b!1063306 (= lt!468619 (removeNotPresentStillSame!32 lt!468622 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063307 () Bool)

(declare-fun res!710050 () Bool)

(assert (=> b!1063307 (=> (not res!710050) (not e!605889))))

(assert (=> b!1063307 (= res!710050 (and (= (size!32989 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32990 _keys!1163) (size!32989 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94052 res!710053) b!1063307))

(assert (= (and b!1063307 res!710050) b!1063305))

(assert (= (and b!1063305 res!710049) b!1063301))

(assert (= (and b!1063301 res!710052) b!1063300))

(assert (= (and b!1063300 (not res!710054)) b!1063304))

(assert (= (and b!1063304 (not res!710051)) b!1063306))

(assert (= (and b!1063299 condMapEmpty!39571) mapIsEmpty!39571))

(assert (= (and b!1063299 (not condMapEmpty!39571)) mapNonEmpty!39571))

(get-info :version)

(assert (= (and mapNonEmpty!39571 ((_ is ValueCellFull!11928) mapValue!39571)) b!1063303))

(assert (= (and b!1063299 ((_ is ValueCellFull!11928) mapDefault!39571)) b!1063302))

(assert (= start!94052 b!1063299))

(declare-fun m!982129 () Bool)

(assert (=> b!1063306 m!982129))

(declare-fun m!982131 () Bool)

(assert (=> b!1063306 m!982131))

(declare-fun m!982133 () Bool)

(assert (=> b!1063305 m!982133))

(declare-fun m!982135 () Bool)

(assert (=> start!94052 m!982135))

(declare-fun m!982137 () Bool)

(assert (=> start!94052 m!982137))

(declare-fun m!982139 () Bool)

(assert (=> start!94052 m!982139))

(declare-fun m!982141 () Bool)

(assert (=> b!1063301 m!982141))

(declare-fun m!982143 () Bool)

(assert (=> mapNonEmpty!39571 m!982143))

(declare-fun m!982145 () Bool)

(assert (=> b!1063300 m!982145))

(declare-fun m!982147 () Bool)

(assert (=> b!1063300 m!982147))

(declare-fun m!982149 () Bool)

(assert (=> b!1063300 m!982149))

(declare-fun m!982151 () Bool)

(assert (=> b!1063304 m!982151))

(declare-fun m!982153 () Bool)

(assert (=> b!1063304 m!982153))

(check-sat (not b!1063306) (not start!94052) (not b_next!21453) b_and!34203 (not b!1063301) (not mapNonEmpty!39571) (not b!1063304) (not b!1063305) tp_is_empty!25263 (not b!1063300))
(check-sat b_and!34203 (not b_next!21453))
