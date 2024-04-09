; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111774 () Bool)

(assert start!111774)

(declare-fun b_free!30395 () Bool)

(declare-fun b_next!30395 () Bool)

(assert (=> start!111774 (= b_free!30395 (not b_next!30395))))

(declare-fun tp!106661 () Bool)

(declare-fun b_and!48943 () Bool)

(assert (=> start!111774 (= tp!106661 b_and!48943)))

(declare-fun b!1323935 () Bool)

(declare-fun e!754774 () Bool)

(declare-fun tp_is_empty!36215 () Bool)

(assert (=> b!1323935 (= e!754774 tp_is_empty!36215)))

(declare-fun res!878860 () Bool)

(declare-fun e!754775 () Bool)

(assert (=> start!111774 (=> (not res!878860) (not e!754775))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111774 (= res!878860 (validMask!0 mask!2019))))

(assert (=> start!111774 e!754775))

(declare-datatypes ((array!89299 0))(
  ( (array!89300 (arr!43119 (Array (_ BitVec 32) (_ BitVec 64))) (size!43670 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89299)

(declare-fun array_inv!32501 (array!89299) Bool)

(assert (=> start!111774 (array_inv!32501 _keys!1609)))

(assert (=> start!111774 true))

(assert (=> start!111774 tp_is_empty!36215))

(declare-datatypes ((V!53389 0))(
  ( (V!53390 (val!18182 Int)) )
))
(declare-datatypes ((ValueCell!17209 0))(
  ( (ValueCellFull!17209 (v!20810 V!53389)) (EmptyCell!17209) )
))
(declare-datatypes ((array!89301 0))(
  ( (array!89302 (arr!43120 (Array (_ BitVec 32) ValueCell!17209)) (size!43671 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89301)

(declare-fun e!754777 () Bool)

(declare-fun array_inv!32502 (array!89301) Bool)

(assert (=> start!111774 (and (array_inv!32502 _values!1337) e!754777)))

(assert (=> start!111774 tp!106661))

(declare-fun b!1323936 () Bool)

(declare-fun mapRes!55970 () Bool)

(assert (=> b!1323936 (= e!754777 (and e!754774 mapRes!55970))))

(declare-fun condMapEmpty!55970 () Bool)

(declare-fun mapDefault!55970 () ValueCell!17209)

