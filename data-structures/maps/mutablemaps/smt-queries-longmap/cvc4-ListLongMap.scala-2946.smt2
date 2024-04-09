; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41908 () Bool)

(assert start!41908)

(declare-fun b_free!11489 () Bool)

(declare-fun b_next!11489 () Bool)

(assert (=> start!41908 (= b_free!11489 (not b_next!11489))))

(declare-fun tp!40480 () Bool)

(declare-fun b_and!19895 () Bool)

(assert (=> start!41908 (= tp!40480 b_and!19895)))

(declare-fun b!467579 () Bool)

(declare-fun e!273564 () Bool)

(declare-fun e!273561 () Bool)

(declare-fun mapRes!21067 () Bool)

(assert (=> b!467579 (= e!273564 (and e!273561 mapRes!21067))))

(declare-fun condMapEmpty!21067 () Bool)

(declare-datatypes ((V!18327 0))(
  ( (V!18328 (val!6503 Int)) )
))
(declare-datatypes ((ValueCell!6115 0))(
  ( (ValueCellFull!6115 (v!8788 V!18327)) (EmptyCell!6115) )
))
(declare-datatypes ((array!29571 0))(
  ( (array!29572 (arr!14209 (Array (_ BitVec 32) ValueCell!6115)) (size!14561 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29571)

(declare-fun mapDefault!21067 () ValueCell!6115)

