; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70110 () Bool)

(assert start!70110)

(declare-fun b_free!12507 () Bool)

(declare-fun b_next!12507 () Bool)

(assert (=> start!70110 (= b_free!12507 (not b_next!12507))))

(declare-fun tp!44236 () Bool)

(declare-fun b_and!21297 () Bool)

(assert (=> start!70110 (= tp!44236 b_and!21297)))

(declare-fun b!814319 () Bool)

(declare-fun e!451426 () Bool)

(declare-fun e!451430 () Bool)

(declare-fun mapRes!22906 () Bool)

(assert (=> b!814319 (= e!451426 (and e!451430 mapRes!22906))))

(declare-fun condMapEmpty!22906 () Bool)

(declare-datatypes ((V!23957 0))(
  ( (V!23958 (val!7156 Int)) )
))
(declare-datatypes ((ValueCell!6693 0))(
  ( (ValueCellFull!6693 (v!9579 V!23957)) (EmptyCell!6693) )
))
(declare-datatypes ((array!44622 0))(
  ( (array!44623 (arr!21367 (Array (_ BitVec 32) ValueCell!6693)) (size!21788 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44622)

(declare-fun mapDefault!22906 () ValueCell!6693)

(assert (=> b!814319 (= condMapEmpty!22906 (= (arr!21367 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6693)) mapDefault!22906)))))

(declare-fun b!814320 () Bool)

(declare-fun e!451427 () Bool)

(assert (=> b!814320 (= e!451427 (not true))))

(declare-datatypes ((tuple2!9386 0))(
  ( (tuple2!9387 (_1!4703 (_ BitVec 64)) (_2!4703 V!23957)) )
))
(declare-datatypes ((List!15259 0))(
  ( (Nil!15256) (Cons!15255 (h!16384 tuple2!9386) (t!21584 List!15259)) )
))
(declare-datatypes ((ListLongMap!8223 0))(
  ( (ListLongMap!8224 (toList!4127 List!15259)) )
))
(declare-fun lt!364578 () ListLongMap!8223)

(declare-fun lt!364580 () ListLongMap!8223)

(assert (=> b!814320 (= lt!364578 lt!364580)))

(declare-fun zeroValueBefore!34 () V!23957)

(declare-datatypes ((Unit!27710 0))(
  ( (Unit!27711) )
))
(declare-fun lt!364579 () Unit!27710)

(declare-datatypes ((array!44624 0))(
  ( (array!44625 (arr!21368 (Array (_ BitVec 32) (_ BitVec 64))) (size!21789 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44624)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23957)

(declare-fun minValue!754 () V!23957)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!292 (array!44624 array!44622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23957 V!23957 V!23957 V!23957 (_ BitVec 32) Int) Unit!27710)

(assert (=> b!814320 (= lt!364579 (lemmaNoChangeToArrayThenSameMapNoExtras!292 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2176 (array!44624 array!44622 (_ BitVec 32) (_ BitVec 32) V!23957 V!23957 (_ BitVec 32) Int) ListLongMap!8223)

(assert (=> b!814320 (= lt!364580 (getCurrentListMapNoExtraKeys!2176 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814320 (= lt!364578 (getCurrentListMapNoExtraKeys!2176 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814321 () Bool)

(declare-fun res!556310 () Bool)

(assert (=> b!814321 (=> (not res!556310) (not e!451427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44624 (_ BitVec 32)) Bool)

(assert (=> b!814321 (= res!556310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814322 () Bool)

(declare-fun res!556312 () Bool)

(assert (=> b!814322 (=> (not res!556312) (not e!451427))))

(assert (=> b!814322 (= res!556312 (and (= (size!21788 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21789 _keys!976) (size!21788 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!556311 () Bool)

(assert (=> start!70110 (=> (not res!556311) (not e!451427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70110 (= res!556311 (validMask!0 mask!1312))))

(assert (=> start!70110 e!451427))

(declare-fun tp_is_empty!14217 () Bool)

(assert (=> start!70110 tp_is_empty!14217))

(declare-fun array_inv!17075 (array!44624) Bool)

(assert (=> start!70110 (array_inv!17075 _keys!976)))

(assert (=> start!70110 true))

(declare-fun array_inv!17076 (array!44622) Bool)

(assert (=> start!70110 (and (array_inv!17076 _values!788) e!451426)))

(assert (=> start!70110 tp!44236))

(declare-fun mapNonEmpty!22906 () Bool)

(declare-fun tp!44235 () Bool)

(declare-fun e!451429 () Bool)

(assert (=> mapNonEmpty!22906 (= mapRes!22906 (and tp!44235 e!451429))))

(declare-fun mapRest!22906 () (Array (_ BitVec 32) ValueCell!6693))

(declare-fun mapValue!22906 () ValueCell!6693)

(declare-fun mapKey!22906 () (_ BitVec 32))

(assert (=> mapNonEmpty!22906 (= (arr!21367 _values!788) (store mapRest!22906 mapKey!22906 mapValue!22906))))

(declare-fun mapIsEmpty!22906 () Bool)

(assert (=> mapIsEmpty!22906 mapRes!22906))

(declare-fun b!814323 () Bool)

(assert (=> b!814323 (= e!451429 tp_is_empty!14217)))

(declare-fun b!814324 () Bool)

(declare-fun res!556313 () Bool)

(assert (=> b!814324 (=> (not res!556313) (not e!451427))))

(declare-datatypes ((List!15260 0))(
  ( (Nil!15257) (Cons!15256 (h!16385 (_ BitVec 64)) (t!21585 List!15260)) )
))
(declare-fun arrayNoDuplicates!0 (array!44624 (_ BitVec 32) List!15260) Bool)

(assert (=> b!814324 (= res!556313 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15257))))

(declare-fun b!814325 () Bool)

(assert (=> b!814325 (= e!451430 tp_is_empty!14217)))

(assert (= (and start!70110 res!556311) b!814322))

(assert (= (and b!814322 res!556312) b!814321))

(assert (= (and b!814321 res!556310) b!814324))

(assert (= (and b!814324 res!556313) b!814320))

(assert (= (and b!814319 condMapEmpty!22906) mapIsEmpty!22906))

(assert (= (and b!814319 (not condMapEmpty!22906)) mapNonEmpty!22906))

(get-info :version)

(assert (= (and mapNonEmpty!22906 ((_ is ValueCellFull!6693) mapValue!22906)) b!814323))

(assert (= (and b!814319 ((_ is ValueCellFull!6693) mapDefault!22906)) b!814325))

(assert (= start!70110 b!814319))

(declare-fun m!756221 () Bool)

(assert (=> start!70110 m!756221))

(declare-fun m!756223 () Bool)

(assert (=> start!70110 m!756223))

(declare-fun m!756225 () Bool)

(assert (=> start!70110 m!756225))

(declare-fun m!756227 () Bool)

(assert (=> b!814324 m!756227))

(declare-fun m!756229 () Bool)

(assert (=> b!814320 m!756229))

(declare-fun m!756231 () Bool)

(assert (=> b!814320 m!756231))

(declare-fun m!756233 () Bool)

(assert (=> b!814320 m!756233))

(declare-fun m!756235 () Bool)

(assert (=> mapNonEmpty!22906 m!756235))

(declare-fun m!756237 () Bool)

(assert (=> b!814321 m!756237))

(check-sat (not mapNonEmpty!22906) (not b!814321) (not b!814320) (not b!814324) (not start!70110) b_and!21297 (not b_next!12507) tp_is_empty!14217)
(check-sat b_and!21297 (not b_next!12507))
