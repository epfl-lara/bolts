; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79348 () Bool)

(assert start!79348)

(declare-fun b_free!17533 () Bool)

(declare-fun b_next!17533 () Bool)

(assert (=> start!79348 (= b_free!17533 (not b_next!17533))))

(declare-fun tp!61041 () Bool)

(declare-fun b_and!28635 () Bool)

(assert (=> start!79348 (= tp!61041 b_and!28635)))

(declare-fun b!931592 () Bool)

(declare-fun e!523198 () Bool)

(declare-fun tp_is_empty!20041 () Bool)

(assert (=> b!931592 (= e!523198 tp_is_empty!20041)))

(declare-fun b!931593 () Bool)

(declare-fun e!523199 () Bool)

(assert (=> b!931593 (= e!523199 tp_is_empty!20041)))

(declare-fun b!931595 () Bool)

(declare-fun res!627534 () Bool)

(declare-fun e!523200 () Bool)

(assert (=> b!931595 (=> (not res!627534) (not e!523200))))

(declare-datatypes ((array!56050 0))(
  ( (array!56051 (arr!26966 (Array (_ BitVec 32) (_ BitVec 64))) (size!27426 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56050)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56050 (_ BitVec 32)) Bool)

(assert (=> b!931595 (= res!627534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931596 () Bool)

(declare-fun e!523203 () Bool)

(assert (=> b!931596 (= e!523203 (not (bvslt (size!27426 _keys!1487) #b01111111111111111111111111111111)))))

(declare-datatypes ((V!31687 0))(
  ( (V!31688 (val!10071 Int)) )
))
(declare-datatypes ((tuple2!13298 0))(
  ( (tuple2!13299 (_1!6659 (_ BitVec 64)) (_2!6659 V!31687)) )
))
(declare-datatypes ((List!19113 0))(
  ( (Nil!19110) (Cons!19109 (h!20255 tuple2!13298) (t!27198 List!19113)) )
))
(declare-datatypes ((ListLongMap!12009 0))(
  ( (ListLongMap!12010 (toList!6020 List!19113)) )
))
(declare-fun lt!419450 () ListLongMap!12009)

(declare-fun lt!419451 () tuple2!13298)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5020 (ListLongMap!12009 (_ BitVec 64)) Bool)

(declare-fun +!2729 (ListLongMap!12009 tuple2!13298) ListLongMap!12009)

(assert (=> b!931596 (contains!5020 (+!2729 lt!419450 lt!419451) k!1099)))

(declare-fun lt!419449 () V!31687)

(declare-datatypes ((Unit!31441 0))(
  ( (Unit!31442) )
))
(declare-fun lt!419452 () Unit!31441)

(declare-fun lt!419453 () (_ BitVec 64))

(declare-fun addStillContains!485 (ListLongMap!12009 (_ BitVec 64) V!31687 (_ BitVec 64)) Unit!31441)

(assert (=> b!931596 (= lt!419452 (addStillContains!485 lt!419450 lt!419453 lt!419449 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9539 0))(
  ( (ValueCellFull!9539 (v!12589 V!31687)) (EmptyCell!9539) )
))
(declare-datatypes ((array!56052 0))(
  ( (array!56053 (arr!26967 (Array (_ BitVec 32) ValueCell!9539)) (size!27427 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56052)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31687)

(declare-fun minValue!1173 () V!31687)

(declare-fun getCurrentListMap!3215 (array!56050 array!56052 (_ BitVec 32) (_ BitVec 32) V!31687 V!31687 (_ BitVec 32) Int) ListLongMap!12009)

(assert (=> b!931596 (= (getCurrentListMap!3215 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2729 (getCurrentListMap!3215 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419451))))

(assert (=> b!931596 (= lt!419451 (tuple2!13299 lt!419453 lt!419449))))

(declare-fun get!14186 (ValueCell!9539 V!31687) V!31687)

(declare-fun dynLambda!1568 (Int (_ BitVec 64)) V!31687)

(assert (=> b!931596 (= lt!419449 (get!14186 (select (arr!26967 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1568 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419454 () Unit!31441)

(declare-fun lemmaListMapRecursiveValidKeyArray!164 (array!56050 array!56052 (_ BitVec 32) (_ BitVec 32) V!31687 V!31687 (_ BitVec 32) Int) Unit!31441)

(assert (=> b!931596 (= lt!419454 (lemmaListMapRecursiveValidKeyArray!164 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931597 () Bool)

(declare-fun e!523202 () Bool)

(declare-fun mapRes!31818 () Bool)

(assert (=> b!931597 (= e!523202 (and e!523199 mapRes!31818))))

(declare-fun condMapEmpty!31818 () Bool)

(declare-fun mapDefault!31818 () ValueCell!9539)

