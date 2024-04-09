; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95544 () Bool)

(assert start!95544)

(declare-fun b!1078601 () Bool)

(declare-fun e!616748 () Bool)

(declare-fun tp_is_empty!26179 () Bool)

(assert (=> b!1078601 (= e!616748 tp_is_empty!26179)))

(declare-fun b!1078602 () Bool)

(declare-fun e!616745 () Bool)

(declare-fun mapRes!41020 () Bool)

(assert (=> b!1078602 (= e!616745 (and e!616748 mapRes!41020))))

(declare-fun condMapEmpty!41020 () Bool)

(declare-datatypes ((V!40033 0))(
  ( (V!40034 (val!13146 Int)) )
))
(declare-datatypes ((ValueCell!12380 0))(
  ( (ValueCellFull!12380 (v!15768 V!40033)) (EmptyCell!12380) )
))
(declare-datatypes ((array!69272 0))(
  ( (array!69273 (arr!33307 (Array (_ BitVec 32) ValueCell!12380)) (size!33844 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69272)

(declare-fun mapDefault!41020 () ValueCell!12380)

