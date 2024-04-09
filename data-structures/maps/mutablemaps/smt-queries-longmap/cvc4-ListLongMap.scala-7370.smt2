; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93978 () Bool)

(assert start!93978)

(declare-fun b_free!21401 () Bool)

(declare-fun b_next!21401 () Bool)

(assert (=> start!93978 (= b_free!21401 (not b_next!21401))))

(declare-fun tp!75630 () Bool)

(declare-fun b_and!34141 () Bool)

(assert (=> start!93978 (= tp!75630 b_and!34141)))

(declare-fun mapNonEmpty!39490 () Bool)

(declare-fun mapRes!39490 () Bool)

(declare-fun tp!75629 () Bool)

(declare-fun e!605246 () Bool)

(assert (=> mapNonEmpty!39490 (= mapRes!39490 (and tp!75629 e!605246))))

(declare-datatypes ((V!38749 0))(
  ( (V!38750 (val!12656 Int)) )
))
(declare-datatypes ((ValueCell!11902 0))(
  ( (ValueCellFull!11902 (v!15267 V!38749)) (EmptyCell!11902) )
))
(declare-fun mapValue!39490 () ValueCell!11902)

(declare-fun mapRest!39490 () (Array (_ BitVec 32) ValueCell!11902))

(declare-datatypes ((array!67396 0))(
  ( (array!67397 (arr!32401 (Array (_ BitVec 32) ValueCell!11902)) (size!32938 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67396)

(declare-fun mapKey!39490 () (_ BitVec 32))

(assert (=> mapNonEmpty!39490 (= (arr!32401 _values!955) (store mapRest!39490 mapKey!39490 mapValue!39490))))

(declare-fun b!1062440 () Bool)

(declare-fun e!605242 () Bool)

(assert (=> b!1062440 (= e!605242 true)))

(declare-datatypes ((tuple2!16098 0))(
  ( (tuple2!16099 (_1!8059 (_ BitVec 64)) (_2!8059 V!38749)) )
))
(declare-datatypes ((List!22710 0))(
  ( (Nil!22707) (Cons!22706 (h!23915 tuple2!16098) (t!32028 List!22710)) )
))
(declare-datatypes ((ListLongMap!14079 0))(
  ( (ListLongMap!14080 (toList!7055 List!22710)) )
))
(declare-fun lt!468108 () ListLongMap!14079)

(declare-fun -!569 (ListLongMap!14079 (_ BitVec 64)) ListLongMap!14079)

(assert (=> b!1062440 (= (-!569 lt!468108 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468108)))

(declare-datatypes ((Unit!34781 0))(
  ( (Unit!34782) )
))
(declare-fun lt!468107 () Unit!34781)

(declare-fun removeNotPresentStillSame!15 (ListLongMap!14079 (_ BitVec 64)) Unit!34781)

(assert (=> b!1062440 (= lt!468107 (removeNotPresentStillSame!15 lt!468108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062441 () Bool)

(declare-fun res!709523 () Bool)

(declare-fun e!605243 () Bool)

(assert (=> b!1062441 (=> (not res!709523) (not e!605243))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67398 0))(
  ( (array!67399 (arr!32402 (Array (_ BitVec 32) (_ BitVec 64))) (size!32939 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67398)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1062441 (= res!709523 (and (= (size!32938 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32939 _keys!1163) (size!32938 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062442 () Bool)

(declare-fun e!605247 () Bool)

(declare-fun e!605241 () Bool)

(assert (=> b!1062442 (= e!605247 (and e!605241 mapRes!39490))))

(declare-fun condMapEmpty!39490 () Bool)

(declare-fun mapDefault!39490 () ValueCell!11902)

