; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21200 () Bool)

(assert start!21200)

(declare-fun b_free!5639 () Bool)

(declare-fun b_next!5639 () Bool)

(assert (=> start!21200 (= b_free!5639 (not b_next!5639))))

(declare-fun tp!19987 () Bool)

(declare-fun b_and!12523 () Bool)

(assert (=> start!21200 (= tp!19987 b_and!12523)))

(declare-fun b!213416 () Bool)

(declare-fun res!104491 () Bool)

(declare-fun e!138805 () Bool)

(assert (=> b!213416 (=> (not res!104491) (not e!138805))))

(declare-datatypes ((array!10204 0))(
  ( (array!10205 (arr!4842 (Array (_ BitVec 32) (_ BitVec 64))) (size!5167 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10204)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213416 (= res!104491 (= (select (arr!4842 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!9350 () Bool)

(declare-fun mapRes!9350 () Bool)

(assert (=> mapIsEmpty!9350 mapRes!9350))

(declare-fun b!213417 () Bool)

(declare-fun e!138802 () Bool)

(declare-fun tp_is_empty!5501 () Bool)

(assert (=> b!213417 (= e!138802 tp_is_empty!5501)))

(declare-fun mapNonEmpty!9350 () Bool)

(declare-fun tp!19988 () Bool)

(declare-fun e!138806 () Bool)

(assert (=> mapNonEmpty!9350 (= mapRes!9350 (and tp!19988 e!138806))))

(declare-datatypes ((V!6981 0))(
  ( (V!6982 (val!2795 Int)) )
))
(declare-datatypes ((ValueCell!2407 0))(
  ( (ValueCellFull!2407 (v!4801 V!6981)) (EmptyCell!2407) )
))
(declare-fun mapRest!9350 () (Array (_ BitVec 32) ValueCell!2407))

(declare-fun mapKey!9350 () (_ BitVec 32))

(declare-datatypes ((array!10206 0))(
  ( (array!10207 (arr!4843 (Array (_ BitVec 32) ValueCell!2407)) (size!5168 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10206)

(declare-fun mapValue!9350 () ValueCell!2407)

(assert (=> mapNonEmpty!9350 (= (arr!4843 _values!649) (store mapRest!9350 mapKey!9350 mapValue!9350))))

(declare-fun b!213418 () Bool)

(declare-fun res!104493 () Bool)

(assert (=> b!213418 (=> (not res!104493) (not e!138805))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10204 (_ BitVec 32)) Bool)

(assert (=> b!213418 (= res!104493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213419 () Bool)

(declare-fun res!104492 () Bool)

(assert (=> b!213419 (=> (not res!104492) (not e!138805))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!213419 (= res!104492 (and (= (size!5168 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5167 _keys!825) (size!5168 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!104488 () Bool)

(assert (=> start!21200 (=> (not res!104488) (not e!138805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21200 (= res!104488 (validMask!0 mask!1149))))

(assert (=> start!21200 e!138805))

(declare-fun e!138803 () Bool)

(declare-fun array_inv!3193 (array!10206) Bool)

(assert (=> start!21200 (and (array_inv!3193 _values!649) e!138803)))

(assert (=> start!21200 true))

(assert (=> start!21200 tp_is_empty!5501))

(declare-fun array_inv!3194 (array!10204) Bool)

(assert (=> start!21200 (array_inv!3194 _keys!825)))

(assert (=> start!21200 tp!19987))

(declare-fun b!213420 () Bool)

(declare-fun res!104489 () Bool)

(assert (=> b!213420 (=> (not res!104489) (not e!138805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213420 (= res!104489 (validKeyInArray!0 k!843))))

(declare-fun b!213421 () Bool)

(assert (=> b!213421 (= e!138803 (and e!138802 mapRes!9350))))

(declare-fun condMapEmpty!9350 () Bool)

(declare-fun mapDefault!9350 () ValueCell!2407)

