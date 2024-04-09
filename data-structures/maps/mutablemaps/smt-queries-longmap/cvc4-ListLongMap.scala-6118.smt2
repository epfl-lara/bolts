; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78848 () Bool)

(assert start!78848)

(declare-fun b_free!17033 () Bool)

(declare-fun b_next!17033 () Bool)

(assert (=> start!78848 (= b_free!17033 (not b_next!17033))))

(declare-fun tp!59541 () Bool)

(declare-fun b_and!27821 () Bool)

(assert (=> start!78848 (= tp!59541 b_and!27821)))

(declare-fun b!920106 () Bool)

(declare-fun res!620578 () Bool)

(declare-fun e!516458 () Bool)

(assert (=> b!920106 (=> (not res!620578) (not e!516458))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31019 0))(
  ( (V!31020 (val!9821 Int)) )
))
(declare-datatypes ((tuple2!12858 0))(
  ( (tuple2!12859 (_1!6439 (_ BitVec 64)) (_2!6439 V!31019)) )
))
(declare-datatypes ((List!18700 0))(
  ( (Nil!18697) (Cons!18696 (h!19842 tuple2!12858) (t!26471 List!18700)) )
))
(declare-datatypes ((ListLongMap!11569 0))(
  ( (ListLongMap!11570 (toList!5800 List!18700)) )
))
(declare-fun lt!413073 () ListLongMap!11569)

(declare-fun v!791 () V!31019)

(declare-fun apply!613 (ListLongMap!11569 (_ BitVec 64)) V!31019)

(assert (=> b!920106 (= res!620578 (= (apply!613 lt!413073 k!1099) v!791))))

(declare-fun b!920107 () Bool)

(declare-fun e!516459 () Bool)

(assert (=> b!920107 (= e!516459 e!516458)))

(declare-fun res!620582 () Bool)

(assert (=> b!920107 (=> (not res!620582) (not e!516458))))

(declare-fun contains!4810 (ListLongMap!11569 (_ BitVec 64)) Bool)

(assert (=> b!920107 (= res!620582 (contains!4810 lt!413073 k!1099))))

(declare-datatypes ((array!55074 0))(
  ( (array!55075 (arr!26478 (Array (_ BitVec 32) (_ BitVec 64))) (size!26938 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55074)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9289 0))(
  ( (ValueCellFull!9289 (v!12339 V!31019)) (EmptyCell!9289) )
))
(declare-datatypes ((array!55076 0))(
  ( (array!55077 (arr!26479 (Array (_ BitVec 32) ValueCell!9289)) (size!26939 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55076)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31019)

(declare-fun minValue!1173 () V!31019)

(declare-fun getCurrentListMap!3022 (array!55074 array!55076 (_ BitVec 32) (_ BitVec 32) V!31019 V!31019 (_ BitVec 32) Int) ListLongMap!11569)

(assert (=> b!920107 (= lt!413073 (getCurrentListMap!3022 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31068 () Bool)

(declare-fun mapRes!31068 () Bool)

(assert (=> mapIsEmpty!31068 mapRes!31068))

(declare-fun b!920108 () Bool)

(declare-fun res!620580 () Bool)

(assert (=> b!920108 (=> (not res!620580) (not e!516458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920108 (= res!620580 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31068 () Bool)

(declare-fun tp!59540 () Bool)

(declare-fun e!516455 () Bool)

(assert (=> mapNonEmpty!31068 (= mapRes!31068 (and tp!59540 e!516455))))

(declare-fun mapRest!31068 () (Array (_ BitVec 32) ValueCell!9289))

(declare-fun mapValue!31068 () ValueCell!9289)

(declare-fun mapKey!31068 () (_ BitVec 32))

(assert (=> mapNonEmpty!31068 (= (arr!26479 _values!1231) (store mapRest!31068 mapKey!31068 mapValue!31068))))

(declare-fun b!920109 () Bool)

(declare-fun res!620579 () Bool)

(assert (=> b!920109 (=> (not res!620579) (not e!516459))))

(declare-datatypes ((List!18701 0))(
  ( (Nil!18698) (Cons!18697 (h!19843 (_ BitVec 64)) (t!26472 List!18701)) )
))
(declare-fun arrayNoDuplicates!0 (array!55074 (_ BitVec 32) List!18701) Bool)

(assert (=> b!920109 (= res!620579 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18698))))

(declare-fun b!920110 () Bool)

(declare-fun e!516457 () Bool)

(declare-fun tp_is_empty!19541 () Bool)

(assert (=> b!920110 (= e!516457 tp_is_empty!19541)))

(declare-fun b!920111 () Bool)

(declare-fun e!516456 () Bool)

(assert (=> b!920111 (= e!516456 (and e!516457 mapRes!31068))))

(declare-fun condMapEmpty!31068 () Bool)

(declare-fun mapDefault!31068 () ValueCell!9289)

