; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111600 () Bool)

(assert start!111600)

(declare-fun b_free!30221 () Bool)

(declare-fun b_next!30221 () Bool)

(assert (=> start!111600 (= b_free!30221 (not b_next!30221))))

(declare-fun tp!106139 () Bool)

(declare-fun b_and!48611 () Bool)

(assert (=> start!111600 (= tp!106139 b_and!48611)))

(declare-fun b!1320984 () Bool)

(declare-fun res!876856 () Bool)

(declare-fun e!753472 () Bool)

(assert (=> b!1320984 (=> (not res!876856) (not e!753472))))

(declare-datatypes ((array!88975 0))(
  ( (array!88976 (arr!42957 (Array (_ BitVec 32) (_ BitVec 64))) (size!43508 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88975)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53157 0))(
  ( (V!53158 (val!18095 Int)) )
))
(declare-datatypes ((ValueCell!17122 0))(
  ( (ValueCellFull!17122 (v!20723 V!53157)) (EmptyCell!17122) )
))
(declare-datatypes ((array!88977 0))(
  ( (array!88978 (arr!42958 (Array (_ BitVec 32) ValueCell!17122)) (size!43509 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88977)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1320984 (= res!876856 (and (= (size!43509 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43508 _keys!1609) (size!43509 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320985 () Bool)

(declare-fun res!876854 () Bool)

(assert (=> b!1320985 (=> (not res!876854) (not e!753472))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320985 (= res!876854 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43508 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320986 () Bool)

(declare-fun e!753470 () Bool)

(declare-fun e!753468 () Bool)

(declare-fun mapRes!55709 () Bool)

(assert (=> b!1320986 (= e!753470 (and e!753468 mapRes!55709))))

(declare-fun condMapEmpty!55709 () Bool)

(declare-fun mapDefault!55709 () ValueCell!17122)

