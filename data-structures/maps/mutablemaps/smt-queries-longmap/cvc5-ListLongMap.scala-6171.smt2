; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79162 () Bool)

(assert start!79162)

(declare-fun b_free!17347 () Bool)

(declare-fun b_next!17347 () Bool)

(assert (=> start!79162 (= b_free!17347 (not b_next!17347))))

(declare-fun tp!60482 () Bool)

(declare-fun b_and!28431 () Bool)

(assert (=> start!79162 (= tp!60482 b_and!28431)))

(declare-fun b!928687 () Bool)

(declare-fun res!625482 () Bool)

(declare-fun e!521494 () Bool)

(assert (=> b!928687 (=> (not res!625482) (not e!521494))))

(declare-datatypes ((array!55686 0))(
  ( (array!55687 (arr!26784 (Array (_ BitVec 32) (_ BitVec 64))) (size!27244 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55686)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55686 (_ BitVec 32)) Bool)

(assert (=> b!928687 (= res!625482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928688 () Bool)

(declare-fun res!625487 () Bool)

(assert (=> b!928688 (=> (not res!625487) (not e!521494))))

(declare-datatypes ((List!18968 0))(
  ( (Nil!18965) (Cons!18964 (h!20110 (_ BitVec 64)) (t!27033 List!18968)) )
))
(declare-fun arrayNoDuplicates!0 (array!55686 (_ BitVec 32) List!18968) Bool)

(assert (=> b!928688 (= res!625487 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18965))))

(declare-fun b!928689 () Bool)

(declare-fun res!625484 () Bool)

(assert (=> b!928689 (=> (not res!625484) (not e!521494))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928689 (= res!625484 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27244 _keys!1487))))))

(declare-fun b!928690 () Bool)

(declare-fun res!625486 () Bool)

(assert (=> b!928690 (=> (not res!625486) (not e!521494))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31439 0))(
  ( (V!31440 (val!9978 Int)) )
))
(declare-datatypes ((ValueCell!9446 0))(
  ( (ValueCellFull!9446 (v!12496 V!31439)) (EmptyCell!9446) )
))
(declare-datatypes ((array!55688 0))(
  ( (array!55689 (arr!26785 (Array (_ BitVec 32) ValueCell!9446)) (size!27245 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55688)

(assert (=> b!928690 (= res!625486 (and (= (size!27245 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27244 _keys!1487) (size!27245 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928691 () Bool)

(declare-fun e!521499 () Bool)

(assert (=> b!928691 (= e!521494 e!521499)))

(declare-fun res!625485 () Bool)

(assert (=> b!928691 (=> (not res!625485) (not e!521499))))

(declare-datatypes ((tuple2!13144 0))(
  ( (tuple2!13145 (_1!6582 (_ BitVec 64)) (_2!6582 V!31439)) )
))
(declare-datatypes ((List!18969 0))(
  ( (Nil!18966) (Cons!18965 (h!20111 tuple2!13144) (t!27034 List!18969)) )
))
(declare-datatypes ((ListLongMap!11855 0))(
  ( (ListLongMap!11856 (toList!5943 List!18969)) )
))
(declare-fun lt!418893 () ListLongMap!11855)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4961 (ListLongMap!11855 (_ BitVec 64)) Bool)

(assert (=> b!928691 (= res!625485 (contains!4961 lt!418893 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31439)

(declare-fun minValue!1173 () V!31439)

(declare-fun getCurrentListMap!3155 (array!55686 array!55688 (_ BitVec 32) (_ BitVec 32) V!31439 V!31439 (_ BitVec 32) Int) ListLongMap!11855)

(assert (=> b!928691 (= lt!418893 (getCurrentListMap!3155 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928692 () Bool)

(declare-fun e!521495 () Bool)

(declare-fun e!521497 () Bool)

(declare-fun mapRes!31539 () Bool)

(assert (=> b!928692 (= e!521495 (and e!521497 mapRes!31539))))

(declare-fun condMapEmpty!31539 () Bool)

(declare-fun mapDefault!31539 () ValueCell!9446)

