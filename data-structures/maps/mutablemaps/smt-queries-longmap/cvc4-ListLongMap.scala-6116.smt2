; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78836 () Bool)

(assert start!78836)

(declare-fun b_free!17021 () Bool)

(declare-fun b_next!17021 () Bool)

(assert (=> start!78836 (= b_free!17021 (not b_next!17021))))

(declare-fun tp!59505 () Bool)

(declare-fun b_and!27797 () Bool)

(assert (=> start!78836 (= tp!59505 b_and!27797)))

(declare-fun b!919860 () Bool)

(declare-fun res!620398 () Bool)

(declare-fun e!516329 () Bool)

(assert (=> b!919860 (=> (not res!620398) (not e!516329))))

(declare-datatypes ((array!55050 0))(
  ( (array!55051 (arr!26466 (Array (_ BitVec 32) (_ BitVec 64))) (size!26926 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55050)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55050 (_ BitVec 32)) Bool)

(assert (=> b!919860 (= res!620398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31050 () Bool)

(declare-fun mapRes!31050 () Bool)

(assert (=> mapIsEmpty!31050 mapRes!31050))

(declare-fun b!919861 () Bool)

(declare-fun res!620400 () Bool)

(assert (=> b!919861 (=> (not res!620400) (not e!516329))))

(declare-datatypes ((List!18689 0))(
  ( (Nil!18686) (Cons!18685 (h!19831 (_ BitVec 64)) (t!26448 List!18689)) )
))
(declare-fun arrayNoDuplicates!0 (array!55050 (_ BitVec 32) List!18689) Bool)

(assert (=> b!919861 (= res!620400 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18686))))

(declare-fun b!919862 () Bool)

(declare-fun res!620393 () Bool)

(declare-fun e!516327 () Bool)

(assert (=> b!919862 (=> (not res!620393) (not e!516327))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919862 (= res!620393 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31050 () Bool)

(declare-fun tp!59504 () Bool)

(declare-fun e!516333 () Bool)

(assert (=> mapNonEmpty!31050 (= mapRes!31050 (and tp!59504 e!516333))))

(declare-fun mapKey!31050 () (_ BitVec 32))

(declare-datatypes ((V!31003 0))(
  ( (V!31004 (val!9815 Int)) )
))
(declare-datatypes ((ValueCell!9283 0))(
  ( (ValueCellFull!9283 (v!12333 V!31003)) (EmptyCell!9283) )
))
(declare-fun mapRest!31050 () (Array (_ BitVec 32) ValueCell!9283))

(declare-fun mapValue!31050 () ValueCell!9283)

(declare-datatypes ((array!55052 0))(
  ( (array!55053 (arr!26467 (Array (_ BitVec 32) ValueCell!9283)) (size!26927 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55052)

(assert (=> mapNonEmpty!31050 (= (arr!26467 _values!1231) (store mapRest!31050 mapKey!31050 mapValue!31050))))

(declare-fun b!919863 () Bool)

(assert (=> b!919863 (= e!516329 e!516327)))

(declare-fun res!620396 () Bool)

(assert (=> b!919863 (=> (not res!620396) (not e!516327))))

(declare-datatypes ((tuple2!12846 0))(
  ( (tuple2!12847 (_1!6433 (_ BitVec 64)) (_2!6433 V!31003)) )
))
(declare-datatypes ((List!18690 0))(
  ( (Nil!18687) (Cons!18686 (h!19832 tuple2!12846) (t!26449 List!18690)) )
))
(declare-datatypes ((ListLongMap!11557 0))(
  ( (ListLongMap!11558 (toList!5794 List!18690)) )
))
(declare-fun lt!412946 () ListLongMap!11557)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4804 (ListLongMap!11557 (_ BitVec 64)) Bool)

(assert (=> b!919863 (= res!620396 (contains!4804 lt!412946 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31003)

(declare-fun minValue!1173 () V!31003)

(declare-fun getCurrentListMap!3016 (array!55050 array!55052 (_ BitVec 32) (_ BitVec 32) V!31003 V!31003 (_ BitVec 32) Int) ListLongMap!11557)

(assert (=> b!919863 (= lt!412946 (getCurrentListMap!3016 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919864 () Bool)

(declare-fun res!620397 () Bool)

(assert (=> b!919864 (=> (not res!620397) (not e!516327))))

(declare-fun v!791 () V!31003)

(declare-fun apply!607 (ListLongMap!11557 (_ BitVec 64)) V!31003)

(assert (=> b!919864 (= res!620397 (= (apply!607 lt!412946 k!1099) v!791))))

(declare-fun b!919865 () Bool)

(declare-fun e!516331 () Bool)

(assert (=> b!919865 (= e!516327 e!516331)))

(declare-fun res!620399 () Bool)

(assert (=> b!919865 (=> (not res!620399) (not e!516331))))

(declare-fun lt!412945 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919865 (= res!620399 (validKeyInArray!0 lt!412945))))

(assert (=> b!919865 (= lt!412945 (select (arr!26466 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919867 () Bool)

(declare-fun e!516328 () Bool)

(declare-fun e!516332 () Bool)

(assert (=> b!919867 (= e!516328 (and e!516332 mapRes!31050))))

(declare-fun condMapEmpty!31050 () Bool)

(declare-fun mapDefault!31050 () ValueCell!9283)

