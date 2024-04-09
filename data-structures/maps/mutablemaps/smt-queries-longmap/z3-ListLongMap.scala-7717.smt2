; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96996 () Bool)

(assert start!96996)

(declare-fun res!736013 () Bool)

(declare-fun e!629660 () Bool)

(assert (=> start!96996 (=> (not res!736013) (not e!629660))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71432 0))(
  ( (array!71433 (arr!34372 (Array (_ BitVec 32) (_ BitVec 64))) (size!34909 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71432)

(assert (=> start!96996 (= res!736013 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34909 _keys!1208))))))

(assert (=> start!96996 e!629660))

(declare-fun array_inv!26326 (array!71432) Bool)

(assert (=> start!96996 (array_inv!26326 _keys!1208)))

(assert (=> start!96996 true))

(declare-datatypes ((V!41499 0))(
  ( (V!41500 (val!13696 Int)) )
))
(declare-datatypes ((ValueCell!12930 0))(
  ( (ValueCellFull!12930 (v!16328 V!41499)) (EmptyCell!12930) )
))
(declare-datatypes ((array!71434 0))(
  ( (array!71435 (arr!34373 (Array (_ BitVec 32) ValueCell!12930)) (size!34910 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71434)

(declare-fun e!629657 () Bool)

(declare-fun array_inv!26327 (array!71434) Bool)

(assert (=> start!96996 (and (array_inv!26327 _values!996) e!629657)))

(declare-fun mapNonEmpty!42715 () Bool)

(declare-fun mapRes!42715 () Bool)

(declare-fun tp!81636 () Bool)

(declare-fun e!629661 () Bool)

(assert (=> mapNonEmpty!42715 (= mapRes!42715 (and tp!81636 e!629661))))

(declare-fun mapRest!42715 () (Array (_ BitVec 32) ValueCell!12930))

(declare-fun mapValue!42715 () ValueCell!12930)

(declare-fun mapKey!42715 () (_ BitVec 32))

(assert (=> mapNonEmpty!42715 (= (arr!34373 _values!996) (store mapRest!42715 mapKey!42715 mapValue!42715))))

(declare-fun b!1103043 () Bool)

(declare-fun e!629659 () Bool)

(assert (=> b!1103043 (= e!629657 (and e!629659 mapRes!42715))))

(declare-fun condMapEmpty!42715 () Bool)

(declare-fun mapDefault!42715 () ValueCell!12930)

(assert (=> b!1103043 (= condMapEmpty!42715 (= (arr!34373 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12930)) mapDefault!42715)))))

(declare-fun b!1103044 () Bool)

(declare-fun res!736014 () Bool)

(assert (=> b!1103044 (=> (not res!736014) (not e!629660))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103044 (= res!736014 (validMask!0 mask!1564))))

(declare-fun b!1103045 () Bool)

(declare-fun tp_is_empty!27279 () Bool)

(assert (=> b!1103045 (= e!629659 tp_is_empty!27279)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1103046 () Bool)

(assert (=> b!1103046 (= e!629660 (and (= (size!34910 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34909 _keys!1208) (size!34910 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011) (= (size!34909 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)) (bvsgt #b00000000000000000000000000000000 (size!34909 _keys!1208))))))

(declare-fun mapIsEmpty!42715 () Bool)

(assert (=> mapIsEmpty!42715 mapRes!42715))

(declare-fun b!1103047 () Bool)

(assert (=> b!1103047 (= e!629661 tp_is_empty!27279)))

(assert (= (and start!96996 res!736013) b!1103044))

(assert (= (and b!1103044 res!736014) b!1103046))

(assert (= (and b!1103043 condMapEmpty!42715) mapIsEmpty!42715))

(assert (= (and b!1103043 (not condMapEmpty!42715)) mapNonEmpty!42715))

(get-info :version)

(assert (= (and mapNonEmpty!42715 ((_ is ValueCellFull!12930) mapValue!42715)) b!1103047))

(assert (= (and b!1103043 ((_ is ValueCellFull!12930) mapDefault!42715)) b!1103045))

(assert (= start!96996 b!1103043))

(declare-fun m!1023499 () Bool)

(assert (=> start!96996 m!1023499))

(declare-fun m!1023501 () Bool)

(assert (=> start!96996 m!1023501))

(declare-fun m!1023503 () Bool)

(assert (=> mapNonEmpty!42715 m!1023503))

(declare-fun m!1023505 () Bool)

(assert (=> b!1103044 m!1023505))

(check-sat (not b!1103044) (not start!96996) (not mapNonEmpty!42715) tp_is_empty!27279)
(check-sat)
