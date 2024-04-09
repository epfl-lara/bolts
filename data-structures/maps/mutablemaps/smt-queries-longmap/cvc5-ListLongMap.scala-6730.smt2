; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84380 () Bool)

(assert start!84380)

(declare-fun res!660118 () Bool)

(declare-fun e!556325 () Bool)

(assert (=> start!84380 (=> (not res!660118) (not e!556325))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84380 (= res!660118 (validMask!0 mask!1948))))

(assert (=> start!84380 e!556325))

(assert (=> start!84380 true))

(declare-datatypes ((V!35857 0))(
  ( (V!35858 (val!11628 Int)) )
))
(declare-datatypes ((ValueCell!11096 0))(
  ( (ValueCellFull!11096 (v!14190 V!35857)) (EmptyCell!11096) )
))
(declare-datatypes ((array!62259 0))(
  ( (array!62260 (arr!29983 (Array (_ BitVec 32) ValueCell!11096)) (size!30463 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62259)

(declare-fun e!556321 () Bool)

(declare-fun array_inv!23035 (array!62259) Bool)

(assert (=> start!84380 (and (array_inv!23035 _values!1278) e!556321)))

(declare-datatypes ((array!62261 0))(
  ( (array!62262 (arr!29984 (Array (_ BitVec 32) (_ BitVec 64))) (size!30464 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62261)

(declare-fun array_inv!23036 (array!62261) Bool)

(assert (=> start!84380 (array_inv!23036 _keys!1544)))

(declare-fun b!986518 () Bool)

(declare-fun e!556323 () Bool)

(declare-fun mapRes!36761 () Bool)

(assert (=> b!986518 (= e!556321 (and e!556323 mapRes!36761))))

(declare-fun condMapEmpty!36761 () Bool)

(declare-fun mapDefault!36761 () ValueCell!11096)

