; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41734 () Bool)

(assert start!41734)

(declare-fun b_free!11365 () Bool)

(declare-fun b_next!11365 () Bool)

(assert (=> start!41734 (= b_free!11365 (not b_next!11365))))

(declare-fun tp!40098 () Bool)

(declare-fun b_and!19739 () Bool)

(assert (=> start!41734 (= tp!40098 b_and!19739)))

(declare-fun mapNonEmpty!20872 () Bool)

(declare-fun mapRes!20872 () Bool)

(declare-fun tp!40099 () Bool)

(declare-fun e!272252 () Bool)

(assert (=> mapNonEmpty!20872 (= mapRes!20872 (and tp!40099 e!272252))))

(declare-datatypes ((V!18163 0))(
  ( (V!18164 (val!6441 Int)) )
))
(declare-datatypes ((ValueCell!6053 0))(
  ( (ValueCellFull!6053 (v!8724 V!18163)) (EmptyCell!6053) )
))
(declare-fun mapValue!20872 () ValueCell!6053)

(declare-fun mapRest!20872 () (Array (_ BitVec 32) ValueCell!6053))

(declare-datatypes ((array!29323 0))(
  ( (array!29324 (arr!14088 (Array (_ BitVec 32) ValueCell!6053)) (size!14440 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29323)

(declare-fun mapKey!20872 () (_ BitVec 32))

(assert (=> mapNonEmpty!20872 (= (arr!14088 _values!833) (store mapRest!20872 mapKey!20872 mapValue!20872))))

(declare-fun b!465719 () Bool)

(declare-fun res!278463 () Bool)

(declare-fun e!272254 () Bool)

(assert (=> b!465719 (=> (not res!278463) (not e!272254))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29325 0))(
  ( (array!29326 (arr!14089 (Array (_ BitVec 32) (_ BitVec 64))) (size!14441 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29325)

(assert (=> b!465719 (= res!278463 (and (= (size!14440 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14441 _keys!1025) (size!14440 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465720 () Bool)

(declare-fun e!272255 () Bool)

(declare-fun tp_is_empty!12793 () Bool)

(assert (=> b!465720 (= e!272255 tp_is_empty!12793)))

(declare-fun res!278466 () Bool)

(assert (=> start!41734 (=> (not res!278466) (not e!272254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41734 (= res!278466 (validMask!0 mask!1365))))

(assert (=> start!41734 e!272254))

(assert (=> start!41734 tp_is_empty!12793))

(assert (=> start!41734 tp!40098))

(assert (=> start!41734 true))

(declare-fun array_inv!10156 (array!29325) Bool)

(assert (=> start!41734 (array_inv!10156 _keys!1025)))

(declare-fun e!272253 () Bool)

(declare-fun array_inv!10157 (array!29323) Bool)

(assert (=> start!41734 (and (array_inv!10157 _values!833) e!272253)))

(declare-fun mapIsEmpty!20872 () Bool)

(assert (=> mapIsEmpty!20872 mapRes!20872))

(declare-fun b!465721 () Bool)

(assert (=> b!465721 (= e!272253 (and e!272255 mapRes!20872))))

(declare-fun condMapEmpty!20872 () Bool)

(declare-fun mapDefault!20872 () ValueCell!6053)

