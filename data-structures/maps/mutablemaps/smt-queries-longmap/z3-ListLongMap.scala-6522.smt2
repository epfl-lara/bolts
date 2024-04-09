; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83002 () Bool)

(assert start!83002)

(declare-fun b!968338 () Bool)

(declare-fun e!545736 () Bool)

(declare-fun e!545734 () Bool)

(declare-fun mapRes!34858 () Bool)

(assert (=> b!968338 (= e!545736 (and e!545734 mapRes!34858))))

(declare-fun condMapEmpty!34858 () Bool)

(declare-datatypes ((V!34195 0))(
  ( (V!34196 (val!11005 Int)) )
))
(declare-datatypes ((ValueCell!10473 0))(
  ( (ValueCellFull!10473 (v!13563 V!34195)) (EmptyCell!10473) )
))
(declare-datatypes ((array!59869 0))(
  ( (array!59870 (arr!28799 (Array (_ BitVec 32) ValueCell!10473)) (size!29279 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59869)

(declare-fun mapDefault!34858 () ValueCell!10473)

(assert (=> b!968338 (= condMapEmpty!34858 (= (arr!28799 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10473)) mapDefault!34858)))))

(declare-fun mapNonEmpty!34858 () Bool)

(declare-fun tp!66427 () Bool)

(declare-fun e!545733 () Bool)

(assert (=> mapNonEmpty!34858 (= mapRes!34858 (and tp!66427 e!545733))))

(declare-fun mapRest!34858 () (Array (_ BitVec 32) ValueCell!10473))

(declare-fun mapKey!34858 () (_ BitVec 32))

(declare-fun mapValue!34858 () ValueCell!10473)

(assert (=> mapNonEmpty!34858 (= (arr!28799 _values!1425) (store mapRest!34858 mapKey!34858 mapValue!34858))))

(declare-fun res!648383 () Bool)

(declare-fun e!545737 () Bool)

(assert (=> start!83002 (=> (not res!648383) (not e!545737))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83002 (= res!648383 (validMask!0 mask!2147))))

(assert (=> start!83002 e!545737))

(assert (=> start!83002 true))

(declare-fun array_inv!22191 (array!59869) Bool)

(assert (=> start!83002 (and (array_inv!22191 _values!1425) e!545736)))

(declare-datatypes ((array!59871 0))(
  ( (array!59872 (arr!28800 (Array (_ BitVec 32) (_ BitVec 64))) (size!29280 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59871)

(declare-fun array_inv!22192 (array!59871) Bool)

(assert (=> start!83002 (array_inv!22192 _keys!1717)))

(declare-fun b!968339 () Bool)

(declare-fun tp_is_empty!21909 () Bool)

(assert (=> b!968339 (= e!545733 tp_is_empty!21909)))

(declare-fun b!968340 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968340 (= e!545737 (and (= (size!29279 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29280 _keys!1717) (size!29279 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011) (not (= (size!29280 _keys!1717) (bvadd #b00000000000000000000000000000001 mask!2147)))))))

(declare-fun mapIsEmpty!34858 () Bool)

(assert (=> mapIsEmpty!34858 mapRes!34858))

(declare-fun b!968341 () Bool)

(assert (=> b!968341 (= e!545734 tp_is_empty!21909)))

(assert (= (and start!83002 res!648383) b!968340))

(assert (= (and b!968338 condMapEmpty!34858) mapIsEmpty!34858))

(assert (= (and b!968338 (not condMapEmpty!34858)) mapNonEmpty!34858))

(get-info :version)

(assert (= (and mapNonEmpty!34858 ((_ is ValueCellFull!10473) mapValue!34858)) b!968339))

(assert (= (and b!968338 ((_ is ValueCellFull!10473) mapDefault!34858)) b!968341))

(assert (= start!83002 b!968338))

(declare-fun m!896787 () Bool)

(assert (=> mapNonEmpty!34858 m!896787))

(declare-fun m!896789 () Bool)

(assert (=> start!83002 m!896789))

(declare-fun m!896791 () Bool)

(assert (=> start!83002 m!896791))

(declare-fun m!896793 () Bool)

(assert (=> start!83002 m!896793))

(check-sat (not start!83002) (not mapNonEmpty!34858) tp_is_empty!21909)
(check-sat)
