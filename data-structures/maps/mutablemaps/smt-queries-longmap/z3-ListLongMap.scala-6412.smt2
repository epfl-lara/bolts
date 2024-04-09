; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82298 () Bool)

(assert start!82298)

(declare-fun b_free!18543 () Bool)

(declare-fun b_next!18543 () Bool)

(assert (=> start!82298 (= b_free!18543 (not b_next!18543))))

(declare-fun tp!64591 () Bool)

(declare-fun b_and!30049 () Bool)

(assert (=> start!82298 (= tp!64591 b_and!30049)))

(declare-fun b!958882 () Bool)

(declare-fun res!641964 () Bool)

(declare-fun e!540593 () Bool)

(assert (=> b!958882 (=> (not res!641964) (not e!540593))))

(declare-datatypes ((array!58611 0))(
  ( (array!58612 (arr!28175 (Array (_ BitVec 32) (_ BitVec 64))) (size!28655 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58611)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58611 (_ BitVec 32)) Bool)

(assert (=> b!958882 (= res!641964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958883 () Bool)

(assert (=> b!958883 (= e!540593 (not true))))

(declare-datatypes ((V!33315 0))(
  ( (V!33316 (val!10675 Int)) )
))
(declare-fun minValue!1328 () V!33315)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10143 0))(
  ( (ValueCellFull!10143 (v!13232 V!33315)) (EmptyCell!10143) )
))
(declare-datatypes ((array!58613 0))(
  ( (array!58614 (arr!28176 (Array (_ BitVec 32) ValueCell!10143)) (size!28656 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58613)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33315)

(declare-fun i!793 () (_ BitVec 32))

(declare-datatypes ((tuple2!13854 0))(
  ( (tuple2!13855 (_1!6937 (_ BitVec 64)) (_2!6937 V!33315)) )
))
(declare-datatypes ((List!19719 0))(
  ( (Nil!19716) (Cons!19715 (h!20877 tuple2!13854) (t!28090 List!19719)) )
))
(declare-datatypes ((ListLongMap!12565 0))(
  ( (ListLongMap!12566 (toList!6298 List!19719)) )
))
(declare-fun contains!5351 (ListLongMap!12565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3483 (array!58611 array!58613 (_ BitVec 32) (_ BitVec 32) V!33315 V!33315 (_ BitVec 32) Int) ListLongMap!12565)

(assert (=> b!958883 (contains!5351 (getCurrentListMap!3483 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28175 _keys!1668) i!793))))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((Unit!32149 0))(
  ( (Unit!32150) )
))
(declare-fun lt!430451 () Unit!32149)

(declare-fun lemmaInListMapFromThenInFromSmaller!4 (array!58611 array!58613 (_ BitVec 32) (_ BitVec 32) V!33315 V!33315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32149)

(assert (=> b!958883 (= lt!430451 (lemmaInListMapFromThenInFromSmaller!4 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun res!641967 () Bool)

(assert (=> start!82298 (=> (not res!641967) (not e!540593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82298 (= res!641967 (validMask!0 mask!2088))))

(assert (=> start!82298 e!540593))

(assert (=> start!82298 true))

(declare-fun tp_is_empty!21249 () Bool)

(assert (=> start!82298 tp_is_empty!21249))

(declare-fun array_inv!21789 (array!58611) Bool)

(assert (=> start!82298 (array_inv!21789 _keys!1668)))

(declare-fun e!540591 () Bool)

(declare-fun array_inv!21790 (array!58613) Bool)

(assert (=> start!82298 (and (array_inv!21790 _values!1386) e!540591)))

(assert (=> start!82298 tp!64591))

(declare-fun b!958884 () Bool)

(declare-fun res!641961 () Bool)

(assert (=> b!958884 (=> (not res!641961) (not e!540593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958884 (= res!641961 (validKeyInArray!0 (select (arr!28175 _keys!1668) i!793)))))

(declare-fun b!958885 () Bool)

(declare-fun e!540590 () Bool)

(declare-fun mapRes!33853 () Bool)

(assert (=> b!958885 (= e!540591 (and e!540590 mapRes!33853))))

(declare-fun condMapEmpty!33853 () Bool)

(declare-fun mapDefault!33853 () ValueCell!10143)

(assert (=> b!958885 (= condMapEmpty!33853 (= (arr!28176 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10143)) mapDefault!33853)))))

(declare-fun b!958886 () Bool)

(declare-fun res!641966 () Bool)

(assert (=> b!958886 (=> (not res!641966) (not e!540593))))

(assert (=> b!958886 (= res!641966 (and (= (size!28656 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28655 _keys!1668) (size!28656 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958887 () Bool)

(declare-fun res!641965 () Bool)

(assert (=> b!958887 (=> (not res!641965) (not e!540593))))

(assert (=> b!958887 (= res!641965 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28655 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28655 _keys!1668))))))

(declare-fun b!958888 () Bool)

(declare-fun e!540589 () Bool)

(assert (=> b!958888 (= e!540589 tp_is_empty!21249)))

(declare-fun b!958889 () Bool)

(declare-fun res!641963 () Bool)

(assert (=> b!958889 (=> (not res!641963) (not e!540593))))

(assert (=> b!958889 (= res!641963 (contains!5351 (getCurrentListMap!3483 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28175 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33853 () Bool)

(assert (=> mapIsEmpty!33853 mapRes!33853))

(declare-fun b!958890 () Bool)

(declare-fun res!641962 () Bool)

(assert (=> b!958890 (=> (not res!641962) (not e!540593))))

(declare-datatypes ((List!19720 0))(
  ( (Nil!19717) (Cons!19716 (h!20878 (_ BitVec 64)) (t!28091 List!19720)) )
))
(declare-fun arrayNoDuplicates!0 (array!58611 (_ BitVec 32) List!19720) Bool)

(assert (=> b!958890 (= res!641962 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19717))))

(declare-fun mapNonEmpty!33853 () Bool)

(declare-fun tp!64590 () Bool)

(assert (=> mapNonEmpty!33853 (= mapRes!33853 (and tp!64590 e!540589))))

(declare-fun mapValue!33853 () ValueCell!10143)

(declare-fun mapRest!33853 () (Array (_ BitVec 32) ValueCell!10143))

(declare-fun mapKey!33853 () (_ BitVec 32))

(assert (=> mapNonEmpty!33853 (= (arr!28176 _values!1386) (store mapRest!33853 mapKey!33853 mapValue!33853))))

(declare-fun b!958891 () Bool)

(assert (=> b!958891 (= e!540590 tp_is_empty!21249)))

(assert (= (and start!82298 res!641967) b!958886))

(assert (= (and b!958886 res!641966) b!958882))

(assert (= (and b!958882 res!641964) b!958890))

(assert (= (and b!958890 res!641962) b!958887))

(assert (= (and b!958887 res!641965) b!958884))

(assert (= (and b!958884 res!641961) b!958889))

(assert (= (and b!958889 res!641963) b!958883))

(assert (= (and b!958885 condMapEmpty!33853) mapIsEmpty!33853))

(assert (= (and b!958885 (not condMapEmpty!33853)) mapNonEmpty!33853))

(get-info :version)

(assert (= (and mapNonEmpty!33853 ((_ is ValueCellFull!10143) mapValue!33853)) b!958888))

(assert (= (and b!958885 ((_ is ValueCellFull!10143) mapDefault!33853)) b!958891))

(assert (= start!82298 b!958885))

(declare-fun m!889535 () Bool)

(assert (=> b!958883 m!889535))

(declare-fun m!889537 () Bool)

(assert (=> b!958883 m!889537))

(assert (=> b!958883 m!889535))

(assert (=> b!958883 m!889537))

(declare-fun m!889539 () Bool)

(assert (=> b!958883 m!889539))

(declare-fun m!889541 () Bool)

(assert (=> b!958883 m!889541))

(declare-fun m!889543 () Bool)

(assert (=> b!958889 m!889543))

(assert (=> b!958889 m!889537))

(assert (=> b!958889 m!889543))

(assert (=> b!958889 m!889537))

(declare-fun m!889545 () Bool)

(assert (=> b!958889 m!889545))

(declare-fun m!889547 () Bool)

(assert (=> mapNonEmpty!33853 m!889547))

(declare-fun m!889549 () Bool)

(assert (=> b!958882 m!889549))

(declare-fun m!889551 () Bool)

(assert (=> start!82298 m!889551))

(declare-fun m!889553 () Bool)

(assert (=> start!82298 m!889553))

(declare-fun m!889555 () Bool)

(assert (=> start!82298 m!889555))

(declare-fun m!889557 () Bool)

(assert (=> b!958890 m!889557))

(assert (=> b!958884 m!889537))

(assert (=> b!958884 m!889537))

(declare-fun m!889559 () Bool)

(assert (=> b!958884 m!889559))

(check-sat (not b!958884) (not b_next!18543) tp_is_empty!21249 (not b!958890) (not start!82298) (not mapNonEmpty!33853) (not b!958883) b_and!30049 (not b!958889) (not b!958882))
(check-sat b_and!30049 (not b_next!18543))
