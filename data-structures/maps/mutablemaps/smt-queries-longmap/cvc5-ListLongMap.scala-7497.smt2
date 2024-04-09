; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95002 () Bool)

(assert start!95002)

(declare-fun b_free!22159 () Bool)

(declare-fun b_next!22159 () Bool)

(assert (=> start!95002 (= b_free!22159 (not b_next!22159))))

(declare-fun tp!77946 () Bool)

(declare-fun b_and!35039 () Bool)

(assert (=> start!95002 (= tp!77946 b_and!35039)))

(declare-fun b!1073652 () Bool)

(declare-fun res!716134 () Bool)

(declare-fun e!613459 () Bool)

(assert (=> b!1073652 (=> (not res!716134) (not e!613459))))

(declare-datatypes ((array!68862 0))(
  ( (array!68863 (arr!33120 (Array (_ BitVec 32) (_ BitVec 64))) (size!33657 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68862)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68862 (_ BitVec 32)) Bool)

(assert (=> b!1073652 (= res!716134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun e!613456 () Bool)

(declare-datatypes ((V!39761 0))(
  ( (V!39762 (val!13035 Int)) )
))
(declare-datatypes ((ValueCell!12281 0))(
  ( (ValueCellFull!12281 (v!15654 V!39761)) (EmptyCell!12281) )
))
(declare-datatypes ((array!68864 0))(
  ( (array!68865 (arr!33121 (Array (_ BitVec 32) ValueCell!12281)) (size!33658 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68864)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39761)

(declare-fun b!1073653 () Bool)

(declare-fun zeroValueBefore!47 () V!39761)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((tuple2!16666 0))(
  ( (tuple2!16667 (_1!8343 (_ BitVec 64)) (_2!8343 V!39761)) )
))
(declare-datatypes ((List!23244 0))(
  ( (Nil!23241) (Cons!23240 (h!24449 tuple2!16666) (t!32590 List!23244)) )
))
(declare-datatypes ((ListLongMap!14647 0))(
  ( (ListLongMap!14648 (toList!7339 List!23244)) )
))
(declare-fun contains!6342 (ListLongMap!14647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4177 (array!68862 array!68864 (_ BitVec 32) (_ BitVec 32) V!39761 V!39761 (_ BitVec 32) Int) ListLongMap!14647)

(assert (=> b!1073653 (= e!613456 (not (contains!6342 (getCurrentListMap!4177 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1073654 () Bool)

(declare-fun res!716136 () Bool)

(assert (=> b!1073654 (=> (not res!716136) (not e!613459))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1073654 (= res!716136 (and (= (size!33658 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33657 _keys!1163) (size!33658 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073655 () Bool)

(declare-fun e!613458 () Bool)

(declare-fun e!613457 () Bool)

(declare-fun mapRes!40669 () Bool)

(assert (=> b!1073655 (= e!613458 (and e!613457 mapRes!40669))))

(declare-fun condMapEmpty!40669 () Bool)

(declare-fun mapDefault!40669 () ValueCell!12281)

