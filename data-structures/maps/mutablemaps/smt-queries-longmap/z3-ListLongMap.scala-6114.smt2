; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78822 () Bool)

(assert start!78822)

(declare-fun b_free!17007 () Bool)

(declare-fun b_next!17007 () Bool)

(assert (=> start!78822 (= b_free!17007 (not b_next!17007))))

(declare-fun tp!59462 () Bool)

(declare-fun b_and!27769 () Bool)

(assert (=> start!78822 (= tp!59462 b_and!27769)))

(declare-fun b!919573 () Bool)

(declare-fun res!620189 () Bool)

(declare-fun e!516181 () Bool)

(assert (=> b!919573 (=> (not res!620189) (not e!516181))))

(declare-datatypes ((V!30985 0))(
  ( (V!30986 (val!9808 Int)) )
))
(declare-fun v!791 () V!30985)

(declare-datatypes ((tuple2!12836 0))(
  ( (tuple2!12837 (_1!6428 (_ BitVec 64)) (_2!6428 V!30985)) )
))
(declare-datatypes ((List!18679 0))(
  ( (Nil!18676) (Cons!18675 (h!19821 tuple2!12836) (t!26424 List!18679)) )
))
(declare-datatypes ((ListLongMap!11547 0))(
  ( (ListLongMap!11548 (toList!5789 List!18679)) )
))
(declare-fun lt!412799 () ListLongMap!11547)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!603 (ListLongMap!11547 (_ BitVec 64)) V!30985)

(assert (=> b!919573 (= res!620189 (= (apply!603 lt!412799 k0!1099) v!791))))

(declare-fun mapIsEmpty!31029 () Bool)

(declare-fun mapRes!31029 () Bool)

(assert (=> mapIsEmpty!31029 mapRes!31029))

(declare-fun b!919574 () Bool)

(declare-fun res!620186 () Bool)

(declare-fun e!516185 () Bool)

(assert (=> b!919574 (=> (not res!620186) (not e!516185))))

