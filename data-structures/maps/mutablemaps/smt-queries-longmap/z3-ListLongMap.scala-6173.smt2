; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79176 () Bool)

(assert start!79176)

(declare-fun b_free!17361 () Bool)

(declare-fun b_next!17361 () Bool)

(assert (=> start!79176 (= b_free!17361 (not b_next!17361))))

(declare-fun tp!60524 () Bool)

(declare-fun b_and!28445 () Bool)

(assert (=> start!79176 (= tp!60524 b_and!28445)))

(declare-fun b!928875 () Bool)

(declare-fun e!521625 () Bool)

(declare-fun tp_is_empty!19869 () Bool)

(assert (=> b!928875 (= e!521625 tp_is_empty!19869)))

(declare-fun b!928876 () Bool)

(declare-fun e!521624 () Bool)

(assert (=> b!928876 (= e!521624 false)))

(declare-datatypes ((V!31457 0))(
  ( (V!31458 (val!9985 Int)) )
))
(declare-fun lt!418934 () V!31457)

(declare-datatypes ((tuple2!13158 0))(
  ( (tuple2!13159 (_1!6589 (_ BitVec 64)) (_2!6589 V!31457)) )
))
(declare-datatypes ((List!18981 0))(
  ( (Nil!18978) (Cons!18977 (h!20123 tuple2!13158) (t!27046 List!18981)) )
))
(declare-datatypes ((ListLongMap!11869 0))(
  ( (ListLongMap!11870 (toList!5950 List!18981)) )
))
(declare-fun lt!418935 () ListLongMap!11869)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!745 (ListLongMap!11869 (_ BitVec 64)) V!31457)

(assert (=> b!928876 (= lt!418934 (apply!745 lt!418935 k0!1099))))

(declare-fun b!928877 () Bool)

(declare-fun e!521620 () Bool)

(assert (=> b!928877 (= e!521620 tp_is_empty!19869)))

(declare-fun b!928878 () Bool)

(declare-fun e!521621 () Bool)

(declare-fun mapRes!31560 () Bool)

(assert (=> b!928878 (= e!521621 (and e!521620 mapRes!31560))))

(declare-fun condMapEmpty!31560 () Bool)

