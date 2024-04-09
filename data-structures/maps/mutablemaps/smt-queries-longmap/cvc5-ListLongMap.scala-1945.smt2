; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34424 () Bool)

(assert start!34424)

(declare-fun b_free!7339 () Bool)

(declare-fun b_next!7339 () Bool)

(assert (=> start!34424 (= b_free!7339 (not b_next!7339))))

(declare-fun tp!25562 () Bool)

(declare-fun b_and!14565 () Bool)

(assert (=> start!34424 (= tp!25562 b_and!14565)))

(declare-fun mapIsEmpty!12375 () Bool)

(declare-fun mapRes!12375 () Bool)

(assert (=> mapIsEmpty!12375 mapRes!12375))

(declare-fun b!343422 () Bool)

(declare-fun res!189897 () Bool)

(declare-fun e!210585 () Bool)

(assert (=> b!343422 (=> (not res!189897) (not e!210585))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18145 0))(
  ( (array!18146 (arr!8586 (Array (_ BitVec 32) (_ BitVec 64))) (size!8938 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18145)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10699 0))(
  ( (V!10700 (val!3690 Int)) )
))
(declare-datatypes ((ValueCell!3302 0))(
  ( (ValueCellFull!3302 (v!5862 V!10699)) (EmptyCell!3302) )
))
(declare-datatypes ((array!18147 0))(
  ( (array!18148 (arr!8587 (Array (_ BitVec 32) ValueCell!3302)) (size!8939 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18147)

(assert (=> b!343422 (= res!189897 (and (= (size!8939 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8938 _keys!1895) (size!8939 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343423 () Bool)

(declare-fun res!189898 () Bool)

(assert (=> b!343423 (=> (not res!189898) (not e!210585))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343423 (= res!189898 (validKeyInArray!0 k!1348))))

(declare-fun b!343424 () Bool)

(declare-fun e!210584 () Bool)

(declare-fun e!210586 () Bool)

(assert (=> b!343424 (= e!210584 (and e!210586 mapRes!12375))))

(declare-fun condMapEmpty!12375 () Bool)

(declare-fun mapDefault!12375 () ValueCell!3302)

