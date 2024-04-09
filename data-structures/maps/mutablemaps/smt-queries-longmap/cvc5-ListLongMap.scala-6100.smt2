; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78736 () Bool)

(assert start!78736)

(declare-fun b_free!16921 () Bool)

(declare-fun b_next!16921 () Bool)

(assert (=> start!78736 (= b_free!16921 (not b_next!16921))))

(declare-fun tp!59205 () Bool)

(declare-fun b_and!27597 () Bool)

(assert (=> start!78736 (= tp!59205 b_and!27597)))

(declare-fun b!917810 () Bool)

(declare-fun e!515278 () Bool)

(declare-fun tp_is_empty!19429 () Bool)

(assert (=> b!917810 (= e!515278 tp_is_empty!19429)))

(declare-fun b!917811 () Bool)

(declare-fun res!618901 () Bool)

(declare-fun e!515279 () Bool)

(assert (=> b!917811 (=> (not res!618901) (not e!515279))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917811 (= res!618901 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917812 () Bool)

(declare-fun res!618898 () Bool)

(declare-fun e!515282 () Bool)

(assert (=> b!917812 (=> (not res!618898) (not e!515282))))

(declare-datatypes ((array!54850 0))(
  ( (array!54851 (arr!26366 (Array (_ BitVec 32) (_ BitVec 64))) (size!26826 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54850)

(declare-datatypes ((List!18605 0))(
  ( (Nil!18602) (Cons!18601 (h!19747 (_ BitVec 64)) (t!26264 List!18605)) )
))
(declare-fun arrayNoDuplicates!0 (array!54850 (_ BitVec 32) List!18605) Bool)

(assert (=> b!917812 (= res!618898 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18602))))

(declare-fun b!917813 () Bool)

(declare-fun res!618897 () Bool)

(assert (=> b!917813 (=> (not res!618897) (not e!515282))))

(assert (=> b!917813 (= res!618897 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26826 _keys!1487))))))

(declare-fun res!618900 () Bool)

(assert (=> start!78736 (=> (not res!618900) (not e!515282))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78736 (= res!618900 (validMask!0 mask!1881))))

(assert (=> start!78736 e!515282))

(assert (=> start!78736 true))

(assert (=> start!78736 tp_is_empty!19429))

(declare-datatypes ((V!30871 0))(
  ( (V!30872 (val!9765 Int)) )
))
(declare-datatypes ((ValueCell!9233 0))(
  ( (ValueCellFull!9233 (v!12283 V!30871)) (EmptyCell!9233) )
))
(declare-datatypes ((array!54852 0))(
  ( (array!54853 (arr!26367 (Array (_ BitVec 32) ValueCell!9233)) (size!26827 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54852)

(declare-fun e!515280 () Bool)

(declare-fun array_inv!20544 (array!54852) Bool)

(assert (=> start!78736 (and (array_inv!20544 _values!1231) e!515280)))

(assert (=> start!78736 tp!59205))

(declare-fun array_inv!20545 (array!54850) Bool)

(assert (=> start!78736 (array_inv!20545 _keys!1487)))

(declare-fun b!917814 () Bool)

(declare-fun e!515281 () Bool)

(assert (=> b!917814 (= e!515281 (not true))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!412072 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30871)

(declare-fun minValue!1173 () V!30871)

(declare-datatypes ((tuple2!12756 0))(
  ( (tuple2!12757 (_1!6388 (_ BitVec 64)) (_2!6388 V!30871)) )
))
(declare-datatypes ((List!18606 0))(
  ( (Nil!18603) (Cons!18602 (h!19748 tuple2!12756) (t!26265 List!18606)) )
))
(declare-datatypes ((ListLongMap!11467 0))(
  ( (ListLongMap!11468 (toList!5749 List!18606)) )
))
(declare-fun getCurrentListMap!2975 (array!54850 array!54852 (_ BitVec 32) (_ BitVec 32) V!30871 V!30871 (_ BitVec 32) Int) ListLongMap!11467)

(declare-fun +!2581 (ListLongMap!11467 tuple2!12756) ListLongMap!11467)

(declare-fun get!13834 (ValueCell!9233 V!30871) V!30871)

(declare-fun dynLambda!1420 (Int (_ BitVec 64)) V!30871)

(assert (=> b!917814 (= (getCurrentListMap!2975 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2581 (getCurrentListMap!2975 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12757 lt!412072 (get!13834 (select (arr!26367 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1420 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30969 0))(
  ( (Unit!30970) )
))
(declare-fun lt!412074 () Unit!30969)

(declare-fun lemmaListMapRecursiveValidKeyArray!16 (array!54850 array!54852 (_ BitVec 32) (_ BitVec 32) V!30871 V!30871 (_ BitVec 32) Int) Unit!30969)

(assert (=> b!917814 (= lt!412074 (lemmaListMapRecursiveValidKeyArray!16 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917815 () Bool)

(declare-fun e!515283 () Bool)

(assert (=> b!917815 (= e!515283 tp_is_empty!19429)))

(declare-fun b!917816 () Bool)

(declare-fun res!618899 () Bool)

(assert (=> b!917816 (=> (not res!618899) (not e!515282))))

(assert (=> b!917816 (= res!618899 (and (= (size!26827 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26826 _keys!1487) (size!26827 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917817 () Bool)

(assert (=> b!917817 (= e!515282 e!515279)))

(declare-fun res!618894 () Bool)

(assert (=> b!917817 (=> (not res!618894) (not e!515279))))

(declare-fun lt!412073 () ListLongMap!11467)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4763 (ListLongMap!11467 (_ BitVec 64)) Bool)

(assert (=> b!917817 (= res!618894 (contains!4763 lt!412073 k!1099))))

(assert (=> b!917817 (= lt!412073 (getCurrentListMap!2975 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917818 () Bool)

(assert (=> b!917818 (= e!515279 e!515281)))

(declare-fun res!618895 () Bool)

(assert (=> b!917818 (=> (not res!618895) (not e!515281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917818 (= res!618895 (validKeyInArray!0 lt!412072))))

(assert (=> b!917818 (= lt!412072 (select (arr!26366 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917819 () Bool)

(declare-fun res!618902 () Bool)

(assert (=> b!917819 (=> (not res!618902) (not e!515279))))

(declare-fun v!791 () V!30871)

(declare-fun apply!572 (ListLongMap!11467 (_ BitVec 64)) V!30871)

(assert (=> b!917819 (= res!618902 (= (apply!572 lt!412073 k!1099) v!791))))

(declare-fun b!917820 () Bool)

(declare-fun res!618896 () Bool)

(assert (=> b!917820 (=> (not res!618896) (not e!515279))))

(assert (=> b!917820 (= res!618896 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!30900 () Bool)

(declare-fun mapRes!30900 () Bool)

(declare-fun tp!59204 () Bool)

(assert (=> mapNonEmpty!30900 (= mapRes!30900 (and tp!59204 e!515278))))

(declare-fun mapValue!30900 () ValueCell!9233)

(declare-fun mapKey!30900 () (_ BitVec 32))

(declare-fun mapRest!30900 () (Array (_ BitVec 32) ValueCell!9233))

(assert (=> mapNonEmpty!30900 (= (arr!26367 _values!1231) (store mapRest!30900 mapKey!30900 mapValue!30900))))

(declare-fun b!917821 () Bool)

(assert (=> b!917821 (= e!515280 (and e!515283 mapRes!30900))))

(declare-fun condMapEmpty!30900 () Bool)

(declare-fun mapDefault!30900 () ValueCell!9233)

