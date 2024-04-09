; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78940 () Bool)

(assert start!78940)

(declare-fun b_free!17125 () Bool)

(declare-fun b_next!17125 () Bool)

(assert (=> start!78940 (= b_free!17125 (not b_next!17125))))

(declare-fun tp!59816 () Bool)

(declare-fun b_and!28005 () Bool)

(assert (=> start!78940 (= tp!59816 b_and!28005)))

(declare-fun b!922510 () Bool)

(declare-fun res!622200 () Bool)

(declare-fun e!517639 () Bool)

(assert (=> b!922510 (=> (not res!622200) (not e!517639))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922510 (= res!622200 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922511 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun e!517640 () Bool)

(declare-datatypes ((array!55252 0))(
  ( (array!55253 (arr!26567 (Array (_ BitVec 32) (_ BitVec 64))) (size!27027 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55252)

(declare-fun arrayContainsKey!0 (array!55252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922511 (= e!517640 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922512 () Bool)

(declare-fun res!622196 () Bool)

(declare-fun e!517641 () Bool)

(assert (=> b!922512 (=> (not res!622196) (not e!517641))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55252 (_ BitVec 32)) Bool)

(assert (=> b!922512 (= res!622196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922513 () Bool)

(declare-fun e!517642 () Bool)

(assert (=> b!922513 (= e!517639 e!517642)))

(declare-fun res!622198 () Bool)

(assert (=> b!922513 (=> (not res!622198) (not e!517642))))

(declare-fun lt!414311 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922513 (= res!622198 (validKeyInArray!0 lt!414311))))

(assert (=> b!922513 (= lt!414311 (select (arr!26567 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922514 () Bool)

(declare-fun res!622197 () Bool)

(assert (=> b!922514 (=> (not res!622197) (not e!517641))))

(assert (=> b!922514 (= res!622197 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27027 _keys!1487))))))

(declare-fun b!922515 () Bool)

(declare-fun res!622202 () Bool)

(assert (=> b!922515 (=> (not res!622202) (not e!517641))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31143 0))(
  ( (V!31144 (val!9867 Int)) )
))
(declare-datatypes ((ValueCell!9335 0))(
  ( (ValueCellFull!9335 (v!12385 V!31143)) (EmptyCell!9335) )
))
(declare-datatypes ((array!55254 0))(
  ( (array!55255 (arr!26568 (Array (_ BitVec 32) ValueCell!9335)) (size!27028 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55254)

(assert (=> b!922515 (= res!622202 (and (= (size!27028 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27027 _keys!1487) (size!27028 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31206 () Bool)

(declare-fun mapRes!31206 () Bool)

(declare-fun tp!59817 () Bool)

(declare-fun e!517643 () Bool)

(assert (=> mapNonEmpty!31206 (= mapRes!31206 (and tp!59817 e!517643))))

(declare-fun mapRest!31206 () (Array (_ BitVec 32) ValueCell!9335))

(declare-fun mapKey!31206 () (_ BitVec 32))

(declare-fun mapValue!31206 () ValueCell!9335)

(assert (=> mapNonEmpty!31206 (= (arr!26568 _values!1231) (store mapRest!31206 mapKey!31206 mapValue!31206))))

(declare-fun mapIsEmpty!31206 () Bool)

(assert (=> mapIsEmpty!31206 mapRes!31206))

(declare-fun b!922516 () Bool)

(declare-fun e!517644 () Bool)

(declare-fun tp_is_empty!19633 () Bool)

(assert (=> b!922516 (= e!517644 tp_is_empty!19633)))

(declare-fun b!922517 () Bool)

(assert (=> b!922517 (= e!517640 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922509 () Bool)

(declare-fun res!622203 () Bool)

(assert (=> b!922509 (=> (not res!622203) (not e!517639))))

(assert (=> b!922509 (= res!622203 (validKeyInArray!0 k!1099))))

(declare-fun res!622201 () Bool)

(assert (=> start!78940 (=> (not res!622201) (not e!517641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78940 (= res!622201 (validMask!0 mask!1881))))

(assert (=> start!78940 e!517641))

(assert (=> start!78940 true))

(assert (=> start!78940 tp_is_empty!19633))

(declare-fun e!517638 () Bool)

(declare-fun array_inv!20684 (array!55254) Bool)

(assert (=> start!78940 (and (array_inv!20684 _values!1231) e!517638)))

(assert (=> start!78940 tp!59816))

(declare-fun array_inv!20685 (array!55252) Bool)

(assert (=> start!78940 (array_inv!20685 _keys!1487)))

(declare-fun b!922518 () Bool)

(assert (=> b!922518 (= e!517642 (not true))))

(assert (=> b!922518 (not (= lt!414311 k!1099))))

(declare-datatypes ((Unit!31115 0))(
  ( (Unit!31116) )
))
(declare-fun lt!414309 () Unit!31115)

(declare-datatypes ((List!18779 0))(
  ( (Nil!18776) (Cons!18775 (h!19921 (_ BitVec 64)) (t!26642 List!18779)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55252 (_ BitVec 64) (_ BitVec 32) List!18779) Unit!31115)

(assert (=> b!922518 (= lt!414309 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18776))))

(assert (=> b!922518 e!517640))

(declare-fun c!96107 () Bool)

(assert (=> b!922518 (= c!96107 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414313 () Unit!31115)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31143)

(declare-fun minValue!1173 () V!31143)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!200 (array!55252 array!55254 (_ BitVec 32) (_ BitVec 32) V!31143 V!31143 (_ BitVec 64) (_ BitVec 32) Int) Unit!31115)

(assert (=> b!922518 (= lt!414313 (lemmaListMapContainsThenArrayContainsFrom!200 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55252 (_ BitVec 32) List!18779) Bool)

(assert (=> b!922518 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18776)))

(declare-fun lt!414312 () Unit!31115)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55252 (_ BitVec 32) (_ BitVec 32)) Unit!31115)

(assert (=> b!922518 (= lt!414312 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12942 0))(
  ( (tuple2!12943 (_1!6481 (_ BitVec 64)) (_2!6481 V!31143)) )
))
(declare-datatypes ((List!18780 0))(
  ( (Nil!18777) (Cons!18776 (h!19922 tuple2!12942) (t!26643 List!18780)) )
))
(declare-datatypes ((ListLongMap!11653 0))(
  ( (ListLongMap!11654 (toList!5842 List!18780)) )
))
(declare-fun lt!414308 () ListLongMap!11653)

(declare-fun lt!414310 () tuple2!12942)

(declare-fun contains!4867 (ListLongMap!11653 (_ BitVec 64)) Bool)

(declare-fun +!2654 (ListLongMap!11653 tuple2!12942) ListLongMap!11653)

(assert (=> b!922518 (contains!4867 (+!2654 lt!414308 lt!414310) k!1099)))

(declare-fun lt!414315 () V!31143)

(declare-fun lt!414314 () Unit!31115)

(declare-fun addStillContains!416 (ListLongMap!11653 (_ BitVec 64) V!31143 (_ BitVec 64)) Unit!31115)

(assert (=> b!922518 (= lt!414314 (addStillContains!416 lt!414308 lt!414311 lt!414315 k!1099))))

(declare-fun getCurrentListMap!3061 (array!55252 array!55254 (_ BitVec 32) (_ BitVec 32) V!31143 V!31143 (_ BitVec 32) Int) ListLongMap!11653)

(assert (=> b!922518 (= (getCurrentListMap!3061 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2654 (getCurrentListMap!3061 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414310))))

(assert (=> b!922518 (= lt!414310 (tuple2!12943 lt!414311 lt!414315))))

(declare-fun get!13975 (ValueCell!9335 V!31143) V!31143)

(declare-fun dynLambda!1493 (Int (_ BitVec 64)) V!31143)

(assert (=> b!922518 (= lt!414315 (get!13975 (select (arr!26568 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1493 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414307 () Unit!31115)

(declare-fun lemmaListMapRecursiveValidKeyArray!89 (array!55252 array!55254 (_ BitVec 32) (_ BitVec 32) V!31143 V!31143 (_ BitVec 32) Int) Unit!31115)

(assert (=> b!922518 (= lt!414307 (lemmaListMapRecursiveValidKeyArray!89 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922519 () Bool)

(declare-fun res!622199 () Bool)

(assert (=> b!922519 (=> (not res!622199) (not e!517639))))

(declare-fun v!791 () V!31143)

(declare-fun apply!647 (ListLongMap!11653 (_ BitVec 64)) V!31143)

(assert (=> b!922519 (= res!622199 (= (apply!647 lt!414308 k!1099) v!791))))

(declare-fun b!922520 () Bool)

(assert (=> b!922520 (= e!517641 e!517639)))

(declare-fun res!622205 () Bool)

(assert (=> b!922520 (=> (not res!622205) (not e!517639))))

(assert (=> b!922520 (= res!622205 (contains!4867 lt!414308 k!1099))))

(assert (=> b!922520 (= lt!414308 (getCurrentListMap!3061 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922521 () Bool)

(assert (=> b!922521 (= e!517638 (and e!517644 mapRes!31206))))

(declare-fun condMapEmpty!31206 () Bool)

(declare-fun mapDefault!31206 () ValueCell!9335)

