; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108064 () Bool)

(assert start!108064)

(declare-fun res!848039 () Bool)

(declare-fun e!728486 () Bool)

(assert (=> start!108064 (=> (not res!848039) (not e!728486))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108064 (= res!848039 (validMask!0 mask!1805))))

(assert (=> start!108064 e!728486))

(assert (=> start!108064 true))

(declare-datatypes ((V!49505 0))(
  ( (V!49506 (val!16725 Int)) )
))
(declare-datatypes ((ValueCell!15752 0))(
  ( (ValueCellFull!15752 (v!19320 V!49505)) (EmptyCell!15752) )
))
(declare-datatypes ((array!83653 0))(
  ( (array!83654 (arr!40334 (Array (_ BitVec 32) ValueCell!15752)) (size!40885 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83653)

(declare-fun e!728485 () Bool)

(declare-fun array_inv!30611 (array!83653) Bool)

(assert (=> start!108064 (and (array_inv!30611 _values!1187) e!728485)))

(declare-datatypes ((array!83655 0))(
  ( (array!83656 (arr!40335 (Array (_ BitVec 32) (_ BitVec 64))) (size!40886 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83655)

(declare-fun array_inv!30612 (array!83655) Bool)

(assert (=> start!108064 (array_inv!30612 _keys!1427)))

(declare-fun b!1275848 () Bool)

(declare-fun e!728488 () Bool)

(declare-fun mapRes!51479 () Bool)

(assert (=> b!1275848 (= e!728485 (and e!728488 mapRes!51479))))

(declare-fun condMapEmpty!51479 () Bool)

(declare-fun mapDefault!51479 () ValueCell!15752)

