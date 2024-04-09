; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77458 () Bool)

(assert start!77458)

(declare-fun b!902373 () Bool)

(declare-fun res!609067 () Bool)

(declare-fun e!505417 () Bool)

(assert (=> b!902373 (=> (not res!609067) (not e!505417))))

(declare-datatypes ((V!29571 0))(
  ( (V!29572 (val!9278 Int)) )
))
(declare-datatypes ((ValueCell!8746 0))(
  ( (ValueCellFull!8746 (v!11782 V!29571)) (EmptyCell!8746) )
))
(declare-datatypes ((array!52960 0))(
  ( (array!52961 (arr!25437 (Array (_ BitVec 32) ValueCell!8746)) (size!25897 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52960)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52962 0))(
  ( (array!52963 (arr!25438 (Array (_ BitVec 32) (_ BitVec 64))) (size!25898 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52962)

(assert (=> b!902373 (= res!609067 (and (= (size!25897 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25898 _keys!1386) (size!25897 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29389 () Bool)

(declare-fun mapRes!29389 () Bool)

(declare-fun tp!56449 () Bool)

(declare-fun e!505422 () Bool)

(assert (=> mapNonEmpty!29389 (= mapRes!29389 (and tp!56449 e!505422))))

(declare-fun mapKey!29389 () (_ BitVec 32))

(declare-fun mapRest!29389 () (Array (_ BitVec 32) ValueCell!8746))

(declare-fun mapValue!29389 () ValueCell!8746)

(assert (=> mapNonEmpty!29389 (= (arr!25437 _values!1152) (store mapRest!29389 mapKey!29389 mapValue!29389))))

(declare-fun b!902374 () Bool)

(declare-fun res!609068 () Bool)

(assert (=> b!902374 (=> (not res!609068) (not e!505417))))

(declare-datatypes ((List!17964 0))(
  ( (Nil!17961) (Cons!17960 (h!19106 (_ BitVec 64)) (t!25355 List!17964)) )
))
(declare-fun noDuplicate!1329 (List!17964) Bool)

(assert (=> b!902374 (= res!609068 (noDuplicate!1329 Nil!17961))))

(declare-fun b!902375 () Bool)

(declare-fun e!505419 () Bool)

(assert (=> b!902375 (= e!505417 e!505419)))

(declare-fun res!609069 () Bool)

(assert (=> b!902375 (=> res!609069 e!505419)))

(declare-fun contains!4435 (List!17964 (_ BitVec 64)) Bool)

(assert (=> b!902375 (= res!609069 (contains!4435 Nil!17961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!902376 () Bool)

(declare-fun res!609070 () Bool)

(assert (=> b!902376 (=> (not res!609070) (not e!505417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52962 (_ BitVec 32)) Bool)

(assert (=> b!902376 (= res!609070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902377 () Bool)

(declare-fun e!505418 () Bool)

(declare-fun e!505421 () Bool)

(assert (=> b!902377 (= e!505418 (and e!505421 mapRes!29389))))

(declare-fun condMapEmpty!29389 () Bool)

(declare-fun mapDefault!29389 () ValueCell!8746)

