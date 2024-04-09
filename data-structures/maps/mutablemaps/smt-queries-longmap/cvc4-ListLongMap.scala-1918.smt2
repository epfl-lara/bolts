; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34146 () Bool)

(assert start!34146)

(declare-fun b_free!7181 () Bool)

(declare-fun b_next!7181 () Bool)

(assert (=> start!34146 (= b_free!7181 (not b_next!7181))))

(declare-fun tp!25074 () Bool)

(declare-fun b_and!14397 () Bool)

(assert (=> start!34146 (= tp!25074 b_and!14397)))

(declare-fun b!340012 () Bool)

(declare-fun res!187874 () Bool)

(declare-fun e!208605 () Bool)

(assert (=> b!340012 (=> (not res!187874) (not e!208605))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340012 (= res!187874 (validKeyInArray!0 k!1348))))

(declare-fun b!340013 () Bool)

(declare-fun e!208603 () Bool)

(declare-fun e!208600 () Bool)

(declare-fun mapRes!12123 () Bool)

(assert (=> b!340013 (= e!208603 (and e!208600 mapRes!12123))))

(declare-fun condMapEmpty!12123 () Bool)

(declare-datatypes ((V!10487 0))(
  ( (V!10488 (val!3611 Int)) )
))
(declare-datatypes ((ValueCell!3223 0))(
  ( (ValueCellFull!3223 (v!5778 V!10487)) (EmptyCell!3223) )
))
(declare-datatypes ((array!17837 0))(
  ( (array!17838 (arr!8437 (Array (_ BitVec 32) ValueCell!3223)) (size!8789 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17837)

(declare-fun mapDefault!12123 () ValueCell!3223)

