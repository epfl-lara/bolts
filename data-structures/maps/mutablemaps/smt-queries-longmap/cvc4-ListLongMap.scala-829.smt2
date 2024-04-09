; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20086 () Bool)

(assert start!20086)

(declare-fun mapIsEmpty!7952 () Bool)

(declare-fun mapRes!7952 () Bool)

(assert (=> mapIsEmpty!7952 mapRes!7952))

(declare-fun b!196513 () Bool)

(declare-fun e!129456 () Bool)

(declare-fun tp_is_empty!4589 () Bool)

(assert (=> b!196513 (= e!129456 tp_is_empty!4589)))

(declare-fun b!196514 () Bool)

(declare-fun e!129457 () Bool)

(assert (=> b!196514 (= e!129457 false)))

(declare-fun lt!97660 () Bool)

(declare-datatypes ((array!8434 0))(
  ( (array!8435 (arr!3967 (Array (_ BitVec 32) (_ BitVec 64))) (size!4292 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8434)

(declare-datatypes ((List!2499 0))(
  ( (Nil!2496) (Cons!2495 (h!3137 (_ BitVec 64)) (t!7438 List!2499)) )
))
(declare-fun arrayNoDuplicates!0 (array!8434 (_ BitVec 32) List!2499) Bool)

(assert (=> b!196514 (= lt!97660 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2496))))

(declare-fun b!196515 () Bool)

(declare-fun res!92769 () Bool)

(assert (=> b!196515 (=> (not res!92769) (not e!129457))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8434 (_ BitVec 32)) Bool)

(assert (=> b!196515 (= res!92769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!92770 () Bool)

(assert (=> start!20086 (=> (not res!92770) (not e!129457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20086 (= res!92770 (validMask!0 mask!1149))))

(assert (=> start!20086 e!129457))

(assert (=> start!20086 true))

(declare-datatypes ((V!5765 0))(
  ( (V!5766 (val!2339 Int)) )
))
(declare-datatypes ((ValueCell!1951 0))(
  ( (ValueCellFull!1951 (v!4305 V!5765)) (EmptyCell!1951) )
))
(declare-datatypes ((array!8436 0))(
  ( (array!8437 (arr!3968 (Array (_ BitVec 32) ValueCell!1951)) (size!4293 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8436)

(declare-fun e!129458 () Bool)

(declare-fun array_inv!2577 (array!8436) Bool)

(assert (=> start!20086 (and (array_inv!2577 _values!649) e!129458)))

(declare-fun array_inv!2578 (array!8434) Bool)

(assert (=> start!20086 (array_inv!2578 _keys!825)))

(declare-fun mapNonEmpty!7952 () Bool)

(declare-fun tp!17240 () Bool)

(assert (=> mapNonEmpty!7952 (= mapRes!7952 (and tp!17240 e!129456))))

(declare-fun mapValue!7952 () ValueCell!1951)

(declare-fun mapRest!7952 () (Array (_ BitVec 32) ValueCell!1951))

(declare-fun mapKey!7952 () (_ BitVec 32))

(assert (=> mapNonEmpty!7952 (= (arr!3968 _values!649) (store mapRest!7952 mapKey!7952 mapValue!7952))))

(declare-fun b!196516 () Bool)

(declare-fun e!129460 () Bool)

(assert (=> b!196516 (= e!129460 tp_is_empty!4589)))

(declare-fun b!196517 () Bool)

(assert (=> b!196517 (= e!129458 (and e!129460 mapRes!7952))))

(declare-fun condMapEmpty!7952 () Bool)

(declare-fun mapDefault!7952 () ValueCell!1951)

