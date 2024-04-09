; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79264 () Bool)

(assert start!79264)

(declare-fun b_free!17449 () Bool)

(declare-fun b_next!17449 () Bool)

(assert (=> start!79264 (= b_free!17449 (not b_next!17449))))

(declare-fun tp!60788 () Bool)

(declare-fun b_and!28533 () Bool)

(assert (=> start!79264 (= tp!60788 b_and!28533)))

(declare-fun b!930267 () Bool)

(declare-fun res!626605 () Bool)

(declare-fun e!522417 () Bool)

(assert (=> b!930267 (=> (not res!626605) (not e!522417))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55884 0))(
  ( (array!55885 (arr!26883 (Array (_ BitVec 32) (_ BitVec 64))) (size!27343 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55884)

(assert (=> b!930267 (= res!626605 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27343 _keys!1487))))))

(declare-fun b!930268 () Bool)

(declare-fun res!626612 () Bool)

(declare-fun e!522415 () Bool)

(assert (=> b!930268 (=> (not res!626612) (not e!522415))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!930268 (= res!626612 (validKeyInArray!0 k!1099))))

(declare-fun b!930269 () Bool)

(declare-fun res!626609 () Bool)

(assert (=> b!930269 (=> (not res!626609) (not e!522417))))

(declare-datatypes ((List!19044 0))(
  ( (Nil!19041) (Cons!19040 (h!20186 (_ BitVec 64)) (t!27109 List!19044)) )
))
(declare-fun arrayNoDuplicates!0 (array!55884 (_ BitVec 32) List!19044) Bool)

(assert (=> b!930269 (= res!626609 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19041))))

(declare-fun b!930270 () Bool)

(declare-fun res!626604 () Bool)

(assert (=> b!930270 (=> (not res!626604) (not e!522415))))

(declare-datatypes ((V!31575 0))(
  ( (V!31576 (val!10029 Int)) )
))
(declare-fun v!791 () V!31575)

(declare-datatypes ((tuple2!13224 0))(
  ( (tuple2!13225 (_1!6622 (_ BitVec 64)) (_2!6622 V!31575)) )
))
(declare-datatypes ((List!19045 0))(
  ( (Nil!19042) (Cons!19041 (h!20187 tuple2!13224) (t!27110 List!19045)) )
))
(declare-datatypes ((ListLongMap!11935 0))(
  ( (ListLongMap!11936 (toList!5983 List!19045)) )
))
(declare-fun lt!419178 () ListLongMap!11935)

(declare-fun apply!771 (ListLongMap!11935 (_ BitVec 64)) V!31575)

(assert (=> b!930270 (= res!626604 (= (apply!771 lt!419178 k!1099) v!791))))

(declare-fun b!930271 () Bool)

(assert (=> b!930271 (= e!522417 e!522415)))

(declare-fun res!626608 () Bool)

(assert (=> b!930271 (=> (not res!626608) (not e!522415))))

(declare-fun contains!4996 (ListLongMap!11935 (_ BitVec 64)) Bool)

(assert (=> b!930271 (= res!626608 (contains!4996 lt!419178 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9497 0))(
  ( (ValueCellFull!9497 (v!12547 V!31575)) (EmptyCell!9497) )
))
(declare-datatypes ((array!55886 0))(
  ( (array!55887 (arr!26884 (Array (_ BitVec 32) ValueCell!9497)) (size!27344 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55886)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31575)

(declare-fun minValue!1173 () V!31575)

(declare-fun getCurrentListMap!3190 (array!55884 array!55886 (_ BitVec 32) (_ BitVec 32) V!31575 V!31575 (_ BitVec 32) Int) ListLongMap!11935)

(assert (=> b!930271 (= lt!419178 (getCurrentListMap!3190 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930272 () Bool)

(declare-fun res!626610 () Bool)

(assert (=> b!930272 (=> (not res!626610) (not e!522415))))

(assert (=> b!930272 (= res!626610 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!626607 () Bool)

(assert (=> start!79264 (=> (not res!626607) (not e!522417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79264 (= res!626607 (validMask!0 mask!1881))))

(assert (=> start!79264 e!522417))

(assert (=> start!79264 true))

(declare-fun tp_is_empty!19957 () Bool)

(assert (=> start!79264 tp_is_empty!19957))

(declare-fun e!522416 () Bool)

(declare-fun array_inv!20908 (array!55886) Bool)

(assert (=> start!79264 (and (array_inv!20908 _values!1231) e!522416)))

(assert (=> start!79264 tp!60788))

(declare-fun array_inv!20909 (array!55884) Bool)

(assert (=> start!79264 (array_inv!20909 _keys!1487)))

(declare-fun mapNonEmpty!31692 () Bool)

(declare-fun mapRes!31692 () Bool)

(declare-fun tp!60789 () Bool)

(declare-fun e!522412 () Bool)

(assert (=> mapNonEmpty!31692 (= mapRes!31692 (and tp!60789 e!522412))))

(declare-fun mapKey!31692 () (_ BitVec 32))

(declare-fun mapRest!31692 () (Array (_ BitVec 32) ValueCell!9497))

(declare-fun mapValue!31692 () ValueCell!9497)

(assert (=> mapNonEmpty!31692 (= (arr!26884 _values!1231) (store mapRest!31692 mapKey!31692 mapValue!31692))))

(declare-fun b!930273 () Bool)

(declare-fun res!626611 () Bool)

(assert (=> b!930273 (=> (not res!626611) (not e!522417))))

(assert (=> b!930273 (= res!626611 (and (= (size!27344 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27343 _keys!1487) (size!27344 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31692 () Bool)

(assert (=> mapIsEmpty!31692 mapRes!31692))

(declare-fun b!930274 () Bool)

(declare-fun e!522413 () Bool)

(assert (=> b!930274 (= e!522416 (and e!522413 mapRes!31692))))

(declare-fun condMapEmpty!31692 () Bool)

(declare-fun mapDefault!31692 () ValueCell!9497)

