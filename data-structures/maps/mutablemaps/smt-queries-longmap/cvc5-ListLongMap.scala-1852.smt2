; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33488 () Bool)

(assert start!33488)

(declare-fun mapIsEmpty!11484 () Bool)

(declare-fun mapRes!11484 () Bool)

(assert (=> mapIsEmpty!11484 mapRes!11484))

(declare-fun b!332104 () Bool)

(declare-fun e!203922 () Bool)

(declare-fun e!203925 () Bool)

(assert (=> b!332104 (= e!203922 (and e!203925 mapRes!11484))))

(declare-fun condMapEmpty!11484 () Bool)

(declare-datatypes ((V!9955 0))(
  ( (V!9956 (val!3411 Int)) )
))
(declare-datatypes ((ValueCell!3023 0))(
  ( (ValueCellFull!3023 (v!5566 V!9955)) (EmptyCell!3023) )
))
(declare-datatypes ((array!17061 0))(
  ( (array!17062 (arr!8062 (Array (_ BitVec 32) ValueCell!3023)) (size!8414 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17061)

(declare-fun mapDefault!11484 () ValueCell!3023)

