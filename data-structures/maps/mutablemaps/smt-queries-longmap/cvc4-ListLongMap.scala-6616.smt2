; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83662 () Bool)

(assert start!83662)

(declare-fun res!653972 () Bool)

(declare-fun e!550649 () Bool)

(assert (=> start!83662 (=> (not res!653972) (not e!550649))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83662 (= res!653972 (validMask!0 mask!1948))))

(assert (=> start!83662 e!550649))

(assert (=> start!83662 true))

(declare-datatypes ((V!34949 0))(
  ( (V!34950 (val!11288 Int)) )
))
(declare-datatypes ((ValueCell!10756 0))(
  ( (ValueCellFull!10756 (v!13849 V!34949)) (EmptyCell!10756) )
))
(declare-datatypes ((array!60961 0))(
  ( (array!60962 (arr!29338 (Array (_ BitVec 32) ValueCell!10756)) (size!29818 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60961)

(declare-fun e!550646 () Bool)

(declare-fun array_inv!22587 (array!60961) Bool)

(assert (=> start!83662 (and (array_inv!22587 _values!1278) e!550646)))

(declare-datatypes ((array!60963 0))(
  ( (array!60964 (arr!29339 (Array (_ BitVec 32) (_ BitVec 64))) (size!29819 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60963)

(declare-fun array_inv!22588 (array!60963) Bool)

(assert (=> start!83662 (array_inv!22588 _keys!1544)))

(declare-fun b!976872 () Bool)

(declare-fun res!653973 () Bool)

(assert (=> b!976872 (=> (not res!653973) (not e!550649))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!976872 (= res!653973 (and (= (size!29818 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29819 _keys!1544) (size!29818 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!976873 () Bool)

(declare-fun res!653974 () Bool)

(assert (=> b!976873 (=> (not res!653974) (not e!550649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60963 (_ BitVec 32)) Bool)

(assert (=> b!976873 (= res!653974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!976874 () Bool)

(assert (=> b!976874 (= e!550649 (bvsgt #b00000000000000000000000000000000 (size!29819 _keys!1544)))))

(declare-fun b!976875 () Bool)

(declare-fun e!550647 () Bool)

(declare-fun tp_is_empty!22475 () Bool)

(assert (=> b!976875 (= e!550647 tp_is_empty!22475)))

(declare-fun b!976876 () Bool)

(declare-fun mapRes!35729 () Bool)

(assert (=> b!976876 (= e!550646 (and e!550647 mapRes!35729))))

(declare-fun condMapEmpty!35729 () Bool)

(declare-fun mapDefault!35729 () ValueCell!10756)

