; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79404 () Bool)

(assert start!79404)

(declare-fun b_free!17563 () Bool)

(declare-fun b_next!17563 () Bool)

(assert (=> start!79404 (= b_free!17563 (not b_next!17563))))

(declare-fun tp!61134 () Bool)

(declare-fun b_and!28703 () Bool)

(assert (=> start!79404 (= tp!61134 b_and!28703)))

(declare-fun b!932377 () Bool)

(declare-fun res!628062 () Bool)

(declare-fun e!523623 () Bool)

(assert (=> b!932377 (=> (not res!628062) (not e!523623))))

(declare-datatypes ((array!56104 0))(
  ( (array!56105 (arr!26992 (Array (_ BitVec 32) (_ BitVec 64))) (size!27452 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56104)

(declare-datatypes ((List!19129 0))(
  ( (Nil!19126) (Cons!19125 (h!20271 (_ BitVec 64)) (t!27244 List!19129)) )
))
(declare-fun arrayNoDuplicates!0 (array!56104 (_ BitVec 32) List!19129) Bool)

(assert (=> b!932377 (= res!628062 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19126))))

(declare-fun b!932378 () Bool)

(declare-fun res!628064 () Bool)

(declare-fun e!523625 () Bool)

(assert (=> b!932378 (=> (not res!628064) (not e!523625))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932378 (= res!628064 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932379 () Bool)

(declare-fun res!628061 () Bool)

(assert (=> b!932379 (=> (not res!628061) (not e!523625))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31727 0))(
  ( (V!31728 (val!10086 Int)) )
))
(declare-datatypes ((tuple2!13318 0))(
  ( (tuple2!13319 (_1!6669 (_ BitVec 64)) (_2!6669 V!31727)) )
))
(declare-datatypes ((List!19130 0))(
  ( (Nil!19127) (Cons!19126 (h!20272 tuple2!13318) (t!27245 List!19130)) )
))
(declare-datatypes ((ListLongMap!12029 0))(
  ( (ListLongMap!12030 (toList!6030 List!19130)) )
))
(declare-fun lt!419879 () ListLongMap!12029)

(declare-fun v!791 () V!31727)

(declare-fun apply!815 (ListLongMap!12029 (_ BitVec 64)) V!31727)

(assert (=> b!932379 (= res!628061 (= (apply!815 lt!419879 k!1099) v!791))))

(declare-fun mapNonEmpty!31866 () Bool)

(declare-fun mapRes!31866 () Bool)

(declare-fun tp!61133 () Bool)

(declare-fun e!523624 () Bool)

(assert (=> mapNonEmpty!31866 (= mapRes!31866 (and tp!61133 e!523624))))

(declare-datatypes ((ValueCell!9554 0))(
  ( (ValueCellFull!9554 (v!12605 V!31727)) (EmptyCell!9554) )
))
(declare-datatypes ((array!56106 0))(
  ( (array!56107 (arr!26993 (Array (_ BitVec 32) ValueCell!9554)) (size!27453 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56106)

(declare-fun mapKey!31866 () (_ BitVec 32))

(declare-fun mapRest!31866 () (Array (_ BitVec 32) ValueCell!9554))

(declare-fun mapValue!31866 () ValueCell!9554)

(assert (=> mapNonEmpty!31866 (= (arr!26993 _values!1231) (store mapRest!31866 mapKey!31866 mapValue!31866))))

(declare-fun b!932380 () Bool)

(declare-fun e!523622 () Bool)

(assert (=> b!932380 (= e!523625 e!523622)))

(declare-fun res!628067 () Bool)

(assert (=> b!932380 (=> (not res!628067) (not e!523622))))

(declare-fun lt!419882 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932380 (= res!628067 (validKeyInArray!0 lt!419882))))

(assert (=> b!932380 (= lt!419882 (select (arr!26992 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932381 () Bool)

(declare-fun res!628058 () Bool)

(assert (=> b!932381 (=> (not res!628058) (not e!523623))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56104 (_ BitVec 32)) Bool)

(assert (=> b!932381 (= res!628058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!628059 () Bool)

(assert (=> start!79404 (=> (not res!628059) (not e!523623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79404 (= res!628059 (validMask!0 mask!1881))))

(assert (=> start!79404 e!523623))

(assert (=> start!79404 true))

(declare-fun tp_is_empty!20071 () Bool)

(assert (=> start!79404 tp_is_empty!20071))

(declare-fun e!523628 () Bool)

(declare-fun array_inv!20978 (array!56106) Bool)

(assert (=> start!79404 (and (array_inv!20978 _values!1231) e!523628)))

(assert (=> start!79404 tp!61134))

(declare-fun array_inv!20979 (array!56104) Bool)

(assert (=> start!79404 (array_inv!20979 _keys!1487)))

(declare-fun b!932382 () Bool)

(declare-fun res!628065 () Bool)

(assert (=> b!932382 (=> (not res!628065) (not e!523625))))

(assert (=> b!932382 (= res!628065 (validKeyInArray!0 k!1099))))

(declare-fun b!932383 () Bool)

(assert (=> b!932383 (= e!523623 e!523625)))

(declare-fun res!628063 () Bool)

(assert (=> b!932383 (=> (not res!628063) (not e!523625))))

(declare-fun contains!5030 (ListLongMap!12029 (_ BitVec 64)) Bool)

(assert (=> b!932383 (= res!628063 (contains!5030 lt!419879 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31727)

(declare-fun minValue!1173 () V!31727)

(declare-fun getCurrentListMap!3223 (array!56104 array!56106 (_ BitVec 32) (_ BitVec 32) V!31727 V!31727 (_ BitVec 32) Int) ListLongMap!12029)

(assert (=> b!932383 (= lt!419879 (getCurrentListMap!3223 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932384 () Bool)

(assert (=> b!932384 (= e!523624 tp_is_empty!20071)))

(declare-fun b!932385 () Bool)

(declare-fun res!628066 () Bool)

(assert (=> b!932385 (=> (not res!628066) (not e!523623))))

(assert (=> b!932385 (= res!628066 (and (= (size!27453 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27452 _keys!1487) (size!27453 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932386 () Bool)

(assert (=> b!932386 (= e!523622 (not true))))

(assert (=> b!932386 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19126)))

(declare-datatypes ((Unit!31462 0))(
  ( (Unit!31463) )
))
(declare-fun lt!419883 () Unit!31462)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56104 (_ BitVec 32) (_ BitVec 32)) Unit!31462)

(assert (=> b!932386 (= lt!419883 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419884 () tuple2!13318)

(declare-fun +!2737 (ListLongMap!12029 tuple2!13318) ListLongMap!12029)

(assert (=> b!932386 (contains!5030 (+!2737 lt!419879 lt!419884) k!1099)))

(declare-fun lt!419880 () Unit!31462)

(declare-fun lt!419881 () V!31727)

(declare-fun addStillContains!493 (ListLongMap!12029 (_ BitVec 64) V!31727 (_ BitVec 64)) Unit!31462)

(assert (=> b!932386 (= lt!419880 (addStillContains!493 lt!419879 lt!419882 lt!419881 k!1099))))

(assert (=> b!932386 (= (getCurrentListMap!3223 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2737 (getCurrentListMap!3223 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419884))))

(assert (=> b!932386 (= lt!419884 (tuple2!13319 lt!419882 lt!419881))))

(declare-fun get!14207 (ValueCell!9554 V!31727) V!31727)

(declare-fun dynLambda!1576 (Int (_ BitVec 64)) V!31727)

(assert (=> b!932386 (= lt!419881 (get!14207 (select (arr!26993 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1576 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419878 () Unit!31462)

(declare-fun lemmaListMapRecursiveValidKeyArray!172 (array!56104 array!56106 (_ BitVec 32) (_ BitVec 32) V!31727 V!31727 (_ BitVec 32) Int) Unit!31462)

(assert (=> b!932386 (= lt!419878 (lemmaListMapRecursiveValidKeyArray!172 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932387 () Bool)

(declare-fun e!523626 () Bool)

(assert (=> b!932387 (= e!523626 tp_is_empty!20071)))

(declare-fun b!932388 () Bool)

(assert (=> b!932388 (= e!523628 (and e!523626 mapRes!31866))))

(declare-fun condMapEmpty!31866 () Bool)

(declare-fun mapDefault!31866 () ValueCell!9554)

