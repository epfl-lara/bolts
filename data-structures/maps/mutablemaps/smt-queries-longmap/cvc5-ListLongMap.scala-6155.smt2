; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79066 () Bool)

(assert start!79066)

(declare-fun b_free!17251 () Bool)

(declare-fun b_next!17251 () Bool)

(assert (=> start!79066 (= b_free!17251 (not b_next!17251))))

(declare-fun tp!60194 () Bool)

(declare-fun b_and!28257 () Bool)

(assert (=> start!79066 (= tp!60194 b_and!28257)))

(declare-fun b!926047 () Bool)

(declare-fun e!519832 () Bool)

(declare-fun e!519831 () Bool)

(assert (=> b!926047 (= e!519832 e!519831)))

(declare-fun res!624049 () Bool)

(assert (=> b!926047 (=> (not res!624049) (not e!519831))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31311 0))(
  ( (V!31312 (val!9930 Int)) )
))
(declare-fun v!791 () V!31311)

(declare-fun lt!416995 () V!31311)

(assert (=> b!926047 (= res!624049 (and (= lt!416995 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13056 0))(
  ( (tuple2!13057 (_1!6538 (_ BitVec 64)) (_2!6538 V!31311)) )
))
(declare-datatypes ((List!18889 0))(
  ( (Nil!18886) (Cons!18885 (h!20031 tuple2!13056) (t!26878 List!18889)) )
))
(declare-datatypes ((ListLongMap!11767 0))(
  ( (ListLongMap!11768 (toList!5899 List!18889)) )
))
(declare-fun lt!416996 () ListLongMap!11767)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!699 (ListLongMap!11767 (_ BitVec 64)) V!31311)

(assert (=> b!926047 (= lt!416995 (apply!699 lt!416996 k!1099))))

(declare-fun b!926048 () Bool)

(declare-fun res!624045 () Bool)

(declare-fun e!519825 () Bool)

(assert (=> b!926048 (=> (not res!624045) (not e!519825))))

(declare-datatypes ((array!55498 0))(
  ( (array!55499 (arr!26690 (Array (_ BitVec 32) (_ BitVec 64))) (size!27150 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55498)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9398 0))(
  ( (ValueCellFull!9398 (v!12448 V!31311)) (EmptyCell!9398) )
))
(declare-datatypes ((array!55500 0))(
  ( (array!55501 (arr!26691 (Array (_ BitVec 32) ValueCell!9398)) (size!27151 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55500)

(assert (=> b!926048 (= res!624045 (and (= (size!27151 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27150 _keys!1487) (size!27151 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926049 () Bool)

(declare-fun res!624044 () Bool)

(assert (=> b!926049 (=> (not res!624044) (not e!519825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55498 (_ BitVec 32)) Bool)

(assert (=> b!926049 (= res!624044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926050 () Bool)

(declare-fun res!624051 () Bool)

(declare-fun e!519833 () Bool)

(assert (=> b!926050 (=> (not res!624051) (not e!519833))))

(declare-fun lt!417008 () ListLongMap!11767)

(assert (=> b!926050 (= res!624051 (= (apply!699 lt!417008 k!1099) v!791))))

(declare-fun b!926051 () Bool)

(declare-fun e!519834 () Bool)

(declare-fun e!519829 () Bool)

(declare-fun mapRes!31395 () Bool)

(assert (=> b!926051 (= e!519834 (and e!519829 mapRes!31395))))

(declare-fun condMapEmpty!31395 () Bool)

(declare-fun mapDefault!31395 () ValueCell!9398)

