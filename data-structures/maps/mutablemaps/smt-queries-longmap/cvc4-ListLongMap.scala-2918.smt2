; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41676 () Bool)

(assert start!41676)

(declare-fun b_free!11321 () Bool)

(declare-fun b_next!11321 () Bool)

(assert (=> start!41676 (= b_free!11321 (not b_next!11321))))

(declare-fun tp!39964 () Bool)

(declare-fun b_and!19687 () Bool)

(assert (=> start!41676 (= tp!39964 b_and!19687)))

(declare-fun mapNonEmpty!20803 () Bool)

(declare-fun mapRes!20803 () Bool)

(declare-fun tp!39963 () Bool)

(declare-fun e!271802 () Bool)

(assert (=> mapNonEmpty!20803 (= mapRes!20803 (and tp!39963 e!271802))))

(declare-datatypes ((V!18103 0))(
  ( (V!18104 (val!6419 Int)) )
))
(declare-datatypes ((ValueCell!6031 0))(
  ( (ValueCellFull!6031 (v!8702 V!18103)) (EmptyCell!6031) )
))
(declare-datatypes ((array!29237 0))(
  ( (array!29238 (arr!14046 (Array (_ BitVec 32) ValueCell!6031)) (size!14398 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29237)

(declare-fun mapValue!20803 () ValueCell!6031)

(declare-fun mapKey!20803 () (_ BitVec 32))

(declare-fun mapRest!20803 () (Array (_ BitVec 32) ValueCell!6031))

(assert (=> mapNonEmpty!20803 (= (arr!14046 _values!833) (store mapRest!20803 mapKey!20803 mapValue!20803))))

(declare-fun b!465107 () Bool)

(declare-fun res!278104 () Bool)

(declare-fun e!271804 () Bool)

(assert (=> b!465107 (=> (not res!278104) (not e!271804))))

(declare-datatypes ((array!29239 0))(
  ( (array!29240 (arr!14047 (Array (_ BitVec 32) (_ BitVec 64))) (size!14399 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29239)

(declare-datatypes ((List!8517 0))(
  ( (Nil!8514) (Cons!8513 (h!9369 (_ BitVec 64)) (t!14473 List!8517)) )
))
(declare-fun arrayNoDuplicates!0 (array!29239 (_ BitVec 32) List!8517) Bool)

(assert (=> b!465107 (= res!278104 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8514))))

(declare-fun b!465108 () Bool)

(declare-fun tp_is_empty!12749 () Bool)

(assert (=> b!465108 (= e!271802 tp_is_empty!12749)))

(declare-fun b!465110 () Bool)

(declare-fun res!278105 () Bool)

(assert (=> b!465110 (=> (not res!278105) (not e!271804))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29239 (_ BitVec 32)) Bool)

(assert (=> b!465110 (= res!278105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465111 () Bool)

(declare-fun e!271805 () Bool)

(declare-fun e!271803 () Bool)

(assert (=> b!465111 (= e!271805 (and e!271803 mapRes!20803))))

(declare-fun condMapEmpty!20803 () Bool)

(declare-fun mapDefault!20803 () ValueCell!6031)

