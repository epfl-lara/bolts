; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20674 () Bool)

(assert start!20674)

(declare-fun b_free!5321 () Bool)

(declare-fun b_next!5321 () Bool)

(assert (=> start!20674 (= b_free!5321 (not b_next!5321))))

(declare-fun tp!18994 () Bool)

(declare-fun b_and!12085 () Bool)

(assert (=> start!20674 (= tp!18994 b_and!12085)))

(declare-fun b!206380 () Bool)

(declare-fun res!99996 () Bool)

(declare-fun e!134899 () Bool)

(assert (=> b!206380 (=> (not res!99996) (not e!134899))))

(declare-datatypes ((array!9564 0))(
  ( (array!9565 (arr!4532 (Array (_ BitVec 32) (_ BitVec 64))) (size!4857 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9564)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9564 (_ BitVec 32)) Bool)

(assert (=> b!206380 (= res!99996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206381 () Bool)

(declare-fun e!134903 () Bool)

(declare-fun tp_is_empty!5177 () Bool)

(assert (=> b!206381 (= e!134903 tp_is_empty!5177)))

(declare-fun b!206382 () Bool)

(declare-fun e!134904 () Bool)

(declare-fun mapRes!8834 () Bool)

(assert (=> b!206382 (= e!134904 (and e!134903 mapRes!8834))))

(declare-fun condMapEmpty!8834 () Bool)

(declare-datatypes ((V!6549 0))(
  ( (V!6550 (val!2633 Int)) )
))
(declare-datatypes ((ValueCell!2245 0))(
  ( (ValueCellFull!2245 (v!4599 V!6549)) (EmptyCell!2245) )
))
(declare-datatypes ((array!9566 0))(
  ( (array!9567 (arr!4533 (Array (_ BitVec 32) ValueCell!2245)) (size!4858 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9566)

(declare-fun mapDefault!8834 () ValueCell!2245)

