; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78814 () Bool)

(assert start!78814)

(declare-fun b_free!16999 () Bool)

(declare-fun b_next!16999 () Bool)

(assert (=> start!78814 (= b_free!16999 (not b_next!16999))))

(declare-fun tp!59439 () Bool)

(declare-fun b_and!27753 () Bool)

(assert (=> start!78814 (= tp!59439 b_and!27753)))

(declare-fun b!919409 () Bool)

(declare-fun e!516100 () Bool)

(declare-fun e!516097 () Bool)

(assert (=> b!919409 (= e!516100 e!516097)))

(declare-fun res!620069 () Bool)

(assert (=> b!919409 (=> (not res!620069) (not e!516097))))

(declare-datatypes ((V!30975 0))(
  ( (V!30976 (val!9804 Int)) )
))
(declare-datatypes ((tuple2!12830 0))(
  ( (tuple2!12831 (_1!6425 (_ BitVec 64)) (_2!6425 V!30975)) )
))
(declare-datatypes ((List!18672 0))(
  ( (Nil!18669) (Cons!18668 (h!19814 tuple2!12830) (t!26409 List!18672)) )
))
(declare-datatypes ((ListLongMap!11541 0))(
  ( (ListLongMap!11542 (toList!5786 List!18672)) )
))
(declare-fun lt!412714 () ListLongMap!11541)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4797 (ListLongMap!11541 (_ BitVec 64)) Bool)

(assert (=> b!919409 (= res!620069 (contains!4797 lt!412714 k!1099))))

