; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82214 () Bool)

(assert start!82214)

(declare-fun b_free!18459 () Bool)

(declare-fun b_next!18459 () Bool)

(assert (=> start!82214 (= b_free!18459 (not b_next!18459))))

(declare-fun tp!64338 () Bool)

(declare-fun b_and!29965 () Bool)

(assert (=> start!82214 (= tp!64338 b_and!29965)))

(declare-fun mapNonEmpty!33727 () Bool)

(declare-fun mapRes!33727 () Bool)

(declare-fun tp!64339 () Bool)

(declare-fun e!539962 () Bool)

(assert (=> mapNonEmpty!33727 (= mapRes!33727 (and tp!64339 e!539962))))

(declare-datatypes ((V!33203 0))(
  ( (V!33204 (val!10633 Int)) )
))
(declare-datatypes ((ValueCell!10101 0))(
  ( (ValueCellFull!10101 (v!13190 V!33203)) (EmptyCell!10101) )
))
(declare-fun mapValue!33727 () ValueCell!10101)

(declare-datatypes ((array!58447 0))(
  ( (array!58448 (arr!28093 (Array (_ BitVec 32) ValueCell!10101)) (size!28573 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58447)

(declare-fun mapKey!33727 () (_ BitVec 32))

(declare-fun mapRest!33727 () (Array (_ BitVec 32) ValueCell!10101))

(assert (=> mapNonEmpty!33727 (= (arr!28093 _values!1386) (store mapRest!33727 mapKey!33727 mapValue!33727))))

(declare-fun b!957725 () Bool)

(declare-fun res!641185 () Bool)

(declare-fun e!539963 () Bool)

(assert (=> b!957725 (=> (not res!641185) (not e!539963))))

(declare-datatypes ((array!58449 0))(
  ( (array!58450 (arr!28094 (Array (_ BitVec 32) (_ BitVec 64))) (size!28574 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58449)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!957725 (= res!641185 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28574 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28574 _keys!1668))))))

(declare-fun b!957726 () Bool)

(assert (=> b!957726 (= e!539963 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33203)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33203)

(declare-fun lt!430325 () Bool)

(declare-datatypes ((tuple2!13796 0))(
  ( (tuple2!13797 (_1!6908 (_ BitVec 64)) (_2!6908 V!33203)) )
))
(declare-datatypes ((List!19663 0))(
  ( (Nil!19660) (Cons!19659 (h!20821 tuple2!13796) (t!28034 List!19663)) )
))
(declare-datatypes ((ListLongMap!12507 0))(
  ( (ListLongMap!12508 (toList!6269 List!19663)) )
))
(declare-fun contains!5322 (ListLongMap!12507 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3454 (array!58449 array!58447 (_ BitVec 32) (_ BitVec 32) V!33203 V!33203 (_ BitVec 32) Int) ListLongMap!12507)

(assert (=> b!957726 (= lt!430325 (contains!5322 (getCurrentListMap!3454 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28094 _keys!1668) i!793)))))

(declare-fun b!957727 () Bool)

(declare-fun tp_is_empty!21165 () Bool)

(assert (=> b!957727 (= e!539962 tp_is_empty!21165)))

(declare-fun b!957728 () Bool)

(declare-fun e!539961 () Bool)

(declare-fun e!539960 () Bool)

(assert (=> b!957728 (= e!539961 (and e!539960 mapRes!33727))))

(declare-fun condMapEmpty!33727 () Bool)

(declare-fun mapDefault!33727 () ValueCell!10101)

(assert (=> b!957728 (= condMapEmpty!33727 (= (arr!28093 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10101)) mapDefault!33727)))))

(declare-fun res!641187 () Bool)

(assert (=> start!82214 (=> (not res!641187) (not e!539963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82214 (= res!641187 (validMask!0 mask!2088))))

(assert (=> start!82214 e!539963))

(assert (=> start!82214 true))

(assert (=> start!82214 tp_is_empty!21165))

(declare-fun array_inv!21735 (array!58449) Bool)

(assert (=> start!82214 (array_inv!21735 _keys!1668)))

(declare-fun array_inv!21736 (array!58447) Bool)

(assert (=> start!82214 (and (array_inv!21736 _values!1386) e!539961)))

(assert (=> start!82214 tp!64338))

(declare-fun mapIsEmpty!33727 () Bool)

(assert (=> mapIsEmpty!33727 mapRes!33727))

(declare-fun b!957729 () Bool)

(declare-fun res!641182 () Bool)

(assert (=> b!957729 (=> (not res!641182) (not e!539963))))

(assert (=> b!957729 (= res!641182 (and (= (size!28573 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28574 _keys!1668) (size!28573 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957730 () Bool)

(assert (=> b!957730 (= e!539960 tp_is_empty!21165)))

(declare-fun b!957731 () Bool)

(declare-fun res!641183 () Bool)

(assert (=> b!957731 (=> (not res!641183) (not e!539963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957731 (= res!641183 (validKeyInArray!0 (select (arr!28094 _keys!1668) i!793)))))

(declare-fun b!957732 () Bool)

(declare-fun res!641184 () Bool)

(assert (=> b!957732 (=> (not res!641184) (not e!539963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58449 (_ BitVec 32)) Bool)

(assert (=> b!957732 (= res!641184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957733 () Bool)

(declare-fun res!641186 () Bool)

(assert (=> b!957733 (=> (not res!641186) (not e!539963))))

(declare-datatypes ((List!19664 0))(
  ( (Nil!19661) (Cons!19660 (h!20822 (_ BitVec 64)) (t!28035 List!19664)) )
))
(declare-fun arrayNoDuplicates!0 (array!58449 (_ BitVec 32) List!19664) Bool)

(assert (=> b!957733 (= res!641186 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19661))))

(assert (= (and start!82214 res!641187) b!957729))

(assert (= (and b!957729 res!641182) b!957732))

(assert (= (and b!957732 res!641184) b!957733))

(assert (= (and b!957733 res!641186) b!957725))

(assert (= (and b!957725 res!641185) b!957731))

(assert (= (and b!957731 res!641183) b!957726))

(assert (= (and b!957728 condMapEmpty!33727) mapIsEmpty!33727))

(assert (= (and b!957728 (not condMapEmpty!33727)) mapNonEmpty!33727))

(get-info :version)

(assert (= (and mapNonEmpty!33727 ((_ is ValueCellFull!10101) mapValue!33727)) b!957727))

(assert (= (and b!957728 ((_ is ValueCellFull!10101) mapDefault!33727)) b!957730))

(assert (= start!82214 b!957728))

(declare-fun m!888653 () Bool)

(assert (=> b!957731 m!888653))

(assert (=> b!957731 m!888653))

(declare-fun m!888655 () Bool)

(assert (=> b!957731 m!888655))

(declare-fun m!888657 () Bool)

(assert (=> start!82214 m!888657))

(declare-fun m!888659 () Bool)

(assert (=> start!82214 m!888659))

(declare-fun m!888661 () Bool)

(assert (=> start!82214 m!888661))

(declare-fun m!888663 () Bool)

(assert (=> mapNonEmpty!33727 m!888663))

(declare-fun m!888665 () Bool)

(assert (=> b!957726 m!888665))

(assert (=> b!957726 m!888653))

(assert (=> b!957726 m!888665))

(assert (=> b!957726 m!888653))

(declare-fun m!888667 () Bool)

(assert (=> b!957726 m!888667))

(declare-fun m!888669 () Bool)

(assert (=> b!957733 m!888669))

(declare-fun m!888671 () Bool)

(assert (=> b!957732 m!888671))

(check-sat (not start!82214) (not b!957731) (not b!957733) b_and!29965 (not b!957732) (not b!957726) (not mapNonEmpty!33727) tp_is_empty!21165 (not b_next!18459))
(check-sat b_and!29965 (not b_next!18459))
