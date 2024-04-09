; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94038 () Bool)

(assert start!94038)

(declare-fun b_free!21439 () Bool)

(declare-fun b_next!21439 () Bool)

(assert (=> start!94038 (= b_free!21439 (not b_next!21439))))

(declare-fun tp!75746 () Bool)

(declare-fun b_and!34189 () Bool)

(assert (=> start!94038 (= tp!75746 b_and!34189)))

(declare-fun b!1063110 () Bool)

(declare-fun e!605740 () Bool)

(declare-fun e!605742 () Bool)

(assert (=> b!1063110 (= e!605740 e!605742)))

(declare-fun res!709924 () Bool)

(assert (=> b!1063110 (=> res!709924 e!605742)))

(declare-datatypes ((V!38801 0))(
  ( (V!38802 (val!12675 Int)) )
))
(declare-datatypes ((tuple2!16134 0))(
  ( (tuple2!16135 (_1!8077 (_ BitVec 64)) (_2!8077 V!38801)) )
))
(declare-datatypes ((List!22741 0))(
  ( (Nil!22738) (Cons!22737 (h!23946 tuple2!16134) (t!32061 List!22741)) )
))
(declare-datatypes ((ListLongMap!14115 0))(
  ( (ListLongMap!14116 (toList!7073 List!22741)) )
))
(declare-fun lt!468517 () ListLongMap!14115)

(declare-fun contains!6269 (ListLongMap!14115 (_ BitVec 64)) Bool)

(assert (=> b!1063110 (= res!709924 (contains!6269 lt!468517 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38801)

(declare-datatypes ((ValueCell!11921 0))(
  ( (ValueCellFull!11921 (v!15287 V!38801)) (EmptyCell!11921) )
))
(declare-datatypes ((array!67474 0))(
  ( (array!67475 (arr!32439 (Array (_ BitVec 32) ValueCell!11921)) (size!32976 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67474)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38801)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67476 0))(
  ( (array!67477 (arr!32440 (Array (_ BitVec 32) (_ BitVec 64))) (size!32977 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67476)

(declare-fun getCurrentListMap!4018 (array!67476 array!67474 (_ BitVec 32) (_ BitVec 32) V!38801 V!38801 (_ BitVec 32) Int) ListLongMap!14115)

(assert (=> b!1063110 (= lt!468517 (getCurrentListMap!4018 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063111 () Bool)

(declare-fun e!605745 () Bool)

(assert (=> b!1063111 (= e!605745 (not e!605740))))

(declare-fun res!709923 () Bool)

(assert (=> b!1063111 (=> res!709923 e!605740)))

(assert (=> b!1063111 (= res!709923 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468514 () ListLongMap!14115)

(declare-fun lt!468516 () ListLongMap!14115)

(assert (=> b!1063111 (= lt!468514 lt!468516)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!34811 0))(
  ( (Unit!34812) )
))
(declare-fun lt!468515 () Unit!34811)

(declare-fun zeroValueAfter!47 () V!38801)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!667 (array!67476 array!67474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38801 V!38801 V!38801 V!38801 (_ BitVec 32) Int) Unit!34811)

(assert (=> b!1063111 (= lt!468515 (lemmaNoChangeToArrayThenSameMapNoExtras!667 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3628 (array!67476 array!67474 (_ BitVec 32) (_ BitVec 32) V!38801 V!38801 (_ BitVec 32) Int) ListLongMap!14115)

(assert (=> b!1063111 (= lt!468516 (getCurrentListMapNoExtraKeys!3628 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063111 (= lt!468514 (getCurrentListMapNoExtraKeys!3628 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063112 () Bool)

(declare-fun e!605746 () Bool)

(declare-fun e!605743 () Bool)

(declare-fun mapRes!39550 () Bool)

(assert (=> b!1063112 (= e!605746 (and e!605743 mapRes!39550))))

(declare-fun condMapEmpty!39550 () Bool)

(declare-fun mapDefault!39550 () ValueCell!11921)

