; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79212 () Bool)

(assert start!79212)

(declare-fun b_free!17397 () Bool)

(declare-fun b_next!17397 () Bool)

(assert (=> start!79212 (= b_free!17397 (not b_next!17397))))

(declare-fun tp!60633 () Bool)

(declare-fun b_and!28481 () Bool)

(assert (=> start!79212 (= tp!60633 b_and!28481)))

(declare-fun b!929416 () Bool)

(declare-fun e!521947 () Bool)

(declare-fun e!521948 () Bool)

(assert (=> b!929416 (= e!521947 e!521948)))

(declare-fun res!625991 () Bool)

(assert (=> b!929416 (=> (not res!625991) (not e!521948))))

(declare-datatypes ((V!31505 0))(
  ( (V!31506 (val!10003 Int)) )
))
(declare-datatypes ((tuple2!13184 0))(
  ( (tuple2!13185 (_1!6602 (_ BitVec 64)) (_2!6602 V!31505)) )
))
(declare-datatypes ((List!19005 0))(
  ( (Nil!19002) (Cons!19001 (h!20147 tuple2!13184) (t!27070 List!19005)) )
))
(declare-datatypes ((ListLongMap!11895 0))(
  ( (ListLongMap!11896 (toList!5963 List!19005)) )
))
(declare-fun lt!419034 () ListLongMap!11895)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4979 (ListLongMap!11895 (_ BitVec 64)) Bool)

(assert (=> b!929416 (= res!625991 (contains!4979 lt!419034 k0!1099))))

