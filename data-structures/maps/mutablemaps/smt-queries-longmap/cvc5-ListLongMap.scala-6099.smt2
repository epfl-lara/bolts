; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78730 () Bool)

(assert start!78730)

(declare-fun b_free!16915 () Bool)

(declare-fun b_next!16915 () Bool)

(assert (=> start!78730 (= b_free!16915 (not b_next!16915))))

(declare-fun tp!59186 () Bool)

(declare-fun b_and!27585 () Bool)

(assert (=> start!78730 (= tp!59186 b_and!27585)))

(declare-fun mapNonEmpty!30891 () Bool)

(declare-fun mapRes!30891 () Bool)

(declare-fun tp!59187 () Bool)

(declare-fun e!515217 () Bool)

(assert (=> mapNonEmpty!30891 (= mapRes!30891 (and tp!59187 e!515217))))

(declare-fun mapKey!30891 () (_ BitVec 32))

(declare-datatypes ((V!30863 0))(
  ( (V!30864 (val!9762 Int)) )
))
(declare-datatypes ((ValueCell!9230 0))(
  ( (ValueCellFull!9230 (v!12280 V!30863)) (EmptyCell!9230) )
))
(declare-fun mapRest!30891 () (Array (_ BitVec 32) ValueCell!9230))

(declare-fun mapValue!30891 () ValueCell!9230)

(declare-datatypes ((array!54838 0))(
  ( (array!54839 (arr!26360 (Array (_ BitVec 32) ValueCell!9230)) (size!26820 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54838)

(assert (=> mapNonEmpty!30891 (= (arr!26360 _values!1231) (store mapRest!30891 mapKey!30891 mapValue!30891))))

(declare-fun b!917687 () Bool)

(declare-fun res!618808 () Bool)

(declare-fun e!515220 () Bool)

(assert (=> b!917687 (=> (not res!618808) (not e!515220))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30863)

(declare-datatypes ((tuple2!12752 0))(
  ( (tuple2!12753 (_1!6386 (_ BitVec 64)) (_2!6386 V!30863)) )
))
(declare-datatypes ((List!18602 0))(
  ( (Nil!18599) (Cons!18598 (h!19744 tuple2!12752) (t!26255 List!18602)) )
))
(declare-datatypes ((ListLongMap!11463 0))(
  ( (ListLongMap!11464 (toList!5747 List!18602)) )
))
(declare-fun lt!412046 () ListLongMap!11463)

(declare-fun apply!570 (ListLongMap!11463 (_ BitVec 64)) V!30863)

(assert (=> b!917687 (= res!618808 (= (apply!570 lt!412046 k!1099) v!791))))

(declare-fun b!917688 () Bool)

(declare-fun res!618810 () Bool)

(declare-fun e!515219 () Bool)

(assert (=> b!917688 (=> (not res!618810) (not e!515219))))

(declare-datatypes ((array!54840 0))(
  ( (array!54841 (arr!26361 (Array (_ BitVec 32) (_ BitVec 64))) (size!26821 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54840)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54840 (_ BitVec 32)) Bool)

(assert (=> b!917688 (= res!618810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917689 () Bool)

(declare-fun tp_is_empty!19423 () Bool)

(assert (=> b!917689 (= e!515217 tp_is_empty!19423)))

(declare-fun b!917690 () Bool)

(declare-fun e!515218 () Bool)

(assert (=> b!917690 (= e!515220 e!515218)))

(declare-fun res!618811 () Bool)

(assert (=> b!917690 (=> (not res!618811) (not e!515218))))

(declare-fun lt!412045 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917690 (= res!618811 (validKeyInArray!0 lt!412045))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917690 (= lt!412045 (select (arr!26361 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917691 () Bool)

(declare-fun e!515214 () Bool)

(assert (=> b!917691 (= e!515214 tp_is_empty!19423)))

(declare-fun res!618812 () Bool)

(assert (=> start!78730 (=> (not res!618812) (not e!515219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78730 (= res!618812 (validMask!0 mask!1881))))

(assert (=> start!78730 e!515219))

(assert (=> start!78730 true))

(assert (=> start!78730 tp_is_empty!19423))

(declare-fun e!515216 () Bool)

(declare-fun array_inv!20540 (array!54838) Bool)

(assert (=> start!78730 (and (array_inv!20540 _values!1231) e!515216)))

(assert (=> start!78730 tp!59186))

(declare-fun array_inv!20541 (array!54840) Bool)

(assert (=> start!78730 (array_inv!20541 _keys!1487)))

(declare-fun b!917692 () Bool)

(declare-fun res!618805 () Bool)

(assert (=> b!917692 (=> (not res!618805) (not e!515220))))

(assert (=> b!917692 (= res!618805 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917693 () Bool)

(assert (=> b!917693 (= e!515218 (not true))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30863)

(declare-fun minValue!1173 () V!30863)

(declare-fun getCurrentListMap!2973 (array!54840 array!54838 (_ BitVec 32) (_ BitVec 32) V!30863 V!30863 (_ BitVec 32) Int) ListLongMap!11463)

(declare-fun +!2579 (ListLongMap!11463 tuple2!12752) ListLongMap!11463)

(declare-fun get!13830 (ValueCell!9230 V!30863) V!30863)

(declare-fun dynLambda!1418 (Int (_ BitVec 64)) V!30863)

(assert (=> b!917693 (= (getCurrentListMap!2973 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2579 (getCurrentListMap!2973 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12753 lt!412045 (get!13830 (select (arr!26360 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1418 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30965 0))(
  ( (Unit!30966) )
))
(declare-fun lt!412047 () Unit!30965)

(declare-fun lemmaListMapRecursiveValidKeyArray!14 (array!54840 array!54838 (_ BitVec 32) (_ BitVec 32) V!30863 V!30863 (_ BitVec 32) Int) Unit!30965)

(assert (=> b!917693 (= lt!412047 (lemmaListMapRecursiveValidKeyArray!14 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917694 () Bool)

(assert (=> b!917694 (= e!515219 e!515220)))

(declare-fun res!618809 () Bool)

(assert (=> b!917694 (=> (not res!618809) (not e!515220))))

(declare-fun contains!4761 (ListLongMap!11463 (_ BitVec 64)) Bool)

(assert (=> b!917694 (= res!618809 (contains!4761 lt!412046 k!1099))))

(assert (=> b!917694 (= lt!412046 (getCurrentListMap!2973 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!30891 () Bool)

(assert (=> mapIsEmpty!30891 mapRes!30891))

(declare-fun b!917695 () Bool)

(assert (=> b!917695 (= e!515216 (and e!515214 mapRes!30891))))

(declare-fun condMapEmpty!30891 () Bool)

(declare-fun mapDefault!30891 () ValueCell!9230)

