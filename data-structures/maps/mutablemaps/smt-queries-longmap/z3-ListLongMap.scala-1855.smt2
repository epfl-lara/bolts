; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33520 () Bool)

(assert start!33520)

(declare-fun b_free!6801 () Bool)

(declare-fun b_next!6801 () Bool)

(assert (=> start!33520 (= b_free!6801 (not b_next!6801))))

(declare-fun tp!23897 () Bool)

(declare-fun b_and!13993 () Bool)

(assert (=> start!33520 (= tp!23897 b_and!13993)))

(declare-fun b!332347 () Bool)

(declare-fun e!204099 () Bool)

(declare-fun e!204102 () Bool)

(declare-fun mapRes!11517 () Bool)

(assert (=> b!332347 (= e!204099 (and e!204102 mapRes!11517))))

(declare-fun condMapEmpty!11517 () Bool)

(declare-datatypes ((V!9981 0))(
  ( (V!9982 (val!3421 Int)) )
))
(declare-datatypes ((ValueCell!3033 0))(
  ( (ValueCellFull!3033 (v!5576 V!9981)) (EmptyCell!3033) )
))
(declare-datatypes ((array!17099 0))(
  ( (array!17100 (arr!8080 (Array (_ BitVec 32) ValueCell!3033)) (size!8432 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17099)

(declare-fun mapDefault!11517 () ValueCell!3033)

(assert (=> b!332347 (= condMapEmpty!11517 (= (arr!8080 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3033)) mapDefault!11517)))))

(declare-fun mapNonEmpty!11517 () Bool)

(declare-fun tp!23898 () Bool)

(declare-fun e!204098 () Bool)

(assert (=> mapNonEmpty!11517 (= mapRes!11517 (and tp!23898 e!204098))))

(declare-fun mapRest!11517 () (Array (_ BitVec 32) ValueCell!3033))

(declare-fun mapValue!11517 () ValueCell!3033)

(declare-fun mapKey!11517 () (_ BitVec 32))

(assert (=> mapNonEmpty!11517 (= (arr!8080 _values!1525) (store mapRest!11517 mapKey!11517 mapValue!11517))))

(declare-fun b!332348 () Bool)

(declare-fun res!183155 () Bool)

(declare-fun e!204101 () Bool)

(assert (=> b!332348 (=> (not res!183155) (not e!204101))))

(declare-datatypes ((array!17101 0))(
  ( (array!17102 (arr!8081 (Array (_ BitVec 32) (_ BitVec 64))) (size!8433 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17101)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17101 (_ BitVec 32)) Bool)

(assert (=> b!332348 (= res!183155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332349 () Bool)

(declare-fun res!183158 () Bool)

(assert (=> b!332349 (=> (not res!183158) (not e!204101))))

(declare-datatypes ((List!4616 0))(
  ( (Nil!4613) (Cons!4612 (h!5468 (_ BitVec 64)) (t!9706 List!4616)) )
))
(declare-fun arrayNoDuplicates!0 (array!17101 (_ BitVec 32) List!4616) Bool)

(assert (=> b!332349 (= res!183158 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4613))))

(declare-fun b!332350 () Bool)

(declare-fun tp_is_empty!6753 () Bool)

(assert (=> b!332350 (= e!204098 tp_is_empty!6753)))

(declare-fun b!332351 () Bool)

(assert (=> b!332351 (= e!204102 tp_is_empty!6753)))

(declare-fun b!332352 () Bool)

(declare-fun res!183157 () Bool)

(assert (=> b!332352 (=> (not res!183157) (not e!204101))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332352 (= res!183157 (validKeyInArray!0 k0!1348))))

(declare-fun b!332353 () Bool)

(declare-fun res!183154 () Bool)

(assert (=> b!332353 (=> (not res!183154) (not e!204101))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332353 (= res!183154 (and (= (size!8432 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8433 _keys!1895) (size!8432 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11517 () Bool)

(assert (=> mapIsEmpty!11517 mapRes!11517))

(declare-fun b!332354 () Bool)

(assert (=> b!332354 (= e!204101 false)))

(declare-fun zeroValue!1467 () V!9981)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!158985 () Bool)

(declare-fun minValue!1467 () V!9981)

(declare-datatypes ((tuple2!4978 0))(
  ( (tuple2!4979 (_1!2499 (_ BitVec 64)) (_2!2499 V!9981)) )
))
(declare-datatypes ((List!4617 0))(
  ( (Nil!4614) (Cons!4613 (h!5469 tuple2!4978) (t!9707 List!4617)) )
))
(declare-datatypes ((ListLongMap!3905 0))(
  ( (ListLongMap!3906 (toList!1968 List!4617)) )
))
(declare-fun contains!2005 (ListLongMap!3905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1491 (array!17101 array!17099 (_ BitVec 32) (_ BitVec 32) V!9981 V!9981 (_ BitVec 32) Int) ListLongMap!3905)

(assert (=> b!332354 (= lt!158985 (contains!2005 (getCurrentListMap!1491 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348))))

(declare-fun res!183156 () Bool)

(assert (=> start!33520 (=> (not res!183156) (not e!204101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33520 (= res!183156 (validMask!0 mask!2385))))

(assert (=> start!33520 e!204101))

(assert (=> start!33520 true))

(assert (=> start!33520 tp_is_empty!6753))

(assert (=> start!33520 tp!23897))

(declare-fun array_inv!6010 (array!17099) Bool)

(assert (=> start!33520 (and (array_inv!6010 _values!1525) e!204099)))

(declare-fun array_inv!6011 (array!17101) Bool)

(assert (=> start!33520 (array_inv!6011 _keys!1895)))

(assert (= (and start!33520 res!183156) b!332353))

(assert (= (and b!332353 res!183154) b!332348))

(assert (= (and b!332348 res!183155) b!332349))

(assert (= (and b!332349 res!183158) b!332352))

(assert (= (and b!332352 res!183157) b!332354))

(assert (= (and b!332347 condMapEmpty!11517) mapIsEmpty!11517))

(assert (= (and b!332347 (not condMapEmpty!11517)) mapNonEmpty!11517))

(get-info :version)

(assert (= (and mapNonEmpty!11517 ((_ is ValueCellFull!3033) mapValue!11517)) b!332350))

(assert (= (and b!332347 ((_ is ValueCellFull!3033) mapDefault!11517)) b!332351))

(assert (= start!33520 b!332347))

(declare-fun m!336863 () Bool)

(assert (=> start!33520 m!336863))

(declare-fun m!336865 () Bool)

(assert (=> start!33520 m!336865))

(declare-fun m!336867 () Bool)

(assert (=> start!33520 m!336867))

(declare-fun m!336869 () Bool)

(assert (=> b!332352 m!336869))

(declare-fun m!336871 () Bool)

(assert (=> b!332348 m!336871))

(declare-fun m!336873 () Bool)

(assert (=> mapNonEmpty!11517 m!336873))

(declare-fun m!336875 () Bool)

(assert (=> b!332354 m!336875))

(assert (=> b!332354 m!336875))

(declare-fun m!336877 () Bool)

(assert (=> b!332354 m!336877))

(declare-fun m!336879 () Bool)

(assert (=> b!332349 m!336879))

(check-sat (not b!332354) (not mapNonEmpty!11517) (not b_next!6801) tp_is_empty!6753 (not b!332352) (not b!332348) (not start!33520) (not b!332349) b_and!13993)
(check-sat b_and!13993 (not b_next!6801))
