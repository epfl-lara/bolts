; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79088 () Bool)

(assert start!79088)

(declare-fun b_free!17273 () Bool)

(declare-fun b_next!17273 () Bool)

(assert (=> start!79088 (= b_free!17273 (not b_next!17273))))

(declare-fun tp!60261 () Bool)

(declare-fun b_and!28301 () Bool)

(assert (=> start!79088 (= tp!60261 b_and!28301)))

(declare-fun b!926729 () Bool)

(declare-fun e!520256 () Bool)

(declare-fun e!520261 () Bool)

(assert (=> b!926729 (= e!520256 e!520261)))

(declare-fun res!624412 () Bool)

(assert (=> b!926729 (=> (not res!624412) (not e!520261))))

(declare-datatypes ((V!31339 0))(
  ( (V!31340 (val!9941 Int)) )
))
(declare-datatypes ((tuple2!13078 0))(
  ( (tuple2!13079 (_1!6549 (_ BitVec 64)) (_2!6549 V!31339)) )
))
(declare-datatypes ((List!18907 0))(
  ( (Nil!18904) (Cons!18903 (h!20049 tuple2!13078) (t!26918 List!18907)) )
))
(declare-datatypes ((ListLongMap!11789 0))(
  ( (ListLongMap!11790 (toList!5910 List!18907)) )
))
(declare-fun lt!417526 () ListLongMap!11789)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4930 (ListLongMap!11789 (_ BitVec 64)) Bool)

(assert (=> b!926729 (= res!624412 (contains!4930 lt!417526 k!1099))))

(declare-datatypes ((array!55542 0))(
  ( (array!55543 (arr!26712 (Array (_ BitVec 32) (_ BitVec 64))) (size!27172 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55542)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9409 0))(
  ( (ValueCellFull!9409 (v!12459 V!31339)) (EmptyCell!9409) )
))
(declare-datatypes ((array!55544 0))(
  ( (array!55545 (arr!26713 (Array (_ BitVec 32) ValueCell!9409)) (size!27173 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55544)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31339)

(declare-fun minValue!1173 () V!31339)

(declare-fun getCurrentListMap!3124 (array!55542 array!55544 (_ BitVec 32) (_ BitVec 32) V!31339 V!31339 (_ BitVec 32) Int) ListLongMap!11789)

(assert (=> b!926729 (= lt!417526 (getCurrentListMap!3124 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926730 () Bool)

(declare-fun e!520260 () Bool)

(assert (=> b!926730 (= e!520260 (not true))))

(declare-fun e!520263 () Bool)

(assert (=> b!926730 e!520263))

(declare-fun res!624415 () Bool)

(assert (=> b!926730 (=> (not res!624415) (not e!520263))))

(declare-fun lt!417525 () ListLongMap!11789)

(assert (=> b!926730 (= res!624415 (contains!4930 lt!417525 k!1099))))

(assert (=> b!926730 (= lt!417525 (getCurrentListMap!3124 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31339)

(declare-datatypes ((Unit!31337 0))(
  ( (Unit!31338) )
))
(declare-fun lt!417529 () Unit!31337)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!88 (array!55542 array!55544 (_ BitVec 32) (_ BitVec 32) V!31339 V!31339 (_ BitVec 64) V!31339 (_ BitVec 32) Int) Unit!31337)

(assert (=> b!926730 (= lt!417529 (lemmaListMapApplyFromThenApplyFromZero!88 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926731 () Bool)

(declare-fun e!520262 () Bool)

(declare-fun tp_is_empty!19781 () Bool)

(assert (=> b!926731 (= e!520262 tp_is_empty!19781)))

(declare-fun b!926732 () Bool)

(declare-fun e!520255 () Unit!31337)

(declare-fun Unit!31339 () Unit!31337)

(assert (=> b!926732 (= e!520255 Unit!31339)))

(declare-fun b!926733 () Bool)

(declare-fun res!624407 () Bool)

(assert (=> b!926733 (=> (not res!624407) (not e!520256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55542 (_ BitVec 32)) Bool)

(assert (=> b!926733 (= res!624407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926734 () Bool)

(declare-fun e!520254 () Bool)

(assert (=> b!926734 (= e!520254 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!31428 () Bool)

(declare-fun mapRes!31428 () Bool)

(assert (=> mapIsEmpty!31428 mapRes!31428))

(declare-fun b!926735 () Bool)

(declare-fun arrayContainsKey!0 (array!55542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926735 (= e!520254 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!926737 () Bool)

(declare-fun e!520264 () Bool)

(assert (=> b!926737 (= e!520264 tp_is_empty!19781)))

(declare-fun b!926738 () Bool)

(declare-fun e!520257 () Bool)

(assert (=> b!926738 (= e!520257 (and e!520262 mapRes!31428))))

(declare-fun condMapEmpty!31428 () Bool)

(declare-fun mapDefault!31428 () ValueCell!9409)

