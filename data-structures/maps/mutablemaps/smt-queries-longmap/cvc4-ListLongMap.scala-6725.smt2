; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84354 () Bool)

(assert start!84354)

(declare-fun mapNonEmpty!36722 () Bool)

(declare-fun mapRes!36722 () Bool)

(declare-fun tp!69578 () Bool)

(declare-fun e!556130 () Bool)

(assert (=> mapNonEmpty!36722 (= mapRes!36722 (and tp!69578 e!556130))))

(declare-datatypes ((V!35821 0))(
  ( (V!35822 (val!11615 Int)) )
))
(declare-datatypes ((ValueCell!11083 0))(
  ( (ValueCellFull!11083 (v!14177 V!35821)) (EmptyCell!11083) )
))
(declare-fun mapRest!36722 () (Array (_ BitVec 32) ValueCell!11083))

(declare-datatypes ((array!62209 0))(
  ( (array!62210 (arr!29958 (Array (_ BitVec 32) ValueCell!11083)) (size!30438 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62209)

(declare-fun mapValue!36722 () ValueCell!11083)

(declare-fun mapKey!36722 () (_ BitVec 32))

(assert (=> mapNonEmpty!36722 (= (arr!29958 _values!1278) (store mapRest!36722 mapKey!36722 mapValue!36722))))

(declare-fun b!986284 () Bool)

(declare-fun tp_is_empty!23129 () Bool)

(assert (=> b!986284 (= e!556130 tp_is_empty!23129)))

(declare-fun res!660002 () Bool)

(declare-fun e!556129 () Bool)

(assert (=> start!84354 (=> (not res!660002) (not e!556129))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84354 (= res!660002 (validMask!0 mask!1948))))

(assert (=> start!84354 e!556129))

(assert (=> start!84354 true))

(declare-fun e!556127 () Bool)

(declare-fun array_inv!23019 (array!62209) Bool)

(assert (=> start!84354 (and (array_inv!23019 _values!1278) e!556127)))

(declare-datatypes ((array!62211 0))(
  ( (array!62212 (arr!29959 (Array (_ BitVec 32) (_ BitVec 64))) (size!30439 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62211)

(declare-fun array_inv!23020 (array!62211) Bool)

(assert (=> start!84354 (array_inv!23020 _keys!1544)))

(declare-fun b!986285 () Bool)

(declare-fun res!660003 () Bool)

(assert (=> b!986285 (=> (not res!660003) (not e!556129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62211 (_ BitVec 32)) Bool)

(assert (=> b!986285 (= res!660003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986286 () Bool)

(assert (=> b!986286 (= e!556129 false)))

(declare-fun lt!437434 () Bool)

(declare-datatypes ((List!20855 0))(
  ( (Nil!20852) (Cons!20851 (h!22013 (_ BitVec 64)) (t!29762 List!20855)) )
))
(declare-fun arrayNoDuplicates!0 (array!62211 (_ BitVec 32) List!20855) Bool)

(assert (=> b!986286 (= lt!437434 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20852))))

(declare-fun b!986287 () Bool)

(declare-fun res!660001 () Bool)

(assert (=> b!986287 (=> (not res!660001) (not e!556129))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986287 (= res!660001 (and (= (size!30438 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30439 _keys!1544) (size!30438 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36722 () Bool)

(assert (=> mapIsEmpty!36722 mapRes!36722))

(declare-fun b!986288 () Bool)

(declare-fun e!556128 () Bool)

(assert (=> b!986288 (= e!556127 (and e!556128 mapRes!36722))))

(declare-fun condMapEmpty!36722 () Bool)

(declare-fun mapDefault!36722 () ValueCell!11083)

