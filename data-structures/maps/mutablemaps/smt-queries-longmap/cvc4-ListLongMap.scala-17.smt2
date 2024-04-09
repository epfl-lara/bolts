; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!516 () Bool)

(assert start!516)

(declare-fun b!3050 () Bool)

(declare-fun e!1329 () Bool)

(declare-datatypes ((List!40 0))(
  ( (Nil!37) (Cons!36 (h!602 (_ BitVec 64)) (t!2167 List!40)) )
))
(declare-fun contains!13 (List!40 (_ BitVec 64)) Bool)

(assert (=> b!3050 (= e!1329 (contains!13 Nil!37 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!3051 () Bool)

(declare-fun e!1328 () Bool)

(declare-fun tp_is_empty!89 () Bool)

(assert (=> b!3051 (= e!1328 tp_is_empty!89)))

(declare-fun b!3052 () Bool)

(declare-fun e!1326 () Bool)

(assert (=> b!3052 (= e!1326 e!1329)))

(declare-fun res!4981 () Bool)

(assert (=> b!3052 (=> res!4981 e!1329)))

(assert (=> b!3052 (= res!4981 (contains!13 Nil!37 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!3053 () Bool)

(declare-fun res!4984 () Bool)

(assert (=> b!3053 (=> (not res!4984) (not e!1326))))

(declare-fun noDuplicate!7 (List!40) Bool)

(assert (=> b!3053 (= res!4984 (noDuplicate!7 Nil!37))))

(declare-fun b!3054 () Bool)

(declare-fun res!4982 () Bool)

(assert (=> b!3054 (=> (not res!4982) (not e!1326))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!295 0))(
  ( (V!296 (val!50 Int)) )
))
(declare-datatypes ((ValueCell!28 0))(
  ( (ValueCellFull!28 (v!1136 V!295)) (EmptyCell!28) )
))
(declare-datatypes ((array!111 0))(
  ( (array!112 (arr!50 (Array (_ BitVec 32) ValueCell!28)) (size!112 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!111)

(declare-datatypes ((array!113 0))(
  ( (array!114 (arr!51 (Array (_ BitVec 32) (_ BitVec 64))) (size!113 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!113)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3054 (= res!4982 (and (= (size!112 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!113 _keys!1806) (size!112 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3055 () Bool)

(declare-fun res!4980 () Bool)

(assert (=> b!3055 (=> (not res!4980) (not e!1326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!113 (_ BitVec 32)) Bool)

(assert (=> b!3055 (= res!4980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!4983 () Bool)

(assert (=> start!516 (=> (not res!4983) (not e!1326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!516 (= res!4983 (validMask!0 mask!2250))))

(assert (=> start!516 e!1326))

(assert (=> start!516 true))

(declare-fun e!1324 () Bool)

(declare-fun array_inv!31 (array!111) Bool)

(assert (=> start!516 (and (array_inv!31 _values!1492) e!1324)))

(declare-fun array_inv!32 (array!113) Bool)

(assert (=> start!516 (array_inv!32 _keys!1806)))

(declare-fun mapIsEmpty!86 () Bool)

(declare-fun mapRes!86 () Bool)

(assert (=> mapIsEmpty!86 mapRes!86))

(declare-fun b!3056 () Bool)

(declare-fun e!1325 () Bool)

(assert (=> b!3056 (= e!1325 tp_is_empty!89)))

(declare-fun b!3057 () Bool)

(assert (=> b!3057 (= e!1324 (and e!1328 mapRes!86))))

(declare-fun condMapEmpty!86 () Bool)

(declare-fun mapDefault!86 () ValueCell!28)

