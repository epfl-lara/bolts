; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39568 () Bool)

(assert start!39568)

(declare-fun b_free!9827 () Bool)

(declare-fun b_next!9827 () Bool)

(assert (=> start!39568 (= b_free!9827 (not b_next!9827))))

(declare-fun tp!35009 () Bool)

(declare-fun b_and!17501 () Bool)

(assert (=> start!39568 (= tp!35009 b_and!17501)))

(declare-fun b!423160 () Bool)

(declare-fun res!247372 () Bool)

(declare-fun e!251598 () Bool)

(assert (=> b!423160 (=> (not res!247372) (not e!251598))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423160 (= res!247372 (bvsle from!863 i!563))))

(declare-fun b!423161 () Bool)

(declare-fun res!247366 () Bool)

(declare-fun e!251597 () Bool)

(assert (=> b!423161 (=> (not res!247366) (not e!251597))))

(declare-datatypes ((array!25785 0))(
  ( (array!25786 (arr!12339 (Array (_ BitVec 32) (_ BitVec 64))) (size!12691 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25785)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15743 0))(
  ( (V!15744 (val!5534 Int)) )
))
(declare-datatypes ((ValueCell!5146 0))(
  ( (ValueCellFull!5146 (v!7777 V!15743)) (EmptyCell!5146) )
))
(declare-datatypes ((array!25787 0))(
  ( (array!25788 (arr!12340 (Array (_ BitVec 32) ValueCell!5146)) (size!12692 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25787)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423161 (= res!247366 (and (= (size!12692 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12691 _keys!709) (size!12692 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423162 () Bool)

(declare-fun res!247373 () Bool)

(assert (=> b!423162 (=> (not res!247373) (not e!251597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423162 (= res!247373 (validMask!0 mask!1025))))

(declare-fun b!423163 () Bool)

(assert (=> b!423163 (= e!251597 e!251598)))

(declare-fun res!247374 () Bool)

(assert (=> b!423163 (=> (not res!247374) (not e!251598))))

(declare-fun lt!194113 () array!25785)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25785 (_ BitVec 32)) Bool)

(assert (=> b!423163 (= res!247374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194113 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!423163 (= lt!194113 (array!25786 (store (arr!12339 _keys!709) i!563 k!794) (size!12691 _keys!709)))))

(declare-fun b!423164 () Bool)

(declare-fun res!247369 () Bool)

(assert (=> b!423164 (=> (not res!247369) (not e!251597))))

(assert (=> b!423164 (= res!247369 (or (= (select (arr!12339 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12339 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423165 () Bool)

(declare-fun res!247371 () Bool)

(assert (=> b!423165 (=> (not res!247371) (not e!251597))))

(declare-datatypes ((List!7242 0))(
  ( (Nil!7239) (Cons!7238 (h!8094 (_ BitVec 64)) (t!12694 List!7242)) )
))
(declare-fun arrayNoDuplicates!0 (array!25785 (_ BitVec 32) List!7242) Bool)

(assert (=> b!423165 (= res!247371 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7239))))

(declare-fun b!423166 () Bool)

(declare-fun res!247363 () Bool)

(assert (=> b!423166 (=> (not res!247363) (not e!251598))))

(assert (=> b!423166 (= res!247363 (arrayNoDuplicates!0 lt!194113 #b00000000000000000000000000000000 Nil!7239))))

(declare-fun b!423167 () Bool)

(declare-fun e!251595 () Bool)

(declare-fun e!251594 () Bool)

(declare-fun mapRes!18090 () Bool)

(assert (=> b!423167 (= e!251595 (and e!251594 mapRes!18090))))

(declare-fun condMapEmpty!18090 () Bool)

(declare-fun mapDefault!18090 () ValueCell!5146)

