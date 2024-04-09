; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96990 () Bool)

(assert start!96990)

(declare-datatypes ((array!71422 0))(
  ( (array!71423 (arr!34367 (Array (_ BitVec 32) (_ BitVec 64))) (size!34904 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71422)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1102998 () Bool)

(declare-datatypes ((V!41491 0))(
  ( (V!41492 (val!13693 Int)) )
))
(declare-datatypes ((ValueCell!12927 0))(
  ( (ValueCellFull!12927 (v!16325 V!41491)) (EmptyCell!12927) )
))
(declare-datatypes ((array!71424 0))(
  ( (array!71425 (arr!34368 (Array (_ BitVec 32) ValueCell!12927)) (size!34905 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71424)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun e!629615 () Bool)

(assert (=> b!1102998 (= e!629615 (and (= (size!34905 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34904 _keys!1208) (size!34905 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011) (not (= (size!34904 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)))))))

(declare-fun b!1102999 () Bool)

(declare-fun e!629612 () Bool)

(declare-fun tp_is_empty!27273 () Bool)

(assert (=> b!1102999 (= e!629612 tp_is_empty!27273)))

(declare-fun b!1103000 () Bool)

(declare-fun res!735996 () Bool)

(assert (=> b!1103000 (=> (not res!735996) (not e!629615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103000 (= res!735996 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!42706 () Bool)

(declare-fun mapRes!42706 () Bool)

(assert (=> mapIsEmpty!42706 mapRes!42706))

(declare-fun mapNonEmpty!42706 () Bool)

(declare-fun tp!81627 () Bool)

(assert (=> mapNonEmpty!42706 (= mapRes!42706 (and tp!81627 e!629612))))

(declare-fun mapValue!42706 () ValueCell!12927)

(declare-fun mapRest!42706 () (Array (_ BitVec 32) ValueCell!12927))

(declare-fun mapKey!42706 () (_ BitVec 32))

(assert (=> mapNonEmpty!42706 (= (arr!34368 _values!996) (store mapRest!42706 mapKey!42706 mapValue!42706))))

(declare-fun res!735995 () Bool)

(assert (=> start!96990 (=> (not res!735995) (not e!629615))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!96990 (= res!735995 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34904 _keys!1208))))))

(assert (=> start!96990 e!629615))

(declare-fun array_inv!26322 (array!71422) Bool)

(assert (=> start!96990 (array_inv!26322 _keys!1208)))

(assert (=> start!96990 true))

(declare-fun e!629614 () Bool)

(declare-fun array_inv!26323 (array!71424) Bool)

(assert (=> start!96990 (and (array_inv!26323 _values!996) e!629614)))

(declare-fun b!1103001 () Bool)

(declare-fun e!629613 () Bool)

(assert (=> b!1103001 (= e!629614 (and e!629613 mapRes!42706))))

(declare-fun condMapEmpty!42706 () Bool)

(declare-fun mapDefault!42706 () ValueCell!12927)

(assert (=> b!1103001 (= condMapEmpty!42706 (= (arr!34368 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12927)) mapDefault!42706)))))

(declare-fun b!1103002 () Bool)

(assert (=> b!1103002 (= e!629613 tp_is_empty!27273)))

(assert (= (and start!96990 res!735995) b!1103000))

(assert (= (and b!1103000 res!735996) b!1102998))

(assert (= (and b!1103001 condMapEmpty!42706) mapIsEmpty!42706))

(assert (= (and b!1103001 (not condMapEmpty!42706)) mapNonEmpty!42706))

(get-info :version)

(assert (= (and mapNonEmpty!42706 ((_ is ValueCellFull!12927) mapValue!42706)) b!1102999))

(assert (= (and b!1103001 ((_ is ValueCellFull!12927) mapDefault!42706)) b!1103002))

(assert (= start!96990 b!1103001))

(declare-fun m!1023475 () Bool)

(assert (=> b!1103000 m!1023475))

(declare-fun m!1023477 () Bool)

(assert (=> mapNonEmpty!42706 m!1023477))

(declare-fun m!1023479 () Bool)

(assert (=> start!96990 m!1023479))

(declare-fun m!1023481 () Bool)

(assert (=> start!96990 m!1023481))

(check-sat (not b!1103000) (not start!96990) (not mapNonEmpty!42706) tp_is_empty!27273)
(check-sat)
