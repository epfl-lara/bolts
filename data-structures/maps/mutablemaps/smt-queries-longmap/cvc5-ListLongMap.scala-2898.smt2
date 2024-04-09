; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41538 () Bool)

(assert start!41538)

(declare-fun b_free!11197 () Bool)

(declare-fun b_next!11197 () Bool)

(assert (=> start!41538 (= b_free!11197 (not b_next!11197))))

(declare-fun tp!39588 () Bool)

(declare-fun b_and!19555 () Bool)

(assert (=> start!41538 (= tp!39588 b_and!19555)))

(declare-fun b!463720 () Bool)

(declare-fun res!277330 () Bool)

(declare-fun e!270819 () Bool)

(assert (=> b!463720 (=> (not res!277330) (not e!270819))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29007 0))(
  ( (array!29008 (arr!13932 (Array (_ BitVec 32) (_ BitVec 64))) (size!14284 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29007)

(declare-datatypes ((V!17939 0))(
  ( (V!17940 (val!6357 Int)) )
))
(declare-datatypes ((ValueCell!5969 0))(
  ( (ValueCellFull!5969 (v!8640 V!17939)) (EmptyCell!5969) )
))
(declare-datatypes ((array!29009 0))(
  ( (array!29010 (arr!13933 (Array (_ BitVec 32) ValueCell!5969)) (size!14285 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29009)

(assert (=> b!463720 (= res!277330 (and (= (size!14285 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14284 _keys!1025) (size!14285 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463721 () Bool)

(declare-fun e!270816 () Bool)

(declare-fun e!270818 () Bool)

(declare-fun mapRes!20614 () Bool)

(assert (=> b!463721 (= e!270816 (and e!270818 mapRes!20614))))

(declare-fun condMapEmpty!20614 () Bool)

(declare-fun mapDefault!20614 () ValueCell!5969)

