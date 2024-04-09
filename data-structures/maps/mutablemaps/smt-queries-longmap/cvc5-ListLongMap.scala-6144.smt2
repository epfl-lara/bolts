; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79000 () Bool)

(assert start!79000)

(declare-fun b_free!17185 () Bool)

(declare-fun b_next!17185 () Bool)

(assert (=> start!79000 (= b_free!17185 (not b_next!17185))))

(declare-fun tp!59996 () Bool)

(declare-fun b_and!28125 () Bool)

(assert (=> start!79000 (= tp!59996 b_and!28125)))

(declare-fun b!924087 () Bool)

(declare-fun e!518581 () Bool)

(declare-fun tp_is_empty!19693 () Bool)

(assert (=> b!924087 (= e!518581 tp_is_empty!19693)))

(declare-fun b!924088 () Bool)

(declare-fun res!623042 () Bool)

(declare-fun e!518588 () Bool)

(assert (=> b!924088 (=> (not res!623042) (not e!518588))))

(declare-datatypes ((array!55370 0))(
  ( (array!55371 (arr!26626 (Array (_ BitVec 32) (_ BitVec 64))) (size!27086 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55370)

(declare-datatypes ((List!18836 0))(
  ( (Nil!18833) (Cons!18832 (h!19978 (_ BitVec 64)) (t!26759 List!18836)) )
))
(declare-fun arrayNoDuplicates!0 (array!55370 (_ BitVec 32) List!18836) Bool)

(assert (=> b!924088 (= res!623042 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18833))))

(declare-fun b!924089 () Bool)

(declare-fun e!518583 () Bool)

(assert (=> b!924089 (= e!518583 false)))

(declare-datatypes ((V!31223 0))(
  ( (V!31224 (val!9897 Int)) )
))
(declare-fun lt!415460 () V!31223)

(declare-datatypes ((tuple2!13000 0))(
  ( (tuple2!13001 (_1!6510 (_ BitVec 64)) (_2!6510 V!31223)) )
))
(declare-datatypes ((List!18837 0))(
  ( (Nil!18834) (Cons!18833 (h!19979 tuple2!13000) (t!26760 List!18837)) )
))
(declare-datatypes ((ListLongMap!11711 0))(
  ( (ListLongMap!11712 (toList!5871 List!18837)) )
))
(declare-fun lt!415464 () ListLongMap!11711)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!674 (ListLongMap!11711 (_ BitVec 64)) V!31223)

(assert (=> b!924089 (= lt!415460 (apply!674 lt!415464 k!1099))))

(declare-fun b!924090 () Bool)

(declare-fun e!518589 () Bool)

(declare-fun e!518584 () Bool)

(assert (=> b!924090 (= e!518589 e!518584)))

(declare-fun res!623046 () Bool)

(assert (=> b!924090 (=> (not res!623046) (not e!518584))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!924090 (= res!623046 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27086 _keys!1487)))))

(declare-datatypes ((Unit!31202 0))(
  ( (Unit!31203) )
))
(declare-fun lt!415454 () Unit!31202)

(declare-fun e!518592 () Unit!31202)

(assert (=> b!924090 (= lt!415454 e!518592)))

(declare-fun c!96309 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924090 (= c!96309 (validKeyInArray!0 k!1099))))

(declare-fun b!924091 () Bool)

(declare-fun e!518582 () Unit!31202)

(declare-fun Unit!31204 () Unit!31202)

(assert (=> b!924091 (= e!518582 Unit!31204)))

(declare-fun b!924092 () Bool)

(declare-fun e!518585 () Bool)

(assert (=> b!924092 (= e!518585 tp_is_empty!19693)))

(declare-fun b!924093 () Bool)

(declare-fun e!518590 () Bool)

(assert (=> b!924093 (= e!518590 e!518589)))

(declare-fun res!623040 () Bool)

(assert (=> b!924093 (=> (not res!623040) (not e!518589))))

(declare-fun v!791 () V!31223)

(declare-fun lt!415467 () V!31223)

(assert (=> b!924093 (= res!623040 (and (= lt!415467 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!415459 () ListLongMap!11711)

(assert (=> b!924093 (= lt!415467 (apply!674 lt!415459 k!1099))))

(declare-fun res!623048 () Bool)

(assert (=> start!79000 (=> (not res!623048) (not e!518588))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79000 (= res!623048 (validMask!0 mask!1881))))

(assert (=> start!79000 e!518588))

(assert (=> start!79000 true))

(assert (=> start!79000 tp_is_empty!19693))

(declare-datatypes ((ValueCell!9365 0))(
  ( (ValueCellFull!9365 (v!12415 V!31223)) (EmptyCell!9365) )
))
(declare-datatypes ((array!55372 0))(
  ( (array!55373 (arr!26627 (Array (_ BitVec 32) ValueCell!9365)) (size!27087 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55372)

(declare-fun e!518587 () Bool)

(declare-fun array_inv!20732 (array!55372) Bool)

(assert (=> start!79000 (and (array_inv!20732 _values!1231) e!518587)))

(assert (=> start!79000 tp!59996))

(declare-fun array_inv!20733 (array!55370) Bool)

(assert (=> start!79000 (array_inv!20733 _keys!1487)))

(declare-fun b!924094 () Bool)

(assert (=> b!924094 (= e!518588 e!518590)))

(declare-fun res!623044 () Bool)

(assert (=> b!924094 (=> (not res!623044) (not e!518590))))

(declare-fun contains!4895 (ListLongMap!11711 (_ BitVec 64)) Bool)

(assert (=> b!924094 (= res!623044 (contains!4895 lt!415459 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31223)

(declare-fun minValue!1173 () V!31223)

(declare-fun getCurrentListMap!3089 (array!55370 array!55372 (_ BitVec 32) (_ BitVec 32) V!31223 V!31223 (_ BitVec 32) Int) ListLongMap!11711)

(assert (=> b!924094 (= lt!415459 (getCurrentListMap!3089 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924095 () Bool)

(assert (=> b!924095 (= e!518584 e!518583)))

(declare-fun res!623047 () Bool)

(assert (=> b!924095 (=> (not res!623047) (not e!518583))))

(assert (=> b!924095 (= res!623047 (contains!4895 lt!415464 k!1099))))

(assert (=> b!924095 (= lt!415464 (getCurrentListMap!3089 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924096 () Bool)

(declare-fun res!623041 () Bool)

(assert (=> b!924096 (=> (not res!623041) (not e!518588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55370 (_ BitVec 32)) Bool)

(assert (=> b!924096 (= res!623041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924097 () Bool)

(assert (=> b!924097 (= e!518592 e!518582)))

(declare-fun lt!415465 () (_ BitVec 64))

(assert (=> b!924097 (= lt!415465 (select (arr!26626 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96310 () Bool)

(assert (=> b!924097 (= c!96310 (validKeyInArray!0 lt!415465))))

(declare-fun mapIsEmpty!31296 () Bool)

(declare-fun mapRes!31296 () Bool)

(assert (=> mapIsEmpty!31296 mapRes!31296))

(declare-fun b!924098 () Bool)

(assert (=> b!924098 (= e!518587 (and e!518585 mapRes!31296))))

(declare-fun condMapEmpty!31296 () Bool)

(declare-fun mapDefault!31296 () ValueCell!9365)

