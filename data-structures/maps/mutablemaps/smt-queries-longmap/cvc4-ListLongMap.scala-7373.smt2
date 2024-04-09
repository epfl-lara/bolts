; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94018 () Bool)

(assert start!94018)

(declare-fun b_free!21419 () Bool)

(declare-fun b_next!21419 () Bool)

(assert (=> start!94018 (= b_free!21419 (not b_next!21419))))

(declare-fun tp!75687 () Bool)

(declare-fun b_and!34169 () Bool)

(assert (=> start!94018 (= tp!75687 b_and!34169)))

(declare-fun mapIsEmpty!39520 () Bool)

(declare-fun mapRes!39520 () Bool)

(assert (=> mapIsEmpty!39520 mapRes!39520))

(declare-fun b!1062840 () Bool)

(declare-fun res!709744 () Bool)

(declare-fun e!605531 () Bool)

(assert (=> b!1062840 (=> (not res!709744) (not e!605531))))

(declare-datatypes ((array!67434 0))(
  ( (array!67435 (arr!32419 (Array (_ BitVec 32) (_ BitVec 64))) (size!32956 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67434)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67434 (_ BitVec 32)) Bool)

(assert (=> b!1062840 (= res!709744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39520 () Bool)

(declare-fun tp!75686 () Bool)

(declare-fun e!605532 () Bool)

(assert (=> mapNonEmpty!39520 (= mapRes!39520 (and tp!75686 e!605532))))

(declare-datatypes ((V!38773 0))(
  ( (V!38774 (val!12665 Int)) )
))
(declare-datatypes ((ValueCell!11911 0))(
  ( (ValueCellFull!11911 (v!15277 V!38773)) (EmptyCell!11911) )
))
(declare-fun mapRest!39520 () (Array (_ BitVec 32) ValueCell!11911))

(declare-datatypes ((array!67436 0))(
  ( (array!67437 (arr!32420 (Array (_ BitVec 32) ValueCell!11911)) (size!32957 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67436)

(declare-fun mapKey!39520 () (_ BitVec 32))

(declare-fun mapValue!39520 () ValueCell!11911)

(assert (=> mapNonEmpty!39520 (= (arr!32420 _values!955) (store mapRest!39520 mapKey!39520 mapValue!39520))))

(declare-fun b!1062841 () Bool)

(declare-fun res!709743 () Bool)

(assert (=> b!1062841 (=> (not res!709743) (not e!605531))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062841 (= res!709743 (and (= (size!32957 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32956 _keys!1163) (size!32957 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062842 () Bool)

(declare-fun tp_is_empty!25229 () Bool)

(assert (=> b!1062842 (= e!605532 tp_is_empty!25229)))

(declare-fun b!1062843 () Bool)

(declare-fun e!605536 () Bool)

(assert (=> b!1062843 (= e!605531 (not e!605536))))

(declare-fun res!709748 () Bool)

(assert (=> b!1062843 (=> res!709748 e!605536)))

(assert (=> b!1062843 (= res!709748 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16116 0))(
  ( (tuple2!16117 (_1!8068 (_ BitVec 64)) (_2!8068 V!38773)) )
))
(declare-datatypes ((List!22727 0))(
  ( (Nil!22724) (Cons!22723 (h!23932 tuple2!16116) (t!32047 List!22727)) )
))
(declare-datatypes ((ListLongMap!14097 0))(
  ( (ListLongMap!14098 (toList!7064 List!22727)) )
))
(declare-fun lt!468366 () ListLongMap!14097)

(declare-fun lt!468367 () ListLongMap!14097)

(assert (=> b!1062843 (= lt!468366 lt!468367)))

(declare-fun zeroValueBefore!47 () V!38773)

(declare-datatypes ((Unit!34799 0))(
  ( (Unit!34800) )
))
(declare-fun lt!468365 () Unit!34799)

(declare-fun minValue!907 () V!38773)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38773)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!661 (array!67434 array!67436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38773 V!38773 V!38773 V!38773 (_ BitVec 32) Int) Unit!34799)

(assert (=> b!1062843 (= lt!468365 (lemmaNoChangeToArrayThenSameMapNoExtras!661 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3622 (array!67434 array!67436 (_ BitVec 32) (_ BitVec 32) V!38773 V!38773 (_ BitVec 32) Int) ListLongMap!14097)

(assert (=> b!1062843 (= lt!468367 (getCurrentListMapNoExtraKeys!3622 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062843 (= lt!468366 (getCurrentListMapNoExtraKeys!3622 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062844 () Bool)

(declare-fun e!605530 () Bool)

(assert (=> b!1062844 (= e!605536 e!605530)))

(declare-fun res!709746 () Bool)

(assert (=> b!1062844 (=> res!709746 e!605530)))

(declare-fun lt!468364 () ListLongMap!14097)

(declare-fun contains!6260 (ListLongMap!14097 (_ BitVec 64)) Bool)

(assert (=> b!1062844 (= res!709746 (contains!6260 lt!468364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4009 (array!67434 array!67436 (_ BitVec 32) (_ BitVec 32) V!38773 V!38773 (_ BitVec 32) Int) ListLongMap!14097)

(assert (=> b!1062844 (= lt!468364 (getCurrentListMap!4009 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!709747 () Bool)

(assert (=> start!94018 (=> (not res!709747) (not e!605531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94018 (= res!709747 (validMask!0 mask!1515))))

(assert (=> start!94018 e!605531))

(assert (=> start!94018 true))

(assert (=> start!94018 tp_is_empty!25229))

(declare-fun e!605535 () Bool)

(declare-fun array_inv!24952 (array!67436) Bool)

(assert (=> start!94018 (and (array_inv!24952 _values!955) e!605535)))

(assert (=> start!94018 tp!75687))

(declare-fun array_inv!24953 (array!67434) Bool)

(assert (=> start!94018 (array_inv!24953 _keys!1163)))

(declare-fun b!1062845 () Bool)

(assert (=> b!1062845 (= e!605530 true)))

(declare-fun -!577 (ListLongMap!14097 (_ BitVec 64)) ListLongMap!14097)

(assert (=> b!1062845 (= (-!577 lt!468364 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468364)))

(declare-fun lt!468363 () Unit!34799)

(declare-fun removeNotPresentStillSame!23 (ListLongMap!14097 (_ BitVec 64)) Unit!34799)

(assert (=> b!1062845 (= lt!468363 (removeNotPresentStillSame!23 lt!468364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062846 () Bool)

(declare-fun e!605533 () Bool)

(assert (=> b!1062846 (= e!605533 tp_is_empty!25229)))

(declare-fun b!1062847 () Bool)

(assert (=> b!1062847 (= e!605535 (and e!605533 mapRes!39520))))

(declare-fun condMapEmpty!39520 () Bool)

(declare-fun mapDefault!39520 () ValueCell!11911)

