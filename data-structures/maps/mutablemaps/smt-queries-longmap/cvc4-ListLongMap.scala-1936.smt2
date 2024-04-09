; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34322 () Bool)

(assert start!34322)

(declare-fun b_free!7289 () Bool)

(declare-fun b_next!7289 () Bool)

(assert (=> start!34322 (= b_free!7289 (not b_next!7289))))

(declare-fun tp!25406 () Bool)

(declare-fun b_and!14511 () Bool)

(assert (=> start!34322 (= tp!25406 b_and!14511)))

(declare-fun mapIsEmpty!12294 () Bool)

(declare-fun mapRes!12294 () Bool)

(assert (=> mapIsEmpty!12294 mapRes!12294))

(declare-fun b!342240 () Bool)

(declare-fun res!189248 () Bool)

(declare-fun e!209884 () Bool)

(assert (=> b!342240 (=> (not res!189248) (not e!209884))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342240 (= res!189248 (validKeyInArray!0 k!1348))))

(declare-fun b!342241 () Bool)

(declare-fun res!189245 () Bool)

(assert (=> b!342241 (=> (not res!189245) (not e!209884))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18049 0))(
  ( (array!18050 (arr!8540 (Array (_ BitVec 32) (_ BitVec 64))) (size!8892 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18049)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10631 0))(
  ( (V!10632 (val!3665 Int)) )
))
(declare-datatypes ((ValueCell!3277 0))(
  ( (ValueCellFull!3277 (v!5835 V!10631)) (EmptyCell!3277) )
))
(declare-datatypes ((array!18051 0))(
  ( (array!18052 (arr!8541 (Array (_ BitVec 32) ValueCell!3277)) (size!8893 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18051)

(assert (=> b!342241 (= res!189245 (and (= (size!8893 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8892 _keys!1895) (size!8893 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342242 () Bool)

(declare-fun e!209887 () Bool)

(declare-fun e!209886 () Bool)

(assert (=> b!342242 (= e!209887 (and e!209886 mapRes!12294))))

(declare-fun condMapEmpty!12294 () Bool)

(declare-fun mapDefault!12294 () ValueCell!3277)

