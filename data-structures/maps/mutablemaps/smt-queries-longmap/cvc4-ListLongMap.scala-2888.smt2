; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41470 () Bool)

(assert start!41470)

(declare-fun b_free!11141 () Bool)

(declare-fun b_next!11141 () Bool)

(assert (=> start!41470 (= b_free!11141 (not b_next!11141))))

(declare-fun tp!39418 () Bool)

(declare-fun b_and!19495 () Bool)

(assert (=> start!41470 (= tp!39418 b_and!19495)))

(declare-fun b!463059 () Bool)

(declare-fun res!276966 () Bool)

(declare-fun e!270348 () Bool)

(assert (=> b!463059 (=> (not res!276966) (not e!270348))))

(declare-datatypes ((array!28897 0))(
  ( (array!28898 (arr!13878 (Array (_ BitVec 32) (_ BitVec 64))) (size!14230 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28897)

(declare-datatypes ((List!8391 0))(
  ( (Nil!8388) (Cons!8387 (h!9243 (_ BitVec 64)) (t!14343 List!8391)) )
))
(declare-fun arrayNoDuplicates!0 (array!28897 (_ BitVec 32) List!8391) Bool)

(assert (=> b!463059 (= res!276966 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8388))))

(declare-fun b!463060 () Bool)

(declare-fun res!276965 () Bool)

(assert (=> b!463060 (=> (not res!276965) (not e!270348))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17863 0))(
  ( (V!17864 (val!6329 Int)) )
))
(declare-datatypes ((ValueCell!5941 0))(
  ( (ValueCellFull!5941 (v!8612 V!17863)) (EmptyCell!5941) )
))
(declare-datatypes ((array!28899 0))(
  ( (array!28900 (arr!13879 (Array (_ BitVec 32) ValueCell!5941)) (size!14231 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28899)

(assert (=> b!463060 (= res!276965 (and (= (size!14231 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14230 _keys!1025) (size!14231 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463061 () Bool)

(declare-fun e!270351 () Bool)

(declare-fun tp_is_empty!12569 () Bool)

(assert (=> b!463061 (= e!270351 tp_is_empty!12569)))

(declare-fun mapIsEmpty!20527 () Bool)

(declare-fun mapRes!20527 () Bool)

(assert (=> mapIsEmpty!20527 mapRes!20527))

(declare-fun b!463062 () Bool)

(assert (=> b!463062 (= e!270348 false)))

(declare-fun minValueBefore!38 () V!17863)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!17863)

(declare-datatypes ((tuple2!8264 0))(
  ( (tuple2!8265 (_1!4142 (_ BitVec 64)) (_2!4142 V!17863)) )
))
(declare-datatypes ((List!8392 0))(
  ( (Nil!8389) (Cons!8388 (h!9244 tuple2!8264) (t!14344 List!8392)) )
))
(declare-datatypes ((ListLongMap!7191 0))(
  ( (ListLongMap!7192 (toList!3611 List!8392)) )
))
(declare-fun lt!209289 () ListLongMap!7191)

(declare-fun getCurrentListMapNoExtraKeys!1779 (array!28897 array!28899 (_ BitVec 32) (_ BitVec 32) V!17863 V!17863 (_ BitVec 32) Int) ListLongMap!7191)

(assert (=> b!463062 (= lt!209289 (getCurrentListMapNoExtraKeys!1779 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!276968 () Bool)

(assert (=> start!41470 (=> (not res!276968) (not e!270348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41470 (= res!276968 (validMask!0 mask!1365))))

(assert (=> start!41470 e!270348))

(assert (=> start!41470 tp_is_empty!12569))

(assert (=> start!41470 tp!39418))

(assert (=> start!41470 true))

(declare-fun array_inv!10010 (array!28897) Bool)

(assert (=> start!41470 (array_inv!10010 _keys!1025)))

(declare-fun e!270350 () Bool)

(declare-fun array_inv!10011 (array!28899) Bool)

(assert (=> start!41470 (and (array_inv!10011 _values!833) e!270350)))

(declare-fun mapNonEmpty!20527 () Bool)

(declare-fun tp!39417 () Bool)

(assert (=> mapNonEmpty!20527 (= mapRes!20527 (and tp!39417 e!270351))))

(declare-fun mapValue!20527 () ValueCell!5941)

(declare-fun mapRest!20527 () (Array (_ BitVec 32) ValueCell!5941))

(declare-fun mapKey!20527 () (_ BitVec 32))

(assert (=> mapNonEmpty!20527 (= (arr!13879 _values!833) (store mapRest!20527 mapKey!20527 mapValue!20527))))

(declare-fun b!463063 () Bool)

(declare-fun res!276967 () Bool)

(assert (=> b!463063 (=> (not res!276967) (not e!270348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28897 (_ BitVec 32)) Bool)

(assert (=> b!463063 (= res!276967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463064 () Bool)

(declare-fun e!270349 () Bool)

(assert (=> b!463064 (= e!270350 (and e!270349 mapRes!20527))))

(declare-fun condMapEmpty!20527 () Bool)

(declare-fun mapDefault!20527 () ValueCell!5941)

