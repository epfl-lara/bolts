; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79814 () Bool)

(assert start!79814)

(declare-fun b_free!17759 () Bool)

(declare-fun b_next!17759 () Bool)

(assert (=> start!79814 (= b_free!17759 (not b_next!17759))))

(declare-fun tp!61738 () Bool)

(declare-fun b_and!29151 () Bool)

(assert (=> start!79814 (= tp!61738 b_and!29151)))

(declare-fun b!938347 () Bool)

(declare-fun res!631443 () Bool)

(declare-fun e!527021 () Bool)

(assert (=> b!938347 (=> (not res!631443) (not e!527021))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56498 0))(
  ( (array!56499 (arr!27184 (Array (_ BitVec 32) (_ BitVec 64))) (size!27644 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56498)

(assert (=> b!938347 (= res!631443 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27644 _keys!1487))))))

(declare-fun b!938348 () Bool)

(declare-fun res!631448 () Bool)

(assert (=> b!938348 (=> (not res!631448) (not e!527021))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31987 0))(
  ( (V!31988 (val!10184 Int)) )
))
(declare-datatypes ((ValueCell!9652 0))(
  ( (ValueCellFull!9652 (v!12712 V!31987)) (EmptyCell!9652) )
))
(declare-datatypes ((array!56500 0))(
  ( (array!56501 (arr!27185 (Array (_ BitVec 32) ValueCell!9652)) (size!27645 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56500)

(assert (=> b!938348 (= res!631448 (and (= (size!27645 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27644 _keys!1487) (size!27645 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31987)

(declare-datatypes ((tuple2!13488 0))(
  ( (tuple2!13489 (_1!6754 (_ BitVec 64)) (_2!6754 V!31987)) )
))
(declare-datatypes ((List!19295 0))(
  ( (Nil!19292) (Cons!19291 (h!20437 tuple2!13488) (t!27606 List!19295)) )
))
(declare-datatypes ((ListLongMap!12199 0))(
  ( (ListLongMap!12200 (toList!6115 List!19295)) )
))
(declare-fun lt!423771 () ListLongMap!12199)

(declare-fun b!938349 () Bool)

(declare-fun e!527023 () Bool)

(declare-fun apply!893 (ListLongMap!12199 (_ BitVec 64)) V!31987)

(assert (=> b!938349 (= e!527023 (not (= (apply!893 lt!423771 k!1099) v!791)))))

(declare-fun b!938350 () Bool)

(declare-datatypes ((Unit!31708 0))(
  ( (Unit!31709) )
))
(declare-fun e!527026 () Unit!31708)

(declare-fun Unit!31710 () Unit!31708)

(assert (=> b!938350 (= e!527026 Unit!31710)))

(declare-fun b!938352 () Bool)

(declare-fun res!631440 () Bool)

(assert (=> b!938352 (=> (not res!631440) (not e!527021))))

(declare-datatypes ((List!19296 0))(
  ( (Nil!19293) (Cons!19292 (h!20438 (_ BitVec 64)) (t!27607 List!19296)) )
))
(declare-fun arrayNoDuplicates!0 (array!56498 (_ BitVec 32) List!19296) Bool)

(assert (=> b!938352 (= res!631440 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19293))))

(declare-fun mapNonEmpty!32176 () Bool)

(declare-fun mapRes!32176 () Bool)

(declare-fun tp!61737 () Bool)

(declare-fun e!527024 () Bool)

(assert (=> mapNonEmpty!32176 (= mapRes!32176 (and tp!61737 e!527024))))

(declare-fun mapValue!32176 () ValueCell!9652)

(declare-fun mapKey!32176 () (_ BitVec 32))

(declare-fun mapRest!32176 () (Array (_ BitVec 32) ValueCell!9652))

(assert (=> mapNonEmpty!32176 (= (arr!27185 _values!1231) (store mapRest!32176 mapKey!32176 mapValue!32176))))

(declare-fun b!938353 () Bool)

(declare-fun e!527022 () Unit!31708)

(declare-fun Unit!31711 () Unit!31708)

(assert (=> b!938353 (= e!527022 Unit!31711)))

(declare-fun b!938354 () Bool)

(declare-fun res!631441 () Bool)

(assert (=> b!938354 (=> (not res!631441) (not e!527021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56498 (_ BitVec 32)) Bool)

(assert (=> b!938354 (= res!631441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!938355 () Bool)

(declare-fun e!527020 () Bool)

(declare-fun e!527030 () Bool)

(assert (=> b!938355 (= e!527020 (and e!527030 mapRes!32176))))

(declare-fun condMapEmpty!32176 () Bool)

(declare-fun mapDefault!32176 () ValueCell!9652)

