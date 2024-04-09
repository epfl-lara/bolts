; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41602 () Bool)

(assert start!41602)

(declare-fun b_free!11261 () Bool)

(declare-fun b_next!11261 () Bool)

(assert (=> start!41602 (= b_free!11261 (not b_next!11261))))

(declare-fun tp!39780 () Bool)

(declare-fun b_and!19619 () Bool)

(assert (=> start!41602 (= tp!39780 b_and!19619)))

(declare-fun res!277715 () Bool)

(declare-fun e!271300 () Bool)

(assert (=> start!41602 (=> (not res!277715) (not e!271300))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41602 (= res!277715 (validMask!0 mask!1365))))

(assert (=> start!41602 e!271300))

(declare-fun tp_is_empty!12689 () Bool)

(assert (=> start!41602 tp_is_empty!12689))

(assert (=> start!41602 tp!39780))

(assert (=> start!41602 true))

(declare-datatypes ((array!29125 0))(
  ( (array!29126 (arr!13991 (Array (_ BitVec 32) (_ BitVec 64))) (size!14343 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29125)

(declare-fun array_inv!10086 (array!29125) Bool)

(assert (=> start!41602 (array_inv!10086 _keys!1025)))

(declare-datatypes ((V!18023 0))(
  ( (V!18024 (val!6389 Int)) )
))
(declare-datatypes ((ValueCell!6001 0))(
  ( (ValueCellFull!6001 (v!8672 V!18023)) (EmptyCell!6001) )
))
(declare-datatypes ((array!29127 0))(
  ( (array!29128 (arr!13992 (Array (_ BitVec 32) ValueCell!6001)) (size!14344 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29127)

(declare-fun e!271299 () Bool)

(declare-fun array_inv!10087 (array!29127) Bool)

(assert (=> start!41602 (and (array_inv!10087 _values!833) e!271299)))

(declare-fun b!464392 () Bool)

(declare-fun res!277714 () Bool)

(assert (=> b!464392 (=> (not res!277714) (not e!271300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29125 (_ BitVec 32)) Bool)

(assert (=> b!464392 (= res!277714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464393 () Bool)

(declare-fun res!277713 () Bool)

(assert (=> b!464393 (=> (not res!277713) (not e!271300))))

(declare-datatypes ((List!8476 0))(
  ( (Nil!8473) (Cons!8472 (h!9328 (_ BitVec 64)) (t!14430 List!8476)) )
))
(declare-fun arrayNoDuplicates!0 (array!29125 (_ BitVec 32) List!8476) Bool)

(assert (=> b!464393 (= res!277713 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8473))))

(declare-fun b!464394 () Bool)

(declare-fun e!271298 () Bool)

(assert (=> b!464394 (= e!271298 tp_is_empty!12689)))

(declare-fun mapNonEmpty!20710 () Bool)

(declare-fun mapRes!20710 () Bool)

(declare-fun tp!39781 () Bool)

(assert (=> mapNonEmpty!20710 (= mapRes!20710 (and tp!39781 e!271298))))

(declare-fun mapKey!20710 () (_ BitVec 32))

(declare-fun mapRest!20710 () (Array (_ BitVec 32) ValueCell!6001))

(declare-fun mapValue!20710 () ValueCell!6001)

(assert (=> mapNonEmpty!20710 (= (arr!13992 _values!833) (store mapRest!20710 mapKey!20710 mapValue!20710))))

(declare-fun b!464395 () Bool)

(declare-fun e!271297 () Bool)

(assert (=> b!464395 (= e!271297 tp_is_empty!12689)))

(declare-fun b!464396 () Bool)

(assert (=> b!464396 (= e!271299 (and e!271297 mapRes!20710))))

(declare-fun condMapEmpty!20710 () Bool)

(declare-fun mapDefault!20710 () ValueCell!6001)

