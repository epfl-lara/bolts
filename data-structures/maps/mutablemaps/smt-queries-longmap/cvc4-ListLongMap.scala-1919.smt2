; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34172 () Bool)

(assert start!34172)

(declare-fun b_free!7187 () Bool)

(declare-fun b_next!7187 () Bool)

(assert (=> start!34172 (= b_free!7187 (not b_next!7187))))

(declare-fun tp!25094 () Bool)

(declare-fun b_and!14405 () Bool)

(assert (=> start!34172 (= tp!25094 b_and!14405)))

(declare-fun res!187976 () Bool)

(declare-fun e!208737 () Bool)

(assert (=> start!34172 (=> (not res!187976) (not e!208737))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34172 (= res!187976 (validMask!0 mask!2385))))

(assert (=> start!34172 e!208737))

(assert (=> start!34172 true))

(declare-fun tp_is_empty!7139 () Bool)

(assert (=> start!34172 tp_is_empty!7139))

(assert (=> start!34172 tp!25094))

(declare-datatypes ((V!10495 0))(
  ( (V!10496 (val!3614 Int)) )
))
(declare-datatypes ((ValueCell!3226 0))(
  ( (ValueCellFull!3226 (v!5782 V!10495)) (EmptyCell!3226) )
))
(declare-datatypes ((array!17849 0))(
  ( (array!17850 (arr!8442 (Array (_ BitVec 32) ValueCell!3226)) (size!8794 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17849)

(declare-fun e!208735 () Bool)

(declare-fun array_inv!6248 (array!17849) Bool)

(assert (=> start!34172 (and (array_inv!6248 _values!1525) e!208735)))

(declare-datatypes ((array!17851 0))(
  ( (array!17852 (arr!8443 (Array (_ BitVec 32) (_ BitVec 64))) (size!8795 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17851)

(declare-fun array_inv!6249 (array!17851) Bool)

(assert (=> start!34172 (array_inv!6249 _keys!1895)))

(declare-fun b!340228 () Bool)

(declare-fun e!208733 () Bool)

(assert (=> b!340228 (= e!208733 tp_is_empty!7139)))

(declare-fun b!340229 () Bool)

(declare-fun res!187977 () Bool)

(assert (=> b!340229 (=> (not res!187977) (not e!208737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17851 (_ BitVec 32)) Bool)

(assert (=> b!340229 (= res!187977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340230 () Bool)

(declare-fun e!208734 () Bool)

(assert (=> b!340230 (= e!208734 tp_is_empty!7139)))

(declare-fun b!340231 () Bool)

(assert (=> b!340231 (= e!208737 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3264 0))(
  ( (MissingZero!3264 (index!15235 (_ BitVec 32))) (Found!3264 (index!15236 (_ BitVec 32))) (Intermediate!3264 (undefined!4076 Bool) (index!15237 (_ BitVec 32)) (x!33893 (_ BitVec 32))) (Undefined!3264) (MissingVacant!3264 (index!15238 (_ BitVec 32))) )
))
(declare-fun lt!161547 () SeekEntryResult!3264)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17851 (_ BitVec 32)) SeekEntryResult!3264)

(assert (=> b!340231 (= lt!161547 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!340232 () Bool)

(declare-fun res!187979 () Bool)

(assert (=> b!340232 (=> (not res!187979) (not e!208737))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340232 (= res!187979 (and (= (size!8794 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8795 _keys!1895) (size!8794 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340233 () Bool)

(declare-fun res!187975 () Bool)

(assert (=> b!340233 (=> (not res!187975) (not e!208737))))

(declare-fun zeroValue!1467 () V!10495)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10495)

(declare-datatypes ((tuple2!5232 0))(
  ( (tuple2!5233 (_1!2626 (_ BitVec 64)) (_2!2626 V!10495)) )
))
(declare-datatypes ((List!4877 0))(
  ( (Nil!4874) (Cons!4873 (h!5729 tuple2!5232) (t!9993 List!4877)) )
))
(declare-datatypes ((ListLongMap!4159 0))(
  ( (ListLongMap!4160 (toList!2095 List!4877)) )
))
(declare-fun contains!2145 (ListLongMap!4159 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1615 (array!17851 array!17849 (_ BitVec 32) (_ BitVec 32) V!10495 V!10495 (_ BitVec 32) Int) ListLongMap!4159)

(assert (=> b!340233 (= res!187975 (not (contains!2145 (getCurrentListMap!1615 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!340234 () Bool)

(declare-fun res!187974 () Bool)

(assert (=> b!340234 (=> (not res!187974) (not e!208737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340234 (= res!187974 (validKeyInArray!0 k!1348))))

(declare-fun b!340235 () Bool)

(declare-fun res!187978 () Bool)

(assert (=> b!340235 (=> (not res!187978) (not e!208737))))

(declare-datatypes ((List!4878 0))(
  ( (Nil!4875) (Cons!4874 (h!5730 (_ BitVec 64)) (t!9994 List!4878)) )
))
(declare-fun arrayNoDuplicates!0 (array!17851 (_ BitVec 32) List!4878) Bool)

(assert (=> b!340235 (= res!187978 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4875))))

(declare-fun mapNonEmpty!12135 () Bool)

(declare-fun mapRes!12135 () Bool)

(declare-fun tp!25095 () Bool)

(assert (=> mapNonEmpty!12135 (= mapRes!12135 (and tp!25095 e!208733))))

(declare-fun mapRest!12135 () (Array (_ BitVec 32) ValueCell!3226))

(declare-fun mapValue!12135 () ValueCell!3226)

(declare-fun mapKey!12135 () (_ BitVec 32))

(assert (=> mapNonEmpty!12135 (= (arr!8442 _values!1525) (store mapRest!12135 mapKey!12135 mapValue!12135))))

(declare-fun mapIsEmpty!12135 () Bool)

(assert (=> mapIsEmpty!12135 mapRes!12135))

(declare-fun b!340236 () Bool)

(assert (=> b!340236 (= e!208735 (and e!208734 mapRes!12135))))

(declare-fun condMapEmpty!12135 () Bool)

(declare-fun mapDefault!12135 () ValueCell!3226)

