; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79148 () Bool)

(assert start!79148)

(declare-fun b_free!17333 () Bool)

(declare-fun b_next!17333 () Bool)

(assert (=> start!79148 (= b_free!17333 (not b_next!17333))))

(declare-fun tp!60440 () Bool)

(declare-fun b_and!28417 () Bool)

(assert (=> start!79148 (= tp!60440 b_and!28417)))

(declare-fun b!928497 () Bool)

(declare-fun res!625357 () Bool)

(declare-fun e!521369 () Bool)

(assert (=> b!928497 (=> (not res!625357) (not e!521369))))

(declare-datatypes ((array!55658 0))(
  ( (array!55659 (arr!26770 (Array (_ BitVec 32) (_ BitVec 64))) (size!27230 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55658)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31419 0))(
  ( (V!31420 (val!9971 Int)) )
))
(declare-datatypes ((ValueCell!9439 0))(
  ( (ValueCellFull!9439 (v!12489 V!31419)) (EmptyCell!9439) )
))
(declare-datatypes ((array!55660 0))(
  ( (array!55661 (arr!26771 (Array (_ BitVec 32) ValueCell!9439)) (size!27231 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55660)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928497 (= res!625357 (and (= (size!27231 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27230 _keys!1487) (size!27231 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31518 () Bool)

(declare-fun mapRes!31518 () Bool)

(declare-fun tp!60441 () Bool)

(declare-fun e!521371 () Bool)

(assert (=> mapNonEmpty!31518 (= mapRes!31518 (and tp!60441 e!521371))))

(declare-fun mapKey!31518 () (_ BitVec 32))

(declare-fun mapValue!31518 () ValueCell!9439)

(declare-fun mapRest!31518 () (Array (_ BitVec 32) ValueCell!9439))

(assert (=> mapNonEmpty!31518 (= (arr!26771 _values!1231) (store mapRest!31518 mapKey!31518 mapValue!31518))))

(declare-fun b!928498 () Bool)

(declare-fun res!625359 () Bool)

(assert (=> b!928498 (=> (not res!625359) (not e!521369))))

(declare-datatypes ((List!18957 0))(
  ( (Nil!18954) (Cons!18953 (h!20099 (_ BitVec 64)) (t!27022 List!18957)) )
))
(declare-fun arrayNoDuplicates!0 (array!55658 (_ BitVec 32) List!18957) Bool)

(assert (=> b!928498 (= res!625359 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18954))))

(declare-fun b!928499 () Bool)

(declare-fun e!521372 () Bool)

(declare-fun tp_is_empty!19841 () Bool)

(assert (=> b!928499 (= e!521372 tp_is_empty!19841)))

(declare-fun b!928500 () Bool)

(declare-fun res!625356 () Bool)

(assert (=> b!928500 (=> (not res!625356) (not e!521369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55658 (_ BitVec 32)) Bool)

(assert (=> b!928500 (= res!625356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928501 () Bool)

(declare-fun e!521373 () Bool)

(assert (=> b!928501 (= e!521373 (and e!521372 mapRes!31518))))

(declare-fun condMapEmpty!31518 () Bool)

(declare-fun mapDefault!31518 () ValueCell!9439)

