; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78904 () Bool)

(assert start!78904)

(declare-fun b_free!17089 () Bool)

(declare-fun b_next!17089 () Bool)

(assert (=> start!78904 (= b_free!17089 (not b_next!17089))))

(declare-fun tp!59709 () Bool)

(declare-fun b_and!27933 () Bool)

(assert (=> start!78904 (= tp!59709 b_and!27933)))

(declare-fun b!921663 () Bool)

(declare-fun e!517208 () Bool)

(assert (=> b!921663 (= e!517208 (not true))))

(declare-fun lt!413825 () (_ BitVec 64))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!921663 (not (= lt!413825 k!1099))))

(declare-datatypes ((array!55182 0))(
  ( (array!55183 (arr!26532 (Array (_ BitVec 32) (_ BitVec 64))) (size!26992 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55182)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31087 0))(
  ( (Unit!31088) )
))
(declare-fun lt!413821 () Unit!31087)

(declare-datatypes ((List!18748 0))(
  ( (Nil!18745) (Cons!18744 (h!19890 (_ BitVec 64)) (t!26575 List!18748)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55182 (_ BitVec 64) (_ BitVec 32) List!18748) Unit!31087)

(assert (=> b!921663 (= lt!413821 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18745))))

(declare-fun e!517211 () Bool)

(assert (=> b!921663 e!517211))

(declare-fun c!96053 () Bool)

(assert (=> b!921663 (= c!96053 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!413824 () Unit!31087)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31095 0))(
  ( (V!31096 (val!9849 Int)) )
))
(declare-datatypes ((ValueCell!9317 0))(
  ( (ValueCellFull!9317 (v!12367 V!31095)) (EmptyCell!9317) )
))
(declare-datatypes ((array!55184 0))(
  ( (array!55185 (arr!26533 (Array (_ BitVec 32) ValueCell!9317)) (size!26993 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55184)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31095)

(declare-fun minValue!1173 () V!31095)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!186 (array!55182 array!55184 (_ BitVec 32) (_ BitVec 32) V!31095 V!31095 (_ BitVec 64) (_ BitVec 32) Int) Unit!31087)

(assert (=> b!921663 (= lt!413824 (lemmaListMapContainsThenArrayContainsFrom!186 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55182 (_ BitVec 32) List!18748) Bool)

(assert (=> b!921663 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18745)))

(declare-fun lt!413823 () Unit!31087)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55182 (_ BitVec 32) (_ BitVec 32)) Unit!31087)

(assert (=> b!921663 (= lt!413823 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12908 0))(
  ( (tuple2!12909 (_1!6464 (_ BitVec 64)) (_2!6464 V!31095)) )
))
(declare-datatypes ((List!18749 0))(
  ( (Nil!18746) (Cons!18745 (h!19891 tuple2!12908) (t!26576 List!18749)) )
))
(declare-datatypes ((ListLongMap!11619 0))(
  ( (ListLongMap!11620 (toList!5825 List!18749)) )
))
(declare-fun lt!413827 () ListLongMap!11619)

(declare-fun lt!413822 () tuple2!12908)

(declare-fun contains!4853 (ListLongMap!11619 (_ BitVec 64)) Bool)

(declare-fun +!2640 (ListLongMap!11619 tuple2!12908) ListLongMap!11619)

(assert (=> b!921663 (contains!4853 (+!2640 lt!413827 lt!413822) k!1099)))

(declare-fun lt!413829 () V!31095)

(declare-fun lt!413826 () Unit!31087)

(declare-fun addStillContains!402 (ListLongMap!11619 (_ BitVec 64) V!31095 (_ BitVec 64)) Unit!31087)

(assert (=> b!921663 (= lt!413826 (addStillContains!402 lt!413827 lt!413825 lt!413829 k!1099))))

(declare-fun getCurrentListMap!3047 (array!55182 array!55184 (_ BitVec 32) (_ BitVec 32) V!31095 V!31095 (_ BitVec 32) Int) ListLongMap!11619)

(assert (=> b!921663 (= (getCurrentListMap!3047 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2640 (getCurrentListMap!3047 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413822))))

(assert (=> b!921663 (= lt!413822 (tuple2!12909 lt!413825 lt!413829))))

(declare-fun get!13949 (ValueCell!9317 V!31095) V!31095)

(declare-fun dynLambda!1479 (Int (_ BitVec 64)) V!31095)

(assert (=> b!921663 (= lt!413829 (get!13949 (select (arr!26533 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1479 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413828 () Unit!31087)

(declare-fun lemmaListMapRecursiveValidKeyArray!75 (array!55182 array!55184 (_ BitVec 32) (_ BitVec 32) V!31095 V!31095 (_ BitVec 32) Int) Unit!31087)

(assert (=> b!921663 (= lt!413828 (lemmaListMapRecursiveValidKeyArray!75 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921664 () Bool)

(declare-fun res!621663 () Bool)

(declare-fun e!517210 () Bool)

(assert (=> b!921664 (=> (not res!621663) (not e!517210))))

(declare-fun v!791 () V!31095)

(declare-fun apply!631 (ListLongMap!11619 (_ BitVec 64)) V!31095)

(assert (=> b!921664 (= res!621663 (= (apply!631 lt!413827 k!1099) v!791))))

(declare-fun b!921665 () Bool)

(declare-fun res!621656 () Bool)

(declare-fun e!517205 () Bool)

(assert (=> b!921665 (=> (not res!621656) (not e!517205))))

(assert (=> b!921665 (= res!621656 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26992 _keys!1487))))))

(declare-fun mapIsEmpty!31152 () Bool)

(declare-fun mapRes!31152 () Bool)

(assert (=> mapIsEmpty!31152 mapRes!31152))

(declare-fun b!921666 () Bool)

(assert (=> b!921666 (= e!517205 e!517210)))

(declare-fun res!621659 () Bool)

(assert (=> b!921666 (=> (not res!621659) (not e!517210))))

(assert (=> b!921666 (= res!621659 (contains!4853 lt!413827 k!1099))))

(assert (=> b!921666 (= lt!413827 (getCurrentListMap!3047 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921667 () Bool)

(declare-fun e!517212 () Bool)

(declare-fun tp_is_empty!19597 () Bool)

(assert (=> b!921667 (= e!517212 tp_is_empty!19597)))

(declare-fun b!921668 () Bool)

(declare-fun arrayContainsKey!0 (array!55182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921668 (= e!517211 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921669 () Bool)

(declare-fun res!621664 () Bool)

(assert (=> b!921669 (=> (not res!621664) (not e!517205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55182 (_ BitVec 32)) Bool)

(assert (=> b!921669 (= res!621664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921670 () Bool)

(declare-fun e!517209 () Bool)

(assert (=> b!921670 (= e!517209 tp_is_empty!19597)))

(declare-fun mapNonEmpty!31152 () Bool)

(declare-fun tp!59708 () Bool)

(assert (=> mapNonEmpty!31152 (= mapRes!31152 (and tp!59708 e!517212))))

(declare-fun mapKey!31152 () (_ BitVec 32))

(declare-fun mapRest!31152 () (Array (_ BitVec 32) ValueCell!9317))

(declare-fun mapValue!31152 () ValueCell!9317)

(assert (=> mapNonEmpty!31152 (= (arr!26533 _values!1231) (store mapRest!31152 mapKey!31152 mapValue!31152))))

(declare-fun res!621658 () Bool)

(assert (=> start!78904 (=> (not res!621658) (not e!517205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78904 (= res!621658 (validMask!0 mask!1881))))

(assert (=> start!78904 e!517205))

(assert (=> start!78904 true))

(assert (=> start!78904 tp_is_empty!19597))

(declare-fun e!517206 () Bool)

(declare-fun array_inv!20654 (array!55184) Bool)

(assert (=> start!78904 (and (array_inv!20654 _values!1231) e!517206)))

(assert (=> start!78904 tp!59709))

(declare-fun array_inv!20655 (array!55182) Bool)

(assert (=> start!78904 (array_inv!20655 _keys!1487)))

(declare-fun b!921671 () Bool)

(declare-fun res!621662 () Bool)

(assert (=> b!921671 (=> (not res!621662) (not e!517205))))

(assert (=> b!921671 (= res!621662 (and (= (size!26993 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26992 _keys!1487) (size!26993 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921672 () Bool)

(declare-fun res!621661 () Bool)

(assert (=> b!921672 (=> (not res!621661) (not e!517210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921672 (= res!621661 (validKeyInArray!0 k!1099))))

(declare-fun b!921673 () Bool)

(assert (=> b!921673 (= e!517206 (and e!517209 mapRes!31152))))

(declare-fun condMapEmpty!31152 () Bool)

(declare-fun mapDefault!31152 () ValueCell!9317)

