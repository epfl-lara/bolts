; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104836 () Bool)

(assert start!104836)

(declare-fun b_free!26605 () Bool)

(declare-fun b_next!26605 () Bool)

(assert (=> start!104836 (= b_free!26605 (not b_next!26605))))

(declare-fun tp!93305 () Bool)

(declare-fun b_and!44383 () Bool)

(assert (=> start!104836 (= tp!93305 b_and!44383)))

(declare-fun b!1249144 () Bool)

(declare-fun e!708972 () Bool)

(declare-fun e!708971 () Bool)

(declare-fun mapRes!49021 () Bool)

(assert (=> b!1249144 (= e!708972 (and e!708971 mapRes!49021))))

(declare-fun condMapEmpty!49021 () Bool)

(declare-datatypes ((V!47375 0))(
  ( (V!47376 (val!15816 Int)) )
))
(declare-datatypes ((ValueCell!14990 0))(
  ( (ValueCellFull!14990 (v!18512 V!47375)) (EmptyCell!14990) )
))
(declare-datatypes ((array!80675 0))(
  ( (array!80676 (arr!38900 (Array (_ BitVec 32) ValueCell!14990)) (size!39437 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80675)

(declare-fun mapDefault!49021 () ValueCell!14990)

