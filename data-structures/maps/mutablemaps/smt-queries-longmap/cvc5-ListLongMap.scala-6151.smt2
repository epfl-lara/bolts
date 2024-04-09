; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79042 () Bool)

(assert start!79042)

(declare-fun b_free!17227 () Bool)

(declare-fun b_next!17227 () Bool)

(assert (=> start!79042 (= b_free!17227 (not b_next!17227))))

(declare-fun tp!60122 () Bool)

(declare-fun b_and!28209 () Bool)

(assert (=> start!79042 (= tp!60122 b_and!28209)))

(declare-fun b!925303 () Bool)

(declare-fun e!519369 () Bool)

(declare-fun e!519357 () Bool)

(assert (=> b!925303 (= e!519369 e!519357)))

(declare-fun res!623652 () Bool)

(assert (=> b!925303 (=> (not res!623652) (not e!519357))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31279 0))(
  ( (V!31280 (val!9918 Int)) )
))
(declare-fun v!791 () V!31279)

(declare-fun lt!416419 () V!31279)

(assert (=> b!925303 (= res!623652 (and (= lt!416419 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13038 0))(
  ( (tuple2!13039 (_1!6529 (_ BitVec 64)) (_2!6529 V!31279)) )
))
(declare-datatypes ((List!18873 0))(
  ( (Nil!18870) (Cons!18869 (h!20015 tuple2!13038) (t!26838 List!18873)) )
))
(declare-datatypes ((ListLongMap!11749 0))(
  ( (ListLongMap!11750 (toList!5890 List!18873)) )
))
(declare-fun lt!416424 () ListLongMap!11749)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!691 (ListLongMap!11749 (_ BitVec 64)) V!31279)

(assert (=> b!925303 (= lt!416419 (apply!691 lt!416424 k!1099))))

(declare-fun b!925304 () Bool)

(declare-fun res!623653 () Bool)

(declare-fun e!519360 () Bool)

(assert (=> b!925304 (=> (not res!623653) (not e!519360))))

(declare-datatypes ((array!55452 0))(
  ( (array!55453 (arr!26667 (Array (_ BitVec 32) (_ BitVec 64))) (size!27127 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55452)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9386 0))(
  ( (ValueCellFull!9386 (v!12436 V!31279)) (EmptyCell!9386) )
))
(declare-datatypes ((array!55454 0))(
  ( (array!55455 (arr!26668 (Array (_ BitVec 32) ValueCell!9386)) (size!27128 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55454)

(assert (=> b!925304 (= res!623653 (and (= (size!27128 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27127 _keys!1487) (size!27128 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925305 () Bool)

(declare-fun res!623651 () Bool)

(assert (=> b!925305 (=> (not res!623651) (not e!519360))))

(declare-datatypes ((List!18874 0))(
  ( (Nil!18871) (Cons!18870 (h!20016 (_ BitVec 64)) (t!26839 List!18874)) )
))
(declare-fun arrayNoDuplicates!0 (array!55452 (_ BitVec 32) List!18874) Bool)

(assert (=> b!925305 (= res!623651 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18871))))

(declare-fun b!925306 () Bool)

(declare-fun e!519359 () Bool)

(assert (=> b!925306 (= e!519359 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925307 () Bool)

(declare-datatypes ((Unit!31269 0))(
  ( (Unit!31270) )
))
(declare-fun e!519366 () Unit!31269)

(declare-fun Unit!31271 () Unit!31269)

(assert (=> b!925307 (= e!519366 Unit!31271)))

(declare-fun b!925309 () Bool)

(declare-fun e!519362 () Bool)

(declare-fun tp_is_empty!19735 () Bool)

(assert (=> b!925309 (= e!519362 tp_is_empty!19735)))

(declare-fun mapNonEmpty!31359 () Bool)

(declare-fun mapRes!31359 () Bool)

(declare-fun tp!60123 () Bool)

(assert (=> mapNonEmpty!31359 (= mapRes!31359 (and tp!60123 e!519362))))

(declare-fun mapValue!31359 () ValueCell!9386)

(declare-fun mapRest!31359 () (Array (_ BitVec 32) ValueCell!9386))

(declare-fun mapKey!31359 () (_ BitVec 32))

(assert (=> mapNonEmpty!31359 (= (arr!26668 _values!1231) (store mapRest!31359 mapKey!31359 mapValue!31359))))

(declare-fun b!925310 () Bool)

(declare-fun e!519358 () Bool)

(declare-fun e!519367 () Bool)

(assert (=> b!925310 (= e!519358 (and e!519367 mapRes!31359))))

(declare-fun condMapEmpty!31359 () Bool)

(declare-fun mapDefault!31359 () ValueCell!9386)

