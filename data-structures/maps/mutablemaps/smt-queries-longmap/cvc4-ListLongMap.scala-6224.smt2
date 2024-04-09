; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79612 () Bool)

(assert start!79612)

(declare-fun b_free!17669 () Bool)

(declare-fun b_next!17669 () Bool)

(assert (=> start!79612 (= b_free!17669 (not b_next!17669))))

(declare-fun tp!61461 () Bool)

(declare-fun b_and!28939 () Bool)

(assert (=> start!79612 (= tp!61461 b_and!28939)))

(declare-fun b!935341 () Bool)

(declare-fun res!629999 () Bool)

(declare-fun e!525230 () Bool)

(assert (=> b!935341 (=> res!629999 e!525230)))

(declare-datatypes ((List!19219 0))(
  ( (Nil!19216) (Cons!19215 (h!20361 (_ BitVec 64)) (t!27440 List!19219)) )
))
(declare-fun noDuplicate!1359 (List!19219) Bool)

(assert (=> b!935341 (= res!629999 (not (noDuplicate!1359 Nil!19216)))))

(declare-fun b!935343 () Bool)

(declare-fun res!629988 () Bool)

(assert (=> b!935343 (=> res!629988 e!525230)))

(declare-fun contains!5086 (List!19219 (_ BitVec 64)) Bool)

(assert (=> b!935343 (= res!629988 (contains!5086 Nil!19216 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935344 () Bool)

(declare-fun res!629995 () Bool)

(declare-fun e!525236 () Bool)

(assert (=> b!935344 (=> (not res!629995) (not e!525236))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56316 0))(
  ( (array!56317 (arr!27095 (Array (_ BitVec 32) (_ BitVec 64))) (size!27555 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56316)

(assert (=> b!935344 (= res!629995 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27555 _keys!1487))))))

(declare-fun b!935345 () Bool)

(declare-fun e!525237 () Bool)

(declare-fun tp_is_empty!20177 () Bool)

(assert (=> b!935345 (= e!525237 tp_is_empty!20177)))

(declare-fun b!935346 () Bool)

(declare-fun e!525233 () Bool)

(declare-fun e!525235 () Bool)

(assert (=> b!935346 (= e!525233 e!525235)))

(declare-fun res!629989 () Bool)

(assert (=> b!935346 (=> (not res!629989) (not e!525235))))

(declare-fun lt!421563 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935346 (= res!629989 (validKeyInArray!0 lt!421563))))

(assert (=> b!935346 (= lt!421563 (select (arr!27095 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!935347 () Bool)

(declare-fun res!629993 () Bool)

(assert (=> b!935347 (=> (not res!629993) (not e!525233))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31867 0))(
  ( (V!31868 (val!10139 Int)) )
))
(declare-fun v!791 () V!31867)

(declare-datatypes ((tuple2!13412 0))(
  ( (tuple2!13413 (_1!6716 (_ BitVec 64)) (_2!6716 V!31867)) )
))
(declare-datatypes ((List!19220 0))(
  ( (Nil!19217) (Cons!19216 (h!20362 tuple2!13412) (t!27441 List!19220)) )
))
(declare-datatypes ((ListLongMap!12123 0))(
  ( (ListLongMap!12124 (toList!6077 List!19220)) )
))
(declare-fun lt!421565 () ListLongMap!12123)

(declare-fun apply!856 (ListLongMap!12123 (_ BitVec 64)) V!31867)

(assert (=> b!935347 (= res!629993 (= (apply!856 lt!421565 k!1099) v!791))))

(declare-fun b!935348 () Bool)

(declare-fun res!629997 () Bool)

(assert (=> b!935348 (=> (not res!629997) (not e!525236))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56316 (_ BitVec 32)) Bool)

(assert (=> b!935348 (= res!629997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!935349 () Bool)

(declare-fun e!525238 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935349 (= e!525238 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935350 () Bool)

(declare-fun arrayContainsKey!0 (array!56316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935350 (= e!525238 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!935351 () Bool)

(declare-fun e!525232 () Bool)

(declare-fun mapRes!32034 () Bool)

(assert (=> b!935351 (= e!525232 (and e!525237 mapRes!32034))))

(declare-fun condMapEmpty!32034 () Bool)

(declare-datatypes ((ValueCell!9607 0))(
  ( (ValueCellFull!9607 (v!12662 V!31867)) (EmptyCell!9607) )
))
(declare-datatypes ((array!56318 0))(
  ( (array!56319 (arr!27096 (Array (_ BitVec 32) ValueCell!9607)) (size!27556 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56318)

(declare-fun mapDefault!32034 () ValueCell!9607)

