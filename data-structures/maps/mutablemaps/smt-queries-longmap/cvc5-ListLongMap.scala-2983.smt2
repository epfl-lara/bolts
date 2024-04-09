; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42196 () Bool)

(assert start!42196)

(declare-fun b_free!11707 () Bool)

(declare-fun b_next!11707 () Bool)

(assert (=> start!42196 (= b_free!11707 (not b_next!11707))))

(declare-fun tp!41145 () Bool)

(declare-fun b_and!20155 () Bool)

(assert (=> start!42196 (= tp!41145 b_and!20155)))

(declare-fun mapIsEmpty!21406 () Bool)

(declare-fun mapRes!21406 () Bool)

(assert (=> mapIsEmpty!21406 mapRes!21406))

(declare-fun b!470694 () Bool)

(declare-fun res!281293 () Bool)

(declare-fun e!275804 () Bool)

(assert (=> b!470694 (=> (not res!281293) (not e!275804))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29999 0))(
  ( (array!30000 (arr!14419 (Array (_ BitVec 32) (_ BitVec 64))) (size!14771 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29999)

(declare-datatypes ((V!18619 0))(
  ( (V!18620 (val!6612 Int)) )
))
(declare-datatypes ((ValueCell!6224 0))(
  ( (ValueCellFull!6224 (v!8899 V!18619)) (EmptyCell!6224) )
))
(declare-datatypes ((array!30001 0))(
  ( (array!30002 (arr!14420 (Array (_ BitVec 32) ValueCell!6224)) (size!14772 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30001)

(assert (=> b!470694 (= res!281293 (and (= (size!14772 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14771 _keys!1025) (size!14772 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470695 () Bool)

(declare-fun e!275805 () Bool)

(declare-fun tp_is_empty!13135 () Bool)

(assert (=> b!470695 (= e!275805 tp_is_empty!13135)))

(declare-fun b!470696 () Bool)

(declare-fun e!275807 () Bool)

(declare-fun e!275806 () Bool)

(assert (=> b!470696 (= e!275807 (and e!275806 mapRes!21406))))

(declare-fun condMapEmpty!21406 () Bool)

(declare-fun mapDefault!21406 () ValueCell!6224)

