; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93594 () Bool)

(assert start!93594)

(declare-fun b!1058907 () Bool)

(declare-fun e!602603 () Bool)

(declare-fun tp_is_empty!24907 () Bool)

(assert (=> b!1058907 (= e!602603 tp_is_empty!24907)))

(declare-fun res!707539 () Bool)

(declare-fun e!602605 () Bool)

(assert (=> start!93594 (=> (not res!707539) (not e!602605))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93594 (= res!707539 (validMask!0 mask!1515))))

(assert (=> start!93594 e!602605))

(assert (=> start!93594 true))

(declare-datatypes ((V!38345 0))(
  ( (V!38346 (val!12504 Int)) )
))
(declare-datatypes ((ValueCell!11750 0))(
  ( (ValueCellFull!11750 (v!15114 V!38345)) (EmptyCell!11750) )
))
(declare-datatypes ((array!66820 0))(
  ( (array!66821 (arr!32121 (Array (_ BitVec 32) ValueCell!11750)) (size!32658 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66820)

(declare-fun e!602606 () Bool)

(declare-fun array_inv!24742 (array!66820) Bool)

(assert (=> start!93594 (and (array_inv!24742 _values!955) e!602606)))

(declare-datatypes ((array!66822 0))(
  ( (array!66823 (arr!32122 (Array (_ BitVec 32) (_ BitVec 64))) (size!32659 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66822)

(declare-fun array_inv!24743 (array!66822) Bool)

(assert (=> start!93594 (array_inv!24743 _keys!1163)))

(declare-fun mapNonEmpty!39010 () Bool)

(declare-fun mapRes!39010 () Bool)

(declare-fun tp!74817 () Bool)

(declare-fun e!602604 () Bool)

(assert (=> mapNonEmpty!39010 (= mapRes!39010 (and tp!74817 e!602604))))

(declare-fun mapKey!39010 () (_ BitVec 32))

(declare-fun mapValue!39010 () ValueCell!11750)

(declare-fun mapRest!39010 () (Array (_ BitVec 32) ValueCell!11750))

(assert (=> mapNonEmpty!39010 (= (arr!32121 _values!955) (store mapRest!39010 mapKey!39010 mapValue!39010))))

(declare-fun b!1058908 () Bool)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1058908 (= e!602605 (and (= (size!32658 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32659 _keys!1163) (size!32658 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (size!32659 _keys!1163) (bvadd #b00000000000000000000000000000001 mask!1515)) (bvsgt #b00000000000000000000000000000000 (size!32659 _keys!1163))))))

(declare-fun b!1058909 () Bool)

(assert (=> b!1058909 (= e!602606 (and e!602603 mapRes!39010))))

(declare-fun condMapEmpty!39010 () Bool)

(declare-fun mapDefault!39010 () ValueCell!11750)

