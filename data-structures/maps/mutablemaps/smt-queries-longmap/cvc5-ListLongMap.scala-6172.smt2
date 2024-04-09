; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79168 () Bool)

(assert start!79168)

(declare-fun b_free!17353 () Bool)

(declare-fun b_next!17353 () Bool)

(assert (=> start!79168 (= b_free!17353 (not b_next!17353))))

(declare-fun tp!60500 () Bool)

(declare-fun b_and!28437 () Bool)

(assert (=> start!79168 (= tp!60500 b_and!28437)))

(declare-fun b!928767 () Bool)

(declare-fun e!521553 () Bool)

(declare-fun e!521551 () Bool)

(assert (=> b!928767 (= e!521553 e!521551)))

(declare-fun res!625541 () Bool)

(assert (=> b!928767 (=> (not res!625541) (not e!521551))))

(declare-datatypes ((V!31447 0))(
  ( (V!31448 (val!9981 Int)) )
))
(declare-datatypes ((tuple2!13150 0))(
  ( (tuple2!13151 (_1!6585 (_ BitVec 64)) (_2!6585 V!31447)) )
))
(declare-datatypes ((List!18973 0))(
  ( (Nil!18970) (Cons!18969 (h!20115 tuple2!13150) (t!27038 List!18973)) )
))
(declare-datatypes ((ListLongMap!11861 0))(
  ( (ListLongMap!11862 (toList!5946 List!18973)) )
))
(declare-fun lt!418911 () ListLongMap!11861)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4963 (ListLongMap!11861 (_ BitVec 64)) Bool)

(assert (=> b!928767 (= res!625541 (contains!4963 lt!418911 k!1099))))

(declare-datatypes ((array!55698 0))(
  ( (array!55699 (arr!26790 (Array (_ BitVec 32) (_ BitVec 64))) (size!27250 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55698)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9449 0))(
  ( (ValueCellFull!9449 (v!12499 V!31447)) (EmptyCell!9449) )
))
(declare-datatypes ((array!55700 0))(
  ( (array!55701 (arr!26791 (Array (_ BitVec 32) ValueCell!9449)) (size!27251 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55700)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31447)

(declare-fun minValue!1173 () V!31447)

(declare-fun getCurrentListMap!3157 (array!55698 array!55700 (_ BitVec 32) (_ BitVec 32) V!31447 V!31447 (_ BitVec 32) Int) ListLongMap!11861)

(assert (=> b!928767 (= lt!418911 (getCurrentListMap!3157 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31548 () Bool)

(declare-fun mapRes!31548 () Bool)

(declare-fun tp!60501 () Bool)

(declare-fun e!521548 () Bool)

(assert (=> mapNonEmpty!31548 (= mapRes!31548 (and tp!60501 e!521548))))

(declare-fun mapKey!31548 () (_ BitVec 32))

(declare-fun mapValue!31548 () ValueCell!9449)

(declare-fun mapRest!31548 () (Array (_ BitVec 32) ValueCell!9449))

(assert (=> mapNonEmpty!31548 (= (arr!26791 _values!1231) (store mapRest!31548 mapKey!31548 mapValue!31548))))

(declare-fun b!928768 () Bool)

(assert (=> b!928768 (= e!521551 false)))

(declare-fun lt!418910 () V!31447)

(declare-fun apply!741 (ListLongMap!11861 (_ BitVec 64)) V!31447)

(assert (=> b!928768 (= lt!418910 (apply!741 lt!418911 k!1099))))

(declare-fun mapIsEmpty!31548 () Bool)

(assert (=> mapIsEmpty!31548 mapRes!31548))

(declare-fun b!928769 () Bool)

(declare-fun res!625538 () Bool)

(assert (=> b!928769 (=> (not res!625538) (not e!521553))))

(assert (=> b!928769 (= res!625538 (and (= (size!27251 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27250 _keys!1487) (size!27251 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928770 () Bool)

(declare-fun e!521552 () Bool)

(declare-fun tp_is_empty!19861 () Bool)

(assert (=> b!928770 (= e!521552 tp_is_empty!19861)))

(declare-fun b!928771 () Bool)

(declare-fun res!625536 () Bool)

(assert (=> b!928771 (=> (not res!625536) (not e!521553))))

(assert (=> b!928771 (= res!625536 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27250 _keys!1487))))))

(declare-fun b!928772 () Bool)

(declare-fun res!625539 () Bool)

(assert (=> b!928772 (=> (not res!625539) (not e!521553))))

(declare-datatypes ((List!18974 0))(
  ( (Nil!18971) (Cons!18970 (h!20116 (_ BitVec 64)) (t!27039 List!18974)) )
))
(declare-fun arrayNoDuplicates!0 (array!55698 (_ BitVec 32) List!18974) Bool)

(assert (=> b!928772 (= res!625539 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18971))))

(declare-fun b!928773 () Bool)

(assert (=> b!928773 (= e!521548 tp_is_empty!19861)))

(declare-fun b!928774 () Bool)

(declare-fun res!625540 () Bool)

(assert (=> b!928774 (=> (not res!625540) (not e!521553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55698 (_ BitVec 32)) Bool)

(assert (=> b!928774 (= res!625540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!625537 () Bool)

(assert (=> start!79168 (=> (not res!625537) (not e!521553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79168 (= res!625537 (validMask!0 mask!1881))))

(assert (=> start!79168 e!521553))

(assert (=> start!79168 true))

(declare-fun e!521550 () Bool)

(declare-fun array_inv!20848 (array!55700) Bool)

(assert (=> start!79168 (and (array_inv!20848 _values!1231) e!521550)))

(assert (=> start!79168 tp!60500))

(declare-fun array_inv!20849 (array!55698) Bool)

(assert (=> start!79168 (array_inv!20849 _keys!1487)))

(assert (=> start!79168 tp_is_empty!19861))

(declare-fun b!928775 () Bool)

(assert (=> b!928775 (= e!521550 (and e!521552 mapRes!31548))))

(declare-fun condMapEmpty!31548 () Bool)

(declare-fun mapDefault!31548 () ValueCell!9449)

