; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78794 () Bool)

(assert start!78794)

(declare-fun b_free!16979 () Bool)

(declare-fun b_next!16979 () Bool)

(assert (=> start!78794 (= b_free!16979 (not b_next!16979))))

(declare-fun tp!59378 () Bool)

(declare-fun b_and!27713 () Bool)

(assert (=> start!78794 (= tp!59378 b_and!27713)))

(declare-fun b!918999 () Bool)

(declare-fun res!619767 () Bool)

(declare-fun e!515888 () Bool)

(assert (=> b!918999 (=> (not res!619767) (not e!515888))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54966 0))(
  ( (array!54967 (arr!26424 (Array (_ BitVec 32) (_ BitVec 64))) (size!26884 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54966)

(assert (=> b!918999 (= res!619767 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26884 _keys!1487))))))

(declare-fun b!919000 () Bool)

(declare-fun e!515892 () Bool)

(declare-fun tp_is_empty!19487 () Bool)

(assert (=> b!919000 (= e!515892 tp_is_empty!19487)))

(declare-fun b!919001 () Bool)

(declare-fun res!619771 () Bool)

(assert (=> b!919001 (=> (not res!619771) (not e!515888))))

(declare-datatypes ((List!18652 0))(
  ( (Nil!18649) (Cons!18648 (h!19794 (_ BitVec 64)) (t!26369 List!18652)) )
))
(declare-fun arrayNoDuplicates!0 (array!54966 (_ BitVec 32) List!18652) Bool)

(assert (=> b!919001 (= res!619771 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18649))))

(declare-fun b!919002 () Bool)

(declare-fun res!619770 () Bool)

(declare-fun e!515889 () Bool)

(assert (=> b!919002 (=> (not res!619770) (not e!515889))))

