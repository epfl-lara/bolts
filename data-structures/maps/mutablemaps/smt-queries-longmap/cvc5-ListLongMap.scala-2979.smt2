; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42158 () Bool)

(assert start!42158)

(declare-fun b_free!11683 () Bool)

(declare-fun b_next!11683 () Bool)

(assert (=> start!42158 (= b_free!11683 (not b_next!11683))))

(declare-fun tp!41070 () Bool)

(declare-fun b_and!20123 () Bool)

(assert (=> start!42158 (= tp!41070 b_and!20123)))

(declare-fun mapNonEmpty!21367 () Bool)

(declare-fun mapRes!21367 () Bool)

(declare-fun tp!41071 () Bool)

(declare-fun e!275572 () Bool)

(assert (=> mapNonEmpty!21367 (= mapRes!21367 (and tp!41071 e!275572))))

(declare-datatypes ((V!18587 0))(
  ( (V!18588 (val!6600 Int)) )
))
(declare-datatypes ((ValueCell!6212 0))(
  ( (ValueCellFull!6212 (v!8887 V!18587)) (EmptyCell!6212) )
))
(declare-datatypes ((array!29953 0))(
  ( (array!29954 (arr!14397 (Array (_ BitVec 32) ValueCell!6212)) (size!14749 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29953)

(declare-fun mapValue!21367 () ValueCell!6212)

(declare-fun mapRest!21367 () (Array (_ BitVec 32) ValueCell!6212))

(declare-fun mapKey!21367 () (_ BitVec 32))

(assert (=> mapNonEmpty!21367 (= (arr!14397 _values!833) (store mapRest!21367 mapKey!21367 mapValue!21367))))

(declare-fun res!281118 () Bool)

(declare-fun e!275571 () Bool)

(assert (=> start!42158 (=> (not res!281118) (not e!275571))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42158 (= res!281118 (validMask!0 mask!1365))))

(assert (=> start!42158 e!275571))

(declare-fun tp_is_empty!13111 () Bool)

(assert (=> start!42158 tp_is_empty!13111))

(assert (=> start!42158 tp!41070))

(assert (=> start!42158 true))

(declare-datatypes ((array!29955 0))(
  ( (array!29956 (arr!14398 (Array (_ BitVec 32) (_ BitVec 64))) (size!14750 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29955)

(declare-fun array_inv!10390 (array!29955) Bool)

(assert (=> start!42158 (array_inv!10390 _keys!1025)))

(declare-fun e!275570 () Bool)

(declare-fun array_inv!10391 (array!29953) Bool)

(assert (=> start!42158 (and (array_inv!10391 _values!833) e!275570)))

(declare-fun b!470357 () Bool)

(declare-fun e!275569 () Bool)

(assert (=> b!470357 (= e!275569 tp_is_empty!13111)))

(declare-fun mapIsEmpty!21367 () Bool)

(assert (=> mapIsEmpty!21367 mapRes!21367))

(declare-fun b!470358 () Bool)

(declare-fun res!281119 () Bool)

(assert (=> b!470358 (=> (not res!281119) (not e!275571))))

(declare-datatypes ((List!8784 0))(
  ( (Nil!8781) (Cons!8780 (h!9636 (_ BitVec 64)) (t!14754 List!8784)) )
))
(declare-fun arrayNoDuplicates!0 (array!29955 (_ BitVec 32) List!8784) Bool)

(assert (=> b!470358 (= res!281119 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8781))))

(declare-fun b!470359 () Bool)

(assert (=> b!470359 (= e!275572 tp_is_empty!13111)))

(declare-fun b!470360 () Bool)

(assert (=> b!470360 (= e!275571 (not true))))

(declare-datatypes ((tuple2!8662 0))(
  ( (tuple2!8663 (_1!4341 (_ BitVec 64)) (_2!4341 V!18587)) )
))
(declare-datatypes ((List!8785 0))(
  ( (Nil!8782) (Cons!8781 (h!9637 tuple2!8662) (t!14755 List!8785)) )
))
(declare-datatypes ((ListLongMap!7589 0))(
  ( (ListLongMap!7590 (toList!3810 List!8785)) )
))
(declare-fun lt!213466 () ListLongMap!7589)

(declare-fun lt!213464 () ListLongMap!7589)

(assert (=> b!470360 (= lt!213466 lt!213464)))

(declare-fun minValueBefore!38 () V!18587)

(declare-fun zeroValue!794 () V!18587)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13746 0))(
  ( (Unit!13747) )
))
(declare-fun lt!213465 () Unit!13746)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18587)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!167 (array!29955 array!29953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18587 V!18587 V!18587 V!18587 (_ BitVec 32) Int) Unit!13746)

(assert (=> b!470360 (= lt!213465 (lemmaNoChangeToArrayThenSameMapNoExtras!167 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1972 (array!29955 array!29953 (_ BitVec 32) (_ BitVec 32) V!18587 V!18587 (_ BitVec 32) Int) ListLongMap!7589)

(assert (=> b!470360 (= lt!213464 (getCurrentListMapNoExtraKeys!1972 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470360 (= lt!213466 (getCurrentListMapNoExtraKeys!1972 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470361 () Bool)

(declare-fun res!281120 () Bool)

(assert (=> b!470361 (=> (not res!281120) (not e!275571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29955 (_ BitVec 32)) Bool)

(assert (=> b!470361 (= res!281120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470362 () Bool)

(assert (=> b!470362 (= e!275570 (and e!275569 mapRes!21367))))

(declare-fun condMapEmpty!21367 () Bool)

(declare-fun mapDefault!21367 () ValueCell!6212)

