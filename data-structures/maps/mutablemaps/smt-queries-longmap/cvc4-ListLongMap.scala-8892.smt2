; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108020 () Bool)

(assert start!108020)

(declare-fun b!1275523 () Bool)

(declare-fun res!847872 () Bool)

(declare-fun e!728216 () Bool)

(assert (=> b!1275523 (=> (not res!847872) (not e!728216))))

(declare-datatypes ((List!28781 0))(
  ( (Nil!28778) (Cons!28777 (h!29986 (_ BitVec 64)) (t!42324 List!28781)) )
))
(declare-fun noDuplicate!2083 (List!28781) Bool)

(assert (=> b!1275523 (= res!847872 (noDuplicate!2083 Nil!28778))))

(declare-fun res!847871 () Bool)

(assert (=> start!108020 (=> (not res!847871) (not e!728216))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108020 (= res!847871 (validMask!0 mask!1805))))

(assert (=> start!108020 e!728216))

(assert (=> start!108020 true))

(declare-datatypes ((V!49461 0))(
  ( (V!49462 (val!16709 Int)) )
))
(declare-datatypes ((ValueCell!15736 0))(
  ( (ValueCellFull!15736 (v!19303 V!49461)) (EmptyCell!15736) )
))
(declare-datatypes ((array!83591 0))(
  ( (array!83592 (arr!40304 (Array (_ BitVec 32) ValueCell!15736)) (size!40855 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83591)

(declare-fun e!728218 () Bool)

(declare-fun array_inv!30587 (array!83591) Bool)

(assert (=> start!108020 (and (array_inv!30587 _values!1187) e!728218)))

(declare-datatypes ((array!83593 0))(
  ( (array!83594 (arr!40305 (Array (_ BitVec 32) (_ BitVec 64))) (size!40856 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83593)

(declare-fun array_inv!30588 (array!83593) Bool)

(assert (=> start!108020 (array_inv!30588 _keys!1427)))

(declare-fun b!1275524 () Bool)

(declare-fun res!847874 () Bool)

(assert (=> b!1275524 (=> (not res!847874) (not e!728216))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275524 (= res!847874 (and (= (size!40855 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40856 _keys!1427) (size!40855 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275525 () Bool)

(declare-fun e!728220 () Bool)

(declare-fun mapRes!51428 () Bool)

(assert (=> b!1275525 (= e!728218 (and e!728220 mapRes!51428))))

(declare-fun condMapEmpty!51428 () Bool)

(declare-fun mapDefault!51428 () ValueCell!15736)

