; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7426 () Bool)

(assert start!7426)

(declare-fun b!47688 () Bool)

(declare-fun res!27732 () Bool)

(declare-fun e!30564 () Bool)

(assert (=> b!47688 (=> (not res!27732) (not e!30564))))

(declare-datatypes ((array!3164 0))(
  ( (array!3165 (arr!1516 (Array (_ BitVec 32) (_ BitVec 64))) (size!1738 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3164)

(declare-datatypes ((List!1281 0))(
  ( (Nil!1278) (Cons!1277 (h!1857 (_ BitVec 64)) (t!4317 List!1281)) )
))
(declare-fun arrayNoDuplicates!0 (array!3164 (_ BitVec 32) List!1281) Bool)

(assert (=> b!47688 (= res!27732 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1278))))

(declare-fun b!47689 () Bool)

(declare-fun e!30562 () Bool)

(declare-fun tp_is_empty!2051 () Bool)

(assert (=> b!47689 (= e!30562 tp_is_empty!2051)))

(declare-fun b!47690 () Bool)

(declare-fun e!30565 () Bool)

(declare-fun e!30561 () Bool)

(declare-fun mapRes!2120 () Bool)

(assert (=> b!47690 (= e!30565 (and e!30561 mapRes!2120))))

(declare-fun condMapEmpty!2120 () Bool)

(declare-datatypes ((V!2467 0))(
  ( (V!2468 (val!1064 Int)) )
))
(declare-datatypes ((ValueCell!736 0))(
  ( (ValueCellFull!736 (v!2124 V!2467)) (EmptyCell!736) )
))
(declare-datatypes ((array!3166 0))(
  ( (array!3167 (arr!1517 (Array (_ BitVec 32) ValueCell!736)) (size!1739 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3166)

(declare-fun mapDefault!2120 () ValueCell!736)

