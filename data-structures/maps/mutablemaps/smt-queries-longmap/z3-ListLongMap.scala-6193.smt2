; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79296 () Bool)

(assert start!79296)

(declare-fun b_free!17481 () Bool)

(declare-fun b_next!17481 () Bool)

(assert (=> start!79296 (= b_free!17481 (not b_next!17481))))

(declare-fun tp!60884 () Bool)

(declare-fun b_and!28565 () Bool)

(assert (=> start!79296 (= tp!60884 b_and!28565)))

(declare-fun mapIsEmpty!31740 () Bool)

(declare-fun mapRes!31740 () Bool)

(assert (=> mapIsEmpty!31740 mapRes!31740))

(declare-fun b!930720 () Bool)

(declare-fun e!522700 () Bool)

(declare-fun e!522702 () Bool)

(assert (=> b!930720 (= e!522700 e!522702)))

(declare-fun res!626917 () Bool)

(assert (=> b!930720 (=> (not res!626917) (not e!522702))))

(declare-datatypes ((V!31617 0))(
  ( (V!31618 (val!10045 Int)) )
))
(declare-datatypes ((tuple2!13254 0))(
  ( (tuple2!13255 (_1!6637 (_ BitVec 64)) (_2!6637 V!31617)) )
))
(declare-datatypes ((List!19071 0))(
  ( (Nil!19068) (Cons!19067 (h!20213 tuple2!13254) (t!27136 List!19071)) )
))
(declare-datatypes ((ListLongMap!11965 0))(
  ( (ListLongMap!11966 (toList!5998 List!19071)) )
))
(declare-fun lt!419267 () ListLongMap!11965)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5004 (ListLongMap!11965 (_ BitVec 64)) Bool)

(assert (=> b!930720 (= res!626917 (contains!5004 lt!419267 k0!1099))))