(declare-datatypes ((array!55006 0))(
  ( (array!55007 (arr!26444 (Array (_ BitVec 32) (_ BitVec 64))) (size!26904 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55006)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9272 0))(
  ( (ValueCellFull!9272 (v!12322 V!30975)) (EmptyCell!9272) )
))
(declare-datatypes ((array!55008 0))(
  ( (array!55009 (arr!26445 (Array (_ BitVec 32) ValueCell!9272)) (size!26905 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55008)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30975)

(declare-fun minValue!1173 () V!30975)

(declare-fun getCurrentListMap!3009 (array!55006 array!55008 (_ BitVec 32) (_ BitVec 32) V!30975 V!30975 (_ BitVec 32) Int) ListLongMap!11541)

(assert (=> b!919409 (= lt!412714 (getCurrentListMap!3009 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919410 () Bool)

(declare-fun e!516098 () Bool)

(assert (=> b!919410 (= e!516097 e!516098)))

(declare-fun res!620064 () Bool)

(assert (=> b!919410 (=> (not res!620064) (not e!516098))))

(declare-fun lt!412713 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919410 (= res!620064 (validKeyInArray!0 lt!412713))))

(assert (=> b!919410 (= lt!412713 (select (arr!26444 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31017 () Bool)

(declare-fun mapRes!31017 () Bool)

(assert (=> mapIsEmpty!31017 mapRes!31017))

(declare-fun b!919411 () Bool)

(declare-fun res!620071 () Bool)

(assert (=> b!919411 (=> (not res!620071) (not e!516097))))

(assert (=> b!919411 (= res!620071 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919412 () Bool)

(declare-fun res!620068 () Bool)

(assert (=> b!919412 (=> (not res!620068) (not e!516100))))

(assert (=> b!919412 (= res!620068 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26904 _keys!1487))))))

(declare-fun b!919413 () Bool)

(declare-fun res!620072 () Bool)

(assert (=> b!919413 (=> (not res!620072) (not e!516100))))

(assert (=> b!919413 (= res!620072 (and (= (size!26905 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26904 _keys!1487) (size!26905 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919414 () Bool)

(declare-fun res!620067 () Bool)

(assert (=> b!919414 (=> (not res!620067) (not e!516097))))

(assert (=> b!919414 (= res!620067 (validKeyInArray!0 k!1099))))

(declare-fun b!919415 () Bool)

(assert (=> b!919415 (= e!516098 (not true))))

(declare-datatypes ((List!18673 0))(
  ( (Nil!18670) (Cons!18669 (h!19815 (_ BitVec 64)) (t!26410 List!18673)) )
))
(declare-fun arrayNoDuplicates!0 (array!55006 (_ BitVec 32) List!18673) Bool)

(assert (=> b!919415 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18670)))

(declare-datatypes ((Unit!31027 0))(
  ( (Unit!31028) )
))
(declare-fun lt!412710 () Unit!31027)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55006 (_ BitVec 32) (_ BitVec 32)) Unit!31027)

(assert (=> b!919415 (= lt!412710 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412712 () tuple2!12830)

(declare-fun +!2610 (ListLongMap!11541 tuple2!12830) ListLongMap!11541)

(assert (=> b!919415 (contains!4797 (+!2610 lt!412714 lt!412712) k!1099)))

(declare-fun lt!412716 () Unit!31027)

(declare-fun lt!412711 () V!30975)

(declare-fun addStillContains!372 (ListLongMap!11541 (_ BitVec 64) V!30975 (_ BitVec 64)) Unit!31027)

(assert (=> b!919415 (= lt!412716 (addStillContains!372 lt!412714 lt!412713 lt!412711 k!1099))))

(assert (=> b!919415 (= (getCurrentListMap!3009 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2610 (getCurrentListMap!3009 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412712))))

(assert (=> b!919415 (= lt!412712 (tuple2!12831 lt!412713 lt!412711))))

(declare-fun get!13889 (ValueCell!9272 V!30975) V!30975)

(declare-fun dynLambda!1449 (Int (_ BitVec 64)) V!30975)

(assert (=> b!919415 (= lt!412711 (get!13889 (select (arr!26445 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1449 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412715 () Unit!31027)

(declare-fun lemmaListMapRecursiveValidKeyArray!45 (array!55006 array!55008 (_ BitVec 32) (_ BitVec 32) V!30975 V!30975 (_ BitVec 32) Int) Unit!31027)

(assert (=> b!919415 (= lt!412715 (lemmaListMapRecursiveValidKeyArray!45 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31017 () Bool)

(declare-fun tp!59438 () Bool)

(declare-fun e!516101 () Bool)

(assert (=> mapNonEmpty!31017 (= mapRes!31017 (and tp!59438 e!516101))))

(declare-fun mapKey!31017 () (_ BitVec 32))

(declare-fun mapRest!31017 () (Array (_ BitVec 32) ValueCell!9272))

(declare-fun mapValue!31017 () ValueCell!9272)

(assert (=> mapNonEmpty!31017 (= (arr!26445 _values!1231) (store mapRest!31017 mapKey!31017 mapValue!31017))))

(declare-fun res!620066 () Bool)

(assert (=> start!78814 (=> (not res!620066) (not e!516100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78814 (= res!620066 (validMask!0 mask!1881))))

(assert (=> start!78814 e!516100))

(assert (=> start!78814 true))

(declare-fun tp_is_empty!19507 () Bool)

(assert (=> start!78814 tp_is_empty!19507))

(declare-fun e!516096 () Bool)

(declare-fun array_inv!20604 (array!55008) Bool)

(assert (=> start!78814 (and (array_inv!20604 _values!1231) e!516096)))

(assert (=> start!78814 tp!59439))

(declare-fun array_inv!20605 (array!55006) Bool)

(assert (=> start!78814 (array_inv!20605 _keys!1487)))

(declare-fun b!919416 () Bool)

(declare-fun res!620063 () Bool)

(assert (=> b!919416 (=> (not res!620063) (not e!516097))))

(declare-fun v!791 () V!30975)

(declare-fun apply!600 (ListLongMap!11541 (_ BitVec 64)) V!30975)

(assert (=> b!919416 (= res!620063 (= (apply!600 lt!412714 k!1099) v!791))))

(declare-fun b!919417 () Bool)

(assert (=> b!919417 (= e!516101 tp_is_empty!19507)))

(declare-fun b!919418 () Bool)

(declare-fun res!620070 () Bool)

(assert (=> b!919418 (=> (not res!620070) (not e!516100))))

(assert (=> b!919418 (= res!620070 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18670))))

(declare-fun b!919419 () Bool)

(declare-fun res!620065 () Bool)

(assert (=> b!919419 (=> (not res!620065) (not e!516100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55006 (_ BitVec 32)) Bool)

(assert (=> b!919419 (= res!620065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919420 () Bool)

(declare-fun e!516099 () Bool)

(assert (=> b!919420 (= e!516096 (and e!516099 mapRes!31017))))

(declare-fun condMapEmpty!31017 () Bool)

(declare-fun mapDefault!31017 () ValueCell!9272)

