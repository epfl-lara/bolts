; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41702 () Bool)

(assert start!41702)

(declare-fun b_free!11333 () Bool)

(declare-fun b_next!11333 () Bool)

(assert (=> start!41702 (= b_free!11333 (not b_next!11333))))

(declare-fun tp!40002 () Bool)

(declare-fun b_and!19707 () Bool)

(assert (=> start!41702 (= tp!40002 b_and!19707)))

(declare-fun b!465335 () Bool)

(declare-fun e!271966 () Bool)

(declare-fun tp_is_empty!12761 () Bool)

(assert (=> b!465335 (= e!271966 tp_is_empty!12761)))

(declare-fun b!465336 () Bool)

(declare-fun res!278224 () Bool)

(declare-fun e!271965 () Bool)

(assert (=> b!465336 (=> (not res!278224) (not e!271965))))

(declare-datatypes ((array!29261 0))(
  ( (array!29262 (arr!14057 (Array (_ BitVec 32) (_ BitVec 64))) (size!14409 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29261)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29261 (_ BitVec 32)) Bool)

(assert (=> b!465336 (= res!278224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465337 () Bool)

(declare-fun e!271964 () Bool)

(declare-fun e!271967 () Bool)

(declare-fun mapRes!20824 () Bool)

(assert (=> b!465337 (= e!271964 (and e!271967 mapRes!20824))))

(declare-fun condMapEmpty!20824 () Bool)

(declare-datatypes ((V!18119 0))(
  ( (V!18120 (val!6425 Int)) )
))
(declare-datatypes ((ValueCell!6037 0))(
  ( (ValueCellFull!6037 (v!8708 V!18119)) (EmptyCell!6037) )
))
(declare-datatypes ((array!29263 0))(
  ( (array!29264 (arr!14058 (Array (_ BitVec 32) ValueCell!6037)) (size!14410 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29263)

(declare-fun mapDefault!20824 () ValueCell!6037)

