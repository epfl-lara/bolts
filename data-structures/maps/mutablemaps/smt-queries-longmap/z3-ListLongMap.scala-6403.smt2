; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82244 () Bool)

(assert start!82244)

(declare-fun b_free!18489 () Bool)

(declare-fun b_next!18489 () Bool)

(assert (=> start!82244 (= b_free!18489 (not b_next!18489))))

(declare-fun tp!64429 () Bool)

(declare-fun b_and!29995 () Bool)

(assert (=> start!82244 (= tp!64429 b_and!29995)))

(declare-fun mapNonEmpty!33772 () Bool)

(declare-fun mapRes!33772 () Bool)

(declare-fun tp!64428 () Bool)

(declare-fun e!540184 () Bool)

(assert (=> mapNonEmpty!33772 (= mapRes!33772 (and tp!64428 e!540184))))

(declare-datatypes ((V!33243 0))(
  ( (V!33244 (val!10648 Int)) )
))
(declare-datatypes ((ValueCell!10116 0))(
  ( (ValueCellFull!10116 (v!13205 V!33243)) (EmptyCell!10116) )
))
(declare-fun mapValue!33772 () ValueCell!10116)

(declare-fun mapKey!33772 () (_ BitVec 32))

(declare-datatypes ((array!58507 0))(
  ( (array!58508 (arr!28123 (Array (_ BitVec 32) ValueCell!10116)) (size!28603 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58507)

(declare-fun mapRest!33772 () (Array (_ BitVec 32) ValueCell!10116))

(assert (=> mapNonEmpty!33772 (= (arr!28123 _values!1386) (store mapRest!33772 mapKey!33772 mapValue!33772))))

(declare-fun b!958130 () Bool)

(declare-fun res!641457 () Bool)

(declare-fun e!540186 () Bool)

(assert (=> b!958130 (=> (not res!641457) (not e!540186))))

(declare-datatypes ((array!58509 0))(
  ( (array!58510 (arr!28124 (Array (_ BitVec 32) (_ BitVec 64))) (size!28604 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58509)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58509 (_ BitVec 32)) Bool)

(assert (=> b!958130 (= res!641457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958131 () Bool)

(declare-fun res!641456 () Bool)

(assert (=> b!958131 (=> (not res!641456) (not e!540186))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958131 (= res!641456 (validKeyInArray!0 (select (arr!28124 _keys!1668) i!793)))))

(declare-fun b!958132 () Bool)

(assert (=> b!958132 (= e!540186 false)))

(declare-fun lt!430370 () Bool)

(declare-fun minValue!1328 () V!33243)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33243)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13816 0))(
  ( (tuple2!13817 (_1!6918 (_ BitVec 64)) (_2!6918 V!33243)) )
))
(declare-datatypes ((List!19682 0))(
  ( (Nil!19679) (Cons!19678 (h!20840 tuple2!13816) (t!28053 List!19682)) )
))
(declare-datatypes ((ListLongMap!12527 0))(
  ( (ListLongMap!12528 (toList!6279 List!19682)) )
))
(declare-fun contains!5332 (ListLongMap!12527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3464 (array!58509 array!58507 (_ BitVec 32) (_ BitVec 32) V!33243 V!33243 (_ BitVec 32) Int) ListLongMap!12527)

(assert (=> b!958132 (= lt!430370 (contains!5332 (getCurrentListMap!3464 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28124 _keys!1668) i!793)))))

(declare-fun b!958133 () Bool)

(declare-fun res!641453 () Bool)

(assert (=> b!958133 (=> (not res!641453) (not e!540186))))

(declare-datatypes ((List!19683 0))(
  ( (Nil!19680) (Cons!19679 (h!20841 (_ BitVec 64)) (t!28054 List!19683)) )
))
(declare-fun arrayNoDuplicates!0 (array!58509 (_ BitVec 32) List!19683) Bool)

(assert (=> b!958133 (= res!641453 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19680))))

(declare-fun res!641454 () Bool)

(assert (=> start!82244 (=> (not res!641454) (not e!540186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82244 (= res!641454 (validMask!0 mask!2088))))

(assert (=> start!82244 e!540186))

(assert (=> start!82244 true))

(declare-fun tp_is_empty!21195 () Bool)

(assert (=> start!82244 tp_is_empty!21195))

(declare-fun array_inv!21757 (array!58509) Bool)

(assert (=> start!82244 (array_inv!21757 _keys!1668)))

(declare-fun e!540188 () Bool)

(declare-fun array_inv!21758 (array!58507) Bool)

(assert (=> start!82244 (and (array_inv!21758 _values!1386) e!540188)))

(assert (=> start!82244 tp!64429))

(declare-fun mapIsEmpty!33772 () Bool)

(assert (=> mapIsEmpty!33772 mapRes!33772))

(declare-fun b!958134 () Bool)

(declare-fun e!540187 () Bool)

(assert (=> b!958134 (= e!540187 tp_is_empty!21195)))

(declare-fun b!958135 () Bool)

(declare-fun res!641452 () Bool)

(assert (=> b!958135 (=> (not res!641452) (not e!540186))))

(assert (=> b!958135 (= res!641452 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28604 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28604 _keys!1668))))))

(declare-fun b!958136 () Bool)

(declare-fun res!641455 () Bool)

(assert (=> b!958136 (=> (not res!641455) (not e!540186))))

(assert (=> b!958136 (= res!641455 (and (= (size!28603 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28604 _keys!1668) (size!28603 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958137 () Bool)

(assert (=> b!958137 (= e!540184 tp_is_empty!21195)))

(declare-fun b!958138 () Bool)

(assert (=> b!958138 (= e!540188 (and e!540187 mapRes!33772))))

(declare-fun condMapEmpty!33772 () Bool)

(declare-fun mapDefault!33772 () ValueCell!10116)

(assert (=> b!958138 (= condMapEmpty!33772 (= (arr!28123 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10116)) mapDefault!33772)))))

(assert (= (and start!82244 res!641454) b!958136))

(assert (= (and b!958136 res!641455) b!958130))

(assert (= (and b!958130 res!641457) b!958133))

(assert (= (and b!958133 res!641453) b!958135))

(assert (= (and b!958135 res!641452) b!958131))

(assert (= (and b!958131 res!641456) b!958132))

(assert (= (and b!958138 condMapEmpty!33772) mapIsEmpty!33772))

(assert (= (and b!958138 (not condMapEmpty!33772)) mapNonEmpty!33772))

(get-info :version)

(assert (= (and mapNonEmpty!33772 ((_ is ValueCellFull!10116) mapValue!33772)) b!958137))

(assert (= (and b!958138 ((_ is ValueCellFull!10116) mapDefault!33772)) b!958134))

(assert (= start!82244 b!958138))

(declare-fun m!888953 () Bool)

(assert (=> b!958130 m!888953))

(declare-fun m!888955 () Bool)

(assert (=> start!82244 m!888955))

(declare-fun m!888957 () Bool)

(assert (=> start!82244 m!888957))

(declare-fun m!888959 () Bool)

(assert (=> start!82244 m!888959))

(declare-fun m!888961 () Bool)

(assert (=> b!958133 m!888961))

(declare-fun m!888963 () Bool)

(assert (=> b!958132 m!888963))

(declare-fun m!888965 () Bool)

(assert (=> b!958132 m!888965))

(assert (=> b!958132 m!888963))

(assert (=> b!958132 m!888965))

(declare-fun m!888967 () Bool)

(assert (=> b!958132 m!888967))

(assert (=> b!958131 m!888965))

(assert (=> b!958131 m!888965))

(declare-fun m!888969 () Bool)

(assert (=> b!958131 m!888969))

(declare-fun m!888971 () Bool)

(assert (=> mapNonEmpty!33772 m!888971))

(check-sat b_and!29995 (not start!82244) (not b!958131) (not mapNonEmpty!33772) (not b_next!18489) (not b!958132) tp_is_empty!21195 (not b!958130) (not b!958133))
(check-sat b_and!29995 (not b_next!18489))
