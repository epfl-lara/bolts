; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41532 () Bool)

(assert start!41532)

(declare-fun b_free!11191 () Bool)

(declare-fun b_next!11191 () Bool)

(assert (=> start!41532 (= b_free!11191 (not b_next!11191))))

(declare-fun tp!39570 () Bool)

(declare-fun b_and!19549 () Bool)

(assert (=> start!41532 (= tp!39570 b_and!19549)))

(declare-fun mapNonEmpty!20605 () Bool)

(declare-fun mapRes!20605 () Bool)

(declare-fun tp!39571 () Bool)

(declare-fun e!270773 () Bool)

(assert (=> mapNonEmpty!20605 (= mapRes!20605 (and tp!39571 e!270773))))

(declare-datatypes ((V!17931 0))(
  ( (V!17932 (val!6354 Int)) )
))
(declare-datatypes ((ValueCell!5966 0))(
  ( (ValueCellFull!5966 (v!8637 V!17931)) (EmptyCell!5966) )
))
(declare-fun mapValue!20605 () ValueCell!5966)

(declare-datatypes ((array!28995 0))(
  ( (array!28996 (arr!13926 (Array (_ BitVec 32) ValueCell!5966)) (size!14278 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28995)

(declare-fun mapKey!20605 () (_ BitVec 32))

(declare-fun mapRest!20605 () (Array (_ BitVec 32) ValueCell!5966))

(assert (=> mapNonEmpty!20605 (= (arr!13926 _values!833) (store mapRest!20605 mapKey!20605 mapValue!20605))))

(declare-fun res!277292 () Bool)

(declare-fun e!270774 () Bool)

(assert (=> start!41532 (=> (not res!277292) (not e!270774))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41532 (= res!277292 (validMask!0 mask!1365))))

(assert (=> start!41532 e!270774))

(declare-fun tp_is_empty!12619 () Bool)

(assert (=> start!41532 tp_is_empty!12619))

(assert (=> start!41532 tp!39570))

(assert (=> start!41532 true))

(declare-datatypes ((array!28997 0))(
  ( (array!28998 (arr!13927 (Array (_ BitVec 32) (_ BitVec 64))) (size!14279 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28997)

(declare-fun array_inv!10044 (array!28997) Bool)

(assert (=> start!41532 (array_inv!10044 _keys!1025)))

(declare-fun e!270772 () Bool)

(declare-fun array_inv!10045 (array!28995) Bool)

(assert (=> start!41532 (and (array_inv!10045 _values!833) e!270772)))

(declare-fun b!463657 () Bool)

(declare-fun res!277294 () Bool)

(assert (=> b!463657 (=> (not res!277294) (not e!270774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28997 (_ BitVec 32)) Bool)

(assert (=> b!463657 (= res!277294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463658 () Bool)

(declare-fun res!277293 () Bool)

(assert (=> b!463658 (=> (not res!277293) (not e!270774))))

(declare-datatypes ((List!8429 0))(
  ( (Nil!8426) (Cons!8425 (h!9281 (_ BitVec 64)) (t!14383 List!8429)) )
))
(declare-fun arrayNoDuplicates!0 (array!28997 (_ BitVec 32) List!8429) Bool)

(assert (=> b!463658 (= res!277293 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8426))))

(declare-fun b!463659 () Bool)

(assert (=> b!463659 (= e!270773 tp_is_empty!12619)))

(declare-fun b!463660 () Bool)

(assert (=> b!463660 (= e!270774 false)))

(declare-fun zeroValue!794 () V!17931)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17931)

(declare-datatypes ((tuple2!8304 0))(
  ( (tuple2!8305 (_1!4162 (_ BitVec 64)) (_2!4162 V!17931)) )
))
(declare-datatypes ((List!8430 0))(
  ( (Nil!8427) (Cons!8426 (h!9282 tuple2!8304) (t!14384 List!8430)) )
))
(declare-datatypes ((ListLongMap!7231 0))(
  ( (ListLongMap!7232 (toList!3631 List!8430)) )
))
(declare-fun lt!209460 () ListLongMap!7231)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1799 (array!28997 array!28995 (_ BitVec 32) (_ BitVec 32) V!17931 V!17931 (_ BitVec 32) Int) ListLongMap!7231)

(assert (=> b!463660 (= lt!209460 (getCurrentListMapNoExtraKeys!1799 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17931)

(declare-fun lt!209459 () ListLongMap!7231)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463660 (= lt!209459 (getCurrentListMapNoExtraKeys!1799 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463661 () Bool)

(declare-fun e!270775 () Bool)

(assert (=> b!463661 (= e!270775 tp_is_empty!12619)))

(declare-fun mapIsEmpty!20605 () Bool)

(assert (=> mapIsEmpty!20605 mapRes!20605))

(declare-fun b!463662 () Bool)

(declare-fun res!277295 () Bool)

(assert (=> b!463662 (=> (not res!277295) (not e!270774))))

(assert (=> b!463662 (= res!277295 (and (= (size!14278 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14279 _keys!1025) (size!14278 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463663 () Bool)

(assert (=> b!463663 (= e!270772 (and e!270775 mapRes!20605))))

(declare-fun condMapEmpty!20605 () Bool)

(declare-fun mapDefault!20605 () ValueCell!5966)

