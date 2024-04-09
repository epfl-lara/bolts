; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33636 () Bool)

(assert start!33636)

(declare-fun b_free!6863 () Bool)

(declare-fun b_next!6863 () Bool)

(assert (=> start!33636 (= b_free!6863 (not b_next!6863))))

(declare-fun tp!24093 () Bool)

(declare-fun b_and!14061 () Bool)

(assert (=> start!33636 (= tp!24093 b_and!14061)))

(declare-fun b!333543 () Bool)

(declare-fun e!204806 () Bool)

(declare-fun e!204809 () Bool)

(declare-fun mapRes!11619 () Bool)

(assert (=> b!333543 (= e!204806 (and e!204809 mapRes!11619))))

(declare-fun condMapEmpty!11619 () Bool)

(declare-datatypes ((V!10063 0))(
  ( (V!10064 (val!3452 Int)) )
))
(declare-datatypes ((ValueCell!3064 0))(
  ( (ValueCellFull!3064 (v!5610 V!10063)) (EmptyCell!3064) )
))
(declare-datatypes ((array!17223 0))(
  ( (array!17224 (arr!8139 (Array (_ BitVec 32) ValueCell!3064)) (size!8491 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17223)

(declare-fun mapDefault!11619 () ValueCell!3064)

