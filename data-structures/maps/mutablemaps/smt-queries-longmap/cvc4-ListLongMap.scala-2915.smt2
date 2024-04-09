; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41658 () Bool)

(assert start!41658)

(declare-fun b_free!11303 () Bool)

(declare-fun b_next!11303 () Bool)

(assert (=> start!41658 (= b_free!11303 (not b_next!11303))))

(declare-fun tp!39909 () Bool)

(declare-fun b_and!19669 () Bool)

(assert (=> start!41658 (= tp!39909 b_and!19669)))

(declare-fun mapIsEmpty!20776 () Bool)

(declare-fun mapRes!20776 () Bool)

(assert (=> mapIsEmpty!20776 mapRes!20776))

(declare-fun b!464918 () Bool)

(declare-fun e!271669 () Bool)

(assert (=> b!464918 (= e!271669 (not true))))

(declare-datatypes ((V!18079 0))(
  ( (V!18080 (val!6410 Int)) )
))
(declare-datatypes ((tuple2!8378 0))(
  ( (tuple2!8379 (_1!4199 (_ BitVec 64)) (_2!4199 V!18079)) )
))
(declare-datatypes ((List!8503 0))(
  ( (Nil!8500) (Cons!8499 (h!9355 tuple2!8378) (t!14459 List!8503)) )
))
(declare-datatypes ((ListLongMap!7305 0))(
  ( (ListLongMap!7306 (toList!3668 List!8503)) )
))
(declare-fun lt!209969 () ListLongMap!7305)

(declare-fun lt!209971 () ListLongMap!7305)

(assert (=> b!464918 (= lt!209969 lt!209971)))

(declare-fun minValueBefore!38 () V!18079)

(declare-fun zeroValue!794 () V!18079)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13457 0))(
  ( (Unit!13458) )
))
(declare-fun lt!209970 () Unit!13457)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29203 0))(
  ( (array!29204 (arr!14029 (Array (_ BitVec 32) (_ BitVec 64))) (size!14381 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29203)

(declare-datatypes ((ValueCell!6022 0))(
  ( (ValueCellFull!6022 (v!8693 V!18079)) (EmptyCell!6022) )
))
(declare-datatypes ((array!29205 0))(
  ( (array!29206 (arr!14030 (Array (_ BitVec 32) ValueCell!6022)) (size!14382 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29205)

(declare-fun minValueAfter!38 () V!18079)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!31 (array!29203 array!29205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18079 V!18079 V!18079 V!18079 (_ BitVec 32) Int) Unit!13457)

(assert (=> b!464918 (= lt!209970 (lemmaNoChangeToArrayThenSameMapNoExtras!31 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1836 (array!29203 array!29205 (_ BitVec 32) (_ BitVec 32) V!18079 V!18079 (_ BitVec 32) Int) ListLongMap!7305)

(assert (=> b!464918 (= lt!209971 (getCurrentListMapNoExtraKeys!1836 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464918 (= lt!209969 (getCurrentListMapNoExtraKeys!1836 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464919 () Bool)

(declare-fun e!271670 () Bool)

(declare-fun tp_is_empty!12731 () Bool)

(assert (=> b!464919 (= e!271670 tp_is_empty!12731)))

(declare-fun res!277997 () Bool)

(assert (=> start!41658 (=> (not res!277997) (not e!271669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41658 (= res!277997 (validMask!0 mask!1365))))

(assert (=> start!41658 e!271669))

(assert (=> start!41658 tp_is_empty!12731))

(assert (=> start!41658 tp!39909))

(assert (=> start!41658 true))

(declare-fun array_inv!10114 (array!29203) Bool)

(assert (=> start!41658 (array_inv!10114 _keys!1025)))

(declare-fun e!271667 () Bool)

(declare-fun array_inv!10115 (array!29205) Bool)

(assert (=> start!41658 (and (array_inv!10115 _values!833) e!271667)))

(declare-fun b!464920 () Bool)

(assert (=> b!464920 (= e!271667 (and e!271670 mapRes!20776))))

(declare-fun condMapEmpty!20776 () Bool)

(declare-fun mapDefault!20776 () ValueCell!6022)

