; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78842 () Bool)

(assert start!78842)

(declare-fun b_free!17027 () Bool)

(declare-fun b_next!17027 () Bool)

(assert (=> start!78842 (= b_free!17027 (not b_next!17027))))

(declare-fun tp!59523 () Bool)

(declare-fun b_and!27809 () Bool)

(assert (=> start!78842 (= tp!59523 b_and!27809)))

(declare-fun b!919984 () Bool)

(declare-fun e!516396 () Bool)

(declare-fun e!516392 () Bool)

(assert (=> b!919984 (= e!516396 e!516392)))

(declare-fun res!620486 () Bool)

(assert (=> b!919984 (=> (not res!620486) (not e!516392))))

(declare-fun lt!413004 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919984 (= res!620486 (validKeyInArray!0 lt!413004))))

(declare-datatypes ((array!55062 0))(
  ( (array!55063 (arr!26472 (Array (_ BitVec 32) (_ BitVec 64))) (size!26932 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55062)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919984 (= lt!413004 (select (arr!26472 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31059 () Bool)

(declare-fun mapRes!31059 () Bool)

(declare-fun tp!59522 () Bool)

(declare-fun e!516393 () Bool)

(assert (=> mapNonEmpty!31059 (= mapRes!31059 (and tp!59522 e!516393))))

(declare-datatypes ((V!31011 0))(
  ( (V!31012 (val!9818 Int)) )
))
(declare-datatypes ((ValueCell!9286 0))(
  ( (ValueCellFull!9286 (v!12336 V!31011)) (EmptyCell!9286) )
))
(declare-fun mapRest!31059 () (Array (_ BitVec 32) ValueCell!9286))

(declare-fun mapValue!31059 () ValueCell!9286)

(declare-datatypes ((array!55064 0))(
  ( (array!55065 (arr!26473 (Array (_ BitVec 32) ValueCell!9286)) (size!26933 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55064)

(declare-fun mapKey!31059 () (_ BitVec 32))

(assert (=> mapNonEmpty!31059 (= (arr!26473 _values!1231) (store mapRest!31059 mapKey!31059 mapValue!31059))))

(declare-fun b!919985 () Bool)

(declare-fun res!620485 () Bool)

(declare-fun e!516390 () Bool)

(assert (=> b!919985 (=> (not res!620485) (not e!516390))))

(assert (=> b!919985 (= res!620485 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26932 _keys!1487))))))

(declare-fun b!919986 () Bool)

(declare-fun res!620487 () Bool)

(assert (=> b!919986 (=> (not res!620487) (not e!516390))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55062 (_ BitVec 32)) Bool)

(assert (=> b!919986 (= res!620487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919987 () Bool)

(declare-fun tp_is_empty!19535 () Bool)

(assert (=> b!919987 (= e!516393 tp_is_empty!19535)))

(declare-fun res!620492 () Bool)

(assert (=> start!78842 (=> (not res!620492) (not e!516390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78842 (= res!620492 (validMask!0 mask!1881))))

(assert (=> start!78842 e!516390))

(assert (=> start!78842 true))

(assert (=> start!78842 tp_is_empty!19535))

(declare-fun e!516395 () Bool)

(declare-fun array_inv!20616 (array!55064) Bool)

(assert (=> start!78842 (and (array_inv!20616 _values!1231) e!516395)))

(assert (=> start!78842 tp!59523))

(declare-fun array_inv!20617 (array!55062) Bool)

(assert (=> start!78842 (array_inv!20617 _keys!1487)))

(declare-fun b!919983 () Bool)

(declare-fun res!620490 () Bool)

(assert (=> b!919983 (=> (not res!620490) (not e!516396))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!919983 (= res!620490 (validKeyInArray!0 k!1099))))

(declare-fun b!919988 () Bool)

(assert (=> b!919988 (= e!516390 e!516396)))

(declare-fun res!620483 () Bool)

(assert (=> b!919988 (=> (not res!620483) (not e!516396))))

(declare-datatypes ((tuple2!12852 0))(
  ( (tuple2!12853 (_1!6436 (_ BitVec 64)) (_2!6436 V!31011)) )
))
(declare-datatypes ((List!18695 0))(
  ( (Nil!18692) (Cons!18691 (h!19837 tuple2!12852) (t!26460 List!18695)) )
))
(declare-datatypes ((ListLongMap!11563 0))(
  ( (ListLongMap!11564 (toList!5797 List!18695)) )
))
(declare-fun lt!413005 () ListLongMap!11563)

(declare-fun contains!4807 (ListLongMap!11563 (_ BitVec 64)) Bool)

(assert (=> b!919988 (= res!620483 (contains!4807 lt!413005 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31011)

(declare-fun minValue!1173 () V!31011)

(declare-fun getCurrentListMap!3019 (array!55062 array!55064 (_ BitVec 32) (_ BitVec 32) V!31011 V!31011 (_ BitVec 32) Int) ListLongMap!11563)

(assert (=> b!919988 (= lt!413005 (getCurrentListMap!3019 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31059 () Bool)

(assert (=> mapIsEmpty!31059 mapRes!31059))

(declare-fun b!919989 () Bool)

(declare-fun res!620484 () Bool)

(assert (=> b!919989 (=> (not res!620484) (not e!516396))))

(declare-fun v!791 () V!31011)

(declare-fun apply!610 (ListLongMap!11563 (_ BitVec 64)) V!31011)

(assert (=> b!919989 (= res!620484 (= (apply!610 lt!413005 k!1099) v!791))))

(declare-fun b!919990 () Bool)

(declare-fun e!516394 () Bool)

(assert (=> b!919990 (= e!516395 (and e!516394 mapRes!31059))))

(declare-fun condMapEmpty!31059 () Bool)

(declare-fun mapDefault!31059 () ValueCell!9286)

