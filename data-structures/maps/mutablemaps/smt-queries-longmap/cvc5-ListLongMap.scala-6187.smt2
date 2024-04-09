; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79258 () Bool)

(assert start!79258)

(declare-fun b_free!17443 () Bool)

(declare-fun b_next!17443 () Bool)

(assert (=> start!79258 (= b_free!17443 (not b_next!17443))))

(declare-fun tp!60771 () Bool)

(declare-fun b_and!28527 () Bool)

(assert (=> start!79258 (= tp!60771 b_and!28527)))

(declare-fun b!930180 () Bool)

(declare-fun res!626546 () Bool)

(declare-fun e!522358 () Bool)

(assert (=> b!930180 (=> (not res!626546) (not e!522358))))

(declare-datatypes ((array!55872 0))(
  ( (array!55873 (arr!26877 (Array (_ BitVec 32) (_ BitVec 64))) (size!27337 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55872)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31567 0))(
  ( (V!31568 (val!10026 Int)) )
))
(declare-datatypes ((ValueCell!9494 0))(
  ( (ValueCellFull!9494 (v!12544 V!31567)) (EmptyCell!9494) )
))
(declare-datatypes ((array!55874 0))(
  ( (array!55875 (arr!26878 (Array (_ BitVec 32) ValueCell!9494)) (size!27338 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55874)

(assert (=> b!930180 (= res!626546 (and (= (size!27338 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27337 _keys!1487) (size!27338 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930181 () Bool)

(declare-fun e!522361 () Bool)

(declare-fun tp_is_empty!19951 () Bool)

(assert (=> b!930181 (= e!522361 tp_is_empty!19951)))

(declare-fun mapNonEmpty!31683 () Bool)

(declare-fun mapRes!31683 () Bool)

(declare-fun tp!60770 () Bool)

(assert (=> mapNonEmpty!31683 (= mapRes!31683 (and tp!60770 e!522361))))

(declare-fun mapKey!31683 () (_ BitVec 32))

(declare-fun mapRest!31683 () (Array (_ BitVec 32) ValueCell!9494))

(declare-fun mapValue!31683 () ValueCell!9494)

(assert (=> mapNonEmpty!31683 (= (arr!26878 _values!1231) (store mapRest!31683 mapKey!31683 mapValue!31683))))

(declare-fun b!930182 () Bool)

(declare-fun e!522360 () Bool)

(assert (=> b!930182 (= e!522360 false)))

(declare-fun lt!419162 () V!31567)

(declare-datatypes ((tuple2!13218 0))(
  ( (tuple2!13219 (_1!6619 (_ BitVec 64)) (_2!6619 V!31567)) )
))
(declare-datatypes ((List!19039 0))(
  ( (Nil!19036) (Cons!19035 (h!20181 tuple2!13218) (t!27104 List!19039)) )
))
(declare-datatypes ((ListLongMap!11929 0))(
  ( (ListLongMap!11930 (toList!5980 List!19039)) )
))
(declare-fun lt!419163 () ListLongMap!11929)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!768 (ListLongMap!11929 (_ BitVec 64)) V!31567)

(assert (=> b!930182 (= lt!419162 (apply!768 lt!419163 k!1099))))

(declare-fun b!930183 () Bool)

(declare-fun e!522362 () Bool)

(assert (=> b!930183 (= e!522362 tp_is_empty!19951)))

(declare-fun b!930184 () Bool)

(declare-fun res!626545 () Bool)

(assert (=> b!930184 (=> (not res!626545) (not e!522358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55872 (_ BitVec 32)) Bool)

(assert (=> b!930184 (= res!626545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930185 () Bool)

(declare-fun res!626548 () Bool)

(assert (=> b!930185 (=> (not res!626548) (not e!522358))))

(declare-datatypes ((List!19040 0))(
  ( (Nil!19037) (Cons!19036 (h!20182 (_ BitVec 64)) (t!27105 List!19040)) )
))
(declare-fun arrayNoDuplicates!0 (array!55872 (_ BitVec 32) List!19040) Bool)

(assert (=> b!930185 (= res!626548 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19037))))

(declare-fun b!930186 () Bool)

(declare-fun res!626549 () Bool)

(assert (=> b!930186 (=> (not res!626549) (not e!522358))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930186 (= res!626549 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27337 _keys!1487))))))

(declare-fun b!930187 () Bool)

(declare-fun e!522359 () Bool)

(assert (=> b!930187 (= e!522359 (and e!522362 mapRes!31683))))

(declare-fun condMapEmpty!31683 () Bool)

(declare-fun mapDefault!31683 () ValueCell!9494)

