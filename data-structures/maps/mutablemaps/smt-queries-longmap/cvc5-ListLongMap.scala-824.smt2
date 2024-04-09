; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20052 () Bool)

(assert start!20052)

(declare-fun b!196207 () Bool)

(declare-fun e!129202 () Bool)

(declare-fun e!129203 () Bool)

(declare-fun mapRes!7901 () Bool)

(assert (=> b!196207 (= e!129202 (and e!129203 mapRes!7901))))

(declare-fun condMapEmpty!7901 () Bool)

(declare-datatypes ((V!5721 0))(
  ( (V!5722 (val!2322 Int)) )
))
(declare-datatypes ((ValueCell!1934 0))(
  ( (ValueCellFull!1934 (v!4288 V!5721)) (EmptyCell!1934) )
))
(declare-datatypes ((array!8370 0))(
  ( (array!8371 (arr!3935 (Array (_ BitVec 32) ValueCell!1934)) (size!4260 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8370)

(declare-fun mapDefault!7901 () ValueCell!1934)

