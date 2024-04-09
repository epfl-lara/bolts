; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99132 () Bool)

(assert start!99132)

(declare-fun b_free!24701 () Bool)

(declare-fun b_next!24701 () Bool)

(assert (=> start!99132 (= b_free!24701 (not b_next!24701))))

(declare-fun tp!86814 () Bool)

(declare-fun b_and!40265 () Bool)

(assert (=> start!99132 (= tp!86814 b_and!40265)))

(declare-fun b!1165482 () Bool)

(declare-fun e!662594 () Bool)

(declare-fun e!662593 () Bool)

(declare-fun mapRes!45671 () Bool)

(assert (=> b!1165482 (= e!662594 (and e!662593 mapRes!45671))))

(declare-fun condMapEmpty!45671 () Bool)

(declare-datatypes ((V!44101 0))(
  ( (V!44102 (val!14672 Int)) )
))
(declare-datatypes ((ValueCell!13906 0))(
  ( (ValueCellFull!13906 (v!17310 V!44101)) (EmptyCell!13906) )
))
(declare-datatypes ((array!75246 0))(
  ( (array!75247 (arr!36270 (Array (_ BitVec 32) ValueCell!13906)) (size!36807 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75246)

(declare-fun mapDefault!45671 () ValueCell!13906)

