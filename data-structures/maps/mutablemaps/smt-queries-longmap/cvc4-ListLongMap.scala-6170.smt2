; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79160 () Bool)

(assert start!79160)

(declare-fun b_free!17345 () Bool)

(declare-fun b_next!17345 () Bool)

(assert (=> start!79160 (= b_free!17345 (not b_next!17345))))

(declare-fun tp!60477 () Bool)

(declare-fun b_and!28429 () Bool)

(assert (=> start!79160 (= tp!60477 b_and!28429)))

(declare-fun b!928660 () Bool)

(declare-fun res!625467 () Bool)

(declare-fun e!521480 () Bool)

(assert (=> b!928660 (=> (not res!625467) (not e!521480))))

(declare-datatypes ((array!55682 0))(
  ( (array!55683 (arr!26782 (Array (_ BitVec 32) (_ BitVec 64))) (size!27242 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55682)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31435 0))(
  ( (V!31436 (val!9977 Int)) )
))
(declare-datatypes ((ValueCell!9445 0))(
  ( (ValueCellFull!9445 (v!12495 V!31435)) (EmptyCell!9445) )
))
(declare-datatypes ((array!55684 0))(
  ( (array!55685 (arr!26783 (Array (_ BitVec 32) ValueCell!9445)) (size!27243 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55684)

(assert (=> b!928660 (= res!625467 (and (= (size!27243 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27242 _keys!1487) (size!27243 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31536 () Bool)

(declare-fun mapRes!31536 () Bool)

(assert (=> mapIsEmpty!31536 mapRes!31536))

(declare-fun b!928661 () Bool)

(declare-fun res!625466 () Bool)

(assert (=> b!928661 (=> (not res!625466) (not e!521480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55682 (_ BitVec 32)) Bool)

(assert (=> b!928661 (= res!625466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31536 () Bool)

(declare-fun tp!60476 () Bool)

(declare-fun e!521477 () Bool)

(assert (=> mapNonEmpty!31536 (= mapRes!31536 (and tp!60476 e!521477))))

(declare-fun mapRest!31536 () (Array (_ BitVec 32) ValueCell!9445))

(declare-fun mapValue!31536 () ValueCell!9445)

(declare-fun mapKey!31536 () (_ BitVec 32))

(assert (=> mapNonEmpty!31536 (= (arr!26783 _values!1231) (store mapRest!31536 mapKey!31536 mapValue!31536))))

(declare-fun b!928662 () Bool)

(declare-fun e!521479 () Bool)

(assert (=> b!928662 (= e!521479 false)))

(declare-fun lt!418887 () V!31435)

(declare-datatypes ((tuple2!13142 0))(
  ( (tuple2!13143 (_1!6581 (_ BitVec 64)) (_2!6581 V!31435)) )
))
(declare-datatypes ((List!18966 0))(
  ( (Nil!18963) (Cons!18962 (h!20108 tuple2!13142) (t!27031 List!18966)) )
))
(declare-datatypes ((ListLongMap!11853 0))(
  ( (ListLongMap!11854 (toList!5942 List!18966)) )
))
(declare-fun lt!418886 () ListLongMap!11853)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!738 (ListLongMap!11853 (_ BitVec 64)) V!31435)

(assert (=> b!928662 (= lt!418887 (apply!738 lt!418886 k!1099))))

(declare-fun b!928663 () Bool)

(declare-fun tp_is_empty!19853 () Bool)

(assert (=> b!928663 (= e!521477 tp_is_empty!19853)))

(declare-fun res!625469 () Bool)

(assert (=> start!79160 (=> (not res!625469) (not e!521480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79160 (= res!625469 (validMask!0 mask!1881))))

(assert (=> start!79160 e!521480))

(assert (=> start!79160 true))

(declare-fun e!521478 () Bool)

(declare-fun array_inv!20844 (array!55684) Bool)

(assert (=> start!79160 (and (array_inv!20844 _values!1231) e!521478)))

(assert (=> start!79160 tp!60477))

(declare-fun array_inv!20845 (array!55682) Bool)

(assert (=> start!79160 (array_inv!20845 _keys!1487)))

(assert (=> start!79160 tp_is_empty!19853))

(declare-fun b!928659 () Bool)

(declare-fun res!625468 () Bool)

(assert (=> b!928659 (=> (not res!625468) (not e!521480))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928659 (= res!625468 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27242 _keys!1487))))))

(declare-fun b!928664 () Bool)

(declare-fun e!521476 () Bool)

(assert (=> b!928664 (= e!521476 tp_is_empty!19853)))

(declare-fun b!928665 () Bool)

(assert (=> b!928665 (= e!521480 e!521479)))

(declare-fun res!625465 () Bool)

(assert (=> b!928665 (=> (not res!625465) (not e!521479))))

(declare-fun contains!4960 (ListLongMap!11853 (_ BitVec 64)) Bool)

(assert (=> b!928665 (= res!625465 (contains!4960 lt!418886 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31435)

(declare-fun minValue!1173 () V!31435)

(declare-fun getCurrentListMap!3154 (array!55682 array!55684 (_ BitVec 32) (_ BitVec 32) V!31435 V!31435 (_ BitVec 32) Int) ListLongMap!11853)

(assert (=> b!928665 (= lt!418886 (getCurrentListMap!3154 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928666 () Bool)

(declare-fun res!625464 () Bool)

(assert (=> b!928666 (=> (not res!625464) (not e!521480))))

(declare-datatypes ((List!18967 0))(
  ( (Nil!18964) (Cons!18963 (h!20109 (_ BitVec 64)) (t!27032 List!18967)) )
))
(declare-fun arrayNoDuplicates!0 (array!55682 (_ BitVec 32) List!18967) Bool)

(assert (=> b!928666 (= res!625464 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18964))))

(declare-fun b!928667 () Bool)

(assert (=> b!928667 (= e!521478 (and e!521476 mapRes!31536))))

(declare-fun condMapEmpty!31536 () Bool)

(declare-fun mapDefault!31536 () ValueCell!9445)

