; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78764 () Bool)

(assert start!78764)

(declare-fun b_free!16949 () Bool)

(declare-fun b_next!16949 () Bool)

(assert (=> start!78764 (= b_free!16949 (not b_next!16949))))

(declare-fun tp!59288 () Bool)

(declare-fun b_and!27653 () Bool)

(assert (=> start!78764 (= tp!59288 b_and!27653)))

(declare-fun res!619313 () Bool)

(declare-fun e!515573 () Bool)

(assert (=> start!78764 (=> (not res!619313) (not e!515573))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78764 (= res!619313 (validMask!0 mask!1881))))

(assert (=> start!78764 e!515573))

(assert (=> start!78764 true))

(declare-fun tp_is_empty!19457 () Bool)

(assert (=> start!78764 tp_is_empty!19457))

(declare-datatypes ((V!30907 0))(
  ( (V!30908 (val!9779 Int)) )
))
(declare-datatypes ((ValueCell!9247 0))(
  ( (ValueCellFull!9247 (v!12297 V!30907)) (EmptyCell!9247) )
))
(declare-datatypes ((array!54906 0))(
  ( (array!54907 (arr!26394 (Array (_ BitVec 32) ValueCell!9247)) (size!26854 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54906)

(declare-fun e!515571 () Bool)

(declare-fun array_inv!20568 (array!54906) Bool)

(assert (=> start!78764 (and (array_inv!20568 _values!1231) e!515571)))

(assert (=> start!78764 tp!59288))

(declare-datatypes ((array!54908 0))(
  ( (array!54909 (arr!26395 (Array (_ BitVec 32) (_ BitVec 64))) (size!26855 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54908)

(declare-fun array_inv!20569 (array!54908) Bool)

(assert (=> start!78764 (array_inv!20569 _keys!1487)))

(declare-fun mapNonEmpty!30942 () Bool)

(declare-fun mapRes!30942 () Bool)

(declare-fun tp!59289 () Bool)

(declare-fun e!515574 () Bool)

(assert (=> mapNonEmpty!30942 (= mapRes!30942 (and tp!59289 e!515574))))

(declare-fun mapValue!30942 () ValueCell!9247)

(declare-fun mapRest!30942 () (Array (_ BitVec 32) ValueCell!9247))

(declare-fun mapKey!30942 () (_ BitVec 32))

(assert (=> mapNonEmpty!30942 (= (arr!26394 _values!1231) (store mapRest!30942 mapKey!30942 mapValue!30942))))

(declare-fun b!918384 () Bool)

(declare-fun res!619320 () Bool)

(declare-fun e!515572 () Bool)

(assert (=> b!918384 (=> (not res!619320) (not e!515572))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918384 (= res!619320 (validKeyInArray!0 k!1099))))

(declare-fun b!918385 () Bool)

(assert (=> b!918385 (= e!515574 tp_is_empty!19457)))

(declare-fun b!918386 () Bool)

(declare-fun res!619318 () Bool)

(assert (=> b!918386 (=> (not res!619318) (not e!515573))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918386 (= res!619318 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26855 _keys!1487))))))

(declare-fun b!918387 () Bool)

(declare-fun res!619322 () Bool)

(assert (=> b!918387 (=> (not res!619322) (not e!515572))))

(declare-fun v!791 () V!30907)

(declare-datatypes ((tuple2!12784 0))(
  ( (tuple2!12785 (_1!6402 (_ BitVec 64)) (_2!6402 V!30907)) )
))
(declare-datatypes ((List!18628 0))(
  ( (Nil!18625) (Cons!18624 (h!19770 tuple2!12784) (t!26315 List!18628)) )
))
(declare-datatypes ((ListLongMap!11495 0))(
  ( (ListLongMap!11496 (toList!5763 List!18628)) )
))
(declare-fun lt!412225 () ListLongMap!11495)

(declare-fun apply!583 (ListLongMap!11495 (_ BitVec 64)) V!30907)

(assert (=> b!918387 (= res!619322 (= (apply!583 lt!412225 k!1099) v!791))))

(declare-fun b!918388 () Bool)

(declare-fun e!515576 () Bool)

(assert (=> b!918388 (= e!515571 (and e!515576 mapRes!30942))))

(declare-fun condMapEmpty!30942 () Bool)

(declare-fun mapDefault!30942 () ValueCell!9247)

