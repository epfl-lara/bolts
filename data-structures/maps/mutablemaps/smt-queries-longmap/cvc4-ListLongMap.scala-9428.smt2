; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112216 () Bool)

(assert start!112216)

(declare-fun b_free!30575 () Bool)

(declare-fun b_next!30575 () Bool)

(assert (=> start!112216 (= b_free!30575 (not b_next!30575))))

(declare-fun tp!107362 () Bool)

(declare-fun b_and!49235 () Bool)

(assert (=> start!112216 (= tp!107362 b_and!49235)))

(declare-fun b!1328491 () Bool)

(declare-fun e!757486 () Bool)

(declare-fun tp_is_empty!36485 () Bool)

(assert (=> b!1328491 (= e!757486 tp_is_empty!36485)))

(declare-fun b!1328492 () Bool)

(declare-fun e!757487 () Bool)

(assert (=> b!1328492 (= e!757487 tp_is_empty!36485)))

(declare-fun b!1328493 () Bool)

(declare-fun e!757489 () Bool)

(declare-fun mapRes!56401 () Bool)

(assert (=> b!1328493 (= e!757489 (and e!757487 mapRes!56401))))

(declare-fun condMapEmpty!56401 () Bool)

(declare-datatypes ((V!53749 0))(
  ( (V!53750 (val!18317 Int)) )
))
(declare-datatypes ((ValueCell!17344 0))(
  ( (ValueCellFull!17344 (v!20952 V!53749)) (EmptyCell!17344) )
))
(declare-datatypes ((array!89831 0))(
  ( (array!89832 (arr!43377 (Array (_ BitVec 32) ValueCell!17344)) (size!43928 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89831)

(declare-fun mapDefault!56401 () ValueCell!17344)

