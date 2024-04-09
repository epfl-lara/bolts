; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41500 () Bool)

(assert start!41500)

(declare-fun b_free!11159 () Bool)

(declare-fun b_next!11159 () Bool)

(assert (=> start!41500 (= b_free!11159 (not b_next!11159))))

(declare-fun tp!39474 () Bool)

(declare-fun b_and!19517 () Bool)

(assert (=> start!41500 (= tp!39474 b_and!19517)))

(declare-fun res!277101 () Bool)

(declare-fun e!270535 () Bool)

(assert (=> start!41500 (=> (not res!277101) (not e!270535))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41500 (= res!277101 (validMask!0 mask!1365))))

(assert (=> start!41500 e!270535))

(declare-fun tp_is_empty!12587 () Bool)

(assert (=> start!41500 tp_is_empty!12587))

(assert (=> start!41500 tp!39474))

(assert (=> start!41500 true))

(declare-datatypes ((array!28935 0))(
  ( (array!28936 (arr!13896 (Array (_ BitVec 32) (_ BitVec 64))) (size!14248 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28935)

(declare-fun array_inv!10026 (array!28935) Bool)

(assert (=> start!41500 (array_inv!10026 _keys!1025)))

(declare-datatypes ((V!17887 0))(
  ( (V!17888 (val!6338 Int)) )
))
(declare-datatypes ((ValueCell!5950 0))(
  ( (ValueCellFull!5950 (v!8621 V!17887)) (EmptyCell!5950) )
))
(declare-datatypes ((array!28937 0))(
  ( (array!28938 (arr!13897 (Array (_ BitVec 32) ValueCell!5950)) (size!14249 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28937)

(declare-fun e!270532 () Bool)

(declare-fun array_inv!10027 (array!28937) Bool)

(assert (=> start!41500 (and (array_inv!10027 _values!833) e!270532)))

(declare-fun b!463321 () Bool)

(declare-fun e!270534 () Bool)

(declare-fun mapRes!20557 () Bool)

(assert (=> b!463321 (= e!270532 (and e!270534 mapRes!20557))))

(declare-fun condMapEmpty!20557 () Bool)

(declare-fun mapDefault!20557 () ValueCell!5950)

