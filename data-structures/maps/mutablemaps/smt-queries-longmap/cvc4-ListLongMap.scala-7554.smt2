; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95684 () Bool)

(assert start!95684)

(declare-fun b_free!22301 () Bool)

(declare-fun b_next!22301 () Bool)

(assert (=> start!95684 (= b_free!22301 (not b_next!22301))))

(declare-fun tp!78753 () Bool)

(declare-fun b_and!35297 () Bool)

(assert (=> start!95684 (= tp!78753 b_and!35297)))

(declare-fun b!1080883 () Bool)

(declare-fun e!617904 () Bool)

(declare-fun tp_is_empty!26303 () Bool)

(assert (=> b!1080883 (= e!617904 tp_is_empty!26303)))

(declare-fun b!1080884 () Bool)

(declare-fun e!617905 () Bool)

(declare-fun e!617900 () Bool)

(declare-fun mapRes!41209 () Bool)

(assert (=> b!1080884 (= e!617905 (and e!617900 mapRes!41209))))

(declare-fun condMapEmpty!41209 () Bool)

(declare-datatypes ((V!40197 0))(
  ( (V!40198 (val!13208 Int)) )
))
(declare-datatypes ((ValueCell!12442 0))(
  ( (ValueCellFull!12442 (v!15830 V!40197)) (EmptyCell!12442) )
))
(declare-datatypes ((array!69512 0))(
  ( (array!69513 (arr!33426 (Array (_ BitVec 32) ValueCell!12442)) (size!33963 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69512)

(declare-fun mapDefault!41209 () ValueCell!12442)

