; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84368 () Bool)

(assert start!84368)

(declare-fun mapIsEmpty!36743 () Bool)

(declare-fun mapRes!36743 () Bool)

(assert (=> mapIsEmpty!36743 mapRes!36743))

(declare-fun b!986411 () Bool)

(declare-fun res!660064 () Bool)

(declare-fun e!556231 () Bool)

(assert (=> b!986411 (=> (not res!660064) (not e!556231))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35841 0))(
  ( (V!35842 (val!11622 Int)) )
))
(declare-datatypes ((ValueCell!11090 0))(
  ( (ValueCellFull!11090 (v!14184 V!35841)) (EmptyCell!11090) )
))
(declare-datatypes ((array!62237 0))(
  ( (array!62238 (arr!29972 (Array (_ BitVec 32) ValueCell!11090)) (size!30452 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62237)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62239 0))(
  ( (array!62240 (arr!29973 (Array (_ BitVec 32) (_ BitVec 64))) (size!30453 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62239)

(assert (=> b!986411 (= res!660064 (and (= (size!30452 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30453 _keys!1544) (size!30452 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36743 () Bool)

(declare-fun tp!69599 () Bool)

(declare-fun e!556233 () Bool)

(assert (=> mapNonEmpty!36743 (= mapRes!36743 (and tp!69599 e!556233))))

(declare-fun mapValue!36743 () ValueCell!11090)

(declare-fun mapKey!36743 () (_ BitVec 32))

(declare-fun mapRest!36743 () (Array (_ BitVec 32) ValueCell!11090))

(assert (=> mapNonEmpty!36743 (= (arr!29972 _values!1278) (store mapRest!36743 mapKey!36743 mapValue!36743))))

(declare-fun b!986412 () Bool)

(declare-fun e!556235 () Bool)

(declare-fun e!556234 () Bool)

(assert (=> b!986412 (= e!556235 (and e!556234 mapRes!36743))))

(declare-fun condMapEmpty!36743 () Bool)

(declare-fun mapDefault!36743 () ValueCell!11090)

