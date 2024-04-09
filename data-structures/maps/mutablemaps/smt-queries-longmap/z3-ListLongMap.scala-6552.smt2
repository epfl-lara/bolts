; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83226 () Bool)

(assert start!83226)

(declare-fun b_free!19191 () Bool)

(declare-fun b_next!19191 () Bool)

(assert (=> start!83226 (= b_free!19191 (not b_next!19191))))

(declare-fun tp!66852 () Bool)

(declare-fun b_and!30697 () Bool)

(assert (=> start!83226 (= tp!66852 b_and!30697)))

(declare-fun mapIsEmpty!35143 () Bool)

(declare-fun mapRes!35143 () Bool)

(assert (=> mapIsEmpty!35143 mapRes!35143))

(declare-fun b!970532 () Bool)

(declare-fun e!547180 () Bool)

(declare-fun tp_is_empty!22089 () Bool)

(assert (=> b!970532 (= e!547180 tp_is_empty!22089)))

(declare-fun mapNonEmpty!35143 () Bool)

(declare-fun tp!66853 () Bool)

(declare-fun e!547181 () Bool)

(assert (=> mapNonEmpty!35143 (= mapRes!35143 (and tp!66853 e!547181))))

(declare-datatypes ((V!34435 0))(
  ( (V!34436 (val!11095 Int)) )
))
(declare-datatypes ((ValueCell!10563 0))(
  ( (ValueCellFull!10563 (v!13654 V!34435)) (EmptyCell!10563) )
))
(declare-datatypes ((array!60215 0))(
  ( (array!60216 (arr!28967 (Array (_ BitVec 32) ValueCell!10563)) (size!29447 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60215)

(declare-fun mapKey!35143 () (_ BitVec 32))

(declare-fun mapValue!35143 () ValueCell!10563)

(declare-fun mapRest!35143 () (Array (_ BitVec 32) ValueCell!10563))

(assert (=> mapNonEmpty!35143 (= (arr!28967 _values!1425) (store mapRest!35143 mapKey!35143 mapValue!35143))))

(declare-fun b!970534 () Bool)

(declare-fun e!547182 () Bool)

(assert (=> b!970534 (= e!547182 (and e!547180 mapRes!35143))))

(declare-fun condMapEmpty!35143 () Bool)

(declare-fun mapDefault!35143 () ValueCell!10563)

(assert (=> b!970534 (= condMapEmpty!35143 (= (arr!28967 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10563)) mapDefault!35143)))))

(declare-fun b!970535 () Bool)

(assert (=> b!970535 (= e!547181 tp_is_empty!22089)))

(declare-fun b!970536 () Bool)

(declare-fun res!649708 () Bool)

(declare-fun e!547178 () Bool)

(assert (=> b!970536 (=> (not res!649708) (not e!547178))))

(declare-datatypes ((array!60217 0))(
  ( (array!60218 (arr!28968 (Array (_ BitVec 32) (_ BitVec 64))) (size!29448 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60217)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970536 (= res!649708 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29448 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29448 _keys!1717))))))

(declare-fun b!970537 () Bool)

(declare-fun res!649704 () Bool)

(assert (=> b!970537 (=> (not res!649704) (not e!547178))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60217 (_ BitVec 32)) Bool)

(assert (=> b!970537 (= res!649704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970538 () Bool)

(declare-fun res!649703 () Bool)

(assert (=> b!970538 (=> (not res!649703) (not e!547178))))

(declare-datatypes ((List!20208 0))(
  ( (Nil!20205) (Cons!20204 (h!21366 (_ BitVec 64)) (t!28579 List!20208)) )
))
(declare-fun arrayNoDuplicates!0 (array!60217 (_ BitVec 32) List!20208) Bool)

(assert (=> b!970538 (= res!649703 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20205))))

(declare-fun b!970539 () Bool)

(assert (=> b!970539 (= e!547178 false)))

(declare-fun zeroValue!1367 () V!34435)

(declare-fun minValue!1367 () V!34435)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun lt!431710 () Bool)

(declare-datatypes ((tuple2!14318 0))(
  ( (tuple2!14319 (_1!7169 (_ BitVec 64)) (_2!7169 V!34435)) )
))
(declare-datatypes ((List!20209 0))(
  ( (Nil!20206) (Cons!20205 (h!21367 tuple2!14318) (t!28580 List!20209)) )
))
(declare-datatypes ((ListLongMap!13029 0))(
  ( (ListLongMap!13030 (toList!6530 List!20209)) )
))
(declare-fun contains!5585 (ListLongMap!13029 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3715 (array!60217 array!60215 (_ BitVec 32) (_ BitVec 32) V!34435 V!34435 (_ BitVec 32) Int) ListLongMap!13029)

(assert (=> b!970539 (= lt!431710 (contains!5585 (getCurrentListMap!3715 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28968 _keys!1717) i!822)))))

(declare-fun b!970540 () Bool)

(declare-fun res!649705 () Bool)

(assert (=> b!970540 (=> (not res!649705) (not e!547178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970540 (= res!649705 (validKeyInArray!0 (select (arr!28968 _keys!1717) i!822)))))

(declare-fun b!970533 () Bool)

(declare-fun res!649707 () Bool)

(assert (=> b!970533 (=> (not res!649707) (not e!547178))))

(assert (=> b!970533 (= res!649707 (and (= (size!29447 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29448 _keys!1717) (size!29447 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!649706 () Bool)

(assert (=> start!83226 (=> (not res!649706) (not e!547178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83226 (= res!649706 (validMask!0 mask!2147))))

(assert (=> start!83226 e!547178))

(assert (=> start!83226 true))

(declare-fun array_inv!22311 (array!60215) Bool)

(assert (=> start!83226 (and (array_inv!22311 _values!1425) e!547182)))

(assert (=> start!83226 tp_is_empty!22089))

(assert (=> start!83226 tp!66852))

(declare-fun array_inv!22312 (array!60217) Bool)

(assert (=> start!83226 (array_inv!22312 _keys!1717)))

(assert (= (and start!83226 res!649706) b!970533))

(assert (= (and b!970533 res!649707) b!970537))

(assert (= (and b!970537 res!649704) b!970538))

(assert (= (and b!970538 res!649703) b!970536))

(assert (= (and b!970536 res!649708) b!970540))

(assert (= (and b!970540 res!649705) b!970539))

(assert (= (and b!970534 condMapEmpty!35143) mapIsEmpty!35143))

(assert (= (and b!970534 (not condMapEmpty!35143)) mapNonEmpty!35143))

(get-info :version)

(assert (= (and mapNonEmpty!35143 ((_ is ValueCellFull!10563) mapValue!35143)) b!970535))

(assert (= (and b!970534 ((_ is ValueCellFull!10563) mapDefault!35143)) b!970532))

(assert (= start!83226 b!970534))

(declare-fun m!898303 () Bool)

(assert (=> mapNonEmpty!35143 m!898303))

(declare-fun m!898305 () Bool)

(assert (=> b!970538 m!898305))

(declare-fun m!898307 () Bool)

(assert (=> b!970539 m!898307))

(declare-fun m!898309 () Bool)

(assert (=> b!970539 m!898309))

(assert (=> b!970539 m!898307))

(assert (=> b!970539 m!898309))

(declare-fun m!898311 () Bool)

(assert (=> b!970539 m!898311))

(assert (=> b!970540 m!898309))

(assert (=> b!970540 m!898309))

(declare-fun m!898313 () Bool)

(assert (=> b!970540 m!898313))

(declare-fun m!898315 () Bool)

(assert (=> start!83226 m!898315))

(declare-fun m!898317 () Bool)

(assert (=> start!83226 m!898317))

(declare-fun m!898319 () Bool)

(assert (=> start!83226 m!898319))

(declare-fun m!898321 () Bool)

(assert (=> b!970537 m!898321))

(check-sat tp_is_empty!22089 b_and!30697 (not start!83226) (not b!970538) (not mapNonEmpty!35143) (not b_next!19191) (not b!970539) (not b!970537) (not b!970540))
(check-sat b_and!30697 (not b_next!19191))
