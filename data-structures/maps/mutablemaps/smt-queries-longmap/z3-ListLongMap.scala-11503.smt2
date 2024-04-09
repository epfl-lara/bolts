; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133898 () Bool)

(assert start!133898)

(declare-fun b_free!32127 () Bool)

(declare-fun b_next!32127 () Bool)

(assert (=> start!133898 (= b_free!32127 (not b_next!32127))))

(declare-fun tp!113678 () Bool)

(declare-fun b_and!51707 () Bool)

(assert (=> start!133898 (= tp!113678 b_and!51707)))

(declare-fun b!1564898 () Bool)

(declare-fun e!872269 () Bool)

(declare-fun tp_is_empty!38901 () Bool)

(assert (=> b!1564898 (= e!872269 tp_is_empty!38901)))

(declare-fun b!1564899 () Bool)

(declare-fun res!1069885 () Bool)

(declare-fun e!872273 () Bool)

(assert (=> b!1564899 (=> (not res!1069885) (not e!872273))))

(declare-datatypes ((array!104461 0))(
  ( (array!104462 (arr!50415 (Array (_ BitVec 32) (_ BitVec 64))) (size!50966 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104461)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564899 (= res!1069885 (validKeyInArray!0 (select (arr!50415 _keys!637) from!782)))))

(declare-fun b!1564900 () Bool)

(declare-fun res!1069890 () Bool)

(assert (=> b!1564900 (=> (not res!1069890) (not e!872273))))

(declare-datatypes ((List!36751 0))(
  ( (Nil!36748) (Cons!36747 (h!38194 (_ BitVec 64)) (t!51605 List!36751)) )
))
(declare-fun arrayNoDuplicates!0 (array!104461 (_ BitVec 32) List!36751) Bool)

(assert (=> b!1564900 (= res!1069890 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36748))))

(declare-fun b!1564901 () Bool)

(declare-fun res!1069888 () Bool)

(assert (=> b!1564901 (=> (not res!1069888) (not e!872273))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104461 (_ BitVec 32)) Bool)

(assert (=> b!1564901 (= res!1069888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59737 () Bool)

(declare-fun mapRes!59737 () Bool)

(declare-fun tp!113677 () Bool)

(declare-fun e!872270 () Bool)

(assert (=> mapNonEmpty!59737 (= mapRes!59737 (and tp!113677 e!872270))))

(declare-datatypes ((V!60075 0))(
  ( (V!60076 (val!19534 Int)) )
))
(declare-datatypes ((ValueCell!18420 0))(
  ( (ValueCellFull!18420 (v!22285 V!60075)) (EmptyCell!18420) )
))
(declare-fun mapRest!59737 () (Array (_ BitVec 32) ValueCell!18420))

(declare-datatypes ((array!104463 0))(
  ( (array!104464 (arr!50416 (Array (_ BitVec 32) ValueCell!18420)) (size!50967 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104463)

(declare-fun mapKey!59737 () (_ BitVec 32))

(declare-fun mapValue!59737 () ValueCell!18420)

(assert (=> mapNonEmpty!59737 (= (arr!50416 _values!487) (store mapRest!59737 mapKey!59737 mapValue!59737))))

(declare-fun b!1564902 () Bool)

(assert (=> b!1564902 (= e!872270 tp_is_empty!38901)))

(declare-fun res!1069886 () Bool)

(assert (=> start!133898 (=> (not res!1069886) (not e!872273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133898 (= res!1069886 (validMask!0 mask!947))))

(assert (=> start!133898 e!872273))

(assert (=> start!133898 tp!113678))

(assert (=> start!133898 tp_is_empty!38901))

(assert (=> start!133898 true))

(declare-fun array_inv!39099 (array!104461) Bool)

(assert (=> start!133898 (array_inv!39099 _keys!637)))

(declare-fun e!872272 () Bool)

(declare-fun array_inv!39100 (array!104463) Bool)

(assert (=> start!133898 (and (array_inv!39100 _values!487) e!872272)))

(declare-fun mapIsEmpty!59737 () Bool)

(assert (=> mapIsEmpty!59737 mapRes!59737))

(declare-fun b!1564903 () Bool)

(declare-fun res!1069889 () Bool)

(assert (=> b!1564903 (=> (not res!1069889) (not e!872273))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564903 (= res!1069889 (and (= (size!50967 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50966 _keys!637) (size!50967 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564904 () Bool)

(assert (=> b!1564904 (= e!872273 (bvsge from!782 (size!50967 _values!487)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60075)

(declare-fun minValue!453 () V!60075)

(declare-datatypes ((tuple2!25364 0))(
  ( (tuple2!25365 (_1!12692 (_ BitVec 64)) (_2!12692 V!60075)) )
))
(declare-datatypes ((List!36752 0))(
  ( (Nil!36749) (Cons!36748 (h!38195 tuple2!25364) (t!51606 List!36752)) )
))
(declare-datatypes ((ListLongMap!22811 0))(
  ( (ListLongMap!22812 (toList!11421 List!36752)) )
))
(declare-fun lt!672053 () ListLongMap!22811)

(declare-fun getCurrentListMapNoExtraKeys!6761 (array!104461 array!104463 (_ BitVec 32) (_ BitVec 32) V!60075 V!60075 (_ BitVec 32) Int) ListLongMap!22811)

(assert (=> b!1564904 (= lt!672053 (getCurrentListMapNoExtraKeys!6761 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1564905 () Bool)

(declare-fun res!1069887 () Bool)

(assert (=> b!1564905 (=> (not res!1069887) (not e!872273))))

(assert (=> b!1564905 (= res!1069887 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50966 _keys!637)) (bvslt from!782 (size!50966 _keys!637))))))

(declare-fun b!1564906 () Bool)

(assert (=> b!1564906 (= e!872272 (and e!872269 mapRes!59737))))

(declare-fun condMapEmpty!59737 () Bool)

(declare-fun mapDefault!59737 () ValueCell!18420)

(assert (=> b!1564906 (= condMapEmpty!59737 (= (arr!50416 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18420)) mapDefault!59737)))))

(assert (= (and start!133898 res!1069886) b!1564903))

(assert (= (and b!1564903 res!1069889) b!1564901))

(assert (= (and b!1564901 res!1069888) b!1564900))

(assert (= (and b!1564900 res!1069890) b!1564905))

(assert (= (and b!1564905 res!1069887) b!1564899))

(assert (= (and b!1564899 res!1069885) b!1564904))

(assert (= (and b!1564906 condMapEmpty!59737) mapIsEmpty!59737))

(assert (= (and b!1564906 (not condMapEmpty!59737)) mapNonEmpty!59737))

(get-info :version)

(assert (= (and mapNonEmpty!59737 ((_ is ValueCellFull!18420) mapValue!59737)) b!1564902))

(assert (= (and b!1564906 ((_ is ValueCellFull!18420) mapDefault!59737)) b!1564898))

(assert (= start!133898 b!1564906))

(declare-fun m!1439941 () Bool)

(assert (=> b!1564900 m!1439941))

(declare-fun m!1439943 () Bool)

(assert (=> b!1564901 m!1439943))

(declare-fun m!1439945 () Bool)

(assert (=> start!133898 m!1439945))

(declare-fun m!1439947 () Bool)

(assert (=> start!133898 m!1439947))

(declare-fun m!1439949 () Bool)

(assert (=> start!133898 m!1439949))

(declare-fun m!1439951 () Bool)

(assert (=> b!1564899 m!1439951))

(assert (=> b!1564899 m!1439951))

(declare-fun m!1439953 () Bool)

(assert (=> b!1564899 m!1439953))

(declare-fun m!1439955 () Bool)

(assert (=> b!1564904 m!1439955))

(declare-fun m!1439957 () Bool)

(assert (=> mapNonEmpty!59737 m!1439957))

(check-sat (not b!1564899) (not mapNonEmpty!59737) tp_is_empty!38901 (not start!133898) (not b!1564900) b_and!51707 (not b!1564904) (not b!1564901) (not b_next!32127))
(check-sat b_and!51707 (not b_next!32127))
