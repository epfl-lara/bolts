; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35286 () Bool)

(assert start!35286)

(declare-fun b!353346 () Bool)

(declare-fun e!216427 () Bool)

(declare-fun e!216428 () Bool)

(declare-fun mapRes!13164 () Bool)

(assert (=> b!353346 (= e!216427 (and e!216428 mapRes!13164))))

(declare-fun condMapEmpty!13164 () Bool)

(declare-datatypes ((V!11351 0))(
  ( (V!11352 (val!3935 Int)) )
))
(declare-datatypes ((ValueCell!3547 0))(
  ( (ValueCellFull!3547 (v!6124 V!11351)) (EmptyCell!3547) )
))
(declare-datatypes ((array!19113 0))(
  ( (array!19114 (arr!9052 (Array (_ BitVec 32) ValueCell!3547)) (size!9404 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19113)

(declare-fun mapDefault!13164 () ValueCell!3547)

