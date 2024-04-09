; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82376 () Bool)

(assert start!82376)

(declare-fun b_free!18615 () Bool)

(declare-fun b_next!18615 () Bool)

(assert (=> start!82376 (= b_free!18615 (not b_next!18615))))

(declare-fun tp!64815 () Bool)

(declare-fun b_and!30121 () Bool)

(assert (=> start!82376 (= tp!64815 b_and!30121)))

(declare-fun b!959975 () Bool)

(declare-fun res!642706 () Bool)

(declare-fun e!541174 () Bool)

(assert (=> b!959975 (=> (not res!642706) (not e!541174))))

(declare-datatypes ((array!58761 0))(
  ( (array!58762 (arr!28250 (Array (_ BitVec 32) (_ BitVec 64))) (size!28730 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58761)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959975 (= res!642706 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28730 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28730 _keys!1668))))))

(declare-fun b!959976 () Bool)

(declare-fun res!642705 () Bool)

(assert (=> b!959976 (=> (not res!642705) (not e!541174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959976 (= res!642705 (validKeyInArray!0 (select (arr!28250 _keys!1668) i!793)))))

(declare-fun b!959977 () Bool)

(assert (=> b!959977 (= e!541174 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33419 0))(
  ( (V!33420 (val!10714 Int)) )
))
(declare-fun minValue!1328 () V!33419)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun lt!430559 () Bool)

(declare-datatypes ((ValueCell!10182 0))(
  ( (ValueCellFull!10182 (v!13271 V!33419)) (EmptyCell!10182) )
))
(declare-datatypes ((array!58763 0))(
  ( (array!58764 (arr!28251 (Array (_ BitVec 32) ValueCell!10182)) (size!28731 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58763)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33419)

(declare-datatypes ((tuple2!13906 0))(
  ( (tuple2!13907 (_1!6963 (_ BitVec 64)) (_2!6963 V!33419)) )
))
(declare-datatypes ((List!19769 0))(
  ( (Nil!19766) (Cons!19765 (h!20927 tuple2!13906) (t!28140 List!19769)) )
))
(declare-datatypes ((ListLongMap!12617 0))(
  ( (ListLongMap!12618 (toList!6324 List!19769)) )
))
(declare-fun contains!5374 (ListLongMap!12617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3509 (array!58761 array!58763 (_ BitVec 32) (_ BitVec 32) V!33419 V!33419 (_ BitVec 32) Int) ListLongMap!12617)

(assert (=> b!959977 (= lt!430559 (contains!5374 (getCurrentListMap!3509 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28250 _keys!1668) i!793)))))

(declare-fun b!959978 () Bool)

(declare-fun res!642707 () Bool)

(assert (=> b!959978 (=> (not res!642707) (not e!541174))))

(assert (=> b!959978 (= res!642707 (and (= (size!28731 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28730 _keys!1668) (size!28731 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959979 () Bool)

(declare-fun e!541175 () Bool)

(declare-fun e!541177 () Bool)

(declare-fun mapRes!33970 () Bool)

(assert (=> b!959979 (= e!541175 (and e!541177 mapRes!33970))))

(declare-fun condMapEmpty!33970 () Bool)

(declare-fun mapDefault!33970 () ValueCell!10182)

(assert (=> b!959979 (= condMapEmpty!33970 (= (arr!28251 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10182)) mapDefault!33970)))))

(declare-fun mapIsEmpty!33970 () Bool)

(assert (=> mapIsEmpty!33970 mapRes!33970))

(declare-fun b!959980 () Bool)

(declare-fun res!642708 () Bool)

(assert (=> b!959980 (=> (not res!642708) (not e!541174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58761 (_ BitVec 32)) Bool)

(assert (=> b!959980 (= res!642708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959981 () Bool)

(declare-fun e!541178 () Bool)

(declare-fun tp_is_empty!21327 () Bool)

(assert (=> b!959981 (= e!541178 tp_is_empty!21327)))

(declare-fun b!959982 () Bool)

(assert (=> b!959982 (= e!541177 tp_is_empty!21327)))

(declare-fun b!959983 () Bool)

(declare-fun res!642703 () Bool)

(assert (=> b!959983 (=> (not res!642703) (not e!541174))))

(declare-datatypes ((List!19770 0))(
  ( (Nil!19767) (Cons!19766 (h!20928 (_ BitVec 64)) (t!28141 List!19770)) )
))
(declare-fun arrayNoDuplicates!0 (array!58761 (_ BitVec 32) List!19770) Bool)

(assert (=> b!959983 (= res!642703 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19767))))

(declare-fun res!642704 () Bool)

(assert (=> start!82376 (=> (not res!642704) (not e!541174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82376 (= res!642704 (validMask!0 mask!2088))))

(assert (=> start!82376 e!541174))

(assert (=> start!82376 true))

(assert (=> start!82376 tp_is_empty!21327))

(declare-fun array_inv!21839 (array!58761) Bool)

(assert (=> start!82376 (array_inv!21839 _keys!1668)))

(declare-fun array_inv!21840 (array!58763) Bool)

(assert (=> start!82376 (and (array_inv!21840 _values!1386) e!541175)))

(assert (=> start!82376 tp!64815))

(declare-fun mapNonEmpty!33970 () Bool)

(declare-fun tp!64816 () Bool)

(assert (=> mapNonEmpty!33970 (= mapRes!33970 (and tp!64816 e!541178))))

(declare-fun mapValue!33970 () ValueCell!10182)

(declare-fun mapKey!33970 () (_ BitVec 32))

(declare-fun mapRest!33970 () (Array (_ BitVec 32) ValueCell!10182))

(assert (=> mapNonEmpty!33970 (= (arr!28251 _values!1386) (store mapRest!33970 mapKey!33970 mapValue!33970))))

(assert (= (and start!82376 res!642704) b!959978))

(assert (= (and b!959978 res!642707) b!959980))

(assert (= (and b!959980 res!642708) b!959983))

(assert (= (and b!959983 res!642703) b!959975))

(assert (= (and b!959975 res!642706) b!959976))

(assert (= (and b!959976 res!642705) b!959977))

(assert (= (and b!959979 condMapEmpty!33970) mapIsEmpty!33970))

(assert (= (and b!959979 (not condMapEmpty!33970)) mapNonEmpty!33970))

(get-info :version)

(assert (= (and mapNonEmpty!33970 ((_ is ValueCellFull!10182) mapValue!33970)) b!959981))

(assert (= (and b!959979 ((_ is ValueCellFull!10182) mapDefault!33970)) b!959982))

(assert (= start!82376 b!959979))

(declare-fun m!890405 () Bool)

(assert (=> b!959977 m!890405))

(declare-fun m!890407 () Bool)

(assert (=> b!959977 m!890407))

(assert (=> b!959977 m!890405))

(assert (=> b!959977 m!890407))

(declare-fun m!890409 () Bool)

(assert (=> b!959977 m!890409))

(declare-fun m!890411 () Bool)

(assert (=> b!959980 m!890411))

(declare-fun m!890413 () Bool)

(assert (=> mapNonEmpty!33970 m!890413))

(assert (=> b!959976 m!890407))

(assert (=> b!959976 m!890407))

(declare-fun m!890415 () Bool)

(assert (=> b!959976 m!890415))

(declare-fun m!890417 () Bool)

(assert (=> start!82376 m!890417))

(declare-fun m!890419 () Bool)

(assert (=> start!82376 m!890419))

(declare-fun m!890421 () Bool)

(assert (=> start!82376 m!890421))

(declare-fun m!890423 () Bool)

(assert (=> b!959983 m!890423))

(check-sat (not b_next!18615) b_and!30121 (not mapNonEmpty!33970) (not b!959980) (not b!959977) tp_is_empty!21327 (not start!82376) (not b!959976) (not b!959983))
(check-sat b_and!30121 (not b_next!18615))
