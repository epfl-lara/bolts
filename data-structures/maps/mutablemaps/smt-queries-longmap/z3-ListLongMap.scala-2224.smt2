; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36816 () Bool)

(assert start!36816)

(declare-fun b_free!7935 () Bool)

(declare-fun b_next!7935 () Bool)

(assert (=> start!36816 (= b_free!7935 (not b_next!7935))))

(declare-fun tp!28520 () Bool)

(declare-fun b_and!15195 () Bool)

(assert (=> start!36816 (= tp!28520 b_and!15195)))

(declare-fun b!367577 () Bool)

(declare-fun e!224918 () Bool)

(declare-fun e!224917 () Bool)

(declare-fun mapRes!14439 () Bool)

(assert (=> b!367577 (= e!224918 (and e!224917 mapRes!14439))))

(declare-fun condMapEmpty!14439 () Bool)

(declare-datatypes ((V!12549 0))(
  ( (V!12550 (val!4336 Int)) )
))
(declare-datatypes ((ValueCell!3948 0))(
  ( (ValueCellFull!3948 (v!6529 V!12549)) (EmptyCell!3948) )
))
(declare-datatypes ((array!21091 0))(
  ( (array!21092 (arr!10011 (Array (_ BitVec 32) ValueCell!3948)) (size!10363 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21091)

(declare-fun mapDefault!14439 () ValueCell!3948)

(assert (=> b!367577 (= condMapEmpty!14439 (= (arr!10011 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3948)) mapDefault!14439)))))

(declare-fun b!367578 () Bool)

(declare-fun res!205930 () Bool)

(declare-fun e!224921 () Bool)

(assert (=> b!367578 (=> (not res!205930) (not e!224921))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367578 (= res!205930 (validKeyInArray!0 k0!778))))

(declare-fun b!367579 () Bool)

(declare-fun res!205932 () Bool)

(assert (=> b!367579 (=> (not res!205932) (not e!224921))))

(declare-datatypes ((array!21093 0))(
  ( (array!21094 (arr!10012 (Array (_ BitVec 32) (_ BitVec 64))) (size!10364 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21093)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21093 (_ BitVec 32)) Bool)

(assert (=> b!367579 (= res!205932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14439 () Bool)

(assert (=> mapIsEmpty!14439 mapRes!14439))

(declare-fun b!367580 () Bool)

(declare-fun tp_is_empty!8583 () Bool)

(assert (=> b!367580 (= e!224917 tp_is_empty!8583)))

(declare-fun b!367581 () Bool)

(declare-fun res!205933 () Bool)

(assert (=> b!367581 (=> (not res!205933) (not e!224921))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367581 (= res!205933 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10364 _keys!658))))))

(declare-fun b!367582 () Bool)

(declare-fun res!205931 () Bool)

(declare-fun e!224922 () Bool)

(assert (=> b!367582 (=> (not res!205931) (not e!224922))))

(declare-fun lt!169390 () array!21093)

(declare-datatypes ((List!5596 0))(
  ( (Nil!5593) (Cons!5592 (h!6448 (_ BitVec 64)) (t!10754 List!5596)) )
))
(declare-fun arrayNoDuplicates!0 (array!21093 (_ BitVec 32) List!5596) Bool)

(assert (=> b!367582 (= res!205931 (arrayNoDuplicates!0 lt!169390 #b00000000000000000000000000000000 Nil!5593))))

(declare-fun b!367584 () Bool)

(declare-fun res!205925 () Bool)

(assert (=> b!367584 (=> (not res!205925) (not e!224921))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!367584 (= res!205925 (and (= (size!10363 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10364 _keys!658) (size!10363 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367585 () Bool)

(declare-fun res!205927 () Bool)

(assert (=> b!367585 (=> (not res!205927) (not e!224921))))

(declare-fun arrayContainsKey!0 (array!21093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367585 (= res!205927 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367586 () Bool)

(assert (=> b!367586 (= e!224922 false)))

(declare-datatypes ((tuple2!5738 0))(
  ( (tuple2!5739 (_1!2879 (_ BitVec 64)) (_2!2879 V!12549)) )
))
(declare-datatypes ((List!5597 0))(
  ( (Nil!5594) (Cons!5593 (h!6449 tuple2!5738) (t!10755 List!5597)) )
))
(declare-datatypes ((ListLongMap!4665 0))(
  ( (ListLongMap!4666 (toList!2348 List!5597)) )
))
(declare-fun lt!169389 () ListLongMap!4665)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12549)

(declare-fun minValue!472 () V!12549)

(declare-fun getCurrentListMapNoExtraKeys!616 (array!21093 array!21091 (_ BitVec 32) (_ BitVec 32) V!12549 V!12549 (_ BitVec 32) Int) ListLongMap!4665)

(assert (=> b!367586 (= lt!169389 (getCurrentListMapNoExtraKeys!616 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367587 () Bool)

(declare-fun res!205934 () Bool)

(assert (=> b!367587 (=> (not res!205934) (not e!224921))))

(assert (=> b!367587 (= res!205934 (or (= (select (arr!10012 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10012 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367588 () Bool)

(declare-fun e!224919 () Bool)

(assert (=> b!367588 (= e!224919 tp_is_empty!8583)))

(declare-fun b!367589 () Bool)

(declare-fun res!205928 () Bool)

(assert (=> b!367589 (=> (not res!205928) (not e!224921))))

(assert (=> b!367589 (= res!205928 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5593))))

(declare-fun mapNonEmpty!14439 () Bool)

(declare-fun tp!28521 () Bool)

(assert (=> mapNonEmpty!14439 (= mapRes!14439 (and tp!28521 e!224919))))

(declare-fun mapKey!14439 () (_ BitVec 32))

(declare-fun mapValue!14439 () ValueCell!3948)

(declare-fun mapRest!14439 () (Array (_ BitVec 32) ValueCell!3948))

(assert (=> mapNonEmpty!14439 (= (arr!10011 _values!506) (store mapRest!14439 mapKey!14439 mapValue!14439))))

(declare-fun b!367583 () Bool)

(assert (=> b!367583 (= e!224921 e!224922)))

(declare-fun res!205929 () Bool)

(assert (=> b!367583 (=> (not res!205929) (not e!224922))))

(assert (=> b!367583 (= res!205929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169390 mask!970))))

(assert (=> b!367583 (= lt!169390 (array!21094 (store (arr!10012 _keys!658) i!548 k0!778) (size!10364 _keys!658)))))

(declare-fun res!205926 () Bool)

(assert (=> start!36816 (=> (not res!205926) (not e!224921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36816 (= res!205926 (validMask!0 mask!970))))

(assert (=> start!36816 e!224921))

(assert (=> start!36816 true))

(declare-fun array_inv!7396 (array!21091) Bool)

(assert (=> start!36816 (and (array_inv!7396 _values!506) e!224918)))

(assert (=> start!36816 tp!28520))

(assert (=> start!36816 tp_is_empty!8583))

(declare-fun array_inv!7397 (array!21093) Bool)

(assert (=> start!36816 (array_inv!7397 _keys!658)))

(assert (= (and start!36816 res!205926) b!367584))

(assert (= (and b!367584 res!205925) b!367579))

(assert (= (and b!367579 res!205932) b!367589))

(assert (= (and b!367589 res!205928) b!367581))

(assert (= (and b!367581 res!205933) b!367578))

(assert (= (and b!367578 res!205930) b!367587))

(assert (= (and b!367587 res!205934) b!367585))

(assert (= (and b!367585 res!205927) b!367583))

(assert (= (and b!367583 res!205929) b!367582))

(assert (= (and b!367582 res!205931) b!367586))

(assert (= (and b!367577 condMapEmpty!14439) mapIsEmpty!14439))

(assert (= (and b!367577 (not condMapEmpty!14439)) mapNonEmpty!14439))

(get-info :version)

(assert (= (and mapNonEmpty!14439 ((_ is ValueCellFull!3948) mapValue!14439)) b!367588))

(assert (= (and b!367577 ((_ is ValueCellFull!3948) mapDefault!14439)) b!367580))

(assert (= start!36816 b!367577))

(declare-fun m!364483 () Bool)

(assert (=> b!367582 m!364483))

(declare-fun m!364485 () Bool)

(assert (=> b!367587 m!364485))

(declare-fun m!364487 () Bool)

(assert (=> b!367586 m!364487))

(declare-fun m!364489 () Bool)

(assert (=> b!367578 m!364489))

(declare-fun m!364491 () Bool)

(assert (=> b!367583 m!364491))

(declare-fun m!364493 () Bool)

(assert (=> b!367583 m!364493))

(declare-fun m!364495 () Bool)

(assert (=> mapNonEmpty!14439 m!364495))

(declare-fun m!364497 () Bool)

(assert (=> b!367579 m!364497))

(declare-fun m!364499 () Bool)

(assert (=> b!367585 m!364499))

(declare-fun m!364501 () Bool)

(assert (=> b!367589 m!364501))

(declare-fun m!364503 () Bool)

(assert (=> start!36816 m!364503))

(declare-fun m!364505 () Bool)

(assert (=> start!36816 m!364505))

(declare-fun m!364507 () Bool)

(assert (=> start!36816 m!364507))

(check-sat tp_is_empty!8583 (not b!367585) (not b!367578) b_and!15195 (not b!367586) (not b_next!7935) (not b!367583) (not b!367589) (not start!36816) (not mapNonEmpty!14439) (not b!367579) (not b!367582))
(check-sat b_and!15195 (not b_next!7935))
