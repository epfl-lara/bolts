; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99162 () Bool)

(assert start!99162)

(declare-fun b_free!24731 () Bool)

(declare-fun b_next!24731 () Bool)

(assert (=> start!99162 (= b_free!24731 (not b_next!24731))))

(declare-fun tp!86904 () Bool)

(declare-fun b_and!40325 () Bool)

(assert (=> start!99162 (= tp!86904 b_and!40325)))

(declare-fun b!1166169 () Bool)

(declare-fun e!662939 () Bool)

(declare-fun e!662935 () Bool)

(declare-fun mapRes!45716 () Bool)

(assert (=> b!1166169 (= e!662939 (and e!662935 mapRes!45716))))

(declare-fun condMapEmpty!45716 () Bool)

(declare-datatypes ((V!44141 0))(
  ( (V!44142 (val!14687 Int)) )
))
(declare-datatypes ((ValueCell!13921 0))(
  ( (ValueCellFull!13921 (v!17325 V!44141)) (EmptyCell!13921) )
))
(declare-datatypes ((array!75302 0))(
  ( (array!75303 (arr!36298 (Array (_ BitVec 32) ValueCell!13921)) (size!36835 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75302)

(declare-fun mapDefault!45716 () ValueCell!13921)

