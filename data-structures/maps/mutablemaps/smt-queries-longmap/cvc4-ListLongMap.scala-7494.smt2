; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94976 () Bool)

(assert start!94976)

(declare-fun b_free!22145 () Bool)

(declare-fun b_next!22145 () Bool)

(assert (=> start!94976 (= b_free!22145 (not b_next!22145))))

(declare-fun tp!77900 () Bool)

(declare-fun b_and!35017 () Bool)

(assert (=> start!94976 (= tp!77900 b_and!35017)))

(declare-fun b!1073418 () Bool)

(declare-fun res!716018 () Bool)

(declare-fun e!613293 () Bool)

(assert (=> b!1073418 (=> (not res!716018) (not e!613293))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((V!39741 0))(
  ( (V!39742 (val!13028 Int)) )
))
(declare-datatypes ((ValueCell!12274 0))(
  ( (ValueCellFull!12274 (v!15647 V!39741)) (EmptyCell!12274) )
))
(declare-datatypes ((array!68836 0))(
  ( (array!68837 (arr!33108 (Array (_ BitVec 32) ValueCell!12274)) (size!33645 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68836)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68838 0))(
  ( (array!68839 (arr!33109 (Array (_ BitVec 32) (_ BitVec 64))) (size!33646 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68838)

(assert (=> b!1073418 (= res!716018 (and (= (size!33645 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33646 _keys!1163) (size!33645 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073419 () Bool)

(declare-fun res!716017 () Bool)

(assert (=> b!1073419 (=> (not res!716017) (not e!613293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68838 (_ BitVec 32)) Bool)

(assert (=> b!1073419 (= res!716017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40645 () Bool)

(declare-fun mapRes!40645 () Bool)

(declare-fun tp!77901 () Bool)

(declare-fun e!613297 () Bool)

(assert (=> mapNonEmpty!40645 (= mapRes!40645 (and tp!77901 e!613297))))

(declare-fun mapRest!40645 () (Array (_ BitVec 32) ValueCell!12274))

(declare-fun mapKey!40645 () (_ BitVec 32))

(declare-fun mapValue!40645 () ValueCell!12274)

(assert (=> mapNonEmpty!40645 (= (arr!33108 _values!955) (store mapRest!40645 mapKey!40645 mapValue!40645))))

(declare-fun b!1073420 () Bool)

(declare-fun e!613295 () Bool)

(declare-fun e!613294 () Bool)

(assert (=> b!1073420 (= e!613295 (and e!613294 mapRes!40645))))

(declare-fun condMapEmpty!40645 () Bool)

(declare-fun mapDefault!40645 () ValueCell!12274)

