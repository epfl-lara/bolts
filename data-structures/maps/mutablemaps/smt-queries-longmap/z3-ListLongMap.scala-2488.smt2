; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38756 () Bool)

(assert start!38756)

(declare-fun b_free!9285 () Bool)

(declare-fun b_next!9285 () Bool)

(assert (=> start!38756 (= b_free!9285 (not b_next!9285))))

(declare-fun tp!32978 () Bool)

(declare-fun b_and!16689 () Bool)

(assert (=> start!38756 (= tp!32978 b_and!16689)))

(declare-fun b!403531 () Bool)

(declare-fun e!242889 () Bool)

(declare-datatypes ((V!14661 0))(
  ( (V!14662 (val!5128 Int)) )
))
(declare-datatypes ((tuple2!6764 0))(
  ( (tuple2!6765 (_1!3392 (_ BitVec 64)) (_2!3392 V!14661)) )
))
(declare-datatypes ((List!6703 0))(
  ( (Nil!6700) (Cons!6699 (h!7555 tuple2!6764) (t!11885 List!6703)) )
))
(declare-datatypes ((ListLongMap!5691 0))(
  ( (ListLongMap!5692 (toList!2861 List!6703)) )
))
(declare-fun call!28517 () ListLongMap!5691)

(declare-fun call!28516 () ListLongMap!5691)

(assert (=> b!403531 (= e!242889 (= call!28517 call!28516))))

(declare-fun b!403532 () Bool)

(declare-fun res!232657 () Bool)

(declare-fun e!242888 () Bool)

(assert (=> b!403532 (=> (not res!232657) (not e!242888))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24203 0))(
  ( (array!24204 (arr!11548 (Array (_ BitVec 32) (_ BitVec 64))) (size!11900 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24203)

(assert (=> b!403532 (= res!232657 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11900 _keys!709))))))

(declare-fun b!403533 () Bool)

(declare-fun res!232658 () Bool)

(assert (=> b!403533 (=> (not res!232658) (not e!242888))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403533 (= res!232658 (validKeyInArray!0 k0!794))))

(declare-fun b!403534 () Bool)

(declare-fun v!412 () V!14661)

(declare-fun +!1134 (ListLongMap!5691 tuple2!6764) ListLongMap!5691)

(assert (=> b!403534 (= e!242889 (= call!28516 (+!1134 call!28517 (tuple2!6765 k0!794 v!412))))))

(declare-fun b!403535 () Bool)

(declare-fun res!232665 () Bool)

(assert (=> b!403535 (=> (not res!232665) (not e!242888))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403535 (= res!232665 (validMask!0 mask!1025))))

(declare-fun b!403536 () Bool)

(declare-fun e!242890 () Bool)

(declare-fun tp_is_empty!10167 () Bool)

(assert (=> b!403536 (= e!242890 tp_is_empty!10167)))

