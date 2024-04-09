; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97532 () Bool)

(assert start!97532)

(declare-fun b!1112884 () Bool)

(declare-fun res!742789 () Bool)

(declare-fun e!634493 () Bool)

(assert (=> b!1112884 (=> (not res!742789) (not e!634493))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112884 (= res!742789 (validMask!0 mask!1564))))

(declare-fun b!1112885 () Bool)

(declare-fun res!742788 () Bool)

(assert (=> b!1112885 (=> (not res!742788) (not e!634493))))

(declare-datatypes ((array!72310 0))(
  ( (array!72311 (arr!34804 (Array (_ BitVec 32) (_ BitVec 64))) (size!35341 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72310)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1112885 (= res!742788 (= (select (arr!34804 _keys!1208) i!673) k!934))))

(declare-fun b!1112886 () Bool)

(declare-fun e!634489 () Bool)

(declare-fun e!634491 () Bool)

(declare-fun mapRes!43408 () Bool)

(assert (=> b!1112886 (= e!634489 (and e!634491 mapRes!43408))))

(declare-fun condMapEmpty!43408 () Bool)

(declare-datatypes ((V!42097 0))(
  ( (V!42098 (val!13920 Int)) )
))
(declare-datatypes ((ValueCell!13154 0))(
  ( (ValueCellFull!13154 (v!16554 V!42097)) (EmptyCell!13154) )
))
(declare-datatypes ((array!72312 0))(
  ( (array!72313 (arr!34805 (Array (_ BitVec 32) ValueCell!13154)) (size!35342 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72312)

(declare-fun mapDefault!43408 () ValueCell!13154)

