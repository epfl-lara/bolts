; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77580 () Bool)

(assert start!77580)

(declare-fun b_free!16137 () Bool)

(declare-fun b_next!16137 () Bool)

(assert (=> start!77580 (= b_free!16137 (not b_next!16137))))

(declare-fun tp!56673 () Bool)

(declare-fun b_and!26521 () Bool)

(assert (=> start!77580 (= tp!56673 b_and!26521)))

(declare-fun b!903422 () Bool)

(declare-fun e!506227 () Bool)

(declare-fun tp_is_empty!18555 () Bool)

(assert (=> b!903422 (= e!506227 tp_is_empty!18555)))

(declare-fun res!609633 () Bool)

(declare-fun e!506225 () Bool)

(assert (=> start!77580 (=> (not res!609633) (not e!506225))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77580 (= res!609633 (validMask!0 mask!1756))))

(assert (=> start!77580 e!506225))

(declare-datatypes ((V!29705 0))(
  ( (V!29706 (val!9328 Int)) )
))
(declare-datatypes ((ValueCell!8796 0))(
  ( (ValueCellFull!8796 (v!11833 V!29705)) (EmptyCell!8796) )
))
(declare-datatypes ((array!53148 0))(
  ( (array!53149 (arr!25529 (Array (_ BitVec 32) ValueCell!8796)) (size!25989 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53148)

(declare-fun e!506226 () Bool)

(declare-fun array_inv!19980 (array!53148) Bool)

(assert (=> start!77580 (and (array_inv!19980 _values!1152) e!506226)))

(assert (=> start!77580 tp!56673))

(assert (=> start!77580 true))

(assert (=> start!77580 tp_is_empty!18555))

(declare-datatypes ((array!53150 0))(
  ( (array!53151 (arr!25530 (Array (_ BitVec 32) (_ BitVec 64))) (size!25990 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53150)

(declare-fun array_inv!19981 (array!53150) Bool)

(assert (=> start!77580 (array_inv!19981 _keys!1386)))

(declare-fun b!903423 () Bool)

(assert (=> b!903423 (= e!506225 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!407972 () Bool)

(declare-fun zeroValue!1094 () V!29705)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29705)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12132 0))(
  ( (tuple2!12133 (_1!6076 (_ BitVec 64)) (_2!6076 V!29705)) )
))
(declare-datatypes ((List!18009 0))(
  ( (Nil!18006) (Cons!18005 (h!19151 tuple2!12132) (t!25400 List!18009)) )
))
(declare-datatypes ((ListLongMap!10843 0))(
  ( (ListLongMap!10844 (toList!5437 List!18009)) )
))
(declare-fun contains!4450 (ListLongMap!10843 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2674 (array!53150 array!53148 (_ BitVec 32) (_ BitVec 32) V!29705 V!29705 (_ BitVec 32) Int) ListLongMap!10843)

(assert (=> b!903423 (= lt!407972 (contains!4450 (getCurrentListMap!2674 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!29545 () Bool)

(declare-fun mapRes!29545 () Bool)

(declare-fun tp!56674 () Bool)

(assert (=> mapNonEmpty!29545 (= mapRes!29545 (and tp!56674 e!506227))))

(declare-fun mapValue!29545 () ValueCell!8796)

(declare-fun mapKey!29545 () (_ BitVec 32))

(declare-fun mapRest!29545 () (Array (_ BitVec 32) ValueCell!8796))

(assert (=> mapNonEmpty!29545 (= (arr!25529 _values!1152) (store mapRest!29545 mapKey!29545 mapValue!29545))))

(declare-fun b!903424 () Bool)

(declare-fun e!506224 () Bool)

(assert (=> b!903424 (= e!506226 (and e!506224 mapRes!29545))))

(declare-fun condMapEmpty!29545 () Bool)

(declare-fun mapDefault!29545 () ValueCell!8796)

(assert (=> b!903424 (= condMapEmpty!29545 (= (arr!25529 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8796)) mapDefault!29545)))))

(declare-fun b!903425 () Bool)

(declare-fun res!609632 () Bool)

(assert (=> b!903425 (=> (not res!609632) (not e!506225))))

(declare-datatypes ((List!18010 0))(
  ( (Nil!18007) (Cons!18006 (h!19152 (_ BitVec 64)) (t!25401 List!18010)) )
))
(declare-fun arrayNoDuplicates!0 (array!53150 (_ BitVec 32) List!18010) Bool)

(assert (=> b!903425 (= res!609632 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18007))))

(declare-fun b!903426 () Bool)

(declare-fun res!609630 () Bool)

(assert (=> b!903426 (=> (not res!609630) (not e!506225))))

(assert (=> b!903426 (= res!609630 (and (= (size!25989 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25990 _keys!1386) (size!25989 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903427 () Bool)

(assert (=> b!903427 (= e!506224 tp_is_empty!18555)))

(declare-fun b!903428 () Bool)

(declare-fun res!609631 () Bool)

(assert (=> b!903428 (=> (not res!609631) (not e!506225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53150 (_ BitVec 32)) Bool)

(assert (=> b!903428 (= res!609631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29545 () Bool)

(assert (=> mapIsEmpty!29545 mapRes!29545))

(assert (= (and start!77580 res!609633) b!903426))

(assert (= (and b!903426 res!609630) b!903428))

(assert (= (and b!903428 res!609631) b!903425))

(assert (= (and b!903425 res!609632) b!903423))

(assert (= (and b!903424 condMapEmpty!29545) mapIsEmpty!29545))

(assert (= (and b!903424 (not condMapEmpty!29545)) mapNonEmpty!29545))

(get-info :version)

(assert (= (and mapNonEmpty!29545 ((_ is ValueCellFull!8796) mapValue!29545)) b!903422))

(assert (= (and b!903424 ((_ is ValueCellFull!8796) mapDefault!29545)) b!903427))

(assert (= start!77580 b!903424))

(declare-fun m!839181 () Bool)

(assert (=> b!903425 m!839181))

(declare-fun m!839183 () Bool)

(assert (=> b!903423 m!839183))

(assert (=> b!903423 m!839183))

(declare-fun m!839185 () Bool)

(assert (=> b!903423 m!839185))

(declare-fun m!839187 () Bool)

(assert (=> b!903428 m!839187))

(declare-fun m!839189 () Bool)

(assert (=> mapNonEmpty!29545 m!839189))

(declare-fun m!839191 () Bool)

(assert (=> start!77580 m!839191))

(declare-fun m!839193 () Bool)

(assert (=> start!77580 m!839193))

(declare-fun m!839195 () Bool)

(assert (=> start!77580 m!839195))

(check-sat (not mapNonEmpty!29545) tp_is_empty!18555 (not b!903423) (not b_next!16137) (not start!77580) (not b!903428) b_and!26521 (not b!903425))
(check-sat b_and!26521 (not b_next!16137))
