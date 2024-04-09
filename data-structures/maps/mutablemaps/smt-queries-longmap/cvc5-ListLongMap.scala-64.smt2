; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!916 () Bool)

(assert start!916)

(declare-fun b_free!289 () Bool)

(declare-fun b_next!289 () Bool)

(assert (=> start!916 (= b_free!289 (not b_next!289))))

(declare-fun tp!1099 () Bool)

(declare-fun b_and!437 () Bool)

(assert (=> start!916 (= tp!1099 b_and!437)))

(declare-fun b!7680 () Bool)

(declare-fun e!4303 () Bool)

(declare-fun e!4305 () Bool)

(declare-fun mapRes!524 () Bool)

(assert (=> b!7680 (= e!4303 (and e!4305 mapRes!524))))

(declare-fun condMapEmpty!524 () Bool)

(declare-datatypes ((V!667 0))(
  ( (V!668 (val!189 Int)) )
))
(declare-datatypes ((ValueCell!167 0))(
  ( (ValueCellFull!167 (v!1281 V!667)) (EmptyCell!167) )
))
(declare-datatypes ((array!665 0))(
  ( (array!666 (arr!320 (Array (_ BitVec 32) ValueCell!167)) (size!382 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!665)

(declare-fun mapDefault!524 () ValueCell!167)

