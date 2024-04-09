; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41382 () Bool)

(assert start!41382)

(declare-fun b!462242 () Bool)

(declare-fun e!269738 () Bool)

(declare-fun tp_is_empty!12491 () Bool)

(assert (=> b!462242 (= e!269738 tp_is_empty!12491)))

(declare-fun b!462243 () Bool)

(declare-fun res!276521 () Bool)

(declare-fun e!269740 () Bool)

(assert (=> b!462243 (=> (not res!276521) (not e!269740))))

(declare-datatypes ((array!28749 0))(
  ( (array!28750 (arr!13805 (Array (_ BitVec 32) (_ BitVec 64))) (size!14157 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28749)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28749 (_ BitVec 32)) Bool)

(assert (=> b!462243 (= res!276521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!276519 () Bool)

(assert (=> start!41382 (=> (not res!276519) (not e!269740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41382 (= res!276519 (validMask!0 mask!1365))))

(assert (=> start!41382 e!269740))

(assert (=> start!41382 true))

(declare-fun array_inv!9964 (array!28749) Bool)

(assert (=> start!41382 (array_inv!9964 _keys!1025)))

(declare-datatypes ((V!17759 0))(
  ( (V!17760 (val!6290 Int)) )
))
(declare-datatypes ((ValueCell!5902 0))(
  ( (ValueCellFull!5902 (v!8573 V!17759)) (EmptyCell!5902) )
))
(declare-datatypes ((array!28751 0))(
  ( (array!28752 (arr!13806 (Array (_ BitVec 32) ValueCell!5902)) (size!14158 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28751)

(declare-fun e!269737 () Bool)

(declare-fun array_inv!9965 (array!28751) Bool)

(assert (=> start!41382 (and (array_inv!9965 _values!833) e!269737)))

(declare-fun b!462244 () Bool)

(declare-fun e!269739 () Bool)

(assert (=> b!462244 (= e!269739 tp_is_empty!12491)))

(declare-fun mapIsEmpty!20407 () Bool)

(declare-fun mapRes!20407 () Bool)

(assert (=> mapIsEmpty!20407 mapRes!20407))

(declare-fun b!462245 () Bool)

(declare-fun res!276520 () Bool)

(assert (=> b!462245 (=> (not res!276520) (not e!269740))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462245 (= res!276520 (and (= (size!14158 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14157 _keys!1025) (size!14158 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462246 () Bool)

(assert (=> b!462246 (= e!269737 (and e!269739 mapRes!20407))))

(declare-fun condMapEmpty!20407 () Bool)

(declare-fun mapDefault!20407 () ValueCell!5902)

