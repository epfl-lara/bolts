; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111834 () Bool)

(assert start!111834)

(declare-fun b_free!30455 () Bool)

(declare-fun b_next!30455 () Bool)

(assert (=> start!111834 (= b_free!30455 (not b_next!30455))))

(declare-fun tp!106841 () Bool)

(declare-fun b_and!49003 () Bool)

(assert (=> start!111834 (= tp!106841 b_and!49003)))

(declare-fun mapNonEmpty!56060 () Bool)

(declare-fun mapRes!56060 () Bool)

(declare-fun tp!106842 () Bool)

(declare-fun e!755227 () Bool)

(assert (=> mapNonEmpty!56060 (= mapRes!56060 (and tp!106842 e!755227))))

(declare-datatypes ((V!53469 0))(
  ( (V!53470 (val!18212 Int)) )
))
(declare-datatypes ((ValueCell!17239 0))(
  ( (ValueCellFull!17239 (v!20840 V!53469)) (EmptyCell!17239) )
))
(declare-fun mapRest!56060 () (Array (_ BitVec 32) ValueCell!17239))

(declare-datatypes ((array!89419 0))(
  ( (array!89420 (arr!43179 (Array (_ BitVec 32) ValueCell!17239)) (size!43730 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89419)

(declare-fun mapValue!56060 () ValueCell!17239)

(declare-fun mapKey!56060 () (_ BitVec 32))

(assert (=> mapNonEmpty!56060 (= (arr!43179 _values!1337) (store mapRest!56060 mapKey!56060 mapValue!56060))))

(declare-fun b!1324733 () Bool)

(declare-fun res!879387 () Bool)

(declare-fun e!755226 () Bool)

(assert (=> b!1324733 (=> (not res!879387) (not e!755226))))

(declare-datatypes ((array!89421 0))(
  ( (array!89422 (arr!43180 (Array (_ BitVec 32) (_ BitVec 64))) (size!43731 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89421)

(declare-datatypes ((List!30809 0))(
  ( (Nil!30806) (Cons!30805 (h!32014 (_ BitVec 64)) (t!44742 List!30809)) )
))
(declare-fun arrayNoDuplicates!0 (array!89421 (_ BitVec 32) List!30809) Bool)

(assert (=> b!1324733 (= res!879387 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30806))))

(declare-fun b!1324734 () Bool)

(declare-fun e!755223 () Bool)

(declare-fun e!755224 () Bool)

(assert (=> b!1324734 (= e!755223 (and e!755224 mapRes!56060))))

(declare-fun condMapEmpty!56060 () Bool)

(declare-fun mapDefault!56060 () ValueCell!17239)

