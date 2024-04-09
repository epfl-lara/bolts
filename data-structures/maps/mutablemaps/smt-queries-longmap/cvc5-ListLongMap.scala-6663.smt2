; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83978 () Bool)

(assert start!83978)

(declare-fun b!980911 () Bool)

(declare-fun e!552985 () Bool)

(declare-fun tp_is_empty!22753 () Bool)

(assert (=> b!980911 (= e!552985 tp_is_empty!22753)))

(declare-fun b!980912 () Bool)

(declare-fun res!656537 () Bool)

(declare-fun e!552986 () Bool)

(assert (=> b!980912 (=> (not res!656537) (not e!552986))))

(declare-datatypes ((array!61503 0))(
  ( (array!61504 (arr!29605 (Array (_ BitVec 32) (_ BitVec 64))) (size!30085 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61503)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61503 (_ BitVec 32)) Bool)

(assert (=> b!980912 (= res!656537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36158 () Bool)

(declare-fun mapRes!36158 () Bool)

(declare-fun tp!68672 () Bool)

(assert (=> mapNonEmpty!36158 (= mapRes!36158 (and tp!68672 e!552985))))

(declare-datatypes ((V!35321 0))(
  ( (V!35322 (val!11427 Int)) )
))
(declare-datatypes ((ValueCell!10895 0))(
  ( (ValueCellFull!10895 (v!13989 V!35321)) (EmptyCell!10895) )
))
(declare-fun mapValue!36158 () ValueCell!10895)

(declare-fun mapRest!36158 () (Array (_ BitVec 32) ValueCell!10895))

(declare-fun mapKey!36158 () (_ BitVec 32))

(declare-datatypes ((array!61505 0))(
  ( (array!61506 (arr!29606 (Array (_ BitVec 32) ValueCell!10895)) (size!30086 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61505)

(assert (=> mapNonEmpty!36158 (= (arr!29606 _values!1278) (store mapRest!36158 mapKey!36158 mapValue!36158))))

(declare-fun res!656536 () Bool)

(assert (=> start!83978 (=> (not res!656536) (not e!552986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83978 (= res!656536 (validMask!0 mask!1948))))

(assert (=> start!83978 e!552986))

(assert (=> start!83978 true))

(declare-fun e!552984 () Bool)

(declare-fun array_inv!22773 (array!61505) Bool)

(assert (=> start!83978 (and (array_inv!22773 _values!1278) e!552984)))

(declare-fun array_inv!22774 (array!61503) Bool)

(assert (=> start!83978 (array_inv!22774 _keys!1544)))

(declare-fun b!980913 () Bool)

(declare-fun e!552982 () Bool)

(assert (=> b!980913 (= e!552982 tp_is_empty!22753)))

(declare-fun b!980914 () Bool)

(assert (=> b!980914 (= e!552984 (and e!552982 mapRes!36158))))

(declare-fun condMapEmpty!36158 () Bool)

(declare-fun mapDefault!36158 () ValueCell!10895)

