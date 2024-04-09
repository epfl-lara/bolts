; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94158 () Bool)

(assert start!94158)

(declare-fun b_free!21523 () Bool)

(declare-fun b_next!21523 () Bool)

(assert (=> start!94158 (= b_free!21523 (not b_next!21523))))

(declare-fun tp!76005 () Bool)

(declare-fun b_and!34291 () Bool)

(assert (=> start!94158 (= tp!76005 b_and!34291)))

(declare-fun res!710607 () Bool)

(declare-fun e!606617 () Bool)

(assert (=> start!94158 (=> (not res!710607) (not e!606617))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94158 (= res!710607 (validMask!0 mask!1515))))

(assert (=> start!94158 e!606617))

(assert (=> start!94158 true))

(declare-fun tp_is_empty!25333 () Bool)

(assert (=> start!94158 tp_is_empty!25333))

(declare-datatypes ((V!38913 0))(
  ( (V!38914 (val!12717 Int)) )
))
(declare-datatypes ((ValueCell!11963 0))(
  ( (ValueCellFull!11963 (v!15330 V!38913)) (EmptyCell!11963) )
))
(declare-datatypes ((array!67632 0))(
  ( (array!67633 (arr!32516 (Array (_ BitVec 32) ValueCell!11963)) (size!33053 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67632)

(declare-fun e!606615 () Bool)

(declare-fun array_inv!25016 (array!67632) Bool)

(assert (=> start!94158 (and (array_inv!25016 _values!955) e!606615)))

(assert (=> start!94158 tp!76005))

(declare-datatypes ((array!67634 0))(
  ( (array!67635 (arr!32517 (Array (_ BitVec 32) (_ BitVec 64))) (size!33054 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67634)

(declare-fun array_inv!25017 (array!67634) Bool)

(assert (=> start!94158 (array_inv!25017 _keys!1163)))

(declare-fun b!1064322 () Bool)

(declare-fun res!710610 () Bool)

(assert (=> b!1064322 (=> (not res!710610) (not e!606617))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064322 (= res!710610 (and (= (size!33053 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33054 _keys!1163) (size!33053 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064323 () Bool)

(declare-fun e!606618 () Bool)

(assert (=> b!1064323 (= e!606618 tp_is_empty!25333)))

(declare-fun mapNonEmpty!39682 () Bool)

(declare-fun mapRes!39682 () Bool)

(declare-fun tp!76004 () Bool)

(declare-fun e!606616 () Bool)

(assert (=> mapNonEmpty!39682 (= mapRes!39682 (and tp!76004 e!606616))))

(declare-fun mapKey!39682 () (_ BitVec 32))

(declare-fun mapValue!39682 () ValueCell!11963)

(declare-fun mapRest!39682 () (Array (_ BitVec 32) ValueCell!11963))

(assert (=> mapNonEmpty!39682 (= (arr!32516 _values!955) (store mapRest!39682 mapKey!39682 mapValue!39682))))

(declare-fun b!1064324 () Bool)

(declare-fun res!710611 () Bool)

(assert (=> b!1064324 (=> (not res!710611) (not e!606617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67634 (_ BitVec 32)) Bool)

(assert (=> b!1064324 (= res!710611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064325 () Bool)

(assert (=> b!1064325 (= e!606615 (and e!606618 mapRes!39682))))

(declare-fun condMapEmpty!39682 () Bool)

(declare-fun mapDefault!39682 () ValueCell!11963)

