; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79386 () Bool)

(assert start!79386)

(declare-fun b_free!17545 () Bool)

(declare-fun b_next!17545 () Bool)

(assert (=> start!79386 (= b_free!17545 (not b_next!17545))))

(declare-fun tp!61079 () Bool)

(declare-fun b_and!28667 () Bool)

(assert (=> start!79386 (= tp!61079 b_and!28667)))

(declare-fun b!932008 () Bool)

(declare-fun e!523439 () Bool)

(declare-fun e!523434 () Bool)

(assert (=> b!932008 (= e!523439 e!523434)))

(declare-fun res!627794 () Bool)

(assert (=> b!932008 (=> (not res!627794) (not e!523434))))

(declare-fun lt!419715 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932008 (= res!627794 (validKeyInArray!0 lt!419715))))

(declare-datatypes ((array!56074 0))(
  ( (array!56075 (arr!26977 (Array (_ BitVec 32) (_ BitVec 64))) (size!27437 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56074)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932008 (= lt!419715 (select (arr!26977 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932009 () Bool)

(assert (=> b!932009 (= e!523434 (not (or (bvsge (size!27437 _keys!1487) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!27437 _keys!1487)))))))

(declare-datatypes ((V!31703 0))(
  ( (V!31704 (val!10077 Int)) )
))
(declare-datatypes ((tuple2!13306 0))(
  ( (tuple2!13307 (_1!6663 (_ BitVec 64)) (_2!6663 V!31703)) )
))
(declare-datatypes ((List!19119 0))(
  ( (Nil!19116) (Cons!19115 (h!20261 tuple2!13306) (t!27216 List!19119)) )
))
(declare-datatypes ((ListLongMap!12017 0))(
  ( (ListLongMap!12018 (toList!6024 List!19119)) )
))
(declare-fun lt!419716 () ListLongMap!12017)

(declare-fun lt!419714 () tuple2!13306)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5025 (ListLongMap!12017 (_ BitVec 64)) Bool)

(declare-fun +!2732 (ListLongMap!12017 tuple2!13306) ListLongMap!12017)

(assert (=> b!932009 (contains!5025 (+!2732 lt!419716 lt!419714) k!1099)))

(declare-fun lt!419718 () V!31703)

(declare-datatypes ((Unit!31452 0))(
  ( (Unit!31453) )
))
(declare-fun lt!419717 () Unit!31452)

(declare-fun addStillContains!488 (ListLongMap!12017 (_ BitVec 64) V!31703 (_ BitVec 64)) Unit!31452)

(assert (=> b!932009 (= lt!419717 (addStillContains!488 lt!419716 lt!419715 lt!419718 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9545 0))(
  ( (ValueCellFull!9545 (v!12596 V!31703)) (EmptyCell!9545) )
))
(declare-datatypes ((array!56076 0))(
  ( (array!56077 (arr!26978 (Array (_ BitVec 32) ValueCell!9545)) (size!27438 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56076)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31703)

(declare-fun minValue!1173 () V!31703)

(declare-fun getCurrentListMap!3218 (array!56074 array!56076 (_ BitVec 32) (_ BitVec 32) V!31703 V!31703 (_ BitVec 32) Int) ListLongMap!12017)

(assert (=> b!932009 (= (getCurrentListMap!3218 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2732 (getCurrentListMap!3218 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419714))))

(assert (=> b!932009 (= lt!419714 (tuple2!13307 lt!419715 lt!419718))))

(declare-fun get!14196 (ValueCell!9545 V!31703) V!31703)

(declare-fun dynLambda!1571 (Int (_ BitVec 64)) V!31703)

(assert (=> b!932009 (= lt!419718 (get!14196 (select (arr!26978 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1571 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419719 () Unit!31452)

(declare-fun lemmaListMapRecursiveValidKeyArray!167 (array!56074 array!56076 (_ BitVec 32) (_ BitVec 32) V!31703 V!31703 (_ BitVec 32) Int) Unit!31452)

(assert (=> b!932009 (= lt!419719 (lemmaListMapRecursiveValidKeyArray!167 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932010 () Bool)

(declare-fun res!627791 () Bool)

(declare-fun e!523433 () Bool)

(assert (=> b!932010 (=> (not res!627791) (not e!523433))))

(assert (=> b!932010 (= res!627791 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27437 _keys!1487))))))

(declare-fun b!932011 () Bool)

(declare-fun res!627790 () Bool)

(assert (=> b!932011 (=> (not res!627790) (not e!523439))))

(declare-fun v!791 () V!31703)

(declare-fun apply!809 (ListLongMap!12017 (_ BitVec 64)) V!31703)

(assert (=> b!932011 (= res!627790 (= (apply!809 lt!419716 k!1099) v!791))))

(declare-fun b!932012 () Bool)

(declare-fun res!627793 () Bool)

(assert (=> b!932012 (=> (not res!627793) (not e!523433))))

(assert (=> b!932012 (= res!627793 (and (= (size!27438 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27437 _keys!1487) (size!27438 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932013 () Bool)

(declare-fun res!627792 () Bool)

(assert (=> b!932013 (=> (not res!627792) (not e!523439))))

(assert (=> b!932013 (= res!627792 (validKeyInArray!0 k!1099))))

(declare-fun res!627789 () Bool)

(assert (=> start!79386 (=> (not res!627789) (not e!523433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79386 (= res!627789 (validMask!0 mask!1881))))

(assert (=> start!79386 e!523433))

(assert (=> start!79386 true))

(declare-fun tp_is_empty!20053 () Bool)

(assert (=> start!79386 tp_is_empty!20053))

(declare-fun e!523435 () Bool)

(declare-fun array_inv!20968 (array!56076) Bool)

(assert (=> start!79386 (and (array_inv!20968 _values!1231) e!523435)))

(assert (=> start!79386 tp!61079))

(declare-fun array_inv!20969 (array!56074) Bool)

(assert (=> start!79386 (array_inv!20969 _keys!1487)))

(declare-fun b!932014 () Bool)

(declare-fun e!523436 () Bool)

(assert (=> b!932014 (= e!523436 tp_is_empty!20053)))

(declare-fun b!932015 () Bool)

(assert (=> b!932015 (= e!523433 e!523439)))

(declare-fun res!627797 () Bool)

(assert (=> b!932015 (=> (not res!627797) (not e!523439))))

(assert (=> b!932015 (= res!627797 (contains!5025 lt!419716 k!1099))))

(assert (=> b!932015 (= lt!419716 (getCurrentListMap!3218 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932016 () Bool)

(declare-fun res!627788 () Bool)

(assert (=> b!932016 (=> (not res!627788) (not e!523433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56074 (_ BitVec 32)) Bool)

(assert (=> b!932016 (= res!627788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932017 () Bool)

(declare-fun e!523438 () Bool)

(assert (=> b!932017 (= e!523438 tp_is_empty!20053)))

(declare-fun b!932018 () Bool)

(declare-fun mapRes!31839 () Bool)

(assert (=> b!932018 (= e!523435 (and e!523436 mapRes!31839))))

(declare-fun condMapEmpty!31839 () Bool)

(declare-fun mapDefault!31839 () ValueCell!9545)

