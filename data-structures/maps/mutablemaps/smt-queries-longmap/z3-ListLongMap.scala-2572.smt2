; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39260 () Bool)

(assert start!39260)

(declare-fun b_free!9519 () Bool)

(declare-fun b_next!9519 () Bool)

(assert (=> start!39260 (= b_free!9519 (not b_next!9519))))

(declare-fun tp!34086 () Bool)

(declare-fun b_and!16931 () Bool)

(assert (=> start!39260 (= tp!34086 b_and!16931)))

(declare-fun b!414403 () Bool)

(declare-fun res!241040 () Bool)

(declare-fun e!247657 () Bool)

(assert (=> b!414403 (=> (not res!241040) (not e!247657))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25179 0))(
  ( (array!25180 (arr!12036 (Array (_ BitVec 32) (_ BitVec 64))) (size!12388 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25179)

(assert (=> b!414403 (= res!241040 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12388 _keys!709))))))

(declare-fun res!241047 () Bool)

(assert (=> start!39260 (=> (not res!241047) (not e!247657))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39260 (= res!241047 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12388 _keys!709))))))

(assert (=> start!39260 e!247657))

(declare-fun tp_is_empty!10671 () Bool)

(assert (=> start!39260 tp_is_empty!10671))

(assert (=> start!39260 tp!34086))

(assert (=> start!39260 true))

(declare-datatypes ((V!15333 0))(
  ( (V!15334 (val!5380 Int)) )
))
(declare-datatypes ((ValueCell!4992 0))(
  ( (ValueCellFull!4992 (v!7623 V!15333)) (EmptyCell!4992) )
))
(declare-datatypes ((array!25181 0))(
  ( (array!25182 (arr!12037 (Array (_ BitVec 32) ValueCell!4992)) (size!12389 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25181)

(declare-fun e!247655 () Bool)

(declare-fun array_inv!8778 (array!25181) Bool)

(assert (=> start!39260 (and (array_inv!8778 _values!549) e!247655)))

(declare-fun array_inv!8779 (array!25179) Bool)

(assert (=> start!39260 (array_inv!8779 _keys!709)))

(declare-fun b!414404 () Bool)

(declare-fun e!247651 () Bool)

(declare-fun mapRes!17628 () Bool)

(assert (=> b!414404 (= e!247655 (and e!247651 mapRes!17628))))

(declare-fun condMapEmpty!17628 () Bool)

(declare-fun mapDefault!17628 () ValueCell!4992)

(assert (=> b!414404 (= condMapEmpty!17628 (= (arr!12037 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4992)) mapDefault!17628)))))

(declare-fun b!414405 () Bool)

(declare-fun res!241045 () Bool)

(declare-fun e!247652 () Bool)

(assert (=> b!414405 (=> (not res!241045) (not e!247652))))

(assert (=> b!414405 (= res!241045 (bvsle from!863 i!563))))

(declare-fun b!414406 () Bool)

(declare-fun e!247650 () Bool)

(assert (=> b!414406 (= e!247650 true)))

(declare-fun lt!190003 () array!25181)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6926 0))(
  ( (tuple2!6927 (_1!3473 (_ BitVec 64)) (_2!3473 V!15333)) )
))
(declare-datatypes ((List!6983 0))(
  ( (Nil!6980) (Cons!6979 (h!7835 tuple2!6926) (t!12175 List!6983)) )
))
(declare-datatypes ((ListLongMap!5853 0))(
  ( (ListLongMap!5854 (toList!2942 List!6983)) )
))
(declare-fun lt!190002 () ListLongMap!5853)

(declare-fun zeroValue!515 () V!15333)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!15333)

(declare-fun lt!190001 () array!25179)

(declare-fun +!1158 (ListLongMap!5853 tuple2!6926) ListLongMap!5853)

(declare-fun getCurrentListMapNoExtraKeys!1149 (array!25179 array!25181 (_ BitVec 32) (_ BitVec 32) V!15333 V!15333 (_ BitVec 32) Int) ListLongMap!5853)

