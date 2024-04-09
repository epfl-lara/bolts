; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84356 () Bool)

(assert start!84356)

(declare-fun b!986302 () Bool)

(declare-fun e!556144 () Bool)

(declare-fun tp_is_empty!23131 () Bool)

(assert (=> b!986302 (= e!556144 tp_is_empty!23131)))

(declare-fun b!986303 () Bool)

(declare-fun e!556145 () Bool)

(assert (=> b!986303 (= e!556145 tp_is_empty!23131)))

(declare-fun b!986304 () Bool)

(declare-fun res!660012 () Bool)

(declare-fun e!556141 () Bool)

(assert (=> b!986304 (=> (not res!660012) (not e!556141))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35825 0))(
  ( (V!35826 (val!11616 Int)) )
))
(declare-datatypes ((ValueCell!11084 0))(
  ( (ValueCellFull!11084 (v!14178 V!35825)) (EmptyCell!11084) )
))
(declare-datatypes ((array!62213 0))(
  ( (array!62214 (arr!29960 (Array (_ BitVec 32) ValueCell!11084)) (size!30440 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62213)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62215 0))(
  ( (array!62216 (arr!29961 (Array (_ BitVec 32) (_ BitVec 64))) (size!30441 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62215)

(assert (=> b!986304 (= res!660012 (and (= (size!30440 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30441 _keys!1544) (size!30440 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986305 () Bool)

(declare-fun e!556143 () Bool)

(declare-fun mapRes!36725 () Bool)

(assert (=> b!986305 (= e!556143 (and e!556144 mapRes!36725))))

(declare-fun condMapEmpty!36725 () Bool)

(declare-fun mapDefault!36725 () ValueCell!11084)

