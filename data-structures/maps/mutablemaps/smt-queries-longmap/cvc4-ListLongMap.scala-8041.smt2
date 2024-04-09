; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99126 () Bool)

(assert start!99126)

(declare-fun b_free!24695 () Bool)

(declare-fun b_next!24695 () Bool)

(assert (=> start!99126 (= b_free!24695 (not b_next!24695))))

(declare-fun tp!86796 () Bool)

(declare-fun b_and!40253 () Bool)

(assert (=> start!99126 (= tp!86796 b_and!40253)))

(declare-fun b!1165350 () Bool)

(declare-fun res!772963 () Bool)

(declare-fun e!662533 () Bool)

(assert (=> b!1165350 (=> (not res!772963) (not e!662533))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75234 0))(
  ( (array!75235 (arr!36264 (Array (_ BitVec 32) (_ BitVec 64))) (size!36801 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75234)

(assert (=> b!1165350 (= res!772963 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36801 _keys!1208))))))

(declare-fun b!1165351 () Bool)

(declare-fun e!662531 () Bool)

(declare-fun e!662529 () Bool)

(declare-fun mapRes!45662 () Bool)

(assert (=> b!1165351 (= e!662531 (and e!662529 mapRes!45662))))

(declare-fun condMapEmpty!45662 () Bool)

(declare-datatypes ((V!44093 0))(
  ( (V!44094 (val!14669 Int)) )
))
(declare-datatypes ((ValueCell!13903 0))(
  ( (ValueCellFull!13903 (v!17307 V!44093)) (EmptyCell!13903) )
))
(declare-datatypes ((array!75236 0))(
  ( (array!75237 (arr!36265 (Array (_ BitVec 32) ValueCell!13903)) (size!36802 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75236)

(declare-fun mapDefault!45662 () ValueCell!13903)

