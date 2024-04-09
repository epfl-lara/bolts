; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41512 () Bool)

(assert start!41512)

(declare-fun b_free!11171 () Bool)

(declare-fun b_next!11171 () Bool)

(assert (=> start!41512 (= b_free!11171 (not b_next!11171))))

(declare-fun tp!39511 () Bool)

(declare-fun b_and!19529 () Bool)

(assert (=> start!41512 (= tp!39511 b_and!19529)))

(declare-fun b!463447 () Bool)

(declare-fun res!277172 () Bool)

(declare-fun e!270621 () Bool)

(assert (=> b!463447 (=> (not res!277172) (not e!270621))))

(declare-datatypes ((array!28957 0))(
  ( (array!28958 (arr!13907 (Array (_ BitVec 32) (_ BitVec 64))) (size!14259 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28957)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28957 (_ BitVec 32)) Bool)

(assert (=> b!463447 (= res!277172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20575 () Bool)

(declare-fun mapRes!20575 () Bool)

(declare-fun tp!39510 () Bool)

(declare-fun e!270622 () Bool)

(assert (=> mapNonEmpty!20575 (= mapRes!20575 (and tp!39510 e!270622))))

(declare-datatypes ((V!17903 0))(
  ( (V!17904 (val!6344 Int)) )
))
(declare-datatypes ((ValueCell!5956 0))(
  ( (ValueCellFull!5956 (v!8627 V!17903)) (EmptyCell!5956) )
))
(declare-datatypes ((array!28959 0))(
  ( (array!28960 (arr!13908 (Array (_ BitVec 32) ValueCell!5956)) (size!14260 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28959)

(declare-fun mapValue!20575 () ValueCell!5956)

(declare-fun mapKey!20575 () (_ BitVec 32))

(declare-fun mapRest!20575 () (Array (_ BitVec 32) ValueCell!5956))

(assert (=> mapNonEmpty!20575 (= (arr!13908 _values!833) (store mapRest!20575 mapKey!20575 mapValue!20575))))

(declare-fun b!463448 () Bool)

(assert (=> b!463448 (= e!270621 false)))

(declare-fun zeroValue!794 () V!17903)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8286 0))(
  ( (tuple2!8287 (_1!4153 (_ BitVec 64)) (_2!4153 V!17903)) )
))
(declare-datatypes ((List!8412 0))(
  ( (Nil!8409) (Cons!8408 (h!9264 tuple2!8286) (t!14366 List!8412)) )
))
(declare-datatypes ((ListLongMap!7213 0))(
  ( (ListLongMap!7214 (toList!3622 List!8412)) )
))
(declare-fun lt!209399 () ListLongMap!7213)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!17903)

(declare-fun getCurrentListMapNoExtraKeys!1790 (array!28957 array!28959 (_ BitVec 32) (_ BitVec 32) V!17903 V!17903 (_ BitVec 32) Int) ListLongMap!7213)

(assert (=> b!463448 (= lt!209399 (getCurrentListMapNoExtraKeys!1790 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17903)

(declare-fun lt!209400 () ListLongMap!7213)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463448 (= lt!209400 (getCurrentListMapNoExtraKeys!1790 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463449 () Bool)

(declare-fun e!270623 () Bool)

(declare-fun tp_is_empty!12599 () Bool)

(assert (=> b!463449 (= e!270623 tp_is_empty!12599)))

(declare-fun b!463450 () Bool)

(declare-fun res!277175 () Bool)

(assert (=> b!463450 (=> (not res!277175) (not e!270621))))

(declare-datatypes ((List!8413 0))(
  ( (Nil!8410) (Cons!8409 (h!9265 (_ BitVec 64)) (t!14367 List!8413)) )
))
(declare-fun arrayNoDuplicates!0 (array!28957 (_ BitVec 32) List!8413) Bool)

(assert (=> b!463450 (= res!277175 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8410))))

(declare-fun mapIsEmpty!20575 () Bool)

(assert (=> mapIsEmpty!20575 mapRes!20575))

(declare-fun b!463451 () Bool)

(declare-fun e!270625 () Bool)

(assert (=> b!463451 (= e!270625 (and e!270623 mapRes!20575))))

(declare-fun condMapEmpty!20575 () Bool)

(declare-fun mapDefault!20575 () ValueCell!5956)

