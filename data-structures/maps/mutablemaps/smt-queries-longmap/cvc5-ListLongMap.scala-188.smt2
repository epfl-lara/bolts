; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3734 () Bool)

(assert start!3734)

(declare-fun mapNonEmpty!1117 () Bool)

(declare-fun mapRes!1117 () Bool)

(declare-fun tp!3637 () Bool)

(declare-fun e!16946 () Bool)

(assert (=> mapNonEmpty!1117 (= mapRes!1117 (and tp!3637 e!16946))))

(declare-datatypes ((V!1251 0))(
  ( (V!1252 (val!561 Int)) )
))
(declare-datatypes ((ValueCell!335 0))(
  ( (ValueCellFull!335 (v!1646 V!1251)) (EmptyCell!335) )
))
(declare-datatypes ((array!1375 0))(
  ( (array!1376 (arr!646 (Array (_ BitVec 32) ValueCell!335)) (size!747 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1375)

(declare-fun mapRest!1117 () (Array (_ BitVec 32) ValueCell!335))

(declare-fun mapValue!1117 () ValueCell!335)

(declare-fun mapKey!1117 () (_ BitVec 32))

(assert (=> mapNonEmpty!1117 (= (arr!646 _values!1501) (store mapRest!1117 mapKey!1117 mapValue!1117))))

(declare-fun b!26100 () Bool)

(declare-fun e!16942 () Bool)

(declare-datatypes ((List!575 0))(
  ( (Nil!572) (Cons!571 (h!1138 (_ BitVec 64)) (t!3264 List!575)) )
))
(declare-fun contains!226 (List!575 (_ BitVec 64)) Bool)

(assert (=> b!26100 (= e!16942 (contains!226 Nil!572 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26101 () Bool)

(declare-fun e!16941 () Bool)

(declare-fun e!16943 () Bool)

(assert (=> b!26101 (= e!16941 (and e!16943 mapRes!1117))))

(declare-fun condMapEmpty!1117 () Bool)

(declare-fun mapDefault!1117 () ValueCell!335)

