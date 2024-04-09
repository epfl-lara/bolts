; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42262 () Bool)

(assert start!42262)

(declare-fun b_free!11759 () Bool)

(declare-fun b_next!11759 () Bool)

(assert (=> start!42262 (= b_free!11759 (not b_next!11759))))

(declare-fun tp!41304 () Bool)

(declare-fun b_and!20215 () Bool)

(assert (=> start!42262 (= tp!41304 b_and!20215)))

(declare-fun b!471325 () Bool)

(declare-fun e!276251 () Bool)

(declare-fun e!276250 () Bool)

(declare-fun mapRes!21487 () Bool)

(assert (=> b!471325 (= e!276251 (and e!276250 mapRes!21487))))

(declare-fun condMapEmpty!21487 () Bool)

(declare-datatypes ((V!18687 0))(
  ( (V!18688 (val!6638 Int)) )
))
(declare-datatypes ((ValueCell!6250 0))(
  ( (ValueCellFull!6250 (v!8925 V!18687)) (EmptyCell!6250) )
))
(declare-datatypes ((array!30103 0))(
  ( (array!30104 (arr!14470 (Array (_ BitVec 32) ValueCell!6250)) (size!14822 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30103)

(declare-fun mapDefault!21487 () ValueCell!6250)

