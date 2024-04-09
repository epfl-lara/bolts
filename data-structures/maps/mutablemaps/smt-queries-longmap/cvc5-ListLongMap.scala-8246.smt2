; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100460 () Bool)

(assert start!100460)

(declare-fun b_free!25747 () Bool)

(declare-fun b_next!25747 () Bool)

(assert (=> start!100460 (= b_free!25747 (not b_next!25747))))

(declare-fun tp!90231 () Bool)

(declare-fun b_and!42395 () Bool)

(assert (=> start!100460 (= tp!90231 b_and!42395)))

(declare-fun b!1198772 () Bool)

(declare-fun e!680965 () Bool)

(declare-fun e!680961 () Bool)

(declare-fun mapRes!47519 () Bool)

(assert (=> b!1198772 (= e!680965 (and e!680961 mapRes!47519))))

(declare-fun condMapEmpty!47519 () Bool)

(declare-datatypes ((V!45729 0))(
  ( (V!45730 (val!15282 Int)) )
))
(declare-datatypes ((ValueCell!14516 0))(
  ( (ValueCellFull!14516 (v!17921 V!45729)) (EmptyCell!14516) )
))
(declare-datatypes ((array!77662 0))(
  ( (array!77663 (arr!37472 (Array (_ BitVec 32) ValueCell!14516)) (size!38009 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77662)

(declare-fun mapDefault!47519 () ValueCell!14516)

