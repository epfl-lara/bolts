; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78800 () Bool)

(assert start!78800)

(declare-fun b_free!16985 () Bool)

(declare-fun b_next!16985 () Bool)

(assert (=> start!78800 (= b_free!16985 (not b_next!16985))))

(declare-fun tp!59397 () Bool)

(declare-fun b_and!27725 () Bool)

(assert (=> start!78800 (= tp!59397 b_and!27725)))

(declare-fun mapNonEmpty!30996 () Bool)

(declare-fun mapRes!30996 () Bool)

(declare-fun tp!59396 () Bool)

(declare-fun e!515954 () Bool)

(assert (=> mapNonEmpty!30996 (= mapRes!30996 (and tp!59396 e!515954))))

(declare-datatypes ((V!30955 0))(
  ( (V!30956 (val!9797 Int)) )
))
(declare-datatypes ((ValueCell!9265 0))(
  ( (ValueCellFull!9265 (v!12315 V!30955)) (EmptyCell!9265) )
))
(declare-datatypes ((array!54978 0))(
  ( (array!54979 (arr!26430 (Array (_ BitVec 32) ValueCell!9265)) (size!26890 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54978)

(declare-fun mapRest!30996 () (Array (_ BitVec 32) ValueCell!9265))

(declare-fun mapKey!30996 () (_ BitVec 32))

(declare-fun mapValue!30996 () ValueCell!9265)

(assert (=> mapNonEmpty!30996 (= (arr!26430 _values!1231) (store mapRest!30996 mapKey!30996 mapValue!30996))))

(declare-fun b!919122 () Bool)

(declare-fun res!619856 () Bool)

(declare-fun e!515951 () Bool)

(assert (=> b!919122 (=> (not res!619856) (not e!515951))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54980 0))(
  ( (array!54981 (arr!26431 (Array (_ BitVec 32) (_ BitVec 64))) (size!26891 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54980)

(assert (=> b!919122 (= res!619856 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26891 _keys!1487))))))

(declare-fun b!919123 () Bool)

(declare-fun tp_is_empty!19493 () Bool)

(assert (=> b!919123 (= e!515954 tp_is_empty!19493)))

(declare-fun b!919125 () Bool)

(declare-fun e!515953 () Bool)

(assert (=> b!919125 (= e!515953 (not true))))

(declare-datatypes ((List!18658 0))(
  ( (Nil!18655) (Cons!18654 (h!19800 (_ BitVec 64)) (t!26381 List!18658)) )
))
(declare-fun arrayNoDuplicates!0 (array!54980 (_ BitVec 32) List!18658) Bool)

(assert (=> b!919125 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18655)))

(declare-datatypes ((Unit!31017 0))(
  ( (Unit!31018) )
))
(declare-fun lt!412569 () Unit!31017)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54980 (_ BitVec 32) (_ BitVec 32)) Unit!31017)

(assert (=> b!919125 (= lt!412569 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12816 0))(
  ( (tuple2!12817 (_1!6418 (_ BitVec 64)) (_2!6418 V!30955)) )
))
(declare-datatypes ((List!18659 0))(
  ( (Nil!18656) (Cons!18655 (h!19801 tuple2!12816) (t!26382 List!18659)) )
))
(declare-datatypes ((ListLongMap!11527 0))(
  ( (ListLongMap!11528 (toList!5779 List!18659)) )
))
(declare-fun lt!412567 () ListLongMap!11527)

(declare-fun lt!412563 () tuple2!12816)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4791 (ListLongMap!11527 (_ BitVec 64)) Bool)

(declare-fun +!2605 (ListLongMap!11527 tuple2!12816) ListLongMap!11527)

(assert (=> b!919125 (contains!4791 (+!2605 lt!412567 lt!412563) k!1099)))

(declare-fun lt!412566 () (_ BitVec 64))

(declare-fun lt!412564 () Unit!31017)

(declare-fun lt!412565 () V!30955)

(declare-fun addStillContains!367 (ListLongMap!11527 (_ BitVec 64) V!30955 (_ BitVec 64)) Unit!31017)

(assert (=> b!919125 (= lt!412564 (addStillContains!367 lt!412567 lt!412566 lt!412565 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30955)

(declare-fun minValue!1173 () V!30955)

(declare-fun getCurrentListMap!3003 (array!54980 array!54978 (_ BitVec 32) (_ BitVec 32) V!30955 V!30955 (_ BitVec 32) Int) ListLongMap!11527)

(assert (=> b!919125 (= (getCurrentListMap!3003 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2605 (getCurrentListMap!3003 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412563))))

(assert (=> b!919125 (= lt!412563 (tuple2!12817 lt!412566 lt!412565))))

(declare-fun get!13878 (ValueCell!9265 V!30955) V!30955)

(declare-fun dynLambda!1444 (Int (_ BitVec 64)) V!30955)

(assert (=> b!919125 (= lt!412565 (get!13878 (select (arr!26430 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1444 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412568 () Unit!31017)

(declare-fun lemmaListMapRecursiveValidKeyArray!40 (array!54980 array!54978 (_ BitVec 32) (_ BitVec 32) V!30955 V!30955 (_ BitVec 32) Int) Unit!31017)

(assert (=> b!919125 (= lt!412568 (lemmaListMapRecursiveValidKeyArray!40 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!30996 () Bool)

(assert (=> mapIsEmpty!30996 mapRes!30996))

(declare-fun b!919126 () Bool)

(declare-fun res!619860 () Bool)

(assert (=> b!919126 (=> (not res!619860) (not e!515951))))

(assert (=> b!919126 (= res!619860 (and (= (size!26890 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26891 _keys!1487) (size!26890 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919127 () Bool)

(declare-fun res!619857 () Bool)

(assert (=> b!919127 (=> (not res!619857) (not e!515951))))

(assert (=> b!919127 (= res!619857 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18655))))

(declare-fun b!919128 () Bool)

(declare-fun e!515955 () Bool)

(declare-fun e!515952 () Bool)

(assert (=> b!919128 (= e!515955 (and e!515952 mapRes!30996))))

(declare-fun condMapEmpty!30996 () Bool)

(declare-fun mapDefault!30996 () ValueCell!9265)

