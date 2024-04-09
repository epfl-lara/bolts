; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34962 () Bool)

(assert start!34962)

(declare-fun b_free!7669 () Bool)

(declare-fun b_next!7669 () Bool)

(assert (=> start!34962 (= b_free!7669 (not b_next!7669))))

(declare-fun tp!26583 () Bool)

(declare-fun b_and!14915 () Bool)

(assert (=> start!34962 (= tp!26583 b_and!14915)))

(declare-fun b!349884 () Bool)

(declare-fun e!214342 () Bool)

(declare-fun tp_is_empty!7621 () Bool)

(assert (=> b!349884 (= e!214342 tp_is_empty!7621)))

(declare-fun b!349885 () Bool)

(declare-fun res!193975 () Bool)

(declare-fun e!214333 () Bool)

(assert (=> b!349885 (=> (not res!193975) (not e!214333))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11139 0))(
  ( (V!11140 (val!3855 Int)) )
))
(declare-datatypes ((ValueCell!3467 0))(
  ( (ValueCellFull!3467 (v!6037 V!11139)) (EmptyCell!3467) )
))
(declare-datatypes ((array!18795 0))(
  ( (array!18796 (arr!8901 (Array (_ BitVec 32) ValueCell!3467)) (size!9253 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18795)

(declare-datatypes ((array!18797 0))(
  ( (array!18798 (arr!8902 (Array (_ BitVec 32) (_ BitVec 64))) (size!9254 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18797)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!349885 (= res!193975 (and (= (size!9253 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9254 _keys!1895) (size!9253 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349886 () Bool)

(declare-fun res!193978 () Bool)

(assert (=> b!349886 (=> (not res!193978) (not e!214333))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11139)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11139)

(declare-datatypes ((tuple2!5562 0))(
  ( (tuple2!5563 (_1!2791 (_ BitVec 64)) (_2!2791 V!11139)) )
))
(declare-datatypes ((List!5202 0))(
  ( (Nil!5199) (Cons!5198 (h!6054 tuple2!5562) (t!10346 List!5202)) )
))
(declare-datatypes ((ListLongMap!4489 0))(
  ( (ListLongMap!4490 (toList!2260 List!5202)) )
))
(declare-fun contains!2324 (ListLongMap!4489 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1777 (array!18797 array!18795 (_ BitVec 32) (_ BitVec 32) V!11139 V!11139 (_ BitVec 32) Int) ListLongMap!4489)

(assert (=> b!349886 (= res!193978 (not (contains!2324 (getCurrentListMap!1777 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12900 () Bool)

(declare-fun mapRes!12900 () Bool)

(declare-fun tp!26582 () Bool)

(assert (=> mapNonEmpty!12900 (= mapRes!12900 (and tp!26582 e!214342))))

(declare-fun mapKey!12900 () (_ BitVec 32))

(declare-fun mapValue!12900 () ValueCell!3467)

(declare-fun mapRest!12900 () (Array (_ BitVec 32) ValueCell!3467))

(assert (=> mapNonEmpty!12900 (= (arr!8901 _values!1525) (store mapRest!12900 mapKey!12900 mapValue!12900))))

(declare-fun b!349887 () Bool)

(declare-datatypes ((Unit!10842 0))(
  ( (Unit!10843) )
))
(declare-fun e!214334 () Unit!10842)

(declare-fun Unit!10844 () Unit!10842)

(assert (=> b!349887 (= e!214334 Unit!10844)))

(declare-fun lt!164400 () Unit!10842)

(declare-fun lemmaArrayContainsKeyThenInListMap!323 (array!18797 array!18795 (_ BitVec 32) (_ BitVec 32) V!11139 V!11139 (_ BitVec 64) (_ BitVec 32) Int) Unit!10842)

(declare-fun arrayScanForKey!0 (array!18797 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349887 (= lt!164400 (lemmaArrayContainsKeyThenInListMap!323 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349887 false))

(declare-fun b!349888 () Bool)

(declare-fun res!193977 () Bool)

(assert (=> b!349888 (=> (not res!193977) (not e!214333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349888 (= res!193977 (validKeyInArray!0 k!1348))))

(declare-fun b!349889 () Bool)

(declare-fun e!214339 () Bool)

(declare-fun e!214338 () Bool)

(assert (=> b!349889 (= e!214339 (and e!214338 mapRes!12900))))

(declare-fun condMapEmpty!12900 () Bool)

(declare-fun mapDefault!12900 () ValueCell!3467)

