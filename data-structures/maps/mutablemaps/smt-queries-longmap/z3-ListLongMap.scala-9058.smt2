; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109170 () Bool)

(assert start!109170)

(declare-fun b_free!28623 () Bool)

(declare-fun b_next!28623 () Bool)

(assert (=> start!109170 (= b_free!28623 (not b_next!28623))))

(declare-fun tp!100988 () Bool)

(declare-fun b_and!46723 () Bool)

(assert (=> start!109170 (= tp!100988 b_and!46723)))

(declare-fun b!1290399 () Bool)

(declare-fun e!736718 () Bool)

(assert (=> b!1290399 (= e!736718 true)))

(declare-datatypes ((V!50787 0))(
  ( (V!50788 (val!17206 Int)) )
))
(declare-datatypes ((tuple2!22246 0))(
  ( (tuple2!22247 (_1!11133 (_ BitVec 64)) (_2!11133 V!50787)) )
))
(declare-datatypes ((List!29443 0))(
  ( (Nil!29440) (Cons!29439 (h!30648 tuple2!22246) (t!43014 List!29443)) )
))
(declare-datatypes ((ListLongMap!19915 0))(
  ( (ListLongMap!19916 (toList!9973 List!29443)) )
))
(declare-fun lt!578587 () ListLongMap!19915)

(declare-fun lt!578590 () tuple2!22246)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!578591 () Bool)

(declare-fun contains!8029 (ListLongMap!19915 (_ BitVec 64)) Bool)

(declare-fun +!4342 (ListLongMap!19915 tuple2!22246) ListLongMap!19915)

(assert (=> b!1290399 (= lt!578591 (contains!8029 (+!4342 lt!578587 lt!578590) k0!1205))))

(declare-fun lt!578593 () ListLongMap!19915)

(assert (=> b!1290399 (not (contains!8029 (+!4342 lt!578593 lt!578590) k0!1205))))

(declare-fun minValue!1387 () V!50787)

