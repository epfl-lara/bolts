; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34736 () Bool)

(assert start!34736)

(declare-fun b_free!7535 () Bool)

(declare-fun b_next!7535 () Bool)

(assert (=> start!34736 (= b_free!7535 (not b_next!7535))))

(declare-fun tp!26169 () Bool)

(declare-fun b_and!14773 () Bool)

(assert (=> start!34736 (= tp!26169 b_and!14773)))

(declare-fun b!347040 () Bool)

(declare-fun res!192146 () Bool)

(declare-fun e!212666 () Bool)

(assert (=> b!347040 (=> (not res!192146) (not e!212666))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10959 0))(
  ( (V!10960 (val!3788 Int)) )
))
(declare-fun zeroValue!1467 () V!10959)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3400 0))(
  ( (ValueCellFull!3400 (v!5966 V!10959)) (EmptyCell!3400) )
))
(declare-datatypes ((array!18531 0))(
  ( (array!18532 (arr!8773 (Array (_ BitVec 32) ValueCell!3400)) (size!9125 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18531)

(declare-datatypes ((array!18533 0))(
  ( (array!18534 (arr!8774 (Array (_ BitVec 32) (_ BitVec 64))) (size!9126 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18533)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10959)

(declare-datatypes ((tuple2!5468 0))(
  ( (tuple2!5469 (_1!2744 (_ BitVec 64)) (_2!2744 V!10959)) )
))
(declare-datatypes ((List!5113 0))(
  ( (Nil!5110) (Cons!5109 (h!5965 tuple2!5468) (t!10249 List!5113)) )
))
(declare-datatypes ((ListLongMap!4395 0))(
  ( (ListLongMap!4396 (toList!2213 List!5113)) )
))
(declare-fun contains!2273 (ListLongMap!4395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1733 (array!18533 array!18531 (_ BitVec 32) (_ BitVec 32) V!10959 V!10959 (_ BitVec 32) Int) ListLongMap!4395)

(assert (=> b!347040 (= res!192146 (not (contains!2273 (getCurrentListMap!1733 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!347041 () Bool)

(declare-fun e!212663 () Bool)

(declare-fun tp_is_empty!7487 () Bool)

(assert (=> b!347041 (= e!212663 tp_is_empty!7487)))

(declare-fun b!347042 () Bool)

(declare-fun res!192148 () Bool)

(declare-fun e!212662 () Bool)

(assert (=> b!347042 (=> (not res!192148) (not e!212662))))

(declare-datatypes ((SeekEntryResult!3379 0))(
  ( (MissingZero!3379 (index!15695 (_ BitVec 32))) (Found!3379 (index!15696 (_ BitVec 32))) (Intermediate!3379 (undefined!4191 Bool) (index!15697 (_ BitVec 32)) (x!34572 (_ BitVec 32))) (Undefined!3379) (MissingVacant!3379 (index!15698 (_ BitVec 32))) )
))
(declare-fun lt!163475 () SeekEntryResult!3379)

(declare-fun arrayContainsKey!0 (array!18533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347042 (= res!192148 (arrayContainsKey!0 _keys!1895 k!1348 (index!15696 lt!163475)))))

(declare-fun b!347043 () Bool)

(declare-fun e!212664 () Bool)

(declare-fun e!212667 () Bool)

(declare-fun mapRes!12687 () Bool)

(assert (=> b!347043 (= e!212664 (and e!212667 mapRes!12687))))

(declare-fun condMapEmpty!12687 () Bool)

(declare-fun mapDefault!12687 () ValueCell!3400)

