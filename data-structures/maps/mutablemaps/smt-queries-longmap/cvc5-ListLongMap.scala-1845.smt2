; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33434 () Bool)

(assert start!33434)

(declare-fun b!331671 () Bool)

(declare-fun e!203571 () Bool)

(declare-fun e!203574 () Bool)

(assert (=> b!331671 (= e!203571 e!203574)))

(declare-fun res!182796 () Bool)

(assert (=> b!331671 (=> res!182796 e!203574)))

(declare-datatypes ((List!4597 0))(
  ( (Nil!4594) (Cons!4593 (h!5449 (_ BitVec 64)) (t!9687 List!4597)) )
))
(declare-fun contains!2002 (List!4597 (_ BitVec 64)) Bool)

(assert (=> b!331671 (= res!182796 (contains!2002 Nil!4594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!11418 () Bool)

(declare-fun mapRes!11418 () Bool)

(assert (=> mapIsEmpty!11418 mapRes!11418))

(declare-fun b!331672 () Bool)

(declare-fun e!203570 () Bool)

(declare-fun tp_is_empty!6691 () Bool)

(assert (=> b!331672 (= e!203570 tp_is_empty!6691)))

(declare-fun b!331673 () Bool)

(declare-fun res!182795 () Bool)

(assert (=> b!331673 (=> (not res!182795) (not e!203571))))

(declare-fun noDuplicate!175 (List!4597) Bool)

(assert (=> b!331673 (= res!182795 (noDuplicate!175 Nil!4594))))

(declare-fun b!331675 () Bool)

(declare-fun e!203575 () Bool)

(assert (=> b!331675 (= e!203575 (and e!203570 mapRes!11418))))

(declare-fun condMapEmpty!11418 () Bool)

(declare-datatypes ((V!9899 0))(
  ( (V!9900 (val!3390 Int)) )
))
(declare-datatypes ((ValueCell!3002 0))(
  ( (ValueCellFull!3002 (v!5544 V!9899)) (EmptyCell!3002) )
))
(declare-datatypes ((array!16981 0))(
  ( (array!16982 (arr!8023 (Array (_ BitVec 32) ValueCell!3002)) (size!8375 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16981)

(declare-fun mapDefault!11418 () ValueCell!3002)

