; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79084 () Bool)

(assert start!79084)

(declare-fun b_free!17269 () Bool)

(declare-fun b_next!17269 () Bool)

(assert (=> start!79084 (= b_free!17269 (not b_next!17269))))

(declare-fun tp!60249 () Bool)

(declare-fun b_and!28293 () Bool)

(assert (=> start!79084 (= tp!60249 b_and!28293)))

(declare-fun b!926605 () Bool)

(declare-fun e!520186 () Bool)

(declare-fun e!520181 () Bool)

(assert (=> b!926605 (= e!520186 e!520181)))

(declare-fun res!624344 () Bool)

(assert (=> b!926605 (=> (not res!624344) (not e!520181))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31335 0))(
  ( (V!31336 (val!9939 Int)) )
))
(declare-fun v!791 () V!31335)

(declare-fun lt!417430 () V!31335)

(assert (=> b!926605 (= res!624344 (and (= lt!417430 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13074 0))(
  ( (tuple2!13075 (_1!6547 (_ BitVec 64)) (_2!6547 V!31335)) )
))
(declare-datatypes ((List!18904 0))(
  ( (Nil!18901) (Cons!18900 (h!20046 tuple2!13074) (t!26911 List!18904)) )
))
(declare-datatypes ((ListLongMap!11785 0))(
  ( (ListLongMap!11786 (toList!5908 List!18904)) )
))
(declare-fun lt!417433 () ListLongMap!11785)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!706 (ListLongMap!11785 (_ BitVec 64)) V!31335)

(assert (=> b!926605 (= lt!417430 (apply!706 lt!417433 k!1099))))

(declare-fun b!926607 () Bool)

(declare-fun res!624340 () Bool)

(declare-fun e!520188 () Bool)

(assert (=> b!926607 (=> (not res!624340) (not e!520188))))

(declare-fun lt!417431 () ListLongMap!11785)

(assert (=> b!926607 (= res!624340 (= (apply!706 lt!417431 k!1099) v!791))))

(declare-fun b!926608 () Bool)

(declare-fun res!624342 () Bool)

(declare-fun e!520182 () Bool)

(assert (=> b!926608 (=> (not res!624342) (not e!520182))))

(declare-datatypes ((array!55534 0))(
  ( (array!55535 (arr!26708 (Array (_ BitVec 32) (_ BitVec 64))) (size!27168 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55534)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55534 (_ BitVec 32)) Bool)

(assert (=> b!926608 (= res!624342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926609 () Bool)

(declare-datatypes ((Unit!31331 0))(
  ( (Unit!31332) )
))
(declare-fun e!520184 () Unit!31331)

(declare-fun e!520179 () Unit!31331)

(assert (=> b!926609 (= e!520184 e!520179)))

(declare-fun lt!417429 () (_ BitVec 64))

(assert (=> b!926609 (= lt!417429 (select (arr!26708 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96687 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926609 (= c!96687 (validKeyInArray!0 lt!417429))))

(declare-fun b!926610 () Bool)

(declare-fun e!520183 () Bool)

(declare-fun e!520176 () Bool)

(declare-fun mapRes!31422 () Bool)

(assert (=> b!926610 (= e!520183 (and e!520176 mapRes!31422))))

(declare-fun condMapEmpty!31422 () Bool)

(declare-datatypes ((ValueCell!9407 0))(
  ( (ValueCellFull!9407 (v!12457 V!31335)) (EmptyCell!9407) )
))
(declare-datatypes ((array!55536 0))(
  ( (array!55537 (arr!26709 (Array (_ BitVec 32) ValueCell!9407)) (size!27169 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55536)

(declare-fun mapDefault!31422 () ValueCell!9407)

