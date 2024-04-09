; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94096 () Bool)

(assert start!94096)

(declare-fun b_free!21475 () Bool)

(declare-fun b_next!21475 () Bool)

(assert (=> start!94096 (= b_free!21475 (not b_next!21475))))

(declare-fun tp!75857 () Bool)

(declare-fun b_and!34235 () Bool)

(assert (=> start!94096 (= tp!75857 b_and!34235)))

(declare-fun b!1063731 () Bool)

(declare-fun res!710289 () Bool)

(declare-fun e!606200 () Bool)

(assert (=> b!1063731 (=> (not res!710289) (not e!606200))))

(declare-datatypes ((array!67544 0))(
  ( (array!67545 (arr!32473 (Array (_ BitVec 32) (_ BitVec 64))) (size!33010 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67544)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67544 (_ BitVec 32)) Bool)

(assert (=> b!1063731 (= res!710289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39607 () Bool)

(declare-fun mapRes!39607 () Bool)

(assert (=> mapIsEmpty!39607 mapRes!39607))

(declare-fun b!1063732 () Bool)

(declare-fun res!710288 () Bool)

(assert (=> b!1063732 (=> (not res!710288) (not e!606200))))

(declare-datatypes ((V!38849 0))(
  ( (V!38850 (val!12693 Int)) )
))
(declare-datatypes ((ValueCell!11939 0))(
  ( (ValueCellFull!11939 (v!15306 V!38849)) (EmptyCell!11939) )
))
(declare-datatypes ((array!67546 0))(
  ( (array!67547 (arr!32474 (Array (_ BitVec 32) ValueCell!11939)) (size!33011 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67546)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063732 (= res!710288 (and (= (size!33011 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33010 _keys!1163) (size!33011 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063733 () Bool)

(declare-fun e!606197 () Bool)

(declare-fun e!606198 () Bool)

(assert (=> b!1063733 (= e!606197 (and e!606198 mapRes!39607))))

(declare-fun condMapEmpty!39607 () Bool)

(declare-fun mapDefault!39607 () ValueCell!11939)

