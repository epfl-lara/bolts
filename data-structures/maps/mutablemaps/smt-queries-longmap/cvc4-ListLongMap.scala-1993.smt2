; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34854 () Bool)

(assert start!34854)

(declare-fun b_free!7631 () Bool)

(declare-fun b_next!7631 () Bool)

(assert (=> start!34854 (= b_free!7631 (not b_next!7631))))

(declare-fun tp!26459 () Bool)

(declare-fun b_and!14871 () Bool)

(assert (=> start!34854 (= tp!26459 b_and!14871)))

(declare-fun b!348768 () Bool)

(declare-fun res!193356 () Bool)

(declare-fun e!213662 () Bool)

(assert (=> b!348768 (=> (not res!193356) (not e!213662))))

(declare-datatypes ((array!18719 0))(
  ( (array!18720 (arr!8866 (Array (_ BitVec 32) (_ BitVec 64))) (size!9218 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18719)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348768 (= res!193356 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348770 () Bool)

(declare-fun res!193357 () Bool)

(declare-fun e!213663 () Bool)

(assert (=> b!348770 (=> (not res!193357) (not e!213663))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18719 (_ BitVec 32)) Bool)

(assert (=> b!348770 (= res!193357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348771 () Bool)

(assert (=> b!348771 (= e!213662 false)))

(declare-fun lt!163935 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18719 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348771 (= lt!163935 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348772 () Bool)

(declare-fun e!213665 () Bool)

(declare-fun tp_is_empty!7583 () Bool)

(assert (=> b!348772 (= e!213665 tp_is_empty!7583)))

(declare-fun b!348773 () Bool)

(assert (=> b!348773 (= e!213663 e!213662)))

(declare-fun res!193361 () Bool)

(assert (=> b!348773 (=> (not res!193361) (not e!213662))))

(declare-datatypes ((SeekEntryResult!3415 0))(
  ( (MissingZero!3415 (index!15839 (_ BitVec 32))) (Found!3415 (index!15840 (_ BitVec 32))) (Intermediate!3415 (undefined!4227 Bool) (index!15841 (_ BitVec 32)) (x!34746 (_ BitVec 32))) (Undefined!3415) (MissingVacant!3415 (index!15842 (_ BitVec 32))) )
))
(declare-fun lt!163934 () SeekEntryResult!3415)

(assert (=> b!348773 (= res!193361 (and (not (is-Found!3415 lt!163934)) (is-MissingZero!3415 lt!163934)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18719 (_ BitVec 32)) SeekEntryResult!3415)

(assert (=> b!348773 (= lt!163934 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12834 () Bool)

(declare-fun mapRes!12834 () Bool)

(declare-fun tp!26460 () Bool)

(declare-fun e!213664 () Bool)

(assert (=> mapNonEmpty!12834 (= mapRes!12834 (and tp!26460 e!213664))))

(declare-datatypes ((V!11087 0))(
  ( (V!11088 (val!3836 Int)) )
))
(declare-datatypes ((ValueCell!3448 0))(
  ( (ValueCellFull!3448 (v!6015 V!11087)) (EmptyCell!3448) )
))
(declare-fun mapValue!12834 () ValueCell!3448)

(declare-fun mapKey!12834 () (_ BitVec 32))

(declare-fun mapRest!12834 () (Array (_ BitVec 32) ValueCell!3448))

(declare-datatypes ((array!18721 0))(
  ( (array!18722 (arr!8867 (Array (_ BitVec 32) ValueCell!3448)) (size!9219 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18721)

(assert (=> mapNonEmpty!12834 (= (arr!8867 _values!1525) (store mapRest!12834 mapKey!12834 mapValue!12834))))

(declare-fun b!348774 () Bool)

(declare-fun res!193358 () Bool)

(assert (=> b!348774 (=> (not res!193358) (not e!213663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348774 (= res!193358 (validKeyInArray!0 k!1348))))

(declare-fun b!348775 () Bool)

(declare-fun res!193362 () Bool)

(assert (=> b!348775 (=> (not res!193362) (not e!213663))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348775 (= res!193362 (and (= (size!9219 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9218 _keys!1895) (size!9219 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348776 () Bool)

(declare-fun res!193363 () Bool)

(assert (=> b!348776 (=> (not res!193363) (not e!213663))))

(declare-fun zeroValue!1467 () V!11087)

(declare-fun minValue!1467 () V!11087)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5540 0))(
  ( (tuple2!5541 (_1!2780 (_ BitVec 64)) (_2!2780 V!11087)) )
))
(declare-datatypes ((List!5181 0))(
  ( (Nil!5178) (Cons!5177 (h!6033 tuple2!5540) (t!10319 List!5181)) )
))
(declare-datatypes ((ListLongMap!4467 0))(
  ( (ListLongMap!4468 (toList!2249 List!5181)) )
))
(declare-fun contains!2310 (ListLongMap!4467 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1766 (array!18719 array!18721 (_ BitVec 32) (_ BitVec 32) V!11087 V!11087 (_ BitVec 32) Int) ListLongMap!4467)

(assert (=> b!348776 (= res!193363 (not (contains!2310 (getCurrentListMap!1766 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348769 () Bool)

(assert (=> b!348769 (= e!213664 tp_is_empty!7583)))

(declare-fun res!193360 () Bool)

(assert (=> start!34854 (=> (not res!193360) (not e!213663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34854 (= res!193360 (validMask!0 mask!2385))))

(assert (=> start!34854 e!213663))

(assert (=> start!34854 true))

(assert (=> start!34854 tp_is_empty!7583))

(assert (=> start!34854 tp!26459))

(declare-fun e!213660 () Bool)

(declare-fun array_inv!6540 (array!18721) Bool)

(assert (=> start!34854 (and (array_inv!6540 _values!1525) e!213660)))

(declare-fun array_inv!6541 (array!18719) Bool)

(assert (=> start!34854 (array_inv!6541 _keys!1895)))

(declare-fun b!348777 () Bool)

(assert (=> b!348777 (= e!213660 (and e!213665 mapRes!12834))))

(declare-fun condMapEmpty!12834 () Bool)

(declare-fun mapDefault!12834 () ValueCell!3448)

