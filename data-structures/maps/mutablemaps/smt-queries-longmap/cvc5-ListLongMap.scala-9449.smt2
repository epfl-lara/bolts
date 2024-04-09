; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112338 () Bool)

(assert start!112338)

(declare-fun b_free!30697 () Bool)

(declare-fun b_next!30697 () Bool)

(assert (=> start!112338 (= b_free!30697 (not b_next!30697))))

(declare-fun tp!107729 () Bool)

(declare-fun b_and!49459 () Bool)

(assert (=> start!112338 (= tp!107729 b_and!49459)))

(declare-fun b!1330704 () Bool)

(declare-fun e!758401 () Bool)

(declare-fun tp_is_empty!36607 () Bool)

(assert (=> b!1330704 (= e!758401 tp_is_empty!36607)))

(declare-fun b!1330705 () Bool)

(declare-fun res!883093 () Bool)

(declare-fun e!758403 () Bool)

(assert (=> b!1330705 (=> (not res!883093) (not e!758403))))

(declare-datatypes ((array!90067 0))(
  ( (array!90068 (arr!43495 (Array (_ BitVec 32) (_ BitVec 64))) (size!44046 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90067)

(declare-datatypes ((List!31004 0))(
  ( (Nil!31001) (Cons!31000 (h!32209 (_ BitVec 64)) (t!45121 List!31004)) )
))
(declare-fun arrayNoDuplicates!0 (array!90067 (_ BitVec 32) List!31004) Bool)

(assert (=> b!1330705 (= res!883093 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31001))))

(declare-fun mapIsEmpty!56584 () Bool)

(declare-fun mapRes!56584 () Bool)

(assert (=> mapIsEmpty!56584 mapRes!56584))

(declare-fun b!1330706 () Bool)

(declare-fun res!883088 () Bool)

(assert (=> b!1330706 (=> (not res!883088) (not e!758403))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330706 (= res!883088 (not (= (select (arr!43495 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330707 () Bool)

(declare-fun e!758400 () Bool)

(assert (=> b!1330707 (= e!758400 (and e!758401 mapRes!56584))))

(declare-fun condMapEmpty!56584 () Bool)

(declare-datatypes ((V!53913 0))(
  ( (V!53914 (val!18378 Int)) )
))
(declare-datatypes ((ValueCell!17405 0))(
  ( (ValueCellFull!17405 (v!21013 V!53913)) (EmptyCell!17405) )
))
(declare-datatypes ((array!90069 0))(
  ( (array!90070 (arr!43496 (Array (_ BitVec 32) ValueCell!17405)) (size!44047 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90069)

(declare-fun mapDefault!56584 () ValueCell!17405)

