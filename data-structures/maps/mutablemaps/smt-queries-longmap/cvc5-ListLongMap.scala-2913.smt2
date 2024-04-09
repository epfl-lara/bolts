; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41642 () Bool)

(assert start!41642)

(declare-fun b_free!11287 () Bool)

(declare-fun b_next!11287 () Bool)

(assert (=> start!41642 (= b_free!11287 (not b_next!11287))))

(declare-fun tp!39861 () Bool)

(declare-fun b_and!19653 () Bool)

(assert (=> start!41642 (= tp!39861 b_and!19653)))

(declare-fun b!464750 () Bool)

(declare-fun res!277902 () Bool)

(declare-fun e!271549 () Bool)

(assert (=> b!464750 (=> (not res!277902) (not e!271549))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29175 0))(
  ( (array!29176 (arr!14015 (Array (_ BitVec 32) (_ BitVec 64))) (size!14367 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29175)

(declare-datatypes ((V!18059 0))(
  ( (V!18060 (val!6402 Int)) )
))
(declare-datatypes ((ValueCell!6014 0))(
  ( (ValueCellFull!6014 (v!8685 V!18059)) (EmptyCell!6014) )
))
(declare-datatypes ((array!29177 0))(
  ( (array!29178 (arr!14016 (Array (_ BitVec 32) ValueCell!6014)) (size!14368 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29177)

(assert (=> b!464750 (= res!277902 (and (= (size!14368 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14367 _keys!1025) (size!14368 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20752 () Bool)

(declare-fun mapRes!20752 () Bool)

(assert (=> mapIsEmpty!20752 mapRes!20752))

(declare-fun b!464751 () Bool)

(declare-fun e!271548 () Bool)

(declare-fun tp_is_empty!12715 () Bool)

(assert (=> b!464751 (= e!271548 tp_is_empty!12715)))

(declare-fun mapNonEmpty!20752 () Bool)

(declare-fun tp!39862 () Bool)

(declare-fun e!271550 () Bool)

(assert (=> mapNonEmpty!20752 (= mapRes!20752 (and tp!39862 e!271550))))

(declare-fun mapKey!20752 () (_ BitVec 32))

(declare-fun mapRest!20752 () (Array (_ BitVec 32) ValueCell!6014))

(declare-fun mapValue!20752 () ValueCell!6014)

(assert (=> mapNonEmpty!20752 (= (arr!14016 _values!833) (store mapRest!20752 mapKey!20752 mapValue!20752))))

(declare-fun b!464752 () Bool)

(declare-fun res!277901 () Bool)

(assert (=> b!464752 (=> (not res!277901) (not e!271549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29175 (_ BitVec 32)) Bool)

(assert (=> b!464752 (= res!277901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!277899 () Bool)

(assert (=> start!41642 (=> (not res!277899) (not e!271549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41642 (= res!277899 (validMask!0 mask!1365))))

(assert (=> start!41642 e!271549))

(assert (=> start!41642 tp_is_empty!12715))

(assert (=> start!41642 tp!39861))

(assert (=> start!41642 true))

(declare-fun array_inv!10102 (array!29175) Bool)

(assert (=> start!41642 (array_inv!10102 _keys!1025)))

(declare-fun e!271546 () Bool)

(declare-fun array_inv!10103 (array!29177) Bool)

(assert (=> start!41642 (and (array_inv!10103 _values!833) e!271546)))

(declare-fun b!464753 () Bool)

(assert (=> b!464753 (= e!271550 tp_is_empty!12715)))

(declare-fun b!464754 () Bool)

(assert (=> b!464754 (= e!271549 (not true))))

(declare-datatypes ((tuple2!8366 0))(
  ( (tuple2!8367 (_1!4193 (_ BitVec 64)) (_2!4193 V!18059)) )
))
(declare-datatypes ((List!8493 0))(
  ( (Nil!8490) (Cons!8489 (h!9345 tuple2!8366) (t!14449 List!8493)) )
))
(declare-datatypes ((ListLongMap!7293 0))(
  ( (ListLongMap!7294 (toList!3662 List!8493)) )
))
(declare-fun lt!209898 () ListLongMap!7293)

(declare-fun lt!209897 () ListLongMap!7293)

(assert (=> b!464754 (= lt!209898 lt!209897)))

(declare-fun minValueBefore!38 () V!18059)

(declare-fun zeroValue!794 () V!18059)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13445 0))(
  ( (Unit!13446) )
))
(declare-fun lt!209899 () Unit!13445)

(declare-fun minValueAfter!38 () V!18059)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!25 (array!29175 array!29177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18059 V!18059 V!18059 V!18059 (_ BitVec 32) Int) Unit!13445)

(assert (=> b!464754 (= lt!209899 (lemmaNoChangeToArrayThenSameMapNoExtras!25 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1830 (array!29175 array!29177 (_ BitVec 32) (_ BitVec 32) V!18059 V!18059 (_ BitVec 32) Int) ListLongMap!7293)

(assert (=> b!464754 (= lt!209897 (getCurrentListMapNoExtraKeys!1830 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464754 (= lt!209898 (getCurrentListMapNoExtraKeys!1830 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464755 () Bool)

(assert (=> b!464755 (= e!271546 (and e!271548 mapRes!20752))))

(declare-fun condMapEmpty!20752 () Bool)

(declare-fun mapDefault!20752 () ValueCell!6014)

