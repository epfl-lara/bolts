; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98474 () Bool)

(assert start!98474)

(declare-fun b_free!24043 () Bool)

(declare-fun b_next!24043 () Bool)

(assert (=> start!98474 (= b_free!24043 (not b_next!24043))))

(declare-fun tp!84840 () Bool)

(declare-fun b_and!38949 () Bool)

(assert (=> start!98474 (= tp!84840 b_and!38949)))

(declare-fun b!1137158 () Bool)

(declare-fun res!758917 () Bool)

(declare-fun e!647128 () Bool)

(assert (=> b!1137158 (=> (not res!758917) (not e!647128))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137158 (= res!758917 (validKeyInArray!0 k!934))))

(declare-fun b!1137159 () Bool)

(declare-fun e!647127 () Bool)

(declare-fun e!647130 () Bool)

(declare-fun mapRes!44684 () Bool)

(assert (=> b!1137159 (= e!647127 (and e!647130 mapRes!44684))))

(declare-fun condMapEmpty!44684 () Bool)

(declare-datatypes ((V!43225 0))(
  ( (V!43226 (val!14343 Int)) )
))
(declare-datatypes ((ValueCell!13577 0))(
  ( (ValueCellFull!13577 (v!16981 V!43225)) (EmptyCell!13577) )
))
(declare-datatypes ((array!73966 0))(
  ( (array!73967 (arr!35630 (Array (_ BitVec 32) ValueCell!13577)) (size!36167 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73966)

(declare-fun mapDefault!44684 () ValueCell!13577)

