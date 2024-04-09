; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78674 () Bool)

(assert start!78674)

(declare-fun b_free!16859 () Bool)

(declare-fun b_next!16859 () Bool)

(assert (=> start!78674 (= b_free!16859 (not b_next!16859))))

(declare-fun tp!59018 () Bool)

(declare-fun b_and!27499 () Bool)

(assert (=> start!78674 (= tp!59018 b_and!27499)))

(declare-fun mapNonEmpty!30807 () Bool)

(declare-fun mapRes!30807 () Bool)

(declare-fun tp!59019 () Bool)

(declare-fun e!514667 () Bool)

(assert (=> mapNonEmpty!30807 (= mapRes!30807 (and tp!59019 e!514667))))

(declare-fun mapKey!30807 () (_ BitVec 32))

(declare-datatypes ((V!30787 0))(
  ( (V!30788 (val!9734 Int)) )
))
(declare-datatypes ((ValueCell!9202 0))(
  ( (ValueCellFull!9202 (v!12252 V!30787)) (EmptyCell!9202) )
))
(declare-fun mapValue!30807 () ValueCell!9202)

(declare-datatypes ((array!54734 0))(
  ( (array!54735 (arr!26308 (Array (_ BitVec 32) ValueCell!9202)) (size!26768 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54734)

(declare-fun mapRest!30807 () (Array (_ BitVec 32) ValueCell!9202))

(assert (=> mapNonEmpty!30807 (= (arr!26308 _values!1231) (store mapRest!30807 mapKey!30807 mapValue!30807))))

(declare-fun b!916713 () Bool)

(declare-fun e!514668 () Bool)

(assert (=> b!916713 (= e!514668 false)))

(declare-fun lt!411830 () V!30787)

(declare-datatypes ((tuple2!12706 0))(
  ( (tuple2!12707 (_1!6363 (_ BitVec 64)) (_2!6363 V!30787)) )
))
(declare-datatypes ((List!18564 0))(
  ( (Nil!18561) (Cons!18560 (h!19706 tuple2!12706) (t!26185 List!18564)) )
))
(declare-datatypes ((ListLongMap!11417 0))(
  ( (ListLongMap!11418 (toList!5724 List!18564)) )
))
(declare-fun lt!411831 () ListLongMap!11417)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!552 (ListLongMap!11417 (_ BitVec 64)) V!30787)

(assert (=> b!916713 (= lt!411830 (apply!552 lt!411831 k!1099))))

(declare-fun b!916714 () Bool)

(declare-fun e!514664 () Bool)

(declare-fun e!514666 () Bool)

(assert (=> b!916714 (= e!514664 (and e!514666 mapRes!30807))))

(declare-fun condMapEmpty!30807 () Bool)

(declare-fun mapDefault!30807 () ValueCell!9202)

