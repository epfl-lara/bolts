; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78868 () Bool)

(assert start!78868)

(declare-fun b_free!17053 () Bool)

(declare-fun b_next!17053 () Bool)

(assert (=> start!78868 (= b_free!17053 (not b_next!17053))))

(declare-fun tp!59601 () Bool)

(declare-fun b_and!27861 () Bool)

(assert (=> start!78868 (= tp!59601 b_and!27861)))

(declare-fun b!920661 () Bool)

(declare-fun e!516727 () Bool)

(declare-fun tp_is_empty!19561 () Bool)

(assert (=> b!920661 (= e!516727 tp_is_empty!19561)))

(declare-fun b!920662 () Bool)

(declare-fun res!620965 () Bool)

(declare-fun e!516721 () Bool)

(assert (=> b!920662 (=> (not res!620965) (not e!516721))))

(declare-datatypes ((array!55114 0))(
  ( (array!55115 (arr!26498 (Array (_ BitVec 32) (_ BitVec 64))) (size!26958 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55114)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55114 (_ BitVec 32)) Bool)

(assert (=> b!920662 (= res!620965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920663 () Bool)

(declare-fun e!516722 () Bool)

(assert (=> b!920663 (= e!516722 true)))

(declare-fun lt!413335 () Bool)

(declare-datatypes ((List!18720 0))(
  ( (Nil!18717) (Cons!18716 (h!19862 (_ BitVec 64)) (t!26511 List!18720)) )
))
(declare-fun contains!4828 (List!18720 (_ BitVec 64)) Bool)

(assert (=> b!920663 (= lt!413335 (contains!4828 Nil!18717 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920664 () Bool)

(declare-fun e!516729 () Bool)

(assert (=> b!920664 (= e!516721 e!516729)))

(declare-fun res!620964 () Bool)

(assert (=> b!920664 (=> (not res!620964) (not e!516729))))

(declare-datatypes ((V!31047 0))(
  ( (V!31048 (val!9831 Int)) )
))
(declare-datatypes ((tuple2!12878 0))(
  ( (tuple2!12879 (_1!6449 (_ BitVec 64)) (_2!6449 V!31047)) )
))
(declare-datatypes ((List!18721 0))(
  ( (Nil!18718) (Cons!18717 (h!19863 tuple2!12878) (t!26512 List!18721)) )
))
(declare-datatypes ((ListLongMap!11589 0))(
  ( (ListLongMap!11590 (toList!5810 List!18721)) )
))
(declare-fun lt!413337 () ListLongMap!11589)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4829 (ListLongMap!11589 (_ BitVec 64)) Bool)

(assert (=> b!920664 (= res!620964 (contains!4829 lt!413337 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9299 0))(
  ( (ValueCellFull!9299 (v!12349 V!31047)) (EmptyCell!9299) )
))
(declare-datatypes ((array!55116 0))(
  ( (array!55117 (arr!26499 (Array (_ BitVec 32) ValueCell!9299)) (size!26959 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55116)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31047)

(declare-fun minValue!1173 () V!31047)

(declare-fun getCurrentListMap!3032 (array!55114 array!55116 (_ BitVec 32) (_ BitVec 32) V!31047 V!31047 (_ BitVec 32) Int) ListLongMap!11589)

(assert (=> b!920664 (= lt!413337 (getCurrentListMap!3032 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920665 () Bool)

(declare-fun res!620967 () Bool)

(assert (=> b!920665 (=> (not res!620967) (not e!516721))))

(assert (=> b!920665 (= res!620967 (and (= (size!26959 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26958 _keys!1487) (size!26959 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920666 () Bool)

(declare-fun res!620966 () Bool)

(assert (=> b!920666 (=> (not res!620966) (not e!516729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920666 (= res!620966 (validKeyInArray!0 k!1099))))

(declare-fun b!920667 () Bool)

(declare-fun e!516726 () Bool)

(assert (=> b!920667 (= e!516726 (not e!516722))))

(declare-fun res!620962 () Bool)

(assert (=> b!920667 (=> res!620962 e!516722)))

(assert (=> b!920667 (= res!620962 (or (bvsge (size!26958 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26958 _keys!1487))))))

(declare-fun e!516724 () Bool)

(assert (=> b!920667 e!516724))

(declare-fun c!95999 () Bool)

(assert (=> b!920667 (= c!95999 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31063 0))(
  ( (Unit!31064) )
))
(declare-fun lt!413343 () Unit!31063)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!174 (array!55114 array!55116 (_ BitVec 32) (_ BitVec 32) V!31047 V!31047 (_ BitVec 64) (_ BitVec 32) Int) Unit!31063)

(assert (=> b!920667 (= lt!413343 (lemmaListMapContainsThenArrayContainsFrom!174 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55114 (_ BitVec 32) List!18720) Bool)

(assert (=> b!920667 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18717)))

(declare-fun lt!413341 () Unit!31063)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55114 (_ BitVec 32) (_ BitVec 32)) Unit!31063)

(assert (=> b!920667 (= lt!413341 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413340 () tuple2!12878)

(declare-fun +!2628 (ListLongMap!11589 tuple2!12878) ListLongMap!11589)

(assert (=> b!920667 (contains!4829 (+!2628 lt!413337 lt!413340) k!1099)))

(declare-fun lt!413336 () (_ BitVec 64))

(declare-fun lt!413339 () Unit!31063)

(declare-fun lt!413338 () V!31047)

(declare-fun addStillContains!390 (ListLongMap!11589 (_ BitVec 64) V!31047 (_ BitVec 64)) Unit!31063)

(assert (=> b!920667 (= lt!413339 (addStillContains!390 lt!413337 lt!413336 lt!413338 k!1099))))

(assert (=> b!920667 (= (getCurrentListMap!3032 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2628 (getCurrentListMap!3032 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413340))))

(assert (=> b!920667 (= lt!413340 (tuple2!12879 lt!413336 lt!413338))))

(declare-fun get!13925 (ValueCell!9299 V!31047) V!31047)

(declare-fun dynLambda!1467 (Int (_ BitVec 64)) V!31047)

(assert (=> b!920667 (= lt!413338 (get!13925 (select (arr!26499 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1467 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413342 () Unit!31063)

(declare-fun lemmaListMapRecursiveValidKeyArray!63 (array!55114 array!55116 (_ BitVec 32) (_ BitVec 32) V!31047 V!31047 (_ BitVec 32) Int) Unit!31063)

(assert (=> b!920667 (= lt!413342 (lemmaListMapRecursiveValidKeyArray!63 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920668 () Bool)

(declare-fun res!620969 () Bool)

(assert (=> b!920668 (=> (not res!620969) (not e!516721))))

(assert (=> b!920668 (= res!620969 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26958 _keys!1487))))))

(declare-fun res!620961 () Bool)

(assert (=> start!78868 (=> (not res!620961) (not e!516721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78868 (= res!620961 (validMask!0 mask!1881))))

(assert (=> start!78868 e!516721))

(assert (=> start!78868 true))

(assert (=> start!78868 tp_is_empty!19561))

(declare-fun e!516728 () Bool)

(declare-fun array_inv!20634 (array!55116) Bool)

(assert (=> start!78868 (and (array_inv!20634 _values!1231) e!516728)))

(assert (=> start!78868 tp!59601))

(declare-fun array_inv!20635 (array!55114) Bool)

(assert (=> start!78868 (array_inv!20635 _keys!1487)))

(declare-fun b!920669 () Bool)

(declare-fun res!620960 () Bool)

(assert (=> b!920669 (=> res!620960 e!516722)))

(assert (=> b!920669 (= res!620960 (contains!4828 Nil!18717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!31098 () Bool)

(declare-fun mapRes!31098 () Bool)

(assert (=> mapIsEmpty!31098 mapRes!31098))

(declare-fun b!920670 () Bool)

(declare-fun arrayContainsKey!0 (array!55114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920670 (= e!516724 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!920671 () Bool)

(declare-fun e!516723 () Bool)

(assert (=> b!920671 (= e!516723 tp_is_empty!19561)))

(declare-fun b!920672 () Bool)

(declare-fun res!620970 () Bool)

(assert (=> b!920672 (=> (not res!620970) (not e!516721))))

(assert (=> b!920672 (= res!620970 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18717))))

(declare-fun b!920673 () Bool)

(declare-fun res!620972 () Bool)

(assert (=> b!920673 (=> (not res!620972) (not e!516729))))

(assert (=> b!920673 (= res!620972 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920674 () Bool)

(assert (=> b!920674 (= e!516728 (and e!516723 mapRes!31098))))

(declare-fun condMapEmpty!31098 () Bool)

(declare-fun mapDefault!31098 () ValueCell!9299)

