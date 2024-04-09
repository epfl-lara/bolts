; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111998 () Bool)

(assert start!111998)

(declare-fun b_free!30535 () Bool)

(declare-fun b_next!30535 () Bool)

(assert (=> start!111998 (= b_free!30535 (not b_next!30535))))

(declare-fun tp!107088 () Bool)

(declare-fun b_and!49183 () Bool)

(assert (=> start!111998 (= tp!107088 b_and!49183)))

(declare-fun b!1326743 () Bool)

(declare-fun res!880608 () Bool)

(declare-fun e!756209 () Bool)

(assert (=> b!1326743 (=> (not res!880608) (not e!756209))))

(declare-datatypes ((array!89579 0))(
  ( (array!89580 (arr!43257 (Array (_ BitVec 32) (_ BitVec 64))) (size!43808 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89579)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1326743 (= res!880608 (not (= (select (arr!43257 _keys!1609) from!2000) k!1164)))))

(declare-fun res!880605 () Bool)

(assert (=> start!111998 (=> (not res!880605) (not e!756209))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111998 (= res!880605 (validMask!0 mask!2019))))

(assert (=> start!111998 e!756209))

(declare-fun array_inv!32591 (array!89579) Bool)

(assert (=> start!111998 (array_inv!32591 _keys!1609)))

(assert (=> start!111998 true))

(declare-fun tp_is_empty!36355 () Bool)

(assert (=> start!111998 tp_is_empty!36355))

(declare-datatypes ((V!53577 0))(
  ( (V!53578 (val!18252 Int)) )
))
(declare-datatypes ((ValueCell!17279 0))(
  ( (ValueCellFull!17279 (v!20884 V!53577)) (EmptyCell!17279) )
))
(declare-datatypes ((array!89581 0))(
  ( (array!89582 (arr!43258 (Array (_ BitVec 32) ValueCell!17279)) (size!43809 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89581)

(declare-fun e!756210 () Bool)

(declare-fun array_inv!32592 (array!89581) Bool)

(assert (=> start!111998 (and (array_inv!32592 _values!1337) e!756210)))

(assert (=> start!111998 tp!107088))

(declare-fun b!1326744 () Bool)

(declare-fun res!880606 () Bool)

(assert (=> b!1326744 (=> (not res!880606) (not e!756209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326744 (= res!880606 (not (validKeyInArray!0 (select (arr!43257 _keys!1609) from!2000))))))

(declare-fun b!1326745 () Bool)

(declare-fun e!756212 () Bool)

(declare-fun mapRes!56187 () Bool)

(assert (=> b!1326745 (= e!756210 (and e!756212 mapRes!56187))))

(declare-fun condMapEmpty!56187 () Bool)

(declare-fun mapDefault!56187 () ValueCell!17279)

