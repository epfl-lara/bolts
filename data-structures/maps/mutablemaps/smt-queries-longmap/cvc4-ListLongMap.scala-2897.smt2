; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41536 () Bool)

(assert start!41536)

(declare-fun b_free!11195 () Bool)

(declare-fun b_next!11195 () Bool)

(assert (=> start!41536 (= b_free!11195 (not b_next!11195))))

(declare-fun tp!39583 () Bool)

(declare-fun b_and!19553 () Bool)

(assert (=> start!41536 (= tp!39583 b_and!19553)))

(declare-fun b!463699 () Bool)

(declare-fun res!277316 () Bool)

(declare-fun e!270802 () Bool)

(assert (=> b!463699 (=> (not res!277316) (not e!270802))))

(declare-datatypes ((array!29003 0))(
  ( (array!29004 (arr!13930 (Array (_ BitVec 32) (_ BitVec 64))) (size!14282 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29003)

(declare-datatypes ((List!8433 0))(
  ( (Nil!8430) (Cons!8429 (h!9285 (_ BitVec 64)) (t!14387 List!8433)) )
))
(declare-fun arrayNoDuplicates!0 (array!29003 (_ BitVec 32) List!8433) Bool)

(assert (=> b!463699 (= res!277316 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8430))))

(declare-fun b!463700 () Bool)

(declare-fun e!270805 () Bool)

(declare-fun tp_is_empty!12623 () Bool)

(assert (=> b!463700 (= e!270805 tp_is_empty!12623)))

(declare-fun b!463701 () Bool)

(declare-fun res!277319 () Bool)

(assert (=> b!463701 (=> (not res!277319) (not e!270802))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((V!17935 0))(
  ( (V!17936 (val!6356 Int)) )
))
(declare-datatypes ((ValueCell!5968 0))(
  ( (ValueCellFull!5968 (v!8639 V!17935)) (EmptyCell!5968) )
))
(declare-datatypes ((array!29005 0))(
  ( (array!29006 (arr!13931 (Array (_ BitVec 32) ValueCell!5968)) (size!14283 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29005)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463701 (= res!277319 (and (= (size!14283 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14282 _keys!1025) (size!14283 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463702 () Bool)

(assert (=> b!463702 (= e!270802 false)))

(declare-datatypes ((tuple2!8308 0))(
  ( (tuple2!8309 (_1!4164 (_ BitVec 64)) (_2!4164 V!17935)) )
))
(declare-datatypes ((List!8434 0))(
  ( (Nil!8431) (Cons!8430 (h!9286 tuple2!8308) (t!14388 List!8434)) )
))
(declare-datatypes ((ListLongMap!7235 0))(
  ( (ListLongMap!7236 (toList!3633 List!8434)) )
))
(declare-fun lt!209471 () ListLongMap!7235)

(declare-fun zeroValue!794 () V!17935)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17935)

(declare-fun getCurrentListMapNoExtraKeys!1801 (array!29003 array!29005 (_ BitVec 32) (_ BitVec 32) V!17935 V!17935 (_ BitVec 32) Int) ListLongMap!7235)

(assert (=> b!463702 (= lt!209471 (getCurrentListMapNoExtraKeys!1801 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17935)

(declare-fun lt!209472 () ListLongMap!7235)

(assert (=> b!463702 (= lt!209472 (getCurrentListMapNoExtraKeys!1801 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!277318 () Bool)

(assert (=> start!41536 (=> (not res!277318) (not e!270802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41536 (= res!277318 (validMask!0 mask!1365))))

(assert (=> start!41536 e!270802))

(assert (=> start!41536 tp_is_empty!12623))

(assert (=> start!41536 tp!39583))

(assert (=> start!41536 true))

(declare-fun array_inv!10048 (array!29003) Bool)

(assert (=> start!41536 (array_inv!10048 _keys!1025)))

(declare-fun e!270804 () Bool)

(declare-fun array_inv!10049 (array!29005) Bool)

(assert (=> start!41536 (and (array_inv!10049 _values!833) e!270804)))

(declare-fun b!463703 () Bool)

(declare-fun res!277317 () Bool)

(assert (=> b!463703 (=> (not res!277317) (not e!270802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29003 (_ BitVec 32)) Bool)

(assert (=> b!463703 (= res!277317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20611 () Bool)

(declare-fun mapRes!20611 () Bool)

(declare-fun tp!39582 () Bool)

(assert (=> mapNonEmpty!20611 (= mapRes!20611 (and tp!39582 e!270805))))

(declare-fun mapValue!20611 () ValueCell!5968)

(declare-fun mapKey!20611 () (_ BitVec 32))

(declare-fun mapRest!20611 () (Array (_ BitVec 32) ValueCell!5968))

(assert (=> mapNonEmpty!20611 (= (arr!13931 _values!833) (store mapRest!20611 mapKey!20611 mapValue!20611))))

(declare-fun b!463704 () Bool)

(declare-fun e!270803 () Bool)

(assert (=> b!463704 (= e!270803 tp_is_empty!12623)))

(declare-fun b!463705 () Bool)

(assert (=> b!463705 (= e!270804 (and e!270803 mapRes!20611))))

(declare-fun condMapEmpty!20611 () Bool)

(declare-fun mapDefault!20611 () ValueCell!5968)

