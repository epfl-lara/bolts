; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38714 () Bool)

(assert start!38714)

(declare-fun b_free!9243 () Bool)

(declare-fun b_next!9243 () Bool)

(assert (=> start!38714 (= b_free!9243 (not b_next!9243))))

(declare-fun tp!32853 () Bool)

(declare-fun b_and!16647 () Bool)

(assert (=> start!38714 (= tp!32853 b_and!16647)))

(declare-fun b!402460 () Bool)

(declare-fun res!231904 () Bool)

(declare-fun e!242447 () Bool)

(assert (=> b!402460 (=> (not res!231904) (not e!242447))))

(declare-datatypes ((array!24121 0))(
  ( (array!24122 (arr!11507 (Array (_ BitVec 32) (_ BitVec 64))) (size!11859 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24121)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24121 (_ BitVec 32)) Bool)

(assert (=> b!402460 (= res!231904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16809 () Bool)

(declare-fun mapRes!16809 () Bool)

(declare-fun tp!32852 () Bool)

(declare-fun e!242452 () Bool)

(assert (=> mapNonEmpty!16809 (= mapRes!16809 (and tp!32852 e!242452))))

(declare-datatypes ((V!14605 0))(
  ( (V!14606 (val!5107 Int)) )
))
(declare-datatypes ((ValueCell!4719 0))(
  ( (ValueCellFull!4719 (v!7350 V!14605)) (EmptyCell!4719) )
))
(declare-datatypes ((array!24123 0))(
  ( (array!24124 (arr!11508 (Array (_ BitVec 32) ValueCell!4719)) (size!11860 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24123)

(declare-fun mapKey!16809 () (_ BitVec 32))

(declare-fun mapRest!16809 () (Array (_ BitVec 32) ValueCell!4719))

(declare-fun mapValue!16809 () ValueCell!4719)

(assert (=> mapNonEmpty!16809 (= (arr!11508 _values!549) (store mapRest!16809 mapKey!16809 mapValue!16809))))

(declare-fun b!402461 () Bool)

(declare-fun res!231912 () Bool)

(declare-fun e!242448 () Bool)

(assert (=> b!402461 (=> (not res!231912) (not e!242448))))

(declare-fun lt!187916 () array!24121)

(declare-datatypes ((List!6669 0))(
  ( (Nil!6666) (Cons!6665 (h!7521 (_ BitVec 64)) (t!11851 List!6669)) )
))
(declare-fun arrayNoDuplicates!0 (array!24121 (_ BitVec 32) List!6669) Bool)

(assert (=> b!402461 (= res!231912 (arrayNoDuplicates!0 lt!187916 #b00000000000000000000000000000000 Nil!6666))))

(declare-fun b!402462 () Bool)

(declare-fun res!231903 () Bool)

(assert (=> b!402462 (=> (not res!231903) (not e!242447))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402462 (= res!231903 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11859 _keys!709))))))

(declare-datatypes ((tuple2!6724 0))(
  ( (tuple2!6725 (_1!3372 (_ BitVec 64)) (_2!3372 V!14605)) )
))
(declare-datatypes ((List!6670 0))(
  ( (Nil!6667) (Cons!6666 (h!7522 tuple2!6724) (t!11852 List!6670)) )
))
(declare-datatypes ((ListLongMap!5651 0))(
  ( (ListLongMap!5652 (toList!2841 List!6670)) )
))
(declare-fun call!28390 () ListLongMap!5651)

(declare-fun b!402463 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!242450 () Bool)

(declare-fun call!28391 () ListLongMap!5651)

(declare-fun v!412 () V!14605)

(declare-fun +!1119 (ListLongMap!5651 tuple2!6724) ListLongMap!5651)

(assert (=> b!402463 (= e!242450 (= call!28391 (+!1119 call!28390 (tuple2!6725 k0!794 v!412))))))

(declare-fun b!402464 () Bool)

(declare-fun res!231906 () Bool)

(assert (=> b!402464 (=> (not res!231906) (not e!242447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402464 (= res!231906 (validKeyInArray!0 k0!794))))

(declare-fun b!402465 () Bool)

(declare-fun res!231908 () Bool)

(assert (=> b!402465 (=> (not res!231908) (not e!242447))))

(assert (=> b!402465 (= res!231908 (or (= (select (arr!11507 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11507 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!515 () V!14605)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28387 () Bool)

(declare-fun zeroValue!515 () V!14605)

(declare-fun c!54746 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1052 (array!24121 array!24123 (_ BitVec 32) (_ BitVec 32) V!14605 V!14605 (_ BitVec 32) Int) ListLongMap!5651)

(assert (=> bm!28387 (= call!28390 (getCurrentListMapNoExtraKeys!1052 (ite c!54746 _keys!709 lt!187916) (ite c!54746 _values!549 (array!24124 (store (arr!11508 _values!549) i!563 (ValueCellFull!4719 v!412)) (size!11860 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28388 () Bool)

(assert (=> bm!28388 (= call!28391 (getCurrentListMapNoExtraKeys!1052 (ite c!54746 lt!187916 _keys!709) (ite c!54746 (array!24124 (store (arr!11508 _values!549) i!563 (ValueCellFull!4719 v!412)) (size!11860 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402466 () Bool)

(declare-fun res!231905 () Bool)

(assert (=> b!402466 (=> (not res!231905) (not e!242447))))

(declare-fun arrayContainsKey!0 (array!24121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402466 (= res!231905 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16809 () Bool)

(assert (=> mapIsEmpty!16809 mapRes!16809))

(declare-fun res!231901 () Bool)

(assert (=> start!38714 (=> (not res!231901) (not e!242447))))

(assert (=> start!38714 (= res!231901 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11859 _keys!709))))))

(assert (=> start!38714 e!242447))

(declare-fun tp_is_empty!10125 () Bool)

(assert (=> start!38714 tp_is_empty!10125))

(assert (=> start!38714 tp!32853))

(assert (=> start!38714 true))

(declare-fun e!242446 () Bool)

(declare-fun array_inv!8410 (array!24123) Bool)

(assert (=> start!38714 (and (array_inv!8410 _values!549) e!242446)))

(declare-fun array_inv!8411 (array!24121) Bool)

(assert (=> start!38714 (array_inv!8411 _keys!709)))

(declare-fun b!402467 () Bool)

(declare-fun e!242449 () Bool)

(assert (=> b!402467 (= e!242446 (and e!242449 mapRes!16809))))

(declare-fun condMapEmpty!16809 () Bool)

(declare-fun mapDefault!16809 () ValueCell!4719)

(assert (=> b!402467 (= condMapEmpty!16809 (= (arr!11508 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4719)) mapDefault!16809)))))

(declare-fun b!402468 () Bool)

(assert (=> b!402468 (= e!242449 tp_is_empty!10125)))

(declare-fun b!402469 () Bool)

(declare-fun res!231910 () Bool)

(assert (=> b!402469 (=> (not res!231910) (not e!242447))))

(assert (=> b!402469 (= res!231910 (and (= (size!11860 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11859 _keys!709) (size!11860 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402470 () Bool)

(assert (=> b!402470 (= e!242448 (not true))))

(assert (=> b!402470 e!242450))

(assert (=> b!402470 (= c!54746 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12135 0))(
  ( (Unit!12136) )
))
(declare-fun lt!187917 () Unit!12135)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!330 (array!24121 array!24123 (_ BitVec 32) (_ BitVec 32) V!14605 V!14605 (_ BitVec 32) (_ BitVec 64) V!14605 (_ BitVec 32) Int) Unit!12135)

(assert (=> b!402470 (= lt!187917 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!330 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402471 () Bool)

(declare-fun res!231911 () Bool)

(assert (=> b!402471 (=> (not res!231911) (not e!242447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402471 (= res!231911 (validMask!0 mask!1025))))

(declare-fun b!402472 () Bool)

(assert (=> b!402472 (= e!242452 tp_is_empty!10125)))

(declare-fun b!402473 () Bool)

(declare-fun res!231907 () Bool)

(assert (=> b!402473 (=> (not res!231907) (not e!242447))))

(assert (=> b!402473 (= res!231907 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6666))))

(declare-fun b!402474 () Bool)

(declare-fun res!231902 () Bool)

(assert (=> b!402474 (=> (not res!231902) (not e!242448))))

(assert (=> b!402474 (= res!231902 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11859 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!402475 () Bool)

(assert (=> b!402475 (= e!242447 e!242448)))

(declare-fun res!231909 () Bool)

(assert (=> b!402475 (=> (not res!231909) (not e!242448))))

(assert (=> b!402475 (= res!231909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187916 mask!1025))))

(assert (=> b!402475 (= lt!187916 (array!24122 (store (arr!11507 _keys!709) i!563 k0!794) (size!11859 _keys!709)))))

(declare-fun b!402476 () Bool)

(assert (=> b!402476 (= e!242450 (= call!28390 call!28391))))

(assert (= (and start!38714 res!231901) b!402471))

(assert (= (and b!402471 res!231911) b!402469))

(assert (= (and b!402469 res!231910) b!402460))

(assert (= (and b!402460 res!231904) b!402473))

(assert (= (and b!402473 res!231907) b!402462))

(assert (= (and b!402462 res!231903) b!402464))

(assert (= (and b!402464 res!231906) b!402465))

(assert (= (and b!402465 res!231908) b!402466))

(assert (= (and b!402466 res!231905) b!402475))

(assert (= (and b!402475 res!231909) b!402461))

(assert (= (and b!402461 res!231912) b!402474))

(assert (= (and b!402474 res!231902) b!402470))

(assert (= (and b!402470 c!54746) b!402463))

(assert (= (and b!402470 (not c!54746)) b!402476))

(assert (= (or b!402463 b!402476) bm!28388))

(assert (= (or b!402463 b!402476) bm!28387))

(assert (= (and b!402467 condMapEmpty!16809) mapIsEmpty!16809))

(assert (= (and b!402467 (not condMapEmpty!16809)) mapNonEmpty!16809))

(get-info :version)

(assert (= (and mapNonEmpty!16809 ((_ is ValueCellFull!4719) mapValue!16809)) b!402472))

(assert (= (and b!402467 ((_ is ValueCellFull!4719) mapDefault!16809)) b!402468))

(assert (= start!38714 b!402467))

(declare-fun m!395953 () Bool)

(assert (=> b!402460 m!395953))

(declare-fun m!395955 () Bool)

(assert (=> mapNonEmpty!16809 m!395955))

(declare-fun m!395957 () Bool)

(assert (=> b!402471 m!395957))

(declare-fun m!395959 () Bool)

(assert (=> bm!28387 m!395959))

(declare-fun m!395961 () Bool)

(assert (=> bm!28387 m!395961))

(declare-fun m!395963 () Bool)

(assert (=> b!402465 m!395963))

(declare-fun m!395965 () Bool)

(assert (=> b!402466 m!395965))

(declare-fun m!395967 () Bool)

(assert (=> b!402473 m!395967))

(declare-fun m!395969 () Bool)

(assert (=> start!38714 m!395969))

(declare-fun m!395971 () Bool)

(assert (=> start!38714 m!395971))

(declare-fun m!395973 () Bool)

(assert (=> b!402475 m!395973))

(declare-fun m!395975 () Bool)

(assert (=> b!402475 m!395975))

(assert (=> bm!28388 m!395959))

(declare-fun m!395977 () Bool)

(assert (=> bm!28388 m!395977))

(declare-fun m!395979 () Bool)

(assert (=> b!402461 m!395979))

(declare-fun m!395981 () Bool)

(assert (=> b!402470 m!395981))

(declare-fun m!395983 () Bool)

(assert (=> b!402464 m!395983))

(declare-fun m!395985 () Bool)

(assert (=> b!402463 m!395985))

(check-sat (not mapNonEmpty!16809) (not b!402466) b_and!16647 (not b!402471) (not bm!28387) tp_is_empty!10125 (not b!402473) (not bm!28388) (not b!402470) (not b!402461) (not b!402475) (not b!402463) (not b!402464) (not b_next!9243) (not b!402460) (not start!38714))
(check-sat b_and!16647 (not b_next!9243))
