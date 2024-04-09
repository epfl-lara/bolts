; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111620 () Bool)

(assert start!111620)

(declare-fun b_free!30241 () Bool)

(declare-fun b_next!30241 () Bool)

(assert (=> start!111620 (= b_free!30241 (not b_next!30241))))

(declare-fun tp!106199 () Bool)

(declare-fun b_and!48651 () Bool)

(assert (=> start!111620 (= tp!106199 b_and!48651)))

(declare-fun res!877089 () Bool)

(declare-fun e!753622 () Bool)

(assert (=> start!111620 (=> (not res!877089) (not e!753622))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111620 (= res!877089 (validMask!0 mask!2019))))

(assert (=> start!111620 e!753622))

(declare-datatypes ((array!89011 0))(
  ( (array!89012 (arr!42975 (Array (_ BitVec 32) (_ BitVec 64))) (size!43526 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89011)

(declare-fun array_inv!32403 (array!89011) Bool)

(assert (=> start!111620 (array_inv!32403 _keys!1609)))

(assert (=> start!111620 true))

(declare-fun tp_is_empty!36061 () Bool)

(assert (=> start!111620 tp_is_empty!36061))

(declare-datatypes ((V!53185 0))(
  ( (V!53186 (val!18105 Int)) )
))
(declare-datatypes ((ValueCell!17132 0))(
  ( (ValueCellFull!17132 (v!20733 V!53185)) (EmptyCell!17132) )
))
(declare-datatypes ((array!89013 0))(
  ( (array!89014 (arr!42976 (Array (_ BitVec 32) ValueCell!17132)) (size!43527 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89013)

(declare-fun e!753619 () Bool)

(declare-fun array_inv!32404 (array!89013) Bool)

(assert (=> start!111620 (and (array_inv!32404 _values!1337) e!753619)))

(assert (=> start!111620 tp!106199))

(declare-fun mapNonEmpty!55739 () Bool)

(declare-fun mapRes!55739 () Bool)

(declare-fun tp!106200 () Bool)

(declare-fun e!753620 () Bool)

(assert (=> mapNonEmpty!55739 (= mapRes!55739 (and tp!106200 e!753620))))

(declare-fun mapValue!55739 () ValueCell!17132)

(declare-fun mapRest!55739 () (Array (_ BitVec 32) ValueCell!17132))

(declare-fun mapKey!55739 () (_ BitVec 32))

(assert (=> mapNonEmpty!55739 (= (arr!42976 _values!1337) (store mapRest!55739 mapKey!55739 mapValue!55739))))

(declare-fun b!1321334 () Bool)

(declare-fun e!753618 () Bool)

(assert (=> b!1321334 (= e!753619 (and e!753618 mapRes!55739))))

(declare-fun condMapEmpty!55739 () Bool)

(declare-fun mapDefault!55739 () ValueCell!17132)

