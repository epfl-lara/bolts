; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70196 () Bool)

(assert start!70196)

(declare-fun b_free!12579 () Bool)

(declare-fun b_next!12579 () Bool)

(assert (=> start!70196 (= b_free!12579 (not b_next!12579))))

(declare-fun tp!44455 () Bool)

(declare-fun b_and!21377 () Bool)

(assert (=> start!70196 (= tp!44455 b_and!21377)))

(declare-fun b!815160 () Bool)

(declare-fun e!452021 () Bool)

(assert (=> b!815160 (= e!452021 (not true))))

(declare-datatypes ((V!24053 0))(
  ( (V!24054 (val!7192 Int)) )
))
(declare-datatypes ((tuple2!9444 0))(
  ( (tuple2!9445 (_1!4732 (_ BitVec 64)) (_2!4732 V!24053)) )
))
(declare-datatypes ((List!15317 0))(
  ( (Nil!15314) (Cons!15313 (h!16442 tuple2!9444) (t!21644 List!15317)) )
))
(declare-datatypes ((ListLongMap!8281 0))(
  ( (ListLongMap!8282 (toList!4156 List!15317)) )
))
(declare-fun lt!364943 () ListLongMap!8281)

(declare-fun lt!364944 () ListLongMap!8281)

(assert (=> b!815160 (= lt!364943 lt!364944)))

(declare-datatypes ((Unit!27768 0))(
  ( (Unit!27769) )
))
(declare-fun lt!364942 () Unit!27768)

(declare-fun zeroValueBefore!34 () V!24053)

(declare-datatypes ((array!44766 0))(
  ( (array!44767 (arr!21438 (Array (_ BitVec 32) (_ BitVec 64))) (size!21859 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44766)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24053)

(declare-fun minValue!754 () V!24053)

(declare-datatypes ((ValueCell!6729 0))(
  ( (ValueCellFull!6729 (v!9615 V!24053)) (EmptyCell!6729) )
))
(declare-datatypes ((array!44768 0))(
  ( (array!44769 (arr!21439 (Array (_ BitVec 32) ValueCell!6729)) (size!21860 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44768)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!321 (array!44766 array!44768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24053 V!24053 V!24053 V!24053 (_ BitVec 32) Int) Unit!27768)

(assert (=> b!815160 (= lt!364942 (lemmaNoChangeToArrayThenSameMapNoExtras!321 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2205 (array!44766 array!44768 (_ BitVec 32) (_ BitVec 32) V!24053 V!24053 (_ BitVec 32) Int) ListLongMap!8281)

(assert (=> b!815160 (= lt!364944 (getCurrentListMapNoExtraKeys!2205 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815160 (= lt!364943 (getCurrentListMapNoExtraKeys!2205 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23017 () Bool)

(declare-fun mapRes!23017 () Bool)

(declare-fun tp!44454 () Bool)

(declare-fun e!452022 () Bool)

(assert (=> mapNonEmpty!23017 (= mapRes!23017 (and tp!44454 e!452022))))

(declare-fun mapRest!23017 () (Array (_ BitVec 32) ValueCell!6729))

(declare-fun mapValue!23017 () ValueCell!6729)

(declare-fun mapKey!23017 () (_ BitVec 32))

(assert (=> mapNonEmpty!23017 (= (arr!21439 _values!788) (store mapRest!23017 mapKey!23017 mapValue!23017))))

(declare-fun b!815161 () Bool)

(declare-fun res!556774 () Bool)

(assert (=> b!815161 (=> (not res!556774) (not e!452021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44766 (_ BitVec 32)) Bool)

(assert (=> b!815161 (= res!556774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815162 () Bool)

(declare-fun res!556776 () Bool)

(assert (=> b!815162 (=> (not res!556776) (not e!452021))))

(assert (=> b!815162 (= res!556776 (and (= (size!21860 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21859 _keys!976) (size!21860 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815163 () Bool)

(declare-fun res!556775 () Bool)

(assert (=> b!815163 (=> (not res!556775) (not e!452021))))

(declare-datatypes ((List!15318 0))(
  ( (Nil!15315) (Cons!15314 (h!16443 (_ BitVec 64)) (t!21645 List!15318)) )
))
(declare-fun arrayNoDuplicates!0 (array!44766 (_ BitVec 32) List!15318) Bool)

(assert (=> b!815163 (= res!556775 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15315))))

(declare-fun b!815164 () Bool)

(declare-fun tp_is_empty!14289 () Bool)

(assert (=> b!815164 (= e!452022 tp_is_empty!14289)))

(declare-fun b!815165 () Bool)

(declare-fun e!452024 () Bool)

(assert (=> b!815165 (= e!452024 tp_is_empty!14289)))

(declare-fun res!556773 () Bool)

(assert (=> start!70196 (=> (not res!556773) (not e!452021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70196 (= res!556773 (validMask!0 mask!1312))))

(assert (=> start!70196 e!452021))

(assert (=> start!70196 tp_is_empty!14289))

(declare-fun array_inv!17133 (array!44766) Bool)

(assert (=> start!70196 (array_inv!17133 _keys!976)))

(assert (=> start!70196 true))

(declare-fun e!452023 () Bool)

(declare-fun array_inv!17134 (array!44768) Bool)

(assert (=> start!70196 (and (array_inv!17134 _values!788) e!452023)))

(assert (=> start!70196 tp!44455))

(declare-fun b!815166 () Bool)

(assert (=> b!815166 (= e!452023 (and e!452024 mapRes!23017))))

(declare-fun condMapEmpty!23017 () Bool)

(declare-fun mapDefault!23017 () ValueCell!6729)

(assert (=> b!815166 (= condMapEmpty!23017 (= (arr!21439 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6729)) mapDefault!23017)))))

(declare-fun mapIsEmpty!23017 () Bool)

(assert (=> mapIsEmpty!23017 mapRes!23017))

(assert (= (and start!70196 res!556773) b!815162))

(assert (= (and b!815162 res!556776) b!815161))

(assert (= (and b!815161 res!556774) b!815163))

(assert (= (and b!815163 res!556775) b!815160))

(assert (= (and b!815166 condMapEmpty!23017) mapIsEmpty!23017))

(assert (= (and b!815166 (not condMapEmpty!23017)) mapNonEmpty!23017))

(get-info :version)

(assert (= (and mapNonEmpty!23017 ((_ is ValueCellFull!6729) mapValue!23017)) b!815164))

(assert (= (and b!815166 ((_ is ValueCellFull!6729) mapDefault!23017)) b!815165))

(assert (= start!70196 b!815166))

(declare-fun m!756935 () Bool)

(assert (=> mapNonEmpty!23017 m!756935))

(declare-fun m!756937 () Bool)

(assert (=> b!815163 m!756937))

(declare-fun m!756939 () Bool)

(assert (=> start!70196 m!756939))

(declare-fun m!756941 () Bool)

(assert (=> start!70196 m!756941))

(declare-fun m!756943 () Bool)

(assert (=> start!70196 m!756943))

(declare-fun m!756945 () Bool)

(assert (=> b!815161 m!756945))

(declare-fun m!756947 () Bool)

(assert (=> b!815160 m!756947))

(declare-fun m!756949 () Bool)

(assert (=> b!815160 m!756949))

(declare-fun m!756951 () Bool)

(assert (=> b!815160 m!756951))

(check-sat (not b!815160) (not start!70196) (not b!815161) b_and!21377 (not b_next!12579) (not mapNonEmpty!23017) (not b!815163) tp_is_empty!14289)
(check-sat b_and!21377 (not b_next!12579))
