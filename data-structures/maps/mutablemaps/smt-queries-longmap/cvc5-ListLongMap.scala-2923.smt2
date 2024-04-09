; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41716 () Bool)

(assert start!41716)

(declare-fun b_free!11347 () Bool)

(declare-fun b_next!11347 () Bool)

(assert (=> start!41716 (= b_free!11347 (not b_next!11347))))

(declare-fun tp!40044 () Bool)

(declare-fun b_and!19721 () Bool)

(assert (=> start!41716 (= tp!40044 b_and!19721)))

(declare-fun mapNonEmpty!20845 () Bool)

(declare-fun mapRes!20845 () Bool)

(declare-fun tp!40045 () Bool)

(declare-fun e!272094 () Bool)

(assert (=> mapNonEmpty!20845 (= mapRes!20845 (and tp!40045 e!272094))))

(declare-fun mapKey!20845 () (_ BitVec 32))

(declare-datatypes ((V!18139 0))(
  ( (V!18140 (val!6432 Int)) )
))
(declare-datatypes ((ValueCell!6044 0))(
  ( (ValueCellFull!6044 (v!8715 V!18139)) (EmptyCell!6044) )
))
(declare-fun mapRest!20845 () (Array (_ BitVec 32) ValueCell!6044))

(declare-datatypes ((array!29287 0))(
  ( (array!29288 (arr!14070 (Array (_ BitVec 32) ValueCell!6044)) (size!14422 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29287)

(declare-fun mapValue!20845 () ValueCell!6044)

(assert (=> mapNonEmpty!20845 (= (arr!14070 _values!833) (store mapRest!20845 mapKey!20845 mapValue!20845))))

(declare-fun res!278331 () Bool)

(declare-fun e!272093 () Bool)

(assert (=> start!41716 (=> (not res!278331) (not e!272093))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41716 (= res!278331 (validMask!0 mask!1365))))

(assert (=> start!41716 e!272093))

(declare-fun tp_is_empty!12775 () Bool)

(assert (=> start!41716 tp_is_empty!12775))

(assert (=> start!41716 tp!40044))

(assert (=> start!41716 true))

(declare-datatypes ((array!29289 0))(
  ( (array!29290 (arr!14071 (Array (_ BitVec 32) (_ BitVec 64))) (size!14423 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29289)

(declare-fun array_inv!10144 (array!29289) Bool)

(assert (=> start!41716 (array_inv!10144 _keys!1025)))

(declare-fun e!272092 () Bool)

(declare-fun array_inv!10145 (array!29287) Bool)

(assert (=> start!41716 (and (array_inv!10145 _values!833) e!272092)))

(declare-fun b!465503 () Bool)

(assert (=> b!465503 (= e!272094 tp_is_empty!12775)))

(declare-fun b!465504 () Bool)

(declare-fun res!278328 () Bool)

(assert (=> b!465504 (=> (not res!278328) (not e!272093))))

(declare-datatypes ((List!8533 0))(
  ( (Nil!8530) (Cons!8529 (h!9385 (_ BitVec 64)) (t!14491 List!8533)) )
))
(declare-fun arrayNoDuplicates!0 (array!29289 (_ BitVec 32) List!8533) Bool)

(assert (=> b!465504 (= res!278328 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8530))))

(declare-fun b!465505 () Bool)

(declare-fun e!272091 () Bool)

(assert (=> b!465505 (= e!272091 tp_is_empty!12775)))

(declare-fun b!465506 () Bool)

(assert (=> b!465506 (= e!272092 (and e!272091 mapRes!20845))))

(declare-fun condMapEmpty!20845 () Bool)

(declare-fun mapDefault!20845 () ValueCell!6044)

