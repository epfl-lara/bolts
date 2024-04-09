; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84362 () Bool)

(assert start!84362)

(declare-fun b!986356 () Bool)

(declare-fun e!556190 () Bool)

(declare-fun tp_is_empty!23137 () Bool)

(assert (=> b!986356 (= e!556190 tp_is_empty!23137)))

(declare-fun b!986357 () Bool)

(declare-fun e!556189 () Bool)

(assert (=> b!986357 (= e!556189 false)))

(declare-fun lt!437446 () Bool)

(declare-datatypes ((array!62225 0))(
  ( (array!62226 (arr!29966 (Array (_ BitVec 32) (_ BitVec 64))) (size!30446 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62225)

(declare-datatypes ((List!20857 0))(
  ( (Nil!20854) (Cons!20853 (h!22015 (_ BitVec 64)) (t!29764 List!20857)) )
))
(declare-fun arrayNoDuplicates!0 (array!62225 (_ BitVec 32) List!20857) Bool)

(assert (=> b!986357 (= lt!437446 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20854))))

(declare-fun res!660037 () Bool)

(assert (=> start!84362 (=> (not res!660037) (not e!556189))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84362 (= res!660037 (validMask!0 mask!1948))))

(assert (=> start!84362 e!556189))

(assert (=> start!84362 true))

(declare-datatypes ((V!35833 0))(
  ( (V!35834 (val!11619 Int)) )
))
(declare-datatypes ((ValueCell!11087 0))(
  ( (ValueCellFull!11087 (v!14181 V!35833)) (EmptyCell!11087) )
))
(declare-datatypes ((array!62227 0))(
  ( (array!62228 (arr!29967 (Array (_ BitVec 32) ValueCell!11087)) (size!30447 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62227)

(declare-fun e!556188 () Bool)

(declare-fun array_inv!23023 (array!62227) Bool)

(assert (=> start!84362 (and (array_inv!23023 _values!1278) e!556188)))

(declare-fun array_inv!23024 (array!62225) Bool)

(assert (=> start!84362 (array_inv!23024 _keys!1544)))

(declare-fun b!986358 () Bool)

(declare-fun res!660039 () Bool)

(assert (=> b!986358 (=> (not res!660039) (not e!556189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62225 (_ BitVec 32)) Bool)

(assert (=> b!986358 (= res!660039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986359 () Bool)

(declare-fun e!556187 () Bool)

(declare-fun mapRes!36734 () Bool)

(assert (=> b!986359 (= e!556188 (and e!556187 mapRes!36734))))

(declare-fun condMapEmpty!36734 () Bool)

(declare-fun mapDefault!36734 () ValueCell!11087)

