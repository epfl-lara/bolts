; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84374 () Bool)

(assert start!84374)

(declare-fun b!986464 () Bool)

(declare-fun e!556278 () Bool)

(declare-fun tp_is_empty!23149 () Bool)

(assert (=> b!986464 (= e!556278 tp_is_empty!23149)))

(declare-fun b!986465 () Bool)

(declare-fun res!660093 () Bool)

(declare-fun e!556276 () Bool)

(assert (=> b!986465 (=> (not res!660093) (not e!556276))))

(declare-datatypes ((array!62249 0))(
  ( (array!62250 (arr!29978 (Array (_ BitVec 32) (_ BitVec 64))) (size!30458 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62249)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62249 (_ BitVec 32)) Bool)

(assert (=> b!986465 (= res!660093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36752 () Bool)

(declare-fun mapRes!36752 () Bool)

(assert (=> mapIsEmpty!36752 mapRes!36752))

(declare-fun b!986466 () Bool)

(declare-fun res!660091 () Bool)

(assert (=> b!986466 (=> (not res!660091) (not e!556276))))

(declare-datatypes ((V!35849 0))(
  ( (V!35850 (val!11625 Int)) )
))
(declare-datatypes ((ValueCell!11093 0))(
  ( (ValueCellFull!11093 (v!14187 V!35849)) (EmptyCell!11093) )
))
(declare-datatypes ((array!62251 0))(
  ( (array!62252 (arr!29979 (Array (_ BitVec 32) ValueCell!11093)) (size!30459 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62251)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986466 (= res!660091 (and (= (size!30459 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30458 _keys!1544) (size!30459 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!660092 () Bool)

(assert (=> start!84374 (=> (not res!660092) (not e!556276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84374 (= res!660092 (validMask!0 mask!1948))))

(assert (=> start!84374 e!556276))

(assert (=> start!84374 true))

(declare-fun e!556277 () Bool)

(declare-fun array_inv!23031 (array!62251) Bool)

(assert (=> start!84374 (and (array_inv!23031 _values!1278) e!556277)))

(declare-fun array_inv!23032 (array!62249) Bool)

(assert (=> start!84374 (array_inv!23032 _keys!1544)))

(declare-fun mapNonEmpty!36752 () Bool)

(declare-fun tp!69608 () Bool)

(assert (=> mapNonEmpty!36752 (= mapRes!36752 (and tp!69608 e!556278))))

(declare-fun mapValue!36752 () ValueCell!11093)

(declare-fun mapKey!36752 () (_ BitVec 32))

(declare-fun mapRest!36752 () (Array (_ BitVec 32) ValueCell!11093))

(assert (=> mapNonEmpty!36752 (= (arr!29979 _values!1278) (store mapRest!36752 mapKey!36752 mapValue!36752))))

(declare-fun b!986467 () Bool)

(declare-fun e!556279 () Bool)

(assert (=> b!986467 (= e!556279 tp_is_empty!23149)))

(declare-fun b!986468 () Bool)

(assert (=> b!986468 (= e!556277 (and e!556279 mapRes!36752))))

(declare-fun condMapEmpty!36752 () Bool)

(declare-fun mapDefault!36752 () ValueCell!11093)

