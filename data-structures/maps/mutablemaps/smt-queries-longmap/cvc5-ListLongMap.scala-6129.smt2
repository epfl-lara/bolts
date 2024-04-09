; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78910 () Bool)

(assert start!78910)

(declare-fun b_free!17095 () Bool)

(declare-fun b_next!17095 () Bool)

(assert (=> start!78910 (= b_free!17095 (not b_next!17095))))

(declare-fun tp!59727 () Bool)

(declare-fun b_and!27945 () Bool)

(assert (=> start!78910 (= tp!59727 b_and!27945)))

(declare-fun b!921804 () Bool)

(declare-fun e!517280 () Bool)

(declare-fun e!517282 () Bool)

(assert (=> b!921804 (= e!517280 e!517282)))

(declare-fun res!621753 () Bool)

(assert (=> b!921804 (=> (not res!621753) (not e!517282))))

(declare-fun lt!413908 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921804 (= res!621753 (validKeyInArray!0 lt!413908))))

(declare-datatypes ((array!55194 0))(
  ( (array!55195 (arr!26538 (Array (_ BitVec 32) (_ BitVec 64))) (size!26998 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55194)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921804 (= lt!413908 (select (arr!26538 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921805 () Bool)

(declare-fun e!517278 () Bool)

(declare-fun tp_is_empty!19603 () Bool)

(assert (=> b!921805 (= e!517278 tp_is_empty!19603)))

(declare-fun e!517281 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun b!921806 () Bool)

(declare-fun arrayContainsKey!0 (array!55194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921806 (= e!517281 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapNonEmpty!31161 () Bool)

(declare-fun mapRes!31161 () Bool)

(declare-fun tp!59726 () Bool)

(declare-fun e!517277 () Bool)

(assert (=> mapNonEmpty!31161 (= mapRes!31161 (and tp!59726 e!517277))))

(declare-fun mapKey!31161 () (_ BitVec 32))

(declare-datatypes ((V!31103 0))(
  ( (V!31104 (val!9852 Int)) )
))
(declare-datatypes ((ValueCell!9320 0))(
  ( (ValueCellFull!9320 (v!12370 V!31103)) (EmptyCell!9320) )
))
(declare-fun mapRest!31161 () (Array (_ BitVec 32) ValueCell!9320))

(declare-fun mapValue!31161 () ValueCell!9320)

(declare-datatypes ((array!55196 0))(
  ( (array!55197 (arr!26539 (Array (_ BitVec 32) ValueCell!9320)) (size!26999 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55196)

(assert (=> mapNonEmpty!31161 (= (arr!26539 _values!1231) (store mapRest!31161 mapKey!31161 mapValue!31161))))

(declare-fun res!621754 () Bool)

(declare-fun e!517279 () Bool)

(assert (=> start!78910 (=> (not res!621754) (not e!517279))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78910 (= res!621754 (validMask!0 mask!1881))))

(assert (=> start!78910 e!517279))

(assert (=> start!78910 true))

(assert (=> start!78910 tp_is_empty!19603))

(declare-fun e!517284 () Bool)

(declare-fun array_inv!20660 (array!55196) Bool)

(assert (=> start!78910 (and (array_inv!20660 _values!1231) e!517284)))

(assert (=> start!78910 tp!59727))

(declare-fun array_inv!20661 (array!55194) Bool)

(assert (=> start!78910 (array_inv!20661 _keys!1487)))

(declare-fun b!921807 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921807 (= e!517281 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921808 () Bool)

(declare-fun res!621751 () Bool)

(assert (=> b!921808 (=> (not res!621751) (not e!517279))))

(assert (=> b!921808 (= res!621751 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26998 _keys!1487))))))

(declare-fun b!921809 () Bool)

(declare-fun res!621748 () Bool)

(assert (=> b!921809 (=> (not res!621748) (not e!517280))))

(assert (=> b!921809 (= res!621748 (validKeyInArray!0 k!1099))))

(declare-fun b!921810 () Bool)

(declare-fun res!621750 () Bool)

(assert (=> b!921810 (=> (not res!621750) (not e!517280))))

(declare-fun v!791 () V!31103)

(declare-datatypes ((tuple2!12914 0))(
  ( (tuple2!12915 (_1!6467 (_ BitVec 64)) (_2!6467 V!31103)) )
))
(declare-datatypes ((List!18754 0))(
  ( (Nil!18751) (Cons!18750 (h!19896 tuple2!12914) (t!26587 List!18754)) )
))
(declare-datatypes ((ListLongMap!11625 0))(
  ( (ListLongMap!11626 (toList!5828 List!18754)) )
))
(declare-fun lt!413907 () ListLongMap!11625)

(declare-fun apply!634 (ListLongMap!11625 (_ BitVec 64)) V!31103)

(assert (=> b!921810 (= res!621750 (= (apply!634 lt!413907 k!1099) v!791))))

(declare-fun b!921811 () Bool)

(assert (=> b!921811 (= e!517284 (and e!517278 mapRes!31161))))

(declare-fun condMapEmpty!31161 () Bool)

(declare-fun mapDefault!31161 () ValueCell!9320)

