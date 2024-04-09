; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133972 () Bool)

(assert start!133972)

(declare-fun b_free!32163 () Bool)

(declare-fun b_next!32163 () Bool)

(assert (=> start!133972 (= b_free!32163 (not b_next!32163))))

(declare-fun tp!113792 () Bool)

(declare-fun b_and!51777 () Bool)

(assert (=> start!133972 (= tp!113792 b_and!51777)))

(declare-fun res!1070289 () Bool)

(declare-fun e!872666 () Bool)

(assert (=> start!133972 (=> (not res!1070289) (not e!872666))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133972 (= res!1070289 (validMask!0 mask!947))))

(assert (=> start!133972 e!872666))

(assert (=> start!133972 tp!113792))

(declare-fun tp_is_empty!38937 () Bool)

(assert (=> start!133972 tp_is_empty!38937))

(assert (=> start!133972 true))

(declare-datatypes ((array!104535 0))(
  ( (array!104536 (arr!50450 (Array (_ BitVec 32) (_ BitVec 64))) (size!51001 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104535)

(declare-fun array_inv!39121 (array!104535) Bool)

(assert (=> start!133972 (array_inv!39121 _keys!637)))

(declare-datatypes ((V!60123 0))(
  ( (V!60124 (val!19552 Int)) )
))
(declare-datatypes ((ValueCell!18438 0))(
  ( (ValueCellFull!18438 (v!22305 V!60123)) (EmptyCell!18438) )
))
(declare-datatypes ((array!104537 0))(
  ( (array!104538 (arr!50451 (Array (_ BitVec 32) ValueCell!18438)) (size!51002 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104537)

(declare-fun e!872668 () Bool)

(declare-fun array_inv!39122 (array!104537) Bool)

(assert (=> start!133972 (and (array_inv!39122 _values!487) e!872668)))

(declare-fun b!1565597 () Bool)

(declare-fun e!872667 () Bool)

(assert (=> b!1565597 (= e!872667 tp_is_empty!38937)))

(declare-fun b!1565598 () Bool)

(declare-fun e!872669 () Bool)

(declare-fun mapRes!59797 () Bool)

(assert (=> b!1565598 (= e!872668 (and e!872669 mapRes!59797))))

(declare-fun condMapEmpty!59797 () Bool)

(declare-fun mapDefault!59797 () ValueCell!18438)

(assert (=> b!1565598 (= condMapEmpty!59797 (= (arr!50451 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18438)) mapDefault!59797)))))

(declare-fun b!1565599 () Bool)

(declare-fun res!1070287 () Bool)

(assert (=> b!1565599 (=> (not res!1070287) (not e!872666))))

(declare-datatypes ((List!36776 0))(
  ( (Nil!36773) (Cons!36772 (h!38219 (_ BitVec 64)) (t!51660 List!36776)) )
))
(declare-fun arrayNoDuplicates!0 (array!104535 (_ BitVec 32) List!36776) Bool)

(assert (=> b!1565599 (= res!1070287 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36773))))

(declare-fun b!1565600 () Bool)

(declare-fun res!1070291 () Bool)

(assert (=> b!1565600 (=> (not res!1070291) (not e!872666))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1565600 (= res!1070291 (and (= (size!51002 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51001 _keys!637) (size!51002 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565601 () Bool)

(assert (=> b!1565601 (= e!872669 tp_is_empty!38937)))

(declare-fun b!1565602 () Bool)

(declare-fun res!1070288 () Bool)

(assert (=> b!1565602 (=> (not res!1070288) (not e!872666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104535 (_ BitVec 32)) Bool)

(assert (=> b!1565602 (= res!1070288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565603 () Bool)

(declare-fun res!1070292 () Bool)

(assert (=> b!1565603 (=> (not res!1070292) (not e!872666))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565603 (= res!1070292 (validKeyInArray!0 (select (arr!50450 _keys!637) from!782)))))

(declare-fun b!1565604 () Bool)

(declare-fun res!1070290 () Bool)

(assert (=> b!1565604 (=> (not res!1070290) (not e!872666))))

(assert (=> b!1565604 (= res!1070290 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51001 _keys!637)) (bvslt from!782 (size!51001 _keys!637))))))

(declare-fun b!1565605 () Bool)

(assert (=> b!1565605 (= e!872666 (not true))))

(declare-fun lt!672310 () Bool)

(declare-datatypes ((tuple2!25388 0))(
  ( (tuple2!25389 (_1!12704 (_ BitVec 64)) (_2!12704 V!60123)) )
))
(declare-datatypes ((List!36777 0))(
  ( (Nil!36774) (Cons!36773 (h!38220 tuple2!25388) (t!51661 List!36777)) )
))
(declare-datatypes ((ListLongMap!22835 0))(
  ( (ListLongMap!22836 (toList!11433 List!36777)) )
))
(declare-fun lt!672309 () ListLongMap!22835)

(declare-fun contains!10354 (ListLongMap!22835 (_ BitVec 64)) Bool)

(assert (=> b!1565605 (= lt!672310 (contains!10354 lt!672309 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565605 (not (contains!10354 lt!672309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672308 () V!60123)

(declare-fun lt!672311 () ListLongMap!22835)

(declare-fun +!5040 (ListLongMap!22835 tuple2!25388) ListLongMap!22835)

(assert (=> b!1565605 (= lt!672309 (+!5040 lt!672311 (tuple2!25389 (select (arr!50450 _keys!637) from!782) lt!672308)))))

(declare-datatypes ((Unit!51954 0))(
  ( (Unit!51955) )
))
(declare-fun lt!672307 () Unit!51954)

(declare-fun addStillNotContains!576 (ListLongMap!22835 (_ BitVec 64) V!60123 (_ BitVec 64)) Unit!51954)

(assert (=> b!1565605 (= lt!672307 (addStillNotContains!576 lt!672311 (select (arr!50450 _keys!637) from!782) lt!672308 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26372 (ValueCell!18438 V!60123) V!60123)

(declare-fun dynLambda!3929 (Int (_ BitVec 64)) V!60123)

(assert (=> b!1565605 (= lt!672308 (get!26372 (select (arr!50451 _values!487) from!782) (dynLambda!3929 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60123)

(declare-fun minValue!453 () V!60123)

(declare-fun getCurrentListMapNoExtraKeys!6773 (array!104535 array!104537 (_ BitVec 32) (_ BitVec 32) V!60123 V!60123 (_ BitVec 32) Int) ListLongMap!22835)

(assert (=> b!1565605 (= lt!672311 (getCurrentListMapNoExtraKeys!6773 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59797 () Bool)

(declare-fun tp!113791 () Bool)

(assert (=> mapNonEmpty!59797 (= mapRes!59797 (and tp!113791 e!872667))))

(declare-fun mapRest!59797 () (Array (_ BitVec 32) ValueCell!18438))

(declare-fun mapValue!59797 () ValueCell!18438)

(declare-fun mapKey!59797 () (_ BitVec 32))

(assert (=> mapNonEmpty!59797 (= (arr!50451 _values!487) (store mapRest!59797 mapKey!59797 mapValue!59797))))

(declare-fun mapIsEmpty!59797 () Bool)

(assert (=> mapIsEmpty!59797 mapRes!59797))

(assert (= (and start!133972 res!1070289) b!1565600))

(assert (= (and b!1565600 res!1070291) b!1565602))

(assert (= (and b!1565602 res!1070288) b!1565599))

(assert (= (and b!1565599 res!1070287) b!1565604))

(assert (= (and b!1565604 res!1070290) b!1565603))

(assert (= (and b!1565603 res!1070292) b!1565605))

(assert (= (and b!1565598 condMapEmpty!59797) mapIsEmpty!59797))

(assert (= (and b!1565598 (not condMapEmpty!59797)) mapNonEmpty!59797))

(get-info :version)

(assert (= (and mapNonEmpty!59797 ((_ is ValueCellFull!18438) mapValue!59797)) b!1565597))

(assert (= (and b!1565598 ((_ is ValueCellFull!18438) mapDefault!59797)) b!1565601))

(assert (= start!133972 b!1565598))

(declare-fun b_lambda!24987 () Bool)

(assert (=> (not b_lambda!24987) (not b!1565605)))

(declare-fun t!51659 () Bool)

(declare-fun tb!12639 () Bool)

(assert (=> (and start!133972 (= defaultEntry!495 defaultEntry!495) t!51659) tb!12639))

(declare-fun result!26561 () Bool)

(assert (=> tb!12639 (= result!26561 tp_is_empty!38937)))

(assert (=> b!1565605 t!51659))

(declare-fun b_and!51779 () Bool)

(assert (= b_and!51777 (and (=> t!51659 result!26561) b_and!51779)))

(declare-fun m!1440565 () Bool)

(assert (=> b!1565602 m!1440565))

(declare-fun m!1440567 () Bool)

(assert (=> b!1565599 m!1440567))

(declare-fun m!1440569 () Bool)

(assert (=> mapNonEmpty!59797 m!1440569))

(declare-fun m!1440571 () Bool)

(assert (=> b!1565603 m!1440571))

(assert (=> b!1565603 m!1440571))

(declare-fun m!1440573 () Bool)

(assert (=> b!1565603 m!1440573))

(declare-fun m!1440575 () Bool)

(assert (=> start!133972 m!1440575))

(declare-fun m!1440577 () Bool)

(assert (=> start!133972 m!1440577))

(declare-fun m!1440579 () Bool)

(assert (=> start!133972 m!1440579))

(declare-fun m!1440581 () Bool)

(assert (=> b!1565605 m!1440581))

(assert (=> b!1565605 m!1440571))

(declare-fun m!1440583 () Bool)

(assert (=> b!1565605 m!1440583))

(declare-fun m!1440585 () Bool)

(assert (=> b!1565605 m!1440585))

(declare-fun m!1440587 () Bool)

(assert (=> b!1565605 m!1440587))

(declare-fun m!1440589 () Bool)

(assert (=> b!1565605 m!1440589))

(assert (=> b!1565605 m!1440581))

(declare-fun m!1440591 () Bool)

(assert (=> b!1565605 m!1440591))

(declare-fun m!1440593 () Bool)

(assert (=> b!1565605 m!1440593))

(assert (=> b!1565605 m!1440591))

(assert (=> b!1565605 m!1440571))

(declare-fun m!1440595 () Bool)

(assert (=> b!1565605 m!1440595))

(check-sat (not b!1565605) (not b!1565599) (not b_lambda!24987) (not start!133972) (not mapNonEmpty!59797) (not b_next!32163) (not b!1565603) b_and!51779 tp_is_empty!38937 (not b!1565602))
(check-sat b_and!51779 (not b_next!32163))
