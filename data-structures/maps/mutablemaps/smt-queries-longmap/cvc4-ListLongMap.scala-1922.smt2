; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34190 () Bool)

(assert start!34190)

(declare-fun b_free!7205 () Bool)

(declare-fun b_next!7205 () Bool)

(assert (=> start!34190 (= b_free!7205 (not b_next!7205))))

(declare-fun tp!25149 () Bool)

(declare-fun b_and!14423 () Bool)

(assert (=> start!34190 (= tp!25149 b_and!14423)))

(declare-fun res!188191 () Bool)

(declare-fun e!208894 () Bool)

(assert (=> start!34190 (=> (not res!188191) (not e!208894))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34190 (= res!188191 (validMask!0 mask!2385))))

(assert (=> start!34190 e!208894))

(assert (=> start!34190 true))

(declare-fun tp_is_empty!7157 () Bool)

(assert (=> start!34190 tp_is_empty!7157))

(assert (=> start!34190 tp!25149))

(declare-datatypes ((V!10519 0))(
  ( (V!10520 (val!3623 Int)) )
))
(declare-datatypes ((ValueCell!3235 0))(
  ( (ValueCellFull!3235 (v!5791 V!10519)) (EmptyCell!3235) )
))
(declare-datatypes ((array!17883 0))(
  ( (array!17884 (arr!8459 (Array (_ BitVec 32) ValueCell!3235)) (size!8811 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17883)

(declare-fun e!208899 () Bool)

(declare-fun array_inv!6260 (array!17883) Bool)

(assert (=> start!34190 (and (array_inv!6260 _values!1525) e!208899)))

(declare-datatypes ((array!17885 0))(
  ( (array!17886 (arr!8460 (Array (_ BitVec 32) (_ BitVec 64))) (size!8812 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17885)

(declare-fun array_inv!6261 (array!17885) Bool)

(assert (=> start!34190 (array_inv!6261 _keys!1895)))

(declare-fun b!340523 () Bool)

(declare-fun res!188190 () Bool)

(assert (=> b!340523 (=> (not res!188190) (not e!208894))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340523 (= res!188190 (and (= (size!8811 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8812 _keys!1895) (size!8811 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340524 () Bool)

(declare-fun res!188192 () Bool)

(declare-fun e!208895 () Bool)

(assert (=> b!340524 (=> (not res!188192) (not e!208895))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340524 (= res!188192 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340525 () Bool)

(declare-fun res!188193 () Bool)

(assert (=> b!340525 (=> (not res!188193) (not e!208894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340525 (= res!188193 (validKeyInArray!0 k!1348))))

(declare-fun b!340526 () Bool)

(declare-fun e!208896 () Bool)

(declare-fun mapRes!12162 () Bool)

(assert (=> b!340526 (= e!208899 (and e!208896 mapRes!12162))))

(declare-fun condMapEmpty!12162 () Bool)

(declare-fun mapDefault!12162 () ValueCell!3235)

