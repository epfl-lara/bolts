; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40048 () Bool)

(assert start!40048)

(declare-fun b_free!10307 () Bool)

(declare-fun b_next!10307 () Bool)

(assert (=> start!40048 (= b_free!10307 (not b_next!10307))))

(declare-fun tp!36450 () Bool)

(declare-fun b_and!18291 () Bool)

(assert (=> start!40048 (= tp!36450 b_and!18291)))

(declare-fun b!436523 () Bool)

(declare-fun e!257764 () Bool)

(declare-fun tp_is_empty!11459 () Bool)

(assert (=> b!436523 (= e!257764 tp_is_empty!11459)))

(declare-fun b!436524 () Bool)

(declare-fun res!257442 () Bool)

(declare-fun e!257763 () Bool)

(assert (=> b!436524 (=> (not res!257442) (not e!257763))))

(declare-datatypes ((array!26719 0))(
  ( (array!26720 (arr!12806 (Array (_ BitVec 32) (_ BitVec 64))) (size!13158 (_ BitVec 32))) )
))
(declare-fun lt!201379 () array!26719)

(declare-datatypes ((List!7626 0))(
  ( (Nil!7623) (Cons!7622 (h!8478 (_ BitVec 64)) (t!13390 List!7626)) )
))
(declare-fun arrayNoDuplicates!0 (array!26719 (_ BitVec 32) List!7626) Bool)

(assert (=> b!436524 (= res!257442 (arrayNoDuplicates!0 lt!201379 #b00000000000000000000000000000000 Nil!7623))))

(declare-fun b!436525 () Bool)

(declare-fun res!257441 () Bool)

(declare-fun e!257759 () Bool)

(assert (=> b!436525 (=> (not res!257441) (not e!257759))))

(declare-fun _keys!709 () array!26719)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26719 (_ BitVec 32)) Bool)

(assert (=> b!436525 (= res!257441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436526 () Bool)

(declare-fun e!257755 () Bool)

(declare-fun mapRes!18810 () Bool)

(assert (=> b!436526 (= e!257755 (and e!257764 mapRes!18810))))

(declare-fun condMapEmpty!18810 () Bool)

(declare-datatypes ((V!16383 0))(
  ( (V!16384 (val!5774 Int)) )
))
(declare-datatypes ((ValueCell!5386 0))(
  ( (ValueCellFull!5386 (v!8017 V!16383)) (EmptyCell!5386) )
))
(declare-datatypes ((array!26721 0))(
  ( (array!26722 (arr!12807 (Array (_ BitVec 32) ValueCell!5386)) (size!13159 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26721)

(declare-fun mapDefault!18810 () ValueCell!5386)

