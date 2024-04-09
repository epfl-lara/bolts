; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71700 () Bool)

(assert start!71700)

(declare-fun b_free!13509 () Bool)

(declare-fun b_next!13509 () Bool)

(assert (=> start!71700 (= b_free!13509 (not b_next!13509))))

(declare-fun tp!47323 () Bool)

(declare-fun b_and!22613 () Bool)

(assert (=> start!71700 (= tp!47323 b_and!22613)))

(declare-datatypes ((V!25293 0))(
  ( (V!25294 (val!7657 Int)) )
))
(declare-datatypes ((tuple2!10186 0))(
  ( (tuple2!10187 (_1!5103 (_ BitVec 64)) (_2!5103 V!25293)) )
))
(declare-fun lt!378176 () tuple2!10186)

(declare-fun lt!378183 () tuple2!10186)

(declare-datatypes ((List!16014 0))(
  ( (Nil!16011) (Cons!16010 (h!17141 tuple2!10186) (t!22393 List!16014)) )
))
(declare-datatypes ((ListLongMap!9023 0))(
  ( (ListLongMap!9024 (toList!4527 List!16014)) )
))
(declare-fun lt!378182 () ListLongMap!9023)

(declare-fun lt!378178 () ListLongMap!9023)

(declare-fun e!464898 () Bool)

(declare-fun b!833366 () Bool)

(declare-fun +!1955 (ListLongMap!9023 tuple2!10186) ListLongMap!9023)

(assert (=> b!833366 (= e!464898 (= lt!378182 (+!1955 (+!1955 lt!378178 lt!378176) lt!378183)))))

(declare-fun mapNonEmpty!24491 () Bool)

(declare-fun mapRes!24491 () Bool)

(declare-fun tp!47324 () Bool)

(declare-fun e!464903 () Bool)

(assert (=> mapNonEmpty!24491 (= mapRes!24491 (and tp!47324 e!464903))))

