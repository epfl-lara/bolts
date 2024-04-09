; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94130 () Bool)

(assert start!94130)

(declare-fun b_free!21509 () Bool)

(declare-fun b_next!21509 () Bool)

(assert (=> start!94130 (= b_free!21509 (not b_next!21509))))

(declare-fun tp!75959 () Bool)

(declare-fun b_and!34269 () Bool)

(assert (=> start!94130 (= tp!75959 b_and!34269)))

(declare-fun res!710492 () Bool)

(declare-fun e!606455 () Bool)

(assert (=> start!94130 (=> (not res!710492) (not e!606455))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94130 (= res!710492 (validMask!0 mask!1515))))

(assert (=> start!94130 e!606455))

(assert (=> start!94130 true))

(declare-fun tp_is_empty!25319 () Bool)

(assert (=> start!94130 tp_is_empty!25319))

(declare-datatypes ((V!38893 0))(
  ( (V!38894 (val!12710 Int)) )
))
(declare-datatypes ((ValueCell!11956 0))(
  ( (ValueCellFull!11956 (v!15323 V!38893)) (EmptyCell!11956) )
))
(declare-datatypes ((array!67606 0))(
  ( (array!67607 (arr!32504 (Array (_ BitVec 32) ValueCell!11956)) (size!33041 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67606)

(declare-fun e!606454 () Bool)

(declare-fun array_inv!25008 (array!67606) Bool)

(assert (=> start!94130 (and (array_inv!25008 _values!955) e!606454)))

(assert (=> start!94130 tp!75959))

(declare-datatypes ((array!67608 0))(
  ( (array!67609 (arr!32505 (Array (_ BitVec 32) (_ BitVec 64))) (size!33042 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67608)

(declare-fun array_inv!25009 (array!67608) Bool)

(assert (=> start!94130 (array_inv!25009 _keys!1163)))

(declare-fun b!1064088 () Bool)

(declare-fun res!710490 () Bool)

(assert (=> b!1064088 (=> (not res!710490) (not e!606455))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064088 (= res!710490 (and (= (size!33041 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33042 _keys!1163) (size!33041 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064089 () Bool)

(declare-fun e!606451 () Bool)

(declare-fun mapRes!39658 () Bool)

(assert (=> b!1064089 (= e!606454 (and e!606451 mapRes!39658))))

(declare-fun condMapEmpty!39658 () Bool)

(declare-fun mapDefault!39658 () ValueCell!11956)

