; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132180 () Bool)

(assert start!132180)

(declare-fun b_free!31861 () Bool)

(declare-fun b_next!31861 () Bool)

(assert (=> start!132180 (= b_free!31861 (not b_next!31861))))

(declare-fun tp!111836 () Bool)

(declare-fun b_and!51293 () Bool)

(assert (=> start!132180 (= tp!111836 b_and!51293)))

(declare-fun mapIsEmpty!58909 () Bool)

(declare-fun mapRes!58909 () Bool)

(assert (=> mapIsEmpty!58909 mapRes!58909))

(declare-fun b!1550116 () Bool)

(declare-datatypes ((V!59293 0))(
  ( (V!59294 (val!19146 Int)) )
))
(declare-datatypes ((tuple2!24812 0))(
  ( (tuple2!24813 (_1!12416 (_ BitVec 64)) (_2!12416 V!59293)) )
))
(declare-datatypes ((List!36305 0))(
  ( (Nil!36302) (Cons!36301 (h!37747 tuple2!24812) (t!51018 List!36305)) )
))
(declare-datatypes ((ListLongMap!22433 0))(
  ( (ListLongMap!22434 (toList!11232 List!36305)) )
))
(declare-fun e!862898 () ListLongMap!22433)

(declare-fun call!70691 () ListLongMap!22433)

(assert (=> b!1550116 (= e!862898 call!70691)))

(declare-fun b!1550117 () Bool)

(declare-fun e!862905 () Bool)

(declare-fun e!862906 () Bool)

(assert (=> b!1550117 (= e!862905 (and e!862906 mapRes!58909))))

(declare-fun condMapEmpty!58909 () Bool)

(declare-datatypes ((ValueCell!18158 0))(
  ( (ValueCellFull!18158 (v!21944 V!59293)) (EmptyCell!18158) )
))
(declare-datatypes ((array!103433 0))(
  ( (array!103434 (arr!49914 (Array (_ BitVec 32) ValueCell!18158)) (size!50465 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103433)

(declare-fun mapDefault!58909 () ValueCell!18158)