(declare-datatypes ((array!55782 0))(
  ( (array!55783 (arr!26832 (Array (_ BitVec 32) (_ BitVec 64))) (size!27292 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55782)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9471 0))(
  ( (ValueCellFull!9471 (v!12521 V!31505)) (EmptyCell!9471) )
))
(declare-datatypes ((array!55784 0))(
  ( (array!55785 (arr!26833 (Array (_ BitVec 32) ValueCell!9471)) (size!27293 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55784)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31505)

(declare-fun minValue!1173 () V!31505)

(declare-fun getCurrentListMap!3173 (array!55782 array!55784 (_ BitVec 32) (_ BitVec 32) V!31505 V!31505 (_ BitVec 32) Int) ListLongMap!11895)

(assert (=> b!929416 (= lt!419034 (getCurrentListMap!3173 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31614 () Bool)

(declare-fun mapRes!31614 () Bool)

(assert (=> mapIsEmpty!31614 mapRes!31614))

(declare-fun b!929417 () Bool)

(declare-fun e!521944 () Bool)

(declare-fun e!521949 () Bool)

(assert (=> b!929417 (= e!521944 (and e!521949 mapRes!31614))))

(declare-fun condMapEmpty!31614 () Bool)

(declare-fun mapDefault!31614 () ValueCell!9471)

(assert (=> b!929417 (= condMapEmpty!31614 (= (arr!26833 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9471)) mapDefault!31614)))))

(declare-fun res!625989 () Bool)

(assert (=> start!79212 (=> (not res!625989) (not e!521947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79212 (= res!625989 (validMask!0 mask!1881))))

(assert (=> start!79212 e!521947))

(assert (=> start!79212 true))

(declare-fun tp_is_empty!19905 () Bool)

(assert (=> start!79212 tp_is_empty!19905))

(declare-fun array_inv!20876 (array!55784) Bool)

(assert (=> start!79212 (and (array_inv!20876 _values!1231) e!521944)))

(assert (=> start!79212 tp!60633))

(declare-fun array_inv!20877 (array!55782) Bool)

(assert (=> start!79212 (array_inv!20877 _keys!1487)))

(declare-fun b!929418 () Bool)

(declare-fun res!625993 () Bool)

(assert (=> b!929418 (=> (not res!625993) (not e!521947))))

(assert (=> b!929418 (= res!625993 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27292 _keys!1487))))))

(declare-fun b!929419 () Bool)

(declare-fun res!625987 () Bool)

(assert (=> b!929419 (=> (not res!625987) (not e!521947))))

(declare-datatypes ((List!19006 0))(
  ( (Nil!19003) (Cons!19002 (h!20148 (_ BitVec 64)) (t!27071 List!19006)) )
))
(declare-fun arrayNoDuplicates!0 (array!55782 (_ BitVec 32) List!19006) Bool)

(assert (=> b!929419 (= res!625987 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19003))))

(declare-fun b!929420 () Bool)

(assert (=> b!929420 (= e!521949 tp_is_empty!19905)))

(declare-fun b!929421 () Bool)

(declare-fun res!625988 () Bool)

(assert (=> b!929421 (=> (not res!625988) (not e!521948))))

(assert (=> b!929421 (= res!625988 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929422 () Bool)

(declare-fun e!521945 () Bool)

(assert (=> b!929422 (= e!521945 tp_is_empty!19905)))

(declare-fun mapNonEmpty!31614 () Bool)

(declare-fun tp!60632 () Bool)

(assert (=> mapNonEmpty!31614 (= mapRes!31614 (and tp!60632 e!521945))))

(declare-fun mapKey!31614 () (_ BitVec 32))

(declare-fun mapRest!31614 () (Array (_ BitVec 32) ValueCell!9471))

(declare-fun mapValue!31614 () ValueCell!9471)

(assert (=> mapNonEmpty!31614 (= (arr!26833 _values!1231) (store mapRest!31614 mapKey!31614 mapValue!31614))))

(declare-fun b!929423 () Bool)

(assert (=> b!929423 (= e!521948 false)))

(declare-fun lt!419033 () Bool)

(assert (=> b!929423 (= lt!419033 (contains!4979 (getCurrentListMap!3173 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!929424 () Bool)

(declare-fun res!625994 () Bool)

(assert (=> b!929424 (=> (not res!625994) (not e!521947))))

(assert (=> b!929424 (= res!625994 (and (= (size!27293 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27292 _keys!1487) (size!27293 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929425 () Bool)

(declare-fun res!625990 () Bool)

(assert (=> b!929425 (=> (not res!625990) (not e!521948))))

(declare-fun v!791 () V!31505)

(declare-fun apply!755 (ListLongMap!11895 (_ BitVec 64)) V!31505)

(assert (=> b!929425 (= res!625990 (= (apply!755 lt!419034 k0!1099) v!791))))

(declare-fun b!929426 () Bool)

(declare-fun res!625992 () Bool)

(assert (=> b!929426 (=> (not res!625992) (not e!521947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55782 (_ BitVec 32)) Bool)

(assert (=> b!929426 (= res!625992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79212 res!625989) b!929424))

(assert (= (and b!929424 res!625994) b!929426))

(assert (= (and b!929426 res!625992) b!929419))

(assert (= (and b!929419 res!625987) b!929418))

(assert (= (and b!929418 res!625993) b!929416))

(assert (= (and b!929416 res!625991) b!929425))

(assert (= (and b!929425 res!625990) b!929421))

(assert (= (and b!929421 res!625988) b!929423))

(assert (= (and b!929417 condMapEmpty!31614) mapIsEmpty!31614))

(assert (= (and b!929417 (not condMapEmpty!31614)) mapNonEmpty!31614))

(get-info :version)

(assert (= (and mapNonEmpty!31614 ((_ is ValueCellFull!9471) mapValue!31614)) b!929422))

(assert (= (and b!929417 ((_ is ValueCellFull!9471) mapDefault!31614)) b!929420))

(assert (= start!79212 b!929417))

(declare-fun m!864041 () Bool)

(assert (=> b!929419 m!864041))

(declare-fun m!864043 () Bool)

(assert (=> b!929423 m!864043))

(assert (=> b!929423 m!864043))

(declare-fun m!864045 () Bool)

(assert (=> b!929423 m!864045))

(declare-fun m!864047 () Bool)

(assert (=> b!929426 m!864047))

(declare-fun m!864049 () Bool)

(assert (=> start!79212 m!864049))

(declare-fun m!864051 () Bool)

(assert (=> start!79212 m!864051))

(declare-fun m!864053 () Bool)

(assert (=> start!79212 m!864053))

(declare-fun m!864055 () Bool)

(assert (=> b!929416 m!864055))

(declare-fun m!864057 () Bool)

(assert (=> b!929416 m!864057))

(declare-fun m!864059 () Bool)

(assert (=> b!929425 m!864059))

(declare-fun m!864061 () Bool)

(assert (=> mapNonEmpty!31614 m!864061))

(check-sat (not b!929419) tp_is_empty!19905 b_and!28481 (not b!929423) (not b!929416) (not b_next!17397) (not b!929426) (not mapNonEmpty!31614) (not b!929425) (not start!79212))
(check-sat b_and!28481 (not b_next!17397))