(declare-datatypes ((ValueCell!7194 0))(
  ( (ValueCellFull!7194 (v!10101 V!25293)) (EmptyCell!7194) )
))
(declare-datatypes ((array!46586 0))(
  ( (array!46587 (arr!22323 (Array (_ BitVec 32) ValueCell!7194)) (size!22744 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46586)

(declare-fun mapValue!24491 () ValueCell!7194)

(declare-fun mapKey!24491 () (_ BitVec 32))

(declare-fun mapRest!24491 () (Array (_ BitVec 32) ValueCell!7194))

(assert (=> mapNonEmpty!24491 (= (arr!22323 _values!788) (store mapRest!24491 mapKey!24491 mapValue!24491))))

(declare-fun b!833367 () Bool)

(declare-fun e!464897 () Bool)

(declare-fun tp_is_empty!15219 () Bool)

(assert (=> b!833367 (= e!464897 tp_is_empty!15219)))

(declare-fun res!566784 () Bool)

(declare-fun e!464901 () Bool)

(assert (=> start!71700 (=> (not res!566784) (not e!464901))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71700 (= res!566784 (validMask!0 mask!1312))))

(assert (=> start!71700 e!464901))

(assert (=> start!71700 tp_is_empty!15219))

(declare-datatypes ((array!46588 0))(
  ( (array!46589 (arr!22324 (Array (_ BitVec 32) (_ BitVec 64))) (size!22745 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46588)

(declare-fun array_inv!17753 (array!46588) Bool)

(assert (=> start!71700 (array_inv!17753 _keys!976)))

(assert (=> start!71700 true))

(declare-fun e!464896 () Bool)

(declare-fun array_inv!17754 (array!46586) Bool)

(assert (=> start!71700 (and (array_inv!17754 _values!788) e!464896)))

(assert (=> start!71700 tp!47323))

(declare-fun b!833368 () Bool)

(assert (=> b!833368 (= e!464903 tp_is_empty!15219)))

(declare-fun b!833369 () Bool)

(declare-fun e!464900 () Bool)

(declare-fun lt!378186 () ListLongMap!9023)

(assert (=> b!833369 (= e!464900 (= lt!378182 lt!378186))))

(declare-fun lt!378184 () ListLongMap!9023)

(assert (=> b!833369 (= lt!378184 lt!378186)))

(declare-fun lt!378175 () ListLongMap!9023)

(assert (=> b!833369 (= lt!378186 (+!1955 lt!378175 lt!378183))))

(declare-fun lt!378179 () ListLongMap!9023)

(assert (=> b!833369 (= lt!378184 (+!1955 lt!378179 lt!378183))))

(declare-fun zeroValueBefore!34 () V!25293)

(declare-fun zeroValueAfter!34 () V!25293)

(declare-datatypes ((Unit!28563 0))(
  ( (Unit!28564) )
))
(declare-fun lt!378180 () Unit!28563)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!249 (ListLongMap!9023 (_ BitVec 64) V!25293 V!25293) Unit!28563)

(assert (=> b!833369 (= lt!378180 (addSameAsAddTwiceSameKeyDiffValues!249 lt!378179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!833369 e!464898))

(declare-fun res!566786 () Bool)

(assert (=> b!833369 (=> (not res!566786) (not e!464898))))

(declare-fun lt!378185 () ListLongMap!9023)

(assert (=> b!833369 (= res!566786 (= lt!378185 lt!378175))))

(declare-fun lt!378177 () tuple2!10186)

(assert (=> b!833369 (= lt!378175 (+!1955 lt!378179 lt!378177))))

(declare-fun lt!378174 () ListLongMap!9023)

(assert (=> b!833369 (= lt!378179 (+!1955 lt!378174 lt!378176))))

(assert (=> b!833369 (= lt!378183 (tuple2!10187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!464899 () Bool)

(assert (=> b!833369 e!464899))

(declare-fun res!566787 () Bool)

(assert (=> b!833369 (=> (not res!566787) (not e!464899))))

(assert (=> b!833369 (= res!566787 (= lt!378185 (+!1955 (+!1955 lt!378174 lt!378177) lt!378176)))))

(declare-fun minValue!754 () V!25293)

(assert (=> b!833369 (= lt!378176 (tuple2!10187 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833369 (= lt!378177 (tuple2!10187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2596 (array!46588 array!46586 (_ BitVec 32) (_ BitVec 32) V!25293 V!25293 (_ BitVec 32) Int) ListLongMap!9023)

(assert (=> b!833369 (= lt!378182 (getCurrentListMap!2596 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833369 (= lt!378185 (getCurrentListMap!2596 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833370 () Bool)

(assert (=> b!833370 (= e!464901 (not e!464900))))

(declare-fun res!566783 () Bool)

(assert (=> b!833370 (=> res!566783 e!464900)))

(assert (=> b!833370 (= res!566783 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!833370 (= lt!378174 lt!378178)))

(declare-fun lt!378181 () Unit!28563)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!616 (array!46588 array!46586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25293 V!25293 V!25293 V!25293 (_ BitVec 32) Int) Unit!28563)

(assert (=> b!833370 (= lt!378181 (lemmaNoChangeToArrayThenSameMapNoExtras!616 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2526 (array!46588 array!46586 (_ BitVec 32) (_ BitVec 32) V!25293 V!25293 (_ BitVec 32) Int) ListLongMap!9023)

(assert (=> b!833370 (= lt!378178 (getCurrentListMapNoExtraKeys!2526 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833370 (= lt!378174 (getCurrentListMapNoExtraKeys!2526 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833371 () Bool)

(declare-fun res!566782 () Bool)

(assert (=> b!833371 (=> (not res!566782) (not e!464901))))

(assert (=> b!833371 (= res!566782 (and (= (size!22744 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22745 _keys!976) (size!22744 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!833372 () Bool)

(declare-fun res!566788 () Bool)

(assert (=> b!833372 (=> (not res!566788) (not e!464901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46588 (_ BitVec 32)) Bool)

(assert (=> b!833372 (= res!566788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833373 () Bool)

(assert (=> b!833373 (= e!464899 (= lt!378182 (+!1955 (+!1955 lt!378178 (tuple2!10187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378176)))))

(declare-fun b!833374 () Bool)

(declare-fun res!566785 () Bool)

(assert (=> b!833374 (=> (not res!566785) (not e!464901))))

(declare-datatypes ((List!16015 0))(
  ( (Nil!16012) (Cons!16011 (h!17142 (_ BitVec 64)) (t!22394 List!16015)) )
))
(declare-fun arrayNoDuplicates!0 (array!46588 (_ BitVec 32) List!16015) Bool)

(assert (=> b!833374 (= res!566785 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16012))))

(declare-fun mapIsEmpty!24491 () Bool)

(assert (=> mapIsEmpty!24491 mapRes!24491))

(declare-fun b!833375 () Bool)

(assert (=> b!833375 (= e!464896 (and e!464897 mapRes!24491))))

(declare-fun condMapEmpty!24491 () Bool)

(declare-fun mapDefault!24491 () ValueCell!7194)

(assert (=> b!833375 (= condMapEmpty!24491 (= (arr!22323 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7194)) mapDefault!24491)))))

(assert (= (and start!71700 res!566784) b!833371))

(assert (= (and b!833371 res!566782) b!833372))

(assert (= (and b!833372 res!566788) b!833374))

(assert (= (and b!833374 res!566785) b!833370))

(assert (= (and b!833370 (not res!566783)) b!833369))

(assert (= (and b!833369 res!566787) b!833373))

(assert (= (and b!833369 res!566786) b!833366))

(assert (= (and b!833375 condMapEmpty!24491) mapIsEmpty!24491))

(assert (= (and b!833375 (not condMapEmpty!24491)) mapNonEmpty!24491))

(get-info :version)

(assert (= (and mapNonEmpty!24491 ((_ is ValueCellFull!7194) mapValue!24491)) b!833368))

(assert (= (and b!833375 ((_ is ValueCellFull!7194) mapDefault!24491)) b!833367))

(assert (= start!71700 b!833375))

(declare-fun m!778257 () Bool)

(assert (=> b!833374 m!778257))

(declare-fun m!778259 () Bool)

(assert (=> b!833372 m!778259))

(declare-fun m!778261 () Bool)

(assert (=> start!71700 m!778261))

(declare-fun m!778263 () Bool)

(assert (=> start!71700 m!778263))

(declare-fun m!778265 () Bool)

(assert (=> start!71700 m!778265))

(declare-fun m!778267 () Bool)

(assert (=> b!833366 m!778267))

(assert (=> b!833366 m!778267))

(declare-fun m!778269 () Bool)

(assert (=> b!833366 m!778269))

(declare-fun m!778271 () Bool)

(assert (=> mapNonEmpty!24491 m!778271))

(declare-fun m!778273 () Bool)

(assert (=> b!833370 m!778273))

(declare-fun m!778275 () Bool)

(assert (=> b!833370 m!778275))

(declare-fun m!778277 () Bool)

(assert (=> b!833370 m!778277))

(declare-fun m!778279 () Bool)

(assert (=> b!833369 m!778279))

(declare-fun m!778281 () Bool)

(assert (=> b!833369 m!778281))

(declare-fun m!778283 () Bool)

(assert (=> b!833369 m!778283))

(declare-fun m!778285 () Bool)

(assert (=> b!833369 m!778285))

(declare-fun m!778287 () Bool)

(assert (=> b!833369 m!778287))

(assert (=> b!833369 m!778279))

(declare-fun m!778289 () Bool)

(assert (=> b!833369 m!778289))

(declare-fun m!778291 () Bool)

(assert (=> b!833369 m!778291))

(declare-fun m!778293 () Bool)

(assert (=> b!833369 m!778293))

(declare-fun m!778295 () Bool)

(assert (=> b!833369 m!778295))

(declare-fun m!778297 () Bool)

(assert (=> b!833373 m!778297))

(assert (=> b!833373 m!778297))

(declare-fun m!778299 () Bool)

(assert (=> b!833373 m!778299))

(check-sat (not b!833374) (not b!833369) (not b!833372) b_and!22613 (not b!833370) (not mapNonEmpty!24491) (not start!71700) (not b_next!13509) tp_is_empty!15219 (not b!833366) (not b!833373))
(check-sat b_and!22613 (not b_next!13509))