(declare-datatypes ((array!55946 0))(
  ( (array!55947 (arr!26914 (Array (_ BitVec 32) (_ BitVec 64))) (size!27374 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55946)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9513 0))(
  ( (ValueCellFull!9513 (v!12563 V!31617)) (EmptyCell!9513) )
))
(declare-datatypes ((array!55948 0))(
  ( (array!55949 (arr!26915 (Array (_ BitVec 32) ValueCell!9513)) (size!27375 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55948)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31617)

(declare-fun minValue!1173 () V!31617)

(declare-fun getCurrentListMap!3198 (array!55946 array!55948 (_ BitVec 32) (_ BitVec 32) V!31617 V!31617 (_ BitVec 32) Int) ListLongMap!11965)

(assert (=> b!930720 (= lt!419267 (getCurrentListMap!3198 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930721 () Bool)

(declare-fun res!626914 () Bool)

(assert (=> b!930721 (=> (not res!626914) (not e!522700))))

(assert (=> b!930721 (= res!626914 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27374 _keys!1487))))))

(declare-fun b!930722 () Bool)

(assert (=> b!930722 (= e!522702 false)))

(declare-fun lt!419268 () V!31617)

(declare-fun apply!785 (ListLongMap!11965 (_ BitVec 64)) V!31617)

(assert (=> b!930722 (= lt!419268 (apply!785 lt!419267 k0!1099))))

(declare-fun b!930723 () Bool)

(declare-fun e!522701 () Bool)

(declare-fun tp_is_empty!19989 () Bool)

(assert (=> b!930723 (= e!522701 tp_is_empty!19989)))

(declare-fun mapNonEmpty!31740 () Bool)

(declare-fun tp!60885 () Bool)

(assert (=> mapNonEmpty!31740 (= mapRes!31740 (and tp!60885 e!522701))))

(declare-fun mapValue!31740 () ValueCell!9513)

(declare-fun mapRest!31740 () (Array (_ BitVec 32) ValueCell!9513))

(declare-fun mapKey!31740 () (_ BitVec 32))

(assert (=> mapNonEmpty!31740 (= (arr!26915 _values!1231) (store mapRest!31740 mapKey!31740 mapValue!31740))))

(declare-fun res!626913 () Bool)

(assert (=> start!79296 (=> (not res!626913) (not e!522700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79296 (= res!626913 (validMask!0 mask!1881))))

(assert (=> start!79296 e!522700))

(assert (=> start!79296 true))

(declare-fun e!522703 () Bool)

(declare-fun array_inv!20926 (array!55948) Bool)

(assert (=> start!79296 (and (array_inv!20926 _values!1231) e!522703)))

(assert (=> start!79296 tp!60884))

(declare-fun array_inv!20927 (array!55946) Bool)

(assert (=> start!79296 (array_inv!20927 _keys!1487)))

(assert (=> start!79296 tp_is_empty!19989))

(declare-fun b!930724 () Bool)

(declare-fun res!626915 () Bool)

(assert (=> b!930724 (=> (not res!626915) (not e!522700))))

(declare-datatypes ((List!19072 0))(
  ( (Nil!19069) (Cons!19068 (h!20214 (_ BitVec 64)) (t!27137 List!19072)) )
))
(declare-fun arrayNoDuplicates!0 (array!55946 (_ BitVec 32) List!19072) Bool)

(assert (=> b!930724 (= res!626915 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19069))))

(declare-fun b!930725 () Bool)

(declare-fun e!522704 () Bool)

(assert (=> b!930725 (= e!522704 tp_is_empty!19989)))

(declare-fun b!930726 () Bool)

(assert (=> b!930726 (= e!522703 (and e!522704 mapRes!31740))))

(declare-fun condMapEmpty!31740 () Bool)

(declare-fun mapDefault!31740 () ValueCell!9513)

(assert (=> b!930726 (= condMapEmpty!31740 (= (arr!26915 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9513)) mapDefault!31740)))))

(declare-fun b!930727 () Bool)

(declare-fun res!626916 () Bool)

(assert (=> b!930727 (=> (not res!626916) (not e!522700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55946 (_ BitVec 32)) Bool)

(assert (=> b!930727 (= res!626916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930728 () Bool)

(declare-fun res!626918 () Bool)

(assert (=> b!930728 (=> (not res!626918) (not e!522700))))

(assert (=> b!930728 (= res!626918 (and (= (size!27375 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27374 _keys!1487) (size!27375 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79296 res!626913) b!930728))

(assert (= (and b!930728 res!626918) b!930727))

(assert (= (and b!930727 res!626916) b!930724))

(assert (= (and b!930724 res!626915) b!930721))

(assert (= (and b!930721 res!626914) b!930720))

(assert (= (and b!930720 res!626917) b!930722))

(assert (= (and b!930726 condMapEmpty!31740) mapIsEmpty!31740))

(assert (= (and b!930726 (not condMapEmpty!31740)) mapNonEmpty!31740))

(get-info :version)

(assert (= (and mapNonEmpty!31740 ((_ is ValueCellFull!9513) mapValue!31740)) b!930723))

(assert (= (and b!930726 ((_ is ValueCellFull!9513) mapDefault!31740)) b!930725))

(assert (= start!79296 b!930726))

(declare-fun m!864895 () Bool)

(assert (=> start!79296 m!864895))

(declare-fun m!864897 () Bool)

(assert (=> start!79296 m!864897))

(declare-fun m!864899 () Bool)

(assert (=> start!79296 m!864899))

(declare-fun m!864901 () Bool)

(assert (=> b!930722 m!864901))

(declare-fun m!864903 () Bool)

(assert (=> b!930727 m!864903))

(declare-fun m!864905 () Bool)

(assert (=> b!930724 m!864905))

(declare-fun m!864907 () Bool)

(assert (=> b!930720 m!864907))

(declare-fun m!864909 () Bool)

(assert (=> b!930720 m!864909))

(declare-fun m!864911 () Bool)

(assert (=> mapNonEmpty!31740 m!864911))

(check-sat (not b!930727) (not start!79296) tp_is_empty!19989 (not b!930724) (not mapNonEmpty!31740) (not b_next!17481) (not b!930720) b_and!28565 (not b!930722))
(check-sat b_and!28565 (not b_next!17481))
