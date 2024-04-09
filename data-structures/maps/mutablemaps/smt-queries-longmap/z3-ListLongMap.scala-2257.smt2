; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37014 () Bool)

(assert start!37014)

(declare-fun b_free!8133 () Bool)

(declare-fun b_next!8133 () Bool)

(assert (=> start!37014 (= b_free!8133 (not b_next!8133))))

(declare-fun tp!29114 () Bool)

(declare-fun b_and!15393 () Bool)

(assert (=> start!37014 (= tp!29114 b_and!15393)))

(declare-fun b!371438 () Bool)

(declare-fun res!208895 () Bool)

(declare-fun e!226699 () Bool)

(assert (=> b!371438 (=> (not res!208895) (not e!226699))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21473 0))(
  ( (array!21474 (arr!10202 (Array (_ BitVec 32) (_ BitVec 64))) (size!10554 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21473)

(assert (=> b!371438 (= res!208895 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10554 _keys!658))))))

(declare-fun b!371439 () Bool)

(declare-fun res!208903 () Bool)

(assert (=> b!371439 (=> (not res!208903) (not e!226699))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371439 (= res!208903 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371440 () Bool)

(declare-fun e!226701 () Bool)

(declare-fun e!226702 () Bool)

(declare-fun mapRes!14736 () Bool)

(assert (=> b!371440 (= e!226701 (and e!226702 mapRes!14736))))

(declare-fun condMapEmpty!14736 () Bool)

(declare-datatypes ((V!12813 0))(
  ( (V!12814 (val!4435 Int)) )
))
(declare-datatypes ((ValueCell!4047 0))(
  ( (ValueCellFull!4047 (v!6628 V!12813)) (EmptyCell!4047) )
))
(declare-datatypes ((array!21475 0))(
  ( (array!21476 (arr!10203 (Array (_ BitVec 32) ValueCell!4047)) (size!10555 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21475)

(declare-fun mapDefault!14736 () ValueCell!4047)

(assert (=> b!371440 (= condMapEmpty!14736 (= (arr!10203 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4047)) mapDefault!14736)))))

(declare-fun mapIsEmpty!14736 () Bool)

(assert (=> mapIsEmpty!14736 mapRes!14736))

(declare-fun b!371441 () Bool)

(declare-fun res!208902 () Bool)

(assert (=> b!371441 (=> (not res!208902) (not e!226699))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21473 (_ BitVec 32)) Bool)

(assert (=> b!371441 (= res!208902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371442 () Bool)

(declare-fun e!226703 () Bool)

(assert (=> b!371442 (= e!226703 (not true))))

(declare-datatypes ((tuple2!5858 0))(
  ( (tuple2!5859 (_1!2939 (_ BitVec 64)) (_2!2939 V!12813)) )
))
(declare-datatypes ((List!5729 0))(
  ( (Nil!5726) (Cons!5725 (h!6581 tuple2!5858) (t!10887 List!5729)) )
))
(declare-datatypes ((ListLongMap!4785 0))(
  ( (ListLongMap!4786 (toList!2408 List!5729)) )
))
(declare-fun lt!170324 () ListLongMap!4785)

(declare-fun lt!170322 () ListLongMap!4785)

(assert (=> b!371442 (and (= lt!170324 lt!170322) (= lt!170322 lt!170324))))

(declare-fun v!373 () V!12813)

(declare-fun lt!170326 () ListLongMap!4785)

(declare-fun +!749 (ListLongMap!4785 tuple2!5858) ListLongMap!4785)

(assert (=> b!371442 (= lt!170322 (+!749 lt!170326 (tuple2!5859 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12813)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((Unit!11403 0))(
  ( (Unit!11404) )
))
(declare-fun lt!170323 () Unit!11403)

(declare-fun minValue!472 () V!12813)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!9 (array!21473 array!21475 (_ BitVec 32) (_ BitVec 32) V!12813 V!12813 (_ BitVec 32) (_ BitVec 64) V!12813 (_ BitVec 32) Int) Unit!11403)

(assert (=> b!371442 (= lt!170323 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!9 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170325 () array!21473)

(declare-fun getCurrentListMapNoExtraKeys!676 (array!21473 array!21475 (_ BitVec 32) (_ BitVec 32) V!12813 V!12813 (_ BitVec 32) Int) ListLongMap!4785)

(assert (=> b!371442 (= lt!170324 (getCurrentListMapNoExtraKeys!676 lt!170325 (array!21476 (store (arr!10203 _values!506) i!548 (ValueCellFull!4047 v!373)) (size!10555 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371442 (= lt!170326 (getCurrentListMapNoExtraKeys!676 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371443 () Bool)

(assert (=> b!371443 (= e!226699 e!226703)))

(declare-fun res!208896 () Bool)

(assert (=> b!371443 (=> (not res!208896) (not e!226703))))

(assert (=> b!371443 (= res!208896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170325 mask!970))))

(assert (=> b!371443 (= lt!170325 (array!21474 (store (arr!10202 _keys!658) i!548 k0!778) (size!10554 _keys!658)))))

(declare-fun b!371444 () Bool)

(declare-fun e!226700 () Bool)

(declare-fun tp_is_empty!8781 () Bool)

(assert (=> b!371444 (= e!226700 tp_is_empty!8781)))

(declare-fun b!371445 () Bool)

(declare-fun res!208898 () Bool)

(assert (=> b!371445 (=> (not res!208898) (not e!226699))))

(assert (=> b!371445 (= res!208898 (or (= (select (arr!10202 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10202 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!208897 () Bool)

(assert (=> start!37014 (=> (not res!208897) (not e!226699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37014 (= res!208897 (validMask!0 mask!970))))

(assert (=> start!37014 e!226699))

(declare-fun array_inv!7534 (array!21475) Bool)

(assert (=> start!37014 (and (array_inv!7534 _values!506) e!226701)))

(assert (=> start!37014 tp!29114))

(assert (=> start!37014 true))

(assert (=> start!37014 tp_is_empty!8781))

(declare-fun array_inv!7535 (array!21473) Bool)

(assert (=> start!37014 (array_inv!7535 _keys!658)))

(declare-fun b!371446 () Bool)

(declare-fun res!208904 () Bool)

(assert (=> b!371446 (=> (not res!208904) (not e!226703))))

(declare-datatypes ((List!5730 0))(
  ( (Nil!5727) (Cons!5726 (h!6582 (_ BitVec 64)) (t!10888 List!5730)) )
))
(declare-fun arrayNoDuplicates!0 (array!21473 (_ BitVec 32) List!5730) Bool)

(assert (=> b!371446 (= res!208904 (arrayNoDuplicates!0 lt!170325 #b00000000000000000000000000000000 Nil!5727))))

(declare-fun b!371447 () Bool)

(declare-fun res!208900 () Bool)

(assert (=> b!371447 (=> (not res!208900) (not e!226699))))

(assert (=> b!371447 (= res!208900 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5727))))

(declare-fun b!371448 () Bool)

(declare-fun res!208899 () Bool)

(assert (=> b!371448 (=> (not res!208899) (not e!226699))))

(assert (=> b!371448 (= res!208899 (and (= (size!10555 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10554 _keys!658) (size!10555 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371449 () Bool)

(assert (=> b!371449 (= e!226702 tp_is_empty!8781)))

(declare-fun b!371450 () Bool)

(declare-fun res!208901 () Bool)

(assert (=> b!371450 (=> (not res!208901) (not e!226699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371450 (= res!208901 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14736 () Bool)

(declare-fun tp!29115 () Bool)

(assert (=> mapNonEmpty!14736 (= mapRes!14736 (and tp!29115 e!226700))))

(declare-fun mapRest!14736 () (Array (_ BitVec 32) ValueCell!4047))

(declare-fun mapValue!14736 () ValueCell!4047)

(declare-fun mapKey!14736 () (_ BitVec 32))

(assert (=> mapNonEmpty!14736 (= (arr!10203 _values!506) (store mapRest!14736 mapKey!14736 mapValue!14736))))

(assert (= (and start!37014 res!208897) b!371448))

(assert (= (and b!371448 res!208899) b!371441))

(assert (= (and b!371441 res!208902) b!371447))

(assert (= (and b!371447 res!208900) b!371438))

(assert (= (and b!371438 res!208895) b!371450))

(assert (= (and b!371450 res!208901) b!371445))

(assert (= (and b!371445 res!208898) b!371439))

(assert (= (and b!371439 res!208903) b!371443))

(assert (= (and b!371443 res!208896) b!371446))

(assert (= (and b!371446 res!208904) b!371442))

(assert (= (and b!371440 condMapEmpty!14736) mapIsEmpty!14736))

(assert (= (and b!371440 (not condMapEmpty!14736)) mapNonEmpty!14736))

(get-info :version)

(assert (= (and mapNonEmpty!14736 ((_ is ValueCellFull!4047) mapValue!14736)) b!371444))

(assert (= (and b!371440 ((_ is ValueCellFull!4047) mapDefault!14736)) b!371449))

(assert (= start!37014 b!371440))

(declare-fun m!367425 () Bool)

(assert (=> b!371441 m!367425))

(declare-fun m!367427 () Bool)

(assert (=> b!371445 m!367427))

(declare-fun m!367429 () Bool)

(assert (=> mapNonEmpty!14736 m!367429))

(declare-fun m!367431 () Bool)

(assert (=> b!371443 m!367431))

(declare-fun m!367433 () Bool)

(assert (=> b!371443 m!367433))

(declare-fun m!367435 () Bool)

(assert (=> b!371447 m!367435))

(declare-fun m!367437 () Bool)

(assert (=> b!371446 m!367437))

(declare-fun m!367439 () Bool)

(assert (=> b!371439 m!367439))

(declare-fun m!367441 () Bool)

(assert (=> b!371442 m!367441))

(declare-fun m!367443 () Bool)

(assert (=> b!371442 m!367443))

(declare-fun m!367445 () Bool)

(assert (=> b!371442 m!367445))

(declare-fun m!367447 () Bool)

(assert (=> b!371442 m!367447))

(declare-fun m!367449 () Bool)

(assert (=> b!371442 m!367449))

(declare-fun m!367451 () Bool)

(assert (=> start!37014 m!367451))

(declare-fun m!367453 () Bool)

(assert (=> start!37014 m!367453))

(declare-fun m!367455 () Bool)

(assert (=> start!37014 m!367455))

(declare-fun m!367457 () Bool)

(assert (=> b!371450 m!367457))

(check-sat (not mapNonEmpty!14736) (not b_next!8133) (not b!371443) (not b!371442) b_and!15393 tp_is_empty!8781 (not b!371441) (not b!371446) (not b!371447) (not start!37014) (not b!371450) (not b!371439))
(check-sat b_and!15393 (not b_next!8133))
