; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79340 () Bool)

(assert start!79340)

(declare-fun b_free!17525 () Bool)

(declare-fun b_next!17525 () Bool)

(assert (=> start!79340 (= b_free!17525 (not b_next!17525))))

(declare-fun tp!61016 () Bool)

(declare-fun b_and!28619 () Bool)

(assert (=> start!79340 (= tp!61016 b_and!28619)))

(declare-fun b!931428 () Bool)

(declare-fun res!627416 () Bool)

(declare-fun e!523115 () Bool)

(assert (=> b!931428 (=> (not res!627416) (not e!523115))))

(declare-datatypes ((array!56034 0))(
  ( (array!56035 (arr!26958 (Array (_ BitVec 32) (_ BitVec 64))) (size!27418 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56034)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56034 (_ BitVec 32)) Bool)

(assert (=> b!931428 (= res!627416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931429 () Bool)

(declare-fun res!627420 () Bool)

(assert (=> b!931429 (=> (not res!627420) (not e!523115))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31675 0))(
  ( (V!31676 (val!10067 Int)) )
))
(declare-datatypes ((ValueCell!9535 0))(
  ( (ValueCellFull!9535 (v!12585 V!31675)) (EmptyCell!9535) )
))
(declare-datatypes ((array!56036 0))(
  ( (array!56037 (arr!26959 (Array (_ BitVec 32) ValueCell!9535)) (size!27419 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56036)

(assert (=> b!931429 (= res!627420 (and (= (size!27419 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27418 _keys!1487) (size!27419 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31806 () Bool)

(declare-fun mapRes!31806 () Bool)

(declare-fun tp!61017 () Bool)

(declare-fun e!523116 () Bool)

(assert (=> mapNonEmpty!31806 (= mapRes!31806 (and tp!61017 e!523116))))

(declare-fun mapValue!31806 () ValueCell!9535)

(declare-fun mapKey!31806 () (_ BitVec 32))

(declare-fun mapRest!31806 () (Array (_ BitVec 32) ValueCell!9535))

(assert (=> mapNonEmpty!31806 (= (arr!26959 _values!1231) (store mapRest!31806 mapKey!31806 mapValue!31806))))

(declare-fun b!931430 () Bool)

(declare-fun tp_is_empty!20033 () Bool)

(assert (=> b!931430 (= e!523116 tp_is_empty!20033)))

(declare-fun b!931431 () Bool)

(declare-fun res!627414 () Bool)

(declare-fun e!523114 () Bool)

(assert (=> b!931431 (=> (not res!627414) (not e!523114))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931431 (= res!627414 (validKeyInArray!0 k!1099))))

(declare-fun b!931432 () Bool)

(declare-fun res!627415 () Bool)

(assert (=> b!931432 (=> (not res!627415) (not e!523115))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931432 (= res!627415 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27418 _keys!1487))))))

(declare-fun b!931433 () Bool)

(declare-fun res!627418 () Bool)

(assert (=> b!931433 (=> (not res!627418) (not e!523114))))

(declare-datatypes ((tuple2!13290 0))(
  ( (tuple2!13291 (_1!6655 (_ BitVec 64)) (_2!6655 V!31675)) )
))
(declare-datatypes ((List!19106 0))(
  ( (Nil!19103) (Cons!19102 (h!20248 tuple2!13290) (t!27183 List!19106)) )
))
(declare-datatypes ((ListLongMap!12001 0))(
  ( (ListLongMap!12002 (toList!6016 List!19106)) )
))
(declare-fun lt!419407 () ListLongMap!12001)

(declare-fun v!791 () V!31675)

(declare-fun apply!802 (ListLongMap!12001 (_ BitVec 64)) V!31675)

(assert (=> b!931433 (= res!627418 (= (apply!802 lt!419407 k!1099) v!791))))

(declare-fun b!931434 () Bool)

(declare-fun e!523118 () Bool)

(assert (=> b!931434 (= e!523114 e!523118)))

(declare-fun res!627417 () Bool)

(assert (=> b!931434 (=> (not res!627417) (not e!523118))))

(declare-fun lt!419409 () (_ BitVec 64))

(assert (=> b!931434 (= res!627417 (validKeyInArray!0 lt!419409))))

(assert (=> b!931434 (= lt!419409 (select (arr!26958 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931435 () Bool)

(declare-fun e!523119 () Bool)

(declare-fun e!523117 () Bool)

(assert (=> b!931435 (= e!523119 (and e!523117 mapRes!31806))))

(declare-fun condMapEmpty!31806 () Bool)

(declare-fun mapDefault!31806 () ValueCell!9535)

