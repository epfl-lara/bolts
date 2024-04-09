; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41560 () Bool)

(assert start!41560)

(declare-fun b_free!11219 () Bool)

(declare-fun b_next!11219 () Bool)

(assert (=> start!41560 (= b_free!11219 (not b_next!11219))))

(declare-fun tp!39654 () Bool)

(declare-fun b_and!19577 () Bool)

(assert (=> start!41560 (= tp!39654 b_and!19577)))

(declare-fun b!463951 () Bool)

(declare-fun e!270982 () Bool)

(assert (=> b!463951 (= e!270982 (not true))))

(declare-datatypes ((V!17967 0))(
  ( (V!17968 (val!6368 Int)) )
))
(declare-datatypes ((tuple2!8320 0))(
  ( (tuple2!8321 (_1!4170 (_ BitVec 64)) (_2!4170 V!17967)) )
))
(declare-datatypes ((List!8447 0))(
  ( (Nil!8444) (Cons!8443 (h!9299 tuple2!8320) (t!14401 List!8447)) )
))
(declare-datatypes ((ListLongMap!7247 0))(
  ( (ListLongMap!7248 (toList!3639 List!8447)) )
))
(declare-fun lt!209552 () ListLongMap!7247)

(declare-fun lt!209553 () ListLongMap!7247)

(assert (=> b!463951 (= lt!209552 lt!209553)))

(declare-fun minValueBefore!38 () V!17967)

(declare-fun zeroValue!794 () V!17967)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13399 0))(
  ( (Unit!13400) )
))
(declare-fun lt!209551 () Unit!13399)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29047 0))(
  ( (array!29048 (arr!13952 (Array (_ BitVec 32) (_ BitVec 64))) (size!14304 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29047)

(declare-datatypes ((ValueCell!5980 0))(
  ( (ValueCellFull!5980 (v!8651 V!17967)) (EmptyCell!5980) )
))
(declare-datatypes ((array!29049 0))(
  ( (array!29050 (arr!13953 (Array (_ BitVec 32) ValueCell!5980)) (size!14305 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29049)

(declare-fun minValueAfter!38 () V!17967)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!2 (array!29047 array!29049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17967 V!17967 V!17967 V!17967 (_ BitVec 32) Int) Unit!13399)

(assert (=> b!463951 (= lt!209551 (lemmaNoChangeToArrayThenSameMapNoExtras!2 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1807 (array!29047 array!29049 (_ BitVec 32) (_ BitVec 32) V!17967 V!17967 (_ BitVec 32) Int) ListLongMap!7247)

(assert (=> b!463951 (= lt!209553 (getCurrentListMapNoExtraKeys!1807 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!463951 (= lt!209552 (getCurrentListMapNoExtraKeys!1807 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20647 () Bool)

(declare-fun mapRes!20647 () Bool)

(assert (=> mapIsEmpty!20647 mapRes!20647))

(declare-fun b!463952 () Bool)

(declare-fun e!270981 () Bool)

(declare-fun tp_is_empty!12647 () Bool)

(assert (=> b!463952 (= e!270981 tp_is_empty!12647)))

(declare-fun res!277463 () Bool)

(assert (=> start!41560 (=> (not res!277463) (not e!270982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41560 (= res!277463 (validMask!0 mask!1365))))

(assert (=> start!41560 e!270982))

(assert (=> start!41560 tp_is_empty!12647))

(assert (=> start!41560 tp!39654))

(assert (=> start!41560 true))

(declare-fun array_inv!10060 (array!29047) Bool)

(assert (=> start!41560 (array_inv!10060 _keys!1025)))

(declare-fun e!270985 () Bool)

(declare-fun array_inv!10061 (array!29049) Bool)

(assert (=> start!41560 (and (array_inv!10061 _values!833) e!270985)))

(declare-fun b!463953 () Bool)

(declare-fun res!277462 () Bool)

(assert (=> b!463953 (=> (not res!277462) (not e!270982))))

(declare-datatypes ((List!8448 0))(
  ( (Nil!8445) (Cons!8444 (h!9300 (_ BitVec 64)) (t!14402 List!8448)) )
))
(declare-fun arrayNoDuplicates!0 (array!29047 (_ BitVec 32) List!8448) Bool)

(assert (=> b!463953 (= res!277462 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8445))))

(declare-fun b!463954 () Bool)

(declare-fun res!277460 () Bool)

(assert (=> b!463954 (=> (not res!277460) (not e!270982))))

(assert (=> b!463954 (= res!277460 (and (= (size!14305 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14304 _keys!1025) (size!14305 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463955 () Bool)

(declare-fun res!277461 () Bool)

(assert (=> b!463955 (=> (not res!277461) (not e!270982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29047 (_ BitVec 32)) Bool)

(assert (=> b!463955 (= res!277461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463956 () Bool)

(assert (=> b!463956 (= e!270985 (and e!270981 mapRes!20647))))

(declare-fun condMapEmpty!20647 () Bool)

(declare-fun mapDefault!20647 () ValueCell!5980)

