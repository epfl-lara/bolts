; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42372 () Bool)

(assert start!42372)

(declare-fun b_free!11855 () Bool)

(declare-fun b_next!11855 () Bool)

(assert (=> start!42372 (= b_free!11855 (not b_next!11855))))

(declare-fun tp!41596 () Bool)

(declare-fun b_and!20319 () Bool)

(assert (=> start!42372 (= tp!41596 b_and!20319)))

(declare-fun b!472489 () Bool)

(declare-fun res!282316 () Bool)

(declare-fun e!277100 () Bool)

(assert (=> b!472489 (=> (not res!282316) (not e!277100))))

(declare-datatypes ((array!30287 0))(
  ( (array!30288 (arr!14561 (Array (_ BitVec 32) (_ BitVec 64))) (size!14913 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30287)

(declare-datatypes ((List!8912 0))(
  ( (Nil!8909) (Cons!8908 (h!9764 (_ BitVec 64)) (t!14888 List!8912)) )
))
(declare-fun arrayNoDuplicates!0 (array!30287 (_ BitVec 32) List!8912) Bool)

(assert (=> b!472489 (= res!282316 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8909))))

(declare-fun b!472490 () Bool)

(declare-fun e!277095 () Bool)

(assert (=> b!472490 (= e!277095 true)))

(declare-datatypes ((V!18815 0))(
  ( (V!18816 (val!6686 Int)) )
))
(declare-fun minValueBefore!38 () V!18815)

(declare-fun zeroValue!794 () V!18815)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8796 0))(
  ( (tuple2!8797 (_1!4408 (_ BitVec 64)) (_2!4408 V!18815)) )
))
(declare-datatypes ((List!8913 0))(
  ( (Nil!8910) (Cons!8909 (h!9765 tuple2!8796) (t!14889 List!8913)) )
))
(declare-datatypes ((ListLongMap!7723 0))(
  ( (ListLongMap!7724 (toList!3877 List!8913)) )
))
(declare-fun lt!214429 () ListLongMap!7723)

(declare-datatypes ((ValueCell!6298 0))(
  ( (ValueCellFull!6298 (v!8973 V!18815)) (EmptyCell!6298) )
))
(declare-datatypes ((array!30289 0))(
  ( (array!30290 (arr!14562 (Array (_ BitVec 32) ValueCell!6298)) (size!14914 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30289)

(declare-fun getCurrentListMap!2224 (array!30287 array!30289 (_ BitVec 32) (_ BitVec 32) V!18815 V!18815 (_ BitVec 32) Int) ListLongMap!7723)

(assert (=> b!472490 (= lt!214429 (getCurrentListMap!2224 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472491 () Bool)

(declare-fun e!277098 () Bool)

(declare-fun tp_is_empty!13283 () Bool)

(assert (=> b!472491 (= e!277098 tp_is_empty!13283)))

(declare-fun b!472492 () Bool)

(assert (=> b!472492 (= e!277100 (not e!277095))))

(declare-fun res!282317 () Bool)

(assert (=> b!472492 (=> res!282317 e!277095)))

(assert (=> b!472492 (= res!282317 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214432 () ListLongMap!7723)

(declare-fun lt!214430 () ListLongMap!7723)

(assert (=> b!472492 (= lt!214432 lt!214430)))

(declare-datatypes ((Unit!13874 0))(
  ( (Unit!13875) )
))
(declare-fun lt!214431 () Unit!13874)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18815)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!231 (array!30287 array!30289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18815 V!18815 V!18815 V!18815 (_ BitVec 32) Int) Unit!13874)

(assert (=> b!472492 (= lt!214431 (lemmaNoChangeToArrayThenSameMapNoExtras!231 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2036 (array!30287 array!30289 (_ BitVec 32) (_ BitVec 32) V!18815 V!18815 (_ BitVec 32) Int) ListLongMap!7723)

(assert (=> b!472492 (= lt!214430 (getCurrentListMapNoExtraKeys!2036 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472492 (= lt!214432 (getCurrentListMapNoExtraKeys!2036 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472493 () Bool)

(declare-fun res!282314 () Bool)

(assert (=> b!472493 (=> (not res!282314) (not e!277100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30287 (_ BitVec 32)) Bool)

(assert (=> b!472493 (= res!282314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282318 () Bool)

(assert (=> start!42372 (=> (not res!282318) (not e!277100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42372 (= res!282318 (validMask!0 mask!1365))))

(assert (=> start!42372 e!277100))

(assert (=> start!42372 tp_is_empty!13283))

(assert (=> start!42372 tp!41596))

(assert (=> start!42372 true))

(declare-fun array_inv!10502 (array!30287) Bool)

(assert (=> start!42372 (array_inv!10502 _keys!1025)))

(declare-fun e!277099 () Bool)

(declare-fun array_inv!10503 (array!30289) Bool)

(assert (=> start!42372 (and (array_inv!10503 _values!833) e!277099)))

(declare-fun b!472494 () Bool)

(declare-fun res!282315 () Bool)

(assert (=> b!472494 (=> (not res!282315) (not e!277100))))

(assert (=> b!472494 (= res!282315 (and (= (size!14914 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14913 _keys!1025) (size!14914 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21634 () Bool)

(declare-fun mapRes!21634 () Bool)

(assert (=> mapIsEmpty!21634 mapRes!21634))

(declare-fun b!472495 () Bool)

(declare-fun e!277096 () Bool)

(assert (=> b!472495 (= e!277099 (and e!277096 mapRes!21634))))

(declare-fun condMapEmpty!21634 () Bool)

(declare-fun mapDefault!21634 () ValueCell!6298)

