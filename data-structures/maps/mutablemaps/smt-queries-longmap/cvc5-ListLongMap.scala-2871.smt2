; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41342 () Bool)

(assert start!41342)

(declare-fun b!461935 () Bool)

(declare-fun e!269495 () Bool)

(declare-fun e!269491 () Bool)

(assert (=> b!461935 (= e!269495 e!269491)))

(declare-fun res!276356 () Bool)

(assert (=> b!461935 (=> res!276356 e!269491)))

(declare-datatypes ((List!8337 0))(
  ( (Nil!8334) (Cons!8333 (h!9189 (_ BitVec 64)) (t!14289 List!8337)) )
))
(declare-fun contains!2518 (List!8337 (_ BitVec 64)) Bool)

(assert (=> b!461935 (= res!276356 (contains!2518 Nil!8334 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!20362 () Bool)

(declare-fun mapRes!20362 () Bool)

(declare-fun tp!39181 () Bool)

(declare-fun e!269490 () Bool)

(assert (=> mapNonEmpty!20362 (= mapRes!20362 (and tp!39181 e!269490))))

(declare-datatypes ((V!17723 0))(
  ( (V!17724 (val!6276 Int)) )
))
(declare-datatypes ((ValueCell!5888 0))(
  ( (ValueCellFull!5888 (v!8558 V!17723)) (EmptyCell!5888) )
))
(declare-datatypes ((array!28693 0))(
  ( (array!28694 (arr!13778 (Array (_ BitVec 32) ValueCell!5888)) (size!14130 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28693)

(declare-fun mapKey!20362 () (_ BitVec 32))

(declare-fun mapValue!20362 () ValueCell!5888)

(declare-fun mapRest!20362 () (Array (_ BitVec 32) ValueCell!5888))

(assert (=> mapNonEmpty!20362 (= (arr!13778 _values!833) (store mapRest!20362 mapKey!20362 mapValue!20362))))

(declare-fun res!276353 () Bool)

(assert (=> start!41342 (=> (not res!276353) (not e!269495))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41342 (= res!276353 (validMask!0 mask!1365))))

(assert (=> start!41342 e!269495))

(assert (=> start!41342 true))

(declare-datatypes ((array!28695 0))(
  ( (array!28696 (arr!13779 (Array (_ BitVec 32) (_ BitVec 64))) (size!14131 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28695)

(declare-fun array_inv!9946 (array!28695) Bool)

(assert (=> start!41342 (array_inv!9946 _keys!1025)))

(declare-fun e!269492 () Bool)

(declare-fun array_inv!9947 (array!28693) Bool)

(assert (=> start!41342 (and (array_inv!9947 _values!833) e!269492)))

(declare-fun b!461936 () Bool)

(declare-fun res!276354 () Bool)

(assert (=> b!461936 (=> (not res!276354) (not e!269495))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461936 (= res!276354 (and (= (size!14130 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14131 _keys!1025) (size!14130 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20362 () Bool)

(assert (=> mapIsEmpty!20362 mapRes!20362))

(declare-fun b!461937 () Bool)

(declare-fun res!276357 () Bool)

(assert (=> b!461937 (=> (not res!276357) (not e!269495))))

(declare-fun noDuplicate!202 (List!8337) Bool)

(assert (=> b!461937 (= res!276357 (noDuplicate!202 Nil!8334))))

(declare-fun b!461938 () Bool)

(declare-fun e!269494 () Bool)

(assert (=> b!461938 (= e!269492 (and e!269494 mapRes!20362))))

(declare-fun condMapEmpty!20362 () Bool)

(declare-fun mapDefault!20362 () ValueCell!5888)

