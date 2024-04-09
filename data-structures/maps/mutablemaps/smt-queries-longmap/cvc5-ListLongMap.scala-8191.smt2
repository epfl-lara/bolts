; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100048 () Bool)

(assert start!100048)

(declare-fun b_free!25591 () Bool)

(declare-fun b_next!25591 () Bool)

(assert (=> start!100048 (= b_free!25591 (not b_next!25591))))

(declare-fun tp!89488 () Bool)

(declare-fun b_and!42063 () Bool)

(assert (=> start!100048 (= tp!89488 b_and!42063)))

(declare-fun b!1191498 () Bool)

(declare-fun e!677335 () Bool)

(declare-fun e!677338 () Bool)

(declare-fun mapRes!47009 () Bool)

(assert (=> b!1191498 (= e!677335 (and e!677338 mapRes!47009))))

(declare-fun condMapEmpty!47009 () Bool)

(declare-datatypes ((V!45289 0))(
  ( (V!45290 (val!15117 Int)) )
))
(declare-datatypes ((ValueCell!14351 0))(
  ( (ValueCellFull!14351 (v!17756 V!45289)) (EmptyCell!14351) )
))
(declare-datatypes ((array!77008 0))(
  ( (array!77009 (arr!37150 (Array (_ BitVec 32) ValueCell!14351)) (size!37687 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77008)

(declare-fun mapDefault!47009 () ValueCell!14351)

