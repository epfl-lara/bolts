; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111392 () Bool)

(assert start!111392)

(declare-fun b_free!30013 () Bool)

(declare-fun b_next!30013 () Bool)

(assert (=> start!111392 (= b_free!30013 (not b_next!30013))))

(declare-fun tp!105516 () Bool)

(declare-fun b_and!48243 () Bool)

(assert (=> start!111392 (= tp!105516 b_and!48243)))

(declare-fun b!1317575 () Bool)

(declare-fun e!751910 () Bool)

(declare-fun e!751911 () Bool)

(declare-fun mapRes!55397 () Bool)

(assert (=> b!1317575 (= e!751910 (and e!751911 mapRes!55397))))

(declare-fun condMapEmpty!55397 () Bool)

(declare-datatypes ((V!52881 0))(
  ( (V!52882 (val!17991 Int)) )
))
(declare-datatypes ((ValueCell!17018 0))(
  ( (ValueCellFull!17018 (v!20619 V!52881)) (EmptyCell!17018) )
))
(declare-datatypes ((array!88573 0))(
  ( (array!88574 (arr!42756 (Array (_ BitVec 32) ValueCell!17018)) (size!43307 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88573)

(declare-fun mapDefault!55397 () ValueCell!17018)

