; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82304 () Bool)

(assert start!82304)

(declare-fun b_free!18549 () Bool)

(declare-fun b_next!18549 () Bool)

(assert (=> start!82304 (= b_free!18549 (not b_next!18549))))

(declare-fun tp!64608 () Bool)

(declare-fun b_and!30055 () Bool)

(assert (=> start!82304 (= tp!64608 b_and!30055)))

(declare-fun b!958972 () Bool)

(declare-fun res!642027 () Bool)

(declare-fun e!540636 () Bool)

(assert (=> b!958972 (=> (not res!642027) (not e!540636))))

(declare-datatypes ((array!58623 0))(
  ( (array!58624 (arr!28181 (Array (_ BitVec 32) (_ BitVec 64))) (size!28661 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58623)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58623 (_ BitVec 32)) Bool)

(assert (=> b!958972 (= res!642027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958973 () Bool)

(declare-fun res!642030 () Bool)

(assert (=> b!958973 (=> (not res!642030) (not e!540636))))

(declare-datatypes ((V!33323 0))(
  ( (V!33324 (val!10678 Int)) )
))
(declare-fun minValue!1328 () V!33323)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10146 0))(
  ( (ValueCellFull!10146 (v!13235 V!33323)) (EmptyCell!10146) )
))
(declare-datatypes ((array!58625 0))(
  ( (array!58626 (arr!28182 (Array (_ BitVec 32) ValueCell!10146)) (size!28662 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58625)

(declare-fun zeroValue!1328 () V!33323)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-datatypes ((tuple2!13860 0))(
  ( (tuple2!13861 (_1!6940 (_ BitVec 64)) (_2!6940 V!33323)) )
))
(declare-datatypes ((List!19725 0))(
  ( (Nil!19722) (Cons!19721 (h!20883 tuple2!13860) (t!28096 List!19725)) )
))
(declare-datatypes ((ListLongMap!12571 0))(
  ( (ListLongMap!12572 (toList!6301 List!19725)) )
))
(declare-fun contains!5354 (ListLongMap!12571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3486 (array!58623 array!58625 (_ BitVec 32) (_ BitVec 32) V!33323 V!33323 (_ BitVec 32) Int) ListLongMap!12571)

(assert (=> b!958973 (= res!642030 (contains!5354 (getCurrentListMap!3486 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28181 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33862 () Bool)

(declare-fun mapRes!33862 () Bool)

(declare-fun tp!64609 () Bool)

(declare-fun e!540638 () Bool)

(assert (=> mapNonEmpty!33862 (= mapRes!33862 (and tp!64609 e!540638))))

(declare-fun mapKey!33862 () (_ BitVec 32))

(declare-fun mapRest!33862 () (Array (_ BitVec 32) ValueCell!10146))

(declare-fun mapValue!33862 () ValueCell!10146)

(assert (=> mapNonEmpty!33862 (= (arr!28182 _values!1386) (store mapRest!33862 mapKey!33862 mapValue!33862))))

(declare-fun b!958974 () Bool)

(declare-fun tp_is_empty!21255 () Bool)

(assert (=> b!958974 (= e!540638 tp_is_empty!21255)))

(declare-fun b!958975 () Bool)

(declare-fun res!642028 () Bool)

(assert (=> b!958975 (=> (not res!642028) (not e!540636))))

(assert (=> b!958975 (= res!642028 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28661 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28661 _keys!1668))))))

(declare-fun b!958976 () Bool)

(declare-fun res!642025 () Bool)

(assert (=> b!958976 (=> (not res!642025) (not e!540636))))

(declare-datatypes ((List!19726 0))(
  ( (Nil!19723) (Cons!19722 (h!20884 (_ BitVec 64)) (t!28097 List!19726)) )
))
(declare-fun arrayNoDuplicates!0 (array!58623 (_ BitVec 32) List!19726) Bool)

(assert (=> b!958976 (= res!642025 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19723))))

(declare-fun b!958977 () Bool)

(assert (=> b!958977 (= e!540636 (not true))))

(assert (=> b!958977 (contains!5354 (getCurrentListMap!3486 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28181 _keys!1668) i!793))))

(declare-datatypes ((Unit!32153 0))(
  ( (Unit!32154) )
))
(declare-fun lt!430460 () Unit!32153)

(declare-fun lemmaInListMapFromThenInFromSmaller!6 (array!58623 array!58625 (_ BitVec 32) (_ BitVec 32) V!33323 V!33323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32153)

(assert (=> b!958977 (= lt!430460 (lemmaInListMapFromThenInFromSmaller!6 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!958978 () Bool)

(declare-fun res!642026 () Bool)

(assert (=> b!958978 (=> (not res!642026) (not e!540636))))

(assert (=> b!958978 (= res!642026 (and (= (size!28662 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28661 _keys!1668) (size!28662 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958979 () Bool)

(declare-fun res!642024 () Bool)

(assert (=> b!958979 (=> (not res!642024) (not e!540636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958979 (= res!642024 (validKeyInArray!0 (select (arr!28181 _keys!1668) i!793)))))

(declare-fun res!642029 () Bool)

(assert (=> start!82304 (=> (not res!642029) (not e!540636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82304 (= res!642029 (validMask!0 mask!2088))))

(assert (=> start!82304 e!540636))

(assert (=> start!82304 true))

(assert (=> start!82304 tp_is_empty!21255))

(declare-fun array_inv!21793 (array!58623) Bool)

(assert (=> start!82304 (array_inv!21793 _keys!1668)))

(declare-fun e!540635 () Bool)

(declare-fun array_inv!21794 (array!58625) Bool)

(assert (=> start!82304 (and (array_inv!21794 _values!1386) e!540635)))

(assert (=> start!82304 tp!64608))

(declare-fun b!958980 () Bool)

(declare-fun e!540637 () Bool)

(assert (=> b!958980 (= e!540635 (and e!540637 mapRes!33862))))

(declare-fun condMapEmpty!33862 () Bool)

(declare-fun mapDefault!33862 () ValueCell!10146)

(assert (=> b!958980 (= condMapEmpty!33862 (= (arr!28182 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10146)) mapDefault!33862)))))

(declare-fun b!958981 () Bool)

(assert (=> b!958981 (= e!540637 tp_is_empty!21255)))

(declare-fun mapIsEmpty!33862 () Bool)

(assert (=> mapIsEmpty!33862 mapRes!33862))

(assert (= (and start!82304 res!642029) b!958978))

(assert (= (and b!958978 res!642026) b!958972))

(assert (= (and b!958972 res!642027) b!958976))

(assert (= (and b!958976 res!642025) b!958975))

(assert (= (and b!958975 res!642028) b!958979))

(assert (= (and b!958979 res!642024) b!958973))

(assert (= (and b!958973 res!642030) b!958977))

(assert (= (and b!958980 condMapEmpty!33862) mapIsEmpty!33862))

(assert (= (and b!958980 (not condMapEmpty!33862)) mapNonEmpty!33862))

(get-info :version)

(assert (= (and mapNonEmpty!33862 ((_ is ValueCellFull!10146) mapValue!33862)) b!958974))

(assert (= (and b!958980 ((_ is ValueCellFull!10146) mapDefault!33862)) b!958981))

(assert (= start!82304 b!958980))

(declare-fun m!889613 () Bool)

(assert (=> b!958973 m!889613))

(declare-fun m!889615 () Bool)

(assert (=> b!958973 m!889615))

(assert (=> b!958973 m!889613))

(assert (=> b!958973 m!889615))

(declare-fun m!889617 () Bool)

(assert (=> b!958973 m!889617))

(declare-fun m!889619 () Bool)

(assert (=> mapNonEmpty!33862 m!889619))

(assert (=> b!958979 m!889615))

(assert (=> b!958979 m!889615))

(declare-fun m!889621 () Bool)

(assert (=> b!958979 m!889621))

(declare-fun m!889623 () Bool)

(assert (=> start!82304 m!889623))

(declare-fun m!889625 () Bool)

(assert (=> start!82304 m!889625))

(declare-fun m!889627 () Bool)

(assert (=> start!82304 m!889627))

(declare-fun m!889629 () Bool)

(assert (=> b!958977 m!889629))

(assert (=> b!958977 m!889615))

(assert (=> b!958977 m!889629))

(assert (=> b!958977 m!889615))

(declare-fun m!889631 () Bool)

(assert (=> b!958977 m!889631))

(declare-fun m!889633 () Bool)

(assert (=> b!958977 m!889633))

(declare-fun m!889635 () Bool)

(assert (=> b!958976 m!889635))

(declare-fun m!889637 () Bool)

(assert (=> b!958972 m!889637))

(check-sat (not b_next!18549) (not b!958979) tp_is_empty!21255 (not b!958973) (not start!82304) (not b!958976) (not b!958972) (not b!958977) (not mapNonEmpty!33862) b_and!30055)
(check-sat b_and!30055 (not b_next!18549))
