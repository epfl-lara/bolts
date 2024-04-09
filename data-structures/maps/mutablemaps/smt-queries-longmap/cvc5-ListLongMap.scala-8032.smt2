; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99068 () Bool)

(assert start!99068)

(declare-fun b_free!24637 () Bool)

(declare-fun b_next!24637 () Bool)

(assert (=> start!99068 (= b_free!24637 (not b_next!24637))))

(declare-fun tp!86623 () Bool)

(declare-fun b_and!40137 () Bool)

(assert (=> start!99068 (= tp!86623 b_and!40137)))

(declare-fun b!1164074 () Bool)

(declare-fun e!661925 () Bool)

(declare-fun e!661920 () Bool)

(declare-fun mapRes!45575 () Bool)

(assert (=> b!1164074 (= e!661925 (and e!661920 mapRes!45575))))

(declare-fun condMapEmpty!45575 () Bool)

(declare-datatypes ((V!44017 0))(
  ( (V!44018 (val!14640 Int)) )
))
(declare-datatypes ((ValueCell!13874 0))(
  ( (ValueCellFull!13874 (v!17278 V!44017)) (EmptyCell!13874) )
))
(declare-datatypes ((array!75120 0))(
  ( (array!75121 (arr!36207 (Array (_ BitVec 32) ValueCell!13874)) (size!36744 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75120)

(declare-fun mapDefault!45575 () ValueCell!13874)

