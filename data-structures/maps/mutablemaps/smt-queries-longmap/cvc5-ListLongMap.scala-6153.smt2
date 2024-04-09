; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79054 () Bool)

(assert start!79054)

(declare-fun b_free!17239 () Bool)

(declare-fun b_next!17239 () Bool)

(assert (=> start!79054 (= b_free!17239 (not b_next!17239))))

(declare-fun tp!60158 () Bool)

(declare-fun b_and!28233 () Bool)

(assert (=> start!79054 (= tp!60158 b_and!28233)))

(declare-fun b!925675 () Bool)

(declare-fun res!623852 () Bool)

(declare-fun e!519595 () Bool)

(assert (=> b!925675 (=> (not res!623852) (not e!519595))))

(declare-datatypes ((array!55474 0))(
  ( (array!55475 (arr!26678 (Array (_ BitVec 32) (_ BitVec 64))) (size!27138 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55474)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31295 0))(
  ( (V!31296 (val!9924 Int)) )
))
(declare-datatypes ((ValueCell!9392 0))(
  ( (ValueCellFull!9392 (v!12442 V!31295)) (EmptyCell!9392) )
))
(declare-datatypes ((array!55476 0))(
  ( (array!55477 (arr!26679 (Array (_ BitVec 32) ValueCell!9392)) (size!27139 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55476)

(assert (=> b!925675 (= res!623852 (and (= (size!27139 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27138 _keys!1487) (size!27139 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925676 () Bool)

(declare-fun res!623845 () Bool)

(assert (=> b!925676 (=> (not res!623845) (not e!519595))))

(declare-datatypes ((List!18880 0))(
  ( (Nil!18877) (Cons!18876 (h!20022 (_ BitVec 64)) (t!26857 List!18880)) )
))
(declare-fun arrayNoDuplicates!0 (array!55474 (_ BitVec 32) List!18880) Bool)

(assert (=> b!925676 (= res!623845 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18877))))

(declare-fun b!925677 () Bool)

(declare-datatypes ((Unit!31287 0))(
  ( (Unit!31288) )
))
(declare-fun e!519591 () Unit!31287)

(declare-fun Unit!31289 () Unit!31287)

(assert (=> b!925677 (= e!519591 Unit!31289)))

(declare-fun b!925678 () Bool)

(declare-fun e!519600 () Unit!31287)

(assert (=> b!925678 (= e!519600 e!519591)))

(declare-fun lt!416712 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!925678 (= lt!416712 (select (arr!26678 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96553 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925678 (= c!96553 (validKeyInArray!0 lt!416712))))

(declare-fun b!925680 () Bool)

(declare-fun e!519603 () Bool)

(declare-fun e!519602 () Bool)

(assert (=> b!925680 (= e!519603 e!519602)))

(declare-fun res!623850 () Bool)

(assert (=> b!925680 (=> (not res!623850) (not e!519602))))

(declare-fun v!791 () V!31295)

(declare-fun lt!416718 () V!31295)

(assert (=> b!925680 (= res!623850 (and (= lt!416718 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13046 0))(
  ( (tuple2!13047 (_1!6533 (_ BitVec 64)) (_2!6533 V!31295)) )
))
(declare-datatypes ((List!18881 0))(
  ( (Nil!18878) (Cons!18877 (h!20023 tuple2!13046) (t!26858 List!18881)) )
))
(declare-datatypes ((ListLongMap!11757 0))(
  ( (ListLongMap!11758 (toList!5894 List!18881)) )
))
(declare-fun lt!416720 () ListLongMap!11757)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!694 (ListLongMap!11757 (_ BitVec 64)) V!31295)

(assert (=> b!925680 (= lt!416718 (apply!694 lt!416720 k!1099))))

(declare-fun b!925681 () Bool)

(declare-fun e!519598 () Bool)

(declare-fun tp_is_empty!19747 () Bool)

(assert (=> b!925681 (= e!519598 tp_is_empty!19747)))

(declare-fun b!925682 () Bool)

(declare-fun e!519599 () Bool)

(assert (=> b!925682 (= e!519599 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!31377 () Bool)

(declare-fun mapRes!31377 () Bool)

(assert (=> mapIsEmpty!31377 mapRes!31377))

(declare-fun b!925683 () Bool)

(declare-fun res!623846 () Bool)

(declare-fun e!519601 () Bool)

(assert (=> b!925683 (=> (not res!623846) (not e!519601))))

(declare-fun lt!416715 () ListLongMap!11757)

(assert (=> b!925683 (= res!623846 (= (apply!694 lt!416715 k!1099) v!791))))

(declare-fun b!925684 () Bool)

(assert (=> b!925684 (= e!519601 (not true))))

(declare-fun e!519594 () Bool)

(assert (=> b!925684 e!519594))

(declare-fun res!623854 () Bool)

(assert (=> b!925684 (=> (not res!623854) (not e!519594))))

(declare-fun lt!416714 () ListLongMap!11757)

(declare-fun contains!4917 (ListLongMap!11757 (_ BitVec 64)) Bool)

(assert (=> b!925684 (= res!623854 (contains!4917 lt!416714 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31295)

(declare-fun minValue!1173 () V!31295)

(declare-fun getCurrentListMap!3111 (array!55474 array!55476 (_ BitVec 32) (_ BitVec 32) V!31295 V!31295 (_ BitVec 32) Int) ListLongMap!11757)

(assert (=> b!925684 (= lt!416714 (getCurrentListMap!3111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!416707 () Unit!31287)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!77 (array!55474 array!55476 (_ BitVec 32) (_ BitVec 32) V!31295 V!31295 (_ BitVec 64) V!31295 (_ BitVec 32) Int) Unit!31287)

(assert (=> b!925684 (= lt!416707 (lemmaListMapApplyFromThenApplyFromZero!77 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925685 () Bool)

(assert (=> b!925685 (= e!519594 (= (apply!694 lt!416714 k!1099) v!791))))

(declare-fun b!925686 () Bool)

(declare-fun e!519597 () Bool)

(assert (=> b!925686 (= e!519602 e!519597)))

(declare-fun res!623849 () Bool)

(assert (=> b!925686 (=> (not res!623849) (not e!519597))))

(assert (=> b!925686 (= res!623849 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27138 _keys!1487)))))

(declare-fun lt!416716 () Unit!31287)

(assert (=> b!925686 (= lt!416716 e!519600)))

(declare-fun c!96552 () Bool)

(assert (=> b!925686 (= c!96552 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31377 () Bool)

(declare-fun tp!60159 () Bool)

(assert (=> mapNonEmpty!31377 (= mapRes!31377 (and tp!60159 e!519598))))

(declare-fun mapKey!31377 () (_ BitVec 32))

(declare-fun mapRest!31377 () (Array (_ BitVec 32) ValueCell!9392))

(declare-fun mapValue!31377 () ValueCell!9392)

(assert (=> mapNonEmpty!31377 (= (arr!26679 _values!1231) (store mapRest!31377 mapKey!31377 mapValue!31377))))

(declare-fun b!925687 () Bool)

(declare-fun lt!416719 () ListLongMap!11757)

(assert (=> b!925687 (= (apply!694 lt!416719 k!1099) lt!416718)))

(declare-fun lt!416708 () V!31295)

(declare-fun lt!416717 () Unit!31287)

(declare-fun addApplyDifferent!381 (ListLongMap!11757 (_ BitVec 64) V!31295 (_ BitVec 64)) Unit!31287)

(assert (=> b!925687 (= lt!416717 (addApplyDifferent!381 lt!416720 lt!416712 lt!416708 k!1099))))

(assert (=> b!925687 (not (= lt!416712 k!1099))))

(declare-fun lt!416711 () Unit!31287)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55474 (_ BitVec 64) (_ BitVec 32) List!18880) Unit!31287)

(assert (=> b!925687 (= lt!416711 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18877))))

(assert (=> b!925687 e!519599))

(declare-fun c!96554 () Bool)

(assert (=> b!925687 (= c!96554 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416710 () Unit!31287)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!241 (array!55474 array!55476 (_ BitVec 32) (_ BitVec 32) V!31295 V!31295 (_ BitVec 64) (_ BitVec 32) Int) Unit!31287)

(assert (=> b!925687 (= lt!416710 (lemmaListMapContainsThenArrayContainsFrom!241 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!925687 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18877)))

(declare-fun lt!416713 () Unit!31287)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55474 (_ BitVec 32) (_ BitVec 32)) Unit!31287)

(assert (=> b!925687 (= lt!416713 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!925687 (contains!4917 lt!416719 k!1099)))

(declare-fun lt!416709 () tuple2!13046)

(declare-fun +!2695 (ListLongMap!11757 tuple2!13046) ListLongMap!11757)

(assert (=> b!925687 (= lt!416719 (+!2695 lt!416720 lt!416709))))

(declare-fun lt!416721 () Unit!31287)

(declare-fun addStillContains!457 (ListLongMap!11757 (_ BitVec 64) V!31295 (_ BitVec 64)) Unit!31287)

(assert (=> b!925687 (= lt!416721 (addStillContains!457 lt!416720 lt!416712 lt!416708 k!1099))))

(assert (=> b!925687 (= (getCurrentListMap!3111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2695 (getCurrentListMap!3111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416709))))

(assert (=> b!925687 (= lt!416709 (tuple2!13047 lt!416712 lt!416708))))

(declare-fun get!14054 (ValueCell!9392 V!31295) V!31295)

(declare-fun dynLambda!1534 (Int (_ BitVec 64)) V!31295)

(assert (=> b!925687 (= lt!416708 (get!14054 (select (arr!26679 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1534 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416706 () Unit!31287)

(declare-fun lemmaListMapRecursiveValidKeyArray!130 (array!55474 array!55476 (_ BitVec 32) (_ BitVec 32) V!31295 V!31295 (_ BitVec 32) Int) Unit!31287)

(assert (=> b!925687 (= lt!416706 (lemmaListMapRecursiveValidKeyArray!130 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!925687 (= e!519591 lt!416717)))

(declare-fun b!925688 () Bool)

(assert (=> b!925688 (= e!519595 e!519603)))

(declare-fun res!623851 () Bool)

(assert (=> b!925688 (=> (not res!623851) (not e!519603))))

(assert (=> b!925688 (= res!623851 (contains!4917 lt!416720 k!1099))))

(assert (=> b!925688 (= lt!416720 (getCurrentListMap!3111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925679 () Bool)

(declare-fun Unit!31290 () Unit!31287)

(assert (=> b!925679 (= e!519600 Unit!31290)))

(declare-fun res!623848 () Bool)

(assert (=> start!79054 (=> (not res!623848) (not e!519595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79054 (= res!623848 (validMask!0 mask!1881))))

(assert (=> start!79054 e!519595))

(assert (=> start!79054 true))

(assert (=> start!79054 tp_is_empty!19747))

(declare-fun e!519596 () Bool)

(declare-fun array_inv!20770 (array!55476) Bool)

(assert (=> start!79054 (and (array_inv!20770 _values!1231) e!519596)))

(assert (=> start!79054 tp!60158))

(declare-fun array_inv!20771 (array!55474) Bool)

(assert (=> start!79054 (array_inv!20771 _keys!1487)))

(declare-fun b!925689 () Bool)

(assert (=> b!925689 (= e!519597 e!519601)))

(declare-fun res!623847 () Bool)

(assert (=> b!925689 (=> (not res!623847) (not e!519601))))

(assert (=> b!925689 (= res!623847 (contains!4917 lt!416715 k!1099))))

(assert (=> b!925689 (= lt!416715 (getCurrentListMap!3111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925690 () Bool)

(declare-fun e!519592 () Bool)

(assert (=> b!925690 (= e!519596 (and e!519592 mapRes!31377))))

(declare-fun condMapEmpty!31377 () Bool)

(declare-fun mapDefault!31377 () ValueCell!9392)

