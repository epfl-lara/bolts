; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70838 () Bool)

(assert start!70838)

(declare-fun b_free!13071 () Bool)

(declare-fun b_next!13071 () Bool)

(assert (=> start!70838 (= b_free!13071 (not b_next!13071))))

(declare-fun tp!45958 () Bool)

(declare-fun b_and!21961 () Bool)

(assert (=> start!70838 (= tp!45958 b_and!21961)))

(declare-fun mapIsEmpty!23782 () Bool)

(declare-fun mapRes!23782 () Bool)

(assert (=> mapIsEmpty!23782 mapRes!23782))

(declare-fun res!561017 () Bool)

(declare-fun e!457266 () Bool)

(assert (=> start!70838 (=> (not res!561017) (not e!457266))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70838 (= res!561017 (validMask!0 mask!1312))))

(assert (=> start!70838 e!457266))

(declare-fun tp_is_empty!14781 () Bool)

(assert (=> start!70838 tp_is_empty!14781))

(declare-datatypes ((array!45714 0))(
  ( (array!45715 (arr!21903 (Array (_ BitVec 32) (_ BitVec 64))) (size!22324 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45714)

(declare-fun array_inv!17461 (array!45714) Bool)

(assert (=> start!70838 (array_inv!17461 _keys!976)))

(assert (=> start!70838 true))

(declare-datatypes ((V!24709 0))(
  ( (V!24710 (val!7438 Int)) )
))
(declare-datatypes ((ValueCell!6975 0))(
  ( (ValueCellFull!6975 (v!9865 V!24709)) (EmptyCell!6975) )
))
(declare-datatypes ((array!45716 0))(
  ( (array!45717 (arr!21904 (Array (_ BitVec 32) ValueCell!6975)) (size!22325 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45716)

(declare-fun e!457271 () Bool)

(declare-fun array_inv!17462 (array!45716) Bool)

(assert (=> start!70838 (and (array_inv!17462 _values!788) e!457271)))

(assert (=> start!70838 tp!45958))

(declare-fun mapNonEmpty!23782 () Bool)

(declare-fun tp!45957 () Bool)

(declare-fun e!457269 () Bool)

(assert (=> mapNonEmpty!23782 (= mapRes!23782 (and tp!45957 e!457269))))

(declare-fun mapKey!23782 () (_ BitVec 32))

(declare-fun mapValue!23782 () ValueCell!6975)

(declare-fun mapRest!23782 () (Array (_ BitVec 32) ValueCell!6975))

(assert (=> mapNonEmpty!23782 (= (arr!21904 _values!788) (store mapRest!23782 mapKey!23782 mapValue!23782))))

(declare-fun b!822367 () Bool)

(assert (=> b!822367 (= e!457269 tp_is_empty!14781)))

(declare-fun b!822368 () Bool)

(declare-fun e!457270 () Bool)

(assert (=> b!822368 (= e!457266 (not e!457270))))

(declare-fun res!561018 () Bool)

(assert (=> b!822368 (=> res!561018 e!457270)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822368 (= res!561018 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9818 0))(
  ( (tuple2!9819 (_1!4919 (_ BitVec 64)) (_2!4919 V!24709)) )
))
(declare-datatypes ((List!15678 0))(
  ( (Nil!15675) (Cons!15674 (h!16803 tuple2!9818) (t!22023 List!15678)) )
))
(declare-datatypes ((ListLongMap!8655 0))(
  ( (ListLongMap!8656 (toList!4343 List!15678)) )
))
(declare-fun lt!370166 () ListLongMap!8655)

(declare-fun lt!370168 () ListLongMap!8655)

(assert (=> b!822368 (= lt!370166 lt!370168)))

(declare-fun zeroValueBefore!34 () V!24709)

(declare-fun zeroValueAfter!34 () V!24709)

(declare-fun minValue!754 () V!24709)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28128 0))(
  ( (Unit!28129) )
))
(declare-fun lt!370165 () Unit!28128)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!485 (array!45714 array!45716 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24709 V!24709 V!24709 V!24709 (_ BitVec 32) Int) Unit!28128)

(assert (=> b!822368 (= lt!370165 (lemmaNoChangeToArrayThenSameMapNoExtras!485 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2369 (array!45714 array!45716 (_ BitVec 32) (_ BitVec 32) V!24709 V!24709 (_ BitVec 32) Int) ListLongMap!8655)

(assert (=> b!822368 (= lt!370168 (getCurrentListMapNoExtraKeys!2369 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822368 (= lt!370166 (getCurrentListMapNoExtraKeys!2369 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822369 () Bool)

(declare-fun e!457267 () Bool)

(assert (=> b!822369 (= e!457271 (and e!457267 mapRes!23782))))

(declare-fun condMapEmpty!23782 () Bool)

(declare-fun mapDefault!23782 () ValueCell!6975)

(assert (=> b!822369 (= condMapEmpty!23782 (= (arr!21904 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6975)) mapDefault!23782)))))

(declare-fun b!822370 () Bool)

(assert (=> b!822370 (= e!457270 true)))

(declare-fun lt!370169 () ListLongMap!8655)

(declare-fun lt!370171 () ListLongMap!8655)

(declare-fun lt!370167 () tuple2!9818)

(declare-fun +!1846 (ListLongMap!8655 tuple2!9818) ListLongMap!8655)

(assert (=> b!822370 (= lt!370169 (+!1846 lt!370171 lt!370167))))

(declare-fun lt!370170 () Unit!28128)

(declare-fun addCommutativeForDiffKeys!441 (ListLongMap!8655 (_ BitVec 64) V!24709 (_ BitVec 64) V!24709) Unit!28128)

(assert (=> b!822370 (= lt!370170 (addCommutativeForDiffKeys!441 lt!370166 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370164 () ListLongMap!8655)

(assert (=> b!822370 (= lt!370164 lt!370169)))

(declare-fun lt!370163 () tuple2!9818)

(assert (=> b!822370 (= lt!370169 (+!1846 (+!1846 lt!370166 lt!370167) lt!370163))))

(assert (=> b!822370 (= lt!370167 (tuple2!9819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370172 () ListLongMap!8655)

(assert (=> b!822370 (= lt!370172 lt!370171)))

(assert (=> b!822370 (= lt!370171 (+!1846 lt!370166 lt!370163))))

(assert (=> b!822370 (= lt!370163 (tuple2!9819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2476 (array!45714 array!45716 (_ BitVec 32) (_ BitVec 32) V!24709 V!24709 (_ BitVec 32) Int) ListLongMap!8655)

(assert (=> b!822370 (= lt!370164 (getCurrentListMap!2476 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822370 (= lt!370172 (getCurrentListMap!2476 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822371 () Bool)

(declare-fun res!561016 () Bool)

(assert (=> b!822371 (=> (not res!561016) (not e!457266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45714 (_ BitVec 32)) Bool)

(assert (=> b!822371 (= res!561016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822372 () Bool)

(declare-fun res!561020 () Bool)

(assert (=> b!822372 (=> (not res!561020) (not e!457266))))

(assert (=> b!822372 (= res!561020 (and (= (size!22325 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22324 _keys!976) (size!22325 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822373 () Bool)

(declare-fun res!561019 () Bool)

(assert (=> b!822373 (=> (not res!561019) (not e!457266))))

(declare-datatypes ((List!15679 0))(
  ( (Nil!15676) (Cons!15675 (h!16804 (_ BitVec 64)) (t!22024 List!15679)) )
))
(declare-fun arrayNoDuplicates!0 (array!45714 (_ BitVec 32) List!15679) Bool)

(assert (=> b!822373 (= res!561019 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15676))))

(declare-fun b!822374 () Bool)

(assert (=> b!822374 (= e!457267 tp_is_empty!14781)))

(assert (= (and start!70838 res!561017) b!822372))

(assert (= (and b!822372 res!561020) b!822371))

(assert (= (and b!822371 res!561016) b!822373))

(assert (= (and b!822373 res!561019) b!822368))

(assert (= (and b!822368 (not res!561018)) b!822370))

(assert (= (and b!822369 condMapEmpty!23782) mapIsEmpty!23782))

(assert (= (and b!822369 (not condMapEmpty!23782)) mapNonEmpty!23782))

(get-info :version)

(assert (= (and mapNonEmpty!23782 ((_ is ValueCellFull!6975) mapValue!23782)) b!822367))

(assert (= (and b!822369 ((_ is ValueCellFull!6975) mapDefault!23782)) b!822374))

(assert (= start!70838 b!822369))

(declare-fun m!764343 () Bool)

(assert (=> mapNonEmpty!23782 m!764343))

(declare-fun m!764345 () Bool)

(assert (=> b!822373 m!764345))

(declare-fun m!764347 () Bool)

(assert (=> start!70838 m!764347))

(declare-fun m!764349 () Bool)

(assert (=> start!70838 m!764349))

(declare-fun m!764351 () Bool)

(assert (=> start!70838 m!764351))

(declare-fun m!764353 () Bool)

(assert (=> b!822368 m!764353))

(declare-fun m!764355 () Bool)

(assert (=> b!822368 m!764355))

(declare-fun m!764357 () Bool)

(assert (=> b!822368 m!764357))

(declare-fun m!764359 () Bool)

(assert (=> b!822370 m!764359))

(declare-fun m!764361 () Bool)

(assert (=> b!822370 m!764361))

(declare-fun m!764363 () Bool)

(assert (=> b!822370 m!764363))

(declare-fun m!764365 () Bool)

(assert (=> b!822370 m!764365))

(declare-fun m!764367 () Bool)

(assert (=> b!822370 m!764367))

(assert (=> b!822370 m!764365))

(declare-fun m!764369 () Bool)

(assert (=> b!822370 m!764369))

(declare-fun m!764371 () Bool)

(assert (=> b!822370 m!764371))

(declare-fun m!764373 () Bool)

(assert (=> b!822371 m!764373))

(check-sat tp_is_empty!14781 (not mapNonEmpty!23782) (not b!822368) (not b!822370) (not start!70838) (not b_next!13071) (not b!822371) (not b!822373) b_and!21961)
(check-sat b_and!21961 (not b_next!13071))
