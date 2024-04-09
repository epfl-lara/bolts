; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134146 () Bool)

(assert start!134146)

(declare-fun b_free!32225 () Bool)

(declare-fun b_next!32225 () Bool)

(assert (=> start!134146 (= b_free!32225 (not b_next!32225))))

(declare-fun tp!113997 () Bool)

(declare-fun b_and!51883 () Bool)

(assert (=> start!134146 (= tp!113997 b_and!51883)))

(declare-fun b!1567300 () Bool)

(declare-fun res!1071265 () Bool)

(declare-fun e!873683 () Bool)

(assert (=> b!1567300 (=> (not res!1071265) (not e!873683))))

(declare-datatypes ((array!104673 0))(
  ( (array!104674 (arr!50516 (Array (_ BitVec 32) (_ BitVec 64))) (size!51067 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104673)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567300 (= res!1071265 (not (validKeyInArray!0 (select (arr!50516 _keys!637) from!782))))))

(declare-fun b!1567301 () Bool)

(declare-fun e!873684 () Bool)

(declare-fun e!873687 () Bool)

(declare-fun mapRes!59910 () Bool)

(assert (=> b!1567301 (= e!873684 (and e!873687 mapRes!59910))))

(declare-fun condMapEmpty!59910 () Bool)

(declare-datatypes ((V!60213 0))(
  ( (V!60214 (val!19586 Int)) )
))
(declare-datatypes ((ValueCell!18472 0))(
  ( (ValueCellFull!18472 (v!22343 V!60213)) (EmptyCell!18472) )
))
(declare-datatypes ((array!104675 0))(
  ( (array!104676 (arr!50517 (Array (_ BitVec 32) ValueCell!18472)) (size!51068 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104675)

(declare-fun mapDefault!59910 () ValueCell!18472)

