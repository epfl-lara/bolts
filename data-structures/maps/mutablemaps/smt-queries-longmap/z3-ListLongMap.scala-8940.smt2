; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108404 () Bool)

(assert start!108404)

(declare-fun mapIsEmpty!51884 () Bool)

(declare-fun mapRes!51884 () Bool)

(assert (=> mapIsEmpty!51884 mapRes!51884))

(declare-fun b!1278890 () Bool)

(declare-fun e!730705 () Bool)

(declare-fun tp_is_empty!33555 () Bool)

(assert (=> b!1278890 (= e!730705 tp_is_empty!33555)))

(declare-fun b!1278891 () Bool)

(declare-fun res!849647 () Bool)

(declare-fun e!730704 () Bool)

(assert (=> b!1278891 (=> (not res!849647) (not e!730704))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49843 0))(
  ( (V!49844 (val!16852 Int)) )
))
(declare-datatypes ((ValueCell!15879 0))(
  ( (ValueCellFull!15879 (v!19450 V!49843)) (EmptyCell!15879) )
))
(declare-datatypes ((array!84147 0))(
  ( (array!84148 (arr!40573 (Array (_ BitVec 32) ValueCell!15879)) (size!41124 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84147)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84149 0))(
  ( (array!84150 (arr!40574 (Array (_ BitVec 32) (_ BitVec 64))) (size!41125 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84149)

(assert (=> b!1278891 (= res!849647 (and (= (size!41124 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41125 _keys!1741) (size!41124 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278892 () Bool)

(declare-fun res!849650 () Bool)

(assert (=> b!1278892 (=> (not res!849650) (not e!730704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84149 (_ BitVec 32)) Bool)

(assert (=> b!1278892 (= res!849650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278893 () Bool)

(declare-fun res!849648 () Bool)

(assert (=> b!1278893 (=> (not res!849648) (not e!730704))))

(declare-datatypes ((List!28920 0))(
  ( (Nil!28917) (Cons!28916 (h!30125 (_ BitVec 64)) (t!42467 List!28920)) )
))
(declare-fun arrayNoDuplicates!0 (array!84149 (_ BitVec 32) List!28920) Bool)

(assert (=> b!1278893 (= res!849648 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28917))))

(declare-fun b!1278894 () Bool)

(declare-fun e!730702 () Bool)

(assert (=> b!1278894 (= e!730702 tp_is_empty!33555)))

(declare-fun b!1278895 () Bool)

(declare-fun e!730703 () Bool)

(assert (=> b!1278895 (= e!730703 (and e!730705 mapRes!51884))))

(declare-fun condMapEmpty!51884 () Bool)

(declare-fun mapDefault!51884 () ValueCell!15879)

(assert (=> b!1278895 (= condMapEmpty!51884 (= (arr!40573 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15879)) mapDefault!51884)))))

(declare-fun res!849649 () Bool)

(assert (=> start!108404 (=> (not res!849649) (not e!730704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108404 (= res!849649 (validMask!0 mask!2175))))

(assert (=> start!108404 e!730704))

(assert (=> start!108404 true))

(declare-fun array_inv!30791 (array!84147) Bool)

(assert (=> start!108404 (and (array_inv!30791 _values!1445) e!730703)))

(declare-fun array_inv!30792 (array!84149) Bool)

(assert (=> start!108404 (array_inv!30792 _keys!1741)))

(declare-fun mapNonEmpty!51884 () Bool)

(declare-fun tp!98859 () Bool)

(assert (=> mapNonEmpty!51884 (= mapRes!51884 (and tp!98859 e!730702))))

(declare-fun mapValue!51884 () ValueCell!15879)

(declare-fun mapKey!51884 () (_ BitVec 32))

(declare-fun mapRest!51884 () (Array (_ BitVec 32) ValueCell!15879))

(assert (=> mapNonEmpty!51884 (= (arr!40573 _values!1445) (store mapRest!51884 mapKey!51884 mapValue!51884))))

(declare-fun b!1278896 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1278896 (= e!730704 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41125 _keys!1741)) (bvsgt from!2144 (size!41125 _keys!1741))))))

(assert (= (and start!108404 res!849649) b!1278891))

(assert (= (and b!1278891 res!849647) b!1278892))

(assert (= (and b!1278892 res!849650) b!1278893))

(assert (= (and b!1278893 res!849648) b!1278896))

(assert (= (and b!1278895 condMapEmpty!51884) mapIsEmpty!51884))

(assert (= (and b!1278895 (not condMapEmpty!51884)) mapNonEmpty!51884))

(get-info :version)

(assert (= (and mapNonEmpty!51884 ((_ is ValueCellFull!15879) mapValue!51884)) b!1278894))

(assert (= (and b!1278895 ((_ is ValueCellFull!15879) mapDefault!51884)) b!1278890))

(assert (= start!108404 b!1278895))

(declare-fun m!1174055 () Bool)

(assert (=> b!1278892 m!1174055))

(declare-fun m!1174057 () Bool)

(assert (=> b!1278893 m!1174057))

(declare-fun m!1174059 () Bool)

(assert (=> start!108404 m!1174059))

(declare-fun m!1174061 () Bool)

(assert (=> start!108404 m!1174061))

(declare-fun m!1174063 () Bool)

(assert (=> start!108404 m!1174063))

(declare-fun m!1174065 () Bool)

(assert (=> mapNonEmpty!51884 m!1174065))

(check-sat tp_is_empty!33555 (not b!1278893) (not mapNonEmpty!51884) (not start!108404) (not b!1278892))
(check-sat)