(declare-fun get!5942 (ValueCell!4992 V!15333) V!15333)

(declare-fun dynLambda!649 (Int (_ BitVec 64)) V!15333)

(assert (=> b!414406 (= lt!190002 (+!1158 (getCurrentListMapNoExtraKeys!1149 lt!190001 lt!190003 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6927 (select (arr!12036 lt!190001) from!863) (get!5942 (select (arr!12037 lt!190003) from!863) (dynLambda!649 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!28729 () Bool)

(declare-fun call!28732 () ListLongMap!5853)

(declare-fun c!54917 () Bool)

(assert (=> bm!28729 (= call!28732 (getCurrentListMapNoExtraKeys!1149 (ite c!54917 _keys!709 lt!190001) (ite c!54917 _values!549 lt!190003) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414407 () Bool)

(declare-fun e!247656 () Bool)

(declare-fun call!28733 () ListLongMap!5853)

(assert (=> b!414407 (= e!247656 (= call!28732 call!28733))))

(declare-fun mapIsEmpty!17628 () Bool)

(assert (=> mapIsEmpty!17628 mapRes!17628))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15333)

(declare-fun b!414408 () Bool)

(assert (=> b!414408 (= e!247656 (= call!28733 (+!1158 call!28732 (tuple2!6927 k0!794 v!412))))))

(declare-fun b!414409 () Bool)

(assert (=> b!414409 (= e!247651 tp_is_empty!10671)))

(declare-fun b!414410 () Bool)

(declare-fun res!241037 () Bool)

(assert (=> b!414410 (=> (not res!241037) (not e!247652))))

(declare-datatypes ((List!6984 0))(
  ( (Nil!6981) (Cons!6980 (h!7836 (_ BitVec 64)) (t!12176 List!6984)) )
))
(declare-fun arrayNoDuplicates!0 (array!25179 (_ BitVec 32) List!6984) Bool)

(assert (=> b!414410 (= res!241037 (arrayNoDuplicates!0 lt!190001 #b00000000000000000000000000000000 Nil!6981))))

(declare-fun b!414411 () Bool)

(declare-fun res!241050 () Bool)

(assert (=> b!414411 (=> (not res!241050) (not e!247657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414411 (= res!241050 (validKeyInArray!0 k0!794))))

(declare-fun b!414412 () Bool)

(assert (=> b!414412 (= e!247657 e!247652)))

(declare-fun res!241042 () Bool)

(assert (=> b!414412 (=> (not res!241042) (not e!247652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25179 (_ BitVec 32)) Bool)

(assert (=> b!414412 (= res!241042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190001 mask!1025))))

(assert (=> b!414412 (= lt!190001 (array!25180 (store (arr!12036 _keys!709) i!563 k0!794) (size!12388 _keys!709)))))

(declare-fun b!414413 () Bool)

(declare-fun res!241039 () Bool)

(assert (=> b!414413 (=> (not res!241039) (not e!247657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414413 (= res!241039 (validMask!0 mask!1025))))

(declare-fun b!414414 () Bool)

(declare-fun e!247654 () Bool)

(assert (=> b!414414 (= e!247654 (not e!247650))))

(declare-fun res!241044 () Bool)

(assert (=> b!414414 (=> res!241044 e!247650)))

(assert (=> b!414414 (= res!241044 (validKeyInArray!0 (select (arr!12036 _keys!709) from!863)))))

(assert (=> b!414414 e!247656))

(assert (=> b!414414 (= c!54917 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12219 0))(
  ( (Unit!12220) )
))
(declare-fun lt!190004 () Unit!12219)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!372 (array!25179 array!25181 (_ BitVec 32) (_ BitVec 32) V!15333 V!15333 (_ BitVec 32) (_ BitVec 64) V!15333 (_ BitVec 32) Int) Unit!12219)

(assert (=> b!414414 (= lt!190004 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!372 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414415 () Bool)

(declare-fun res!241043 () Bool)

(assert (=> b!414415 (=> (not res!241043) (not e!247657))))

(assert (=> b!414415 (= res!241043 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6981))))

(declare-fun bm!28730 () Bool)

(assert (=> bm!28730 (= call!28733 (getCurrentListMapNoExtraKeys!1149 (ite c!54917 lt!190001 _keys!709) (ite c!54917 lt!190003 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414416 () Bool)

(declare-fun res!241038 () Bool)

(assert (=> b!414416 (=> (not res!241038) (not e!247657))))

(assert (=> b!414416 (= res!241038 (and (= (size!12389 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12388 _keys!709) (size!12389 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414417 () Bool)

(assert (=> b!414417 (= e!247652 e!247654)))

(declare-fun res!241048 () Bool)

(assert (=> b!414417 (=> (not res!241048) (not e!247654))))

(assert (=> b!414417 (= res!241048 (= from!863 i!563))))

(assert (=> b!414417 (= lt!190002 (getCurrentListMapNoExtraKeys!1149 lt!190001 lt!190003 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!414417 (= lt!190003 (array!25182 (store (arr!12037 _values!549) i!563 (ValueCellFull!4992 v!412)) (size!12389 _values!549)))))

(declare-fun lt!190005 () ListLongMap!5853)

(assert (=> b!414417 (= lt!190005 (getCurrentListMapNoExtraKeys!1149 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17628 () Bool)

(declare-fun tp!34085 () Bool)

(declare-fun e!247653 () Bool)

(assert (=> mapNonEmpty!17628 (= mapRes!17628 (and tp!34085 e!247653))))

(declare-fun mapRest!17628 () (Array (_ BitVec 32) ValueCell!4992))

(declare-fun mapValue!17628 () ValueCell!4992)

(declare-fun mapKey!17628 () (_ BitVec 32))

(assert (=> mapNonEmpty!17628 (= (arr!12037 _values!549) (store mapRest!17628 mapKey!17628 mapValue!17628))))

(declare-fun b!414418 () Bool)

(declare-fun res!241046 () Bool)

(assert (=> b!414418 (=> (not res!241046) (not e!247657))))

(assert (=> b!414418 (= res!241046 (or (= (select (arr!12036 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12036 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414419 () Bool)

(assert (=> b!414419 (= e!247653 tp_is_empty!10671)))

(declare-fun b!414420 () Bool)

(declare-fun res!241041 () Bool)

(assert (=> b!414420 (=> (not res!241041) (not e!247657))))

(assert (=> b!414420 (= res!241041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414421 () Bool)

(declare-fun res!241049 () Bool)

(assert (=> b!414421 (=> (not res!241049) (not e!247657))))

(declare-fun arrayContainsKey!0 (array!25179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414421 (= res!241049 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39260 res!241047) b!414413))

(assert (= (and b!414413 res!241039) b!414416))

(assert (= (and b!414416 res!241038) b!414420))

(assert (= (and b!414420 res!241041) b!414415))

(assert (= (and b!414415 res!241043) b!414403))

(assert (= (and b!414403 res!241040) b!414411))

(assert (= (and b!414411 res!241050) b!414418))

(assert (= (and b!414418 res!241046) b!414421))

(assert (= (and b!414421 res!241049) b!414412))

(assert (= (and b!414412 res!241042) b!414410))

(assert (= (and b!414410 res!241037) b!414405))

(assert (= (and b!414405 res!241045) b!414417))

(assert (= (and b!414417 res!241048) b!414414))

(assert (= (and b!414414 c!54917) b!414408))

(assert (= (and b!414414 (not c!54917)) b!414407))

(assert (= (or b!414408 b!414407) bm!28730))

(assert (= (or b!414408 b!414407) bm!28729))

(assert (= (and b!414414 (not res!241044)) b!414406))

(assert (= (and b!414404 condMapEmpty!17628) mapIsEmpty!17628))

(assert (= (and b!414404 (not condMapEmpty!17628)) mapNonEmpty!17628))

(get-info :version)

(assert (= (and mapNonEmpty!17628 ((_ is ValueCellFull!4992) mapValue!17628)) b!414419))

(assert (= (and b!414404 ((_ is ValueCellFull!4992) mapDefault!17628)) b!414409))

(assert (= start!39260 b!414404))

(declare-fun b_lambda!8853 () Bool)

(assert (=> (not b_lambda!8853) (not b!414406)))

(declare-fun t!12174 () Bool)

(declare-fun tb!3149 () Bool)

(assert (=> (and start!39260 (= defaultEntry!557 defaultEntry!557) t!12174) tb!3149))

(declare-fun result!5817 () Bool)

(assert (=> tb!3149 (= result!5817 tp_is_empty!10671)))

(assert (=> b!414406 t!12174))

(declare-fun b_and!16933 () Bool)

(assert (= b_and!16931 (and (=> t!12174 result!5817) b_and!16933)))

(declare-fun m!403653 () Bool)

(assert (=> b!414415 m!403653))

(declare-fun m!403655 () Bool)

(assert (=> b!414418 m!403655))

(declare-fun m!403657 () Bool)

(assert (=> b!414413 m!403657))

(declare-fun m!403659 () Bool)

(assert (=> start!39260 m!403659))

(declare-fun m!403661 () Bool)

(assert (=> start!39260 m!403661))

(declare-fun m!403663 () Bool)

(assert (=> b!414420 m!403663))

(declare-fun m!403665 () Bool)

(assert (=> b!414412 m!403665))

(declare-fun m!403667 () Bool)

(assert (=> b!414412 m!403667))

(declare-fun m!403669 () Bool)

(assert (=> b!414406 m!403669))

(declare-fun m!403671 () Bool)

(assert (=> b!414406 m!403671))

(declare-fun m!403673 () Bool)

(assert (=> b!414406 m!403673))

(declare-fun m!403675 () Bool)

(assert (=> b!414406 m!403675))

(assert (=> b!414406 m!403671))

(declare-fun m!403677 () Bool)

(assert (=> b!414406 m!403677))

(assert (=> b!414406 m!403673))

(declare-fun m!403679 () Bool)

(assert (=> b!414406 m!403679))

(assert (=> b!414406 m!403675))

(declare-fun m!403681 () Bool)

(assert (=> b!414414 m!403681))

(assert (=> b!414414 m!403681))

(declare-fun m!403683 () Bool)

(assert (=> b!414414 m!403683))

(declare-fun m!403685 () Bool)

(assert (=> b!414414 m!403685))

(declare-fun m!403687 () Bool)

(assert (=> bm!28729 m!403687))

(declare-fun m!403689 () Bool)

(assert (=> mapNonEmpty!17628 m!403689))

(declare-fun m!403691 () Bool)

(assert (=> b!414417 m!403691))

(declare-fun m!403693 () Bool)

(assert (=> b!414417 m!403693))

(declare-fun m!403695 () Bool)

(assert (=> b!414417 m!403695))

(declare-fun m!403697 () Bool)

(assert (=> b!414411 m!403697))

(declare-fun m!403699 () Bool)

(assert (=> b!414421 m!403699))

(declare-fun m!403701 () Bool)

(assert (=> b!414410 m!403701))

(declare-fun m!403703 () Bool)

(assert (=> b!414408 m!403703))

(declare-fun m!403705 () Bool)

(assert (=> bm!28730 m!403705))

(check-sat (not b!414421) b_and!16933 (not b!414414) (not b!414415) (not b_lambda!8853) (not b_next!9519) (not mapNonEmpty!17628) (not b!414420) (not start!39260) (not b!414411) (not b!414413) tp_is_empty!10671 (not b!414417) (not b!414412) (not b!414406) (not bm!28730) (not bm!28729) (not b!414408) (not b!414410))
(check-sat b_and!16933 (not b_next!9519))