(declare-fun minValue!515 () V!14661)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4740 0))(
  ( (ValueCellFull!4740 (v!7371 V!14661)) (EmptyCell!4740) )
))
(declare-datatypes ((array!24205 0))(
  ( (array!24206 (arr!11549 (Array (_ BitVec 32) ValueCell!4740)) (size!11901 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24205)

(declare-fun zeroValue!515 () V!14661)

(declare-fun c!54809 () Bool)

(declare-fun lt!188042 () array!24203)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28513 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1072 (array!24203 array!24205 (_ BitVec 32) (_ BitVec 32) V!14661 V!14661 (_ BitVec 32) Int) ListLongMap!5691)

(assert (=> bm!28513 (= call!28517 (getCurrentListMapNoExtraKeys!1072 (ite c!54809 _keys!709 lt!188042) (ite c!54809 _values!549 (array!24206 (store (arr!11549 _values!549) i!563 (ValueCellFull!4740 v!412)) (size!11901 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403537 () Bool)

(declare-fun res!232660 () Bool)

(assert (=> b!403537 (=> (not res!232660) (not e!242888))))

(assert (=> b!403537 (= res!232660 (and (= (size!11901 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11900 _keys!709) (size!11901 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403538 () Bool)

(declare-fun e!242892 () Bool)

(assert (=> b!403538 (= e!242892 tp_is_empty!10167)))

(declare-fun b!403540 () Bool)

(declare-fun res!232662 () Bool)

(assert (=> b!403540 (=> (not res!232662) (not e!242888))))

(declare-fun arrayContainsKey!0 (array!24203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403540 (= res!232662 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!403541 () Bool)

(declare-fun res!232667 () Bool)

(declare-fun e!242893 () Bool)

(assert (=> b!403541 (=> (not res!232667) (not e!242893))))

(assert (=> b!403541 (= res!232667 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11900 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16872 () Bool)

(declare-fun mapRes!16872 () Bool)

(declare-fun tp!32979 () Bool)

(assert (=> mapNonEmpty!16872 (= mapRes!16872 (and tp!32979 e!242890))))

(declare-fun mapKey!16872 () (_ BitVec 32))

(declare-fun mapValue!16872 () ValueCell!4740)

(declare-fun mapRest!16872 () (Array (_ BitVec 32) ValueCell!4740))

(assert (=> mapNonEmpty!16872 (= (arr!11549 _values!549) (store mapRest!16872 mapKey!16872 mapValue!16872))))

(declare-fun b!403542 () Bool)

(declare-fun res!232659 () Bool)

(assert (=> b!403542 (=> (not res!232659) (not e!242893))))

(declare-datatypes ((List!6704 0))(
  ( (Nil!6701) (Cons!6700 (h!7556 (_ BitVec 64)) (t!11886 List!6704)) )
))
(declare-fun arrayNoDuplicates!0 (array!24203 (_ BitVec 32) List!6704) Bool)

(assert (=> b!403542 (= res!232659 (arrayNoDuplicates!0 lt!188042 #b00000000000000000000000000000000 Nil!6701))))

(declare-fun b!403543 () Bool)

(declare-fun res!232668 () Bool)

(assert (=> b!403543 (=> (not res!232668) (not e!242888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24203 (_ BitVec 32)) Bool)

(assert (=> b!403543 (= res!232668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28514 () Bool)

(assert (=> bm!28514 (= call!28516 (getCurrentListMapNoExtraKeys!1072 (ite c!54809 lt!188042 _keys!709) (ite c!54809 (array!24206 (store (arr!11549 _values!549) i!563 (ValueCellFull!4740 v!412)) (size!11901 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403544 () Bool)

(declare-fun res!232661 () Bool)

(assert (=> b!403544 (=> (not res!232661) (not e!242888))))

(assert (=> b!403544 (= res!232661 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6701))))

(declare-fun b!403545 () Bool)

(assert (=> b!403545 (= e!242893 (not true))))

(assert (=> b!403545 e!242889))

(assert (=> b!403545 (= c!54809 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12165 0))(
  ( (Unit!12166) )
))
(declare-fun lt!188043 () Unit!12165)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!345 (array!24203 array!24205 (_ BitVec 32) (_ BitVec 32) V!14661 V!14661 (_ BitVec 32) (_ BitVec 64) V!14661 (_ BitVec 32) Int) Unit!12165)

(assert (=> b!403545 (= lt!188043 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!345 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403546 () Bool)

(declare-fun res!232663 () Bool)

(assert (=> b!403546 (=> (not res!232663) (not e!242888))))

(assert (=> b!403546 (= res!232663 (or (= (select (arr!11548 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11548 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403539 () Bool)

(assert (=> b!403539 (= e!242888 e!242893)))

(declare-fun res!232666 () Bool)

(assert (=> b!403539 (=> (not res!232666) (not e!242893))))

(assert (=> b!403539 (= res!232666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188042 mask!1025))))

(assert (=> b!403539 (= lt!188042 (array!24204 (store (arr!11548 _keys!709) i!563 k0!794) (size!11900 _keys!709)))))

(declare-fun res!232664 () Bool)

(assert (=> start!38756 (=> (not res!232664) (not e!242888))))

(assert (=> start!38756 (= res!232664 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11900 _keys!709))))))

(assert (=> start!38756 e!242888))

(assert (=> start!38756 tp_is_empty!10167))

(assert (=> start!38756 tp!32978))

(assert (=> start!38756 true))

(declare-fun e!242891 () Bool)

(declare-fun array_inv!8438 (array!24205) Bool)

(assert (=> start!38756 (and (array_inv!8438 _values!549) e!242891)))

(declare-fun array_inv!8439 (array!24203) Bool)

(assert (=> start!38756 (array_inv!8439 _keys!709)))

(declare-fun mapIsEmpty!16872 () Bool)

(assert (=> mapIsEmpty!16872 mapRes!16872))

(declare-fun b!403547 () Bool)

(assert (=> b!403547 (= e!242891 (and e!242892 mapRes!16872))))

(declare-fun condMapEmpty!16872 () Bool)

(declare-fun mapDefault!16872 () ValueCell!4740)

(assert (=> b!403547 (= condMapEmpty!16872 (= (arr!11549 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4740)) mapDefault!16872)))))

(assert (= (and start!38756 res!232664) b!403535))

(assert (= (and b!403535 res!232665) b!403537))

(assert (= (and b!403537 res!232660) b!403543))

(assert (= (and b!403543 res!232668) b!403544))

(assert (= (and b!403544 res!232661) b!403532))

(assert (= (and b!403532 res!232657) b!403533))

(assert (= (and b!403533 res!232658) b!403546))

(assert (= (and b!403546 res!232663) b!403540))

(assert (= (and b!403540 res!232662) b!403539))

(assert (= (and b!403539 res!232666) b!403542))

(assert (= (and b!403542 res!232659) b!403541))

(assert (= (and b!403541 res!232667) b!403545))

(assert (= (and b!403545 c!54809) b!403534))

(assert (= (and b!403545 (not c!54809)) b!403531))

(assert (= (or b!403534 b!403531) bm!28514))

(assert (= (or b!403534 b!403531) bm!28513))

(assert (= (and b!403547 condMapEmpty!16872) mapIsEmpty!16872))

(assert (= (and b!403547 (not condMapEmpty!16872)) mapNonEmpty!16872))

(get-info :version)

(assert (= (and mapNonEmpty!16872 ((_ is ValueCellFull!4740) mapValue!16872)) b!403536))

(assert (= (and b!403547 ((_ is ValueCellFull!4740) mapDefault!16872)) b!403538))

(assert (= start!38756 b!403547))

(declare-fun m!396667 () Bool)

(assert (=> b!403544 m!396667))

(declare-fun m!396669 () Bool)

(assert (=> b!403542 m!396669))

(declare-fun m!396671 () Bool)

(assert (=> b!403540 m!396671))

(declare-fun m!396673 () Bool)

(assert (=> start!38756 m!396673))

(declare-fun m!396675 () Bool)

(assert (=> start!38756 m!396675))

(declare-fun m!396677 () Bool)

(assert (=> b!403543 m!396677))

(declare-fun m!396679 () Bool)

(assert (=> b!403546 m!396679))

(declare-fun m!396681 () Bool)

(assert (=> b!403545 m!396681))

(declare-fun m!396683 () Bool)

(assert (=> bm!28514 m!396683))

(declare-fun m!396685 () Bool)

(assert (=> bm!28514 m!396685))

(declare-fun m!396687 () Bool)

(assert (=> b!403535 m!396687))

(assert (=> bm!28513 m!396683))

(declare-fun m!396689 () Bool)

(assert (=> bm!28513 m!396689))

(declare-fun m!396691 () Bool)

(assert (=> b!403533 m!396691))

(declare-fun m!396693 () Bool)

(assert (=> b!403539 m!396693))

(declare-fun m!396695 () Bool)

(assert (=> b!403539 m!396695))

(declare-fun m!396697 () Bool)

(assert (=> mapNonEmpty!16872 m!396697))

(declare-fun m!396699 () Bool)

(assert (=> b!403534 m!396699))

(check-sat (not bm!28514) (not mapNonEmpty!16872) (not bm!28513) tp_is_empty!10167 (not b!403544) (not b!403534) (not b!403543) (not b!403539) (not start!38756) (not b!403545) (not b!403535) b_and!16689 (not b!403540) (not b!403533) (not b_next!9285) (not b!403542))
(check-sat b_and!16689 (not b_next!9285))
