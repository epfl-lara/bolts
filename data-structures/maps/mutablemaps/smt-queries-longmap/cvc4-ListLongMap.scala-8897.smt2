; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108062 () Bool)

(assert start!108062)

(declare-fun mapIsEmpty!51476 () Bool)

(declare-fun mapRes!51476 () Bool)

(assert (=> mapIsEmpty!51476 mapRes!51476))

(declare-fun b!1275830 () Bool)

(declare-fun e!728470 () Bool)

(declare-fun tp_is_empty!33299 () Bool)

(assert (=> b!1275830 (= e!728470 tp_is_empty!33299)))

(declare-fun res!848029 () Bool)

(declare-fun e!728474 () Bool)

(assert (=> start!108062 (=> (not res!848029) (not e!728474))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108062 (= res!848029 (validMask!0 mask!1805))))

(assert (=> start!108062 e!728474))

(assert (=> start!108062 true))

(declare-datatypes ((V!49501 0))(
  ( (V!49502 (val!16724 Int)) )
))
(declare-datatypes ((ValueCell!15751 0))(
  ( (ValueCellFull!15751 (v!19319 V!49501)) (EmptyCell!15751) )
))
(declare-datatypes ((array!83649 0))(
  ( (array!83650 (arr!40332 (Array (_ BitVec 32) ValueCell!15751)) (size!40883 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83649)

(declare-fun e!728471 () Bool)

(declare-fun array_inv!30609 (array!83649) Bool)

(assert (=> start!108062 (and (array_inv!30609 _values!1187) e!728471)))

(declare-datatypes ((array!83651 0))(
  ( (array!83652 (arr!40333 (Array (_ BitVec 32) (_ BitVec 64))) (size!40884 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83651)

(declare-fun array_inv!30610 (array!83651) Bool)

(assert (=> start!108062 (array_inv!30610 _keys!1427)))

(declare-fun mapNonEmpty!51476 () Bool)

(declare-fun tp!98235 () Bool)

(assert (=> mapNonEmpty!51476 (= mapRes!51476 (and tp!98235 e!728470))))

(declare-fun mapValue!51476 () ValueCell!15751)

(declare-fun mapKey!51476 () (_ BitVec 32))

(declare-fun mapRest!51476 () (Array (_ BitVec 32) ValueCell!15751))

(assert (=> mapNonEmpty!51476 (= (arr!40332 _values!1187) (store mapRest!51476 mapKey!51476 mapValue!51476))))

(declare-fun b!1275831 () Bool)

(assert (=> b!1275831 (= e!728474 false)))

(declare-fun lt!575352 () Bool)

(declare-datatypes ((List!28790 0))(
  ( (Nil!28787) (Cons!28786 (h!29995 (_ BitVec 64)) (t!42333 List!28790)) )
))
(declare-fun arrayNoDuplicates!0 (array!83651 (_ BitVec 32) List!28790) Bool)

(assert (=> b!1275831 (= lt!575352 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28787))))

(declare-fun b!1275832 () Bool)

(declare-fun res!848030 () Bool)

(assert (=> b!1275832 (=> (not res!848030) (not e!728474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83651 (_ BitVec 32)) Bool)

(assert (=> b!1275832 (= res!848030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275833 () Bool)

(declare-fun e!728472 () Bool)

(assert (=> b!1275833 (= e!728471 (and e!728472 mapRes!51476))))

(declare-fun condMapEmpty!51476 () Bool)

(declare-fun mapDefault!51476 () ValueCell!15751)

