; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78968 () Bool)

(assert start!78968)

(declare-fun b_free!17153 () Bool)

(declare-fun b_next!17153 () Bool)

(assert (=> start!78968 (= b_free!17153 (not b_next!17153))))

(declare-fun tp!59901 () Bool)

(declare-fun b_and!28061 () Bool)

(assert (=> start!78968 (= tp!59901 b_and!28061)))

(declare-fun b!923191 () Bool)

(declare-fun e!518012 () Bool)

(declare-fun e!518005 () Bool)

(assert (=> b!923191 (= e!518012 e!518005)))

(declare-fun res!622609 () Bool)

(assert (=> b!923191 (=> (not res!622609) (not e!518005))))

(declare-datatypes ((V!31179 0))(
  ( (V!31180 (val!9881 Int)) )
))
(declare-datatypes ((tuple2!12970 0))(
  ( (tuple2!12971 (_1!6495 (_ BitVec 64)) (_2!6495 V!31179)) )
))
(declare-datatypes ((List!18806 0))(
  ( (Nil!18803) (Cons!18802 (h!19948 tuple2!12970) (t!26697 List!18806)) )
))
(declare-datatypes ((ListLongMap!11681 0))(
  ( (ListLongMap!11682 (toList!5856 List!18806)) )
))
(declare-fun lt!414737 () ListLongMap!11681)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4880 (ListLongMap!11681 (_ BitVec 64)) Bool)

(assert (=> b!923191 (= res!622609 (contains!4880 lt!414737 k!1099))))

(declare-datatypes ((array!55308 0))(
  ( (array!55309 (arr!26595 (Array (_ BitVec 32) (_ BitVec 64))) (size!27055 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55308)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9349 0))(
  ( (ValueCellFull!9349 (v!12399 V!31179)) (EmptyCell!9349) )
))
(declare-datatypes ((array!55310 0))(
  ( (array!55311 (arr!26596 (Array (_ BitVec 32) ValueCell!9349)) (size!27056 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55310)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31179)

(declare-fun minValue!1173 () V!31179)

(declare-fun getCurrentListMap!3074 (array!55308 array!55310 (_ BitVec 32) (_ BitVec 32) V!31179 V!31179 (_ BitVec 32) Int) ListLongMap!11681)

(assert (=> b!923191 (= lt!414737 (getCurrentListMap!3074 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923192 () Bool)

(declare-fun e!518010 () Bool)

(assert (=> b!923192 (= e!518010 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31248 () Bool)

(declare-fun mapRes!31248 () Bool)

(declare-fun tp!59900 () Bool)

(declare-fun e!518006 () Bool)

(assert (=> mapNonEmpty!31248 (= mapRes!31248 (and tp!59900 e!518006))))

(declare-fun mapRest!31248 () (Array (_ BitVec 32) ValueCell!9349))

(declare-fun mapKey!31248 () (_ BitVec 32))

(declare-fun mapValue!31248 () ValueCell!9349)

(assert (=> mapNonEmpty!31248 (= (arr!26596 _values!1231) (store mapRest!31248 mapKey!31248 mapValue!31248))))

(declare-fun b!923193 () Bool)

(declare-fun res!622615 () Bool)

(declare-fun e!518013 () Bool)

(assert (=> b!923193 (=> (not res!622615) (not e!518013))))

(declare-datatypes ((List!18807 0))(
  ( (Nil!18804) (Cons!18803 (h!19949 (_ BitVec 64)) (t!26698 List!18807)) )
))
(declare-fun arrayNoDuplicates!0 (array!55308 (_ BitVec 32) List!18807) Bool)

(assert (=> b!923193 (= res!622615 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18804))))

(declare-fun b!923194 () Bool)

(declare-fun arrayContainsKey!0 (array!55308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923194 (= e!518010 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923195 () Bool)

(declare-fun res!622612 () Bool)

(assert (=> b!923195 (=> (not res!622612) (not e!518013))))

(assert (=> b!923195 (= res!622612 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27055 _keys!1487))))))

(declare-fun b!923196 () Bool)

(declare-datatypes ((Unit!31143 0))(
  ( (Unit!31144) )
))
(declare-fun e!518014 () Unit!31143)

(declare-fun Unit!31145 () Unit!31143)

(assert (=> b!923196 (= e!518014 Unit!31145)))

(declare-fun b!923197 () Bool)

(declare-fun e!518016 () Bool)

(declare-fun e!518009 () Bool)

(assert (=> b!923197 (= e!518016 (and e!518009 mapRes!31248))))

(declare-fun condMapEmpty!31248 () Bool)

(declare-fun mapDefault!31248 () ValueCell!9349)

