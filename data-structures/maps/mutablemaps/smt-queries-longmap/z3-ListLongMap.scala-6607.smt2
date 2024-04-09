; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83556 () Bool)

(assert start!83556)

(declare-fun b_free!19515 () Bool)

(declare-fun b_next!19515 () Bool)

(assert (=> start!83556 (= b_free!19515 (not b_next!19515))))

(declare-fun tp!67834 () Bool)

(declare-fun b_and!31143 () Bool)

(assert (=> start!83556 (= tp!67834 b_and!31143)))

(declare-fun b!975758 () Bool)

(declare-fun res!653325 () Bool)

(declare-fun e!549939 () Bool)

(assert (=> b!975758 (=> (not res!653325) (not e!549939))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34875 0))(
  ( (V!34876 (val!11260 Int)) )
))
(declare-datatypes ((ValueCell!10728 0))(
  ( (ValueCellFull!10728 (v!13819 V!34875)) (EmptyCell!10728) )
))
(declare-datatypes ((array!60853 0))(
  ( (array!60854 (arr!29286 (Array (_ BitVec 32) ValueCell!10728)) (size!29766 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60853)

(declare-fun zeroValue!1367 () V!34875)

(declare-fun minValue!1367 () V!34875)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60855 0))(
  ( (array!60856 (arr!29287 (Array (_ BitVec 32) (_ BitVec 64))) (size!29767 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60855)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14586 0))(
  ( (tuple2!14587 (_1!7303 (_ BitVec 64)) (_2!7303 V!34875)) )
))
(declare-datatypes ((List!20458 0))(
  ( (Nil!20455) (Cons!20454 (h!21616 tuple2!14586) (t!28953 List!20458)) )
))
(declare-datatypes ((ListLongMap!13297 0))(
  ( (ListLongMap!13298 (toList!6664 List!20458)) )
))
(declare-fun contains!5696 (ListLongMap!13297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3849 (array!60855 array!60853 (_ BitVec 32) (_ BitVec 32) V!34875 V!34875 (_ BitVec 32) Int) ListLongMap!13297)

(assert (=> b!975758 (= res!653325 (contains!5696 (getCurrentListMap!3849 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29287 _keys!1717) i!822)))))

(declare-fun b!975759 () Bool)

(declare-fun e!549937 () Bool)

(assert (=> b!975759 (= e!549937 (not (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29766 _values!1425))))))

(declare-fun lt!432883 () ListLongMap!13297)

(declare-fun lt!432881 () (_ BitVec 64))

(declare-fun +!2877 (ListLongMap!13297 tuple2!14586) ListLongMap!13297)

(declare-fun get!15186 (ValueCell!10728 V!34875) V!34875)

(declare-fun dynLambda!1716 (Int (_ BitVec 64)) V!34875)

(assert (=> b!975759 (= lt!432883 (+!2877 (getCurrentListMap!3849 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14587 lt!432881 (get!15186 (select (arr!29286 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1716 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32415 0))(
  ( (Unit!32416) )
))
(declare-fun lt!432882 () Unit!32415)

(declare-fun lemmaListMapRecursiveValidKeyArray!288 (array!60855 array!60853 (_ BitVec 32) (_ BitVec 32) V!34875 V!34875 (_ BitVec 32) Int) Unit!32415)

(assert (=> b!975759 (= lt!432882 (lemmaListMapRecursiveValidKeyArray!288 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35638 () Bool)

(declare-fun mapRes!35638 () Bool)

(declare-fun tp!67833 () Bool)

(declare-fun e!549942 () Bool)

(assert (=> mapNonEmpty!35638 (= mapRes!35638 (and tp!67833 e!549942))))

(declare-fun mapValue!35638 () ValueCell!10728)

(declare-fun mapRest!35638 () (Array (_ BitVec 32) ValueCell!10728))

(declare-fun mapKey!35638 () (_ BitVec 32))

(assert (=> mapNonEmpty!35638 (= (arr!29286 _values!1425) (store mapRest!35638 mapKey!35638 mapValue!35638))))

(declare-fun b!975760 () Bool)

(declare-fun e!549941 () Bool)

(declare-fun tp_is_empty!22419 () Bool)

(assert (=> b!975760 (= e!549941 tp_is_empty!22419)))

(declare-fun b!975761 () Bool)

(declare-fun res!653326 () Bool)

(assert (=> b!975761 (=> (not res!653326) (not e!549939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975761 (= res!653326 (validKeyInArray!0 (select (arr!29287 _keys!1717) i!822)))))

(declare-fun b!975762 () Bool)

(assert (=> b!975762 (= e!549942 tp_is_empty!22419)))

(declare-fun b!975763 () Bool)

(declare-fun res!653323 () Bool)

(assert (=> b!975763 (=> (not res!653323) (not e!549939))))

(assert (=> b!975763 (= res!653323 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29767 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29767 _keys!1717))))))

(declare-fun b!975764 () Bool)

(declare-fun res!653329 () Bool)

(assert (=> b!975764 (=> (not res!653329) (not e!549939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60855 (_ BitVec 32)) Bool)

(assert (=> b!975764 (= res!653329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975766 () Bool)

(declare-fun res!653327 () Bool)

(assert (=> b!975766 (=> (not res!653327) (not e!549939))))

(declare-datatypes ((List!20459 0))(
  ( (Nil!20456) (Cons!20455 (h!21617 (_ BitVec 64)) (t!28954 List!20459)) )
))
(declare-fun arrayNoDuplicates!0 (array!60855 (_ BitVec 32) List!20459) Bool)

(assert (=> b!975766 (= res!653327 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20456))))

(declare-fun b!975767 () Bool)

(declare-fun e!549938 () Bool)

(assert (=> b!975767 (= e!549938 (and e!549941 mapRes!35638))))

(declare-fun condMapEmpty!35638 () Bool)

(declare-fun mapDefault!35638 () ValueCell!10728)

(assert (=> b!975767 (= condMapEmpty!35638 (= (arr!29286 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10728)) mapDefault!35638)))))

(declare-fun mapIsEmpty!35638 () Bool)

(assert (=> mapIsEmpty!35638 mapRes!35638))

(declare-fun b!975768 () Bool)

(assert (=> b!975768 (= e!549939 e!549937)))

(declare-fun res!653322 () Bool)

(assert (=> b!975768 (=> (not res!653322) (not e!549937))))

(assert (=> b!975768 (= res!653322 (validKeyInArray!0 lt!432881))))

(assert (=> b!975768 (= lt!432881 (select (arr!29287 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!975768 (= lt!432883 (getCurrentListMap!3849 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975765 () Bool)

(declare-fun res!653328 () Bool)

(assert (=> b!975765 (=> (not res!653328) (not e!549939))))

(assert (=> b!975765 (= res!653328 (and (= (size!29766 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29767 _keys!1717) (size!29766 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!653324 () Bool)

(assert (=> start!83556 (=> (not res!653324) (not e!549939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83556 (= res!653324 (validMask!0 mask!2147))))

(assert (=> start!83556 e!549939))

(assert (=> start!83556 true))

(declare-fun array_inv!22545 (array!60853) Bool)

(assert (=> start!83556 (and (array_inv!22545 _values!1425) e!549938)))

(assert (=> start!83556 tp_is_empty!22419))

(assert (=> start!83556 tp!67834))

(declare-fun array_inv!22546 (array!60855) Bool)

(assert (=> start!83556 (array_inv!22546 _keys!1717)))

(assert (= (and start!83556 res!653324) b!975765))

(assert (= (and b!975765 res!653328) b!975764))

(assert (= (and b!975764 res!653329) b!975766))

(assert (= (and b!975766 res!653327) b!975763))

(assert (= (and b!975763 res!653323) b!975761))

(assert (= (and b!975761 res!653326) b!975758))

(assert (= (and b!975758 res!653325) b!975768))

(assert (= (and b!975768 res!653322) b!975759))

(assert (= (and b!975767 condMapEmpty!35638) mapIsEmpty!35638))

(assert (= (and b!975767 (not condMapEmpty!35638)) mapNonEmpty!35638))

(get-info :version)

(assert (= (and mapNonEmpty!35638 ((_ is ValueCellFull!10728) mapValue!35638)) b!975762))

(assert (= (and b!975767 ((_ is ValueCellFull!10728) mapDefault!35638)) b!975760))

(assert (= start!83556 b!975767))

(declare-fun b_lambda!14583 () Bool)

(assert (=> (not b_lambda!14583) (not b!975759)))

(declare-fun t!28952 () Bool)

(declare-fun tb!6345 () Bool)

(assert (=> (and start!83556 (= defaultEntry!1428 defaultEntry!1428) t!28952) tb!6345))

(declare-fun result!12659 () Bool)

(assert (=> tb!6345 (= result!12659 tp_is_empty!22419)))

(assert (=> b!975759 t!28952))

(declare-fun b_and!31145 () Bool)

(assert (= b_and!31143 (and (=> t!28952 result!12659) b_and!31145)))

(declare-fun m!903037 () Bool)

(assert (=> b!975758 m!903037))

(declare-fun m!903039 () Bool)

(assert (=> b!975758 m!903039))

(assert (=> b!975758 m!903037))

(assert (=> b!975758 m!903039))

(declare-fun m!903041 () Bool)

(assert (=> b!975758 m!903041))

(declare-fun m!903043 () Bool)

(assert (=> mapNonEmpty!35638 m!903043))

(declare-fun m!903045 () Bool)

(assert (=> b!975766 m!903045))

(declare-fun m!903047 () Bool)

(assert (=> start!83556 m!903047))

(declare-fun m!903049 () Bool)

(assert (=> start!83556 m!903049))

(declare-fun m!903051 () Bool)

(assert (=> start!83556 m!903051))

(assert (=> b!975761 m!903039))

(assert (=> b!975761 m!903039))

(declare-fun m!903053 () Bool)

(assert (=> b!975761 m!903053))

(declare-fun m!903055 () Bool)

(assert (=> b!975764 m!903055))

(declare-fun m!903057 () Bool)

(assert (=> b!975768 m!903057))

(declare-fun m!903059 () Bool)

(assert (=> b!975768 m!903059))

(declare-fun m!903061 () Bool)

(assert (=> b!975768 m!903061))

(declare-fun m!903063 () Bool)

(assert (=> b!975759 m!903063))

(declare-fun m!903065 () Bool)

(assert (=> b!975759 m!903065))

(declare-fun m!903067 () Bool)

(assert (=> b!975759 m!903067))

(assert (=> b!975759 m!903063))

(assert (=> b!975759 m!903067))

(declare-fun m!903069 () Bool)

(assert (=> b!975759 m!903069))

(assert (=> b!975759 m!903065))

(declare-fun m!903071 () Bool)

(assert (=> b!975759 m!903071))

(declare-fun m!903073 () Bool)

(assert (=> b!975759 m!903073))

(check-sat (not b!975758) (not b!975766) (not b!975761) (not b_lambda!14583) b_and!31145 (not b!975764) (not start!83556) tp_is_empty!22419 (not b!975759) (not mapNonEmpty!35638) (not b!975768) (not b_next!19515))
(check-sat b_and!31145 (not b_next!19515))
