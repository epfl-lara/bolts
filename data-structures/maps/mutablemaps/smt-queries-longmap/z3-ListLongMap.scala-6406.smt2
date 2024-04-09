; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82262 () Bool)

(assert start!82262)

(declare-fun b_free!18507 () Bool)

(declare-fun b_next!18507 () Bool)

(assert (=> start!82262 (= b_free!18507 (not b_next!18507))))

(declare-fun tp!64482 () Bool)

(declare-fun b_and!30013 () Bool)

(assert (=> start!82262 (= tp!64482 b_and!30013)))

(declare-fun b!958373 () Bool)

(declare-fun res!641617 () Bool)

(declare-fun e!540322 () Bool)

(assert (=> b!958373 (=> (not res!641617) (not e!540322))))

(declare-datatypes ((array!58541 0))(
  ( (array!58542 (arr!28140 (Array (_ BitVec 32) (_ BitVec 64))) (size!28620 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58541)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958373 (= res!641617 (validKeyInArray!0 (select (arr!28140 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33799 () Bool)

(declare-fun mapRes!33799 () Bool)

(assert (=> mapIsEmpty!33799 mapRes!33799))

(declare-fun b!958374 () Bool)

(declare-fun res!641616 () Bool)

(assert (=> b!958374 (=> (not res!641616) (not e!540322))))

(declare-datatypes ((List!19694 0))(
  ( (Nil!19691) (Cons!19690 (h!20852 (_ BitVec 64)) (t!28065 List!19694)) )
))
(declare-fun arrayNoDuplicates!0 (array!58541 (_ BitVec 32) List!19694) Bool)

(assert (=> b!958374 (= res!641616 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19691))))

(declare-fun b!958375 () Bool)

(declare-fun res!641619 () Bool)

(assert (=> b!958375 (=> (not res!641619) (not e!540322))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958375 (= res!641619 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28620 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28620 _keys!1668))))))

(declare-fun b!958376 () Bool)

(declare-fun e!540321 () Bool)

(declare-fun tp_is_empty!21213 () Bool)

(assert (=> b!958376 (= e!540321 tp_is_empty!21213)))

(declare-fun mapNonEmpty!33799 () Bool)

(declare-fun tp!64483 () Bool)

(assert (=> mapNonEmpty!33799 (= mapRes!33799 (and tp!64483 e!540321))))

(declare-datatypes ((V!33267 0))(
  ( (V!33268 (val!10657 Int)) )
))
(declare-datatypes ((ValueCell!10125 0))(
  ( (ValueCellFull!10125 (v!13214 V!33267)) (EmptyCell!10125) )
))
(declare-datatypes ((array!58543 0))(
  ( (array!58544 (arr!28141 (Array (_ BitVec 32) ValueCell!10125)) (size!28621 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58543)

(declare-fun mapRest!33799 () (Array (_ BitVec 32) ValueCell!10125))

(declare-fun mapValue!33799 () ValueCell!10125)

(declare-fun mapKey!33799 () (_ BitVec 32))

(assert (=> mapNonEmpty!33799 (= (arr!28141 _values!1386) (store mapRest!33799 mapKey!33799 mapValue!33799))))

(declare-fun b!958377 () Bool)

(assert (=> b!958377 (= e!540322 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun lt!430397 () Bool)

(declare-fun minValue!1328 () V!33267)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33267)

(declare-datatypes ((tuple2!13828 0))(
  ( (tuple2!13829 (_1!6924 (_ BitVec 64)) (_2!6924 V!33267)) )
))
(declare-datatypes ((List!19695 0))(
  ( (Nil!19692) (Cons!19691 (h!20853 tuple2!13828) (t!28066 List!19695)) )
))
(declare-datatypes ((ListLongMap!12539 0))(
  ( (ListLongMap!12540 (toList!6285 List!19695)) )
))
(declare-fun contains!5338 (ListLongMap!12539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3470 (array!58541 array!58543 (_ BitVec 32) (_ BitVec 32) V!33267 V!33267 (_ BitVec 32) Int) ListLongMap!12539)

(assert (=> b!958377 (= lt!430397 (contains!5338 (getCurrentListMap!3470 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28140 _keys!1668) i!793)))))

(declare-fun b!958378 () Bool)

(declare-fun res!641618 () Bool)

(assert (=> b!958378 (=> (not res!641618) (not e!540322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58541 (_ BitVec 32)) Bool)

(assert (=> b!958378 (= res!641618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958380 () Bool)

(declare-fun res!641615 () Bool)

(assert (=> b!958380 (=> (not res!641615) (not e!540322))))

(assert (=> b!958380 (= res!641615 (and (= (size!28621 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28620 _keys!1668) (size!28621 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958381 () Bool)

(declare-fun e!540320 () Bool)

(declare-fun e!540323 () Bool)

(assert (=> b!958381 (= e!540320 (and e!540323 mapRes!33799))))

(declare-fun condMapEmpty!33799 () Bool)

(declare-fun mapDefault!33799 () ValueCell!10125)

(assert (=> b!958381 (= condMapEmpty!33799 (= (arr!28141 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10125)) mapDefault!33799)))))

(declare-fun b!958379 () Bool)

(assert (=> b!958379 (= e!540323 tp_is_empty!21213)))

(declare-fun res!641614 () Bool)

(assert (=> start!82262 (=> (not res!641614) (not e!540322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82262 (= res!641614 (validMask!0 mask!2088))))

(assert (=> start!82262 e!540322))

(assert (=> start!82262 true))

(assert (=> start!82262 tp_is_empty!21213))

(declare-fun array_inv!21767 (array!58541) Bool)

(assert (=> start!82262 (array_inv!21767 _keys!1668)))

(declare-fun array_inv!21768 (array!58543) Bool)

(assert (=> start!82262 (and (array_inv!21768 _values!1386) e!540320)))

(assert (=> start!82262 tp!64482))

(assert (= (and start!82262 res!641614) b!958380))

(assert (= (and b!958380 res!641615) b!958378))

(assert (= (and b!958378 res!641618) b!958374))

(assert (= (and b!958374 res!641616) b!958375))

(assert (= (and b!958375 res!641619) b!958373))

(assert (= (and b!958373 res!641617) b!958377))

(assert (= (and b!958381 condMapEmpty!33799) mapIsEmpty!33799))

(assert (= (and b!958381 (not condMapEmpty!33799)) mapNonEmpty!33799))

(get-info :version)

(assert (= (and mapNonEmpty!33799 ((_ is ValueCellFull!10125) mapValue!33799)) b!958376))

(assert (= (and b!958381 ((_ is ValueCellFull!10125) mapDefault!33799)) b!958379))

(assert (= start!82262 b!958381))

(declare-fun m!889133 () Bool)

(assert (=> b!958373 m!889133))

(assert (=> b!958373 m!889133))

(declare-fun m!889135 () Bool)

(assert (=> b!958373 m!889135))

(declare-fun m!889137 () Bool)

(assert (=> b!958378 m!889137))

(declare-fun m!889139 () Bool)

(assert (=> start!82262 m!889139))

(declare-fun m!889141 () Bool)

(assert (=> start!82262 m!889141))

(declare-fun m!889143 () Bool)

(assert (=> start!82262 m!889143))

(declare-fun m!889145 () Bool)

(assert (=> b!958374 m!889145))

(declare-fun m!889147 () Bool)

(assert (=> b!958377 m!889147))

(assert (=> b!958377 m!889133))

(assert (=> b!958377 m!889147))

(assert (=> b!958377 m!889133))

(declare-fun m!889149 () Bool)

(assert (=> b!958377 m!889149))

(declare-fun m!889151 () Bool)

(assert (=> mapNonEmpty!33799 m!889151))

(check-sat (not b_next!18507) (not b!958373) tp_is_empty!21213 (not mapNonEmpty!33799) (not start!82262) (not b!958378) (not b!958374) b_and!30013 (not b!958377))
(check-sat b_and!30013 (not b_next!18507))
