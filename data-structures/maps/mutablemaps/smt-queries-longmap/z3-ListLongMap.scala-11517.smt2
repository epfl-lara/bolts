; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134110 () Bool)

(assert start!134110)

(declare-fun b_free!32205 () Bool)

(declare-fun b_next!32205 () Bool)

(assert (=> start!134110 (= b_free!32205 (not b_next!32205))))

(declare-fun tp!113934 () Bool)

(declare-fun b_and!51859 () Bool)

(assert (=> start!134110 (= tp!113934 b_and!51859)))

(declare-fun b!1566906 () Bool)

(declare-fun e!873451 () Bool)

(declare-fun tp_is_empty!38985 () Bool)

(assert (=> b!1566906 (= e!873451 tp_is_empty!38985)))

(declare-fun mapIsEmpty!59877 () Bool)

(declare-fun mapRes!59877 () Bool)

(assert (=> mapIsEmpty!59877 mapRes!59877))

(declare-fun b!1566907 () Bool)

(declare-fun res!1071013 () Bool)

(declare-fun e!873448 () Bool)

(assert (=> b!1566907 (=> (not res!1071013) (not e!873448))))

(declare-datatypes ((array!104633 0))(
  ( (array!104634 (arr!50497 (Array (_ BitVec 32) (_ BitVec 64))) (size!51048 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104633)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566907 (= res!1071013 (not (validKeyInArray!0 (select (arr!50497 _keys!637) from!782))))))

(declare-fun b!1566908 () Bool)

(declare-fun res!1071012 () Bool)

(assert (=> b!1566908 (=> (not res!1071012) (not e!873448))))

(declare-datatypes ((List!36808 0))(
  ( (Nil!36805) (Cons!36804 (h!38252 (_ BitVec 64)) (t!51719 List!36808)) )
))
(declare-fun arrayNoDuplicates!0 (array!104633 (_ BitVec 32) List!36808) Bool)

(assert (=> b!1566908 (= res!1071012 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36805))))

(declare-fun res!1071015 () Bool)

(assert (=> start!134110 (=> (not res!1071015) (not e!873448))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134110 (= res!1071015 (validMask!0 mask!947))))

(assert (=> start!134110 e!873448))

(assert (=> start!134110 tp!113934))

(assert (=> start!134110 tp_is_empty!38985))

(assert (=> start!134110 true))

(declare-fun array_inv!39153 (array!104633) Bool)

(assert (=> start!134110 (array_inv!39153 _keys!637)))

(declare-datatypes ((V!60187 0))(
  ( (V!60188 (val!19576 Int)) )
))
(declare-datatypes ((ValueCell!18462 0))(
  ( (ValueCellFull!18462 (v!22332 V!60187)) (EmptyCell!18462) )
))
(declare-datatypes ((array!104635 0))(
  ( (array!104636 (arr!50498 (Array (_ BitVec 32) ValueCell!18462)) (size!51049 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104635)

(declare-fun e!873447 () Bool)

(declare-fun array_inv!39154 (array!104635) Bool)

(assert (=> start!134110 (and (array_inv!39154 _values!487) e!873447)))

(declare-fun mapNonEmpty!59877 () Bool)

(declare-fun tp!113935 () Bool)

(assert (=> mapNonEmpty!59877 (= mapRes!59877 (and tp!113935 e!873451))))

(declare-fun mapRest!59877 () (Array (_ BitVec 32) ValueCell!18462))

(declare-fun mapValue!59877 () ValueCell!18462)

(declare-fun mapKey!59877 () (_ BitVec 32))

(assert (=> mapNonEmpty!59877 (= (arr!50498 _values!487) (store mapRest!59877 mapKey!59877 mapValue!59877))))

(declare-fun b!1566909 () Bool)

(declare-fun e!873450 () Bool)

(assert (=> b!1566909 (= e!873447 (and e!873450 mapRes!59877))))

(declare-fun condMapEmpty!59877 () Bool)

(declare-fun mapDefault!59877 () ValueCell!18462)

(assert (=> b!1566909 (= condMapEmpty!59877 (= (arr!50498 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18462)) mapDefault!59877)))))

(declare-fun b!1566910 () Bool)

(declare-fun res!1071014 () Bool)

(assert (=> b!1566910 (=> (not res!1071014) (not e!873448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104633 (_ BitVec 32)) Bool)

(assert (=> b!1566910 (= res!1071014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566911 () Bool)

(declare-fun e!873452 () Bool)

(assert (=> b!1566911 (= e!873452 false)))

(declare-fun lt!672772 () Bool)

(declare-datatypes ((tuple2!25422 0))(
  ( (tuple2!25423 (_1!12721 (_ BitVec 64)) (_2!12721 V!60187)) )
))
(declare-datatypes ((List!36809 0))(
  ( (Nil!36806) (Cons!36805 (h!38253 tuple2!25422) (t!51720 List!36809)) )
))
(declare-datatypes ((ListLongMap!22869 0))(
  ( (ListLongMap!22870 (toList!11450 List!36809)) )
))
(declare-fun lt!672773 () ListLongMap!22869)

(declare-fun contains!10374 (ListLongMap!22869 (_ BitVec 64)) Bool)

(assert (=> b!1566911 (= lt!672772 (contains!10374 lt!672773 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566912 () Bool)

(declare-fun res!1071010 () Bool)

(assert (=> b!1566912 (=> (not res!1071010) (not e!873448))))

(assert (=> b!1566912 (= res!1071010 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51048 _keys!637)) (bvslt from!782 (size!51048 _keys!637))))))

(declare-fun b!1566913 () Bool)

(declare-fun res!1071009 () Bool)

(assert (=> b!1566913 (=> (not res!1071009) (not e!873448))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1566913 (= res!1071009 (and (= (size!51049 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51048 _keys!637) (size!51049 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1566914 () Bool)

(assert (=> b!1566914 (= e!873450 tp_is_empty!38985)))

(declare-fun b!1566915 () Bool)

(assert (=> b!1566915 (= e!873448 e!873452)))

(declare-fun res!1071011 () Bool)

(assert (=> b!1566915 (=> (not res!1071011) (not e!873452))))

(assert (=> b!1566915 (= res!1071011 (not (contains!10374 lt!672773 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60187)

(declare-fun minValue!453 () V!60187)

(declare-fun getCurrentListMapNoExtraKeys!6789 (array!104633 array!104635 (_ BitVec 32) (_ BitVec 32) V!60187 V!60187 (_ BitVec 32) Int) ListLongMap!22869)

(assert (=> b!1566915 (= lt!672773 (getCurrentListMapNoExtraKeys!6789 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(assert (= (and start!134110 res!1071015) b!1566913))

(assert (= (and b!1566913 res!1071009) b!1566910))

(assert (= (and b!1566910 res!1071014) b!1566908))

(assert (= (and b!1566908 res!1071012) b!1566912))

(assert (= (and b!1566912 res!1071010) b!1566907))

(assert (= (and b!1566907 res!1071013) b!1566915))

(assert (= (and b!1566915 res!1071011) b!1566911))

(assert (= (and b!1566909 condMapEmpty!59877) mapIsEmpty!59877))

(assert (= (and b!1566909 (not condMapEmpty!59877)) mapNonEmpty!59877))

(get-info :version)

(assert (= (and mapNonEmpty!59877 ((_ is ValueCellFull!18462) mapValue!59877)) b!1566906))

(assert (= (and b!1566909 ((_ is ValueCellFull!18462) mapDefault!59877)) b!1566914))

(assert (= start!134110 b!1566909))

(declare-fun m!1441923 () Bool)

(assert (=> start!134110 m!1441923))

(declare-fun m!1441925 () Bool)

(assert (=> start!134110 m!1441925))

(declare-fun m!1441927 () Bool)

(assert (=> start!134110 m!1441927))

(declare-fun m!1441929 () Bool)

(assert (=> mapNonEmpty!59877 m!1441929))

(declare-fun m!1441931 () Bool)

(assert (=> b!1566915 m!1441931))

(declare-fun m!1441933 () Bool)

(assert (=> b!1566915 m!1441933))

(declare-fun m!1441935 () Bool)

(assert (=> b!1566908 m!1441935))

(declare-fun m!1441937 () Bool)

(assert (=> b!1566910 m!1441937))

(declare-fun m!1441939 () Bool)

(assert (=> b!1566907 m!1441939))

(assert (=> b!1566907 m!1441939))

(declare-fun m!1441941 () Bool)

(assert (=> b!1566907 m!1441941))

(declare-fun m!1441943 () Bool)

(assert (=> b!1566911 m!1441943))

(check-sat (not b!1566915) (not b!1566911) (not start!134110) b_and!51859 (not b_next!32205) tp_is_empty!38985 (not mapNonEmpty!59877) (not b!1566908) (not b!1566907) (not b!1566910))
(check-sat b_and!51859 (not b_next!32205))
