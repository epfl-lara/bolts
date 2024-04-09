; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79306 () Bool)

(assert start!79306)

(declare-fun b_free!17491 () Bool)

(declare-fun b_next!17491 () Bool)

(assert (=> start!79306 (= b_free!17491 (not b_next!17491))))

(declare-fun tp!60915 () Bool)

(declare-fun b_and!28575 () Bool)

(assert (=> start!79306 (= tp!60915 b_and!28575)))

(declare-fun b!930855 () Bool)

(declare-fun e!522794 () Bool)

(declare-fun e!522791 () Bool)

(assert (=> b!930855 (= e!522794 e!522791)))

(declare-fun res!627008 () Bool)

(assert (=> b!930855 (=> (not res!627008) (not e!522791))))

(declare-datatypes ((V!31631 0))(
  ( (V!31632 (val!10050 Int)) )
))
(declare-datatypes ((tuple2!13264 0))(
  ( (tuple2!13265 (_1!6642 (_ BitVec 64)) (_2!6642 V!31631)) )
))
(declare-datatypes ((List!19079 0))(
  ( (Nil!19076) (Cons!19075 (h!20221 tuple2!13264) (t!27144 List!19079)) )
))
(declare-datatypes ((ListLongMap!11975 0))(
  ( (ListLongMap!11976 (toList!6003 List!19079)) )
))
(declare-fun lt!419298 () ListLongMap!11975)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5007 (ListLongMap!11975 (_ BitVec 64)) Bool)

(assert (=> b!930855 (= res!627008 (contains!5007 lt!419298 k!1099))))

(declare-datatypes ((array!55966 0))(
  ( (array!55967 (arr!26924 (Array (_ BitVec 32) (_ BitVec 64))) (size!27384 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55966)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9518 0))(
  ( (ValueCellFull!9518 (v!12568 V!31631)) (EmptyCell!9518) )
))
(declare-datatypes ((array!55968 0))(
  ( (array!55969 (arr!26925 (Array (_ BitVec 32) ValueCell!9518)) (size!27385 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55968)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31631)

(declare-fun minValue!1173 () V!31631)

(declare-fun getCurrentListMap!3201 (array!55966 array!55968 (_ BitVec 32) (_ BitVec 32) V!31631 V!31631 (_ BitVec 32) Int) ListLongMap!11975)

(assert (=> b!930855 (= lt!419298 (getCurrentListMap!3201 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930856 () Bool)

(declare-fun e!522792 () Bool)

(declare-fun tp_is_empty!19999 () Bool)

(assert (=> b!930856 (= e!522792 tp_is_empty!19999)))

(declare-fun b!930857 () Bool)

(declare-fun e!522793 () Bool)

(declare-fun e!522795 () Bool)

(declare-fun mapRes!31755 () Bool)

(assert (=> b!930857 (= e!522793 (and e!522795 mapRes!31755))))

(declare-fun condMapEmpty!31755 () Bool)

(declare-fun mapDefault!31755 () ValueCell!9518)

