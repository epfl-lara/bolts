; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94280 () Bool)

(assert start!94280)

(declare-fun b_free!21629 () Bool)

(declare-fun b_next!21629 () Bool)

(assert (=> start!94280 (= b_free!21629 (not b_next!21629))))

(declare-fun tp!76325 () Bool)

(declare-fun b_and!34407 () Bool)

(assert (=> start!94280 (= tp!76325 b_and!34407)))

(declare-fun b!1065751 () Bool)

(declare-fun res!711469 () Bool)

(declare-fun e!607674 () Bool)

(assert (=> b!1065751 (=> (not res!711469) (not e!607674))))

(declare-datatypes ((array!67836 0))(
  ( (array!67837 (arr!32617 (Array (_ BitVec 32) (_ BitVec 64))) (size!33154 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67836)

(declare-datatypes ((List!22872 0))(
  ( (Nil!22869) (Cons!22868 (h!24077 (_ BitVec 64)) (t!32198 List!22872)) )
))
(declare-fun arrayNoDuplicates!0 (array!67836 (_ BitVec 32) List!22872) Bool)

(assert (=> b!1065751 (= res!711469 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22869))))

(declare-fun b!1065752 () Bool)

(declare-fun res!711472 () Bool)

(assert (=> b!1065752 (=> (not res!711472) (not e!607674))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39053 0))(
  ( (V!39054 (val!12770 Int)) )
))
(declare-datatypes ((ValueCell!12016 0))(
  ( (ValueCellFull!12016 (v!15383 V!39053)) (EmptyCell!12016) )
))
(declare-datatypes ((array!67838 0))(
  ( (array!67839 (arr!32618 (Array (_ BitVec 32) ValueCell!12016)) (size!33155 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67838)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065752 (= res!711472 (and (= (size!33155 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33154 _keys!1163) (size!33155 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065753 () Bool)

(declare-fun res!711471 () Bool)

(assert (=> b!1065753 (=> (not res!711471) (not e!607674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67836 (_ BitVec 32)) Bool)

(assert (=> b!1065753 (= res!711471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065754 () Bool)

(declare-fun e!607671 () Bool)

(declare-fun tp_is_empty!25439 () Bool)

(assert (=> b!1065754 (= e!607671 tp_is_empty!25439)))

(declare-fun mapNonEmpty!39844 () Bool)

(declare-fun mapRes!39844 () Bool)

(declare-fun tp!76326 () Bool)

(assert (=> mapNonEmpty!39844 (= mapRes!39844 (and tp!76326 e!607671))))

(declare-fun mapKey!39844 () (_ BitVec 32))

(declare-fun mapRest!39844 () (Array (_ BitVec 32) ValueCell!12016))

(declare-fun mapValue!39844 () ValueCell!12016)

(assert (=> mapNonEmpty!39844 (= (arr!32618 _values!955) (store mapRest!39844 mapKey!39844 mapValue!39844))))

(declare-fun b!1065755 () Bool)

(declare-fun e!607673 () Bool)

(declare-fun e!607672 () Bool)

(assert (=> b!1065755 (= e!607673 (and e!607672 mapRes!39844))))

(declare-fun condMapEmpty!39844 () Bool)

(declare-fun mapDefault!39844 () ValueCell!12016)

