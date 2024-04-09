; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81872 () Bool)

(assert start!81872)

(declare-fun b_free!18339 () Bool)

(declare-fun b_next!18339 () Bool)

(assert (=> start!81872 (= b_free!18339 (not b_next!18339))))

(declare-fun tp!63717 () Bool)

(declare-fun b_and!29843 () Bool)

(assert (=> start!81872 (= tp!63717 b_and!29843)))

(declare-fun res!639161 () Bool)

(declare-fun e!537681 () Bool)

(assert (=> start!81872 (=> (not res!639161) (not e!537681))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81872 (= res!639161 (validMask!0 mask!1823))))

(assert (=> start!81872 e!537681))

(assert (=> start!81872 true))

(declare-fun tp_is_empty!20883 () Bool)

(assert (=> start!81872 tp_is_empty!20883))

(declare-datatypes ((array!57891 0))(
  ( (array!57892 (arr!27821 (Array (_ BitVec 32) (_ BitVec 64))) (size!28301 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57891)

(declare-fun array_inv!21539 (array!57891) Bool)

(assert (=> start!81872 (array_inv!21539 _keys!1441)))

(declare-datatypes ((V!32827 0))(
  ( (V!32828 (val!10492 Int)) )
))
(declare-datatypes ((ValueCell!9960 0))(
  ( (ValueCellFull!9960 (v!13047 V!32827)) (EmptyCell!9960) )
))
(declare-datatypes ((array!57893 0))(
  ( (array!57894 (arr!27822 (Array (_ BitVec 32) ValueCell!9960)) (size!28302 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57893)

(declare-fun e!537679 () Bool)

(declare-fun array_inv!21540 (array!57893) Bool)

(assert (=> start!81872 (and (array_inv!21540 _values!1197) e!537679)))

(assert (=> start!81872 tp!63717))

(declare-fun mapIsEmpty!33286 () Bool)

(declare-fun mapRes!33286 () Bool)

(assert (=> mapIsEmpty!33286 mapRes!33286))

(declare-fun b!954304 () Bool)

(assert (=> b!954304 (= e!537681 false)))

(declare-fun zeroValue!1139 () V!32827)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429847 () Bool)

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32827)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13714 0))(
  ( (tuple2!13715 (_1!6867 (_ BitVec 64)) (_2!6867 V!32827)) )
))
(declare-datatypes ((List!19530 0))(
  ( (Nil!19527) (Cons!19526 (h!20688 tuple2!13714) (t!27899 List!19530)) )
))
(declare-datatypes ((ListLongMap!12425 0))(
  ( (ListLongMap!12426 (toList!6228 List!19530)) )
))
(declare-fun contains!5278 (ListLongMap!12425 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3413 (array!57891 array!57893 (_ BitVec 32) (_ BitVec 32) V!32827 V!32827 (_ BitVec 32) Int) ListLongMap!12425)

(assert (=> b!954304 (= lt!429847 (contains!5278 (getCurrentListMap!3413 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27821 _keys!1441) i!735)))))

(declare-fun b!954305 () Bool)

(declare-fun res!639159 () Bool)

(assert (=> b!954305 (=> (not res!639159) (not e!537681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57891 (_ BitVec 32)) Bool)

(assert (=> b!954305 (= res!639159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954306 () Bool)

(declare-fun res!639158 () Bool)

(assert (=> b!954306 (=> (not res!639158) (not e!537681))))

(assert (=> b!954306 (= res!639158 (and (= (size!28302 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28301 _keys!1441) (size!28302 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954307 () Bool)

(declare-fun res!639160 () Bool)

(assert (=> b!954307 (=> (not res!639160) (not e!537681))))

(declare-datatypes ((List!19531 0))(
  ( (Nil!19528) (Cons!19527 (h!20689 (_ BitVec 64)) (t!27900 List!19531)) )
))
(declare-fun arrayNoDuplicates!0 (array!57891 (_ BitVec 32) List!19531) Bool)

(assert (=> b!954307 (= res!639160 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19528))))

(declare-fun b!954308 () Bool)

(declare-fun e!537678 () Bool)

(assert (=> b!954308 (= e!537678 tp_is_empty!20883)))

(declare-fun b!954309 () Bool)

(declare-fun res!639163 () Bool)

(assert (=> b!954309 (=> (not res!639163) (not e!537681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954309 (= res!639163 (validKeyInArray!0 (select (arr!27821 _keys!1441) i!735)))))

(declare-fun b!954310 () Bool)

(declare-fun res!639162 () Bool)

(assert (=> b!954310 (=> (not res!639162) (not e!537681))))

(assert (=> b!954310 (= res!639162 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28301 _keys!1441))))))

(declare-fun b!954311 () Bool)

(declare-fun e!537677 () Bool)

(assert (=> b!954311 (= e!537677 tp_is_empty!20883)))

(declare-fun mapNonEmpty!33286 () Bool)

(declare-fun tp!63718 () Bool)

(assert (=> mapNonEmpty!33286 (= mapRes!33286 (and tp!63718 e!537677))))

(declare-fun mapKey!33286 () (_ BitVec 32))

(declare-fun mapRest!33286 () (Array (_ BitVec 32) ValueCell!9960))

(declare-fun mapValue!33286 () ValueCell!9960)

(assert (=> mapNonEmpty!33286 (= (arr!27822 _values!1197) (store mapRest!33286 mapKey!33286 mapValue!33286))))

(declare-fun b!954312 () Bool)

(assert (=> b!954312 (= e!537679 (and e!537678 mapRes!33286))))

(declare-fun condMapEmpty!33286 () Bool)

(declare-fun mapDefault!33286 () ValueCell!9960)

(assert (=> b!954312 (= condMapEmpty!33286 (= (arr!27822 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9960)) mapDefault!33286)))))

(assert (= (and start!81872 res!639161) b!954306))

(assert (= (and b!954306 res!639158) b!954305))

(assert (= (and b!954305 res!639159) b!954307))

(assert (= (and b!954307 res!639160) b!954310))

(assert (= (and b!954310 res!639162) b!954309))

(assert (= (and b!954309 res!639163) b!954304))

(assert (= (and b!954312 condMapEmpty!33286) mapIsEmpty!33286))

(assert (= (and b!954312 (not condMapEmpty!33286)) mapNonEmpty!33286))

(get-info :version)

(assert (= (and mapNonEmpty!33286 ((_ is ValueCellFull!9960) mapValue!33286)) b!954311))

(assert (= (and b!954312 ((_ is ValueCellFull!9960) mapDefault!33286)) b!954308))

(assert (= start!81872 b!954312))

(declare-fun m!886139 () Bool)

(assert (=> mapNonEmpty!33286 m!886139))

(declare-fun m!886141 () Bool)

(assert (=> start!81872 m!886141))

(declare-fun m!886143 () Bool)

(assert (=> start!81872 m!886143))

(declare-fun m!886145 () Bool)

(assert (=> start!81872 m!886145))

(declare-fun m!886147 () Bool)

(assert (=> b!954309 m!886147))

(assert (=> b!954309 m!886147))

(declare-fun m!886149 () Bool)

(assert (=> b!954309 m!886149))

(declare-fun m!886151 () Bool)

(assert (=> b!954307 m!886151))

(declare-fun m!886153 () Bool)

(assert (=> b!954305 m!886153))

(declare-fun m!886155 () Bool)

(assert (=> b!954304 m!886155))

(assert (=> b!954304 m!886147))

(assert (=> b!954304 m!886155))

(assert (=> b!954304 m!886147))

(declare-fun m!886157 () Bool)

(assert (=> b!954304 m!886157))

(check-sat (not start!81872) (not b_next!18339) tp_is_empty!20883 (not mapNonEmpty!33286) b_and!29843 (not b!954309) (not b!954305) (not b!954304) (not b!954307))
(check-sat b_and!29843 (not b_next!18339))
