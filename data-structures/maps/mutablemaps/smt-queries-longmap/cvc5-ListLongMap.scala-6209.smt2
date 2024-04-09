; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79416 () Bool)

(assert start!79416)

(declare-fun b_free!17575 () Bool)

(declare-fun b_next!17575 () Bool)

(assert (=> start!79416 (= b_free!17575 (not b_next!17575))))

(declare-fun tp!61169 () Bool)

(declare-fun b_and!28727 () Bool)

(assert (=> start!79416 (= tp!61169 b_and!28727)))

(declare-fun b!932623 () Bool)

(declare-fun e!523754 () Bool)

(declare-fun e!523750 () Bool)

(assert (=> b!932623 (= e!523754 e!523750)))

(declare-fun res!628239 () Bool)

(assert (=> b!932623 (=> (not res!628239) (not e!523750))))

(declare-fun lt!420004 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932623 (= res!628239 (validKeyInArray!0 lt!420004))))

(declare-datatypes ((array!56128 0))(
  ( (array!56129 (arr!27004 (Array (_ BitVec 32) (_ BitVec 64))) (size!27464 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56128)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932623 (= lt!420004 (select (arr!27004 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!628243 () Bool)

(declare-fun e!523753 () Bool)

(assert (=> start!79416 (=> (not res!628243) (not e!523753))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79416 (= res!628243 (validMask!0 mask!1881))))

(assert (=> start!79416 e!523753))

(assert (=> start!79416 true))

(declare-fun tp_is_empty!20083 () Bool)

(assert (=> start!79416 tp_is_empty!20083))

(declare-datatypes ((V!31743 0))(
  ( (V!31744 (val!10092 Int)) )
))
(declare-datatypes ((ValueCell!9560 0))(
  ( (ValueCellFull!9560 (v!12611 V!31743)) (EmptyCell!9560) )
))
(declare-datatypes ((array!56130 0))(
  ( (array!56131 (arr!27005 (Array (_ BitVec 32) ValueCell!9560)) (size!27465 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56130)

(declare-fun e!523751 () Bool)

(declare-fun array_inv!20984 (array!56130) Bool)

(assert (=> start!79416 (and (array_inv!20984 _values!1231) e!523751)))

(assert (=> start!79416 tp!61169))

(declare-fun array_inv!20985 (array!56128) Bool)

(assert (=> start!79416 (array_inv!20985 _keys!1487)))

(declare-fun b!932624 () Bool)

(declare-fun res!628244 () Bool)

(assert (=> b!932624 (=> (not res!628244) (not e!523754))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!932624 (= res!628244 (validKeyInArray!0 k!1099))))

(declare-fun b!932625 () Bool)

(declare-fun res!628246 () Bool)

(assert (=> b!932625 (=> (not res!628246) (not e!523753))))

(assert (=> b!932625 (= res!628246 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27464 _keys!1487))))))

(declare-fun b!932626 () Bool)

(declare-fun e!523748 () Bool)

(assert (=> b!932626 (= e!523748 tp_is_empty!20083)))

(declare-fun b!932627 () Bool)

(assert (=> b!932627 (= e!523753 e!523754)))

(declare-fun res!628241 () Bool)

(assert (=> b!932627 (=> (not res!628241) (not e!523754))))

(declare-datatypes ((tuple2!13330 0))(
  ( (tuple2!13331 (_1!6675 (_ BitVec 64)) (_2!6675 V!31743)) )
))
(declare-datatypes ((List!19139 0))(
  ( (Nil!19136) (Cons!19135 (h!20281 tuple2!13330) (t!27266 List!19139)) )
))
(declare-datatypes ((ListLongMap!12041 0))(
  ( (ListLongMap!12042 (toList!6036 List!19139)) )
))
(declare-fun lt!420007 () ListLongMap!12041)

(declare-fun contains!5036 (ListLongMap!12041 (_ BitVec 64)) Bool)

(assert (=> b!932627 (= res!628241 (contains!5036 lt!420007 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31743)

(declare-fun minValue!1173 () V!31743)

(declare-fun getCurrentListMap!3229 (array!56128 array!56130 (_ BitVec 32) (_ BitVec 32) V!31743 V!31743 (_ BitVec 32) Int) ListLongMap!12041)

(assert (=> b!932627 (= lt!420007 (getCurrentListMap!3229 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31884 () Bool)

(declare-fun mapRes!31884 () Bool)

(assert (=> mapIsEmpty!31884 mapRes!31884))

(declare-fun b!932628 () Bool)

(assert (=> b!932628 (= e!523751 (and e!523748 mapRes!31884))))

(declare-fun condMapEmpty!31884 () Bool)

(declare-fun mapDefault!31884 () ValueCell!9560)

