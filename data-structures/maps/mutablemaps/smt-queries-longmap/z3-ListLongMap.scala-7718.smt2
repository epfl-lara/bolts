; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97002 () Bool)

(assert start!97002)

(declare-fun mapNonEmpty!42724 () Bool)

(declare-fun mapRes!42724 () Bool)

(declare-fun tp!81645 () Bool)

(declare-fun e!629704 () Bool)

(assert (=> mapNonEmpty!42724 (= mapRes!42724 (and tp!81645 e!629704))))

(declare-datatypes ((V!41507 0))(
  ( (V!41508 (val!13699 Int)) )
))
(declare-datatypes ((ValueCell!12933 0))(
  ( (ValueCellFull!12933 (v!16331 V!41507)) (EmptyCell!12933) )
))
(declare-fun mapRest!42724 () (Array (_ BitVec 32) ValueCell!12933))

(declare-fun mapValue!42724 () ValueCell!12933)

(declare-datatypes ((array!71442 0))(
  ( (array!71443 (arr!34377 (Array (_ BitVec 32) ValueCell!12933)) (size!34914 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71442)

(declare-fun mapKey!42724 () (_ BitVec 32))

(assert (=> mapNonEmpty!42724 (= (arr!34377 _values!996) (store mapRest!42724 mapKey!42724 mapValue!42724))))

(declare-fun mapIsEmpty!42724 () Bool)

(assert (=> mapIsEmpty!42724 mapRes!42724))

(declare-fun b!1103098 () Bool)

(declare-fun res!736042 () Bool)

(declare-fun e!629706 () Bool)

(assert (=> b!1103098 (=> (not res!736042) (not e!629706))))

(declare-datatypes ((array!71444 0))(
  ( (array!71445 (arr!34378 (Array (_ BitVec 32) (_ BitVec 64))) (size!34915 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71444)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1103098 (= res!736042 (and (= (size!34914 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34915 _keys!1208) (size!34914 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!736041 () Bool)

(assert (=> start!97002 (=> (not res!736041) (not e!629706))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97002 (= res!736041 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34915 _keys!1208))))))

(assert (=> start!97002 e!629706))

(declare-fun array_inv!26330 (array!71444) Bool)

(assert (=> start!97002 (array_inv!26330 _keys!1208)))

(assert (=> start!97002 true))

(declare-fun e!629705 () Bool)

(declare-fun array_inv!26331 (array!71442) Bool)

(assert (=> start!97002 (and (array_inv!26331 _values!996) e!629705)))

(declare-fun b!1103099 () Bool)

(declare-fun tp_is_empty!27285 () Bool)

(assert (=> b!1103099 (= e!629704 tp_is_empty!27285)))

(declare-fun b!1103100 () Bool)

(declare-fun e!629703 () Bool)

(assert (=> b!1103100 (= e!629703 tp_is_empty!27285)))

(declare-fun b!1103101 () Bool)

(assert (=> b!1103101 (= e!629706 (bvsgt #b00000000000000000000000000000000 (size!34915 _keys!1208)))))

(declare-fun b!1103102 () Bool)

(declare-fun res!736043 () Bool)

(assert (=> b!1103102 (=> (not res!736043) (not e!629706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71444 (_ BitVec 32)) Bool)

(assert (=> b!1103102 (= res!736043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103103 () Bool)

(declare-fun res!736044 () Bool)

(assert (=> b!1103103 (=> (not res!736044) (not e!629706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103103 (= res!736044 (validMask!0 mask!1564))))

(declare-fun b!1103104 () Bool)

(assert (=> b!1103104 (= e!629705 (and e!629703 mapRes!42724))))

(declare-fun condMapEmpty!42724 () Bool)

(declare-fun mapDefault!42724 () ValueCell!12933)

(assert (=> b!1103104 (= condMapEmpty!42724 (= (arr!34377 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12933)) mapDefault!42724)))))

(assert (= (and start!97002 res!736041) b!1103103))

(assert (= (and b!1103103 res!736044) b!1103098))

(assert (= (and b!1103098 res!736042) b!1103102))

(assert (= (and b!1103102 res!736043) b!1103101))

(assert (= (and b!1103104 condMapEmpty!42724) mapIsEmpty!42724))

(assert (= (and b!1103104 (not condMapEmpty!42724)) mapNonEmpty!42724))

(get-info :version)

(assert (= (and mapNonEmpty!42724 ((_ is ValueCellFull!12933) mapValue!42724)) b!1103099))

(assert (= (and b!1103104 ((_ is ValueCellFull!12933) mapDefault!42724)) b!1103100))

(assert (= start!97002 b!1103104))

(declare-fun m!1023525 () Bool)

(assert (=> mapNonEmpty!42724 m!1023525))

(declare-fun m!1023527 () Bool)

(assert (=> start!97002 m!1023527))

(declare-fun m!1023529 () Bool)

(assert (=> start!97002 m!1023529))

(declare-fun m!1023531 () Bool)

(assert (=> b!1103102 m!1023531))

(declare-fun m!1023533 () Bool)

(assert (=> b!1103103 m!1023533))

(check-sat (not start!97002) (not mapNonEmpty!42724) (not b!1103102) (not b!1103103) tp_is_empty!27285)
(check-sat)
