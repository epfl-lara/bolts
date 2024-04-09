; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78860 () Bool)

(assert start!78860)

(declare-fun b_free!17045 () Bool)

(declare-fun b_next!17045 () Bool)

(assert (=> start!78860 (= b_free!17045 (not b_next!17045))))

(declare-fun tp!59577 () Bool)

(declare-fun b_and!27845 () Bool)

(assert (=> start!78860 (= tp!59577 b_and!27845)))

(declare-fun b!920437 () Bool)

(declare-fun e!516618 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!920437 (= e!516618 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!920438 () Bool)

(declare-fun res!620814 () Bool)

(declare-fun e!516617 () Bool)

(assert (=> b!920438 (=> res!620814 e!516617)))

(declare-datatypes ((List!18712 0))(
  ( (Nil!18709) (Cons!18708 (h!19854 (_ BitVec 64)) (t!26495 List!18712)) )
))
(declare-fun contains!4820 (List!18712 (_ BitVec 64)) Bool)

(assert (=> b!920438 (= res!620814 (contains!4820 Nil!18709 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920439 () Bool)

(declare-fun res!620804 () Bool)

(assert (=> b!920439 (=> res!620804 e!516617)))

(declare-fun noDuplicate!1338 (List!18712) Bool)

(assert (=> b!920439 (= res!620804 (not (noDuplicate!1338 Nil!18709)))))

(declare-fun b!920440 () Bool)

(declare-fun res!620809 () Bool)

(declare-fun e!516619 () Bool)

(assert (=> b!920440 (=> (not res!620809) (not e!516619))))

(declare-datatypes ((V!31035 0))(
  ( (V!31036 (val!9827 Int)) )
))
(declare-fun v!791 () V!31035)

(declare-datatypes ((tuple2!12870 0))(
  ( (tuple2!12871 (_1!6445 (_ BitVec 64)) (_2!6445 V!31035)) )
))
(declare-datatypes ((List!18713 0))(
  ( (Nil!18710) (Cons!18709 (h!19855 tuple2!12870) (t!26496 List!18713)) )
))
(declare-datatypes ((ListLongMap!11581 0))(
  ( (ListLongMap!11582 (toList!5806 List!18713)) )
))
(declare-fun lt!413227 () ListLongMap!11581)

(declare-fun apply!617 (ListLongMap!11581 (_ BitVec 64)) V!31035)

(assert (=> b!920440 (= res!620809 (= (apply!617 lt!413227 k!1099) v!791))))

(declare-fun b!920441 () Bool)

(declare-fun res!620811 () Bool)

(declare-fun e!516620 () Bool)

(assert (=> b!920441 (=> (not res!620811) (not e!516620))))

(declare-datatypes ((array!55098 0))(
  ( (array!55099 (arr!26490 (Array (_ BitVec 32) (_ BitVec 64))) (size!26950 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55098)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55098 (_ BitVec 32)) Bool)

(assert (=> b!920441 (= res!620811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920442 () Bool)

(assert (=> b!920442 (= e!516617 true)))

(declare-fun lt!413235 () Bool)

(assert (=> b!920442 (= lt!413235 (contains!4820 Nil!18709 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920443 () Bool)

(declare-fun res!620805 () Bool)

(assert (=> b!920443 (=> (not res!620805) (not e!516620))))

(declare-datatypes ((ValueCell!9295 0))(
  ( (ValueCellFull!9295 (v!12345 V!31035)) (EmptyCell!9295) )
))
(declare-datatypes ((array!55100 0))(
  ( (array!55101 (arr!26491 (Array (_ BitVec 32) ValueCell!9295)) (size!26951 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55100)

(assert (=> b!920443 (= res!620805 (and (= (size!26951 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26950 _keys!1487) (size!26951 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!620808 () Bool)

(assert (=> start!78860 (=> (not res!620808) (not e!516620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78860 (= res!620808 (validMask!0 mask!1881))))

(assert (=> start!78860 e!516620))

(assert (=> start!78860 true))

(declare-fun tp_is_empty!19553 () Bool)

(assert (=> start!78860 tp_is_empty!19553))

(declare-fun e!516621 () Bool)

(declare-fun array_inv!20630 (array!55100) Bool)

(assert (=> start!78860 (and (array_inv!20630 _values!1231) e!516621)))

(assert (=> start!78860 tp!59577))

(declare-fun array_inv!20631 (array!55098) Bool)

(assert (=> start!78860 (array_inv!20631 _keys!1487)))

(declare-fun b!920444 () Bool)

(declare-fun res!620812 () Bool)

(assert (=> b!920444 (=> (not res!620812) (not e!516619))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920444 (= res!620812 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920445 () Bool)

(declare-fun e!516615 () Bool)

(assert (=> b!920445 (= e!516615 (not e!516617))))

(declare-fun res!620806 () Bool)

(assert (=> b!920445 (=> res!620806 e!516617)))

(assert (=> b!920445 (= res!620806 (or (bvsge (size!26950 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26950 _keys!1487))))))

(assert (=> b!920445 e!516618))

(declare-fun c!95987 () Bool)

(assert (=> b!920445 (= c!95987 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31057 0))(
  ( (Unit!31058) )
))
(declare-fun lt!413233 () Unit!31057)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31035)

(declare-fun minValue!1173 () V!31035)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!171 (array!55098 array!55100 (_ BitVec 32) (_ BitVec 32) V!31035 V!31035 (_ BitVec 64) (_ BitVec 32) Int) Unit!31057)

(assert (=> b!920445 (= lt!413233 (lemmaListMapContainsThenArrayContainsFrom!171 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55098 (_ BitVec 32) List!18712) Bool)

(assert (=> b!920445 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18709)))

(declare-fun lt!413230 () Unit!31057)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55098 (_ BitVec 32) (_ BitVec 32)) Unit!31057)

(assert (=> b!920445 (= lt!413230 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413228 () tuple2!12870)

(declare-fun contains!4821 (ListLongMap!11581 (_ BitVec 64)) Bool)

(declare-fun +!2625 (ListLongMap!11581 tuple2!12870) ListLongMap!11581)

(assert (=> b!920445 (contains!4821 (+!2625 lt!413227 lt!413228) k!1099)))

(declare-fun lt!413234 () Unit!31057)

(declare-fun lt!413232 () V!31035)

(declare-fun lt!413231 () (_ BitVec 64))

(declare-fun addStillContains!387 (ListLongMap!11581 (_ BitVec 64) V!31035 (_ BitVec 64)) Unit!31057)

(assert (=> b!920445 (= lt!413234 (addStillContains!387 lt!413227 lt!413231 lt!413232 k!1099))))

(declare-fun getCurrentListMap!3028 (array!55098 array!55100 (_ BitVec 32) (_ BitVec 32) V!31035 V!31035 (_ BitVec 32) Int) ListLongMap!11581)

(assert (=> b!920445 (= (getCurrentListMap!3028 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2625 (getCurrentListMap!3028 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413228))))

(assert (=> b!920445 (= lt!413228 (tuple2!12871 lt!413231 lt!413232))))

(declare-fun get!13918 (ValueCell!9295 V!31035) V!31035)

(declare-fun dynLambda!1464 (Int (_ BitVec 64)) V!31035)

(assert (=> b!920445 (= lt!413232 (get!13918 (select (arr!26491 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1464 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413229 () Unit!31057)

(declare-fun lemmaListMapRecursiveValidKeyArray!60 (array!55098 array!55100 (_ BitVec 32) (_ BitVec 32) V!31035 V!31035 (_ BitVec 32) Int) Unit!31057)

(assert (=> b!920445 (= lt!413229 (lemmaListMapRecursiveValidKeyArray!60 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920446 () Bool)

(declare-fun e!516614 () Bool)

(assert (=> b!920446 (= e!516614 tp_is_empty!19553)))

(declare-fun b!920447 () Bool)

(declare-fun res!620816 () Bool)

(assert (=> b!920447 (=> (not res!620816) (not e!516620))))

(assert (=> b!920447 (= res!620816 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18709))))

(declare-fun mapIsEmpty!31086 () Bool)

(declare-fun mapRes!31086 () Bool)

(assert (=> mapIsEmpty!31086 mapRes!31086))

(declare-fun b!920448 () Bool)

(assert (=> b!920448 (= e!516619 e!516615)))

(declare-fun res!620813 () Bool)

(assert (=> b!920448 (=> (not res!620813) (not e!516615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920448 (= res!620813 (validKeyInArray!0 lt!413231))))

(assert (=> b!920448 (= lt!413231 (select (arr!26490 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920449 () Bool)

(declare-fun res!620810 () Bool)

(assert (=> b!920449 (=> (not res!620810) (not e!516619))))

(assert (=> b!920449 (= res!620810 (validKeyInArray!0 k!1099))))

(declare-fun b!920450 () Bool)

(declare-fun arrayContainsKey!0 (array!55098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920450 (= e!516618 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapNonEmpty!31086 () Bool)

(declare-fun tp!59576 () Bool)

(declare-fun e!516616 () Bool)

(assert (=> mapNonEmpty!31086 (= mapRes!31086 (and tp!59576 e!516616))))

(declare-fun mapRest!31086 () (Array (_ BitVec 32) ValueCell!9295))

(declare-fun mapKey!31086 () (_ BitVec 32))

(declare-fun mapValue!31086 () ValueCell!9295)

(assert (=> mapNonEmpty!31086 (= (arr!26491 _values!1231) (store mapRest!31086 mapKey!31086 mapValue!31086))))

(declare-fun b!920451 () Bool)

(assert (=> b!920451 (= e!516620 e!516619)))

(declare-fun res!620815 () Bool)

(assert (=> b!920451 (=> (not res!620815) (not e!516619))))

(assert (=> b!920451 (= res!620815 (contains!4821 lt!413227 k!1099))))

(assert (=> b!920451 (= lt!413227 (getCurrentListMap!3028 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920452 () Bool)

(assert (=> b!920452 (= e!516616 tp_is_empty!19553)))

(declare-fun b!920453 () Bool)

(assert (=> b!920453 (= e!516621 (and e!516614 mapRes!31086))))

(declare-fun condMapEmpty!31086 () Bool)

(declare-fun mapDefault!31086 () ValueCell!9295)

