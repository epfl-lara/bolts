; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83160 () Bool)

(assert start!83160)

(declare-fun b_free!19125 () Bool)

(declare-fun b_next!19125 () Bool)

(assert (=> start!83160 (= b_free!19125 (not b_next!19125))))

(declare-fun tp!66654 () Bool)

(declare-fun b_and!30631 () Bool)

(assert (=> start!83160 (= tp!66654 b_and!30631)))

(declare-fun b!969632 () Bool)

(declare-fun res!649104 () Bool)

(declare-fun e!546686 () Bool)

(assert (=> b!969632 (=> (not res!649104) (not e!546686))))

(declare-datatypes ((array!60093 0))(
  ( (array!60094 (arr!28906 (Array (_ BitVec 32) (_ BitVec 64))) (size!29386 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60093)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60093 (_ BitVec 32)) Bool)

(assert (=> b!969632 (= res!649104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!649100 () Bool)

(assert (=> start!83160 (=> (not res!649100) (not e!546686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83160 (= res!649100 (validMask!0 mask!2147))))

(assert (=> start!83160 e!546686))

(assert (=> start!83160 true))

(declare-datatypes ((V!34347 0))(
  ( (V!34348 (val!11062 Int)) )
))
(declare-datatypes ((ValueCell!10530 0))(
  ( (ValueCellFull!10530 (v!13621 V!34347)) (EmptyCell!10530) )
))
(declare-datatypes ((array!60095 0))(
  ( (array!60096 (arr!28907 (Array (_ BitVec 32) ValueCell!10530)) (size!29387 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60095)

(declare-fun e!546684 () Bool)

(declare-fun array_inv!22267 (array!60095) Bool)

(assert (=> start!83160 (and (array_inv!22267 _values!1425) e!546684)))

(declare-fun tp_is_empty!22023 () Bool)

(assert (=> start!83160 tp_is_empty!22023))

(assert (=> start!83160 tp!66654))

(declare-fun array_inv!22268 (array!60093) Bool)

(assert (=> start!83160 (array_inv!22268 _keys!1717)))

(declare-fun b!969633 () Bool)

(assert (=> b!969633 (= e!546686 false)))

(declare-fun lt!431620 () Bool)

(declare-fun zeroValue!1367 () V!34347)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34347)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14270 0))(
  ( (tuple2!14271 (_1!7145 (_ BitVec 64)) (_2!7145 V!34347)) )
))
(declare-datatypes ((List!20161 0))(
  ( (Nil!20158) (Cons!20157 (h!21319 tuple2!14270) (t!28532 List!20161)) )
))
(declare-datatypes ((ListLongMap!12981 0))(
  ( (ListLongMap!12982 (toList!6506 List!20161)) )
))
(declare-fun contains!5561 (ListLongMap!12981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3691 (array!60093 array!60095 (_ BitVec 32) (_ BitVec 32) V!34347 V!34347 (_ BitVec 32) Int) ListLongMap!12981)

(assert (=> b!969633 (= lt!431620 (contains!5561 (getCurrentListMap!3691 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28906 _keys!1717) i!822)))))

(declare-fun b!969634 () Bool)

(declare-fun res!649103 () Bool)

(assert (=> b!969634 (=> (not res!649103) (not e!546686))))

(assert (=> b!969634 (= res!649103 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29386 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29386 _keys!1717))))))

(declare-fun b!969635 () Bool)

(declare-fun e!546687 () Bool)

(assert (=> b!969635 (= e!546687 tp_is_empty!22023)))

(declare-fun b!969636 () Bool)

(declare-fun e!546685 () Bool)

(assert (=> b!969636 (= e!546685 tp_is_empty!22023)))

(declare-fun mapIsEmpty!35044 () Bool)

(declare-fun mapRes!35044 () Bool)

(assert (=> mapIsEmpty!35044 mapRes!35044))

(declare-fun b!969637 () Bool)

(declare-fun res!649101 () Bool)

(assert (=> b!969637 (=> (not res!649101) (not e!546686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969637 (= res!649101 (validKeyInArray!0 (select (arr!28906 _keys!1717) i!822)))))

(declare-fun b!969638 () Bool)

(declare-fun res!649105 () Bool)

(assert (=> b!969638 (=> (not res!649105) (not e!546686))))

(assert (=> b!969638 (= res!649105 (and (= (size!29387 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29386 _keys!1717) (size!29387 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35044 () Bool)

(declare-fun tp!66655 () Bool)

(assert (=> mapNonEmpty!35044 (= mapRes!35044 (and tp!66655 e!546685))))

(declare-fun mapKey!35044 () (_ BitVec 32))

(declare-fun mapRest!35044 () (Array (_ BitVec 32) ValueCell!10530))

(declare-fun mapValue!35044 () ValueCell!10530)

(assert (=> mapNonEmpty!35044 (= (arr!28907 _values!1425) (store mapRest!35044 mapKey!35044 mapValue!35044))))

(declare-fun b!969639 () Bool)

(declare-fun res!649102 () Bool)

(assert (=> b!969639 (=> (not res!649102) (not e!546686))))

(declare-datatypes ((List!20162 0))(
  ( (Nil!20159) (Cons!20158 (h!21320 (_ BitVec 64)) (t!28533 List!20162)) )
))
(declare-fun arrayNoDuplicates!0 (array!60093 (_ BitVec 32) List!20162) Bool)

(assert (=> b!969639 (= res!649102 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20159))))

(declare-fun b!969640 () Bool)

(assert (=> b!969640 (= e!546684 (and e!546687 mapRes!35044))))

(declare-fun condMapEmpty!35044 () Bool)

(declare-fun mapDefault!35044 () ValueCell!10530)

(assert (=> b!969640 (= condMapEmpty!35044 (= (arr!28907 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10530)) mapDefault!35044)))))

(assert (= (and start!83160 res!649100) b!969638))

(assert (= (and b!969638 res!649105) b!969632))

(assert (= (and b!969632 res!649104) b!969639))

(assert (= (and b!969639 res!649102) b!969634))

(assert (= (and b!969634 res!649103) b!969637))

(assert (= (and b!969637 res!649101) b!969633))

(assert (= (and b!969640 condMapEmpty!35044) mapIsEmpty!35044))

(assert (= (and b!969640 (not condMapEmpty!35044)) mapNonEmpty!35044))

(get-info :version)

(assert (= (and mapNonEmpty!35044 ((_ is ValueCellFull!10530) mapValue!35044)) b!969636))

(assert (= (and b!969640 ((_ is ValueCellFull!10530) mapDefault!35044)) b!969635))

(assert (= start!83160 b!969640))

(declare-fun m!897643 () Bool)

(assert (=> b!969639 m!897643))

(declare-fun m!897645 () Bool)

(assert (=> start!83160 m!897645))

(declare-fun m!897647 () Bool)

(assert (=> start!83160 m!897647))

(declare-fun m!897649 () Bool)

(assert (=> start!83160 m!897649))

(declare-fun m!897651 () Bool)

(assert (=> mapNonEmpty!35044 m!897651))

(declare-fun m!897653 () Bool)

(assert (=> b!969633 m!897653))

(declare-fun m!897655 () Bool)

(assert (=> b!969633 m!897655))

(assert (=> b!969633 m!897653))

(assert (=> b!969633 m!897655))

(declare-fun m!897657 () Bool)

(assert (=> b!969633 m!897657))

(declare-fun m!897659 () Bool)

(assert (=> b!969632 m!897659))

(assert (=> b!969637 m!897655))

(assert (=> b!969637 m!897655))

(declare-fun m!897661 () Bool)

(assert (=> b!969637 m!897661))

(check-sat (not mapNonEmpty!35044) tp_is_empty!22023 (not b!969633) (not start!83160) b_and!30631 (not b!969632) (not b_next!19125) (not b!969637) (not b!969639))
(check-sat b_and!30631 (not b_next!19125))
