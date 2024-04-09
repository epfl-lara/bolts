; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79292 () Bool)

(assert start!79292)

(declare-fun b_free!17477 () Bool)

(declare-fun b_next!17477 () Bool)

(assert (=> start!79292 (= b_free!17477 (not b_next!17477))))

(declare-fun tp!60873 () Bool)

(declare-fun b_and!28561 () Bool)

(assert (=> start!79292 (= tp!60873 b_and!28561)))

(declare-fun b!930666 () Bool)

(declare-fun res!626878 () Bool)

(declare-fun e!522665 () Bool)

(assert (=> b!930666 (=> (not res!626878) (not e!522665))))

(declare-datatypes ((array!55940 0))(
  ( (array!55941 (arr!26911 (Array (_ BitVec 32) (_ BitVec 64))) (size!27371 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55940)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55940 (_ BitVec 32)) Bool)

(assert (=> b!930666 (= res!626878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930667 () Bool)

(declare-fun e!522667 () Bool)

(assert (=> b!930667 (= e!522665 e!522667)))

(declare-fun res!626881 () Bool)

(assert (=> b!930667 (=> (not res!626881) (not e!522667))))

(declare-datatypes ((V!31611 0))(
  ( (V!31612 (val!10043 Int)) )
))
(declare-datatypes ((tuple2!13250 0))(
  ( (tuple2!13251 (_1!6635 (_ BitVec 64)) (_2!6635 V!31611)) )
))
(declare-datatypes ((List!19068 0))(
  ( (Nil!19065) (Cons!19064 (h!20210 tuple2!13250) (t!27133 List!19068)) )
))
(declare-datatypes ((ListLongMap!11961 0))(
  ( (ListLongMap!11962 (toList!5996 List!19068)) )
))
(declare-fun lt!419256 () ListLongMap!11961)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5003 (ListLongMap!11961 (_ BitVec 64)) Bool)

(assert (=> b!930667 (= res!626881 (contains!5003 lt!419256 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9511 0))(
  ( (ValueCellFull!9511 (v!12561 V!31611)) (EmptyCell!9511) )
))
(declare-datatypes ((array!55942 0))(
  ( (array!55943 (arr!26912 (Array (_ BitVec 32) ValueCell!9511)) (size!27372 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55942)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31611)

(declare-fun minValue!1173 () V!31611)

(declare-fun getCurrentListMap!3197 (array!55940 array!55942 (_ BitVec 32) (_ BitVec 32) V!31611 V!31611 (_ BitVec 32) Int) ListLongMap!11961)

(assert (=> b!930667 (= lt!419256 (getCurrentListMap!3197 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930668 () Bool)

(declare-fun res!626880 () Bool)

(assert (=> b!930668 (=> (not res!626880) (not e!522665))))

(assert (=> b!930668 (= res!626880 (and (= (size!27372 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27371 _keys!1487) (size!27372 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!626882 () Bool)

(assert (=> start!79292 (=> (not res!626882) (not e!522665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79292 (= res!626882 (validMask!0 mask!1881))))

(assert (=> start!79292 e!522665))

(assert (=> start!79292 true))

(declare-fun e!522664 () Bool)

(declare-fun array_inv!20924 (array!55942) Bool)

(assert (=> start!79292 (and (array_inv!20924 _values!1231) e!522664)))

(assert (=> start!79292 tp!60873))

(declare-fun array_inv!20925 (array!55940) Bool)

(assert (=> start!79292 (array_inv!20925 _keys!1487)))

(declare-fun tp_is_empty!19985 () Bool)

(assert (=> start!79292 tp_is_empty!19985))

(declare-fun mapNonEmpty!31734 () Bool)

(declare-fun mapRes!31734 () Bool)

(declare-fun tp!60872 () Bool)

(declare-fun e!522666 () Bool)

(assert (=> mapNonEmpty!31734 (= mapRes!31734 (and tp!60872 e!522666))))

(declare-fun mapValue!31734 () ValueCell!9511)

(declare-fun mapRest!31734 () (Array (_ BitVec 32) ValueCell!9511))

(declare-fun mapKey!31734 () (_ BitVec 32))

(assert (=> mapNonEmpty!31734 (= (arr!26912 _values!1231) (store mapRest!31734 mapKey!31734 mapValue!31734))))

(declare-fun b!930669 () Bool)

(assert (=> b!930669 (= e!522666 tp_is_empty!19985)))

(declare-fun b!930670 () Bool)

(declare-fun e!522669 () Bool)

(assert (=> b!930670 (= e!522669 tp_is_empty!19985)))

(declare-fun mapIsEmpty!31734 () Bool)

(assert (=> mapIsEmpty!31734 mapRes!31734))

(declare-fun b!930671 () Bool)

(declare-fun res!626879 () Bool)

(assert (=> b!930671 (=> (not res!626879) (not e!522665))))

(assert (=> b!930671 (= res!626879 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27371 _keys!1487))))))

(declare-fun b!930672 () Bool)

(declare-fun res!626877 () Bool)

(assert (=> b!930672 (=> (not res!626877) (not e!522665))))

(declare-datatypes ((List!19069 0))(
  ( (Nil!19066) (Cons!19065 (h!20211 (_ BitVec 64)) (t!27134 List!19069)) )
))
(declare-fun arrayNoDuplicates!0 (array!55940 (_ BitVec 32) List!19069) Bool)

(assert (=> b!930672 (= res!626877 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19066))))

(declare-fun b!930673 () Bool)

(assert (=> b!930673 (= e!522667 false)))

(declare-fun lt!419255 () V!31611)

(declare-fun apply!783 (ListLongMap!11961 (_ BitVec 64)) V!31611)

(assert (=> b!930673 (= lt!419255 (apply!783 lt!419256 k!1099))))

(declare-fun b!930674 () Bool)

(assert (=> b!930674 (= e!522664 (and e!522669 mapRes!31734))))

(declare-fun condMapEmpty!31734 () Bool)

(declare-fun mapDefault!31734 () ValueCell!9511)

