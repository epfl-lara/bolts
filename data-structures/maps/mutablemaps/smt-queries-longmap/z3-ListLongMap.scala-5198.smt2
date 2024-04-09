; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70228 () Bool)

(assert start!70228)

(declare-fun b_free!12597 () Bool)

(declare-fun b_next!12597 () Bool)

(assert (=> start!70228 (= b_free!12597 (not b_next!12597))))

(declare-fun tp!44511 () Bool)

(declare-fun b_and!21403 () Bool)

(assert (=> start!70228 (= tp!44511 b_and!21403)))

(declare-fun res!556926 () Bool)

(declare-fun e!452230 () Bool)

(assert (=> start!70228 (=> (not res!556926) (not e!452230))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70228 (= res!556926 (validMask!0 mask!1312))))

(assert (=> start!70228 e!452230))

(declare-fun tp_is_empty!14307 () Bool)

(assert (=> start!70228 tp_is_empty!14307))

(declare-datatypes ((array!44802 0))(
  ( (array!44803 (arr!21455 (Array (_ BitVec 32) (_ BitVec 64))) (size!21876 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44802)

(declare-fun array_inv!17147 (array!44802) Bool)

(assert (=> start!70228 (array_inv!17147 _keys!976)))

(assert (=> start!70228 true))

(declare-datatypes ((V!24077 0))(
  ( (V!24078 (val!7201 Int)) )
))
(declare-datatypes ((ValueCell!6738 0))(
  ( (ValueCellFull!6738 (v!9624 V!24077)) (EmptyCell!6738) )
))
(declare-datatypes ((array!44804 0))(
  ( (array!44805 (arr!21456 (Array (_ BitVec 32) ValueCell!6738)) (size!21877 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44804)

(declare-fun e!452225 () Bool)

(declare-fun array_inv!17148 (array!44804) Bool)

(assert (=> start!70228 (and (array_inv!17148 _values!788) e!452225)))

(assert (=> start!70228 tp!44511))

(declare-fun b!815448 () Bool)

(declare-fun e!452227 () Bool)

(declare-fun mapRes!23047 () Bool)

(assert (=> b!815448 (= e!452225 (and e!452227 mapRes!23047))))

(declare-fun condMapEmpty!23047 () Bool)

(declare-fun mapDefault!23047 () ValueCell!6738)

(assert (=> b!815448 (= condMapEmpty!23047 (= (arr!21456 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6738)) mapDefault!23047)))))

(declare-fun b!815449 () Bool)

(declare-fun e!452229 () Bool)

(assert (=> b!815449 (= e!452229 tp_is_empty!14307)))

(declare-fun b!815450 () Bool)

(assert (=> b!815450 (= e!452227 tp_is_empty!14307)))

(declare-fun b!815451 () Bool)

(declare-fun res!556930 () Bool)

(assert (=> b!815451 (=> (not res!556930) (not e!452230))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815451 (= res!556930 (and (= (size!21877 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21876 _keys!976) (size!21877 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23047 () Bool)

(assert (=> mapIsEmpty!23047 mapRes!23047))

(declare-fun mapNonEmpty!23047 () Bool)

(declare-fun tp!44512 () Bool)

(assert (=> mapNonEmpty!23047 (= mapRes!23047 (and tp!44512 e!452229))))

(declare-fun mapRest!23047 () (Array (_ BitVec 32) ValueCell!6738))

(declare-fun mapKey!23047 () (_ BitVec 32))

(declare-fun mapValue!23047 () ValueCell!6738)

(assert (=> mapNonEmpty!23047 (= (arr!21456 _values!788) (store mapRest!23047 mapKey!23047 mapValue!23047))))

(declare-fun b!815452 () Bool)

(declare-fun e!452226 () Bool)

(assert (=> b!815452 (= e!452226 true)))

(declare-datatypes ((tuple2!9460 0))(
  ( (tuple2!9461 (_1!4740 (_ BitVec 64)) (_2!4740 V!24077)) )
))
(declare-datatypes ((List!15331 0))(
  ( (Nil!15328) (Cons!15327 (h!16456 tuple2!9460) (t!21660 List!15331)) )
))
(declare-datatypes ((ListLongMap!8297 0))(
  ( (ListLongMap!8298 (toList!4164 List!15331)) )
))
(declare-fun lt!365092 () ListLongMap!8297)

(declare-fun minValue!754 () V!24077)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24077)

(declare-fun getCurrentListMap!2357 (array!44802 array!44804 (_ BitVec 32) (_ BitVec 32) V!24077 V!24077 (_ BitVec 32) Int) ListLongMap!8297)

(assert (=> b!815452 (= lt!365092 (getCurrentListMap!2357 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365091 () ListLongMap!8297)

(declare-fun zeroValueBefore!34 () V!24077)

(declare-fun +!1756 (ListLongMap!8297 tuple2!9460) ListLongMap!8297)

(assert (=> b!815452 (= lt!365091 (+!1756 (getCurrentListMap!2357 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9461 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815453 () Bool)

(declare-fun res!556927 () Bool)

(assert (=> b!815453 (=> (not res!556927) (not e!452230))))

(declare-datatypes ((List!15332 0))(
  ( (Nil!15329) (Cons!15328 (h!16457 (_ BitVec 64)) (t!21661 List!15332)) )
))
(declare-fun arrayNoDuplicates!0 (array!44802 (_ BitVec 32) List!15332) Bool)

(assert (=> b!815453 (= res!556927 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15329))))

(declare-fun b!815454 () Bool)

(declare-fun res!556928 () Bool)

(assert (=> b!815454 (=> (not res!556928) (not e!452230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44802 (_ BitVec 32)) Bool)

(assert (=> b!815454 (= res!556928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815455 () Bool)

(assert (=> b!815455 (= e!452230 (not e!452226))))

(declare-fun res!556929 () Bool)

(assert (=> b!815455 (=> res!556929 e!452226)))

(assert (=> b!815455 (= res!556929 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365095 () ListLongMap!8297)

(declare-fun lt!365094 () ListLongMap!8297)

(assert (=> b!815455 (= lt!365095 lt!365094)))

(declare-datatypes ((Unit!27784 0))(
  ( (Unit!27785) )
))
(declare-fun lt!365093 () Unit!27784)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!329 (array!44802 array!44804 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24077 V!24077 V!24077 V!24077 (_ BitVec 32) Int) Unit!27784)

(assert (=> b!815455 (= lt!365093 (lemmaNoChangeToArrayThenSameMapNoExtras!329 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2213 (array!44802 array!44804 (_ BitVec 32) (_ BitVec 32) V!24077 V!24077 (_ BitVec 32) Int) ListLongMap!8297)

(assert (=> b!815455 (= lt!365094 (getCurrentListMapNoExtraKeys!2213 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815455 (= lt!365095 (getCurrentListMapNoExtraKeys!2213 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70228 res!556926) b!815451))

(assert (= (and b!815451 res!556930) b!815454))

(assert (= (and b!815454 res!556928) b!815453))

(assert (= (and b!815453 res!556927) b!815455))

(assert (= (and b!815455 (not res!556929)) b!815452))

(assert (= (and b!815448 condMapEmpty!23047) mapIsEmpty!23047))

(assert (= (and b!815448 (not condMapEmpty!23047)) mapNonEmpty!23047))

(get-info :version)

(assert (= (and mapNonEmpty!23047 ((_ is ValueCellFull!6738) mapValue!23047)) b!815449))

(assert (= (and b!815448 ((_ is ValueCellFull!6738) mapDefault!23047)) b!815450))

(assert (= start!70228 b!815448))

(declare-fun m!757187 () Bool)

(assert (=> b!815455 m!757187))

(declare-fun m!757189 () Bool)

(assert (=> b!815455 m!757189))

(declare-fun m!757191 () Bool)

(assert (=> b!815455 m!757191))

(declare-fun m!757193 () Bool)

(assert (=> b!815454 m!757193))

(declare-fun m!757195 () Bool)

(assert (=> b!815453 m!757195))

(declare-fun m!757197 () Bool)

(assert (=> b!815452 m!757197))

(declare-fun m!757199 () Bool)

(assert (=> b!815452 m!757199))

(assert (=> b!815452 m!757199))

(declare-fun m!757201 () Bool)

(assert (=> b!815452 m!757201))

(declare-fun m!757203 () Bool)

(assert (=> mapNonEmpty!23047 m!757203))

(declare-fun m!757205 () Bool)

(assert (=> start!70228 m!757205))

(declare-fun m!757207 () Bool)

(assert (=> start!70228 m!757207))

(declare-fun m!757209 () Bool)

(assert (=> start!70228 m!757209))

(check-sat (not b!815453) (not mapNonEmpty!23047) b_and!21403 (not start!70228) (not b!815452) (not b!815455) (not b_next!12597) tp_is_empty!14307 (not b!815454))
(check-sat b_and!21403 (not b_next!12597))
