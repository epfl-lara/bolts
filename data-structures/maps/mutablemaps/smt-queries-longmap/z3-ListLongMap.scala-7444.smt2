; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94574 () Bool)

(assert start!94574)

(declare-fun b_free!21843 () Bool)

(declare-fun b_next!21843 () Bool)

(assert (=> start!94574 (= b_free!21843 (not b_next!21843))))

(declare-fun tp!76979 () Bool)

(declare-fun b_and!34663 () Bool)

(assert (=> start!94574 (= tp!76979 b_and!34663)))

(declare-fun b!1068988 () Bool)

(declare-fun res!713394 () Bool)

(declare-fun e!610054 () Bool)

(assert (=> b!1068988 (=> (not res!713394) (not e!610054))))

(declare-datatypes ((array!68256 0))(
  ( (array!68257 (arr!32823 (Array (_ BitVec 32) (_ BitVec 64))) (size!33360 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68256)

(declare-datatypes ((List!23023 0))(
  ( (Nil!23020) (Cons!23019 (h!24228 (_ BitVec 64)) (t!32357 List!23023)) )
))
(declare-fun arrayNoDuplicates!0 (array!68256 (_ BitVec 32) List!23023) Bool)

(assert (=> b!1068988 (= res!713394 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23020))))

(declare-fun b!1068989 () Bool)

(declare-fun e!610049 () Bool)

(assert (=> b!1068989 (= e!610054 (not e!610049))))

(declare-fun res!713390 () Bool)

(assert (=> b!1068989 (=> res!713390 e!610049)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068989 (= res!713390 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39339 0))(
  ( (V!39340 (val!12877 Int)) )
))
(declare-datatypes ((tuple2!16436 0))(
  ( (tuple2!16437 (_1!8228 (_ BitVec 64)) (_2!8228 V!39339)) )
))
(declare-datatypes ((List!23024 0))(
  ( (Nil!23021) (Cons!23020 (h!24229 tuple2!16436) (t!32358 List!23024)) )
))
(declare-datatypes ((ListLongMap!14417 0))(
  ( (ListLongMap!14418 (toList!7224 List!23024)) )
))
(declare-fun lt!472334 () ListLongMap!14417)

(declare-fun lt!472335 () ListLongMap!14417)

(assert (=> b!1068989 (= lt!472334 lt!472335)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39339)

(declare-datatypes ((Unit!35112 0))(
  ( (Unit!35113) )
))
(declare-fun lt!472338 () Unit!35112)

(declare-datatypes ((ValueCell!12123 0))(
  ( (ValueCellFull!12123 (v!15493 V!39339)) (EmptyCell!12123) )
))
(declare-datatypes ((array!68258 0))(
  ( (array!68259 (arr!32824 (Array (_ BitVec 32) ValueCell!12123)) (size!33361 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68258)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39339)

(declare-fun minValue!907 () V!39339)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!801 (array!68256 array!68258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39339 V!39339 V!39339 V!39339 (_ BitVec 32) Int) Unit!35112)

(assert (=> b!1068989 (= lt!472338 (lemmaNoChangeToArrayThenSameMapNoExtras!801 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3762 (array!68256 array!68258 (_ BitVec 32) (_ BitVec 32) V!39339 V!39339 (_ BitVec 32) Int) ListLongMap!14417)

(assert (=> b!1068989 (= lt!472335 (getCurrentListMapNoExtraKeys!3762 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068989 (= lt!472334 (getCurrentListMapNoExtraKeys!3762 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068991 () Bool)

(declare-fun e!610052 () Bool)

(assert (=> b!1068991 (= e!610052 true)))

(declare-fun lt!472337 () ListLongMap!14417)

(declare-fun -!658 (ListLongMap!14417 (_ BitVec 64)) ListLongMap!14417)

(assert (=> b!1068991 (= (-!658 lt!472337 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472337)))

(declare-fun lt!472336 () Unit!35112)

(declare-fun removeNotPresentStillSame!67 (ListLongMap!14417 (_ BitVec 64)) Unit!35112)

(assert (=> b!1068991 (= lt!472336 (removeNotPresentStillSame!67 lt!472337 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068992 () Bool)

(declare-fun e!610051 () Bool)

(declare-fun e!610050 () Bool)

(declare-fun mapRes!40177 () Bool)

(assert (=> b!1068992 (= e!610051 (and e!610050 mapRes!40177))))

(declare-fun condMapEmpty!40177 () Bool)

(declare-fun mapDefault!40177 () ValueCell!12123)

(assert (=> b!1068992 (= condMapEmpty!40177 (= (arr!32824 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12123)) mapDefault!40177)))))

(declare-fun b!1068993 () Bool)

(assert (=> b!1068993 (= e!610049 e!610052)))

(declare-fun res!713392 () Bool)

(assert (=> b!1068993 (=> res!713392 e!610052)))

(declare-fun contains!6322 (ListLongMap!14417 (_ BitVec 64)) Bool)

(assert (=> b!1068993 (= res!713392 (contains!6322 lt!472337 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4111 (array!68256 array!68258 (_ BitVec 32) (_ BitVec 32) V!39339 V!39339 (_ BitVec 32) Int) ListLongMap!14417)

(assert (=> b!1068993 (= lt!472337 (getCurrentListMap!4111 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068994 () Bool)

(declare-fun tp_is_empty!25653 () Bool)

(assert (=> b!1068994 (= e!610050 tp_is_empty!25653)))

(declare-fun b!1068995 () Bool)

(declare-fun e!610048 () Bool)

(assert (=> b!1068995 (= e!610048 tp_is_empty!25653)))

(declare-fun mapNonEmpty!40177 () Bool)

(declare-fun tp!76980 () Bool)

(assert (=> mapNonEmpty!40177 (= mapRes!40177 (and tp!76980 e!610048))))

(declare-fun mapRest!40177 () (Array (_ BitVec 32) ValueCell!12123))

(declare-fun mapValue!40177 () ValueCell!12123)

(declare-fun mapKey!40177 () (_ BitVec 32))

(assert (=> mapNonEmpty!40177 (= (arr!32824 _values!955) (store mapRest!40177 mapKey!40177 mapValue!40177))))

(declare-fun b!1068996 () Bool)

(declare-fun res!713389 () Bool)

(assert (=> b!1068996 (=> (not res!713389) (not e!610054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68256 (_ BitVec 32)) Bool)

(assert (=> b!1068996 (= res!713389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40177 () Bool)

(assert (=> mapIsEmpty!40177 mapRes!40177))

(declare-fun b!1068990 () Bool)

(declare-fun res!713393 () Bool)

(assert (=> b!1068990 (=> (not res!713393) (not e!610054))))

(assert (=> b!1068990 (= res!713393 (and (= (size!33361 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33360 _keys!1163) (size!33361 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713391 () Bool)

(assert (=> start!94574 (=> (not res!713391) (not e!610054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94574 (= res!713391 (validMask!0 mask!1515))))

(assert (=> start!94574 e!610054))

(assert (=> start!94574 true))

(assert (=> start!94574 tp_is_empty!25653))

(declare-fun array_inv!25246 (array!68258) Bool)

(assert (=> start!94574 (and (array_inv!25246 _values!955) e!610051)))

(assert (=> start!94574 tp!76979))

(declare-fun array_inv!25247 (array!68256) Bool)

(assert (=> start!94574 (array_inv!25247 _keys!1163)))

(assert (= (and start!94574 res!713391) b!1068990))

(assert (= (and b!1068990 res!713393) b!1068996))

(assert (= (and b!1068996 res!713389) b!1068988))

(assert (= (and b!1068988 res!713394) b!1068989))

(assert (= (and b!1068989 (not res!713390)) b!1068993))

(assert (= (and b!1068993 (not res!713392)) b!1068991))

(assert (= (and b!1068992 condMapEmpty!40177) mapIsEmpty!40177))

(assert (= (and b!1068992 (not condMapEmpty!40177)) mapNonEmpty!40177))

(get-info :version)

(assert (= (and mapNonEmpty!40177 ((_ is ValueCellFull!12123) mapValue!40177)) b!1068995))

(assert (= (and b!1068992 ((_ is ValueCellFull!12123) mapDefault!40177)) b!1068994))

(assert (= start!94574 b!1068992))

(declare-fun m!987673 () Bool)

(assert (=> start!94574 m!987673))

(declare-fun m!987675 () Bool)

(assert (=> start!94574 m!987675))

(declare-fun m!987677 () Bool)

(assert (=> start!94574 m!987677))

(declare-fun m!987679 () Bool)

(assert (=> mapNonEmpty!40177 m!987679))

(declare-fun m!987681 () Bool)

(assert (=> b!1068989 m!987681))

(declare-fun m!987683 () Bool)

(assert (=> b!1068989 m!987683))

(declare-fun m!987685 () Bool)

(assert (=> b!1068989 m!987685))

(declare-fun m!987687 () Bool)

(assert (=> b!1068993 m!987687))

(declare-fun m!987689 () Bool)

(assert (=> b!1068993 m!987689))

(declare-fun m!987691 () Bool)

(assert (=> b!1068991 m!987691))

(declare-fun m!987693 () Bool)

(assert (=> b!1068991 m!987693))

(declare-fun m!987695 () Bool)

(assert (=> b!1068988 m!987695))

(declare-fun m!987697 () Bool)

(assert (=> b!1068996 m!987697))

(check-sat (not mapNonEmpty!40177) b_and!34663 (not b!1068988) (not start!94574) (not b_next!21843) tp_is_empty!25653 (not b!1068991) (not b!1068996) (not b!1068993) (not b!1068989))
(check-sat b_and!34663 (not b_next!21843))
