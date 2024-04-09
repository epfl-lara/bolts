; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108274 () Bool)

(assert start!108274)

(declare-fun b!1277999 () Bool)

(declare-fun e!729962 () Bool)

(declare-fun tp_is_empty!33469 () Bool)

(assert (=> b!1277999 (= e!729962 tp_is_empty!33469)))

(declare-fun mapNonEmpty!51740 () Bool)

(declare-fun mapRes!51740 () Bool)

(declare-fun tp!98715 () Bool)

(assert (=> mapNonEmpty!51740 (= mapRes!51740 (and tp!98715 e!729962))))

(declare-datatypes ((V!49729 0))(
  ( (V!49730 (val!16809 Int)) )
))
(declare-datatypes ((ValueCell!15836 0))(
  ( (ValueCellFull!15836 (v!19406 V!49729)) (EmptyCell!15836) )
))
(declare-fun mapRest!51740 () (Array (_ BitVec 32) ValueCell!15836))

(declare-datatypes ((array!83973 0))(
  ( (array!83974 (arr!40491 (Array (_ BitVec 32) ValueCell!15836)) (size!41042 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83973)

(declare-fun mapKey!51740 () (_ BitVec 32))

(declare-fun mapValue!51740 () ValueCell!15836)

(assert (=> mapNonEmpty!51740 (= (arr!40491 _values!1445) (store mapRest!51740 mapKey!51740 mapValue!51740))))

(declare-fun e!729961 () Bool)

(declare-fun b!1278000 () Bool)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!83975 0))(
  ( (array!83976 (arr!40492 (Array (_ BitVec 32) (_ BitVec 64))) (size!41043 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83975)

(assert (=> b!1278000 (= e!729961 (and (= (size!41042 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41043 _keys!1741) (size!41042 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011) (not (= (size!41043 _keys!1741) (bvadd #b00000000000000000000000000000001 mask!2175)))))))

(declare-fun b!1278001 () Bool)

(declare-fun e!729964 () Bool)

(assert (=> b!1278001 (= e!729964 tp_is_empty!33469)))

(declare-fun mapIsEmpty!51740 () Bool)

(assert (=> mapIsEmpty!51740 mapRes!51740))

(declare-fun res!849207 () Bool)

(assert (=> start!108274 (=> (not res!849207) (not e!729961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108274 (= res!849207 (validMask!0 mask!2175))))

(assert (=> start!108274 e!729961))

(assert (=> start!108274 true))

(declare-fun e!729963 () Bool)

(declare-fun array_inv!30733 (array!83973) Bool)

(assert (=> start!108274 (and (array_inv!30733 _values!1445) e!729963)))

(declare-fun array_inv!30734 (array!83975) Bool)

(assert (=> start!108274 (array_inv!30734 _keys!1741)))

(declare-fun b!1278002 () Bool)

(assert (=> b!1278002 (= e!729963 (and e!729964 mapRes!51740))))

(declare-fun condMapEmpty!51740 () Bool)

(declare-fun mapDefault!51740 () ValueCell!15836)

