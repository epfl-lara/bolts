; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79680 () Bool)

(assert start!79680)

(declare-fun b_free!17701 () Bool)

(declare-fun b_next!17701 () Bool)

(assert (=> start!79680 (= b_free!17701 (not b_next!17701))))

(declare-fun tp!61560 () Bool)

(declare-fun b_and!29011 () Bool)

(assert (=> start!79680 (= tp!61560 b_and!29011)))

(declare-fun b!936338 () Bool)

(declare-fun e!525792 () Bool)

(declare-fun tp_is_empty!20209 () Bool)

(assert (=> b!936338 (= e!525792 tp_is_empty!20209)))

(declare-fun b!936339 () Bool)

(declare-fun e!525789 () Bool)

(declare-fun e!525790 () Bool)

(assert (=> b!936339 (= e!525789 e!525790)))

(declare-fun res!630572 () Bool)

(assert (=> b!936339 (=> (not res!630572) (not e!525790))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31911 0))(
  ( (V!31912 (val!10155 Int)) )
))
(declare-fun v!791 () V!31911)

(declare-fun lt!422213 () V!31911)

(assert (=> b!936339 (= res!630572 (and (= lt!422213 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13438 0))(
  ( (tuple2!13439 (_1!6729 (_ BitVec 64)) (_2!6729 V!31911)) )
))
(declare-datatypes ((List!19245 0))(
  ( (Nil!19242) (Cons!19241 (h!20387 tuple2!13438) (t!27498 List!19245)) )
))
(declare-datatypes ((ListLongMap!12149 0))(
  ( (ListLongMap!12150 (toList!6090 List!19245)) )
))
(declare-fun lt!422214 () ListLongMap!12149)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!868 (ListLongMap!12149 (_ BitVec 64)) V!31911)

(assert (=> b!936339 (= lt!422213 (apply!868 lt!422214 k!1099))))

(declare-fun b!936340 () Bool)

(declare-fun e!525791 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!936340 (= e!525791 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936341 () Bool)

(declare-datatypes ((Unit!31588 0))(
  ( (Unit!31589) )
))
(declare-fun e!525794 () Unit!31588)

(declare-fun Unit!31590 () Unit!31588)

(assert (=> b!936341 (= e!525794 Unit!31590)))

(declare-fun b!936342 () Bool)

(assert (=> b!936342 (= e!525790 false)))

(declare-fun lt!422210 () Unit!31588)

(assert (=> b!936342 (= lt!422210 e!525794)))

(declare-fun c!97324 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936342 (= c!97324 (validKeyInArray!0 k!1099))))

(declare-fun b!936343 () Bool)

(declare-datatypes ((array!56382 0))(
  ( (array!56383 (arr!27127 (Array (_ BitVec 32) (_ BitVec 64))) (size!27587 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56382)

(declare-fun arrayContainsKey!0 (array!56382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936343 (= e!525791 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!32085 () Bool)

(declare-fun mapRes!32085 () Bool)

(assert (=> mapIsEmpty!32085 mapRes!32085))

(declare-fun b!936344 () Bool)

(declare-fun e!525788 () Unit!31588)

(declare-fun Unit!31591 () Unit!31588)

(assert (=> b!936344 (= e!525788 Unit!31591)))

(declare-fun b!936345 () Bool)

(declare-fun e!525793 () Bool)

(assert (=> b!936345 (= e!525793 (and e!525792 mapRes!32085))))

(declare-fun condMapEmpty!32085 () Bool)

(declare-datatypes ((ValueCell!9623 0))(
  ( (ValueCellFull!9623 (v!12680 V!31911)) (EmptyCell!9623) )
))
(declare-datatypes ((array!56384 0))(
  ( (array!56385 (arr!27128 (Array (_ BitVec 32) ValueCell!9623)) (size!27588 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56384)

(declare-fun mapDefault!32085 () ValueCell!9623)

