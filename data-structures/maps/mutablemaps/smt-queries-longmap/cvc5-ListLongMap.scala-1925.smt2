; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34204 () Bool)

(assert start!34204)

(declare-fun b_free!7219 () Bool)

(declare-fun b_next!7219 () Bool)

(assert (=> start!34204 (= b_free!7219 (not b_next!7219))))

(declare-fun tp!25191 () Bool)

(declare-fun b_and!14437 () Bool)

(assert (=> start!34204 (= tp!25191 b_and!14437)))

(declare-fun b!340754 () Bool)

(declare-fun e!209025 () Bool)

(assert (=> b!340754 (= e!209025 false)))

(declare-fun lt!161642 () (_ BitVec 32))

(declare-datatypes ((array!17907 0))(
  ( (array!17908 (arr!8471 (Array (_ BitVec 32) (_ BitVec 64))) (size!8823 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17907)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17907 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340754 (= lt!161642 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340755 () Bool)

(declare-fun res!188363 () Bool)

(declare-fun e!209024 () Bool)

(assert (=> b!340755 (=> (not res!188363) (not e!209024))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10539 0))(
  ( (V!10540 (val!3630 Int)) )
))
(declare-datatypes ((ValueCell!3242 0))(
  ( (ValueCellFull!3242 (v!5798 V!10539)) (EmptyCell!3242) )
))
(declare-datatypes ((array!17909 0))(
  ( (array!17910 (arr!8472 (Array (_ BitVec 32) ValueCell!3242)) (size!8824 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17909)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340755 (= res!188363 (and (= (size!8824 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8823 _keys!1895) (size!8824 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340756 () Bool)

(declare-fun e!209021 () Bool)

(declare-fun e!209020 () Bool)

(declare-fun mapRes!12183 () Bool)

(assert (=> b!340756 (= e!209021 (and e!209020 mapRes!12183))))

(declare-fun condMapEmpty!12183 () Bool)

(declare-fun mapDefault!12183 () ValueCell!3242)

