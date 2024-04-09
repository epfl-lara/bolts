; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81962 () Bool)

(assert start!81962)

(declare-fun b_free!18429 () Bool)

(declare-fun b_next!18429 () Bool)

(assert (=> start!81962 (= b_free!18429 (not b_next!18429))))

(declare-fun tp!63988 () Bool)

(declare-fun b_and!29933 () Bool)

(assert (=> start!81962 (= tp!63988 b_and!29933)))

(declare-fun b!955587 () Bool)

(declare-fun res!640042 () Bool)

(declare-fun e!538356 () Bool)

(assert (=> b!955587 (=> (not res!640042) (not e!538356))))

(declare-datatypes ((array!58071 0))(
  ( (array!58072 (arr!27911 (Array (_ BitVec 32) (_ BitVec 64))) (size!28391 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58071)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955587 (= res!640042 (validKeyInArray!0 (select (arr!27911 _keys!1441) i!735)))))

(declare-fun b!955588 () Bool)

(declare-fun res!640040 () Bool)

(assert (=> b!955588 (=> (not res!640040) (not e!538356))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32947 0))(
  ( (V!32948 (val!10537 Int)) )
))
(declare-fun zeroValue!1139 () V!32947)

(declare-datatypes ((ValueCell!10005 0))(
  ( (ValueCellFull!10005 (v!13092 V!32947)) (EmptyCell!10005) )
))
(declare-datatypes ((array!58073 0))(
  ( (array!58074 (arr!27912 (Array (_ BitVec 32) ValueCell!10005)) (size!28392 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58073)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32947)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13778 0))(
  ( (tuple2!13779 (_1!6899 (_ BitVec 64)) (_2!6899 V!32947)) )
))
(declare-datatypes ((List!19595 0))(
  ( (Nil!19592) (Cons!19591 (h!20753 tuple2!13778) (t!27964 List!19595)) )
))
(declare-datatypes ((ListLongMap!12489 0))(
  ( (ListLongMap!12490 (toList!6260 List!19595)) )
))
(declare-fun contains!5310 (ListLongMap!12489 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3445 (array!58071 array!58073 (_ BitVec 32) (_ BitVec 32) V!32947 V!32947 (_ BitVec 32) Int) ListLongMap!12489)

(assert (=> b!955588 (= res!640040 (contains!5310 (getCurrentListMap!3445 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27911 _keys!1441) i!735)))))

(declare-fun b!955589 () Bool)

(assert (=> b!955589 (= e!538356 (not true))))

(assert (=> b!955589 (contains!5310 (getCurrentListMap!3445 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27911 _keys!1441) i!735))))

(declare-datatypes ((Unit!32117 0))(
  ( (Unit!32118) )
))
(declare-fun lt!429982 () Unit!32117)

(declare-fun lemmaInListMapFromThenFromZero!15 (array!58071 array!58073 (_ BitVec 32) (_ BitVec 32) V!32947 V!32947 (_ BitVec 32) (_ BitVec 32) Int) Unit!32117)

(assert (=> b!955589 (= lt!429982 (lemmaInListMapFromThenFromZero!15 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955590 () Bool)

(declare-fun res!640039 () Bool)

(assert (=> b!955590 (=> (not res!640039) (not e!538356))))

(assert (=> b!955590 (= res!640039 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28391 _keys!1441))))))

(declare-fun b!955591 () Bool)

(declare-fun e!538353 () Bool)

(declare-fun e!538352 () Bool)

(declare-fun mapRes!33421 () Bool)

(assert (=> b!955591 (= e!538353 (and e!538352 mapRes!33421))))

(declare-fun condMapEmpty!33421 () Bool)

(declare-fun mapDefault!33421 () ValueCell!10005)

(assert (=> b!955591 (= condMapEmpty!33421 (= (arr!27912 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10005)) mapDefault!33421)))))

(declare-fun b!955592 () Bool)

(declare-fun res!640041 () Bool)

(assert (=> b!955592 (=> (not res!640041) (not e!538356))))

