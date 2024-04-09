; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82232 () Bool)

(assert start!82232)

(declare-fun b_free!18477 () Bool)

(declare-fun b_next!18477 () Bool)

(assert (=> start!82232 (= b_free!18477 (not b_next!18477))))

(declare-fun tp!64393 () Bool)

(declare-fun b_and!29983 () Bool)

(assert (=> start!82232 (= tp!64393 b_and!29983)))

(declare-fun b!957968 () Bool)

(declare-fun res!641347 () Bool)

(declare-fun e!540097 () Bool)

(assert (=> b!957968 (=> (not res!641347) (not e!540097))))

(declare-datatypes ((array!58483 0))(
  ( (array!58484 (arr!28111 (Array (_ BitVec 32) (_ BitVec 64))) (size!28591 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58483)

(declare-datatypes ((List!19673 0))(
  ( (Nil!19670) (Cons!19669 (h!20831 (_ BitVec 64)) (t!28044 List!19673)) )
))
(declare-fun arrayNoDuplicates!0 (array!58483 (_ BitVec 32) List!19673) Bool)

(assert (=> b!957968 (= res!641347 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19670))))

(declare-fun b!957969 () Bool)

(declare-fun e!540098 () Bool)

(declare-fun tp_is_empty!21183 () Bool)

(assert (=> b!957969 (= e!540098 tp_is_empty!21183)))

(declare-fun b!957970 () Bool)

(assert (=> b!957970 (= e!540097 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33227 0))(
  ( (V!33228 (val!10642 Int)) )
))
(declare-fun minValue!1328 () V!33227)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun lt!430352 () Bool)

(declare-datatypes ((ValueCell!10110 0))(
  ( (ValueCellFull!10110 (v!13199 V!33227)) (EmptyCell!10110) )
))
(declare-datatypes ((array!58485 0))(
  ( (array!58486 (arr!28112 (Array (_ BitVec 32) ValueCell!10110)) (size!28592 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58485)

(declare-fun zeroValue!1328 () V!33227)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-datatypes ((tuple2!13806 0))(
  ( (tuple2!13807 (_1!6913 (_ BitVec 64)) (_2!6913 V!33227)) )
))
(declare-datatypes ((List!19674 0))(
  ( (Nil!19671) (Cons!19670 (h!20832 tuple2!13806) (t!28045 List!19674)) )
))
(declare-datatypes ((ListLongMap!12517 0))(
  ( (ListLongMap!12518 (toList!6274 List!19674)) )
))
(declare-fun contains!5327 (ListLongMap!12517 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3459 (array!58483 array!58485 (_ BitVec 32) (_ BitVec 32) V!33227 V!33227 (_ BitVec 32) Int) ListLongMap!12517)

(assert (=> b!957970 (= lt!430352 (contains!5327 (getCurrentListMap!3459 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28111 _keys!1668) i!793)))))

(declare-fun b!957971 () Bool)

(declare-fun res!641349 () Bool)

(assert (=> b!957971 (=> (not res!641349) (not e!540097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957971 (= res!641349 (validKeyInArray!0 (select (arr!28111 _keys!1668) i!793)))))

(declare-fun b!957972 () Bool)

(declare-fun e!540095 () Bool)

(assert (=> b!957972 (= e!540095 tp_is_empty!21183)))

(declare-fun mapIsEmpty!33754 () Bool)

(declare-fun mapRes!33754 () Bool)

(assert (=> mapIsEmpty!33754 mapRes!33754))

(declare-fun b!957974 () Bool)

(declare-fun res!641348 () Bool)

(assert (=> b!957974 (=> (not res!641348) (not e!540097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58483 (_ BitVec 32)) Bool)

(assert (=> b!957974 (= res!641348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957975 () Bool)

(declare-fun res!641344 () Bool)

(assert (=> b!957975 (=> (not res!641344) (not e!540097))))

(assert (=> b!957975 (= res!641344 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28591 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28591 _keys!1668))))))

(declare-fun res!641346 () Bool)

(assert (=> start!82232 (=> (not res!641346) (not e!540097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82232 (= res!641346 (validMask!0 mask!2088))))

(assert (=> start!82232 e!540097))

(assert (=> start!82232 true))

(assert (=> start!82232 tp_is_empty!21183))

(declare-fun array_inv!21749 (array!58483) Bool)

(assert (=> start!82232 (array_inv!21749 _keys!1668)))

(declare-fun e!540094 () Bool)

(declare-fun array_inv!21750 (array!58485) Bool)

(assert (=> start!82232 (and (array_inv!21750 _values!1386) e!540094)))

(assert (=> start!82232 tp!64393))

(declare-fun b!957973 () Bool)

(assert (=> b!957973 (= e!540094 (and e!540098 mapRes!33754))))

(declare-fun condMapEmpty!33754 () Bool)

(declare-fun mapDefault!33754 () ValueCell!10110)

(assert (=> b!957973 (= condMapEmpty!33754 (= (arr!28112 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10110)) mapDefault!33754)))))

(declare-fun b!957976 () Bool)

(declare-fun res!641345 () Bool)

(assert (=> b!957976 (=> (not res!641345) (not e!540097))))

(assert (=> b!957976 (= res!641345 (and (= (size!28592 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28591 _keys!1668) (size!28592 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33754 () Bool)

(declare-fun tp!64392 () Bool)

(assert (=> mapNonEmpty!33754 (= mapRes!33754 (and tp!64392 e!540095))))

(declare-fun mapKey!33754 () (_ BitVec 32))

(declare-fun mapRest!33754 () (Array (_ BitVec 32) ValueCell!10110))

(declare-fun mapValue!33754 () ValueCell!10110)

(assert (=> mapNonEmpty!33754 (= (arr!28112 _values!1386) (store mapRest!33754 mapKey!33754 mapValue!33754))))

(assert (= (and start!82232 res!641346) b!957976))

(assert (= (and b!957976 res!641345) b!957974))

(assert (= (and b!957974 res!641348) b!957968))

(assert (= (and b!957968 res!641347) b!957975))

(assert (= (and b!957975 res!641344) b!957971))

(assert (= (and b!957971 res!641349) b!957970))

(assert (= (and b!957973 condMapEmpty!33754) mapIsEmpty!33754))

(assert (= (and b!957973 (not condMapEmpty!33754)) mapNonEmpty!33754))

(get-info :version)

(assert (= (and mapNonEmpty!33754 ((_ is ValueCellFull!10110) mapValue!33754)) b!957972))

(assert (= (and b!957973 ((_ is ValueCellFull!10110) mapDefault!33754)) b!957969))

(assert (= start!82232 b!957973))

(declare-fun m!888833 () Bool)

(assert (=> b!957968 m!888833))

(declare-fun m!888835 () Bool)

(assert (=> b!957970 m!888835))

(declare-fun m!888837 () Bool)

(assert (=> b!957970 m!888837))

(assert (=> b!957970 m!888835))

(assert (=> b!957970 m!888837))

(declare-fun m!888839 () Bool)

(assert (=> b!957970 m!888839))

(assert (=> b!957971 m!888837))

(assert (=> b!957971 m!888837))

(declare-fun m!888841 () Bool)

(assert (=> b!957971 m!888841))

(declare-fun m!888843 () Bool)

(assert (=> mapNonEmpty!33754 m!888843))

(declare-fun m!888845 () Bool)

(assert (=> start!82232 m!888845))

(declare-fun m!888847 () Bool)

(assert (=> start!82232 m!888847))

(declare-fun m!888849 () Bool)

(assert (=> start!82232 m!888849))

(declare-fun m!888851 () Bool)

(assert (=> b!957974 m!888851))

(check-sat (not b_next!18477) (not b!957968) (not b!957971) (not b!957974) (not b!957970) tp_is_empty!21183 (not start!82232) b_and!29983 (not mapNonEmpty!33754))
(check-sat b_and!29983 (not b_next!18477))
