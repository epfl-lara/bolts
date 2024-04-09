; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70258 () Bool)

(assert start!70258)

(declare-fun b_free!12627 () Bool)

(declare-fun b_next!12627 () Bool)

(assert (=> start!70258 (= b_free!12627 (not b_next!12627))))

(declare-fun tp!44602 () Bool)

(declare-fun b_and!21433 () Bool)

(assert (=> start!70258 (= tp!44602 b_and!21433)))

(declare-fun b!815808 () Bool)

(declare-fun e!452499 () Bool)

(declare-fun e!452500 () Bool)

(declare-fun mapRes!23092 () Bool)

(assert (=> b!815808 (= e!452499 (and e!452500 mapRes!23092))))

(declare-fun condMapEmpty!23092 () Bool)

(declare-datatypes ((V!24117 0))(
  ( (V!24118 (val!7216 Int)) )
))
(declare-datatypes ((ValueCell!6753 0))(
  ( (ValueCellFull!6753 (v!9639 V!24117)) (EmptyCell!6753) )
))
(declare-datatypes ((array!44856 0))(
  ( (array!44857 (arr!21482 (Array (_ BitVec 32) ValueCell!6753)) (size!21903 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44856)

(declare-fun mapDefault!23092 () ValueCell!6753)

(assert (=> b!815808 (= condMapEmpty!23092 (= (arr!21482 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6753)) mapDefault!23092)))))

(declare-fun b!815809 () Bool)

(declare-fun e!452498 () Bool)

(declare-fun e!452495 () Bool)

(assert (=> b!815809 (= e!452498 (not e!452495))))

(declare-fun res!557151 () Bool)

(assert (=> b!815809 (=> res!557151 e!452495)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815809 (= res!557151 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9482 0))(
  ( (tuple2!9483 (_1!4751 (_ BitVec 64)) (_2!4751 V!24117)) )
))
(declare-datatypes ((List!15352 0))(
  ( (Nil!15349) (Cons!15348 (h!16477 tuple2!9482) (t!21681 List!15352)) )
))
(declare-datatypes ((ListLongMap!8319 0))(
  ( (ListLongMap!8320 (toList!4175 List!15352)) )
))
(declare-fun lt!365316 () ListLongMap!8319)

(declare-fun lt!365320 () ListLongMap!8319)

(assert (=> b!815809 (= lt!365316 lt!365320)))

(declare-datatypes ((Unit!27806 0))(
  ( (Unit!27807) )
))
(declare-fun lt!365317 () Unit!27806)

(declare-fun zeroValueBefore!34 () V!24117)

(declare-datatypes ((array!44858 0))(
  ( (array!44859 (arr!21483 (Array (_ BitVec 32) (_ BitVec 64))) (size!21904 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44858)

(declare-fun zeroValueAfter!34 () V!24117)

(declare-fun minValue!754 () V!24117)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!340 (array!44858 array!44856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24117 V!24117 V!24117 V!24117 (_ BitVec 32) Int) Unit!27806)

(assert (=> b!815809 (= lt!365317 (lemmaNoChangeToArrayThenSameMapNoExtras!340 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2224 (array!44858 array!44856 (_ BitVec 32) (_ BitVec 32) V!24117 V!24117 (_ BitVec 32) Int) ListLongMap!8319)

(assert (=> b!815809 (= lt!365320 (getCurrentListMapNoExtraKeys!2224 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815809 (= lt!365316 (getCurrentListMapNoExtraKeys!2224 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23092 () Bool)

(assert (=> mapIsEmpty!23092 mapRes!23092))

(declare-fun res!557154 () Bool)

(assert (=> start!70258 (=> (not res!557154) (not e!452498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70258 (= res!557154 (validMask!0 mask!1312))))

(assert (=> start!70258 e!452498))

(declare-fun tp_is_empty!14337 () Bool)

(assert (=> start!70258 tp_is_empty!14337))

(declare-fun array_inv!17167 (array!44858) Bool)

(assert (=> start!70258 (array_inv!17167 _keys!976)))

(assert (=> start!70258 true))

(declare-fun array_inv!17168 (array!44856) Bool)

(assert (=> start!70258 (and (array_inv!17168 _values!788) e!452499)))

(assert (=> start!70258 tp!44602))

(declare-fun b!815810 () Bool)

(assert (=> b!815810 (= e!452500 tp_is_empty!14337)))

(declare-fun b!815811 () Bool)

(declare-fun res!557153 () Bool)

(assert (=> b!815811 (=> (not res!557153) (not e!452498))))

(declare-datatypes ((List!15353 0))(
  ( (Nil!15350) (Cons!15349 (h!16478 (_ BitVec 64)) (t!21682 List!15353)) )
))
(declare-fun arrayNoDuplicates!0 (array!44858 (_ BitVec 32) List!15353) Bool)

(assert (=> b!815811 (= res!557153 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15350))))

(declare-fun b!815812 () Bool)

(assert (=> b!815812 (= e!452495 true)))

(declare-fun lt!365319 () ListLongMap!8319)

(declare-fun getCurrentListMap!2364 (array!44858 array!44856 (_ BitVec 32) (_ BitVec 32) V!24117 V!24117 (_ BitVec 32) Int) ListLongMap!8319)

(assert (=> b!815812 (= lt!365319 (getCurrentListMap!2364 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365318 () ListLongMap!8319)

(declare-fun +!1763 (ListLongMap!8319 tuple2!9482) ListLongMap!8319)

(assert (=> b!815812 (= lt!365318 (+!1763 (getCurrentListMap!2364 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815813 () Bool)

(declare-fun res!557155 () Bool)

(assert (=> b!815813 (=> (not res!557155) (not e!452498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44858 (_ BitVec 32)) Bool)

(assert (=> b!815813 (= res!557155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815814 () Bool)

(declare-fun e!452497 () Bool)

(assert (=> b!815814 (= e!452497 tp_is_empty!14337)))

(declare-fun mapNonEmpty!23092 () Bool)

(declare-fun tp!44601 () Bool)

(assert (=> mapNonEmpty!23092 (= mapRes!23092 (and tp!44601 e!452497))))

(declare-fun mapValue!23092 () ValueCell!6753)

(declare-fun mapRest!23092 () (Array (_ BitVec 32) ValueCell!6753))

(declare-fun mapKey!23092 () (_ BitVec 32))

(assert (=> mapNonEmpty!23092 (= (arr!21482 _values!788) (store mapRest!23092 mapKey!23092 mapValue!23092))))

(declare-fun b!815815 () Bool)

(declare-fun res!557152 () Bool)

(assert (=> b!815815 (=> (not res!557152) (not e!452498))))

(assert (=> b!815815 (= res!557152 (and (= (size!21903 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21904 _keys!976) (size!21903 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70258 res!557154) b!815815))

(assert (= (and b!815815 res!557152) b!815813))

(assert (= (and b!815813 res!557155) b!815811))

(assert (= (and b!815811 res!557153) b!815809))

(assert (= (and b!815809 (not res!557151)) b!815812))

(assert (= (and b!815808 condMapEmpty!23092) mapIsEmpty!23092))

(assert (= (and b!815808 (not condMapEmpty!23092)) mapNonEmpty!23092))

(get-info :version)

(assert (= (and mapNonEmpty!23092 ((_ is ValueCellFull!6753) mapValue!23092)) b!815814))

(assert (= (and b!815808 ((_ is ValueCellFull!6753) mapDefault!23092)) b!815810))

(assert (= start!70258 b!815808))

(declare-fun m!757547 () Bool)

(assert (=> b!815813 m!757547))

(declare-fun m!757549 () Bool)

(assert (=> mapNonEmpty!23092 m!757549))

(declare-fun m!757551 () Bool)

(assert (=> b!815812 m!757551))

(declare-fun m!757553 () Bool)

(assert (=> b!815812 m!757553))

(assert (=> b!815812 m!757553))

(declare-fun m!757555 () Bool)

(assert (=> b!815812 m!757555))

(declare-fun m!757557 () Bool)

(assert (=> start!70258 m!757557))

(declare-fun m!757559 () Bool)

(assert (=> start!70258 m!757559))

(declare-fun m!757561 () Bool)

(assert (=> start!70258 m!757561))

(declare-fun m!757563 () Bool)

(assert (=> b!815811 m!757563))

(declare-fun m!757565 () Bool)

(assert (=> b!815809 m!757565))

(declare-fun m!757567 () Bool)

(assert (=> b!815809 m!757567))

(declare-fun m!757569 () Bool)

(assert (=> b!815809 m!757569))

(check-sat (not b!815812) (not b_next!12627) (not b!815813) (not mapNonEmpty!23092) tp_is_empty!14337 (not start!70258) b_and!21433 (not b!815811) (not b!815809))
(check-sat b_and!21433 (not b_next!12627))
