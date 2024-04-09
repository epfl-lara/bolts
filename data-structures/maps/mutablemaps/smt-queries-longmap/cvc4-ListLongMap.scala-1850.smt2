; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33480 () Bool)

(assert start!33480)

(declare-fun b!332032 () Bool)

(declare-fun res!182986 () Bool)

(declare-fun e!203864 () Bool)

(assert (=> b!332032 (=> (not res!182986) (not e!203864))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9943 0))(
  ( (V!9944 (val!3407 Int)) )
))
(declare-datatypes ((ValueCell!3019 0))(
  ( (ValueCellFull!3019 (v!5562 V!9943)) (EmptyCell!3019) )
))
(declare-datatypes ((array!17045 0))(
  ( (array!17046 (arr!8054 (Array (_ BitVec 32) ValueCell!3019)) (size!8406 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17045)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((array!17047 0))(
  ( (array!17048 (arr!8055 (Array (_ BitVec 32) (_ BitVec 64))) (size!8407 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17047)

(assert (=> b!332032 (= res!182986 (and (= (size!8406 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8407 _keys!1895) (size!8406 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332033 () Bool)

(declare-fun e!203862 () Bool)

(declare-fun tp_is_empty!6725 () Bool)

(assert (=> b!332033 (= e!203862 tp_is_empty!6725)))

(declare-fun res!182987 () Bool)

(assert (=> start!33480 (=> (not res!182987) (not e!203864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33480 (= res!182987 (validMask!0 mask!2385))))

(assert (=> start!33480 e!203864))

(assert (=> start!33480 true))

(declare-fun e!203863 () Bool)

(declare-fun array_inv!5988 (array!17045) Bool)

(assert (=> start!33480 (and (array_inv!5988 _values!1525) e!203863)))

(declare-fun array_inv!5989 (array!17047) Bool)

(assert (=> start!33480 (array_inv!5989 _keys!1895)))

(declare-fun b!332034 () Bool)

(declare-fun res!182985 () Bool)

(assert (=> b!332034 (=> (not res!182985) (not e!203864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17047 (_ BitVec 32)) Bool)

(assert (=> b!332034 (= res!182985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11472 () Bool)

(declare-fun mapRes!11472 () Bool)

(assert (=> mapIsEmpty!11472 mapRes!11472))

(declare-fun b!332035 () Bool)

(assert (=> b!332035 (= e!203864 false)))

(declare-fun lt!158943 () Bool)

(declare-datatypes ((List!4609 0))(
  ( (Nil!4606) (Cons!4605 (h!5461 (_ BitVec 64)) (t!9699 List!4609)) )
))
(declare-fun arrayNoDuplicates!0 (array!17047 (_ BitVec 32) List!4609) Bool)

(assert (=> b!332035 (= lt!158943 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4606))))

(declare-fun b!332036 () Bool)

(assert (=> b!332036 (= e!203863 (and e!203862 mapRes!11472))))

(declare-fun condMapEmpty!11472 () Bool)

(declare-fun mapDefault!11472 () ValueCell!3019)

