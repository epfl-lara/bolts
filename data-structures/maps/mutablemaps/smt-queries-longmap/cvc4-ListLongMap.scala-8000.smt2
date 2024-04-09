; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98880 () Bool)

(assert start!98880)

(declare-fun b_free!24449 () Bool)

(declare-fun b_next!24449 () Bool)

(assert (=> start!98880 (= b_free!24449 (not b_next!24449))))

(declare-fun tp!86059 () Bool)

(declare-fun b_and!39761 () Bool)

(assert (=> start!98880 (= tp!86059 b_and!39761)))

(declare-fun b!1155602 () Bool)

(declare-fun res!767817 () Bool)

(declare-fun e!657243 () Bool)

(assert (=> b!1155602 (=> (not res!767817) (not e!657243))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155602 (= res!767817 (validKeyInArray!0 k!934))))

(declare-fun b!1155603 () Bool)

(declare-fun e!657241 () Bool)

(declare-fun tp_is_empty!28979 () Bool)

(assert (=> b!1155603 (= e!657241 tp_is_empty!28979)))

(declare-fun bm!54926 () Bool)

(declare-fun call!54934 () Bool)

(declare-fun call!54936 () Bool)

(assert (=> bm!54926 (= call!54934 call!54936)))

(declare-fun b!1155604 () Bool)

(declare-fun e!657240 () Bool)

(declare-fun mapRes!45293 () Bool)

(assert (=> b!1155604 (= e!657240 (and e!657241 mapRes!45293))))

(declare-fun condMapEmpty!45293 () Bool)

(declare-datatypes ((V!43765 0))(
  ( (V!43766 (val!14546 Int)) )
))
(declare-datatypes ((ValueCell!13780 0))(
  ( (ValueCellFull!13780 (v!17184 V!43765)) (EmptyCell!13780) )
))
(declare-datatypes ((array!74754 0))(
  ( (array!74755 (arr!36024 (Array (_ BitVec 32) ValueCell!13780)) (size!36561 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74754)

(declare-fun mapDefault!45293 () ValueCell!13780)

