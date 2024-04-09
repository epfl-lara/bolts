; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83154 () Bool)

(assert start!83154)

(declare-fun b_free!19119 () Bool)

(declare-fun b_next!19119 () Bool)

(assert (=> start!83154 (= b_free!19119 (not b_next!19119))))

(declare-fun tp!66636 () Bool)

(declare-fun b_and!30625 () Bool)

(assert (=> start!83154 (= tp!66636 b_and!30625)))

(declare-fun b!969551 () Bool)

(declare-fun res!649046 () Bool)

(declare-fun e!546641 () Bool)

(assert (=> b!969551 (=> (not res!649046) (not e!546641))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34339 0))(
  ( (V!34340 (val!11059 Int)) )
))
(declare-datatypes ((ValueCell!10527 0))(
  ( (ValueCellFull!10527 (v!13618 V!34339)) (EmptyCell!10527) )
))
(declare-datatypes ((array!60081 0))(
  ( (array!60082 (arr!28900 (Array (_ BitVec 32) ValueCell!10527)) (size!29380 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60081)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60083 0))(
  ( (array!60084 (arr!28901 (Array (_ BitVec 32) (_ BitVec 64))) (size!29381 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60083)

(assert (=> b!969551 (= res!649046 (and (= (size!29380 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29381 _keys!1717) (size!29380 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!649050 () Bool)

(assert (=> start!83154 (=> (not res!649050) (not e!546641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83154 (= res!649050 (validMask!0 mask!2147))))

(assert (=> start!83154 e!546641))

(assert (=> start!83154 true))

(declare-fun e!546638 () Bool)

(declare-fun array_inv!22263 (array!60081) Bool)

(assert (=> start!83154 (and (array_inv!22263 _values!1425) e!546638)))

(declare-fun tp_is_empty!22017 () Bool)

(assert (=> start!83154 tp_is_empty!22017))

(assert (=> start!83154 tp!66636))

(declare-fun array_inv!22264 (array!60083) Bool)

(assert (=> start!83154 (array_inv!22264 _keys!1717)))

(declare-fun b!969552 () Bool)

(declare-fun e!546642 () Bool)

(assert (=> b!969552 (= e!546642 tp_is_empty!22017)))

(declare-fun b!969553 () Bool)

(declare-fun e!546639 () Bool)

(assert (=> b!969553 (= e!546639 tp_is_empty!22017)))

(declare-fun b!969554 () Bool)

(declare-fun mapRes!35035 () Bool)

(assert (=> b!969554 (= e!546638 (and e!546642 mapRes!35035))))

(declare-fun condMapEmpty!35035 () Bool)

(declare-fun mapDefault!35035 () ValueCell!10527)

(assert (=> b!969554 (= condMapEmpty!35035 (= (arr!28900 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10527)) mapDefault!35035)))))

(declare-fun b!969555 () Bool)

(declare-fun res!649048 () Bool)

(assert (=> b!969555 (=> (not res!649048) (not e!546641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60083 (_ BitVec 32)) Bool)

(assert (=> b!969555 (= res!649048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969556 () Bool)

(declare-fun res!649047 () Bool)

(assert (=> b!969556 (=> (not res!649047) (not e!546641))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969556 (= res!649047 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29381 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29381 _keys!1717))))))

(declare-fun b!969557 () Bool)

(assert (=> b!969557 (= e!546641 false)))

(declare-fun zeroValue!1367 () V!34339)

(declare-fun lt!431611 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34339)

(declare-datatypes ((tuple2!14268 0))(
  ( (tuple2!14269 (_1!7144 (_ BitVec 64)) (_2!7144 V!34339)) )
))
(declare-datatypes ((List!20158 0))(
  ( (Nil!20155) (Cons!20154 (h!21316 tuple2!14268) (t!28529 List!20158)) )
))
(declare-datatypes ((ListLongMap!12979 0))(
  ( (ListLongMap!12980 (toList!6505 List!20158)) )
))
(declare-fun contains!5560 (ListLongMap!12979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3690 (array!60083 array!60081 (_ BitVec 32) (_ BitVec 32) V!34339 V!34339 (_ BitVec 32) Int) ListLongMap!12979)

(assert (=> b!969557 (= lt!431611 (contains!5560 (getCurrentListMap!3690 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28901 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35035 () Bool)

(declare-fun tp!66637 () Bool)

(assert (=> mapNonEmpty!35035 (= mapRes!35035 (and tp!66637 e!546639))))

(declare-fun mapKey!35035 () (_ BitVec 32))

(declare-fun mapRest!35035 () (Array (_ BitVec 32) ValueCell!10527))

(declare-fun mapValue!35035 () ValueCell!10527)

(assert (=> mapNonEmpty!35035 (= (arr!28900 _values!1425) (store mapRest!35035 mapKey!35035 mapValue!35035))))

(declare-fun b!969558 () Bool)

(declare-fun res!649051 () Bool)

(assert (=> b!969558 (=> (not res!649051) (not e!546641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969558 (= res!649051 (validKeyInArray!0 (select (arr!28901 _keys!1717) i!822)))))

(declare-fun b!969559 () Bool)

(declare-fun res!649049 () Bool)

(assert (=> b!969559 (=> (not res!649049) (not e!546641))))

(declare-datatypes ((List!20159 0))(
  ( (Nil!20156) (Cons!20155 (h!21317 (_ BitVec 64)) (t!28530 List!20159)) )
))
(declare-fun arrayNoDuplicates!0 (array!60083 (_ BitVec 32) List!20159) Bool)

(assert (=> b!969559 (= res!649049 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20156))))

(declare-fun mapIsEmpty!35035 () Bool)

(assert (=> mapIsEmpty!35035 mapRes!35035))

(assert (= (and start!83154 res!649050) b!969551))

(assert (= (and b!969551 res!649046) b!969555))

(assert (= (and b!969555 res!649048) b!969559))

(assert (= (and b!969559 res!649049) b!969556))

(assert (= (and b!969556 res!649047) b!969558))

(assert (= (and b!969558 res!649051) b!969557))

(assert (= (and b!969554 condMapEmpty!35035) mapIsEmpty!35035))

(assert (= (and b!969554 (not condMapEmpty!35035)) mapNonEmpty!35035))

(get-info :version)

(assert (= (and mapNonEmpty!35035 ((_ is ValueCellFull!10527) mapValue!35035)) b!969553))

(assert (= (and b!969554 ((_ is ValueCellFull!10527) mapDefault!35035)) b!969552))

(assert (= start!83154 b!969554))

(declare-fun m!897583 () Bool)

(assert (=> b!969558 m!897583))

(assert (=> b!969558 m!897583))

(declare-fun m!897585 () Bool)

(assert (=> b!969558 m!897585))

(declare-fun m!897587 () Bool)

(assert (=> b!969559 m!897587))

(declare-fun m!897589 () Bool)

(assert (=> b!969557 m!897589))

(assert (=> b!969557 m!897583))

(assert (=> b!969557 m!897589))

(assert (=> b!969557 m!897583))

(declare-fun m!897591 () Bool)

(assert (=> b!969557 m!897591))

(declare-fun m!897593 () Bool)

(assert (=> start!83154 m!897593))

(declare-fun m!897595 () Bool)

(assert (=> start!83154 m!897595))

(declare-fun m!897597 () Bool)

(assert (=> start!83154 m!897597))

(declare-fun m!897599 () Bool)

(assert (=> mapNonEmpty!35035 m!897599))

(declare-fun m!897601 () Bool)

(assert (=> b!969555 m!897601))

(check-sat (not b!969559) (not mapNonEmpty!35035) (not b!969555) (not b!969557) b_and!30625 (not b!969558) (not start!83154) (not b_next!19119) tp_is_empty!22017)
(check-sat b_and!30625 (not b_next!19119))
