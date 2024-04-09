; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108068 () Bool)

(assert start!108068)

(declare-fun b!1275884 () Bool)

(declare-fun res!848057 () Bool)

(declare-fun e!728516 () Bool)

(assert (=> b!1275884 (=> (not res!848057) (not e!728516))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83661 0))(
  ( (array!83662 (arr!40338 (Array (_ BitVec 32) (_ BitVec 64))) (size!40889 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83661)

(declare-datatypes ((V!49509 0))(
  ( (V!49510 (val!16727 Int)) )
))
(declare-datatypes ((ValueCell!15754 0))(
  ( (ValueCellFull!15754 (v!19322 V!49509)) (EmptyCell!15754) )
))
(declare-datatypes ((array!83663 0))(
  ( (array!83664 (arr!40339 (Array (_ BitVec 32) ValueCell!15754)) (size!40890 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83663)

(assert (=> b!1275884 (= res!848057 (and (= (size!40890 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40889 _keys!1427) (size!40890 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275885 () Bool)

(declare-fun e!728515 () Bool)

(declare-fun tp_is_empty!33305 () Bool)

(assert (=> b!1275885 (= e!728515 tp_is_empty!33305)))

(declare-fun res!848058 () Bool)

(assert (=> start!108068 (=> (not res!848058) (not e!728516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108068 (= res!848058 (validMask!0 mask!1805))))

(assert (=> start!108068 e!728516))

(assert (=> start!108068 true))

(declare-fun e!728518 () Bool)

(declare-fun array_inv!30615 (array!83663) Bool)

(assert (=> start!108068 (and (array_inv!30615 _values!1187) e!728518)))

(declare-fun array_inv!30616 (array!83661) Bool)

(assert (=> start!108068 (array_inv!30616 _keys!1427)))

(declare-fun b!1275886 () Bool)

(declare-fun res!848056 () Bool)

(assert (=> b!1275886 (=> (not res!848056) (not e!728516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83661 (_ BitVec 32)) Bool)

(assert (=> b!1275886 (= res!848056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275887 () Bool)

(declare-fun e!728517 () Bool)

(declare-fun mapRes!51485 () Bool)

(assert (=> b!1275887 (= e!728518 (and e!728517 mapRes!51485))))

(declare-fun condMapEmpty!51485 () Bool)

(declare-fun mapDefault!51485 () ValueCell!15754)