(declare-datatypes ((ValueCell!9453 0))(
  ( (ValueCellFull!9453 (v!12503 V!31457)) (EmptyCell!9453) )
))
(declare-datatypes ((array!55714 0))(
  ( (array!55715 (arr!26798 (Array (_ BitVec 32) ValueCell!9453)) (size!27258 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55714)

(declare-fun mapDefault!31560 () ValueCell!9453)

(assert (=> b!928878 (= condMapEmpty!31560 (= (arr!26798 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9453)) mapDefault!31560)))))

(declare-fun b!928879 () Bool)

(declare-fun res!625609 () Bool)

(declare-fun e!521623 () Bool)

(assert (=> b!928879 (=> (not res!625609) (not e!521623))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55716 0))(
  ( (array!55717 (arr!26799 (Array (_ BitVec 32) (_ BitVec 64))) (size!27259 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55716)

(assert (=> b!928879 (= res!625609 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27259 _keys!1487))))))

(declare-fun res!625611 () Bool)

(assert (=> start!79176 (=> (not res!625611) (not e!521623))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79176 (= res!625611 (validMask!0 mask!1881))))

(assert (=> start!79176 e!521623))

(assert (=> start!79176 true))

(declare-fun array_inv!20856 (array!55714) Bool)

(assert (=> start!79176 (and (array_inv!20856 _values!1231) e!521621)))

(assert (=> start!79176 tp!60524))

(declare-fun array_inv!20857 (array!55716) Bool)

(assert (=> start!79176 (array_inv!20857 _keys!1487)))

(assert (=> start!79176 tp_is_empty!19869))

(declare-fun b!928880 () Bool)

(assert (=> b!928880 (= e!521623 e!521624)))

(declare-fun res!625608 () Bool)

(assert (=> b!928880 (=> (not res!625608) (not e!521624))))

(declare-fun contains!4966 (ListLongMap!11869 (_ BitVec 64)) Bool)

(assert (=> b!928880 (= res!625608 (contains!4966 lt!418935 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31457)

(declare-fun minValue!1173 () V!31457)

(declare-fun getCurrentListMap!3160 (array!55716 array!55714 (_ BitVec 32) (_ BitVec 32) V!31457 V!31457 (_ BitVec 32) Int) ListLongMap!11869)

(assert (=> b!928880 (= lt!418935 (getCurrentListMap!3160 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928881 () Bool)

(declare-fun res!625613 () Bool)

(assert (=> b!928881 (=> (not res!625613) (not e!521623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55716 (_ BitVec 32)) Bool)

(assert (=> b!928881 (= res!625613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31560 () Bool)

(assert (=> mapIsEmpty!31560 mapRes!31560))

(declare-fun mapNonEmpty!31560 () Bool)

(declare-fun tp!60525 () Bool)

(assert (=> mapNonEmpty!31560 (= mapRes!31560 (and tp!60525 e!521625))))

(declare-fun mapRest!31560 () (Array (_ BitVec 32) ValueCell!9453))

(declare-fun mapValue!31560 () ValueCell!9453)

(declare-fun mapKey!31560 () (_ BitVec 32))

(assert (=> mapNonEmpty!31560 (= (arr!26798 _values!1231) (store mapRest!31560 mapKey!31560 mapValue!31560))))

(declare-fun b!928882 () Bool)

(declare-fun res!625610 () Bool)

(assert (=> b!928882 (=> (not res!625610) (not e!521623))))

(assert (=> b!928882 (= res!625610 (and (= (size!27258 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27259 _keys!1487) (size!27258 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928883 () Bool)

(declare-fun res!625612 () Bool)

(assert (=> b!928883 (=> (not res!625612) (not e!521623))))

(declare-datatypes ((List!18982 0))(
  ( (Nil!18979) (Cons!18978 (h!20124 (_ BitVec 64)) (t!27047 List!18982)) )
))
(declare-fun arrayNoDuplicates!0 (array!55716 (_ BitVec 32) List!18982) Bool)

(assert (=> b!928883 (= res!625612 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18979))))

(assert (= (and start!79176 res!625611) b!928882))

(assert (= (and b!928882 res!625610) b!928881))

(assert (= (and b!928881 res!625613) b!928883))

(assert (= (and b!928883 res!625612) b!928879))

(assert (= (and b!928879 res!625609) b!928880))

(assert (= (and b!928880 res!625608) b!928876))

(assert (= (and b!928878 condMapEmpty!31560) mapIsEmpty!31560))

(assert (= (and b!928878 (not condMapEmpty!31560)) mapNonEmpty!31560))

(get-info :version)

(assert (= (and mapNonEmpty!31560 ((_ is ValueCellFull!9453) mapValue!31560)) b!928875))

(assert (= (and b!928878 ((_ is ValueCellFull!9453) mapDefault!31560)) b!928877))

(assert (= start!79176 b!928878))

(declare-fun m!863689 () Bool)

(assert (=> b!928883 m!863689))

(declare-fun m!863691 () Bool)

(assert (=> b!928876 m!863691))

(declare-fun m!863693 () Bool)

(assert (=> b!928881 m!863693))

(declare-fun m!863695 () Bool)

(assert (=> start!79176 m!863695))

(declare-fun m!863697 () Bool)

(assert (=> start!79176 m!863697))

(declare-fun m!863699 () Bool)

(assert (=> start!79176 m!863699))

(declare-fun m!863701 () Bool)

(assert (=> mapNonEmpty!31560 m!863701))

(declare-fun m!863703 () Bool)

(assert (=> b!928880 m!863703))

(declare-fun m!863705 () Bool)

(assert (=> b!928880 m!863705))

(check-sat (not b_next!17361) (not start!79176) (not mapNonEmpty!31560) (not b!928880) (not b!928876) (not b!928881) tp_is_empty!19869 (not b!928883) b_and!28445)
(check-sat b_and!28445 (not b_next!17361))
