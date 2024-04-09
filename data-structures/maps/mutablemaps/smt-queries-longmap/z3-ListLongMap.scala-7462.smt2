; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94718 () Bool)

(assert start!94718)

(declare-fun b_free!21951 () Bool)

(declare-fun b_next!21951 () Bool)

(assert (=> start!94718 (= b_free!21951 (not b_next!21951))))

(declare-fun tp!77309 () Bool)

(declare-fun b_and!34789 () Bool)

(assert (=> start!94718 (= tp!77309 b_and!34789)))

(declare-fun mapNonEmpty!40345 () Bool)

(declare-fun mapRes!40345 () Bool)

(declare-fun tp!77310 () Bool)

(declare-fun e!611117 () Bool)

(assert (=> mapNonEmpty!40345 (= mapRes!40345 (and tp!77310 e!611117))))

(declare-datatypes ((V!39483 0))(
  ( (V!39484 (val!12931 Int)) )
))
(declare-datatypes ((ValueCell!12177 0))(
  ( (ValueCellFull!12177 (v!15548 V!39483)) (EmptyCell!12177) )
))
(declare-fun mapRest!40345 () (Array (_ BitVec 32) ValueCell!12177))

(declare-fun mapValue!40345 () ValueCell!12177)

(declare-datatypes ((array!68462 0))(
  ( (array!68463 (arr!32924 (Array (_ BitVec 32) ValueCell!12177)) (size!33461 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68462)

(declare-fun mapKey!40345 () (_ BitVec 32))

(assert (=> mapNonEmpty!40345 (= (arr!32924 _values!955) (store mapRest!40345 mapKey!40345 mapValue!40345))))

(declare-fun b!1070467 () Bool)

(declare-fun tp_is_empty!25761 () Bool)

(assert (=> b!1070467 (= e!611117 tp_is_empty!25761)))

(declare-fun b!1070468 () Bool)

(declare-fun e!611118 () Bool)

(assert (=> b!1070468 (= e!611118 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39483)

(declare-datatypes ((tuple2!16514 0))(
  ( (tuple2!16515 (_1!8267 (_ BitVec 64)) (_2!8267 V!39483)) )
))
(declare-datatypes ((List!23100 0))(
  ( (Nil!23097) (Cons!23096 (h!24305 tuple2!16514) (t!32438 List!23100)) )
))
(declare-datatypes ((ListLongMap!14495 0))(
  ( (ListLongMap!14496 (toList!7263 List!23100)) )
))
(declare-fun lt!473089 () ListLongMap!14495)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39483)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68464 0))(
  ( (array!68465 (arr!32925 (Array (_ BitVec 32) (_ BitVec 64))) (size!33462 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68464)

(declare-fun getCurrentListMap!4129 (array!68464 array!68462 (_ BitVec 32) (_ BitVec 32) V!39483 V!39483 (_ BitVec 32) Int) ListLongMap!14495)

(assert (=> b!1070468 (= lt!473089 (getCurrentListMap!4129 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070469 () Bool)

(declare-fun res!714236 () Bool)

(declare-fun e!611121 () Bool)

(assert (=> b!1070469 (=> (not res!714236) (not e!611121))))

(declare-datatypes ((List!23101 0))(
  ( (Nil!23098) (Cons!23097 (h!24306 (_ BitVec 64)) (t!32439 List!23101)) )
))
(declare-fun arrayNoDuplicates!0 (array!68464 (_ BitVec 32) List!23101) Bool)

(assert (=> b!1070469 (= res!714236 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23098))))

(declare-fun b!1070470 () Bool)

(assert (=> b!1070470 (= e!611121 (not e!611118))))

(declare-fun res!714235 () Bool)

(assert (=> b!1070470 (=> res!714235 e!611118)))

(assert (=> b!1070470 (= res!714235 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473088 () ListLongMap!14495)

(declare-fun lt!473087 () ListLongMap!14495)

(assert (=> b!1070470 (= lt!473088 lt!473087)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39483)

(declare-datatypes ((Unit!35190 0))(
  ( (Unit!35191) )
))
(declare-fun lt!473090 () Unit!35190)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!838 (array!68464 array!68462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39483 V!39483 V!39483 V!39483 (_ BitVec 32) Int) Unit!35190)

(assert (=> b!1070470 (= lt!473090 (lemmaNoChangeToArrayThenSameMapNoExtras!838 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3799 (array!68464 array!68462 (_ BitVec 32) (_ BitVec 32) V!39483 V!39483 (_ BitVec 32) Int) ListLongMap!14495)

(assert (=> b!1070470 (= lt!473087 (getCurrentListMapNoExtraKeys!3799 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070470 (= lt!473088 (getCurrentListMapNoExtraKeys!3799 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070471 () Bool)

(declare-fun e!611120 () Bool)

(assert (=> b!1070471 (= e!611120 tp_is_empty!25761)))

(declare-fun b!1070472 () Bool)

(declare-fun res!714233 () Bool)

(assert (=> b!1070472 (=> (not res!714233) (not e!611121))))

(assert (=> b!1070472 (= res!714233 (and (= (size!33461 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33462 _keys!1163) (size!33461 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070473 () Bool)

(declare-fun e!611119 () Bool)

(assert (=> b!1070473 (= e!611119 (and e!611120 mapRes!40345))))

(declare-fun condMapEmpty!40345 () Bool)

(declare-fun mapDefault!40345 () ValueCell!12177)

(assert (=> b!1070473 (= condMapEmpty!40345 (= (arr!32924 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12177)) mapDefault!40345)))))

(declare-fun res!714234 () Bool)

(assert (=> start!94718 (=> (not res!714234) (not e!611121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94718 (= res!714234 (validMask!0 mask!1515))))

(assert (=> start!94718 e!611121))

(assert (=> start!94718 true))

(assert (=> start!94718 tp_is_empty!25761))

(declare-fun array_inv!25318 (array!68462) Bool)

(assert (=> start!94718 (and (array_inv!25318 _values!955) e!611119)))

(assert (=> start!94718 tp!77309))

(declare-fun array_inv!25319 (array!68464) Bool)

(assert (=> start!94718 (array_inv!25319 _keys!1163)))

(declare-fun b!1070474 () Bool)

(declare-fun res!714232 () Bool)

(assert (=> b!1070474 (=> (not res!714232) (not e!611121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68464 (_ BitVec 32)) Bool)

(assert (=> b!1070474 (= res!714232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40345 () Bool)

(assert (=> mapIsEmpty!40345 mapRes!40345))

(assert (= (and start!94718 res!714234) b!1070472))

(assert (= (and b!1070472 res!714233) b!1070474))

(assert (= (and b!1070474 res!714232) b!1070469))

(assert (= (and b!1070469 res!714236) b!1070470))

(assert (= (and b!1070470 (not res!714235)) b!1070468))

(assert (= (and b!1070473 condMapEmpty!40345) mapIsEmpty!40345))

(assert (= (and b!1070473 (not condMapEmpty!40345)) mapNonEmpty!40345))

(get-info :version)

(assert (= (and mapNonEmpty!40345 ((_ is ValueCellFull!12177) mapValue!40345)) b!1070467))

(assert (= (and b!1070473 ((_ is ValueCellFull!12177) mapDefault!40345)) b!1070471))

(assert (= start!94718 b!1070473))

(declare-fun m!988939 () Bool)

(assert (=> b!1070470 m!988939))

(declare-fun m!988941 () Bool)

(assert (=> b!1070470 m!988941))

(declare-fun m!988943 () Bool)

(assert (=> b!1070470 m!988943))

(declare-fun m!988945 () Bool)

(assert (=> b!1070468 m!988945))

(declare-fun m!988947 () Bool)

(assert (=> b!1070474 m!988947))

(declare-fun m!988949 () Bool)

(assert (=> start!94718 m!988949))

(declare-fun m!988951 () Bool)

(assert (=> start!94718 m!988951))

(declare-fun m!988953 () Bool)

(assert (=> start!94718 m!988953))

(declare-fun m!988955 () Bool)

(assert (=> mapNonEmpty!40345 m!988955))

(declare-fun m!988957 () Bool)

(assert (=> b!1070469 m!988957))

(check-sat (not b!1070470) (not b_next!21951) (not mapNonEmpty!40345) (not start!94718) (not b!1070474) b_and!34789 (not b!1070469) tp_is_empty!25761 (not b!1070468))
(check-sat b_and!34789 (not b_next!21951))
