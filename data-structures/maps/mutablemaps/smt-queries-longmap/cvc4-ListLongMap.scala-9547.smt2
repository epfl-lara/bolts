; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113184 () Bool)

(assert start!113184)

(declare-fun b_free!31199 () Bool)

(declare-fun b_next!31199 () Bool)

(assert (=> start!113184 (= b_free!31199 (not b_next!31199))))

(declare-fun tp!109402 () Bool)

(declare-fun b_and!50315 () Bool)

(assert (=> start!113184 (= tp!109402 b_and!50315)))

(declare-fun b!1341574 () Bool)

(declare-fun res!890103 () Bool)

(declare-fun e!763945 () Bool)

(assert (=> b!1341574 (=> (not res!890103) (not e!763945))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91207 0))(
  ( (array!91208 (arr!44055 (Array (_ BitVec 32) (_ BitVec 64))) (size!44606 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91207)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341574 (= res!890103 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44606 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341575 () Bool)

(declare-fun res!890107 () Bool)

(assert (=> b!1341575 (=> (not res!890107) (not e!763945))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91207 (_ BitVec 32)) Bool)

(assert (=> b!1341575 (= res!890107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!890105 () Bool)

(assert (=> start!113184 (=> (not res!890105) (not e!763945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113184 (= res!890105 (validMask!0 mask!1977))))

(assert (=> start!113184 e!763945))

(declare-fun tp_is_empty!37199 () Bool)

(assert (=> start!113184 tp_is_empty!37199))

(assert (=> start!113184 true))

(declare-fun array_inv!33127 (array!91207) Bool)

(assert (=> start!113184 (array_inv!33127 _keys!1571)))

(declare-datatypes ((V!54701 0))(
  ( (V!54702 (val!18674 Int)) )
))
(declare-datatypes ((ValueCell!17701 0))(
  ( (ValueCellFull!17701 (v!21320 V!54701)) (EmptyCell!17701) )
))
(declare-datatypes ((array!91209 0))(
  ( (array!91210 (arr!44056 (Array (_ BitVec 32) ValueCell!17701)) (size!44607 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91209)

(declare-fun e!763946 () Bool)

(declare-fun array_inv!33128 (array!91209) Bool)

(assert (=> start!113184 (and (array_inv!33128 _values!1303) e!763946)))

(assert (=> start!113184 tp!109402))

(declare-fun b!1341576 () Bool)

(declare-fun e!763942 () Bool)

(assert (=> b!1341576 (= e!763942 tp_is_empty!37199)))

(declare-fun b!1341577 () Bool)

(declare-fun e!763944 () Bool)

(declare-fun mapRes!57505 () Bool)

(assert (=> b!1341577 (= e!763946 (and e!763944 mapRes!57505))))

(declare-fun condMapEmpty!57505 () Bool)

(declare-fun mapDefault!57505 () ValueCell!17701)

