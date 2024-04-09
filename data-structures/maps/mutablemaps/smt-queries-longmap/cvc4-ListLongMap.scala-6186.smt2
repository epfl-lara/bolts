; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79256 () Bool)

(assert start!79256)

(declare-fun b_free!17441 () Bool)

(declare-fun b_next!17441 () Bool)

(assert (=> start!79256 (= b_free!17441 (not b_next!17441))))

(declare-fun tp!60765 () Bool)

(declare-fun b_and!28525 () Bool)

(assert (=> start!79256 (= tp!60765 b_and!28525)))

(declare-fun b!930151 () Bool)

(declare-fun res!626529 () Bool)

(declare-fun e!522341 () Bool)

(assert (=> b!930151 (=> (not res!626529) (not e!522341))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55868 0))(
  ( (array!55869 (arr!26875 (Array (_ BitVec 32) (_ BitVec 64))) (size!27335 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55868)

(assert (=> b!930151 (= res!626529 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27335 _keys!1487))))))

(declare-fun res!626527 () Bool)

(assert (=> start!79256 (=> (not res!626527) (not e!522341))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79256 (= res!626527 (validMask!0 mask!1881))))

(assert (=> start!79256 e!522341))

(assert (=> start!79256 true))

(declare-fun tp_is_empty!19949 () Bool)

(assert (=> start!79256 tp_is_empty!19949))

(declare-datatypes ((V!31563 0))(
  ( (V!31564 (val!10025 Int)) )
))
(declare-datatypes ((ValueCell!9493 0))(
  ( (ValueCellFull!9493 (v!12543 V!31563)) (EmptyCell!9493) )
))
(declare-datatypes ((array!55870 0))(
  ( (array!55871 (arr!26876 (Array (_ BitVec 32) ValueCell!9493)) (size!27336 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55870)

(declare-fun e!522344 () Bool)

(declare-fun array_inv!20902 (array!55870) Bool)

(assert (=> start!79256 (and (array_inv!20902 _values!1231) e!522344)))

(assert (=> start!79256 tp!60765))

(declare-fun array_inv!20903 (array!55868) Bool)

(assert (=> start!79256 (array_inv!20903 _keys!1487)))

(declare-fun b!930152 () Bool)

(declare-fun e!522342 () Bool)

(assert (=> b!930152 (= e!522342 false)))

(declare-fun lt!419157 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31563)

(declare-fun minValue!1173 () V!31563)

(declare-datatypes ((tuple2!13216 0))(
  ( (tuple2!13217 (_1!6618 (_ BitVec 64)) (_2!6618 V!31563)) )
))
(declare-datatypes ((List!19038 0))(
  ( (Nil!19035) (Cons!19034 (h!20180 tuple2!13216) (t!27103 List!19038)) )
))
(declare-datatypes ((ListLongMap!11927 0))(
  ( (ListLongMap!11928 (toList!5979 List!19038)) )
))
(declare-fun contains!4993 (ListLongMap!11927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3187 (array!55868 array!55870 (_ BitVec 32) (_ BitVec 32) V!31563 V!31563 (_ BitVec 32) Int) ListLongMap!11927)

(assert (=> b!930152 (= lt!419157 (contains!4993 (getCurrentListMap!3187 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!930153 () Bool)

(declare-fun res!626530 () Bool)

(assert (=> b!930153 (=> (not res!626530) (not e!522341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55868 (_ BitVec 32)) Bool)

(assert (=> b!930153 (= res!626530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930154 () Bool)

(assert (=> b!930154 (= e!522341 e!522342)))

(declare-fun res!626528 () Bool)

(assert (=> b!930154 (=> (not res!626528) (not e!522342))))

(declare-fun lt!419156 () ListLongMap!11927)

(assert (=> b!930154 (= res!626528 (contains!4993 lt!419156 k!1099))))

(assert (=> b!930154 (= lt!419156 (getCurrentListMap!3187 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930155 () Bool)

(declare-fun e!522343 () Bool)

(assert (=> b!930155 (= e!522343 tp_is_empty!19949)))

(declare-fun b!930156 () Bool)

(declare-fun e!522345 () Bool)

(declare-fun mapRes!31680 () Bool)

(assert (=> b!930156 (= e!522344 (and e!522345 mapRes!31680))))

(declare-fun condMapEmpty!31680 () Bool)

(declare-fun mapDefault!31680 () ValueCell!9493)

