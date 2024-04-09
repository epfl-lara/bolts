; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41440 () Bool)

(assert start!41440)

(declare-fun b_free!11111 () Bool)

(declare-fun b_next!11111 () Bool)

(assert (=> start!41440 (= b_free!11111 (not b_next!11111))))

(declare-fun tp!39327 () Bool)

(declare-fun b_and!19465 () Bool)

(assert (=> start!41440 (= tp!39327 b_and!19465)))

(declare-fun b!462744 () Bool)

(declare-fun e!270126 () Bool)

(declare-fun tp_is_empty!12539 () Bool)

(assert (=> b!462744 (= e!270126 tp_is_empty!12539)))

(declare-fun b!462745 () Bool)

(declare-fun res!276788 () Bool)

(declare-fun e!270127 () Bool)

(assert (=> b!462745 (=> (not res!276788) (not e!270127))))

(declare-datatypes ((array!28839 0))(
  ( (array!28840 (arr!13849 (Array (_ BitVec 32) (_ BitVec 64))) (size!14201 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28839)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28839 (_ BitVec 32)) Bool)

(assert (=> b!462745 (= res!276788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!276785 () Bool)

(assert (=> start!41440 (=> (not res!276785) (not e!270127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41440 (= res!276785 (validMask!0 mask!1365))))

(assert (=> start!41440 e!270127))

(assert (=> start!41440 tp_is_empty!12539))

(assert (=> start!41440 tp!39327))

(assert (=> start!41440 true))

(declare-fun array_inv!9996 (array!28839) Bool)

(assert (=> start!41440 (array_inv!9996 _keys!1025)))

(declare-datatypes ((V!17823 0))(
  ( (V!17824 (val!6314 Int)) )
))
(declare-datatypes ((ValueCell!5926 0))(
  ( (ValueCellFull!5926 (v!8597 V!17823)) (EmptyCell!5926) )
))
(declare-datatypes ((array!28841 0))(
  ( (array!28842 (arr!13850 (Array (_ BitVec 32) ValueCell!5926)) (size!14202 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28841)

(declare-fun e!270125 () Bool)

(declare-fun array_inv!9997 (array!28841) Bool)

(assert (=> start!41440 (and (array_inv!9997 _values!833) e!270125)))

(declare-fun b!462746 () Bool)

(declare-fun res!276787 () Bool)

(assert (=> b!462746 (=> (not res!276787) (not e!270127))))

(declare-datatypes ((List!8366 0))(
  ( (Nil!8363) (Cons!8362 (h!9218 (_ BitVec 64)) (t!14318 List!8366)) )
))
(declare-fun arrayNoDuplicates!0 (array!28839 (_ BitVec 32) List!8366) Bool)

(assert (=> b!462746 (= res!276787 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8363))))

(declare-fun mapIsEmpty!20482 () Bool)

(declare-fun mapRes!20482 () Bool)

(assert (=> mapIsEmpty!20482 mapRes!20482))

(declare-fun b!462747 () Bool)

(declare-fun e!270124 () Bool)

(assert (=> b!462747 (= e!270125 (and e!270124 mapRes!20482))))

(declare-fun condMapEmpty!20482 () Bool)

(declare-fun mapDefault!20482 () ValueCell!5926)

