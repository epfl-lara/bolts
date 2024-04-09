; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94048 () Bool)

(assert start!94048)

(declare-fun b_free!21449 () Bool)

(declare-fun b_next!21449 () Bool)

(assert (=> start!94048 (= b_free!21449 (not b_next!21449))))

(declare-fun tp!75777 () Bool)

(declare-fun b_and!34199 () Bool)

(assert (=> start!94048 (= tp!75777 b_and!34199)))

(declare-fun b!1063245 () Bool)

(declare-fun res!710014 () Bool)

(declare-fun e!605851 () Bool)

(assert (=> b!1063245 (=> (not res!710014) (not e!605851))))

(declare-datatypes ((array!67492 0))(
  ( (array!67493 (arr!32448 (Array (_ BitVec 32) (_ BitVec 64))) (size!32985 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67492)

(declare-datatypes ((List!22746 0))(
  ( (Nil!22743) (Cons!22742 (h!23951 (_ BitVec 64)) (t!32066 List!22746)) )
))
(declare-fun arrayNoDuplicates!0 (array!67492 (_ BitVec 32) List!22746) Bool)

(assert (=> b!1063245 (= res!710014 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22743))))

(declare-fun b!1063246 () Bool)

(declare-fun res!710017 () Bool)

(assert (=> b!1063246 (=> (not res!710017) (not e!605851))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67492 (_ BitVec 32)) Bool)

(assert (=> b!1063246 (= res!710017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063247 () Bool)

(declare-fun res!710018 () Bool)

(assert (=> b!1063247 (=> (not res!710018) (not e!605851))))

(declare-datatypes ((V!38813 0))(
  ( (V!38814 (val!12680 Int)) )
))
(declare-datatypes ((ValueCell!11926 0))(
  ( (ValueCellFull!11926 (v!15292 V!38813)) (EmptyCell!11926) )
))
(declare-datatypes ((array!67494 0))(
  ( (array!67495 (arr!32449 (Array (_ BitVec 32) ValueCell!11926)) (size!32986 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67494)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063247 (= res!710018 (and (= (size!32986 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32985 _keys!1163) (size!32986 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063248 () Bool)

(declare-fun e!605850 () Bool)

(declare-fun tp_is_empty!25259 () Bool)

(assert (=> b!1063248 (= e!605850 tp_is_empty!25259)))

(declare-fun res!710013 () Bool)

(assert (=> start!94048 (=> (not res!710013) (not e!605851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94048 (= res!710013 (validMask!0 mask!1515))))

(assert (=> start!94048 e!605851))

(assert (=> start!94048 true))

(assert (=> start!94048 tp_is_empty!25259))

(declare-fun e!605848 () Bool)

(declare-fun array_inv!24972 (array!67494) Bool)

(assert (=> start!94048 (and (array_inv!24972 _values!955) e!605848)))

(assert (=> start!94048 tp!75777))

(declare-fun array_inv!24973 (array!67492) Bool)

(assert (=> start!94048 (array_inv!24973 _keys!1163)))

(declare-fun mapNonEmpty!39565 () Bool)

(declare-fun mapRes!39565 () Bool)

(declare-fun tp!75776 () Bool)

(declare-fun e!605847 () Bool)

(assert (=> mapNonEmpty!39565 (= mapRes!39565 (and tp!75776 e!605847))))

(declare-fun mapKey!39565 () (_ BitVec 32))

(declare-fun mapValue!39565 () ValueCell!11926)

(declare-fun mapRest!39565 () (Array (_ BitVec 32) ValueCell!11926))

(assert (=> mapNonEmpty!39565 (= (arr!32449 _values!955) (store mapRest!39565 mapKey!39565 mapValue!39565))))

(declare-fun b!1063249 () Bool)

(declare-fun e!605846 () Bool)

(assert (=> b!1063249 (= e!605851 (not e!605846))))

(declare-fun res!710016 () Bool)

(assert (=> b!1063249 (=> res!710016 e!605846)))

(assert (=> b!1063249 (= res!710016 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16140 0))(
  ( (tuple2!16141 (_1!8080 (_ BitVec 64)) (_2!8080 V!38813)) )
))
(declare-datatypes ((List!22747 0))(
  ( (Nil!22744) (Cons!22743 (h!23952 tuple2!16140) (t!32067 List!22747)) )
))
(declare-datatypes ((ListLongMap!14121 0))(
  ( (ListLongMap!14122 (toList!7076 List!22747)) )
))
(declare-fun lt!468592 () ListLongMap!14121)

(declare-fun lt!468591 () ListLongMap!14121)

(assert (=> b!1063249 (= lt!468592 lt!468591)))

(declare-datatypes ((Unit!34817 0))(
  ( (Unit!34818) )
))
(declare-fun lt!468589 () Unit!34817)

(declare-fun zeroValueBefore!47 () V!38813)

(declare-fun minValue!907 () V!38813)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38813)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!670 (array!67492 array!67494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38813 V!38813 V!38813 V!38813 (_ BitVec 32) Int) Unit!34817)

(assert (=> b!1063249 (= lt!468589 (lemmaNoChangeToArrayThenSameMapNoExtras!670 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3631 (array!67492 array!67494 (_ BitVec 32) (_ BitVec 32) V!38813 V!38813 (_ BitVec 32) Int) ListLongMap!14121)

(assert (=> b!1063249 (= lt!468591 (getCurrentListMapNoExtraKeys!3631 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063249 (= lt!468592 (getCurrentListMapNoExtraKeys!3631 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063250 () Bool)

(declare-fun e!605849 () Bool)

(assert (=> b!1063250 (= e!605849 true)))

(declare-fun lt!468588 () ListLongMap!14121)

(declare-fun -!585 (ListLongMap!14121 (_ BitVec 64)) ListLongMap!14121)

(assert (=> b!1063250 (= (-!585 lt!468588 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468588)))

(declare-fun lt!468590 () Unit!34817)

(declare-fun removeNotPresentStillSame!31 (ListLongMap!14121 (_ BitVec 64)) Unit!34817)

(assert (=> b!1063250 (= lt!468590 (removeNotPresentStillSame!31 lt!468588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063251 () Bool)

(assert (=> b!1063251 (= e!605848 (and e!605850 mapRes!39565))))

(declare-fun condMapEmpty!39565 () Bool)

(declare-fun mapDefault!39565 () ValueCell!11926)

