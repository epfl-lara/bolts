; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112708 () Bool)

(assert start!112708)

(declare-fun b_free!31009 () Bool)

(declare-fun b_next!31009 () Bool)

(assert (=> start!112708 (= b_free!31009 (not b_next!31009))))

(declare-fun tp!108669 () Bool)

(declare-fun b_and!49965 () Bool)

(assert (=> start!112708 (= tp!108669 b_and!49965)))

(declare-fun b!1336380 () Bool)

(declare-fun res!886963 () Bool)

(declare-fun e!761067 () Bool)

(assert (=> b!1336380 (=> (not res!886963) (not e!761067))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90671 0))(
  ( (array!90672 (arr!43796 (Array (_ BitVec 32) (_ BitVec 64))) (size!44347 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90671)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1336380 (= res!886963 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44347 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336381 () Bool)

(declare-fun e!761066 () Bool)

(declare-fun tp_is_empty!36919 () Bool)

(assert (=> b!1336381 (= e!761066 tp_is_empty!36919)))

(declare-fun b!1336382 () Bool)

(declare-fun e!761068 () Bool)

(declare-fun e!761064 () Bool)

(declare-fun mapRes!57056 () Bool)

(assert (=> b!1336382 (= e!761068 (and e!761064 mapRes!57056))))

(declare-fun condMapEmpty!57056 () Bool)

(declare-datatypes ((V!54329 0))(
  ( (V!54330 (val!18534 Int)) )
))
(declare-datatypes ((ValueCell!17561 0))(
  ( (ValueCellFull!17561 (v!21172 V!54329)) (EmptyCell!17561) )
))
(declare-datatypes ((array!90673 0))(
  ( (array!90674 (arr!43797 (Array (_ BitVec 32) ValueCell!17561)) (size!44348 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90673)

(declare-fun mapDefault!57056 () ValueCell!17561)

