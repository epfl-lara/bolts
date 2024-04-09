; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42226 () Bool)

(assert start!42226)

(declare-fun b_free!11737 () Bool)

(declare-fun b_next!11737 () Bool)

(assert (=> start!42226 (= b_free!11737 (not b_next!11737))))

(declare-fun tp!41235 () Bool)

(declare-fun b_and!20185 () Bool)

(assert (=> start!42226 (= tp!41235 b_and!20185)))

(declare-fun b!471009 () Bool)

(declare-fun res!281475 () Bool)

(declare-fun e!276031 () Bool)

(assert (=> b!471009 (=> (not res!281475) (not e!276031))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30057 0))(
  ( (array!30058 (arr!14448 (Array (_ BitVec 32) (_ BitVec 64))) (size!14800 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30057)

(declare-datatypes ((V!18659 0))(
  ( (V!18660 (val!6627 Int)) )
))
(declare-datatypes ((ValueCell!6239 0))(
  ( (ValueCellFull!6239 (v!8914 V!18659)) (EmptyCell!6239) )
))
(declare-datatypes ((array!30059 0))(
  ( (array!30060 (arr!14449 (Array (_ BitVec 32) ValueCell!6239)) (size!14801 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30059)

(assert (=> b!471009 (= res!281475 (and (= (size!14801 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14800 _keys!1025) (size!14801 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471010 () Bool)

(declare-fun e!276032 () Bool)

(declare-fun e!276030 () Bool)

(declare-fun mapRes!21451 () Bool)

(assert (=> b!471010 (= e!276032 (and e!276030 mapRes!21451))))

(declare-fun condMapEmpty!21451 () Bool)

(declare-fun mapDefault!21451 () ValueCell!6239)