(declare-datatypes ((array!55022 0))(
  ( (array!55023 (arr!26452 (Array (_ BitVec 32) (_ BitVec 64))) (size!26912 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55022)

(declare-datatypes ((List!18680 0))(
  ( (Nil!18677) (Cons!18676 (h!19822 (_ BitVec 64)) (t!26425 List!18680)) )
))
(declare-fun arrayNoDuplicates!0 (array!55022 (_ BitVec 32) List!18680) Bool)

(assert (=> b!919574 (= res!620186 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18677))))

(declare-fun b!919575 () Bool)

(declare-fun res!620187 () Bool)

(assert (=> b!919575 (=> (not res!620187) (not e!516185))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9276 0))(
  ( (ValueCellFull!9276 (v!12326 V!30985)) (EmptyCell!9276) )
))
(declare-datatypes ((array!55024 0))(
  ( (array!55025 (arr!26453 (Array (_ BitVec 32) ValueCell!9276)) (size!26913 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55024)

(assert (=> b!919575 (= res!620187 (and (= (size!26913 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26912 _keys!1487) (size!26913 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919576 () Bool)

(assert (=> b!919576 (= e!516185 e!516181)))

(declare-fun res!620192 () Bool)

(assert (=> b!919576 (=> (not res!620192) (not e!516181))))

(declare-fun contains!4800 (ListLongMap!11547 (_ BitVec 64)) Bool)

(assert (=> b!919576 (= res!620192 (contains!4800 lt!412799 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30985)

(declare-fun minValue!1173 () V!30985)

(declare-fun getCurrentListMap!3012 (array!55022 array!55024 (_ BitVec 32) (_ BitVec 32) V!30985 V!30985 (_ BitVec 32) Int) ListLongMap!11547)

(assert (=> b!919576 (= lt!412799 (getCurrentListMap!3012 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!620191 () Bool)

(assert (=> start!78822 (=> (not res!620191) (not e!516185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78822 (= res!620191 (validMask!0 mask!1881))))

(assert (=> start!78822 e!516185))

(assert (=> start!78822 true))

(declare-fun tp_is_empty!19515 () Bool)

(assert (=> start!78822 tp_is_empty!19515))

(declare-fun e!516186 () Bool)

(declare-fun array_inv!20608 (array!55024) Bool)

(assert (=> start!78822 (and (array_inv!20608 _values!1231) e!516186)))

(assert (=> start!78822 tp!59462))

(declare-fun array_inv!20609 (array!55022) Bool)

(assert (=> start!78822 (array_inv!20609 _keys!1487)))

(declare-fun b!919577 () Bool)

(declare-fun res!620184 () Bool)

(assert (=> b!919577 (=> (not res!620184) (not e!516181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919577 (= res!620184 (validKeyInArray!0 k0!1099))))

(declare-fun b!919578 () Bool)

(declare-fun e!516180 () Bool)

(assert (=> b!919578 (= e!516180 (not true))))

(assert (=> b!919578 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18677)))

(declare-datatypes ((Unit!31033 0))(
  ( (Unit!31034) )
))
(declare-fun lt!412796 () Unit!31033)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55022 (_ BitVec 32) (_ BitVec 32)) Unit!31033)

(assert (=> b!919578 (= lt!412796 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412797 () tuple2!12836)

(declare-fun +!2613 (ListLongMap!11547 tuple2!12836) ListLongMap!11547)

(assert (=> b!919578 (contains!4800 (+!2613 lt!412799 lt!412797) k0!1099)))

(declare-fun lt!412798 () Unit!31033)

(declare-fun lt!412794 () (_ BitVec 64))

(declare-fun lt!412800 () V!30985)

(declare-fun addStillContains!375 (ListLongMap!11547 (_ BitVec 64) V!30985 (_ BitVec 64)) Unit!31033)

(assert (=> b!919578 (= lt!412798 (addStillContains!375 lt!412799 lt!412794 lt!412800 k0!1099))))

(assert (=> b!919578 (= (getCurrentListMap!3012 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2613 (getCurrentListMap!3012 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412797))))

(assert (=> b!919578 (= lt!412797 (tuple2!12837 lt!412794 lt!412800))))

(declare-fun get!13894 (ValueCell!9276 V!30985) V!30985)

(declare-fun dynLambda!1452 (Int (_ BitVec 64)) V!30985)

(assert (=> b!919578 (= lt!412800 (get!13894 (select (arr!26453 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1452 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412795 () Unit!31033)

(declare-fun lemmaListMapRecursiveValidKeyArray!48 (array!55022 array!55024 (_ BitVec 32) (_ BitVec 32) V!30985 V!30985 (_ BitVec 32) Int) Unit!31033)

(assert (=> b!919578 (= lt!412795 (lemmaListMapRecursiveValidKeyArray!48 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919579 () Bool)

(declare-fun e!516182 () Bool)

(assert (=> b!919579 (= e!516186 (and e!516182 mapRes!31029))))

(declare-fun condMapEmpty!31029 () Bool)

(declare-fun mapDefault!31029 () ValueCell!9276)

(assert (=> b!919579 (= condMapEmpty!31029 (= (arr!26453 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9276)) mapDefault!31029)))))

(declare-fun mapNonEmpty!31029 () Bool)

(declare-fun tp!59463 () Bool)

(declare-fun e!516183 () Bool)

(assert (=> mapNonEmpty!31029 (= mapRes!31029 (and tp!59463 e!516183))))

(declare-fun mapKey!31029 () (_ BitVec 32))

(declare-fun mapRest!31029 () (Array (_ BitVec 32) ValueCell!9276))

(declare-fun mapValue!31029 () ValueCell!9276)

(assert (=> mapNonEmpty!31029 (= (arr!26453 _values!1231) (store mapRest!31029 mapKey!31029 mapValue!31029))))

(declare-fun b!919580 () Bool)

(declare-fun res!620185 () Bool)

(assert (=> b!919580 (=> (not res!620185) (not e!516185))))

(assert (=> b!919580 (= res!620185 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26912 _keys!1487))))))

(declare-fun b!919581 () Bool)

(assert (=> b!919581 (= e!516181 e!516180)))

(declare-fun res!620188 () Bool)

(assert (=> b!919581 (=> (not res!620188) (not e!516180))))

(assert (=> b!919581 (= res!620188 (validKeyInArray!0 lt!412794))))

(assert (=> b!919581 (= lt!412794 (select (arr!26452 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919582 () Bool)

(declare-fun res!620183 () Bool)

(assert (=> b!919582 (=> (not res!620183) (not e!516181))))

(assert (=> b!919582 (= res!620183 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919583 () Bool)

(assert (=> b!919583 (= e!516182 tp_is_empty!19515)))

(declare-fun b!919584 () Bool)

(declare-fun res!620190 () Bool)

(assert (=> b!919584 (=> (not res!620190) (not e!516185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55022 (_ BitVec 32)) Bool)

(assert (=> b!919584 (= res!620190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919585 () Bool)

(assert (=> b!919585 (= e!516183 tp_is_empty!19515)))

(assert (= (and start!78822 res!620191) b!919575))

(assert (= (and b!919575 res!620187) b!919584))

(assert (= (and b!919584 res!620190) b!919574))

(assert (= (and b!919574 res!620186) b!919580))

(assert (= (and b!919580 res!620185) b!919576))

(assert (= (and b!919576 res!620192) b!919573))

(assert (= (and b!919573 res!620189) b!919582))

(assert (= (and b!919582 res!620183) b!919577))

(assert (= (and b!919577 res!620184) b!919581))

(assert (= (and b!919581 res!620188) b!919578))

(assert (= (and b!919579 condMapEmpty!31029) mapIsEmpty!31029))

(assert (= (and b!919579 (not condMapEmpty!31029)) mapNonEmpty!31029))

(get-info :version)

(assert (= (and mapNonEmpty!31029 ((_ is ValueCellFull!9276) mapValue!31029)) b!919585))

(assert (= (and b!919579 ((_ is ValueCellFull!9276) mapDefault!31029)) b!919583))

(assert (= start!78822 b!919579))

(declare-fun b_lambda!13539 () Bool)

(assert (=> (not b_lambda!13539) (not b!919578)))

(declare-fun t!26423 () Bool)

(declare-fun tb!5595 () Bool)

(assert (=> (and start!78822 (= defaultEntry!1235 defaultEntry!1235) t!26423) tb!5595))

(declare-fun result!11005 () Bool)

(assert (=> tb!5595 (= result!11005 tp_is_empty!19515)))

(assert (=> b!919578 t!26423))

(declare-fun b_and!27771 () Bool)

(assert (= b_and!27769 (and (=> t!26423 result!11005) b_and!27771)))

(declare-fun m!853507 () Bool)

(assert (=> b!919573 m!853507))

(declare-fun m!853509 () Bool)

(assert (=> b!919578 m!853509))

(declare-fun m!853511 () Bool)

(assert (=> b!919578 m!853511))

(declare-fun m!853513 () Bool)

(assert (=> b!919578 m!853513))

(declare-fun m!853515 () Bool)

(assert (=> b!919578 m!853515))

(declare-fun m!853517 () Bool)

(assert (=> b!919578 m!853517))

(assert (=> b!919578 m!853515))

(assert (=> b!919578 m!853517))

(declare-fun m!853519 () Bool)

(assert (=> b!919578 m!853519))

(declare-fun m!853521 () Bool)

(assert (=> b!919578 m!853521))

(declare-fun m!853523 () Bool)

(assert (=> b!919578 m!853523))

(declare-fun m!853525 () Bool)

(assert (=> b!919578 m!853525))

(assert (=> b!919578 m!853523))

(declare-fun m!853527 () Bool)

(assert (=> b!919578 m!853527))

(declare-fun m!853529 () Bool)

(assert (=> b!919578 m!853529))

(assert (=> b!919578 m!853509))

(declare-fun m!853531 () Bool)

(assert (=> b!919578 m!853531))

(declare-fun m!853533 () Bool)

(assert (=> b!919581 m!853533))

(declare-fun m!853535 () Bool)

(assert (=> b!919581 m!853535))

(declare-fun m!853537 () Bool)

(assert (=> b!919577 m!853537))

(declare-fun m!853539 () Bool)

(assert (=> b!919576 m!853539))

(declare-fun m!853541 () Bool)

(assert (=> b!919576 m!853541))

(declare-fun m!853543 () Bool)

(assert (=> b!919584 m!853543))

(declare-fun m!853545 () Bool)

(assert (=> b!919574 m!853545))

(declare-fun m!853547 () Bool)

(assert (=> start!78822 m!853547))

(declare-fun m!853549 () Bool)

(assert (=> start!78822 m!853549))

(declare-fun m!853551 () Bool)

(assert (=> start!78822 m!853551))

(declare-fun m!853553 () Bool)

(assert (=> mapNonEmpty!31029 m!853553))

(check-sat (not b!919584) tp_is_empty!19515 (not b_lambda!13539) (not start!78822) (not mapNonEmpty!31029) (not b!919576) (not b!919574) b_and!27771 (not b!919573) (not b_next!17007) (not b!919581) (not b!919578) (not b!919577))
(check-sat b_and!27771 (not b_next!17007))
