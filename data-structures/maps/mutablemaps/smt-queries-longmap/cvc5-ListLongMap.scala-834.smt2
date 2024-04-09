; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20112 () Bool)

(assert start!20112)

(declare-fun b_free!4759 () Bool)

(declare-fun b_next!4759 () Bool)

(assert (=> start!20112 (= b_free!4759 (not b_next!4759))))

(declare-fun tp!17308 () Bool)

(declare-fun b_and!11523 () Bool)

(assert (=> start!20112 (= tp!17308 b_and!11523)))

(declare-fun b!196890 () Bool)

(declare-fun res!93031 () Bool)

(declare-fun e!129655 () Bool)

(assert (=> b!196890 (=> (not res!93031) (not e!129655))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196890 (= res!93031 (validKeyInArray!0 k!843))))

(declare-fun b!196891 () Bool)

(declare-fun res!93032 () Bool)

(assert (=> b!196891 (=> (not res!93032) (not e!129655))))

(declare-datatypes ((array!8484 0))(
  ( (array!8485 (arr!3992 (Array (_ BitVec 32) (_ BitVec 64))) (size!4317 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8484)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196891 (= res!93032 (= (select (arr!3992 _keys!825) i!601) k!843))))

(declare-fun b!196892 () Bool)

(declare-fun e!129652 () Bool)

(declare-fun e!129653 () Bool)

(declare-fun mapRes!7991 () Bool)

(assert (=> b!196892 (= e!129652 (and e!129653 mapRes!7991))))

(declare-fun condMapEmpty!7991 () Bool)

(declare-datatypes ((V!5801 0))(
  ( (V!5802 (val!2352 Int)) )
))
(declare-datatypes ((ValueCell!1964 0))(
  ( (ValueCellFull!1964 (v!4318 V!5801)) (EmptyCell!1964) )
))
(declare-datatypes ((array!8486 0))(
  ( (array!8487 (arr!3993 (Array (_ BitVec 32) ValueCell!1964)) (size!4318 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8486)

(declare-fun mapDefault!7991 () ValueCell!1964)

