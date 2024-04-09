; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93948 () Bool)

(assert start!93948)

(declare-fun b_free!21371 () Bool)

(declare-fun b_next!21371 () Bool)

(assert (=> start!93948 (= b_free!21371 (not b_next!21371))))

(declare-fun tp!75539 () Bool)

(declare-fun b_and!34111 () Bool)

(assert (=> start!93948 (= tp!75539 b_and!34111)))

(declare-fun mapIsEmpty!39445 () Bool)

(declare-fun mapRes!39445 () Bool)

(assert (=> mapIsEmpty!39445 mapRes!39445))

(declare-fun b!1062035 () Bool)

(declare-fun e!604927 () Bool)

(declare-fun tp_is_empty!25181 () Bool)

(assert (=> b!1062035 (= e!604927 tp_is_empty!25181)))

(declare-fun res!709250 () Bool)

(declare-fun e!604928 () Bool)

(assert (=> start!93948 (=> (not res!709250) (not e!604928))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93948 (= res!709250 (validMask!0 mask!1515))))

(assert (=> start!93948 e!604928))

(assert (=> start!93948 true))

(assert (=> start!93948 tp_is_empty!25181))

(declare-datatypes ((V!38709 0))(
  ( (V!38710 (val!12641 Int)) )
))
(declare-datatypes ((ValueCell!11887 0))(
  ( (ValueCellFull!11887 (v!15252 V!38709)) (EmptyCell!11887) )
))
(declare-datatypes ((array!67342 0))(
  ( (array!67343 (arr!32374 (Array (_ BitVec 32) ValueCell!11887)) (size!32911 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67342)

(declare-fun e!604930 () Bool)

(declare-fun array_inv!24918 (array!67342) Bool)

(assert (=> start!93948 (and (array_inv!24918 _values!955) e!604930)))

(assert (=> start!93948 tp!75539))

(declare-datatypes ((array!67344 0))(
  ( (array!67345 (arr!32375 (Array (_ BitVec 32) (_ BitVec 64))) (size!32912 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67344)

(declare-fun array_inv!24919 (array!67344) Bool)

(assert (=> start!93948 (array_inv!24919 _keys!1163)))

(declare-fun b!1062036 () Bool)

(declare-fun e!604929 () Bool)

(declare-fun e!604931 () Bool)

(assert (=> b!1062036 (= e!604929 e!604931)))

(declare-fun res!709253 () Bool)

(assert (=> b!1062036 (=> res!709253 e!604931)))

(declare-datatypes ((tuple2!16076 0))(
  ( (tuple2!16077 (_1!8048 (_ BitVec 64)) (_2!8048 V!38709)) )
))
(declare-datatypes ((List!22689 0))(
  ( (Nil!22686) (Cons!22685 (h!23894 tuple2!16076) (t!32007 List!22689)) )
))
(declare-datatypes ((ListLongMap!14057 0))(
  ( (ListLongMap!14058 (toList!7044 List!22689)) )
))
(declare-fun lt!467883 () ListLongMap!14057)

(declare-fun contains!6240 (ListLongMap!14057 (_ BitVec 64)) Bool)

(assert (=> b!1062036 (= res!709253 (contains!6240 lt!467883 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38709)

(declare-fun minValue!907 () V!38709)

(declare-fun defaultEntry!963 () Int)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!3990 (array!67344 array!67342 (_ BitVec 32) (_ BitVec 32) V!38709 V!38709 (_ BitVec 32) Int) ListLongMap!14057)

(assert (=> b!1062036 (= lt!467883 (getCurrentListMap!3990 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062037 () Bool)

(assert (=> b!1062037 (= e!604931 true)))

(declare-fun -!559 (ListLongMap!14057 (_ BitVec 64)) ListLongMap!14057)

(assert (=> b!1062037 (= (-!559 lt!467883 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467883)))

(declare-datatypes ((Unit!34761 0))(
  ( (Unit!34762) )
))
(declare-fun lt!467880 () Unit!34761)

(declare-fun removeNotPresentStillSame!5 (ListLongMap!14057 (_ BitVec 64)) Unit!34761)

(assert (=> b!1062037 (= lt!467880 (removeNotPresentStillSame!5 lt!467883 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062038 () Bool)

(declare-fun res!709252 () Bool)

(assert (=> b!1062038 (=> (not res!709252) (not e!604928))))

(declare-datatypes ((List!22690 0))(
  ( (Nil!22687) (Cons!22686 (h!23895 (_ BitVec 64)) (t!32008 List!22690)) )
))
(declare-fun arrayNoDuplicates!0 (array!67344 (_ BitVec 32) List!22690) Bool)

(assert (=> b!1062038 (= res!709252 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22687))))

(declare-fun mapNonEmpty!39445 () Bool)

(declare-fun tp!75540 () Bool)

(declare-fun e!604932 () Bool)

(assert (=> mapNonEmpty!39445 (= mapRes!39445 (and tp!75540 e!604932))))

(declare-fun mapKey!39445 () (_ BitVec 32))

(declare-fun mapRest!39445 () (Array (_ BitVec 32) ValueCell!11887))

(declare-fun mapValue!39445 () ValueCell!11887)

(assert (=> mapNonEmpty!39445 (= (arr!32374 _values!955) (store mapRest!39445 mapKey!39445 mapValue!39445))))

(declare-fun b!1062039 () Bool)

(assert (=> b!1062039 (= e!604932 tp_is_empty!25181)))

(declare-fun b!1062040 () Bool)

(declare-fun res!709255 () Bool)

(assert (=> b!1062040 (=> (not res!709255) (not e!604928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67344 (_ BitVec 32)) Bool)

(assert (=> b!1062040 (= res!709255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062041 () Bool)

(assert (=> b!1062041 (= e!604928 (not e!604929))))

(declare-fun res!709254 () Bool)

(assert (=> b!1062041 (=> res!709254 e!604929)))

(assert (=> b!1062041 (= res!709254 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467882 () ListLongMap!14057)

(declare-fun lt!467879 () ListLongMap!14057)

(assert (=> b!1062041 (= lt!467882 lt!467879)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lt!467881 () Unit!34761)

(declare-fun zeroValueAfter!47 () V!38709)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!646 (array!67344 array!67342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38709 V!38709 V!38709 V!38709 (_ BitVec 32) Int) Unit!34761)

(assert (=> b!1062041 (= lt!467881 (lemmaNoChangeToArrayThenSameMapNoExtras!646 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3607 (array!67344 array!67342 (_ BitVec 32) (_ BitVec 32) V!38709 V!38709 (_ BitVec 32) Int) ListLongMap!14057)

(assert (=> b!1062041 (= lt!467879 (getCurrentListMapNoExtraKeys!3607 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062041 (= lt!467882 (getCurrentListMapNoExtraKeys!3607 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062042 () Bool)

(declare-fun res!709251 () Bool)

(assert (=> b!1062042 (=> (not res!709251) (not e!604928))))

(assert (=> b!1062042 (= res!709251 (and (= (size!32911 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32912 _keys!1163) (size!32911 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062043 () Bool)

(assert (=> b!1062043 (= e!604930 (and e!604927 mapRes!39445))))

(declare-fun condMapEmpty!39445 () Bool)

(declare-fun mapDefault!39445 () ValueCell!11887)

