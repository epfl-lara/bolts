; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79188 () Bool)

(assert start!79188)

(declare-fun b_free!17373 () Bool)

(declare-fun b_next!17373 () Bool)

(assert (=> start!79188 (= b_free!17373 (not b_next!17373))))

(declare-fun tp!60561 () Bool)

(declare-fun b_and!28457 () Bool)

(assert (=> start!79188 (= tp!60561 b_and!28457)))

(declare-fun b!929037 () Bool)

(declare-fun res!625720 () Bool)

(declare-fun e!521729 () Bool)

(assert (=> b!929037 (=> (not res!625720) (not e!521729))))

(declare-datatypes ((array!55736 0))(
  ( (array!55737 (arr!26809 (Array (_ BitVec 32) (_ BitVec 64))) (size!27269 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55736)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31473 0))(
  ( (V!31474 (val!9991 Int)) )
))
(declare-datatypes ((ValueCell!9459 0))(
  ( (ValueCellFull!9459 (v!12509 V!31473)) (EmptyCell!9459) )
))
(declare-datatypes ((array!55738 0))(
  ( (array!55739 (arr!26810 (Array (_ BitVec 32) ValueCell!9459)) (size!27270 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55738)

(assert (=> b!929037 (= res!625720 (and (= (size!27270 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27269 _keys!1487) (size!27270 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31578 () Bool)

(declare-fun mapRes!31578 () Bool)

(assert (=> mapIsEmpty!31578 mapRes!31578))

(declare-fun res!625721 () Bool)

(assert (=> start!79188 (=> (not res!625721) (not e!521729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79188 (= res!625721 (validMask!0 mask!1881))))

(assert (=> start!79188 e!521729))

(assert (=> start!79188 true))

(declare-fun e!521730 () Bool)

(declare-fun array_inv!20862 (array!55738) Bool)

(assert (=> start!79188 (and (array_inv!20862 _values!1231) e!521730)))

(assert (=> start!79188 tp!60561))

(declare-fun array_inv!20863 (array!55736) Bool)

(assert (=> start!79188 (array_inv!20863 _keys!1487)))

(declare-fun tp_is_empty!19881 () Bool)

(assert (=> start!79188 tp_is_empty!19881))

(declare-fun b!929038 () Bool)

(declare-fun e!521728 () Bool)

(assert (=> b!929038 (= e!521728 tp_is_empty!19881)))

(declare-fun b!929039 () Bool)

(declare-fun res!625716 () Bool)

(assert (=> b!929039 (=> (not res!625716) (not e!521729))))

(declare-datatypes ((List!18990 0))(
  ( (Nil!18987) (Cons!18986 (h!20132 (_ BitVec 64)) (t!27055 List!18990)) )
))
(declare-fun arrayNoDuplicates!0 (array!55736 (_ BitVec 32) List!18990) Bool)

(assert (=> b!929039 (= res!625716 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18987))))

(declare-fun b!929040 () Bool)

(declare-fun res!625718 () Bool)

(assert (=> b!929040 (=> (not res!625718) (not e!521729))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929040 (= res!625718 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27269 _keys!1487))))))

(declare-fun b!929041 () Bool)

(declare-fun e!521732 () Bool)

(assert (=> b!929041 (= e!521732 false)))

(declare-fun lt!418971 () V!31473)

(declare-datatypes ((tuple2!13168 0))(
  ( (tuple2!13169 (_1!6594 (_ BitVec 64)) (_2!6594 V!31473)) )
))
(declare-datatypes ((List!18991 0))(
  ( (Nil!18988) (Cons!18987 (h!20133 tuple2!13168) (t!27056 List!18991)) )
))
(declare-datatypes ((ListLongMap!11879 0))(
  ( (ListLongMap!11880 (toList!5955 List!18991)) )
))
(declare-fun lt!418970 () ListLongMap!11879)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!750 (ListLongMap!11879 (_ BitVec 64)) V!31473)

(assert (=> b!929041 (= lt!418971 (apply!750 lt!418970 k0!1099))))

(declare-fun b!929042 () Bool)

(assert (=> b!929042 (= e!521729 e!521732)))

(declare-fun res!625719 () Bool)

(assert (=> b!929042 (=> (not res!625719) (not e!521732))))

(declare-fun contains!4971 (ListLongMap!11879 (_ BitVec 64)) Bool)

(assert (=> b!929042 (= res!625719 (contains!4971 lt!418970 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31473)

(declare-fun minValue!1173 () V!31473)

(declare-fun getCurrentListMap!3165 (array!55736 array!55738 (_ BitVec 32) (_ BitVec 32) V!31473 V!31473 (_ BitVec 32) Int) ListLongMap!11879)

(assert (=> b!929042 (= lt!418970 (getCurrentListMap!3165 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929043 () Bool)

(declare-fun e!521731 () Bool)

(assert (=> b!929043 (= e!521731 tp_is_empty!19881)))

(declare-fun b!929044 () Bool)

(declare-fun res!625717 () Bool)

(assert (=> b!929044 (=> (not res!625717) (not e!521729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55736 (_ BitVec 32)) Bool)

(assert (=> b!929044 (= res!625717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929045 () Bool)

(assert (=> b!929045 (= e!521730 (and e!521728 mapRes!31578))))

(declare-fun condMapEmpty!31578 () Bool)

(declare-fun mapDefault!31578 () ValueCell!9459)

(assert (=> b!929045 (= condMapEmpty!31578 (= (arr!26810 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9459)) mapDefault!31578)))))

(declare-fun mapNonEmpty!31578 () Bool)

(declare-fun tp!60560 () Bool)

(assert (=> mapNonEmpty!31578 (= mapRes!31578 (and tp!60560 e!521731))))

(declare-fun mapRest!31578 () (Array (_ BitVec 32) ValueCell!9459))

(declare-fun mapValue!31578 () ValueCell!9459)

(declare-fun mapKey!31578 () (_ BitVec 32))

(assert (=> mapNonEmpty!31578 (= (arr!26810 _values!1231) (store mapRest!31578 mapKey!31578 mapValue!31578))))

(assert (= (and start!79188 res!625721) b!929037))

(assert (= (and b!929037 res!625720) b!929044))

(assert (= (and b!929044 res!625717) b!929039))

(assert (= (and b!929039 res!625716) b!929040))

(assert (= (and b!929040 res!625718) b!929042))

(assert (= (and b!929042 res!625719) b!929041))

(assert (= (and b!929045 condMapEmpty!31578) mapIsEmpty!31578))

(assert (= (and b!929045 (not condMapEmpty!31578)) mapNonEmpty!31578))

(get-info :version)

(assert (= (and mapNonEmpty!31578 ((_ is ValueCellFull!9459) mapValue!31578)) b!929043))

(assert (= (and b!929045 ((_ is ValueCellFull!9459) mapDefault!31578)) b!929038))

(assert (= start!79188 b!929045))

(declare-fun m!863797 () Bool)

(assert (=> mapNonEmpty!31578 m!863797))

(declare-fun m!863799 () Bool)

(assert (=> b!929041 m!863799))

(declare-fun m!863801 () Bool)

(assert (=> b!929042 m!863801))

(declare-fun m!863803 () Bool)

(assert (=> b!929042 m!863803))

(declare-fun m!863805 () Bool)

(assert (=> b!929039 m!863805))

(declare-fun m!863807 () Bool)

(assert (=> start!79188 m!863807))

(declare-fun m!863809 () Bool)

(assert (=> start!79188 m!863809))

(declare-fun m!863811 () Bool)

(assert (=> start!79188 m!863811))

(declare-fun m!863813 () Bool)

(assert (=> b!929044 m!863813))

(check-sat (not b!929039) (not mapNonEmpty!31578) (not b!929044) tp_is_empty!19881 (not b!929042) (not b!929041) b_and!28457 (not b_next!17373) (not start!79188))
(check-sat b_and!28457 (not b_next!17373))
