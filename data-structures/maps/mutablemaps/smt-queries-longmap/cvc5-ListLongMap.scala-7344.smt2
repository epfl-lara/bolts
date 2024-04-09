; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93804 () Bool)

(assert start!93804)

(declare-fun b_free!21241 () Bool)

(declare-fun b_next!21241 () Bool)

(assert (=> start!93804 (= b_free!21241 (not b_next!21241))))

(declare-fun tp!75147 () Bool)

(declare-fun b_and!33973 () Bool)

(assert (=> start!93804 (= tp!75147 b_and!33973)))

(declare-fun b!1060542 () Bool)

(declare-fun res!708396 () Bool)

(declare-fun e!603854 () Bool)

(assert (=> b!1060542 (=> (not res!708396) (not e!603854))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38537 0))(
  ( (V!38538 (val!12576 Int)) )
))
(declare-datatypes ((ValueCell!11822 0))(
  ( (ValueCellFull!11822 (v!15187 V!38537)) (EmptyCell!11822) )
))
(declare-datatypes ((array!67098 0))(
  ( (array!67099 (arr!32253 (Array (_ BitVec 32) ValueCell!11822)) (size!32790 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67098)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67100 0))(
  ( (array!67101 (arr!32254 (Array (_ BitVec 32) (_ BitVec 64))) (size!32791 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67100)

(assert (=> b!1060542 (= res!708396 (and (= (size!32790 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32791 _keys!1163) (size!32790 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060543 () Bool)

(declare-fun e!603853 () Bool)

(declare-fun e!603856 () Bool)

(declare-fun mapRes!39247 () Bool)

(assert (=> b!1060543 (= e!603853 (and e!603856 mapRes!39247))))

(declare-fun condMapEmpty!39247 () Bool)

(declare-fun mapDefault!39247 () ValueCell!11822)

