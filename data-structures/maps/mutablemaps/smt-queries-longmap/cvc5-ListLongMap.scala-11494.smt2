; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133804 () Bool)

(assert start!133804)

(declare-fun b!1564033 () Bool)

(declare-fun res!1069347 () Bool)

(declare-fun e!871744 () Bool)

(assert (=> b!1564033 (=> (not res!1069347) (not e!871744))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104351 0))(
  ( (array!104352 (arr!50362 (Array (_ BitVec 32) (_ BitVec 64))) (size!50913 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104351)

(assert (=> b!1564033 (= res!1069347 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50913 _keys!637)) (bvsge from!782 (size!50913 _keys!637))))))

(declare-fun b!1564034 () Bool)

(declare-fun res!1069348 () Bool)

(assert (=> b!1564034 (=> (not res!1069348) (not e!871744))))

(declare-datatypes ((V!60001 0))(
  ( (V!60002 (val!19506 Int)) )
))
(declare-datatypes ((tuple2!25324 0))(
  ( (tuple2!25325 (_1!12672 (_ BitVec 64)) (_2!12672 V!60001)) )
))
(declare-datatypes ((List!36713 0))(
  ( (Nil!36710) (Cons!36709 (h!38156 tuple2!25324) (t!51567 List!36713)) )
))
(declare-datatypes ((ListLongMap!22771 0))(
  ( (ListLongMap!22772 (toList!11401 List!36713)) )
))
(declare-fun contains!10322 (ListLongMap!22771 (_ BitVec 64)) Bool)

(assert (=> b!1564034 (= res!1069348 (not (contains!10322 (ListLongMap!22772 Nil!36710) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564035 () Bool)

(assert (=> b!1564035 (= e!871744 false)))

(declare-fun lt!671931 () Bool)

(assert (=> b!1564035 (= lt!671931 (contains!10322 (ListLongMap!22772 Nil!36710) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564036 () Bool)

(declare-fun e!871745 () Bool)

(declare-fun tp_is_empty!38845 () Bool)

(assert (=> b!1564036 (= e!871745 tp_is_empty!38845)))

(declare-fun b!1564037 () Bool)

(declare-fun res!1069344 () Bool)

(assert (=> b!1564037 (=> (not res!1069344) (not e!871744))))

(declare-datatypes ((List!36714 0))(
  ( (Nil!36711) (Cons!36710 (h!38157 (_ BitVec 64)) (t!51568 List!36714)) )
))
(declare-fun arrayNoDuplicates!0 (array!104351 (_ BitVec 32) List!36714) Bool)

(assert (=> b!1564037 (= res!1069344 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36711))))

(declare-fun mapIsEmpty!59646 () Bool)

(declare-fun mapRes!59646 () Bool)

(assert (=> mapIsEmpty!59646 mapRes!59646))

(declare-fun b!1564038 () Bool)

(declare-fun e!871747 () Bool)

(declare-fun e!871746 () Bool)

(assert (=> b!1564038 (= e!871747 (and e!871746 mapRes!59646))))

(declare-fun condMapEmpty!59646 () Bool)

(declare-datatypes ((ValueCell!18392 0))(
  ( (ValueCellFull!18392 (v!22255 V!60001)) (EmptyCell!18392) )
))
(declare-datatypes ((array!104353 0))(
  ( (array!104354 (arr!50363 (Array (_ BitVec 32) ValueCell!18392)) (size!50914 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104353)

(declare-fun mapDefault!59646 () ValueCell!18392)

