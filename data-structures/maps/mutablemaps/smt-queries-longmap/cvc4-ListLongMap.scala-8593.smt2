; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104828 () Bool)

(assert start!104828)

(declare-fun b_free!26597 () Bool)

(declare-fun b_next!26597 () Bool)

(assert (=> start!104828 (= b_free!26597 (not b_next!26597))))

(declare-fun tp!93281 () Bool)

(declare-fun b_and!44375 () Bool)

(assert (=> start!104828 (= tp!93281 b_and!44375)))

(declare-fun b!1249061 () Bool)

(declare-fun e!708909 () Bool)

(declare-fun tp_is_empty!31499 () Bool)

(assert (=> b!1249061 (= e!708909 tp_is_empty!31499)))

(declare-fun b!1249062 () Bool)

(declare-fun e!708912 () Bool)

(declare-fun e!708908 () Bool)

(declare-fun mapRes!49009 () Bool)

(assert (=> b!1249062 (= e!708912 (and e!708908 mapRes!49009))))

(declare-fun condMapEmpty!49009 () Bool)

(declare-datatypes ((V!47363 0))(
  ( (V!47364 (val!15812 Int)) )
))
(declare-datatypes ((ValueCell!14986 0))(
  ( (ValueCellFull!14986 (v!18508 V!47363)) (EmptyCell!14986) )
))
(declare-datatypes ((array!80661 0))(
  ( (array!80662 (arr!38893 (Array (_ BitVec 32) ValueCell!14986)) (size!39430 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80661)

(declare-fun mapDefault!49009 () ValueCell!14986)

