; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41608 () Bool)

(assert start!41608)

(declare-fun b_free!11267 () Bool)

(declare-fun b_next!11267 () Bool)

(assert (=> start!41608 (= b_free!11267 (not b_next!11267))))

(declare-fun tp!39799 () Bool)

(declare-fun b_and!19625 () Bool)

(assert (=> start!41608 (= tp!39799 b_and!19625)))

(declare-fun b!464455 () Bool)

(declare-fun res!277749 () Bool)

(declare-fun e!271344 () Bool)

(assert (=> b!464455 (=> (not res!277749) (not e!271344))))

(declare-datatypes ((array!29137 0))(
  ( (array!29138 (arr!13997 (Array (_ BitVec 32) (_ BitVec 64))) (size!14349 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29137)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29137 (_ BitVec 32)) Bool)

(assert (=> b!464455 (= res!277749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464456 () Bool)

(declare-fun e!271343 () Bool)

(declare-fun e!271342 () Bool)

(declare-fun mapRes!20719 () Bool)

(assert (=> b!464456 (= e!271343 (and e!271342 mapRes!20719))))

(declare-fun condMapEmpty!20719 () Bool)

(declare-datatypes ((V!18031 0))(
  ( (V!18032 (val!6392 Int)) )
))
(declare-datatypes ((ValueCell!6004 0))(
  ( (ValueCellFull!6004 (v!8675 V!18031)) (EmptyCell!6004) )
))
(declare-datatypes ((array!29139 0))(
  ( (array!29140 (arr!13998 (Array (_ BitVec 32) ValueCell!6004)) (size!14350 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29139)

(declare-fun mapDefault!20719 () ValueCell!6004)

