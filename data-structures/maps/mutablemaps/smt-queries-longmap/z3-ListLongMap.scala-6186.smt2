; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79254 () Bool)

(assert start!79254)

(declare-fun b_free!17439 () Bool)

(declare-fun b_next!17439 () Bool)

(assert (=> start!79254 (= b_free!17439 (not b_next!17439))))

(declare-fun tp!60758 () Bool)

(declare-fun b_and!28523 () Bool)

(assert (=> start!79254 (= tp!60758 b_and!28523)))

(declare-fun b!930118 () Bool)

(declare-fun e!522327 () Bool)

(declare-fun e!522323 () Bool)

(declare-fun mapRes!31677 () Bool)

(assert (=> b!930118 (= e!522327 (and e!522323 mapRes!31677))))

(declare-fun condMapEmpty!31677 () Bool)

(declare-datatypes ((V!31561 0))(
  ( (V!31562 (val!10024 Int)) )
))
(declare-datatypes ((ValueCell!9492 0))(
  ( (ValueCellFull!9492 (v!12542 V!31561)) (EmptyCell!9492) )
))
(declare-datatypes ((array!55864 0))(
  ( (array!55865 (arr!26873 (Array (_ BitVec 32) ValueCell!9492)) (size!27333 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55864)

(declare-fun mapDefault!31677 () ValueCell!9492)

(assert (=> b!930118 (= condMapEmpty!31677 (= (arr!26873 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9492)) mapDefault!31677)))))

(declare-fun mapIsEmpty!31677 () Bool)

(assert (=> mapIsEmpty!31677 mapRes!31677))

(declare-fun b!930119 () Bool)

(declare-fun e!522322 () Bool)

(declare-fun tp_is_empty!19947 () Bool)

(assert (=> b!930119 (= e!522322 tp_is_empty!19947)))

(declare-fun b!930120 () Bool)

(declare-fun res!626501 () Bool)

(declare-fun e!522326 () Bool)

(assert (=> b!930120 (=> (not res!626501) (not e!522326))))

(declare-datatypes ((array!55866 0))(
  ( (array!55867 (arr!26874 (Array (_ BitVec 32) (_ BitVec 64))) (size!27334 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55866)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!930120 (= res!626501 (and (= (size!27333 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27334 _keys!1487) (size!27333 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930121 () Bool)

(declare-fun e!522325 () Bool)

(assert (=> b!930121 (= e!522326 e!522325)))

(declare-fun res!626502 () Bool)

(assert (=> b!930121 (=> (not res!626502) (not e!522325))))

(declare-datatypes ((tuple2!13214 0))(
  ( (tuple2!13215 (_1!6617 (_ BitVec 64)) (_2!6617 V!31561)) )
))
(declare-datatypes ((List!19036 0))(
  ( (Nil!19033) (Cons!19032 (h!20178 tuple2!13214) (t!27101 List!19036)) )
))
(declare-datatypes ((ListLongMap!11925 0))(
  ( (ListLongMap!11926 (toList!5978 List!19036)) )
))
(declare-fun lt!419151 () ListLongMap!11925)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4992 (ListLongMap!11925 (_ BitVec 64)) Bool)

(assert (=> b!930121 (= res!626502 (contains!4992 lt!419151 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31561)

(declare-fun minValue!1173 () V!31561)

(declare-fun getCurrentListMap!3186 (array!55866 array!55864 (_ BitVec 32) (_ BitVec 32) V!31561 V!31561 (_ BitVec 32) Int) ListLongMap!11925)

(assert (=> b!930121 (= lt!419151 (getCurrentListMap!3186 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930122 () Bool)

(assert (=> b!930122 (= e!522325 false)))

(declare-fun lt!419150 () Bool)

(assert (=> b!930122 (= lt!419150 (contains!4992 (getCurrentListMap!3186 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!930123 () Bool)

(declare-fun res!626505 () Bool)

(assert (=> b!930123 (=> (not res!626505) (not e!522326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55866 (_ BitVec 32)) Bool)

(assert (=> b!930123 (= res!626505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930124 () Bool)

(declare-fun res!626504 () Bool)

(assert (=> b!930124 (=> (not res!626504) (not e!522325))))

(declare-fun v!791 () V!31561)

(declare-fun apply!767 (ListLongMap!11925 (_ BitVec 64)) V!31561)

(assert (=> b!930124 (= res!626504 (= (apply!767 lt!419151 k0!1099) v!791))))

(declare-fun mapNonEmpty!31677 () Bool)

(declare-fun tp!60759 () Bool)

(assert (=> mapNonEmpty!31677 (= mapRes!31677 (and tp!60759 e!522322))))

(declare-fun mapValue!31677 () ValueCell!9492)

(declare-fun mapRest!31677 () (Array (_ BitVec 32) ValueCell!9492))

(declare-fun mapKey!31677 () (_ BitVec 32))

(assert (=> mapNonEmpty!31677 (= (arr!26873 _values!1231) (store mapRest!31677 mapKey!31677 mapValue!31677))))

(declare-fun b!930125 () Bool)

(declare-fun res!626507 () Bool)

(assert (=> b!930125 (=> (not res!626507) (not e!522326))))

(declare-datatypes ((List!19037 0))(
  ( (Nil!19034) (Cons!19033 (h!20179 (_ BitVec 64)) (t!27102 List!19037)) )
))
(declare-fun arrayNoDuplicates!0 (array!55866 (_ BitVec 32) List!19037) Bool)

(assert (=> b!930125 (= res!626507 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19034))))

(declare-fun b!930126 () Bool)

(declare-fun res!626506 () Bool)

(assert (=> b!930126 (=> (not res!626506) (not e!522326))))

(assert (=> b!930126 (= res!626506 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27334 _keys!1487))))))

(declare-fun b!930127 () Bool)

(declare-fun res!626500 () Bool)

(assert (=> b!930127 (=> (not res!626500) (not e!522325))))

(assert (=> b!930127 (= res!626500 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!930128 () Bool)

(assert (=> b!930128 (= e!522323 tp_is_empty!19947)))

(declare-fun res!626503 () Bool)

(assert (=> start!79254 (=> (not res!626503) (not e!522326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79254 (= res!626503 (validMask!0 mask!1881))))

(assert (=> start!79254 e!522326))

(assert (=> start!79254 true))

(assert (=> start!79254 tp_is_empty!19947))

(declare-fun array_inv!20900 (array!55864) Bool)

(assert (=> start!79254 (and (array_inv!20900 _values!1231) e!522327)))

(assert (=> start!79254 tp!60758))

(declare-fun array_inv!20901 (array!55866) Bool)

(assert (=> start!79254 (array_inv!20901 _keys!1487)))

(assert (= (and start!79254 res!626503) b!930120))

(assert (= (and b!930120 res!626501) b!930123))

(assert (= (and b!930123 res!626505) b!930125))

(assert (= (and b!930125 res!626507) b!930126))

(assert (= (and b!930126 res!626506) b!930121))

(assert (= (and b!930121 res!626502) b!930124))

(assert (= (and b!930124 res!626504) b!930127))

(assert (= (and b!930127 res!626500) b!930122))

(assert (= (and b!930118 condMapEmpty!31677) mapIsEmpty!31677))

(assert (= (and b!930118 (not condMapEmpty!31677)) mapNonEmpty!31677))

(get-info :version)

(assert (= (and mapNonEmpty!31677 ((_ is ValueCellFull!9492) mapValue!31677)) b!930119))

(assert (= (and b!930118 ((_ is ValueCellFull!9492) mapDefault!31677)) b!930128))

(assert (= start!79254 b!930118))

(declare-fun m!864503 () Bool)

(assert (=> b!930123 m!864503))

(declare-fun m!864505 () Bool)

(assert (=> b!930122 m!864505))

(assert (=> b!930122 m!864505))

(declare-fun m!864507 () Bool)

(assert (=> b!930122 m!864507))

(declare-fun m!864509 () Bool)

(assert (=> b!930124 m!864509))

(declare-fun m!864511 () Bool)

(assert (=> b!930121 m!864511))

(declare-fun m!864513 () Bool)

(assert (=> b!930121 m!864513))

(declare-fun m!864515 () Bool)

(assert (=> mapNonEmpty!31677 m!864515))

(declare-fun m!864517 () Bool)

(assert (=> start!79254 m!864517))

(declare-fun m!864519 () Bool)

(assert (=> start!79254 m!864519))

(declare-fun m!864521 () Bool)

(assert (=> start!79254 m!864521))

(declare-fun m!864523 () Bool)

(assert (=> b!930125 m!864523))

(check-sat (not mapNonEmpty!31677) (not b!930121) b_and!28523 (not b_next!17439) tp_is_empty!19947 (not b!930122) (not b!930124) (not b!930123) (not b!930125) (not start!79254))
(check-sat b_and!28523 (not b_next!17439))