(assert (=> b!1290399 (= lt!578590 (tuple2!22247 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!42635 0))(
  ( (Unit!42636) )
))
(declare-fun lt!578592 () Unit!42635)

(declare-fun addStillNotContains!387 (ListLongMap!19915 (_ BitVec 64) V!50787 (_ BitVec 64)) Unit!42635)

(assert (=> b!1290399 (= lt!578592 (addStillNotContains!387 lt!578593 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290399 (not (contains!8029 lt!578587 k0!1205))))

(declare-fun zeroValue!1387 () V!50787)

(assert (=> b!1290399 (= lt!578587 (+!4342 lt!578593 (tuple2!22247 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578588 () Unit!42635)

(assert (=> b!1290399 (= lt!578588 (addStillNotContains!387 lt!578593 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16233 0))(
  ( (ValueCellFull!16233 (v!19807 V!50787)) (EmptyCell!16233) )
))
(declare-datatypes ((array!85523 0))(
  ( (array!85524 (arr!41258 (Array (_ BitVec 32) ValueCell!16233)) (size!41809 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85523)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85525 0))(
  ( (array!85526 (arr!41259 (Array (_ BitVec 32) (_ BitVec 64))) (size!41810 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85525)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6054 (array!85525 array!85523 (_ BitVec 32) (_ BitVec 32) V!50787 V!50787 (_ BitVec 32) Int) ListLongMap!19915)

(assert (=> b!1290399 (= lt!578593 (getCurrentListMapNoExtraKeys!6054 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52955 () Bool)

(declare-fun mapRes!52955 () Bool)

(assert (=> mapIsEmpty!52955 mapRes!52955))

(declare-fun b!1290400 () Bool)

(declare-fun e!736722 () Bool)

(declare-fun tp_is_empty!34263 () Bool)

(assert (=> b!1290400 (= e!736722 tp_is_empty!34263)))

(declare-fun b!1290401 () Bool)

(declare-fun res!857340 () Bool)

(declare-fun e!736720 () Bool)

(assert (=> b!1290401 (=> (not res!857340) (not e!736720))))

(assert (=> b!1290401 (= res!857340 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41810 _keys!1741))))))

(declare-fun b!1290402 () Bool)

(declare-fun res!857338 () Bool)

(assert (=> b!1290402 (=> (not res!857338) (not e!736720))))

(declare-fun getCurrentListMap!4973 (array!85525 array!85523 (_ BitVec 32) (_ BitVec 32) V!50787 V!50787 (_ BitVec 32) Int) ListLongMap!19915)

(assert (=> b!1290402 (= res!857338 (contains!8029 (getCurrentListMap!4973 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290403 () Bool)

(declare-fun e!736719 () Bool)

(assert (=> b!1290403 (= e!736719 tp_is_empty!34263)))

(declare-fun mapNonEmpty!52955 () Bool)

(declare-fun tp!100989 () Bool)

(assert (=> mapNonEmpty!52955 (= mapRes!52955 (and tp!100989 e!736722))))

(declare-fun mapKey!52955 () (_ BitVec 32))

(declare-fun mapRest!52955 () (Array (_ BitVec 32) ValueCell!16233))

(declare-fun mapValue!52955 () ValueCell!16233)

(assert (=> mapNonEmpty!52955 (= (arr!41258 _values!1445) (store mapRest!52955 mapKey!52955 mapValue!52955))))

(declare-fun b!1290404 () Bool)

(declare-fun res!857337 () Bool)

(assert (=> b!1290404 (=> (not res!857337) (not e!736720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85525 (_ BitVec 32)) Bool)

(assert (=> b!1290404 (= res!857337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290405 () Bool)

(assert (=> b!1290405 (= e!736720 (not e!736718))))

(declare-fun res!857332 () Bool)

(assert (=> b!1290405 (=> res!857332 e!736718)))

(assert (=> b!1290405 (= res!857332 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290405 (not (contains!8029 (ListLongMap!19916 Nil!29440) k0!1205))))

(declare-fun lt!578589 () Unit!42635)

(declare-fun emptyContainsNothing!78 ((_ BitVec 64)) Unit!42635)

(assert (=> b!1290405 (= lt!578589 (emptyContainsNothing!78 k0!1205))))

(declare-fun b!1290406 () Bool)

(declare-fun res!857334 () Bool)

(assert (=> b!1290406 (=> (not res!857334) (not e!736720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290406 (= res!857334 (not (validKeyInArray!0 (select (arr!41259 _keys!1741) from!2144))))))

(declare-fun b!1290407 () Bool)

(declare-fun e!736723 () Bool)

(assert (=> b!1290407 (= e!736723 (and e!736719 mapRes!52955))))

(declare-fun condMapEmpty!52955 () Bool)

(declare-fun mapDefault!52955 () ValueCell!16233)

(assert (=> b!1290407 (= condMapEmpty!52955 (= (arr!41258 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16233)) mapDefault!52955)))))

(declare-fun res!857333 () Bool)

(assert (=> start!109170 (=> (not res!857333) (not e!736720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109170 (= res!857333 (validMask!0 mask!2175))))

(assert (=> start!109170 e!736720))

(assert (=> start!109170 tp_is_empty!34263))

(assert (=> start!109170 true))

(declare-fun array_inv!31245 (array!85523) Bool)

(assert (=> start!109170 (and (array_inv!31245 _values!1445) e!736723)))

(declare-fun array_inv!31246 (array!85525) Bool)

(assert (=> start!109170 (array_inv!31246 _keys!1741)))

(assert (=> start!109170 tp!100988))

(declare-fun b!1290408 () Bool)

(declare-fun res!857335 () Bool)

(assert (=> b!1290408 (=> (not res!857335) (not e!736720))))

(declare-datatypes ((List!29444 0))(
  ( (Nil!29441) (Cons!29440 (h!30649 (_ BitVec 64)) (t!43015 List!29444)) )
))
(declare-fun arrayNoDuplicates!0 (array!85525 (_ BitVec 32) List!29444) Bool)

(assert (=> b!1290408 (= res!857335 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29441))))

(declare-fun b!1290409 () Bool)

(declare-fun res!857339 () Bool)

(assert (=> b!1290409 (=> (not res!857339) (not e!736720))))

(assert (=> b!1290409 (= res!857339 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41810 _keys!1741))))))

(declare-fun b!1290410 () Bool)

(declare-fun res!857336 () Bool)

(assert (=> b!1290410 (=> (not res!857336) (not e!736720))))

(assert (=> b!1290410 (= res!857336 (and (= (size!41809 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41810 _keys!1741) (size!41809 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109170 res!857333) b!1290410))

(assert (= (and b!1290410 res!857336) b!1290404))

(assert (= (and b!1290404 res!857337) b!1290408))

(assert (= (and b!1290408 res!857335) b!1290409))

(assert (= (and b!1290409 res!857339) b!1290402))

(assert (= (and b!1290402 res!857338) b!1290401))

(assert (= (and b!1290401 res!857340) b!1290406))

(assert (= (and b!1290406 res!857334) b!1290405))

(assert (= (and b!1290405 (not res!857332)) b!1290399))

(assert (= (and b!1290407 condMapEmpty!52955) mapIsEmpty!52955))

(assert (= (and b!1290407 (not condMapEmpty!52955)) mapNonEmpty!52955))

(get-info :version)

(assert (= (and mapNonEmpty!52955 ((_ is ValueCellFull!16233) mapValue!52955)) b!1290400))

(assert (= (and b!1290407 ((_ is ValueCellFull!16233) mapDefault!52955)) b!1290403))

(assert (= start!109170 b!1290407))

(declare-fun m!1183037 () Bool)

(assert (=> b!1290402 m!1183037))

(assert (=> b!1290402 m!1183037))

(declare-fun m!1183039 () Bool)

(assert (=> b!1290402 m!1183039))

(declare-fun m!1183041 () Bool)

(assert (=> b!1290408 m!1183041))

(declare-fun m!1183043 () Bool)

(assert (=> b!1290404 m!1183043))

(declare-fun m!1183045 () Bool)

(assert (=> b!1290406 m!1183045))

(assert (=> b!1290406 m!1183045))

(declare-fun m!1183047 () Bool)

(assert (=> b!1290406 m!1183047))

(declare-fun m!1183049 () Bool)

(assert (=> b!1290399 m!1183049))

(declare-fun m!1183051 () Bool)

(assert (=> b!1290399 m!1183051))

(declare-fun m!1183053 () Bool)

(assert (=> b!1290399 m!1183053))

(declare-fun m!1183055 () Bool)

(assert (=> b!1290399 m!1183055))

(declare-fun m!1183057 () Bool)

(assert (=> b!1290399 m!1183057))

(assert (=> b!1290399 m!1183055))

(declare-fun m!1183059 () Bool)

(assert (=> b!1290399 m!1183059))

(assert (=> b!1290399 m!1183051))

(declare-fun m!1183061 () Bool)

(assert (=> b!1290399 m!1183061))

(declare-fun m!1183063 () Bool)

(assert (=> b!1290399 m!1183063))

(declare-fun m!1183065 () Bool)

(assert (=> b!1290399 m!1183065))

(declare-fun m!1183067 () Bool)

(assert (=> b!1290405 m!1183067))

(declare-fun m!1183069 () Bool)

(assert (=> b!1290405 m!1183069))

(declare-fun m!1183071 () Bool)

(assert (=> mapNonEmpty!52955 m!1183071))

(declare-fun m!1183073 () Bool)

(assert (=> start!109170 m!1183073))

(declare-fun m!1183075 () Bool)

(assert (=> start!109170 m!1183075))

(declare-fun m!1183077 () Bool)

(assert (=> start!109170 m!1183077))

(check-sat (not mapNonEmpty!52955) (not b!1290404) (not b!1290399) b_and!46723 (not b_next!28623) tp_is_empty!34263 (not b!1290406) (not start!109170) (not b!1290405) (not b!1290402) (not b!1290408))
(check-sat b_and!46723 (not b_next!28623))
