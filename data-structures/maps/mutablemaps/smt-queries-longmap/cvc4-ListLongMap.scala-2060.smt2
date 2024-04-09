; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35540 () Bool)

(assert start!35540)

(declare-fun b!355857 () Bool)

(declare-fun e!218075 () Bool)

(assert (=> b!355857 (= e!218075 false)))

(declare-fun lt!165853 () Bool)

(declare-datatypes ((array!19513 0))(
  ( (array!19514 (arr!9247 (Array (_ BitVec 32) (_ BitVec 64))) (size!9599 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19513)

(declare-datatypes ((List!5378 0))(
  ( (Nil!5375) (Cons!5374 (h!6230 (_ BitVec 64)) (t!10536 List!5378)) )
))
(declare-fun arrayNoDuplicates!0 (array!19513 (_ BitVec 32) List!5378) Bool)

(assert (=> b!355857 (= lt!165853 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5375))))

(declare-fun mapIsEmpty!13485 () Bool)

(declare-fun mapRes!13485 () Bool)

(assert (=> mapIsEmpty!13485 mapRes!13485))

(declare-fun b!355858 () Bool)

(declare-fun e!218073 () Bool)

(declare-fun e!218071 () Bool)

(assert (=> b!355858 (= e!218073 (and e!218071 mapRes!13485))))

(declare-fun condMapEmpty!13485 () Bool)

(declare-datatypes ((V!11623 0))(
  ( (V!11624 (val!4037 Int)) )
))
(declare-datatypes ((ValueCell!3649 0))(
  ( (ValueCellFull!3649 (v!6227 V!11623)) (EmptyCell!3649) )
))
(declare-datatypes ((array!19515 0))(
  ( (array!19516 (arr!9248 (Array (_ BitVec 32) ValueCell!3649)) (size!9600 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19515)

(declare-fun mapDefault!13485 () ValueCell!3649)

