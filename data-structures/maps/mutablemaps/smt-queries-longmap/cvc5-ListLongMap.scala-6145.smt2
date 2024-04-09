; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79006 () Bool)

(assert start!79006)

(declare-fun b_free!17191 () Bool)

(declare-fun b_next!17191 () Bool)

(assert (=> start!79006 (= b_free!17191 (not b_next!17191))))

(declare-fun tp!60014 () Bool)

(declare-fun b_and!28137 () Bool)

(assert (=> start!79006 (= tp!60014 b_and!28137)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!924255 () Bool)

(declare-fun e!518696 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55382 0))(
  ( (array!55383 (arr!26632 (Array (_ BitVec 32) (_ BitVec 64))) (size!27092 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55382)

(declare-fun arrayContainsKey!0 (array!55382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924255 (= e!518696 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapNonEmpty!31305 () Bool)

(declare-fun mapRes!31305 () Bool)

(declare-fun tp!60015 () Bool)

(declare-fun e!518695 () Bool)

(assert (=> mapNonEmpty!31305 (= mapRes!31305 (and tp!60015 e!518695))))

(declare-fun mapKey!31305 () (_ BitVec 32))

(declare-datatypes ((V!31231 0))(
  ( (V!31232 (val!9900 Int)) )
))
(declare-datatypes ((ValueCell!9368 0))(
  ( (ValueCellFull!9368 (v!12418 V!31231)) (EmptyCell!9368) )
))
(declare-fun mapValue!31305 () ValueCell!9368)

(declare-datatypes ((array!55384 0))(
  ( (array!55385 (arr!26633 (Array (_ BitVec 32) ValueCell!9368)) (size!27093 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55384)

(declare-fun mapRest!31305 () (Array (_ BitVec 32) ValueCell!9368))

(assert (=> mapNonEmpty!31305 (= (arr!26633 _values!1231) (store mapRest!31305 mapKey!31305 mapValue!31305))))

(declare-fun b!924256 () Bool)

(declare-fun res!623128 () Bool)

(declare-fun e!518698 () Bool)

(assert (=> b!924256 (=> (not res!623128) (not e!518698))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!924256 (= res!623128 (and (= (size!27093 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27092 _keys!1487) (size!27093 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924257 () Bool)

(declare-fun e!518690 () Bool)

(declare-fun tp_is_empty!19699 () Bool)

(assert (=> b!924257 (= e!518690 tp_is_empty!19699)))

(declare-fun b!924258 () Bool)

(declare-fun e!518691 () Bool)

(assert (=> b!924258 (= e!518698 e!518691)))

(declare-fun res!623125 () Bool)

(assert (=> b!924258 (=> (not res!623125) (not e!518691))))

(declare-datatypes ((tuple2!13006 0))(
  ( (tuple2!13007 (_1!6513 (_ BitVec 64)) (_2!6513 V!31231)) )
))
(declare-datatypes ((List!18842 0))(
  ( (Nil!18839) (Cons!18838 (h!19984 tuple2!13006) (t!26771 List!18842)) )
))
(declare-datatypes ((ListLongMap!11717 0))(
  ( (ListLongMap!11718 (toList!5874 List!18842)) )
))
(declare-fun lt!415592 () ListLongMap!11717)

(declare-fun contains!4898 (ListLongMap!11717 (_ BitVec 64)) Bool)

(assert (=> b!924258 (= res!623125 (contains!4898 lt!415592 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31231)

(declare-fun minValue!1173 () V!31231)

(declare-fun getCurrentListMap!3092 (array!55382 array!55384 (_ BitVec 32) (_ BitVec 32) V!31231 V!31231 (_ BitVec 32) Int) ListLongMap!11717)

(assert (=> b!924258 (= lt!415592 (getCurrentListMap!3092 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31305 () Bool)

(assert (=> mapIsEmpty!31305 mapRes!31305))

(declare-fun b!924259 () Bool)

(declare-fun res!623122 () Bool)

(assert (=> b!924259 (=> (not res!623122) (not e!518698))))

(declare-datatypes ((List!18843 0))(
  ( (Nil!18840) (Cons!18839 (h!19985 (_ BitVec 64)) (t!26772 List!18843)) )
))
(declare-fun arrayNoDuplicates!0 (array!55382 (_ BitVec 32) List!18843) Bool)

(assert (=> b!924259 (= res!623122 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18840))))

(declare-fun res!623121 () Bool)

(assert (=> start!79006 (=> (not res!623121) (not e!518698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79006 (= res!623121 (validMask!0 mask!1881))))

(assert (=> start!79006 e!518698))

(assert (=> start!79006 true))

(assert (=> start!79006 tp_is_empty!19699))

(declare-fun e!518693 () Bool)

(declare-fun array_inv!20738 (array!55384) Bool)

(assert (=> start!79006 (and (array_inv!20738 _values!1231) e!518693)))

(assert (=> start!79006 tp!60014))

(declare-fun array_inv!20739 (array!55382) Bool)

(assert (=> start!79006 (array_inv!20739 _keys!1487)))

(declare-fun b!924260 () Bool)

(declare-fun res!623124 () Bool)

(assert (=> b!924260 (=> (not res!623124) (not e!518698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55382 (_ BitVec 32)) Bool)

(assert (=> b!924260 (= res!623124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924261 () Bool)

(declare-fun e!518689 () Bool)

(declare-fun e!518699 () Bool)

(assert (=> b!924261 (= e!518689 e!518699)))

(declare-fun res!623127 () Bool)

(assert (=> b!924261 (=> (not res!623127) (not e!518699))))

(declare-fun lt!415602 () ListLongMap!11717)

(assert (=> b!924261 (= res!623127 (contains!4898 lt!415602 k!1099))))

(assert (=> b!924261 (= lt!415602 (getCurrentListMap!3092 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924262 () Bool)

(declare-datatypes ((Unit!31212 0))(
  ( (Unit!31213) )
))
(declare-fun e!518700 () Unit!31212)

(declare-fun e!518697 () Unit!31212)

(assert (=> b!924262 (= e!518700 e!518697)))

(declare-fun lt!415599 () (_ BitVec 64))

(assert (=> b!924262 (= lt!415599 (select (arr!26632 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96338 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924262 (= c!96338 (validKeyInArray!0 lt!415599))))

(declare-fun b!924263 () Bool)

(assert (=> b!924263 (= e!518693 (and e!518690 mapRes!31305))))

(declare-fun condMapEmpty!31305 () Bool)

(declare-fun mapDefault!31305 () ValueCell!9368)

