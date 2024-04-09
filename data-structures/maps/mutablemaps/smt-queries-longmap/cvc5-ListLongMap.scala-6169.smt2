; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79150 () Bool)

(assert start!79150)

(declare-fun b_free!17335 () Bool)

(declare-fun b_next!17335 () Bool)

(assert (=> start!79150 (= b_free!17335 (not b_next!17335))))

(declare-fun tp!60447 () Bool)

(declare-fun b_and!28419 () Bool)

(assert (=> start!79150 (= tp!60447 b_and!28419)))

(declare-fun mapIsEmpty!31521 () Bool)

(declare-fun mapRes!31521 () Bool)

(assert (=> mapIsEmpty!31521 mapRes!31521))

(declare-fun res!625379 () Bool)

(declare-fun e!521389 () Bool)

(assert (=> start!79150 (=> (not res!625379) (not e!521389))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79150 (= res!625379 (validMask!0 mask!1881))))

(assert (=> start!79150 e!521389))

(assert (=> start!79150 true))

(declare-datatypes ((V!31423 0))(
  ( (V!31424 (val!9972 Int)) )
))
(declare-datatypes ((ValueCell!9440 0))(
  ( (ValueCellFull!9440 (v!12490 V!31423)) (EmptyCell!9440) )
))
(declare-datatypes ((array!55662 0))(
  ( (array!55663 (arr!26772 (Array (_ BitVec 32) ValueCell!9440)) (size!27232 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55662)

(declare-fun e!521387 () Bool)

(declare-fun array_inv!20838 (array!55662) Bool)

(assert (=> start!79150 (and (array_inv!20838 _values!1231) e!521387)))

(assert (=> start!79150 tp!60447))

(declare-datatypes ((array!55664 0))(
  ( (array!55665 (arr!26773 (Array (_ BitVec 32) (_ BitVec 64))) (size!27233 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55664)

(declare-fun array_inv!20839 (array!55664) Bool)

(assert (=> start!79150 (array_inv!20839 _keys!1487)))

(declare-fun tp_is_empty!19843 () Bool)

(assert (=> start!79150 tp_is_empty!19843))

(declare-fun b!928524 () Bool)

(declare-fun res!625376 () Bool)

(assert (=> b!928524 (=> (not res!625376) (not e!521389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55664 (_ BitVec 32)) Bool)

(assert (=> b!928524 (= res!625376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928525 () Bool)

(declare-fun e!521390 () Bool)

(assert (=> b!928525 (= e!521389 e!521390)))

(declare-fun res!625377 () Bool)

(assert (=> b!928525 (=> (not res!625377) (not e!521390))))

(declare-datatypes ((tuple2!13134 0))(
  ( (tuple2!13135 (_1!6577 (_ BitVec 64)) (_2!6577 V!31423)) )
))
(declare-datatypes ((List!18958 0))(
  ( (Nil!18955) (Cons!18954 (h!20100 tuple2!13134) (t!27023 List!18958)) )
))
(declare-datatypes ((ListLongMap!11845 0))(
  ( (ListLongMap!11846 (toList!5938 List!18958)) )
))
(declare-fun lt!418857 () ListLongMap!11845)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4957 (ListLongMap!11845 (_ BitVec 64)) Bool)

(assert (=> b!928525 (= res!625377 (contains!4957 lt!418857 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31423)

(declare-fun minValue!1173 () V!31423)

(declare-fun getCurrentListMap!3151 (array!55664 array!55662 (_ BitVec 32) (_ BitVec 32) V!31423 V!31423 (_ BitVec 32) Int) ListLongMap!11845)

(assert (=> b!928525 (= lt!418857 (getCurrentListMap!3151 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31521 () Bool)

(declare-fun tp!60446 () Bool)

(declare-fun e!521386 () Bool)

(assert (=> mapNonEmpty!31521 (= mapRes!31521 (and tp!60446 e!521386))))

(declare-fun mapRest!31521 () (Array (_ BitVec 32) ValueCell!9440))

(declare-fun mapKey!31521 () (_ BitVec 32))

(declare-fun mapValue!31521 () ValueCell!9440)

(assert (=> mapNonEmpty!31521 (= (arr!26772 _values!1231) (store mapRest!31521 mapKey!31521 mapValue!31521))))

(declare-fun b!928526 () Bool)

(assert (=> b!928526 (= e!521386 tp_is_empty!19843)))

(declare-fun b!928527 () Bool)

(declare-fun e!521391 () Bool)

(assert (=> b!928527 (= e!521391 tp_is_empty!19843)))

(declare-fun b!928528 () Bool)

(declare-fun res!625374 () Bool)

(assert (=> b!928528 (=> (not res!625374) (not e!521389))))

(declare-datatypes ((List!18959 0))(
  ( (Nil!18956) (Cons!18955 (h!20101 (_ BitVec 64)) (t!27024 List!18959)) )
))
(declare-fun arrayNoDuplicates!0 (array!55664 (_ BitVec 32) List!18959) Bool)

(assert (=> b!928528 (= res!625374 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18956))))

(declare-fun b!928529 () Bool)

(declare-fun res!625378 () Bool)

(assert (=> b!928529 (=> (not res!625378) (not e!521389))))

(assert (=> b!928529 (= res!625378 (and (= (size!27232 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27233 _keys!1487) (size!27232 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928530 () Bool)

(assert (=> b!928530 (= e!521390 false)))

(declare-fun lt!418856 () V!31423)

(declare-fun apply!734 (ListLongMap!11845 (_ BitVec 64)) V!31423)

(assert (=> b!928530 (= lt!418856 (apply!734 lt!418857 k!1099))))

(declare-fun b!928531 () Bool)

(assert (=> b!928531 (= e!521387 (and e!521391 mapRes!31521))))

(declare-fun condMapEmpty!31521 () Bool)

(declare-fun mapDefault!31521 () ValueCell!9440)

