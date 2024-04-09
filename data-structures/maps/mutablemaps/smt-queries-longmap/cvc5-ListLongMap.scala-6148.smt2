; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79024 () Bool)

(assert start!79024)

(declare-fun b_free!17209 () Bool)

(declare-fun b_next!17209 () Bool)

(assert (=> start!79024 (= b_free!17209 (not b_next!17209))))

(declare-fun tp!60069 () Bool)

(declare-fun b_and!28173 () Bool)

(assert (=> start!79024 (= tp!60069 b_and!28173)))

(declare-fun b!924759 () Bool)

(declare-fun e!519015 () Bool)

(assert (=> b!924759 (= e!519015 false)))

(declare-datatypes ((V!31255 0))(
  ( (V!31256 (val!9909 Int)) )
))
(declare-fun lt!415998 () V!31255)

(declare-datatypes ((tuple2!13022 0))(
  ( (tuple2!13023 (_1!6521 (_ BitVec 64)) (_2!6521 V!31255)) )
))
(declare-datatypes ((List!18858 0))(
  ( (Nil!18855) (Cons!18854 (h!20000 tuple2!13022) (t!26805 List!18858)) )
))
(declare-datatypes ((ListLongMap!11733 0))(
  ( (ListLongMap!11734 (toList!5882 List!18858)) )
))
(declare-fun lt!416007 () ListLongMap!11733)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!683 (ListLongMap!11733 (_ BitVec 64)) V!31255)

(assert (=> b!924759 (= lt!415998 (apply!683 lt!416007 k!1099))))

(declare-fun b!924760 () Bool)

(declare-datatypes ((Unit!31239 0))(
  ( (Unit!31240) )
))
(declare-fun e!519021 () Unit!31239)

(declare-fun Unit!31241 () Unit!31239)

(assert (=> b!924760 (= e!519021 Unit!31241)))

(declare-fun b!924761 () Bool)

(declare-fun e!519014 () Bool)

(declare-fun e!519022 () Bool)

(assert (=> b!924761 (= e!519014 e!519022)))

(declare-fun res!623372 () Bool)

(assert (=> b!924761 (=> (not res!623372) (not e!519022))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!415995 () V!31255)

(declare-fun v!791 () V!31255)

(assert (=> b!924761 (= res!623372 (and (= lt!415995 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!415999 () ListLongMap!11733)

(assert (=> b!924761 (= lt!415995 (apply!683 lt!415999 k!1099))))

(declare-fun b!924762 () Bool)

(declare-fun e!519023 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!924762 (= e!519023 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924763 () Bool)

(declare-fun res!623364 () Bool)

(declare-fun e!519013 () Bool)

(assert (=> b!924763 (=> (not res!623364) (not e!519013))))

(declare-datatypes ((array!55418 0))(
  ( (array!55419 (arr!26650 (Array (_ BitVec 32) (_ BitVec 64))) (size!27110 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55418)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9377 0))(
  ( (ValueCellFull!9377 (v!12427 V!31255)) (EmptyCell!9377) )
))
(declare-datatypes ((array!55420 0))(
  ( (array!55421 (arr!26651 (Array (_ BitVec 32) ValueCell!9377)) (size!27111 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55420)

(assert (=> b!924763 (= res!623364 (and (= (size!27111 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27110 _keys!1487) (size!27111 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924764 () Bool)

(declare-fun e!519020 () Unit!31239)

(assert (=> b!924764 (= e!519021 e!519020)))

(declare-fun lt!416003 () (_ BitVec 64))

(assert (=> b!924764 (= lt!416003 (select (arr!26650 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96419 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924764 (= c!96419 (validKeyInArray!0 lt!416003))))

(declare-fun b!924765 () Bool)

(declare-fun e!519017 () Bool)

(assert (=> b!924765 (= e!519022 e!519017)))

(declare-fun res!623368 () Bool)

(assert (=> b!924765 (=> (not res!623368) (not e!519017))))

(assert (=> b!924765 (= res!623368 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27110 _keys!1487)))))

(declare-fun lt!416000 () Unit!31239)

(assert (=> b!924765 (= lt!416000 e!519021)))

(declare-fun c!96418 () Bool)

(assert (=> b!924765 (= c!96418 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31332 () Bool)

(declare-fun mapRes!31332 () Bool)

(declare-fun tp!60068 () Bool)

(declare-fun e!519016 () Bool)

(assert (=> mapNonEmpty!31332 (= mapRes!31332 (and tp!60068 e!519016))))

(declare-fun mapValue!31332 () ValueCell!9377)

(declare-fun mapKey!31332 () (_ BitVec 32))

(declare-fun mapRest!31332 () (Array (_ BitVec 32) ValueCell!9377))

(assert (=> mapNonEmpty!31332 (= (arr!26651 _values!1231) (store mapRest!31332 mapKey!31332 mapValue!31332))))

(declare-fun res!623367 () Bool)

(assert (=> start!79024 (=> (not res!623367) (not e!519013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79024 (= res!623367 (validMask!0 mask!1881))))

(assert (=> start!79024 e!519013))

(assert (=> start!79024 true))

(declare-fun tp_is_empty!19717 () Bool)

(assert (=> start!79024 tp_is_empty!19717))

(declare-fun e!519018 () Bool)

(declare-fun array_inv!20752 (array!55420) Bool)

(assert (=> start!79024 (and (array_inv!20752 _values!1231) e!519018)))

(assert (=> start!79024 tp!60069))

(declare-fun array_inv!20753 (array!55418) Bool)

(assert (=> start!79024 (array_inv!20753 _keys!1487)))

(declare-fun b!924766 () Bool)

(assert (=> b!924766 (= e!519017 e!519015)))

(declare-fun res!623365 () Bool)

(assert (=> b!924766 (=> (not res!623365) (not e!519015))))

(declare-fun contains!4906 (ListLongMap!11733 (_ BitVec 64)) Bool)

(assert (=> b!924766 (= res!623365 (contains!4906 lt!416007 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31255)

(declare-fun minValue!1173 () V!31255)

(declare-fun getCurrentListMap!3100 (array!55418 array!55420 (_ BitVec 32) (_ BitVec 32) V!31255 V!31255 (_ BitVec 32) Int) ListLongMap!11733)

(assert (=> b!924766 (= lt!416007 (getCurrentListMap!3100 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924767 () Bool)

(declare-fun res!623366 () Bool)

(assert (=> b!924767 (=> (not res!623366) (not e!519013))))

(assert (=> b!924767 (= res!623366 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27110 _keys!1487))))))

(declare-fun b!924768 () Bool)

(assert (=> b!924768 (= e!519016 tp_is_empty!19717)))

(declare-fun b!924769 () Bool)

(declare-fun res!623371 () Bool)

(assert (=> b!924769 (=> (not res!623371) (not e!519013))))

(declare-datatypes ((List!18859 0))(
  ( (Nil!18856) (Cons!18855 (h!20001 (_ BitVec 64)) (t!26806 List!18859)) )
))
(declare-fun arrayNoDuplicates!0 (array!55418 (_ BitVec 32) List!18859) Bool)

(assert (=> b!924769 (= res!623371 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18856))))

(declare-fun mapIsEmpty!31332 () Bool)

(assert (=> mapIsEmpty!31332 mapRes!31332))

(declare-fun b!924770 () Bool)

(declare-fun e!519024 () Bool)

(assert (=> b!924770 (= e!519018 (and e!519024 mapRes!31332))))

(declare-fun condMapEmpty!31332 () Bool)

(declare-fun mapDefault!31332 () ValueCell!9377)

