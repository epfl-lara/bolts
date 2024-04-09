; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99236 () Bool)

(assert start!99236)

(declare-fun b_free!24805 () Bool)

(declare-fun b_next!24805 () Bool)

(assert (=> start!99236 (= b_free!24805 (not b_next!24805))))

(declare-fun tp!87126 () Bool)

(declare-fun b_and!40473 () Bool)

(assert (=> start!99236 (= tp!87126 b_and!40473)))

(declare-fun b!1167907 () Bool)

(declare-fun e!663824 () Bool)

(declare-fun e!663825 () Bool)

(declare-fun mapRes!45827 () Bool)

(assert (=> b!1167907 (= e!663824 (and e!663825 mapRes!45827))))

(declare-fun condMapEmpty!45827 () Bool)

(declare-datatypes ((V!44241 0))(
  ( (V!44242 (val!14724 Int)) )
))
(declare-datatypes ((ValueCell!13958 0))(
  ( (ValueCellFull!13958 (v!17362 V!44241)) (EmptyCell!13958) )
))
(declare-datatypes ((array!75448 0))(
  ( (array!75449 (arr!36371 (Array (_ BitVec 32) ValueCell!13958)) (size!36908 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75448)

(declare-fun mapDefault!45827 () ValueCell!13958)

