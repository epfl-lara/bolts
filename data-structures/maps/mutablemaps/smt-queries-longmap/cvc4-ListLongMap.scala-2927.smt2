; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41744 () Bool)

(assert start!41744)

(declare-fun b_free!11375 () Bool)

(declare-fun b_next!11375 () Bool)

(assert (=> start!41744 (= b_free!11375 (not b_next!11375))))

(declare-fun tp!40128 () Bool)

(declare-fun b_and!19749 () Bool)

(assert (=> start!41744 (= tp!40128 b_and!19749)))

(declare-fun b!465847 () Bool)

(declare-fun res!278547 () Bool)

(declare-fun e!272341 () Bool)

(assert (=> b!465847 (=> (not res!278547) (not e!272341))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29343 0))(
  ( (array!29344 (arr!14098 (Array (_ BitVec 32) (_ BitVec 64))) (size!14450 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29343)

(declare-datatypes ((V!18175 0))(
  ( (V!18176 (val!6446 Int)) )
))
(declare-datatypes ((ValueCell!6058 0))(
  ( (ValueCellFull!6058 (v!8729 V!18175)) (EmptyCell!6058) )
))
(declare-datatypes ((array!29345 0))(
  ( (array!29346 (arr!14099 (Array (_ BitVec 32) ValueCell!6058)) (size!14451 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29345)

(assert (=> b!465847 (= res!278547 (and (= (size!14451 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14450 _keys!1025) (size!14451 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465848 () Bool)

(declare-fun e!272344 () Bool)

(declare-fun tp_is_empty!12803 () Bool)

(assert (=> b!465848 (= e!272344 tp_is_empty!12803)))

(declare-fun b!465849 () Bool)

(declare-fun e!272346 () Bool)

(assert (=> b!465849 (= e!272346 (bvsle #b00000000000000000000000000000000 (size!14450 _keys!1025)))))

(declare-fun b!465850 () Bool)

(declare-fun res!278550 () Bool)

(assert (=> b!465850 (=> (not res!278550) (not e!272341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29343 (_ BitVec 32)) Bool)

(assert (=> b!465850 (= res!278550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465851 () Bool)

(declare-fun res!278549 () Bool)

(assert (=> b!465851 (=> res!278549 e!272346)))

(declare-fun minValueBefore!38 () V!18175)

(declare-fun zeroValue!794 () V!18175)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18175)

(declare-datatypes ((tuple2!8432 0))(
  ( (tuple2!8433 (_1!4226 (_ BitVec 64)) (_2!4226 V!18175)) )
))
(declare-datatypes ((List!8553 0))(
  ( (Nil!8550) (Cons!8549 (h!9405 tuple2!8432) (t!14511 List!8553)) )
))
(declare-datatypes ((ListLongMap!7359 0))(
  ( (ListLongMap!7360 (toList!3695 List!8553)) )
))
(declare-fun +!1628 (ListLongMap!7359 tuple2!8432) ListLongMap!7359)

(declare-fun getCurrentListMap!2137 (array!29343 array!29345 (_ BitVec 32) (_ BitVec 32) V!18175 V!18175 (_ BitVec 32) Int) ListLongMap!7359)

(assert (=> b!465851 (= res!278549 (not (= (+!1628 (getCurrentListMap!2137 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8433 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2137 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))))

(declare-fun b!465852 () Bool)

(declare-fun e!272345 () Bool)

(declare-fun e!272343 () Bool)

(declare-fun mapRes!20887 () Bool)

(assert (=> b!465852 (= e!272345 (and e!272343 mapRes!20887))))

(declare-fun condMapEmpty!20887 () Bool)

(declare-fun mapDefault!20887 () ValueCell!6058)

