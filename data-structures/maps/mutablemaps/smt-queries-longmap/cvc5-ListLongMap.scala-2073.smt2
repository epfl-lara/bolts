; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35614 () Bool)

(assert start!35614)

(declare-fun b!356983 () Bool)

(declare-fun res!198285 () Bool)

(declare-fun e!218627 () Bool)

(assert (=> b!356983 (=> (not res!198285) (not e!218627))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19653 0))(
  ( (array!19654 (arr!9317 (Array (_ BitVec 32) (_ BitVec 64))) (size!9669 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19653)

(assert (=> b!356983 (= res!198285 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9669 _keys!1456))))))

(declare-fun b!356984 () Bool)

(declare-fun res!198281 () Bool)

(assert (=> b!356984 (=> (not res!198281) (not e!218627))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356984 (= res!198281 (validKeyInArray!0 k!1077))))

(declare-fun mapIsEmpty!13596 () Bool)

(declare-fun mapRes!13596 () Bool)

(assert (=> mapIsEmpty!13596 mapRes!13596))

(declare-fun b!356985 () Bool)

(declare-fun res!198280 () Bool)

(assert (=> b!356985 (=> (not res!198280) (not e!218627))))

(declare-datatypes ((List!5406 0))(
  ( (Nil!5403) (Cons!5402 (h!6258 (_ BitVec 64)) (t!10564 List!5406)) )
))
(declare-fun arrayNoDuplicates!0 (array!19653 (_ BitVec 32) List!5406) Bool)

(assert (=> b!356985 (= res!198280 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5403))))

(declare-fun b!356986 () Bool)

(declare-fun e!218626 () Bool)

(declare-fun e!218629 () Bool)

(assert (=> b!356986 (= e!218626 (and e!218629 mapRes!13596))))

(declare-fun condMapEmpty!13596 () Bool)

(declare-datatypes ((V!11723 0))(
  ( (V!11724 (val!4074 Int)) )
))
(declare-datatypes ((ValueCell!3686 0))(
  ( (ValueCellFull!3686 (v!6264 V!11723)) (EmptyCell!3686) )
))
(declare-datatypes ((array!19655 0))(
  ( (array!19656 (arr!9318 (Array (_ BitVec 32) ValueCell!3686)) (size!9670 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19655)

(declare-fun mapDefault!13596 () ValueCell!3686)

