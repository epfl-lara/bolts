; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94964 () Bool)

(assert start!94964)

(declare-fun b_free!22133 () Bool)

(declare-fun b_next!22133 () Bool)

(assert (=> start!94964 (= b_free!22133 (not b_next!22133))))

(declare-fun tp!77865 () Bool)

(declare-fun b_and!35005 () Bool)

(assert (=> start!94964 (= tp!77865 b_and!35005)))

(declare-fun b!1073292 () Bool)

(declare-fun e!613203 () Bool)

(declare-fun tp_is_empty!25943 () Bool)

(assert (=> b!1073292 (= e!613203 tp_is_empty!25943)))

(declare-fun b!1073293 () Bool)

(declare-fun res!715945 () Bool)

(declare-fun e!613204 () Bool)

(assert (=> b!1073293 (=> (not res!715945) (not e!613204))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39725 0))(
  ( (V!39726 (val!13022 Int)) )
))
(declare-datatypes ((ValueCell!12268 0))(
  ( (ValueCellFull!12268 (v!15641 V!39725)) (EmptyCell!12268) )
))
(declare-datatypes ((array!68812 0))(
  ( (array!68813 (arr!33096 (Array (_ BitVec 32) ValueCell!12268)) (size!33633 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68812)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68814 0))(
  ( (array!68815 (arr!33097 (Array (_ BitVec 32) (_ BitVec 64))) (size!33634 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68814)

(assert (=> b!1073293 (= res!715945 (and (= (size!33633 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33634 _keys!1163) (size!33633 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073294 () Bool)

(declare-fun res!715947 () Bool)

(assert (=> b!1073294 (=> (not res!715947) (not e!613204))))

(declare-datatypes ((List!23230 0))(
  ( (Nil!23227) (Cons!23226 (h!24435 (_ BitVec 64)) (t!32574 List!23230)) )
))
(declare-fun arrayNoDuplicates!0 (array!68814 (_ BitVec 32) List!23230) Bool)

(assert (=> b!1073294 (= res!715947 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23227))))

(declare-fun b!1073295 () Bool)

(declare-fun res!715946 () Bool)

(assert (=> b!1073295 (=> (not res!715946) (not e!613204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68814 (_ BitVec 32)) Bool)

(assert (=> b!1073295 (= res!715946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073296 () Bool)

(declare-fun e!613205 () Bool)

(declare-fun mapRes!40627 () Bool)

(assert (=> b!1073296 (= e!613205 (and e!613203 mapRes!40627))))

(declare-fun condMapEmpty!40627 () Bool)

(declare-fun mapDefault!40627 () ValueCell!12268)

