; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94142 () Bool)

(assert start!94142)

(declare-fun b_free!21521 () Bool)

(declare-fun b_next!21521 () Bool)

(assert (=> start!94142 (= b_free!21521 (not b_next!21521))))

(declare-fun tp!75996 () Bool)

(declare-fun b_and!34281 () Bool)

(assert (=> start!94142 (= tp!75996 b_and!34281)))

(declare-fun mapIsEmpty!39676 () Bool)

(declare-fun mapRes!39676 () Bool)

(assert (=> mapIsEmpty!39676 mapRes!39676))

(declare-fun b!1064214 () Bool)

(declare-fun e!606542 () Bool)

(declare-fun tp_is_empty!25331 () Bool)

(assert (=> b!1064214 (= e!606542 tp_is_empty!25331)))

(declare-fun b!1064215 () Bool)

(declare-fun res!710562 () Bool)

(declare-fun e!606541 () Bool)

(assert (=> b!1064215 (=> (not res!710562) (not e!606541))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38909 0))(
  ( (V!38910 (val!12716 Int)) )
))
(declare-datatypes ((ValueCell!11962 0))(
  ( (ValueCellFull!11962 (v!15329 V!38909)) (EmptyCell!11962) )
))
(declare-datatypes ((array!67626 0))(
  ( (array!67627 (arr!32514 (Array (_ BitVec 32) ValueCell!11962)) (size!33051 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67626)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67628 0))(
  ( (array!67629 (arr!32515 (Array (_ BitVec 32) (_ BitVec 64))) (size!33052 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67628)

(assert (=> b!1064215 (= res!710562 (and (= (size!33051 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33052 _keys!1163) (size!33051 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064216 () Bool)

(declare-fun e!606544 () Bool)

(declare-fun e!606545 () Bool)

(assert (=> b!1064216 (= e!606544 (and e!606545 mapRes!39676))))

(declare-fun condMapEmpty!39676 () Bool)

(declare-fun mapDefault!39676 () ValueCell!11962)

