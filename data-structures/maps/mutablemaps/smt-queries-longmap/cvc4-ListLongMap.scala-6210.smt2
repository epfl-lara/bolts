; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79426 () Bool)

(assert start!79426)

(declare-fun b_free!17585 () Bool)

(declare-fun b_next!17585 () Bool)

(assert (=> start!79426 (= b_free!17585 (not b_next!17585))))

(declare-fun tp!61200 () Bool)

(declare-fun b_and!28747 () Bool)

(assert (=> start!79426 (= tp!61200 b_and!28747)))

(declare-fun b!932828 () Bool)

(declare-fun res!628391 () Bool)

(declare-fun e!523859 () Bool)

(assert (=> b!932828 (=> (not res!628391) (not e!523859))))

(declare-datatypes ((V!31755 0))(
  ( (V!31756 (val!10097 Int)) )
))
(declare-fun v!791 () V!31755)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((tuple2!13338 0))(
  ( (tuple2!13339 (_1!6679 (_ BitVec 64)) (_2!6679 V!31755)) )
))
(declare-datatypes ((List!19146 0))(
  ( (Nil!19143) (Cons!19142 (h!20288 tuple2!13338) (t!27283 List!19146)) )
))
(declare-datatypes ((ListLongMap!12049 0))(
  ( (ListLongMap!12050 (toList!6040 List!19146)) )
))
(declare-fun lt!420115 () ListLongMap!12049)

(declare-fun apply!824 (ListLongMap!12049 (_ BitVec 64)) V!31755)

(assert (=> b!932828 (= res!628391 (= (apply!824 lt!420115 k!1099) v!791))))

(declare-fun b!932829 () Bool)

(declare-fun res!628388 () Bool)

(declare-fun e!523857 () Bool)

(assert (=> b!932829 (=> (not res!628388) (not e!523857))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56146 0))(
  ( (array!56147 (arr!27013 (Array (_ BitVec 32) (_ BitVec 64))) (size!27473 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56146)

(assert (=> b!932829 (= res!628388 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27473 _keys!1487))))))

(declare-fun b!932830 () Bool)

(declare-fun res!628395 () Bool)

(assert (=> b!932830 (=> (not res!628395) (not e!523857))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9565 0))(
  ( (ValueCellFull!9565 (v!12616 V!31755)) (EmptyCell!9565) )
))
(declare-datatypes ((array!56148 0))(
  ( (array!56149 (arr!27014 (Array (_ BitVec 32) ValueCell!9565)) (size!27474 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56148)

(assert (=> b!932830 (= res!628395 (and (= (size!27474 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27473 _keys!1487) (size!27474 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31899 () Bool)

(declare-fun mapRes!31899 () Bool)

(declare-fun tp!61199 () Bool)

(declare-fun e!523858 () Bool)

(assert (=> mapNonEmpty!31899 (= mapRes!31899 (and tp!61199 e!523858))))

(declare-fun mapValue!31899 () ValueCell!9565)

(declare-fun mapRest!31899 () (Array (_ BitVec 32) ValueCell!9565))

(declare-fun mapKey!31899 () (_ BitVec 32))

(assert (=> mapNonEmpty!31899 (= (arr!27014 _values!1231) (store mapRest!31899 mapKey!31899 mapValue!31899))))

(declare-fun mapIsEmpty!31899 () Bool)

(assert (=> mapIsEmpty!31899 mapRes!31899))

(declare-fun b!932831 () Bool)

(declare-fun e!523855 () Bool)

(declare-fun e!523856 () Bool)

(assert (=> b!932831 (= e!523855 (and e!523856 mapRes!31899))))

(declare-fun condMapEmpty!31899 () Bool)

(declare-fun mapDefault!31899 () ValueCell!9565)

