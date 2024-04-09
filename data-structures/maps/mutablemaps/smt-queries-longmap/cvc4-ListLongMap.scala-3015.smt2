; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42436 () Bool)

(assert start!42436)

(declare-fun b_free!11903 () Bool)

(declare-fun b_next!11903 () Bool)

(assert (=> start!42436 (= b_free!11903 (not b_next!11903))))

(declare-fun tp!41742 () Bool)

(declare-fun b_and!20377 () Bool)

(assert (=> start!42436 (= tp!41742 b_and!20377)))

(declare-fun b!473213 () Bool)

(declare-fun e!277622 () Bool)

(declare-fun tp_is_empty!13331 () Bool)

(assert (=> b!473213 (= e!277622 tp_is_empty!13331)))

(declare-fun b!473214 () Bool)

(declare-fun res!282733 () Bool)

(declare-fun e!277625 () Bool)

(assert (=> b!473214 (=> (not res!282733) (not e!277625))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30383 0))(
  ( (array!30384 (arr!14608 (Array (_ BitVec 32) (_ BitVec 64))) (size!14960 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30383)

(declare-datatypes ((V!18879 0))(
  ( (V!18880 (val!6710 Int)) )
))
(declare-datatypes ((ValueCell!6322 0))(
  ( (ValueCellFull!6322 (v!8997 V!18879)) (EmptyCell!6322) )
))
(declare-datatypes ((array!30385 0))(
  ( (array!30386 (arr!14609 (Array (_ BitVec 32) ValueCell!6322)) (size!14961 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30385)

(assert (=> b!473214 (= res!282733 (and (= (size!14961 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14960 _keys!1025) (size!14961 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473216 () Bool)

(declare-fun e!277623 () Bool)

(declare-fun mapRes!21709 () Bool)

(assert (=> b!473216 (= e!277623 (and e!277622 mapRes!21709))))

(declare-fun condMapEmpty!21709 () Bool)

(declare-fun mapDefault!21709 () ValueCell!6322)

