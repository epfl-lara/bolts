; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84388 () Bool)

(assert start!84388)

(declare-fun b!986605 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun lt!437485 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun e!556381 () Bool)

(assert (=> b!986605 (= e!556381 (and (or lt!437485 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!437485 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!437485)) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(assert (=> b!986605 (= lt!437485 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!986606 () Bool)

(declare-fun res!660172 () Bool)

(assert (=> b!986606 (=> (not res!660172) (not e!556381))))

(declare-datatypes ((array!62273 0))(
  ( (array!62274 (arr!29990 (Array (_ BitVec 32) (_ BitVec 64))) (size!30470 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62273)

(declare-datatypes ((List!20865 0))(
  ( (Nil!20862) (Cons!20861 (h!22023 (_ BitVec 64)) (t!29772 List!20865)) )
))
(declare-fun arrayNoDuplicates!0 (array!62273 (_ BitVec 32) List!20865) Bool)

(assert (=> b!986606 (= res!660172 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20862))))

(declare-fun mapIsEmpty!36773 () Bool)

(declare-fun mapRes!36773 () Bool)

(assert (=> mapIsEmpty!36773 mapRes!36773))

(declare-fun b!986607 () Bool)

(declare-fun res!660171 () Bool)

(assert (=> b!986607 (=> (not res!660171) (not e!556381))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35867 0))(
  ( (V!35868 (val!11632 Int)) )
))
(declare-datatypes ((ValueCell!11100 0))(
  ( (ValueCellFull!11100 (v!14194 V!35867)) (EmptyCell!11100) )
))
(declare-datatypes ((array!62275 0))(
  ( (array!62276 (arr!29991 (Array (_ BitVec 32) ValueCell!11100)) (size!30471 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62275)

(assert (=> b!986607 (= res!660171 (and (= (size!30471 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30470 _keys!1544) (size!30471 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36773 () Bool)

(declare-fun tp!69629 () Bool)

(declare-fun e!556383 () Bool)

(assert (=> mapNonEmpty!36773 (= mapRes!36773 (and tp!69629 e!556383))))

(declare-fun mapRest!36773 () (Array (_ BitVec 32) ValueCell!11100))

(declare-fun mapValue!36773 () ValueCell!11100)

(declare-fun mapKey!36773 () (_ BitVec 32))

(assert (=> mapNonEmpty!36773 (= (arr!29991 _values!1278) (store mapRest!36773 mapKey!36773 mapValue!36773))))

(declare-fun b!986608 () Bool)

(declare-fun res!660169 () Bool)

(assert (=> b!986608 (=> (not res!660169) (not e!556381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986608 (= res!660169 (validKeyInArray!0 (select (arr!29990 _keys!1544) from!1932)))))

(declare-fun b!986610 () Bool)

(declare-fun e!556384 () Bool)

(declare-fun e!556385 () Bool)

(assert (=> b!986610 (= e!556384 (and e!556385 mapRes!36773))))

(declare-fun condMapEmpty!36773 () Bool)

(declare-fun mapDefault!36773 () ValueCell!11100)

(assert (=> b!986610 (= condMapEmpty!36773 (= (arr!29991 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11100)) mapDefault!36773)))))

(declare-fun b!986611 () Bool)

(declare-fun tp_is_empty!23163 () Bool)

(assert (=> b!986611 (= e!556383 tp_is_empty!23163)))

(declare-fun b!986612 () Bool)

(declare-fun res!660173 () Bool)

(assert (=> b!986612 (=> (not res!660173) (not e!556381))))

(assert (=> b!986612 (= res!660173 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30470 _keys!1544))))))

(declare-fun b!986613 () Bool)

(assert (=> b!986613 (= e!556385 tp_is_empty!23163)))

(declare-fun b!986609 () Bool)

(declare-fun res!660170 () Bool)

(assert (=> b!986609 (=> (not res!660170) (not e!556381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62273 (_ BitVec 32)) Bool)

(assert (=> b!986609 (= res!660170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!660174 () Bool)

(assert (=> start!84388 (=> (not res!660174) (not e!556381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84388 (= res!660174 (validMask!0 mask!1948))))

(assert (=> start!84388 e!556381))

(assert (=> start!84388 true))

(declare-fun array_inv!23039 (array!62275) Bool)

(assert (=> start!84388 (and (array_inv!23039 _values!1278) e!556384)))

(declare-fun array_inv!23040 (array!62273) Bool)

(assert (=> start!84388 (array_inv!23040 _keys!1544)))

(assert (= (and start!84388 res!660174) b!986607))

(assert (= (and b!986607 res!660171) b!986609))

(assert (= (and b!986609 res!660170) b!986606))

(assert (= (and b!986606 res!660172) b!986612))

(assert (= (and b!986612 res!660173) b!986608))

(assert (= (and b!986608 res!660169) b!986605))

(assert (= (and b!986610 condMapEmpty!36773) mapIsEmpty!36773))

(assert (= (and b!986610 (not condMapEmpty!36773)) mapNonEmpty!36773))

(get-info :version)

(assert (= (and mapNonEmpty!36773 ((_ is ValueCellFull!11100) mapValue!36773)) b!986611))

(assert (= (and b!986610 ((_ is ValueCellFull!11100) mapDefault!36773)) b!986613))

(assert (= start!84388 b!986610))

(declare-fun m!913431 () Bool)

(assert (=> b!986609 m!913431))

(declare-fun m!913433 () Bool)

(assert (=> mapNonEmpty!36773 m!913433))

(declare-fun m!913435 () Bool)

(assert (=> b!986608 m!913435))

(assert (=> b!986608 m!913435))

(declare-fun m!913437 () Bool)

(assert (=> b!986608 m!913437))

(declare-fun m!913439 () Bool)

(assert (=> start!84388 m!913439))

(declare-fun m!913441 () Bool)

(assert (=> start!84388 m!913441))

(declare-fun m!913443 () Bool)

(assert (=> start!84388 m!913443))

(declare-fun m!913445 () Bool)

(assert (=> b!986606 m!913445))

(check-sat tp_is_empty!23163 (not b!986608) (not mapNonEmpty!36773) (not start!84388) (not b!986609) (not b!986606))
(check-sat)
