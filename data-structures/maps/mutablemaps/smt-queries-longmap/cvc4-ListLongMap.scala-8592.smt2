; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104822 () Bool)

(assert start!104822)

(declare-fun b_free!26591 () Bool)

(declare-fun b_next!26591 () Bool)

(assert (=> start!104822 (= b_free!26591 (not b_next!26591))))

(declare-fun tp!93263 () Bool)

(declare-fun b_and!44369 () Bool)

(assert (=> start!104822 (= tp!93263 b_and!44369)))

(declare-fun b!1248998 () Bool)

(declare-fun e!708867 () Bool)

(declare-fun e!708865 () Bool)

(declare-fun mapRes!49000 () Bool)

(assert (=> b!1248998 (= e!708867 (and e!708865 mapRes!49000))))

(declare-fun condMapEmpty!49000 () Bool)

(declare-datatypes ((V!47355 0))(
  ( (V!47356 (val!15809 Int)) )
))
(declare-datatypes ((ValueCell!14983 0))(
  ( (ValueCellFull!14983 (v!18505 V!47355)) (EmptyCell!14983) )
))
(declare-datatypes ((array!80651 0))(
  ( (array!80652 (arr!38888 (Array (_ BitVec 32) ValueCell!14983)) (size!39425 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80651)

(declare-fun mapDefault!49000 () ValueCell!14983)

