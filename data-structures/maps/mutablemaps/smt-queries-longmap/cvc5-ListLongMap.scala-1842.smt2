; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33390 () Bool)

(assert start!33390)

(declare-fun b!331428 () Bool)

(declare-fun e!203384 () Bool)

(declare-fun e!203383 () Bool)

(declare-fun mapRes!11382 () Bool)

(assert (=> b!331428 (= e!203384 (and e!203383 mapRes!11382))))

(declare-fun condMapEmpty!11382 () Bool)

(declare-datatypes ((V!9875 0))(
  ( (V!9876 (val!3381 Int)) )
))
(declare-datatypes ((ValueCell!2993 0))(
  ( (ValueCellFull!2993 (v!5535 V!9875)) (EmptyCell!2993) )
))
(declare-datatypes ((array!16941 0))(
  ( (array!16942 (arr!8006 (Array (_ BitVec 32) ValueCell!2993)) (size!8358 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16941)

(declare-fun mapDefault!11382 () ValueCell!2993)

