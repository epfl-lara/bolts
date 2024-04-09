; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94102 () Bool)

(assert start!94102)

(declare-fun b_free!21481 () Bool)

(declare-fun b_next!21481 () Bool)

(assert (=> start!94102 (= b_free!21481 (not b_next!21481))))

(declare-fun tp!75875 () Bool)

(declare-fun b_and!34241 () Bool)

(assert (=> start!94102 (= tp!75875 b_and!34241)))

(declare-fun mapIsEmpty!39616 () Bool)

(declare-fun mapRes!39616 () Bool)

(assert (=> mapIsEmpty!39616 mapRes!39616))

(declare-fun b!1063794 () Bool)

(declare-fun e!606244 () Bool)

(declare-fun tp_is_empty!25291 () Bool)

(assert (=> b!1063794 (= e!606244 tp_is_empty!25291)))

(declare-fun b!1063795 () Bool)

(declare-fun res!710325 () Bool)

(declare-fun e!606241 () Bool)

(assert (=> b!1063795 (=> (not res!710325) (not e!606241))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38857 0))(
  ( (V!38858 (val!12696 Int)) )
))
(declare-datatypes ((ValueCell!11942 0))(
  ( (ValueCellFull!11942 (v!15309 V!38857)) (EmptyCell!11942) )
))
(declare-datatypes ((array!67556 0))(
  ( (array!67557 (arr!32479 (Array (_ BitVec 32) ValueCell!11942)) (size!33016 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67556)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67558 0))(
  ( (array!67559 (arr!32480 (Array (_ BitVec 32) (_ BitVec 64))) (size!33017 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67558)

(assert (=> b!1063795 (= res!710325 (and (= (size!33016 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33017 _keys!1163) (size!33016 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063796 () Bool)

(declare-fun res!710323 () Bool)

(assert (=> b!1063796 (=> (not res!710323) (not e!606241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67558 (_ BitVec 32)) Bool)

(assert (=> b!1063796 (= res!710323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063797 () Bool)

(declare-fun e!606243 () Bool)

(declare-fun e!606242 () Bool)

(assert (=> b!1063797 (= e!606243 (and e!606242 mapRes!39616))))

(declare-fun condMapEmpty!39616 () Bool)

(declare-fun mapDefault!39616 () ValueCell!11942)

