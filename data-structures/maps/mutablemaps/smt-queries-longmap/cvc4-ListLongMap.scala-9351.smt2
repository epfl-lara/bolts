; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111582 () Bool)

(assert start!111582)

(declare-fun b_free!30203 () Bool)

(declare-fun b_next!30203 () Bool)

(assert (=> start!111582 (= b_free!30203 (not b_next!30203))))

(declare-fun tp!106085 () Bool)

(declare-fun b_and!48575 () Bool)

(assert (=> start!111582 (= tp!106085 b_and!48575)))

(declare-fun mapNonEmpty!55682 () Bool)

(declare-fun mapRes!55682 () Bool)

(declare-fun tp!106086 () Bool)

(declare-fun e!753333 () Bool)

(assert (=> mapNonEmpty!55682 (= mapRes!55682 (and tp!106086 e!753333))))

(declare-datatypes ((V!53133 0))(
  ( (V!53134 (val!18086 Int)) )
))
(declare-datatypes ((ValueCell!17113 0))(
  ( (ValueCellFull!17113 (v!20714 V!53133)) (EmptyCell!17113) )
))
(declare-fun mapValue!55682 () ValueCell!17113)

(declare-fun mapRest!55682 () (Array (_ BitVec 32) ValueCell!17113))

(declare-fun mapKey!55682 () (_ BitVec 32))

(declare-datatypes ((array!88939 0))(
  ( (array!88940 (arr!42939 (Array (_ BitVec 32) ValueCell!17113)) (size!43490 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88939)

(assert (=> mapNonEmpty!55682 (= (arr!42939 _values!1337) (store mapRest!55682 mapKey!55682 mapValue!55682))))

(declare-fun b!1320669 () Bool)

(declare-fun res!876634 () Bool)

(declare-fun e!753336 () Bool)

(assert (=> b!1320669 (=> (not res!876634) (not e!753336))))

(declare-datatypes ((array!88941 0))(
  ( (array!88942 (arr!42940 (Array (_ BitVec 32) (_ BitVec 64))) (size!43491 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88941)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88941 (_ BitVec 32)) Bool)

(assert (=> b!1320669 (= res!876634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320670 () Bool)

(declare-fun res!876633 () Bool)

(assert (=> b!1320670 (=> (not res!876633) (not e!753336))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320670 (= res!876633 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43491 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320671 () Bool)

(declare-fun e!753335 () Bool)

(declare-fun e!753337 () Bool)

(assert (=> b!1320671 (= e!753335 (and e!753337 mapRes!55682))))

(declare-fun condMapEmpty!55682 () Bool)

(declare-fun mapDefault!55682 () ValueCell!17113)

