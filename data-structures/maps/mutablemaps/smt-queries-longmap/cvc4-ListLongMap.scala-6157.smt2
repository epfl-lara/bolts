; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79082 () Bool)

(assert start!79082)

(declare-fun b_free!17267 () Bool)

(declare-fun b_next!17267 () Bool)

(assert (=> start!79082 (= b_free!17267 (not b_next!17267))))

(declare-fun tp!60242 () Bool)

(declare-fun b_and!28289 () Bool)

(assert (=> start!79082 (= tp!60242 b_and!28289)))

(declare-fun b!926543 () Bool)

(declare-fun e!520142 () Bool)

(declare-fun e!520140 () Bool)

(assert (=> b!926543 (= e!520142 e!520140)))

(declare-fun res!624311 () Bool)

(assert (=> b!926543 (=> (not res!624311) (not e!520140))))

(declare-datatypes ((V!31331 0))(
  ( (V!31332 (val!9938 Int)) )
))
(declare-datatypes ((tuple2!13072 0))(
  ( (tuple2!13073 (_1!6546 (_ BitVec 64)) (_2!6546 V!31331)) )
))
(declare-datatypes ((List!18903 0))(
  ( (Nil!18900) (Cons!18899 (h!20045 tuple2!13072) (t!26908 List!18903)) )
))
(declare-datatypes ((ListLongMap!11783 0))(
  ( (ListLongMap!11784 (toList!5907 List!18903)) )
))
(declare-fun lt!417380 () ListLongMap!11783)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4928 (ListLongMap!11783 (_ BitVec 64)) Bool)

(assert (=> b!926543 (= res!624311 (contains!4928 lt!417380 k!1099))))

(declare-datatypes ((array!55530 0))(
  ( (array!55531 (arr!26706 (Array (_ BitVec 32) (_ BitVec 64))) (size!27166 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55530)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9406 0))(
  ( (ValueCellFull!9406 (v!12456 V!31331)) (EmptyCell!9406) )
))
(declare-datatypes ((array!55532 0))(
  ( (array!55533 (arr!26707 (Array (_ BitVec 32) ValueCell!9406)) (size!27167 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55532)

(declare-fun zeroValue!1173 () V!31331)

(declare-fun minValue!1173 () V!31331)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3122 (array!55530 array!55532 (_ BitVec 32) (_ BitVec 32) V!31331 V!31331 (_ BitVec 32) Int) ListLongMap!11783)

(assert (=> b!926543 (= lt!417380 (getCurrentListMap!3122 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926544 () Bool)

(declare-fun e!520144 () Bool)

(assert (=> b!926544 (= e!520144 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926545 () Bool)

(declare-datatypes ((Unit!31328 0))(
  ( (Unit!31329) )
))
(declare-fun e!520149 () Unit!31328)

(declare-fun Unit!31330 () Unit!31328)

(assert (=> b!926545 (= e!520149 Unit!31330)))

(declare-fun b!926546 () Bool)

(declare-fun res!624316 () Bool)

(declare-fun e!520138 () Bool)

(assert (=> b!926546 (=> (not res!624316) (not e!520138))))

(declare-fun v!791 () V!31331)

(declare-fun lt!417388 () ListLongMap!11783)

(declare-fun apply!705 (ListLongMap!11783 (_ BitVec 64)) V!31331)

(assert (=> b!926546 (= res!624316 (= (apply!705 lt!417388 k!1099) v!791))))

(declare-fun mapIsEmpty!31419 () Bool)

(declare-fun mapRes!31419 () Bool)

(assert (=> mapIsEmpty!31419 mapRes!31419))

(declare-fun res!624312 () Bool)

(assert (=> start!79082 (=> (not res!624312) (not e!520142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79082 (= res!624312 (validMask!0 mask!1881))))

(assert (=> start!79082 e!520142))

(assert (=> start!79082 true))

(declare-fun tp_is_empty!19775 () Bool)

(assert (=> start!79082 tp_is_empty!19775))

(declare-fun e!520146 () Bool)

(declare-fun array_inv!20788 (array!55532) Bool)

(assert (=> start!79082 (and (array_inv!20788 _values!1231) e!520146)))

(assert (=> start!79082 tp!60242))

(declare-fun array_inv!20789 (array!55530) Bool)

(assert (=> start!79082 (array_inv!20789 _keys!1487)))

(declare-fun b!926547 () Bool)

(declare-fun e!520145 () Bool)

(assert (=> b!926547 (= e!520146 (and e!520145 mapRes!31419))))

(declare-fun condMapEmpty!31419 () Bool)

(declare-fun mapDefault!31419 () ValueCell!9406)

