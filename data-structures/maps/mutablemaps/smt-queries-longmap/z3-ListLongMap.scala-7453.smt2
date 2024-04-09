; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94650 () Bool)

(assert start!94650)

(declare-fun b_free!21897 () Bool)

(declare-fun b_next!21897 () Bool)

(assert (=> start!94650 (= b_free!21897 (not b_next!21897))))

(declare-fun tp!77145 () Bool)

(declare-fun b_and!34727 () Bool)

(assert (=> start!94650 (= tp!77145 b_and!34727)))

(declare-fun mapIsEmpty!40261 () Bool)

(declare-fun mapRes!40261 () Bool)

(assert (=> mapIsEmpty!40261 mapRes!40261))

(declare-fun b!1069756 () Bool)

(declare-fun e!610599 () Bool)

(declare-fun tp_is_empty!25707 () Bool)

(assert (=> b!1069756 (= e!610599 tp_is_empty!25707)))

(declare-fun b!1069757 () Bool)

(declare-fun e!610601 () Bool)

(assert (=> b!1069757 (= e!610601 (and e!610599 mapRes!40261))))

(declare-fun condMapEmpty!40261 () Bool)

(declare-datatypes ((V!39411 0))(
  ( (V!39412 (val!12904 Int)) )
))
(declare-datatypes ((ValueCell!12150 0))(
  ( (ValueCellFull!12150 (v!15521 V!39411)) (EmptyCell!12150) )
))
(declare-datatypes ((array!68360 0))(
  ( (array!68361 (arr!32874 (Array (_ BitVec 32) ValueCell!12150)) (size!33411 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68360)

(declare-fun mapDefault!40261 () ValueCell!12150)

(assert (=> b!1069757 (= condMapEmpty!40261 (= (arr!32874 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12150)) mapDefault!40261)))))

(declare-fun b!1069758 () Bool)

(declare-fun res!713820 () Bool)

(declare-fun e!610597 () Bool)

(assert (=> b!1069758 (=> (not res!713820) (not e!610597))))

(declare-datatypes ((array!68362 0))(
  ( (array!68363 (arr!32875 (Array (_ BitVec 32) (_ BitVec 64))) (size!33412 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68362)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68362 (_ BitVec 32)) Bool)

(assert (=> b!1069758 (= res!713820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069759 () Bool)

(assert (=> b!1069759 (= e!610597 (not true))))

(declare-datatypes ((tuple2!16474 0))(
  ( (tuple2!16475 (_1!8247 (_ BitVec 64)) (_2!8247 V!39411)) )
))
(declare-datatypes ((List!23062 0))(
  ( (Nil!23059) (Cons!23058 (h!24267 tuple2!16474) (t!32398 List!23062)) )
))
(declare-datatypes ((ListLongMap!14455 0))(
  ( (ListLongMap!14456 (toList!7243 List!23062)) )
))
(declare-fun lt!472745 () ListLongMap!14455)

(declare-fun lt!472747 () ListLongMap!14455)

(assert (=> b!1069759 (= lt!472745 lt!472747)))

(declare-datatypes ((Unit!35152 0))(
  ( (Unit!35153) )
))
(declare-fun lt!472746 () Unit!35152)

(declare-fun minValue!907 () V!39411)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39411)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39411)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!819 (array!68362 array!68360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39411 V!39411 V!39411 V!39411 (_ BitVec 32) Int) Unit!35152)

(assert (=> b!1069759 (= lt!472746 (lemmaNoChangeToArrayThenSameMapNoExtras!819 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3780 (array!68362 array!68360 (_ BitVec 32) (_ BitVec 32) V!39411 V!39411 (_ BitVec 32) Int) ListLongMap!14455)

(assert (=> b!1069759 (= lt!472747 (getCurrentListMapNoExtraKeys!3780 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069759 (= lt!472745 (getCurrentListMapNoExtraKeys!3780 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069760 () Bool)

(declare-fun res!713818 () Bool)

(assert (=> b!1069760 (=> (not res!713818) (not e!610597))))

(assert (=> b!1069760 (= res!713818 (and (= (size!33411 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33412 _keys!1163) (size!33411 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713821 () Bool)

(assert (=> start!94650 (=> (not res!713821) (not e!610597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94650 (= res!713821 (validMask!0 mask!1515))))

(assert (=> start!94650 e!610597))

(assert (=> start!94650 true))

(assert (=> start!94650 tp_is_empty!25707))

(declare-fun array_inv!25284 (array!68360) Bool)

(assert (=> start!94650 (and (array_inv!25284 _values!955) e!610601)))

(assert (=> start!94650 tp!77145))

(declare-fun array_inv!25285 (array!68362) Bool)

(assert (=> start!94650 (array_inv!25285 _keys!1163)))

(declare-fun b!1069761 () Bool)

(declare-fun e!610598 () Bool)

(assert (=> b!1069761 (= e!610598 tp_is_empty!25707)))

(declare-fun mapNonEmpty!40261 () Bool)

(declare-fun tp!77144 () Bool)

(assert (=> mapNonEmpty!40261 (= mapRes!40261 (and tp!77144 e!610598))))

(declare-fun mapKey!40261 () (_ BitVec 32))

(declare-fun mapRest!40261 () (Array (_ BitVec 32) ValueCell!12150))

(declare-fun mapValue!40261 () ValueCell!12150)

(assert (=> mapNonEmpty!40261 (= (arr!32874 _values!955) (store mapRest!40261 mapKey!40261 mapValue!40261))))

(declare-fun b!1069762 () Bool)

(declare-fun res!713819 () Bool)

(assert (=> b!1069762 (=> (not res!713819) (not e!610597))))

(declare-datatypes ((List!23063 0))(
  ( (Nil!23060) (Cons!23059 (h!24268 (_ BitVec 64)) (t!32399 List!23063)) )
))
(declare-fun arrayNoDuplicates!0 (array!68362 (_ BitVec 32) List!23063) Bool)

(assert (=> b!1069762 (= res!713819 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23060))))

(assert (= (and start!94650 res!713821) b!1069760))

(assert (= (and b!1069760 res!713818) b!1069758))

(assert (= (and b!1069758 res!713820) b!1069762))

(assert (= (and b!1069762 res!713819) b!1069759))

(assert (= (and b!1069757 condMapEmpty!40261) mapIsEmpty!40261))

(assert (= (and b!1069757 (not condMapEmpty!40261)) mapNonEmpty!40261))

(get-info :version)

(assert (= (and mapNonEmpty!40261 ((_ is ValueCellFull!12150) mapValue!40261)) b!1069761))

(assert (= (and b!1069757 ((_ is ValueCellFull!12150) mapDefault!40261)) b!1069756))

(assert (= start!94650 b!1069757))

(declare-fun m!988349 () Bool)

(assert (=> b!1069759 m!988349))

(declare-fun m!988351 () Bool)

(assert (=> b!1069759 m!988351))

(declare-fun m!988353 () Bool)

(assert (=> b!1069759 m!988353))

(declare-fun m!988355 () Bool)

(assert (=> b!1069758 m!988355))

(declare-fun m!988357 () Bool)

(assert (=> mapNonEmpty!40261 m!988357))

(declare-fun m!988359 () Bool)

(assert (=> b!1069762 m!988359))

(declare-fun m!988361 () Bool)

(assert (=> start!94650 m!988361))

(declare-fun m!988363 () Bool)

(assert (=> start!94650 m!988363))

(declare-fun m!988365 () Bool)

(assert (=> start!94650 m!988365))

(check-sat (not b!1069762) (not b_next!21897) tp_is_empty!25707 b_and!34727 (not mapNonEmpty!40261) (not b!1069759) (not start!94650) (not b!1069758))
(check-sat b_and!34727 (not b_next!21897))
