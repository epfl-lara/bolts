; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20176 () Bool)

(assert start!20176)

(declare-fun b_free!4823 () Bool)

(declare-fun b_next!4823 () Bool)

(assert (=> start!20176 (= b_free!4823 (not b_next!4823))))

(declare-fun tp!17501 () Bool)

(declare-fun b_and!11587 () Bool)

(assert (=> start!20176 (= tp!17501 b_and!11587)))

(declare-fun b!197850 () Bool)

(declare-fun res!93700 () Bool)

(declare-fun e!130135 () Bool)

(assert (=> b!197850 (=> (not res!93700) (not e!130135))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197850 (= res!93700 (validKeyInArray!0 k!843))))

(declare-fun b!197851 () Bool)

(declare-fun e!130132 () Bool)

(declare-fun e!130133 () Bool)

(declare-fun mapRes!8087 () Bool)

(assert (=> b!197851 (= e!130132 (and e!130133 mapRes!8087))))

(declare-fun condMapEmpty!8087 () Bool)

(declare-datatypes ((V!5885 0))(
  ( (V!5886 (val!2384 Int)) )
))
(declare-datatypes ((ValueCell!1996 0))(
  ( (ValueCellFull!1996 (v!4350 V!5885)) (EmptyCell!1996) )
))
(declare-datatypes ((array!8610 0))(
  ( (array!8611 (arr!4055 (Array (_ BitVec 32) ValueCell!1996)) (size!4380 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8610)

(declare-fun mapDefault!8087 () ValueCell!1996)

