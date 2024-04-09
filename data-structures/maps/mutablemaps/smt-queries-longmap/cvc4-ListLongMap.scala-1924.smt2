; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34202 () Bool)

(assert start!34202)

(declare-fun b_free!7217 () Bool)

(declare-fun b_next!7217 () Bool)

(assert (=> start!34202 (= b_free!7217 (not b_next!7217))))

(declare-fun tp!25184 () Bool)

(declare-fun b_and!14435 () Bool)

(assert (=> start!34202 (= tp!25184 b_and!14435)))

(declare-fun b!340721 () Bool)

(declare-fun e!209004 () Bool)

(assert (=> b!340721 (= e!209004 false)))

(declare-fun lt!161637 () (_ BitVec 32))

(declare-datatypes ((array!17903 0))(
  ( (array!17904 (arr!8469 (Array (_ BitVec 32) (_ BitVec 64))) (size!8821 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17903)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17903 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340721 (= lt!161637 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340722 () Bool)

(declare-fun e!209005 () Bool)

(declare-fun tp_is_empty!7169 () Bool)

(assert (=> b!340722 (= e!209005 tp_is_empty!7169)))

(declare-fun b!340723 () Bool)

(declare-fun e!209007 () Bool)

(assert (=> b!340723 (= e!209007 tp_is_empty!7169)))

(declare-fun mapNonEmpty!12180 () Bool)

(declare-fun mapRes!12180 () Bool)

(declare-fun tp!25185 () Bool)

(assert (=> mapNonEmpty!12180 (= mapRes!12180 (and tp!25185 e!209007))))

(declare-fun mapKey!12180 () (_ BitVec 32))

(declare-datatypes ((V!10535 0))(
  ( (V!10536 (val!3629 Int)) )
))
(declare-datatypes ((ValueCell!3241 0))(
  ( (ValueCellFull!3241 (v!5797 V!10535)) (EmptyCell!3241) )
))
(declare-fun mapRest!12180 () (Array (_ BitVec 32) ValueCell!3241))

(declare-datatypes ((array!17905 0))(
  ( (array!17906 (arr!8470 (Array (_ BitVec 32) ValueCell!3241)) (size!8822 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17905)

(declare-fun mapValue!12180 () ValueCell!3241)

(assert (=> mapNonEmpty!12180 (= (arr!8470 _values!1525) (store mapRest!12180 mapKey!12180 mapValue!12180))))

(declare-fun b!340724 () Bool)

(declare-fun e!209006 () Bool)

(assert (=> b!340724 (= e!209006 (and e!209005 mapRes!12180))))

(declare-fun condMapEmpty!12180 () Bool)

(declare-fun mapDefault!12180 () ValueCell!3241)

