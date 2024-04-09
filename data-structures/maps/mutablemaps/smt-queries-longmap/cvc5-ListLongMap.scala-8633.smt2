; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105136 () Bool)

(assert start!105136)

(declare-fun b_free!26833 () Bool)

(declare-fun b_next!26833 () Bool)

(assert (=> start!105136 (= b_free!26833 (not b_next!26833))))

(declare-fun tp!94001 () Bool)

(declare-fun b_and!44647 () Bool)

(assert (=> start!105136 (= tp!94001 b_and!44647)))

(declare-fun b!1252366 () Bool)

(declare-fun e!711333 () Bool)

(declare-fun e!711335 () Bool)

(declare-fun mapRes!49375 () Bool)

(assert (=> b!1252366 (= e!711333 (and e!711335 mapRes!49375))))

(declare-fun condMapEmpty!49375 () Bool)

(declare-datatypes ((V!47679 0))(
  ( (V!47680 (val!15930 Int)) )
))
(declare-datatypes ((ValueCell!15104 0))(
  ( (ValueCellFull!15104 (v!18628 V!47679)) (EmptyCell!15104) )
))
(declare-datatypes ((array!81113 0))(
  ( (array!81114 (arr!39115 (Array (_ BitVec 32) ValueCell!15104)) (size!39652 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81113)

(declare-fun mapDefault!49375 () ValueCell!15104)

