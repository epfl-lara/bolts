; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82798 () Bool)

(assert start!82798)

(declare-fun b_free!18903 () Bool)

(declare-fun b_next!18903 () Bool)

(assert (=> start!82798 (= b_free!18903 (not b_next!18903))))

(declare-fun tp!65830 () Bool)

(declare-fun b_and!30409 () Bool)

(assert (=> start!82798 (= tp!65830 b_and!30409)))

(declare-fun b!965285 () Bool)

(declare-fun e!544189 () Bool)

(declare-fun tp_is_empty!21705 () Bool)

(assert (=> b!965285 (= e!544189 tp_is_empty!21705)))

(declare-fun mapIsEmpty!34552 () Bool)

(declare-fun mapRes!34552 () Bool)

(assert (=> mapIsEmpty!34552 mapRes!34552))

(declare-fun b!965286 () Bool)

(declare-fun res!646249 () Bool)

(declare-fun e!544188 () Bool)

(assert (=> b!965286 (=> (not res!646249) (not e!544188))))

(declare-datatypes ((array!59475 0))(
  ( (array!59476 (arr!28602 (Array (_ BitVec 32) (_ BitVec 64))) (size!29082 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59475)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59475 (_ BitVec 32)) Bool)

(assert (=> b!965286 (= res!646249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965287 () Bool)

(assert (=> b!965287 (= e!544188 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33923 0))(
  ( (V!33924 (val!10903 Int)) )
))
(declare-datatypes ((ValueCell!10371 0))(
  ( (ValueCellFull!10371 (v!13461 V!33923)) (EmptyCell!10371) )
))
(declare-datatypes ((array!59477 0))(
  ( (array!59478 (arr!28603 (Array (_ BitVec 32) ValueCell!10371)) (size!29083 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59477)

(declare-fun minValue!1342 () V!33923)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33923)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lt!431184 () Bool)

(declare-datatypes ((tuple2!14096 0))(
  ( (tuple2!14097 (_1!7058 (_ BitVec 64)) (_2!7058 V!33923)) )
))
(declare-datatypes ((List!19974 0))(
  ( (Nil!19971) (Cons!19970 (h!21132 tuple2!14096) (t!28345 List!19974)) )
))
(declare-datatypes ((ListLongMap!12807 0))(
  ( (ListLongMap!12808 (toList!6419 List!19974)) )
))
(declare-fun contains!5473 (ListLongMap!12807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3604 (array!59475 array!59477 (_ BitVec 32) (_ BitVec 32) V!33923 V!33923 (_ BitVec 32) Int) ListLongMap!12807)

(assert (=> b!965287 (= lt!431184 (contains!5473 (getCurrentListMap!3604 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28602 _keys!1686) i!803)))))

(declare-fun b!965288 () Bool)

(declare-fun res!646252 () Bool)

(assert (=> b!965288 (=> (not res!646252) (not e!544188))))

(assert (=> b!965288 (= res!646252 (and (= (size!29083 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29082 _keys!1686) (size!29083 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34552 () Bool)

(declare-fun tp!65829 () Bool)

(assert (=> mapNonEmpty!34552 (= mapRes!34552 (and tp!65829 e!544189))))

(declare-fun mapValue!34552 () ValueCell!10371)

(declare-fun mapRest!34552 () (Array (_ BitVec 32) ValueCell!10371))

(declare-fun mapKey!34552 () (_ BitVec 32))

(assert (=> mapNonEmpty!34552 (= (arr!28603 _values!1400) (store mapRest!34552 mapKey!34552 mapValue!34552))))

(declare-fun b!965289 () Bool)

(declare-fun res!646250 () Bool)

(assert (=> b!965289 (=> (not res!646250) (not e!544188))))

(declare-datatypes ((List!19975 0))(
  ( (Nil!19972) (Cons!19971 (h!21133 (_ BitVec 64)) (t!28346 List!19975)) )
))
(declare-fun arrayNoDuplicates!0 (array!59475 (_ BitVec 32) List!19975) Bool)

(assert (=> b!965289 (= res!646250 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19972))))

(declare-fun b!965290 () Bool)

(declare-fun res!646251 () Bool)

(assert (=> b!965290 (=> (not res!646251) (not e!544188))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965290 (= res!646251 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29082 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29082 _keys!1686))))))

(declare-fun res!646248 () Bool)

(assert (=> start!82798 (=> (not res!646248) (not e!544188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82798 (= res!646248 (validMask!0 mask!2110))))

(assert (=> start!82798 e!544188))

(assert (=> start!82798 true))

(declare-fun e!544186 () Bool)

(declare-fun array_inv!22057 (array!59477) Bool)

(assert (=> start!82798 (and (array_inv!22057 _values!1400) e!544186)))

(declare-fun array_inv!22058 (array!59475) Bool)

(assert (=> start!82798 (array_inv!22058 _keys!1686)))

(assert (=> start!82798 tp!65830))

(assert (=> start!82798 tp_is_empty!21705))

(declare-fun b!965291 () Bool)

(declare-fun e!544187 () Bool)

(assert (=> b!965291 (= e!544187 tp_is_empty!21705)))

(declare-fun b!965292 () Bool)

(assert (=> b!965292 (= e!544186 (and e!544187 mapRes!34552))))

(declare-fun condMapEmpty!34552 () Bool)

(declare-fun mapDefault!34552 () ValueCell!10371)

(assert (=> b!965292 (= condMapEmpty!34552 (= (arr!28603 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10371)) mapDefault!34552)))))

(declare-fun b!965293 () Bool)

(declare-fun res!646253 () Bool)

(assert (=> b!965293 (=> (not res!646253) (not e!544188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965293 (= res!646253 (validKeyInArray!0 (select (arr!28602 _keys!1686) i!803)))))

(assert (= (and start!82798 res!646248) b!965288))

(assert (= (and b!965288 res!646252) b!965286))

(assert (= (and b!965286 res!646249) b!965289))

(assert (= (and b!965289 res!646250) b!965290))

(assert (= (and b!965290 res!646251) b!965293))

(assert (= (and b!965293 res!646253) b!965287))

(assert (= (and b!965292 condMapEmpty!34552) mapIsEmpty!34552))

(assert (= (and b!965292 (not condMapEmpty!34552)) mapNonEmpty!34552))

(get-info :version)

(assert (= (and mapNonEmpty!34552 ((_ is ValueCellFull!10371) mapValue!34552)) b!965285))

(assert (= (and b!965292 ((_ is ValueCellFull!10371) mapDefault!34552)) b!965291))

(assert (= start!82798 b!965292))

(declare-fun m!894465 () Bool)

(assert (=> mapNonEmpty!34552 m!894465))

(declare-fun m!894467 () Bool)

(assert (=> b!965293 m!894467))

(assert (=> b!965293 m!894467))

(declare-fun m!894469 () Bool)

(assert (=> b!965293 m!894469))

(declare-fun m!894471 () Bool)

(assert (=> b!965289 m!894471))

(declare-fun m!894473 () Bool)

(assert (=> b!965287 m!894473))

(assert (=> b!965287 m!894467))

(assert (=> b!965287 m!894473))

(assert (=> b!965287 m!894467))

(declare-fun m!894475 () Bool)

(assert (=> b!965287 m!894475))

(declare-fun m!894477 () Bool)

(assert (=> b!965286 m!894477))

(declare-fun m!894479 () Bool)

(assert (=> start!82798 m!894479))

(declare-fun m!894481 () Bool)

(assert (=> start!82798 m!894481))

(declare-fun m!894483 () Bool)

(assert (=> start!82798 m!894483))

(check-sat (not mapNonEmpty!34552) (not b!965293) tp_is_empty!21705 b_and!30409 (not b!965286) (not b!965289) (not start!82798) (not b!965287) (not b_next!18903))
(check-sat b_and!30409 (not b_next!18903))
