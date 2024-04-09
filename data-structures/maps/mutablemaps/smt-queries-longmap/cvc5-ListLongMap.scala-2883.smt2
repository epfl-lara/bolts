; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41436 () Bool)

(assert start!41436)

(declare-fun b_free!11107 () Bool)

(declare-fun b_next!11107 () Bool)

(assert (=> start!41436 (= b_free!11107 (not b_next!11107))))

(declare-fun tp!39316 () Bool)

(declare-fun b_and!19461 () Bool)

(assert (=> start!41436 (= tp!39316 b_and!19461)))

(declare-fun b!462702 () Bool)

(declare-fun res!276762 () Bool)

(declare-fun e!270094 () Bool)

(assert (=> b!462702 (=> (not res!276762) (not e!270094))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28831 0))(
  ( (array!28832 (arr!13845 (Array (_ BitVec 32) (_ BitVec 64))) (size!14197 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28831)

(declare-datatypes ((V!17819 0))(
  ( (V!17820 (val!6312 Int)) )
))
(declare-datatypes ((ValueCell!5924 0))(
  ( (ValueCellFull!5924 (v!8595 V!17819)) (EmptyCell!5924) )
))
(declare-datatypes ((array!28833 0))(
  ( (array!28834 (arr!13846 (Array (_ BitVec 32) ValueCell!5924)) (size!14198 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28833)

(assert (=> b!462702 (= res!276762 (and (= (size!14198 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14197 _keys!1025) (size!14198 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462703 () Bool)

(declare-fun e!270096 () Bool)

(declare-fun e!270097 () Bool)

(declare-fun mapRes!20476 () Bool)

(assert (=> b!462703 (= e!270096 (and e!270097 mapRes!20476))))

(declare-fun condMapEmpty!20476 () Bool)

(declare-fun mapDefault!20476 () ValueCell!5924)

