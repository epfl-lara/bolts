; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99454 () Bool)

(assert start!99454)

(declare-fun b_free!24997 () Bool)

(declare-fun b_next!24997 () Bool)

(assert (=> start!99454 (= b_free!24997 (not b_next!24997))))

(declare-fun tp!87705 () Bool)

(declare-fun b_and!40875 () Bool)

(assert (=> start!99454 (= tp!87705 b_and!40875)))

(declare-fun b!1173787 () Bool)

(declare-fun res!779538 () Bool)

(declare-fun e!667234 () Bool)

(assert (=> b!1173787 (=> (not res!779538) (not e!667234))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75830 0))(
  ( (array!75831 (arr!36561 (Array (_ BitVec 32) (_ BitVec 64))) (size!37098 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75830)

(assert (=> b!1173787 (= res!779538 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37098 _keys!1208))))))

(declare-fun e!667229 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1173788 () Bool)

(declare-fun arrayContainsKey!0 (array!75830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173788 (= e!667229 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173789 () Bool)

(declare-fun e!667233 () Bool)

(declare-fun e!667230 () Bool)

(declare-fun mapRes!46118 () Bool)

(assert (=> b!1173789 (= e!667233 (and e!667230 mapRes!46118))))

(declare-fun condMapEmpty!46118 () Bool)

(declare-datatypes ((V!44497 0))(
  ( (V!44498 (val!14820 Int)) )
))
(declare-datatypes ((ValueCell!14054 0))(
  ( (ValueCellFull!14054 (v!17459 V!44497)) (EmptyCell!14054) )
))
(declare-datatypes ((array!75832 0))(
  ( (array!75833 (arr!36562 (Array (_ BitVec 32) ValueCell!14054)) (size!37099 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75832)

(declare-fun mapDefault!46118 () ValueCell!14054)

