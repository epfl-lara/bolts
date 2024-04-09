; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42418 () Bool)

(assert start!42418)

(declare-fun b_free!11885 () Bool)

(declare-fun b_next!11885 () Bool)

(assert (=> start!42418 (= b_free!11885 (not b_next!11885))))

(declare-fun tp!41689 () Bool)

(declare-fun b_and!20359 () Bool)

(assert (=> start!42418 (= tp!41689 b_and!20359)))

(declare-fun b!472997 () Bool)

(declare-fun e!277463 () Bool)

(declare-fun e!277464 () Bool)

(assert (=> b!472997 (= e!277463 (not e!277464))))

(declare-fun res!282601 () Bool)

(assert (=> b!472997 (=> res!282601 e!277464)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472997 (= res!282601 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18855 0))(
  ( (V!18856 (val!6701 Int)) )
))
(declare-datatypes ((tuple2!8820 0))(
  ( (tuple2!8821 (_1!4420 (_ BitVec 64)) (_2!4420 V!18855)) )
))
(declare-datatypes ((List!8935 0))(
  ( (Nil!8932) (Cons!8931 (h!9787 tuple2!8820) (t!14913 List!8935)) )
))
(declare-datatypes ((ListLongMap!7747 0))(
  ( (ListLongMap!7748 (toList!3889 List!8935)) )
))
(declare-fun lt!214859 () ListLongMap!7747)

(declare-fun lt!214855 () ListLongMap!7747)

(assert (=> b!472997 (= lt!214859 lt!214855)))

(declare-fun minValueBefore!38 () V!18855)

(declare-fun zeroValue!794 () V!18855)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30347 0))(
  ( (array!30348 (arr!14590 (Array (_ BitVec 32) (_ BitVec 64))) (size!14942 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30347)

(declare-datatypes ((ValueCell!6313 0))(
  ( (ValueCellFull!6313 (v!8988 V!18855)) (EmptyCell!6313) )
))
(declare-datatypes ((array!30349 0))(
  ( (array!30350 (arr!14591 (Array (_ BitVec 32) ValueCell!6313)) (size!14943 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30349)

(declare-datatypes ((Unit!13899 0))(
  ( (Unit!13900) )
))
(declare-fun lt!214858 () Unit!13899)

(declare-fun minValueAfter!38 () V!18855)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!243 (array!30347 array!30349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18855 V!18855 V!18855 V!18855 (_ BitVec 32) Int) Unit!13899)

(assert (=> b!472997 (= lt!214858 (lemmaNoChangeToArrayThenSameMapNoExtras!243 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2048 (array!30347 array!30349 (_ BitVec 32) (_ BitVec 32) V!18855 V!18855 (_ BitVec 32) Int) ListLongMap!7747)

(assert (=> b!472997 (= lt!214855 (getCurrentListMapNoExtraKeys!2048 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472997 (= lt!214859 (getCurrentListMapNoExtraKeys!2048 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472998 () Bool)

(declare-fun res!282599 () Bool)

(assert (=> b!472998 (=> (not res!282599) (not e!277463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30347 (_ BitVec 32)) Bool)

(assert (=> b!472998 (= res!282599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472999 () Bool)

(declare-fun e!277462 () Bool)

(declare-fun e!277461 () Bool)

(declare-fun mapRes!21682 () Bool)

(assert (=> b!472999 (= e!277462 (and e!277461 mapRes!21682))))

(declare-fun condMapEmpty!21682 () Bool)

(declare-fun mapDefault!21682 () ValueCell!6313)