(assert (=> b!919002 (= res!619770 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!619763 () Bool)

(assert (=> start!78794 (=> (not res!619763) (not e!515888))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78794 (= res!619763 (validMask!0 mask!1881))))

(assert (=> start!78794 e!515888))

(assert (=> start!78794 true))

(assert (=> start!78794 tp_is_empty!19487))

(declare-datatypes ((V!30947 0))(
  ( (V!30948 (val!9794 Int)) )
))
(declare-datatypes ((ValueCell!9262 0))(
  ( (ValueCellFull!9262 (v!12312 V!30947)) (EmptyCell!9262) )
))
(declare-datatypes ((array!54968 0))(
  ( (array!54969 (arr!26425 (Array (_ BitVec 32) ValueCell!9262)) (size!26885 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54968)

(declare-fun e!515891 () Bool)

(declare-fun array_inv!20588 (array!54968) Bool)

(assert (=> start!78794 (and (array_inv!20588 _values!1231) e!515891)))

(assert (=> start!78794 tp!59378))

(declare-fun array_inv!20589 (array!54966) Bool)

(assert (=> start!78794 (array_inv!20589 _keys!1487)))

(declare-fun b!919003 () Bool)

(declare-fun res!619768 () Bool)

(assert (=> b!919003 (=> (not res!619768) (not e!515889))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919003 (= res!619768 (validKeyInArray!0 k!1099))))

(declare-fun b!919004 () Bool)

(declare-fun e!515886 () Bool)

(assert (=> b!919004 (= e!515886 tp_is_empty!19487)))

(declare-fun b!919005 () Bool)

(declare-fun e!515887 () Bool)

(assert (=> b!919005 (= e!515887 (not true))))

(assert (=> b!919005 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18649)))

(declare-datatypes ((Unit!31011 0))(
  ( (Unit!31012) )
))
(declare-fun lt!412506 () Unit!31011)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54966 (_ BitVec 32) (_ BitVec 32)) Unit!31011)

(assert (=> b!919005 (= lt!412506 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12810 0))(
  ( (tuple2!12811 (_1!6415 (_ BitVec 64)) (_2!6415 V!30947)) )
))
(declare-datatypes ((List!18653 0))(
  ( (Nil!18650) (Cons!18649 (h!19795 tuple2!12810) (t!26370 List!18653)) )
))
(declare-datatypes ((ListLongMap!11521 0))(
  ( (ListLongMap!11522 (toList!5776 List!18653)) )
))
(declare-fun lt!412502 () ListLongMap!11521)

(declare-fun lt!412503 () tuple2!12810)

(declare-fun contains!4788 (ListLongMap!11521 (_ BitVec 64)) Bool)

(declare-fun +!2602 (ListLongMap!11521 tuple2!12810) ListLongMap!11521)

(assert (=> b!919005 (contains!4788 (+!2602 lt!412502 lt!412503) k!1099)))

(declare-fun lt!412500 () (_ BitVec 64))

(declare-fun lt!412505 () Unit!31011)

(declare-fun lt!412504 () V!30947)

(declare-fun addStillContains!364 (ListLongMap!11521 (_ BitVec 64) V!30947 (_ BitVec 64)) Unit!31011)

(assert (=> b!919005 (= lt!412505 (addStillContains!364 lt!412502 lt!412500 lt!412504 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30947)

(declare-fun minValue!1173 () V!30947)

(declare-fun getCurrentListMap!3000 (array!54966 array!54968 (_ BitVec 32) (_ BitVec 32) V!30947 V!30947 (_ BitVec 32) Int) ListLongMap!11521)

(assert (=> b!919005 (= (getCurrentListMap!3000 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2602 (getCurrentListMap!3000 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412503))))

(assert (=> b!919005 (= lt!412503 (tuple2!12811 lt!412500 lt!412504))))

(declare-fun get!13873 (ValueCell!9262 V!30947) V!30947)

(declare-fun dynLambda!1441 (Int (_ BitVec 64)) V!30947)

(assert (=> b!919005 (= lt!412504 (get!13873 (select (arr!26425 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1441 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412501 () Unit!31011)

(declare-fun lemmaListMapRecursiveValidKeyArray!37 (array!54966 array!54968 (_ BitVec 32) (_ BitVec 32) V!30947 V!30947 (_ BitVec 32) Int) Unit!31011)

(assert (=> b!919005 (= lt!412501 (lemmaListMapRecursiveValidKeyArray!37 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919006 () Bool)

(declare-fun res!619769 () Bool)

(assert (=> b!919006 (=> (not res!619769) (not e!515888))))

(assert (=> b!919006 (= res!619769 (and (= (size!26885 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26884 _keys!1487) (size!26885 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919007 () Bool)

(declare-fun res!619764 () Bool)

(assert (=> b!919007 (=> (not res!619764) (not e!515888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54966 (_ BitVec 32)) Bool)

(assert (=> b!919007 (= res!619764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919008 () Bool)

(declare-fun res!619765 () Bool)

(assert (=> b!919008 (=> (not res!619765) (not e!515889))))

(declare-fun v!791 () V!30947)

(declare-fun apply!593 (ListLongMap!11521 (_ BitVec 64)) V!30947)

(assert (=> b!919008 (= res!619765 (= (apply!593 lt!412502 k!1099) v!791))))

(declare-fun b!919009 () Bool)

(assert (=> b!919009 (= e!515888 e!515889)))

(declare-fun res!619766 () Bool)

(assert (=> b!919009 (=> (not res!619766) (not e!515889))))

(assert (=> b!919009 (= res!619766 (contains!4788 lt!412502 k!1099))))

(assert (=> b!919009 (= lt!412502 (getCurrentListMap!3000 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919010 () Bool)

(declare-fun mapRes!30987 () Bool)

(assert (=> b!919010 (= e!515891 (and e!515886 mapRes!30987))))

(declare-fun condMapEmpty!30987 () Bool)

(declare-fun mapDefault!30987 () ValueCell!9262)

