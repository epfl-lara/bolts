; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94938 () Bool)

(assert start!94938)

(declare-fun b_free!22107 () Bool)

(declare-fun b_next!22107 () Bool)

(assert (=> start!94938 (= b_free!22107 (not b_next!22107))))

(declare-fun tp!77786 () Bool)

(declare-fun b_and!34979 () Bool)

(assert (=> start!94938 (= tp!77786 b_and!34979)))

(declare-fun b!1073019 () Bool)

(declare-fun e!613009 () Bool)

(declare-fun tp_is_empty!25917 () Bool)

(assert (=> b!1073019 (= e!613009 tp_is_empty!25917)))

(declare-fun b!1073020 () Bool)

(declare-fun e!613012 () Bool)

(assert (=> b!1073020 (= e!613012 tp_is_empty!25917)))

(declare-fun res!715790 () Bool)

(declare-fun e!613011 () Bool)

(assert (=> start!94938 (=> (not res!715790) (not e!613011))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94938 (= res!715790 (validMask!0 mask!1515))))

(assert (=> start!94938 e!613011))

(assert (=> start!94938 true))

(assert (=> start!94938 tp_is_empty!25917))

(declare-datatypes ((V!39691 0))(
  ( (V!39692 (val!13009 Int)) )
))
(declare-datatypes ((ValueCell!12255 0))(
  ( (ValueCellFull!12255 (v!15628 V!39691)) (EmptyCell!12255) )
))
(declare-datatypes ((array!68762 0))(
  ( (array!68763 (arr!33071 (Array (_ BitVec 32) ValueCell!12255)) (size!33608 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68762)

(declare-fun e!613010 () Bool)

(declare-fun array_inv!25420 (array!68762) Bool)

(assert (=> start!94938 (and (array_inv!25420 _values!955) e!613010)))

(assert (=> start!94938 tp!77786))

(declare-datatypes ((array!68764 0))(
  ( (array!68765 (arr!33072 (Array (_ BitVec 32) (_ BitVec 64))) (size!33609 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68764)

(declare-fun array_inv!25421 (array!68764) Bool)

(assert (=> start!94938 (array_inv!25421 _keys!1163)))

(declare-fun b!1073021 () Bool)

(declare-fun res!715789 () Bool)

(assert (=> b!1073021 (=> (not res!715789) (not e!613011))))

(declare-datatypes ((List!23211 0))(
  ( (Nil!23208) (Cons!23207 (h!24416 (_ BitVec 64)) (t!32555 List!23211)) )
))
(declare-fun arrayNoDuplicates!0 (array!68764 (_ BitVec 32) List!23211) Bool)

(assert (=> b!1073021 (= res!715789 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23208))))

(declare-fun mapNonEmpty!40588 () Bool)

(declare-fun mapRes!40588 () Bool)

(declare-fun tp!77787 () Bool)

(assert (=> mapNonEmpty!40588 (= mapRes!40588 (and tp!77787 e!613009))))

(declare-fun mapRest!40588 () (Array (_ BitVec 32) ValueCell!12255))

(declare-fun mapValue!40588 () ValueCell!12255)

(declare-fun mapKey!40588 () (_ BitVec 32))

(assert (=> mapNonEmpty!40588 (= (arr!33071 _values!955) (store mapRest!40588 mapKey!40588 mapValue!40588))))

(declare-fun b!1073022 () Bool)

(declare-fun res!715791 () Bool)

(assert (=> b!1073022 (=> (not res!715791) (not e!613011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68764 (_ BitVec 32)) Bool)

(assert (=> b!1073022 (= res!715791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073023 () Bool)

(assert (=> b!1073023 (= e!613011 false)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39691)

(declare-datatypes ((tuple2!16630 0))(
  ( (tuple2!16631 (_1!8325 (_ BitVec 64)) (_2!8325 V!39691)) )
))
(declare-datatypes ((List!23212 0))(
  ( (Nil!23209) (Cons!23208 (h!24417 tuple2!16630) (t!32556 List!23212)) )
))
(declare-datatypes ((ListLongMap!14611 0))(
  ( (ListLongMap!14612 (toList!7321 List!23212)) )
))
(declare-fun lt!475919 () ListLongMap!14611)

(declare-fun minValue!907 () V!39691)

(declare-fun getCurrentListMapNoExtraKeys!3851 (array!68764 array!68762 (_ BitVec 32) (_ BitVec 32) V!39691 V!39691 (_ BitVec 32) Int) ListLongMap!14611)

(assert (=> b!1073023 (= lt!475919 (getCurrentListMapNoExtraKeys!3851 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475918 () ListLongMap!14611)

(declare-fun zeroValueBefore!47 () V!39691)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073023 (= lt!475918 (getCurrentListMapNoExtraKeys!3851 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40588 () Bool)

(assert (=> mapIsEmpty!40588 mapRes!40588))

(declare-fun b!1073024 () Bool)

(assert (=> b!1073024 (= e!613010 (and e!613012 mapRes!40588))))

(declare-fun condMapEmpty!40588 () Bool)

(declare-fun mapDefault!40588 () ValueCell!12255)

(assert (=> b!1073024 (= condMapEmpty!40588 (= (arr!33071 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12255)) mapDefault!40588)))))

(declare-fun b!1073025 () Bool)

(declare-fun res!715788 () Bool)

(assert (=> b!1073025 (=> (not res!715788) (not e!613011))))

(assert (=> b!1073025 (= res!715788 (and (= (size!33608 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33609 _keys!1163) (size!33608 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94938 res!715790) b!1073025))

(assert (= (and b!1073025 res!715788) b!1073022))

(assert (= (and b!1073022 res!715791) b!1073021))

(assert (= (and b!1073021 res!715789) b!1073023))

(assert (= (and b!1073024 condMapEmpty!40588) mapIsEmpty!40588))

(assert (= (and b!1073024 (not condMapEmpty!40588)) mapNonEmpty!40588))

(get-info :version)

(assert (= (and mapNonEmpty!40588 ((_ is ValueCellFull!12255) mapValue!40588)) b!1073019))

(assert (= (and b!1073024 ((_ is ValueCellFull!12255) mapDefault!40588)) b!1073020))

(assert (= start!94938 b!1073024))

(declare-fun m!992229 () Bool)

(assert (=> mapNonEmpty!40588 m!992229))

(declare-fun m!992231 () Bool)

(assert (=> b!1073023 m!992231))

(declare-fun m!992233 () Bool)

(assert (=> b!1073023 m!992233))

(declare-fun m!992235 () Bool)

(assert (=> b!1073022 m!992235))

(declare-fun m!992237 () Bool)

(assert (=> start!94938 m!992237))

(declare-fun m!992239 () Bool)

(assert (=> start!94938 m!992239))

(declare-fun m!992241 () Bool)

(assert (=> start!94938 m!992241))

(declare-fun m!992243 () Bool)

(assert (=> b!1073021 m!992243))

(check-sat (not mapNonEmpty!40588) (not b!1073022) (not start!94938) (not b_next!22107) (not b!1073023) tp_is_empty!25917 (not b!1073021) b_and!34979)
(check-sat b_and!34979 (not b_next!22107))
