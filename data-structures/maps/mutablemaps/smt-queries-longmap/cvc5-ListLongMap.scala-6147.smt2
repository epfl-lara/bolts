; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79018 () Bool)

(assert start!79018)

(declare-fun b_free!17203 () Bool)

(declare-fun b_next!17203 () Bool)

(assert (=> start!79018 (= b_free!17203 (not b_next!17203))))

(declare-fun tp!60050 () Bool)

(declare-fun b_and!28161 () Bool)

(assert (=> start!79018 (= tp!60050 b_and!28161)))

(declare-fun b!924591 () Bool)

(declare-datatypes ((Unit!31228 0))(
  ( (Unit!31229) )
))
(declare-fun e!518908 () Unit!31228)

(declare-fun Unit!31230 () Unit!31228)

(assert (=> b!924591 (= e!518908 Unit!31230)))

(declare-fun b!924592 () Bool)

(declare-fun e!518905 () Bool)

(declare-fun e!518913 () Bool)

(assert (=> b!924592 (= e!518905 e!518913)))

(declare-fun res!623286 () Bool)

(assert (=> b!924592 (=> (not res!623286) (not e!518913))))

(declare-datatypes ((V!31247 0))(
  ( (V!31248 (val!9906 Int)) )
))
(declare-datatypes ((tuple2!13016 0))(
  ( (tuple2!13017 (_1!6518 (_ BitVec 64)) (_2!6518 V!31247)) )
))
(declare-datatypes ((List!18853 0))(
  ( (Nil!18850) (Cons!18849 (h!19995 tuple2!13016) (t!26794 List!18853)) )
))
(declare-datatypes ((ListLongMap!11727 0))(
  ( (ListLongMap!11728 (toList!5879 List!18853)) )
))
(declare-fun lt!415872 () ListLongMap!11727)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4903 (ListLongMap!11727 (_ BitVec 64)) Bool)

(assert (=> b!924592 (= res!623286 (contains!4903 lt!415872 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9374 0))(
  ( (ValueCellFull!9374 (v!12424 V!31247)) (EmptyCell!9374) )
))
(declare-datatypes ((array!55406 0))(
  ( (array!55407 (arr!26644 (Array (_ BitVec 32) ValueCell!9374)) (size!27104 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55406)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!55408 0))(
  ( (array!55409 (arr!26645 (Array (_ BitVec 32) (_ BitVec 64))) (size!27105 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55408)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31247)

(declare-fun minValue!1173 () V!31247)

(declare-fun getCurrentListMap!3097 (array!55408 array!55406 (_ BitVec 32) (_ BitVec 32) V!31247 V!31247 (_ BitVec 32) Int) ListLongMap!11727)

(assert (=> b!924592 (= lt!415872 (getCurrentListMap!3097 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623283 () Bool)

(declare-fun e!518907 () Bool)

(assert (=> start!79018 (=> (not res!623283) (not e!518907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79018 (= res!623283 (validMask!0 mask!1881))))

(assert (=> start!79018 e!518907))

(assert (=> start!79018 true))

(declare-fun tp_is_empty!19711 () Bool)

(assert (=> start!79018 tp_is_empty!19711))

(declare-fun e!518906 () Bool)

(declare-fun array_inv!20748 (array!55406) Bool)

(assert (=> start!79018 (and (array_inv!20748 _values!1231) e!518906)))

(assert (=> start!79018 tp!60050))

(declare-fun array_inv!20749 (array!55408) Bool)

(assert (=> start!79018 (array_inv!20749 _keys!1487)))

(declare-fun mapIsEmpty!31323 () Bool)

(declare-fun mapRes!31323 () Bool)

(assert (=> mapIsEmpty!31323 mapRes!31323))

(declare-fun b!924593 () Bool)

(declare-fun res!623285 () Bool)

(assert (=> b!924593 (=> (not res!623285) (not e!518907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55408 (_ BitVec 32)) Bool)

(assert (=> b!924593 (= res!623285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun e!518910 () Bool)

(declare-fun b!924594 () Bool)

(declare-fun arrayContainsKey!0 (array!55408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924594 (= e!518910 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!924595 () Bool)

(declare-fun e!518914 () Bool)

(assert (=> b!924595 (= e!518914 tp_is_empty!19711)))

(declare-fun b!924596 () Bool)

(declare-fun e!518916 () Bool)

(assert (=> b!924596 (= e!518906 (and e!518916 mapRes!31323))))

(declare-fun condMapEmpty!31323 () Bool)

(declare-fun mapDefault!31323 () ValueCell!9374)

