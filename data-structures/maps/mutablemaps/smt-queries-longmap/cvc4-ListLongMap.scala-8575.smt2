; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104708 () Bool)

(assert start!104708)

(declare-fun b_free!26489 () Bool)

(declare-fun b_next!26489 () Bool)

(assert (=> start!104708 (= b_free!26489 (not b_next!26489))))

(declare-fun tp!92955 () Bool)

(declare-fun b_and!44263 () Bool)

(assert (=> start!104708 (= tp!92955 b_and!44263)))

(declare-fun b!1247853 () Bool)

(declare-fun e!708051 () Bool)

(declare-fun e!708050 () Bool)

(declare-fun mapRes!48844 () Bool)

(assert (=> b!1247853 (= e!708051 (and e!708050 mapRes!48844))))

(declare-fun condMapEmpty!48844 () Bool)

(declare-datatypes ((V!47219 0))(
  ( (V!47220 (val!15758 Int)) )
))
(declare-datatypes ((ValueCell!14932 0))(
  ( (ValueCellFull!14932 (v!18454 V!47219)) (EmptyCell!14932) )
))
(declare-datatypes ((array!80453 0))(
  ( (array!80454 (arr!38790 (Array (_ BitVec 32) ValueCell!14932)) (size!39327 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80453)

(declare-fun mapDefault!48844 () ValueCell!14932)

