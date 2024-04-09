; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133924 () Bool)

(assert start!133924)

(declare-fun b_free!32137 () Bool)

(declare-fun b_next!32137 () Bool)

(assert (=> start!133924 (= b_free!32137 (not b_next!32137))))

(declare-fun tp!113711 () Bool)

(declare-fun b_and!51721 () Bool)

(assert (=> start!133924 (= tp!113711 b_and!51721)))

(declare-fun b!1565124 () Bool)

(declare-fun res!1070019 () Bool)

(declare-fun e!872411 () Bool)

(assert (=> b!1565124 (=> (not res!1070019) (not e!872411))))

(declare-datatypes ((array!104483 0))(
  ( (array!104484 (arr!50425 (Array (_ BitVec 32) (_ BitVec 64))) (size!50976 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104483)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565124 (= res!1070019 (validKeyInArray!0 (select (arr!50425 _keys!637) from!782)))))

(declare-fun b!1565125 () Bool)

(declare-fun e!872407 () Bool)

(declare-fun e!872409 () Bool)

(declare-fun mapRes!59755 () Bool)

(assert (=> b!1565125 (= e!872407 (and e!872409 mapRes!59755))))

(declare-fun condMapEmpty!59755 () Bool)

(declare-datatypes ((V!60089 0))(
  ( (V!60090 (val!19539 Int)) )
))
(declare-datatypes ((ValueCell!18425 0))(
  ( (ValueCellFull!18425 (v!22291 V!60089)) (EmptyCell!18425) )
))
(declare-datatypes ((array!104485 0))(
  ( (array!104486 (arr!50426 (Array (_ BitVec 32) ValueCell!18425)) (size!50977 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104485)

(declare-fun mapDefault!59755 () ValueCell!18425)

