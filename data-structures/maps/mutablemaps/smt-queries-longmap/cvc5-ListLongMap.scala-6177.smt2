; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79198 () Bool)

(assert start!79198)

(declare-fun b_free!17383 () Bool)

(declare-fun b_next!17383 () Bool)

(assert (=> start!79198 (= b_free!17383 (not b_next!17383))))

(declare-fun tp!60590 () Bool)

(declare-fun b_and!28467 () Bool)

(assert (=> start!79198 (= tp!60590 b_and!28467)))

(declare-fun b!929185 () Bool)

(declare-fun res!625820 () Bool)

(declare-fun e!521822 () Bool)

(assert (=> b!929185 (=> (not res!625820) (not e!521822))))

(declare-datatypes ((array!55754 0))(
  ( (array!55755 (arr!26818 (Array (_ BitVec 32) (_ BitVec 64))) (size!27278 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55754)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55754 (_ BitVec 32)) Bool)

(assert (=> b!929185 (= res!625820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929186 () Bool)

(declare-fun res!625825 () Bool)

(assert (=> b!929186 (=> (not res!625825) (not e!521822))))

(declare-datatypes ((List!18995 0))(
  ( (Nil!18992) (Cons!18991 (h!20137 (_ BitVec 64)) (t!27060 List!18995)) )
))
(declare-fun arrayNoDuplicates!0 (array!55754 (_ BitVec 32) List!18995) Bool)

(assert (=> b!929186 (= res!625825 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18992))))

(declare-fun b!929187 () Bool)

(declare-fun res!625822 () Bool)

(assert (=> b!929187 (=> (not res!625822) (not e!521822))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31487 0))(
  ( (V!31488 (val!9996 Int)) )
))
(declare-datatypes ((ValueCell!9464 0))(
  ( (ValueCellFull!9464 (v!12514 V!31487)) (EmptyCell!9464) )
))
(declare-datatypes ((array!55756 0))(
  ( (array!55757 (arr!26819 (Array (_ BitVec 32) ValueCell!9464)) (size!27279 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55756)

(assert (=> b!929187 (= res!625822 (and (= (size!27279 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27278 _keys!1487) (size!27279 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929188 () Bool)

(declare-fun e!521823 () Bool)

(assert (=> b!929188 (= e!521823 false)))

(declare-fun lt!418991 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31487)

(declare-fun minValue!1173 () V!31487)

(declare-datatypes ((tuple2!13174 0))(
  ( (tuple2!13175 (_1!6597 (_ BitVec 64)) (_2!6597 V!31487)) )
))
(declare-datatypes ((List!18996 0))(
  ( (Nil!18993) (Cons!18992 (h!20138 tuple2!13174) (t!27061 List!18996)) )
))
(declare-datatypes ((ListLongMap!11885 0))(
  ( (ListLongMap!11886 (toList!5958 List!18996)) )
))
(declare-fun contains!4974 (ListLongMap!11885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3168 (array!55754 array!55756 (_ BitVec 32) (_ BitVec 32) V!31487 V!31487 (_ BitVec 32) Int) ListLongMap!11885)

(assert (=> b!929188 (= lt!418991 (contains!4974 (getCurrentListMap!3168 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!929189 () Bool)

(declare-fun e!521819 () Bool)

(declare-fun e!521818 () Bool)

(declare-fun mapRes!31593 () Bool)

(assert (=> b!929189 (= e!521819 (and e!521818 mapRes!31593))))

(declare-fun condMapEmpty!31593 () Bool)

(declare-fun mapDefault!31593 () ValueCell!9464)

