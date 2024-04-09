; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79324 () Bool)

(assert start!79324)

(declare-fun b_free!17509 () Bool)

(declare-fun b_next!17509 () Bool)

(assert (=> start!79324 (= b_free!17509 (not b_next!17509))))

(declare-fun tp!60968 () Bool)

(declare-fun b_and!28593 () Bool)

(assert (=> start!79324 (= tp!60968 b_and!28593)))

(declare-fun mapNonEmpty!31782 () Bool)

(declare-fun mapRes!31782 () Bool)

(declare-fun tp!60969 () Bool)

(declare-fun e!522957 () Bool)

(assert (=> mapNonEmpty!31782 (= mapRes!31782 (and tp!60969 e!522957))))

(declare-datatypes ((V!31655 0))(
  ( (V!31656 (val!10059 Int)) )
))
(declare-datatypes ((ValueCell!9527 0))(
  ( (ValueCellFull!9527 (v!12577 V!31655)) (EmptyCell!9527) )
))
(declare-fun mapValue!31782 () ValueCell!9527)

(declare-fun mapRest!31782 () (Array (_ BitVec 32) ValueCell!9527))

(declare-fun mapKey!31782 () (_ BitVec 32))

(declare-datatypes ((array!56002 0))(
  ( (array!56003 (arr!26942 (Array (_ BitVec 32) ValueCell!9527)) (size!27402 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56002)

(assert (=> mapNonEmpty!31782 (= (arr!26942 _values!1231) (store mapRest!31782 mapKey!31782 mapValue!31782))))

(declare-fun b!931134 () Bool)

(declare-fun res!627204 () Bool)

(declare-fun e!522955 () Bool)

(assert (=> b!931134 (=> (not res!627204) (not e!522955))))

(declare-datatypes ((array!56004 0))(
  ( (array!56005 (arr!26943 (Array (_ BitVec 32) (_ BitVec 64))) (size!27403 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56004)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!931134 (= res!627204 (and (= (size!27402 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27403 _keys!1487) (size!27402 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931135 () Bool)

(declare-fun res!627206 () Bool)

(assert (=> b!931135 (=> (not res!627206) (not e!522955))))

(declare-datatypes ((List!19093 0))(
  ( (Nil!19090) (Cons!19089 (h!20235 (_ BitVec 64)) (t!27158 List!19093)) )
))
(declare-fun arrayNoDuplicates!0 (array!56004 (_ BitVec 32) List!19093) Bool)

(assert (=> b!931135 (= res!627206 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19090))))

(declare-fun res!627205 () Bool)

(assert (=> start!79324 (=> (not res!627205) (not e!522955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79324 (= res!627205 (validMask!0 mask!1881))))

(assert (=> start!79324 e!522955))

(assert (=> start!79324 true))

(declare-fun e!522952 () Bool)

(declare-fun array_inv!20944 (array!56002) Bool)

(assert (=> start!79324 (and (array_inv!20944 _values!1231) e!522952)))

(assert (=> start!79324 tp!60968))

(declare-fun array_inv!20945 (array!56004) Bool)

(assert (=> start!79324 (array_inv!20945 _keys!1487)))

(declare-fun tp_is_empty!20017 () Bool)

(assert (=> start!79324 tp_is_empty!20017))

(declare-fun b!931136 () Bool)

(declare-fun e!522954 () Bool)

(assert (=> b!931136 (= e!522955 e!522954)))

(declare-fun res!627201 () Bool)

(assert (=> b!931136 (=> (not res!627201) (not e!522954))))

(declare-datatypes ((tuple2!13276 0))(
  ( (tuple2!13277 (_1!6648 (_ BitVec 64)) (_2!6648 V!31655)) )
))
(declare-datatypes ((List!19094 0))(
  ( (Nil!19091) (Cons!19090 (h!20236 tuple2!13276) (t!27159 List!19094)) )
))
(declare-datatypes ((ListLongMap!11987 0))(
  ( (ListLongMap!11988 (toList!6009 List!19094)) )
))
(declare-fun lt!419342 () ListLongMap!11987)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5013 (ListLongMap!11987 (_ BitVec 64)) Bool)

(assert (=> b!931136 (= res!627201 (contains!5013 lt!419342 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31655)

(declare-fun minValue!1173 () V!31655)

(declare-fun getCurrentListMap!3207 (array!56004 array!56002 (_ BitVec 32) (_ BitVec 32) V!31655 V!31655 (_ BitVec 32) Int) ListLongMap!11987)

(assert (=> b!931136 (= lt!419342 (getCurrentListMap!3207 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931137 () Bool)

(assert (=> b!931137 (= e!522957 tp_is_empty!20017)))

(declare-fun b!931138 () Bool)

(declare-fun res!627202 () Bool)

(assert (=> b!931138 (=> (not res!627202) (not e!522955))))

(assert (=> b!931138 (= res!627202 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27403 _keys!1487))))))

(declare-fun b!931139 () Bool)

(assert (=> b!931139 (= e!522954 false)))

(declare-fun lt!419343 () V!31655)

(declare-fun apply!795 (ListLongMap!11987 (_ BitVec 64)) V!31655)

(assert (=> b!931139 (= lt!419343 (apply!795 lt!419342 k!1099))))

(declare-fun mapIsEmpty!31782 () Bool)

(assert (=> mapIsEmpty!31782 mapRes!31782))

(declare-fun b!931140 () Bool)

(declare-fun e!522956 () Bool)

(assert (=> b!931140 (= e!522956 tp_is_empty!20017)))

(declare-fun b!931141 () Bool)

(declare-fun res!627203 () Bool)

(assert (=> b!931141 (=> (not res!627203) (not e!522955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56004 (_ BitVec 32)) Bool)

(assert (=> b!931141 (= res!627203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931142 () Bool)

(assert (=> b!931142 (= e!522952 (and e!522956 mapRes!31782))))

(declare-fun condMapEmpty!31782 () Bool)

(declare-fun mapDefault!31782 () ValueCell!9527)

