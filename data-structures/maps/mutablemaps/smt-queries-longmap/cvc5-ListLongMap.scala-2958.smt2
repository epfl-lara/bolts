; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41992 () Bool)

(assert start!41992)

(declare-fun b_free!11557 () Bool)

(declare-fun b_next!11557 () Bool)

(assert (=> start!41992 (= b_free!11557 (not b_next!11557))))

(declare-fun tp!40687 () Bool)

(declare-fun b_and!19973 () Bool)

(assert (=> start!41992 (= tp!40687 b_and!19973)))

(declare-fun res!280075 () Bool)

(declare-fun e!274271 () Bool)

(assert (=> start!41992 (=> (not res!280075) (not e!274271))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41992 (= res!280075 (validMask!0 mask!1365))))

(assert (=> start!41992 e!274271))

(declare-fun tp_is_empty!12985 () Bool)

(assert (=> start!41992 tp_is_empty!12985))

(assert (=> start!41992 tp!40687))

(assert (=> start!41992 true))

(declare-datatypes ((array!29703 0))(
  ( (array!29704 (arr!14274 (Array (_ BitVec 32) (_ BitVec 64))) (size!14626 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29703)

(declare-fun array_inv!10294 (array!29703) Bool)

(assert (=> start!41992 (array_inv!10294 _keys!1025)))

(declare-datatypes ((V!18419 0))(
  ( (V!18420 (val!6537 Int)) )
))
(declare-datatypes ((ValueCell!6149 0))(
  ( (ValueCellFull!6149 (v!8822 V!18419)) (EmptyCell!6149) )
))
(declare-datatypes ((array!29705 0))(
  ( (array!29706 (arr!14275 (Array (_ BitVec 32) ValueCell!6149)) (size!14627 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29705)

(declare-fun e!274268 () Bool)

(declare-fun array_inv!10295 (array!29705) Bool)

(assert (=> start!41992 (and (array_inv!10295 _values!833) e!274268)))

(declare-fun b!468543 () Bool)

(declare-fun res!280077 () Bool)

(assert (=> b!468543 (=> (not res!280077) (not e!274271))))

(declare-datatypes ((List!8693 0))(
  ( (Nil!8690) (Cons!8689 (h!9545 (_ BitVec 64)) (t!14659 List!8693)) )
))
(declare-fun arrayNoDuplicates!0 (array!29703 (_ BitVec 32) List!8693) Bool)

(assert (=> b!468543 (= res!280077 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8690))))

(declare-fun b!468544 () Bool)

(declare-fun e!274267 () Bool)

(assert (=> b!468544 (= e!274267 tp_is_empty!12985)))

(declare-fun b!468545 () Bool)

(declare-fun res!280078 () Bool)

(assert (=> b!468545 (=> (not res!280078) (not e!274271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29703 (_ BitVec 32)) Bool)

(assert (=> b!468545 (= res!280078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21172 () Bool)

(declare-fun mapRes!21172 () Bool)

(declare-fun tp!40686 () Bool)

(declare-fun e!274269 () Bool)

(assert (=> mapNonEmpty!21172 (= mapRes!21172 (and tp!40686 e!274269))))

(declare-fun mapKey!21172 () (_ BitVec 32))

(declare-fun mapRest!21172 () (Array (_ BitVec 32) ValueCell!6149))

(declare-fun mapValue!21172 () ValueCell!6149)

(assert (=> mapNonEmpty!21172 (= (arr!14275 _values!833) (store mapRest!21172 mapKey!21172 mapValue!21172))))

(declare-fun b!468546 () Bool)

(assert (=> b!468546 (= e!274268 (and e!274267 mapRes!21172))))

(declare-fun condMapEmpty!21172 () Bool)

(declare-fun mapDefault!21172 () ValueCell!6149)

