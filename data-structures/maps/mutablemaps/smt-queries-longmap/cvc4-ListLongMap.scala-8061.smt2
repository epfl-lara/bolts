; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99246 () Bool)

(assert start!99246)

(declare-fun b_free!24815 () Bool)

(declare-fun b_next!24815 () Bool)

(assert (=> start!99246 (= b_free!24815 (not b_next!24815))))

(declare-fun tp!87156 () Bool)

(declare-fun b_and!40493 () Bool)

(assert (=> start!99246 (= tp!87156 b_and!40493)))

(declare-fun b!1168142 () Bool)

(declare-fun e!663942 () Bool)

(declare-fun e!663941 () Bool)

(declare-fun mapRes!45842 () Bool)

(assert (=> b!1168142 (= e!663942 (and e!663941 mapRes!45842))))

(declare-fun condMapEmpty!45842 () Bool)

(declare-datatypes ((V!44253 0))(
  ( (V!44254 (val!14729 Int)) )
))
(declare-datatypes ((ValueCell!13963 0))(
  ( (ValueCellFull!13963 (v!17367 V!44253)) (EmptyCell!13963) )
))
(declare-datatypes ((array!75466 0))(
  ( (array!75467 (arr!36380 (Array (_ BitVec 32) ValueCell!13963)) (size!36917 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75466)

(declare-fun mapDefault!45842 () ValueCell!13963)

