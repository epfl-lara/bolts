; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83690 () Bool)

(assert start!83690)

(declare-fun b!977028 () Bool)

(declare-fun e!550769 () Bool)

(declare-fun tp_is_empty!22487 () Bool)

(assert (=> b!977028 (= e!550769 tp_is_empty!22487)))

(declare-fun b!977029 () Bool)

(declare-fun res!654046 () Bool)

(declare-fun e!550766 () Bool)

(assert (=> b!977029 (=> (not res!654046) (not e!550766))))

(declare-datatypes ((array!60989 0))(
  ( (array!60990 (arr!29350 (Array (_ BitVec 32) (_ BitVec 64))) (size!29830 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60989)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60989 (_ BitVec 32)) Bool)

(assert (=> b!977029 (= res!654046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977030 () Bool)

(declare-fun e!550767 () Bool)

(assert (=> b!977030 (= e!550767 tp_is_empty!22487)))

(declare-fun res!654049 () Bool)

(assert (=> start!83690 (=> (not res!654049) (not e!550766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83690 (= res!654049 (validMask!0 mask!1948))))

(assert (=> start!83690 e!550766))

(assert (=> start!83690 true))

(declare-datatypes ((V!34965 0))(
  ( (V!34966 (val!11294 Int)) )
))
(declare-datatypes ((ValueCell!10762 0))(
  ( (ValueCellFull!10762 (v!13855 V!34965)) (EmptyCell!10762) )
))
(declare-datatypes ((array!60991 0))(
  ( (array!60992 (arr!29351 (Array (_ BitVec 32) ValueCell!10762)) (size!29831 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60991)

(declare-fun e!550770 () Bool)

(declare-fun array_inv!22595 (array!60991) Bool)

(assert (=> start!83690 (and (array_inv!22595 _values!1278) e!550770)))

(declare-fun array_inv!22596 (array!60989) Bool)

(assert (=> start!83690 (array_inv!22596 _keys!1544)))

(declare-fun b!977031 () Bool)

(declare-fun res!654048 () Bool)

(assert (=> b!977031 (=> (not res!654048) (not e!550766))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977031 (= res!654048 (and (= (size!29831 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29830 _keys!1544) (size!29831 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977032 () Bool)

(declare-fun res!654047 () Bool)

(assert (=> b!977032 (=> (not res!654047) (not e!550766))))

(assert (=> b!977032 (= res!654047 (and (bvsle #b00000000000000000000000000000000 (size!29830 _keys!1544)) (bvslt (size!29830 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!35753 () Bool)

(declare-fun mapRes!35753 () Bool)

(declare-fun tp!68006 () Bool)

(assert (=> mapNonEmpty!35753 (= mapRes!35753 (and tp!68006 e!550769))))

(declare-fun mapRest!35753 () (Array (_ BitVec 32) ValueCell!10762))

(declare-fun mapValue!35753 () ValueCell!10762)

(declare-fun mapKey!35753 () (_ BitVec 32))

(assert (=> mapNonEmpty!35753 (= (arr!29351 _values!1278) (store mapRest!35753 mapKey!35753 mapValue!35753))))

(declare-fun b!977033 () Bool)

(declare-datatypes ((List!20490 0))(
  ( (Nil!20487) (Cons!20486 (h!21648 (_ BitVec 64)) (t!29013 List!20490)) )
))
(declare-fun noDuplicate!1383 (List!20490) Bool)

(assert (=> b!977033 (= e!550766 (not (noDuplicate!1383 Nil!20487)))))

(declare-fun b!977034 () Bool)

(assert (=> b!977034 (= e!550770 (and e!550767 mapRes!35753))))

(declare-fun condMapEmpty!35753 () Bool)

(declare-fun mapDefault!35753 () ValueCell!10762)

