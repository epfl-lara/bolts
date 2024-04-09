; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42342 () Bool)

(assert start!42342)

(declare-fun b_free!11825 () Bool)

(declare-fun b_next!11825 () Bool)

(assert (=> start!42342 (= b_free!11825 (not b_next!11825))))

(declare-fun tp!41506 () Bool)

(declare-fun b_and!20289 () Bool)

(assert (=> start!42342 (= tp!41506 b_and!20289)))

(declare-fun b!472129 () Bool)

(declare-fun res!282090 () Bool)

(declare-fun e!276829 () Bool)

(assert (=> b!472129 (=> (not res!282090) (not e!276829))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30231 0))(
  ( (array!30232 (arr!14533 (Array (_ BitVec 32) (_ BitVec 64))) (size!14885 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30231)

(declare-datatypes ((V!18775 0))(
  ( (V!18776 (val!6671 Int)) )
))
(declare-datatypes ((ValueCell!6283 0))(
  ( (ValueCellFull!6283 (v!8958 V!18775)) (EmptyCell!6283) )
))
(declare-datatypes ((array!30233 0))(
  ( (array!30234 (arr!14534 (Array (_ BitVec 32) ValueCell!6283)) (size!14886 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30233)

(assert (=> b!472129 (= res!282090 (and (= (size!14886 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14885 _keys!1025) (size!14886 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472130 () Bool)

(declare-fun res!282093 () Bool)

(assert (=> b!472130 (=> (not res!282093) (not e!276829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30231 (_ BitVec 32)) Bool)

(assert (=> b!472130 (= res!282093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472131 () Bool)

(declare-fun res!282091 () Bool)

(assert (=> b!472131 (=> (not res!282091) (not e!276829))))

(declare-datatypes ((List!8889 0))(
  ( (Nil!8886) (Cons!8885 (h!9741 (_ BitVec 64)) (t!14865 List!8889)) )
))
(declare-fun arrayNoDuplicates!0 (array!30231 (_ BitVec 32) List!8889) Bool)

(assert (=> b!472131 (= res!282091 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8886))))

(declare-fun mapNonEmpty!21589 () Bool)

(declare-fun mapRes!21589 () Bool)

(declare-fun tp!41505 () Bool)

(declare-fun e!276830 () Bool)

(assert (=> mapNonEmpty!21589 (= mapRes!21589 (and tp!41505 e!276830))))

(declare-fun mapValue!21589 () ValueCell!6283)

(declare-fun mapRest!21589 () (Array (_ BitVec 32) ValueCell!6283))

(declare-fun mapKey!21589 () (_ BitVec 32))

(assert (=> mapNonEmpty!21589 (= (arr!14534 _values!833) (store mapRest!21589 mapKey!21589 mapValue!21589))))

(declare-fun b!472132 () Bool)

(declare-fun e!276827 () Bool)

(declare-fun e!276828 () Bool)

(assert (=> b!472132 (= e!276827 (and e!276828 mapRes!21589))))

(declare-fun condMapEmpty!21589 () Bool)

(declare-fun mapDefault!21589 () ValueCell!6283)

