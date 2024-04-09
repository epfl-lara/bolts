; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78792 () Bool)

(assert start!78792)

(declare-fun b_free!16977 () Bool)

(declare-fun b_next!16977 () Bool)

(assert (=> start!78792 (= b_free!16977 (not b_next!16977))))

(declare-fun tp!59373 () Bool)

(declare-fun b_and!27709 () Bool)

(assert (=> start!78792 (= tp!59373 b_and!27709)))

(declare-fun b!918958 () Bool)

(declare-fun e!515866 () Bool)

(declare-fun e!515871 () Bool)

(assert (=> b!918958 (= e!515866 e!515871)))

(declare-fun res!619738 () Bool)

(assert (=> b!918958 (=> (not res!619738) (not e!515871))))

(declare-fun lt!412481 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918958 (= res!619738 (validKeyInArray!0 lt!412481))))

(declare-datatypes ((array!54962 0))(
  ( (array!54963 (arr!26422 (Array (_ BitVec 32) (_ BitVec 64))) (size!26882 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54962)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918958 (= lt!412481 (select (arr!26422 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918959 () Bool)

(declare-fun res!619734 () Bool)

(assert (=> b!918959 (=> (not res!619734) (not e!515866))))

(assert (=> b!918959 (= res!619734 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918960 () Bool)

(declare-fun res!619733 () Bool)

(declare-fun e!515868 () Bool)

(assert (=> b!918960 (=> (not res!619733) (not e!515868))))

(declare-datatypes ((List!18650 0))(
  ( (Nil!18647) (Cons!18646 (h!19792 (_ BitVec 64)) (t!26365 List!18650)) )
))
(declare-fun arrayNoDuplicates!0 (array!54962 (_ BitVec 32) List!18650) Bool)

(assert (=> b!918960 (= res!619733 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18647))))

(declare-fun b!918961 () Bool)

(declare-fun e!515870 () Bool)

(declare-fun tp_is_empty!19485 () Bool)

(assert (=> b!918961 (= e!515870 tp_is_empty!19485)))

(declare-fun res!619742 () Bool)

(assert (=> start!78792 (=> (not res!619742) (not e!515868))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78792 (= res!619742 (validMask!0 mask!1881))))

(assert (=> start!78792 e!515868))

(assert (=> start!78792 true))

(assert (=> start!78792 tp_is_empty!19485))

(declare-datatypes ((V!30945 0))(
  ( (V!30946 (val!9793 Int)) )
))
(declare-datatypes ((ValueCell!9261 0))(
  ( (ValueCellFull!9261 (v!12311 V!30945)) (EmptyCell!9261) )
))
(declare-datatypes ((array!54964 0))(
  ( (array!54965 (arr!26423 (Array (_ BitVec 32) ValueCell!9261)) (size!26883 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54964)

(declare-fun e!515865 () Bool)

(declare-fun array_inv!20586 (array!54964) Bool)

(assert (=> start!78792 (and (array_inv!20586 _values!1231) e!515865)))

(assert (=> start!78792 tp!59373))

(declare-fun array_inv!20587 (array!54962) Bool)

(assert (=> start!78792 (array_inv!20587 _keys!1487)))

(declare-fun b!918962 () Bool)

(assert (=> b!918962 (= e!515868 e!515866)))

(declare-fun res!619735 () Bool)

(assert (=> b!918962 (=> (not res!619735) (not e!515866))))

(declare-datatypes ((tuple2!12808 0))(
  ( (tuple2!12809 (_1!6414 (_ BitVec 64)) (_2!6414 V!30945)) )
))
(declare-datatypes ((List!18651 0))(
  ( (Nil!18648) (Cons!18647 (h!19793 tuple2!12808) (t!26366 List!18651)) )
))
(declare-datatypes ((ListLongMap!11519 0))(
  ( (ListLongMap!11520 (toList!5775 List!18651)) )
))
(declare-fun lt!412479 () ListLongMap!11519)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4787 (ListLongMap!11519 (_ BitVec 64)) Bool)

(assert (=> b!918962 (= res!619735 (contains!4787 lt!412479 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30945)

(declare-fun minValue!1173 () V!30945)

(declare-fun getCurrentListMap!2999 (array!54962 array!54964 (_ BitVec 32) (_ BitVec 32) V!30945 V!30945 (_ BitVec 32) Int) ListLongMap!11519)

(assert (=> b!918962 (= lt!412479 (getCurrentListMap!2999 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918963 () Bool)

(declare-fun mapRes!30984 () Bool)

(assert (=> b!918963 (= e!515865 (and e!515870 mapRes!30984))))

(declare-fun condMapEmpty!30984 () Bool)

(declare-fun mapDefault!30984 () ValueCell!9261)

(assert (=> b!918963 (= condMapEmpty!30984 (= (arr!26423 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9261)) mapDefault!30984)))))

(declare-fun mapIsEmpty!30984 () Bool)

(assert (=> mapIsEmpty!30984 mapRes!30984))

(declare-fun b!918964 () Bool)

(declare-fun res!619741 () Bool)

(assert (=> b!918964 (=> (not res!619741) (not e!515868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54962 (_ BitVec 32)) Bool)

(assert (=> b!918964 (= res!619741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918965 () Bool)

(declare-fun e!515867 () Bool)

(assert (=> b!918965 (= e!515867 tp_is_empty!19485)))

(declare-fun b!918966 () Bool)

(declare-fun res!619739 () Bool)

(assert (=> b!918966 (=> (not res!619739) (not e!515868))))

(assert (=> b!918966 (= res!619739 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26882 _keys!1487))))))

(declare-fun mapNonEmpty!30984 () Bool)

(declare-fun tp!59372 () Bool)

(assert (=> mapNonEmpty!30984 (= mapRes!30984 (and tp!59372 e!515867))))

(declare-fun mapKey!30984 () (_ BitVec 32))

(declare-fun mapRest!30984 () (Array (_ BitVec 32) ValueCell!9261))

(declare-fun mapValue!30984 () ValueCell!9261)

(assert (=> mapNonEmpty!30984 (= (arr!26423 _values!1231) (store mapRest!30984 mapKey!30984 mapValue!30984))))

(declare-fun b!918967 () Bool)

(assert (=> b!918967 (= e!515871 (not true))))

(assert (=> b!918967 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18647)))

(declare-datatypes ((Unit!31009 0))(
  ( (Unit!31010) )
))
(declare-fun lt!412483 () Unit!31009)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54962 (_ BitVec 32) (_ BitVec 32)) Unit!31009)

(assert (=> b!918967 (= lt!412483 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412484 () tuple2!12808)

(declare-fun +!2601 (ListLongMap!11519 tuple2!12808) ListLongMap!11519)

(assert (=> b!918967 (contains!4787 (+!2601 lt!412479 lt!412484) k0!1099)))

(declare-fun lt!412482 () Unit!31009)

(declare-fun lt!412480 () V!30945)

(declare-fun addStillContains!363 (ListLongMap!11519 (_ BitVec 64) V!30945 (_ BitVec 64)) Unit!31009)

(assert (=> b!918967 (= lt!412482 (addStillContains!363 lt!412479 lt!412481 lt!412480 k0!1099))))

(assert (=> b!918967 (= (getCurrentListMap!2999 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2601 (getCurrentListMap!2999 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412484))))

(assert (=> b!918967 (= lt!412484 (tuple2!12809 lt!412481 lt!412480))))

(declare-fun get!13872 (ValueCell!9261 V!30945) V!30945)

(declare-fun dynLambda!1440 (Int (_ BitVec 64)) V!30945)

(assert (=> b!918967 (= lt!412480 (get!13872 (select (arr!26423 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1440 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412485 () Unit!31009)

(declare-fun lemmaListMapRecursiveValidKeyArray!36 (array!54962 array!54964 (_ BitVec 32) (_ BitVec 32) V!30945 V!30945 (_ BitVec 32) Int) Unit!31009)

(assert (=> b!918967 (= lt!412485 (lemmaListMapRecursiveValidKeyArray!36 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918968 () Bool)

(declare-fun res!619737 () Bool)

(assert (=> b!918968 (=> (not res!619737) (not e!515866))))

(declare-fun v!791 () V!30945)

(declare-fun apply!592 (ListLongMap!11519 (_ BitVec 64)) V!30945)

(assert (=> b!918968 (= res!619737 (= (apply!592 lt!412479 k0!1099) v!791))))

(declare-fun b!918969 () Bool)

(declare-fun res!619740 () Bool)

(assert (=> b!918969 (=> (not res!619740) (not e!515868))))

(assert (=> b!918969 (= res!619740 (and (= (size!26883 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26882 _keys!1487) (size!26883 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918970 () Bool)

(declare-fun res!619736 () Bool)

(assert (=> b!918970 (=> (not res!619736) (not e!515866))))

(assert (=> b!918970 (= res!619736 (validKeyInArray!0 k0!1099))))

(assert (= (and start!78792 res!619742) b!918969))

(assert (= (and b!918969 res!619740) b!918964))

(assert (= (and b!918964 res!619741) b!918960))

(assert (= (and b!918960 res!619733) b!918966))

(assert (= (and b!918966 res!619739) b!918962))

(assert (= (and b!918962 res!619735) b!918968))

(assert (= (and b!918968 res!619737) b!918959))

(assert (= (and b!918959 res!619734) b!918970))

(assert (= (and b!918970 res!619736) b!918958))

(assert (= (and b!918958 res!619738) b!918967))

(assert (= (and b!918963 condMapEmpty!30984) mapIsEmpty!30984))

(assert (= (and b!918963 (not condMapEmpty!30984)) mapNonEmpty!30984))

(get-info :version)

(assert (= (and mapNonEmpty!30984 ((_ is ValueCellFull!9261) mapValue!30984)) b!918965))

(assert (= (and b!918963 ((_ is ValueCellFull!9261) mapDefault!30984)) b!918961))

(assert (= start!78792 b!918963))

(declare-fun b_lambda!13509 () Bool)

(assert (=> (not b_lambda!13509) (not b!918967)))

(declare-fun t!26364 () Bool)

(declare-fun tb!5565 () Bool)

(assert (=> (and start!78792 (= defaultEntry!1235 defaultEntry!1235) t!26364) tb!5565))

(declare-fun result!10945 () Bool)

(assert (=> tb!5565 (= result!10945 tp_is_empty!19485)))

(assert (=> b!918967 t!26364))

(declare-fun b_and!27711 () Bool)

(assert (= b_and!27709 (and (=> t!26364 result!10945) b_and!27711)))

(declare-fun m!852787 () Bool)

(assert (=> mapNonEmpty!30984 m!852787))

(declare-fun m!852789 () Bool)

(assert (=> b!918962 m!852789))

(declare-fun m!852791 () Bool)

(assert (=> b!918962 m!852791))

(declare-fun m!852793 () Bool)

(assert (=> b!918960 m!852793))

(declare-fun m!852795 () Bool)

(assert (=> b!918970 m!852795))

(declare-fun m!852797 () Bool)

(assert (=> b!918967 m!852797))

(declare-fun m!852799 () Bool)

(assert (=> b!918967 m!852799))

(declare-fun m!852801 () Bool)

(assert (=> b!918967 m!852801))

(assert (=> b!918967 m!852799))

(assert (=> b!918967 m!852801))

(declare-fun m!852803 () Bool)

(assert (=> b!918967 m!852803))

(declare-fun m!852805 () Bool)

(assert (=> b!918967 m!852805))

(declare-fun m!852807 () Bool)

(assert (=> b!918967 m!852807))

(declare-fun m!852809 () Bool)

(assert (=> b!918967 m!852809))

(declare-fun m!852811 () Bool)

(assert (=> b!918967 m!852811))

(declare-fun m!852813 () Bool)

(assert (=> b!918967 m!852813))

(assert (=> b!918967 m!852797))

(declare-fun m!852815 () Bool)

(assert (=> b!918967 m!852815))

(assert (=> b!918967 m!852811))

(declare-fun m!852817 () Bool)

(assert (=> b!918967 m!852817))

(declare-fun m!852819 () Bool)

(assert (=> b!918967 m!852819))

(declare-fun m!852821 () Bool)

(assert (=> b!918958 m!852821))

(declare-fun m!852823 () Bool)

(assert (=> b!918958 m!852823))

(declare-fun m!852825 () Bool)

(assert (=> b!918964 m!852825))

(declare-fun m!852827 () Bool)

(assert (=> start!78792 m!852827))

(declare-fun m!852829 () Bool)

(assert (=> start!78792 m!852829))

(declare-fun m!852831 () Bool)

(assert (=> start!78792 m!852831))

(declare-fun m!852833 () Bool)

(assert (=> b!918968 m!852833))

(check-sat (not start!78792) (not b!918958) (not b_lambda!13509) tp_is_empty!19485 (not b!918962) (not b!918970) (not b!918964) (not b!918967) b_and!27711 (not mapNonEmpty!30984) (not b!918960) (not b!918968) (not b_next!16977))
(check-sat b_and!27711 (not b_next!16977))