(assert (=> b!955592 (= res!640041 (and (= (size!28392 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28391 _keys!1441) (size!28392 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640036 () Bool)

(assert (=> start!81962 (=> (not res!640036) (not e!538356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81962 (= res!640036 (validMask!0 mask!1823))))

(assert (=> start!81962 e!538356))

(assert (=> start!81962 true))

(declare-fun tp_is_empty!20973 () Bool)

(assert (=> start!81962 tp_is_empty!20973))

(declare-fun array_inv!21609 (array!58071) Bool)

(assert (=> start!81962 (array_inv!21609 _keys!1441)))

(declare-fun array_inv!21610 (array!58073) Bool)

(assert (=> start!81962 (and (array_inv!21610 _values!1197) e!538353)))

(assert (=> start!81962 tp!63988))

(declare-fun mapIsEmpty!33421 () Bool)

(assert (=> mapIsEmpty!33421 mapRes!33421))

(declare-fun b!955593 () Bool)

(assert (=> b!955593 (= e!538352 tp_is_empty!20973)))

(declare-fun b!955594 () Bool)

(declare-fun res!640037 () Bool)

(assert (=> b!955594 (=> (not res!640037) (not e!538356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58071 (_ BitVec 32)) Bool)

(assert (=> b!955594 (= res!640037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33421 () Bool)

(declare-fun tp!63987 () Bool)

(declare-fun e!538355 () Bool)

(assert (=> mapNonEmpty!33421 (= mapRes!33421 (and tp!63987 e!538355))))

(declare-fun mapRest!33421 () (Array (_ BitVec 32) ValueCell!10005))

(declare-fun mapValue!33421 () ValueCell!10005)

(declare-fun mapKey!33421 () (_ BitVec 32))

(assert (=> mapNonEmpty!33421 (= (arr!27912 _values!1197) (store mapRest!33421 mapKey!33421 mapValue!33421))))

(declare-fun b!955595 () Bool)

(declare-fun res!640038 () Bool)

(assert (=> b!955595 (=> (not res!640038) (not e!538356))))

(declare-datatypes ((List!19596 0))(
  ( (Nil!19593) (Cons!19592 (h!20754 (_ BitVec 64)) (t!27965 List!19596)) )
))
(declare-fun arrayNoDuplicates!0 (array!58071 (_ BitVec 32) List!19596) Bool)

(assert (=> b!955595 (= res!640038 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19593))))

(declare-fun b!955596 () Bool)

(assert (=> b!955596 (= e!538355 tp_is_empty!20973)))

(assert (= (and start!81962 res!640036) b!955592))

(assert (= (and b!955592 res!640041) b!955594))

(assert (= (and b!955594 res!640037) b!955595))

(assert (= (and b!955595 res!640038) b!955590))

(assert (= (and b!955590 res!640039) b!955587))

(assert (= (and b!955587 res!640042) b!955588))

(assert (= (and b!955588 res!640040) b!955589))

(assert (= (and b!955591 condMapEmpty!33421) mapIsEmpty!33421))

(assert (= (and b!955591 (not condMapEmpty!33421)) mapNonEmpty!33421))

(get-info :version)

(assert (= (and mapNonEmpty!33421 ((_ is ValueCellFull!10005) mapValue!33421)) b!955596))

(assert (= (and b!955591 ((_ is ValueCellFull!10005) mapDefault!33421)) b!955593))

(assert (= start!81962 b!955591))

(declare-fun m!887171 () Bool)

(assert (=> b!955587 m!887171))

(assert (=> b!955587 m!887171))

(declare-fun m!887173 () Bool)

(assert (=> b!955587 m!887173))

(declare-fun m!887175 () Bool)

(assert (=> b!955588 m!887175))

(assert (=> b!955588 m!887171))

(assert (=> b!955588 m!887175))

(assert (=> b!955588 m!887171))

(declare-fun m!887177 () Bool)

(assert (=> b!955588 m!887177))

(declare-fun m!887179 () Bool)

(assert (=> b!955595 m!887179))

(declare-fun m!887181 () Bool)

(assert (=> b!955594 m!887181))

(declare-fun m!887183 () Bool)

(assert (=> mapNonEmpty!33421 m!887183))

(declare-fun m!887185 () Bool)

(assert (=> b!955589 m!887185))

(assert (=> b!955589 m!887171))

(assert (=> b!955589 m!887185))

(assert (=> b!955589 m!887171))

(declare-fun m!887187 () Bool)

(assert (=> b!955589 m!887187))

(declare-fun m!887189 () Bool)

(assert (=> b!955589 m!887189))

(declare-fun m!887191 () Bool)

(assert (=> start!81962 m!887191))

(declare-fun m!887193 () Bool)

(assert (=> start!81962 m!887193))

(declare-fun m!887195 () Bool)

(assert (=> start!81962 m!887195))

(check-sat (not mapNonEmpty!33421) (not start!81962) (not b!955587) (not b!955588) (not b!955594) (not b_next!18429) (not b!955589) tp_is_empty!20973 b_and!29933 (not b!955595))
(check-sat b_and!29933 (not b_next!18429))
