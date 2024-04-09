; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94582 () Bool)

(assert start!94582)

(declare-fun b_free!21851 () Bool)

(declare-fun b_next!21851 () Bool)

(assert (=> start!94582 (= b_free!21851 (not b_next!21851))))

(declare-fun tp!77004 () Bool)

(declare-fun b_and!34671 () Bool)

(assert (=> start!94582 (= tp!77004 b_and!34671)))

(declare-fun b!1069096 () Bool)

(declare-fun res!713464 () Bool)

(declare-fun e!610133 () Bool)

(assert (=> b!1069096 (=> (not res!713464) (not e!610133))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39349 0))(
  ( (V!39350 (val!12881 Int)) )
))
(declare-datatypes ((ValueCell!12127 0))(
  ( (ValueCellFull!12127 (v!15497 V!39349)) (EmptyCell!12127) )
))
(declare-datatypes ((array!68270 0))(
  ( (array!68271 (arr!32830 (Array (_ BitVec 32) ValueCell!12127)) (size!33367 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68270)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68272 0))(
  ( (array!68273 (arr!32831 (Array (_ BitVec 32) (_ BitVec 64))) (size!33368 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68272)

(assert (=> b!1069096 (= res!713464 (and (= (size!33367 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33368 _keys!1163) (size!33367 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069097 () Bool)

(declare-fun e!610132 () Bool)

(assert (=> b!1069097 (= e!610132 true)))

(declare-datatypes ((tuple2!16442 0))(
  ( (tuple2!16443 (_1!8231 (_ BitVec 64)) (_2!8231 V!39349)) )
))
(declare-datatypes ((List!23029 0))(
  ( (Nil!23026) (Cons!23025 (h!24234 tuple2!16442) (t!32363 List!23029)) )
))
(declare-datatypes ((ListLongMap!14423 0))(
  ( (ListLongMap!14424 (toList!7227 List!23029)) )
))
(declare-fun lt!472394 () ListLongMap!14423)

(declare-fun -!661 (ListLongMap!14423 (_ BitVec 64)) ListLongMap!14423)

(assert (=> b!1069097 (= (-!661 lt!472394 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472394)))

(declare-datatypes ((Unit!35118 0))(
  ( (Unit!35119) )
))
(declare-fun lt!472397 () Unit!35118)

(declare-fun removeNotPresentStillSame!70 (ListLongMap!14423 (_ BitVec 64)) Unit!35118)

(assert (=> b!1069097 (= lt!472397 (removeNotPresentStillSame!70 lt!472394 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069098 () Bool)

(declare-fun res!713461 () Bool)

(assert (=> b!1069098 (=> (not res!713461) (not e!610133))))

(declare-datatypes ((List!23030 0))(
  ( (Nil!23027) (Cons!23026 (h!24235 (_ BitVec 64)) (t!32364 List!23030)) )
))
(declare-fun arrayNoDuplicates!0 (array!68272 (_ BitVec 32) List!23030) Bool)

(assert (=> b!1069098 (= res!713461 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23027))))

(declare-fun b!1069099 () Bool)

(declare-fun e!610137 () Bool)

(declare-fun e!610134 () Bool)

(declare-fun mapRes!40189 () Bool)

(assert (=> b!1069099 (= e!610137 (and e!610134 mapRes!40189))))

(declare-fun condMapEmpty!40189 () Bool)

(declare-fun mapDefault!40189 () ValueCell!12127)

