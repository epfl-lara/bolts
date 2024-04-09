; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78832 () Bool)

(assert start!78832)

(declare-fun b_free!17017 () Bool)

(declare-fun b_next!17017 () Bool)

(assert (=> start!78832 (= b_free!17017 (not b_next!17017))))

(declare-fun tp!59492 () Bool)

(declare-fun b_and!27789 () Bool)

(assert (=> start!78832 (= tp!59492 b_and!27789)))

(declare-fun b!919778 () Bool)

(declare-fun res!620333 () Bool)

(declare-fun e!516285 () Bool)

(assert (=> b!919778 (=> (not res!620333) (not e!516285))))

(declare-datatypes ((array!55042 0))(
  ( (array!55043 (arr!26462 (Array (_ BitVec 32) (_ BitVec 64))) (size!26922 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55042)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55042 (_ BitVec 32)) Bool)

(assert (=> b!919778 (= res!620333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919779 () Bool)

(declare-fun res!620336 () Bool)

(assert (=> b!919779 (=> (not res!620336) (not e!516285))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919779 (= res!620336 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26922 _keys!1487))))))

(declare-fun b!919780 () Bool)

(declare-fun e!516288 () Bool)

(assert (=> b!919780 (= e!516288 (not true))))

(declare-datatypes ((List!18685 0))(
  ( (Nil!18682) (Cons!18681 (h!19827 (_ BitVec 64)) (t!26440 List!18685)) )
))
(declare-fun arrayNoDuplicates!0 (array!55042 (_ BitVec 32) List!18685) Bool)

(assert (=> b!919780 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18682)))

(declare-datatypes ((Unit!31037 0))(
  ( (Unit!31038) )
))
(declare-fun lt!412900 () Unit!31037)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55042 (_ BitVec 32) (_ BitVec 32)) Unit!31037)

(assert (=> b!919780 (= lt!412900 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!30999 0))(
  ( (V!31000 (val!9813 Int)) )
))
(declare-datatypes ((tuple2!12842 0))(
  ( (tuple2!12843 (_1!6431 (_ BitVec 64)) (_2!6431 V!30999)) )
))
(declare-datatypes ((List!18686 0))(
  ( (Nil!18683) (Cons!18682 (h!19828 tuple2!12842) (t!26441 List!18686)) )
))
(declare-datatypes ((ListLongMap!11553 0))(
  ( (ListLongMap!11554 (toList!5792 List!18686)) )
))
(declare-fun lt!412901 () ListLongMap!11553)

(declare-fun lt!412905 () tuple2!12842)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4802 (ListLongMap!11553 (_ BitVec 64)) Bool)

(declare-fun +!2615 (ListLongMap!11553 tuple2!12842) ListLongMap!11553)

(assert (=> b!919780 (contains!4802 (+!2615 lt!412901 lt!412905) k!1099)))

(declare-fun lt!412899 () V!30999)

(declare-fun lt!412902 () Unit!31037)

(declare-fun lt!412904 () (_ BitVec 64))

(declare-fun addStillContains!377 (ListLongMap!11553 (_ BitVec 64) V!30999 (_ BitVec 64)) Unit!31037)

(assert (=> b!919780 (= lt!412902 (addStillContains!377 lt!412901 lt!412904 lt!412899 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9281 0))(
  ( (ValueCellFull!9281 (v!12331 V!30999)) (EmptyCell!9281) )
))
(declare-datatypes ((array!55044 0))(
  ( (array!55045 (arr!26463 (Array (_ BitVec 32) ValueCell!9281)) (size!26923 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55044)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30999)

(declare-fun minValue!1173 () V!30999)

(declare-fun getCurrentListMap!3014 (array!55042 array!55044 (_ BitVec 32) (_ BitVec 32) V!30999 V!30999 (_ BitVec 32) Int) ListLongMap!11553)

(assert (=> b!919780 (= (getCurrentListMap!3014 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2615 (getCurrentListMap!3014 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412905))))

(assert (=> b!919780 (= lt!412905 (tuple2!12843 lt!412904 lt!412899))))

(declare-fun get!13900 (ValueCell!9281 V!30999) V!30999)

(declare-fun dynLambda!1454 (Int (_ BitVec 64)) V!30999)

(assert (=> b!919780 (= lt!412899 (get!13900 (select (arr!26463 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1454 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412903 () Unit!31037)

(declare-fun lemmaListMapRecursiveValidKeyArray!50 (array!55042 array!55044 (_ BitVec 32) (_ BitVec 32) V!30999 V!30999 (_ BitVec 32) Int) Unit!31037)

(assert (=> b!919780 (= lt!412903 (lemmaListMapRecursiveValidKeyArray!50 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919781 () Bool)

(declare-fun res!620334 () Bool)

(assert (=> b!919781 (=> (not res!620334) (not e!516285))))

(assert (=> b!919781 (= res!620334 (and (= (size!26923 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26922 _keys!1487) (size!26923 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919782 () Bool)

(declare-fun res!620337 () Bool)

(assert (=> b!919782 (=> (not res!620337) (not e!516285))))

(assert (=> b!919782 (= res!620337 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18682))))

(declare-fun b!919783 () Bool)

(declare-fun res!620342 () Bool)

(declare-fun e!516291 () Bool)

(assert (=> b!919783 (=> (not res!620342) (not e!516291))))

(assert (=> b!919783 (= res!620342 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919784 () Bool)

(declare-fun e!516287 () Bool)

(declare-fun e!516290 () Bool)

(declare-fun mapRes!31044 () Bool)

(assert (=> b!919784 (= e!516287 (and e!516290 mapRes!31044))))

(declare-fun condMapEmpty!31044 () Bool)

(declare-fun mapDefault!31044 () ValueCell!9281)

