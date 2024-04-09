; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38684 () Bool)

(assert start!38684)

(declare-fun b_free!9213 () Bool)

(declare-fun b_next!9213 () Bool)

(assert (=> start!38684 (= b_free!9213 (not b_next!9213))))

(declare-fun tp!32762 () Bool)

(declare-fun b_and!16617 () Bool)

(assert (=> start!38684 (= tp!32762 b_and!16617)))

(declare-fun b!401695 () Bool)

(declare-fun res!231370 () Bool)

(declare-fun e!242134 () Bool)

(assert (=> b!401695 (=> (not res!231370) (not e!242134))))

(declare-datatypes ((array!24063 0))(
  ( (array!24064 (arr!11478 (Array (_ BitVec 32) (_ BitVec 64))) (size!11830 (_ BitVec 32))) )
))
(declare-fun lt!187826 () array!24063)

(declare-datatypes ((List!6643 0))(
  ( (Nil!6640) (Cons!6639 (h!7495 (_ BitVec 64)) (t!11825 List!6643)) )
))
(declare-fun arrayNoDuplicates!0 (array!24063 (_ BitVec 32) List!6643) Bool)

(assert (=> b!401695 (= res!231370 (arrayNoDuplicates!0 lt!187826 #b00000000000000000000000000000000 Nil!6640))))

(declare-fun mapIsEmpty!16764 () Bool)

(declare-fun mapRes!16764 () Bool)

(assert (=> mapIsEmpty!16764 mapRes!16764))

(declare-fun res!231364 () Bool)

(declare-fun e!242132 () Bool)

(assert (=> start!38684 (=> (not res!231364) (not e!242132))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!24063)

(assert (=> start!38684 (= res!231364 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11830 _keys!709))))))

(assert (=> start!38684 e!242132))

(declare-fun tp_is_empty!10095 () Bool)

(assert (=> start!38684 tp_is_empty!10095))

(assert (=> start!38684 tp!32762))

(assert (=> start!38684 true))

(declare-datatypes ((V!14565 0))(
  ( (V!14566 (val!5092 Int)) )
))
(declare-datatypes ((ValueCell!4704 0))(
  ( (ValueCellFull!4704 (v!7335 V!14565)) (EmptyCell!4704) )
))
(declare-datatypes ((array!24065 0))(
  ( (array!24066 (arr!11479 (Array (_ BitVec 32) ValueCell!4704)) (size!11831 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24065)

(declare-fun e!242133 () Bool)

(declare-fun array_inv!8394 (array!24065) Bool)

(assert (=> start!38684 (and (array_inv!8394 _values!549) e!242133)))

(declare-fun array_inv!8395 (array!24063) Bool)

(assert (=> start!38684 (array_inv!8395 _keys!709)))

(declare-fun b!401696 () Bool)

(declare-fun e!242136 () Bool)

(assert (=> b!401696 (= e!242133 (and e!242136 mapRes!16764))))

(declare-fun condMapEmpty!16764 () Bool)

(declare-fun mapDefault!16764 () ValueCell!4704)

(assert (=> b!401696 (= condMapEmpty!16764 (= (arr!11479 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4704)) mapDefault!16764)))))

(declare-fun mapNonEmpty!16764 () Bool)

(declare-fun tp!32763 () Bool)

(declare-fun e!242137 () Bool)

(assert (=> mapNonEmpty!16764 (= mapRes!16764 (and tp!32763 e!242137))))

(declare-fun mapKey!16764 () (_ BitVec 32))

(declare-fun mapRest!16764 () (Array (_ BitVec 32) ValueCell!4704))

(declare-fun mapValue!16764 () ValueCell!4704)

(assert (=> mapNonEmpty!16764 (= (arr!11479 _values!549) (store mapRest!16764 mapKey!16764 mapValue!16764))))

(declare-fun b!401697 () Bool)

(declare-fun res!231368 () Bool)

(assert (=> b!401697 (=> (not res!231368) (not e!242132))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!401697 (= res!231368 (or (= (select (arr!11478 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11478 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401698 () Bool)

(declare-fun res!231362 () Bool)

(assert (=> b!401698 (=> (not res!231362) (not e!242132))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401698 (= res!231362 (validKeyInArray!0 k0!794))))

(declare-fun minValue!515 () V!14565)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14565)

(declare-datatypes ((tuple2!6696 0))(
  ( (tuple2!6697 (_1!3358 (_ BitVec 64)) (_2!3358 V!14565)) )
))
(declare-datatypes ((List!6644 0))(
  ( (Nil!6641) (Cons!6640 (h!7496 tuple2!6696) (t!11826 List!6644)) )
))
(declare-datatypes ((ListLongMap!5623 0))(
  ( (ListLongMap!5624 (toList!2827 List!6644)) )
))
(declare-fun call!28301 () ListLongMap!5623)

(declare-fun v!412 () V!14565)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!28297 () Bool)

(declare-fun c!54701 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1041 (array!24063 array!24065 (_ BitVec 32) (_ BitVec 32) V!14565 V!14565 (_ BitVec 32) Int) ListLongMap!5623)

(assert (=> bm!28297 (= call!28301 (getCurrentListMapNoExtraKeys!1041 (ite c!54701 _keys!709 lt!187826) (ite c!54701 _values!549 (array!24066 (store (arr!11479 _values!549) i!563 (ValueCellFull!4704 v!412)) (size!11831 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401699 () Bool)

(declare-fun res!231366 () Bool)

(assert (=> b!401699 (=> (not res!231366) (not e!242132))))

(assert (=> b!401699 (= res!231366 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11830 _keys!709))))))

(declare-fun b!401700 () Bool)

(declare-fun res!231367 () Bool)

(assert (=> b!401700 (=> (not res!231367) (not e!242132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401700 (= res!231367 (validMask!0 mask!1025))))

(declare-fun b!401701 () Bool)

(assert (=> b!401701 (= e!242134 (not true))))

(declare-fun e!242131 () Bool)

(assert (=> b!401701 e!242131))

(assert (=> b!401701 (= c!54701 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12115 0))(
  ( (Unit!12116) )
))
(declare-fun lt!187827 () Unit!12115)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!320 (array!24063 array!24065 (_ BitVec 32) (_ BitVec 32) V!14565 V!14565 (_ BitVec 32) (_ BitVec 64) V!14565 (_ BitVec 32) Int) Unit!12115)

(assert (=> b!401701 (= lt!187827 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!320 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401702 () Bool)

(declare-fun res!231361 () Bool)

(assert (=> b!401702 (=> (not res!231361) (not e!242134))))

(assert (=> b!401702 (= res!231361 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11830 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401703 () Bool)

(assert (=> b!401703 (= e!242136 tp_is_empty!10095)))

(declare-fun b!401704 () Bool)

(declare-fun res!231363 () Bool)

(assert (=> b!401704 (=> (not res!231363) (not e!242132))))

(declare-fun arrayContainsKey!0 (array!24063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401704 (= res!231363 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!401705 () Bool)

(declare-fun call!28300 () ListLongMap!5623)

(assert (=> b!401705 (= e!242131 (= call!28301 call!28300))))

(declare-fun b!401706 () Bool)

(declare-fun res!231369 () Bool)

(assert (=> b!401706 (=> (not res!231369) (not e!242132))))

(assert (=> b!401706 (= res!231369 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6640))))

(declare-fun b!401707 () Bool)

(declare-fun res!231372 () Bool)

(assert (=> b!401707 (=> (not res!231372) (not e!242132))))

(assert (=> b!401707 (= res!231372 (and (= (size!11831 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11830 _keys!709) (size!11831 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28298 () Bool)

(assert (=> bm!28298 (= call!28300 (getCurrentListMapNoExtraKeys!1041 (ite c!54701 lt!187826 _keys!709) (ite c!54701 (array!24066 (store (arr!11479 _values!549) i!563 (ValueCellFull!4704 v!412)) (size!11831 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401708 () Bool)

(declare-fun +!1107 (ListLongMap!5623 tuple2!6696) ListLongMap!5623)

(assert (=> b!401708 (= e!242131 (= call!28300 (+!1107 call!28301 (tuple2!6697 k0!794 v!412))))))

(declare-fun b!401709 () Bool)

(assert (=> b!401709 (= e!242137 tp_is_empty!10095)))

(declare-fun b!401710 () Bool)

(assert (=> b!401710 (= e!242132 e!242134)))

(declare-fun res!231365 () Bool)

(assert (=> b!401710 (=> (not res!231365) (not e!242134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24063 (_ BitVec 32)) Bool)

(assert (=> b!401710 (= res!231365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187826 mask!1025))))

(assert (=> b!401710 (= lt!187826 (array!24064 (store (arr!11478 _keys!709) i!563 k0!794) (size!11830 _keys!709)))))

(declare-fun b!401711 () Bool)

(declare-fun res!231371 () Bool)

(assert (=> b!401711 (=> (not res!231371) (not e!242132))))

(assert (=> b!401711 (= res!231371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38684 res!231364) b!401700))

(assert (= (and b!401700 res!231367) b!401707))

(assert (= (and b!401707 res!231372) b!401711))

(assert (= (and b!401711 res!231371) b!401706))

(assert (= (and b!401706 res!231369) b!401699))

(assert (= (and b!401699 res!231366) b!401698))

(assert (= (and b!401698 res!231362) b!401697))

(assert (= (and b!401697 res!231368) b!401704))

(assert (= (and b!401704 res!231363) b!401710))

(assert (= (and b!401710 res!231365) b!401695))

(assert (= (and b!401695 res!231370) b!401702))

(assert (= (and b!401702 res!231361) b!401701))

(assert (= (and b!401701 c!54701) b!401708))

(assert (= (and b!401701 (not c!54701)) b!401705))

(assert (= (or b!401708 b!401705) bm!28298))

(assert (= (or b!401708 b!401705) bm!28297))

(assert (= (and b!401696 condMapEmpty!16764) mapIsEmpty!16764))

(assert (= (and b!401696 (not condMapEmpty!16764)) mapNonEmpty!16764))

(get-info :version)

(assert (= (and mapNonEmpty!16764 ((_ is ValueCellFull!4704) mapValue!16764)) b!401709))

(assert (= (and b!401696 ((_ is ValueCellFull!4704) mapDefault!16764)) b!401703))

(assert (= start!38684 b!401696))

(declare-fun m!395443 () Bool)

(assert (=> b!401698 m!395443))

(declare-fun m!395445 () Bool)

(assert (=> b!401706 m!395445))

(declare-fun m!395447 () Bool)

(assert (=> b!401711 m!395447))

(declare-fun m!395449 () Bool)

(assert (=> b!401708 m!395449))

(declare-fun m!395451 () Bool)

(assert (=> b!401710 m!395451))

(declare-fun m!395453 () Bool)

(assert (=> b!401710 m!395453))

(declare-fun m!395455 () Bool)

(assert (=> mapNonEmpty!16764 m!395455))

(declare-fun m!395457 () Bool)

(assert (=> bm!28297 m!395457))

(declare-fun m!395459 () Bool)

(assert (=> bm!28297 m!395459))

(declare-fun m!395461 () Bool)

(assert (=> b!401700 m!395461))

(assert (=> bm!28298 m!395457))

(declare-fun m!395463 () Bool)

(assert (=> bm!28298 m!395463))

(declare-fun m!395465 () Bool)

(assert (=> start!38684 m!395465))

(declare-fun m!395467 () Bool)

(assert (=> start!38684 m!395467))

(declare-fun m!395469 () Bool)

(assert (=> b!401697 m!395469))

(declare-fun m!395471 () Bool)

(assert (=> b!401704 m!395471))

(declare-fun m!395473 () Bool)

(assert (=> b!401695 m!395473))

(declare-fun m!395475 () Bool)

(assert (=> b!401701 m!395475))

(check-sat (not b!401710) (not bm!28298) (not b!401698) (not bm!28297) (not b_next!9213) (not start!38684) (not b!401701) (not b!401708) b_and!16617 (not b!401695) (not b!401706) (not b!401704) (not mapNonEmpty!16764) (not b!401700) (not b!401711) tp_is_empty!10095)
(check-sat b_and!16617 (not b_next!9213))
