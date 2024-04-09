; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79202 () Bool)

(assert start!79202)

(declare-fun b_free!17387 () Bool)

(declare-fun b_next!17387 () Bool)

(assert (=> start!79202 (= b_free!17387 (not b_next!17387))))

(declare-fun tp!60602 () Bool)

(declare-fun b_and!28471 () Bool)

(assert (=> start!79202 (= tp!60602 b_and!28471)))

(declare-fun mapIsEmpty!31599 () Bool)

(declare-fun mapRes!31599 () Bool)

(assert (=> mapIsEmpty!31599 mapRes!31599))

(declare-fun mapNonEmpty!31599 () Bool)

(declare-fun tp!60603 () Bool)

(declare-fun e!521858 () Bool)

(assert (=> mapNonEmpty!31599 (= mapRes!31599 (and tp!60603 e!521858))))

(declare-datatypes ((V!31491 0))(
  ( (V!31492 (val!9998 Int)) )
))
(declare-datatypes ((ValueCell!9466 0))(
  ( (ValueCellFull!9466 (v!12516 V!31491)) (EmptyCell!9466) )
))
(declare-datatypes ((array!55762 0))(
  ( (array!55763 (arr!26822 (Array (_ BitVec 32) ValueCell!9466)) (size!27282 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55762)

(declare-fun mapKey!31599 () (_ BitVec 32))

(declare-fun mapRest!31599 () (Array (_ BitVec 32) ValueCell!9466))

(declare-fun mapValue!31599 () ValueCell!9466)

(assert (=> mapNonEmpty!31599 (= (arr!26822 _values!1231) (store mapRest!31599 mapKey!31599 mapValue!31599))))

(declare-fun b!929251 () Bool)

(declare-fun res!625872 () Bool)

(declare-fun e!521857 () Bool)

(assert (=> b!929251 (=> (not res!625872) (not e!521857))))

(declare-datatypes ((array!55764 0))(
  ( (array!55765 (arr!26823 (Array (_ BitVec 32) (_ BitVec 64))) (size!27283 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55764)

(declare-datatypes ((List!18999 0))(
  ( (Nil!18996) (Cons!18995 (h!20141 (_ BitVec 64)) (t!27064 List!18999)) )
))
(declare-fun arrayNoDuplicates!0 (array!55764 (_ BitVec 32) List!18999) Bool)

(assert (=> b!929251 (= res!625872 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18996))))

(declare-fun b!929253 () Bool)

(declare-fun tp_is_empty!19895 () Bool)

(assert (=> b!929253 (= e!521858 tp_is_empty!19895)))

(declare-fun b!929254 () Bool)

(declare-fun e!521854 () Bool)

(assert (=> b!929254 (= e!521857 e!521854)))

(declare-fun res!625867 () Bool)

(assert (=> b!929254 (=> (not res!625867) (not e!521854))))

(declare-datatypes ((tuple2!13178 0))(
  ( (tuple2!13179 (_1!6599 (_ BitVec 64)) (_2!6599 V!31491)) )
))
(declare-datatypes ((List!19000 0))(
  ( (Nil!18997) (Cons!18996 (h!20142 tuple2!13178) (t!27065 List!19000)) )
))
(declare-datatypes ((ListLongMap!11889 0))(
  ( (ListLongMap!11890 (toList!5960 List!19000)) )
))
(declare-fun lt!419004 () ListLongMap!11889)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4976 (ListLongMap!11889 (_ BitVec 64)) Bool)

(assert (=> b!929254 (= res!625867 (contains!4976 lt!419004 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31491)

(declare-fun minValue!1173 () V!31491)

(declare-fun getCurrentListMap!3170 (array!55764 array!55762 (_ BitVec 32) (_ BitVec 32) V!31491 V!31491 (_ BitVec 32) Int) ListLongMap!11889)

(assert (=> b!929254 (= lt!419004 (getCurrentListMap!3170 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929255 () Bool)

(declare-fun e!521856 () Bool)

(assert (=> b!929255 (= e!521856 tp_is_empty!19895)))

(declare-fun b!929256 () Bool)

(assert (=> b!929256 (= e!521854 false)))

(declare-fun lt!419003 () Bool)

(assert (=> b!929256 (= lt!419003 (contains!4976 (getCurrentListMap!3170 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!929257 () Bool)

(declare-fun res!625869 () Bool)

(assert (=> b!929257 (=> (not res!625869) (not e!521854))))

(declare-fun v!791 () V!31491)

(declare-fun apply!753 (ListLongMap!11889 (_ BitVec 64)) V!31491)

(assert (=> b!929257 (= res!625869 (= (apply!753 lt!419004 k!1099) v!791))))

(declare-fun res!625874 () Bool)

(assert (=> start!79202 (=> (not res!625874) (not e!521857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79202 (= res!625874 (validMask!0 mask!1881))))

(assert (=> start!79202 e!521857))

(assert (=> start!79202 true))

(assert (=> start!79202 tp_is_empty!19895))

(declare-fun e!521859 () Bool)

(declare-fun array_inv!20868 (array!55762) Bool)

(assert (=> start!79202 (and (array_inv!20868 _values!1231) e!521859)))

(assert (=> start!79202 tp!60602))

(declare-fun array_inv!20869 (array!55764) Bool)

(assert (=> start!79202 (array_inv!20869 _keys!1487)))

(declare-fun b!929252 () Bool)

(assert (=> b!929252 (= e!521859 (and e!521856 mapRes!31599))))

(declare-fun condMapEmpty!31599 () Bool)

(declare-fun mapDefault!31599 () ValueCell!9466)

