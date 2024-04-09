; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93754 () Bool)

(assert start!93754)

(declare-fun b_free!21203 () Bool)

(declare-fun b_next!21203 () Bool)

(assert (=> start!93754 (= b_free!21203 (not b_next!21203))))

(declare-fun tp!75030 () Bool)

(declare-fun b_and!33931 () Bool)

(assert (=> start!93754 (= tp!75030 b_and!33931)))

(declare-fun b!1060070 () Bool)

(declare-fun res!708143 () Bool)

(declare-fun e!603522 () Bool)

(assert (=> b!1060070 (=> (not res!708143) (not e!603522))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38485 0))(
  ( (V!38486 (val!12557 Int)) )
))
(declare-datatypes ((ValueCell!11803 0))(
  ( (ValueCellFull!11803 (v!15168 V!38485)) (EmptyCell!11803) )
))
(declare-datatypes ((array!67028 0))(
  ( (array!67029 (arr!32219 (Array (_ BitVec 32) ValueCell!11803)) (size!32756 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67028)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67030 0))(
  ( (array!67031 (arr!32220 (Array (_ BitVec 32) (_ BitVec 64))) (size!32757 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67030)

(assert (=> b!1060070 (= res!708143 (and (= (size!32756 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32757 _keys!1163) (size!32756 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39187 () Bool)

(declare-fun mapRes!39187 () Bool)

(declare-fun tp!75029 () Bool)

(declare-fun e!603520 () Bool)

(assert (=> mapNonEmpty!39187 (= mapRes!39187 (and tp!75029 e!603520))))

(declare-fun mapRest!39187 () (Array (_ BitVec 32) ValueCell!11803))

(declare-fun mapKey!39187 () (_ BitVec 32))

(declare-fun mapValue!39187 () ValueCell!11803)

(assert (=> mapNonEmpty!39187 (= (arr!32219 _values!955) (store mapRest!39187 mapKey!39187 mapValue!39187))))

(declare-fun b!1060071 () Bool)

(declare-fun e!603524 () Bool)

(declare-fun e!603521 () Bool)

(assert (=> b!1060071 (= e!603524 (and e!603521 mapRes!39187))))

(declare-fun condMapEmpty!39187 () Bool)

(declare-fun mapDefault!39187 () ValueCell!11803)

