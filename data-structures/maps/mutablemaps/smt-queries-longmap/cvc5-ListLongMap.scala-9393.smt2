; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111830 () Bool)

(assert start!111830)

(declare-fun b_free!30451 () Bool)

(declare-fun b_next!30451 () Bool)

(assert (=> start!111830 (= b_free!30451 (not b_next!30451))))

(declare-fun tp!106830 () Bool)

(declare-fun b_and!48999 () Bool)

(assert (=> start!111830 (= tp!106830 b_and!48999)))

(declare-fun b!1324667 () Bool)

(declare-fun res!879339 () Bool)

(declare-fun e!755195 () Bool)

(assert (=> b!1324667 (=> (not res!879339) (not e!755195))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53465 0))(
  ( (V!53466 (val!18210 Int)) )
))
(declare-fun zeroValue!1279 () V!53465)

(declare-datatypes ((ValueCell!17237 0))(
  ( (ValueCellFull!17237 (v!20838 V!53465)) (EmptyCell!17237) )
))
(declare-datatypes ((array!89411 0))(
  ( (array!89412 (arr!43175 (Array (_ BitVec 32) ValueCell!17237)) (size!43726 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89411)

(declare-fun minValue!1279 () V!53465)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((array!89413 0))(
  ( (array!89414 (arr!43176 (Array (_ BitVec 32) (_ BitVec 64))) (size!43727 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89413)

(declare-datatypes ((tuple2!23636 0))(
  ( (tuple2!23637 (_1!11828 (_ BitVec 64)) (_2!11828 V!53465)) )
))
(declare-datatypes ((List!30806 0))(
  ( (Nil!30803) (Cons!30802 (h!32011 tuple2!23636) (t!44739 List!30806)) )
))
(declare-datatypes ((ListLongMap!21305 0))(
  ( (ListLongMap!21306 (toList!10668 List!30806)) )
))
(declare-fun contains!8759 (ListLongMap!21305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5605 (array!89413 array!89411 (_ BitVec 32) (_ BitVec 32) V!53465 V!53465 (_ BitVec 32) Int) ListLongMap!21305)

(assert (=> b!1324667 (= res!879339 (contains!8759 (getCurrentListMap!5605 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapIsEmpty!56054 () Bool)

(declare-fun mapRes!56054 () Bool)

(assert (=> mapIsEmpty!56054 mapRes!56054))

(declare-fun b!1324669 () Bool)

(declare-fun e!755194 () Bool)

(declare-fun e!755193 () Bool)

(assert (=> b!1324669 (= e!755194 (and e!755193 mapRes!56054))))

(declare-fun condMapEmpty!56054 () Bool)

(declare-fun mapDefault!56054 () ValueCell!17237)

