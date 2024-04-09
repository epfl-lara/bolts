; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79408 () Bool)

(assert start!79408)

(declare-fun b_free!17567 () Bool)

(declare-fun b_next!17567 () Bool)

(assert (=> start!79408 (= b_free!17567 (not b_next!17567))))

(declare-fun tp!61146 () Bool)

(declare-fun b_and!28711 () Bool)

(assert (=> start!79408 (= tp!61146 b_and!28711)))

(declare-fun b!932460 () Bool)

(declare-fun res!628122 () Bool)

(declare-fun e!523665 () Bool)

(assert (=> b!932460 (=> (not res!628122) (not e!523665))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31731 0))(
  ( (V!31732 (val!10088 Int)) )
))
(declare-fun v!791 () V!31731)

(declare-datatypes ((tuple2!13322 0))(
  ( (tuple2!13323 (_1!6671 (_ BitVec 64)) (_2!6671 V!31731)) )
))
(declare-datatypes ((List!19133 0))(
  ( (Nil!19130) (Cons!19129 (h!20275 tuple2!13322) (t!27252 List!19133)) )
))
(declare-datatypes ((ListLongMap!12033 0))(
  ( (ListLongMap!12034 (toList!6032 List!19133)) )
))
(declare-fun lt!419926 () ListLongMap!12033)

(declare-fun apply!817 (ListLongMap!12033 (_ BitVec 64)) V!31731)

(assert (=> b!932460 (= res!628122 (= (apply!817 lt!419926 k!1099) v!791))))

(declare-fun b!932461 () Bool)

(declare-fun e!523666 () Bool)

(assert (=> b!932461 (= e!523666 e!523665)))

(declare-fun res!628121 () Bool)

(assert (=> b!932461 (=> (not res!628121) (not e!523665))))

(declare-fun contains!5032 (ListLongMap!12033 (_ BitVec 64)) Bool)

(assert (=> b!932461 (= res!628121 (contains!5032 lt!419926 k!1099))))

(declare-datatypes ((array!56112 0))(
  ( (array!56113 (arr!26996 (Array (_ BitVec 32) (_ BitVec 64))) (size!27456 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56112)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9556 0))(
  ( (ValueCellFull!9556 (v!12607 V!31731)) (EmptyCell!9556) )
))
(declare-datatypes ((array!56114 0))(
  ( (array!56115 (arr!26997 (Array (_ BitVec 32) ValueCell!9556)) (size!27457 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56114)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31731)

(declare-fun minValue!1173 () V!31731)

(declare-fun getCurrentListMap!3225 (array!56112 array!56114 (_ BitVec 32) (_ BitVec 32) V!31731 V!31731 (_ BitVec 32) Int) ListLongMap!12033)

(assert (=> b!932461 (= lt!419926 (getCurrentListMap!3225 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31872 () Bool)

(declare-fun mapRes!31872 () Bool)

(assert (=> mapIsEmpty!31872 mapRes!31872))

(declare-fun b!932462 () Bool)

(declare-fun res!628124 () Bool)

(assert (=> b!932462 (=> (not res!628124) (not e!523666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56112 (_ BitVec 32)) Bool)

(assert (=> b!932462 (= res!628124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31872 () Bool)

(declare-fun tp!61145 () Bool)

(declare-fun e!523668 () Bool)

(assert (=> mapNonEmpty!31872 (= mapRes!31872 (and tp!61145 e!523668))))

(declare-fun mapValue!31872 () ValueCell!9556)

(declare-fun mapKey!31872 () (_ BitVec 32))

(declare-fun mapRest!31872 () (Array (_ BitVec 32) ValueCell!9556))

(assert (=> mapNonEmpty!31872 (= (arr!26997 _values!1231) (store mapRest!31872 mapKey!31872 mapValue!31872))))

(declare-fun b!932463 () Bool)

(declare-fun e!523669 () Bool)

(assert (=> b!932463 (= e!523665 e!523669)))

(declare-fun res!628118 () Bool)

(assert (=> b!932463 (=> (not res!628118) (not e!523669))))

(declare-fun lt!419924 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932463 (= res!628118 (validKeyInArray!0 lt!419924))))

(assert (=> b!932463 (= lt!419924 (select (arr!26996 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932464 () Bool)

(declare-fun res!628119 () Bool)

(assert (=> b!932464 (=> (not res!628119) (not e!523666))))

(assert (=> b!932464 (= res!628119 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27456 _keys!1487))))))

(declare-fun b!932465 () Bool)

(declare-fun res!628123 () Bool)

(assert (=> b!932465 (=> (not res!628123) (not e!523665))))

(assert (=> b!932465 (= res!628123 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932466 () Bool)

(declare-fun e!523667 () Bool)

(declare-fun e!523670 () Bool)

(assert (=> b!932466 (= e!523667 (and e!523670 mapRes!31872))))

(declare-fun condMapEmpty!31872 () Bool)

(declare-fun mapDefault!31872 () ValueCell!9556)

