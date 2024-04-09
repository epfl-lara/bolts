; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38720 () Bool)

(assert start!38720)

(declare-fun b_free!9249 () Bool)

(declare-fun b_next!9249 () Bool)

(assert (=> start!38720 (= b_free!9249 (not b_next!9249))))

(declare-fun tp!32871 () Bool)

(declare-fun b_and!16653 () Bool)

(assert (=> start!38720 (= tp!32871 b_and!16653)))

(declare-fun b!402613 () Bool)

(declare-fun res!232013 () Bool)

(declare-fun e!242510 () Bool)

(assert (=> b!402613 (=> (not res!232013) (not e!242510))))

(declare-datatypes ((array!24133 0))(
  ( (array!24134 (arr!11513 (Array (_ BitVec 32) (_ BitVec 64))) (size!11865 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24133)

(declare-datatypes ((List!6673 0))(
  ( (Nil!6670) (Cons!6669 (h!7525 (_ BitVec 64)) (t!11855 List!6673)) )
))
(declare-fun arrayNoDuplicates!0 (array!24133 (_ BitVec 32) List!6673) Bool)

(assert (=> b!402613 (= res!232013 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6670))))

(declare-fun b!402614 () Bool)

(declare-fun res!232020 () Bool)

(assert (=> b!402614 (=> (not res!232020) (not e!242510))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14613 0))(
  ( (V!14614 (val!5110 Int)) )
))
(declare-datatypes ((ValueCell!4722 0))(
  ( (ValueCellFull!4722 (v!7353 V!14613)) (EmptyCell!4722) )
))
(declare-datatypes ((array!24135 0))(
  ( (array!24136 (arr!11514 (Array (_ BitVec 32) ValueCell!4722)) (size!11866 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24135)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!402614 (= res!232020 (and (= (size!11866 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11865 _keys!709) (size!11866 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402615 () Bool)

(declare-fun res!232017 () Bool)

(assert (=> b!402615 (=> (not res!232017) (not e!242510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402615 (= res!232017 (validMask!0 mask!1025))))

(declare-fun e!242509 () Bool)

(declare-datatypes ((tuple2!6730 0))(
  ( (tuple2!6731 (_1!3375 (_ BitVec 64)) (_2!3375 V!14613)) )
))
(declare-datatypes ((List!6674 0))(
  ( (Nil!6671) (Cons!6670 (h!7526 tuple2!6730) (t!11856 List!6674)) )
))
(declare-datatypes ((ListLongMap!5657 0))(
  ( (ListLongMap!5658 (toList!2844 List!6674)) )
))
(declare-fun call!28408 () ListLongMap!5657)

(declare-fun call!28409 () ListLongMap!5657)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!402617 () Bool)

(declare-fun v!412 () V!14613)

(declare-fun +!1121 (ListLongMap!5657 tuple2!6730) ListLongMap!5657)

(assert (=> b!402617 (= e!242509 (= call!28408 (+!1121 call!28409 (tuple2!6731 k0!794 v!412))))))

(declare-fun b!402618 () Bool)

(declare-fun e!242513 () Bool)

(assert (=> b!402618 (= e!242513 (not true))))

(assert (=> b!402618 e!242509))

(declare-fun c!54755 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402618 (= c!54755 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14613)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12137 0))(
  ( (Unit!12138) )
))
(declare-fun lt!187934 () Unit!12137)

(declare-fun zeroValue!515 () V!14613)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!331 (array!24133 array!24135 (_ BitVec 32) (_ BitVec 32) V!14613 V!14613 (_ BitVec 32) (_ BitVec 64) V!14613 (_ BitVec 32) Int) Unit!12137)

(assert (=> b!402618 (= lt!187934 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!331 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402619 () Bool)

(declare-fun res!232009 () Bool)

(assert (=> b!402619 (=> (not res!232009) (not e!242510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402619 (= res!232009 (validKeyInArray!0 k0!794))))

(declare-fun bm!28405 () Bool)

(declare-fun lt!187935 () array!24133)

(declare-fun getCurrentListMapNoExtraKeys!1055 (array!24133 array!24135 (_ BitVec 32) (_ BitVec 32) V!14613 V!14613 (_ BitVec 32) Int) ListLongMap!5657)

(assert (=> bm!28405 (= call!28408 (getCurrentListMapNoExtraKeys!1055 (ite c!54755 lt!187935 _keys!709) (ite c!54755 (array!24136 (store (arr!11514 _values!549) i!563 (ValueCellFull!4722 v!412)) (size!11866 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402620 () Bool)

(assert (=> b!402620 (= e!242510 e!242513)))

(declare-fun res!232018 () Bool)

(assert (=> b!402620 (=> (not res!232018) (not e!242513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24133 (_ BitVec 32)) Bool)

(assert (=> b!402620 (= res!232018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187935 mask!1025))))

(assert (=> b!402620 (= lt!187935 (array!24134 (store (arr!11513 _keys!709) i!563 k0!794) (size!11865 _keys!709)))))

(declare-fun b!402621 () Bool)

(declare-fun res!232014 () Bool)

(assert (=> b!402621 (=> (not res!232014) (not e!242513))))

(assert (=> b!402621 (= res!232014 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11865 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16818 () Bool)

(declare-fun mapRes!16818 () Bool)

(assert (=> mapIsEmpty!16818 mapRes!16818))

(declare-fun b!402622 () Bool)

(declare-fun res!232010 () Bool)

(assert (=> b!402622 (=> (not res!232010) (not e!242513))))

(assert (=> b!402622 (= res!232010 (arrayNoDuplicates!0 lt!187935 #b00000000000000000000000000000000 Nil!6670))))

(declare-fun b!402623 () Bool)

(declare-fun e!242511 () Bool)

(declare-fun tp_is_empty!10131 () Bool)

(assert (=> b!402623 (= e!242511 tp_is_empty!10131)))

(declare-fun b!402616 () Bool)

(declare-fun e!242514 () Bool)

(declare-fun e!242515 () Bool)

(assert (=> b!402616 (= e!242514 (and e!242515 mapRes!16818))))

(declare-fun condMapEmpty!16818 () Bool)

(declare-fun mapDefault!16818 () ValueCell!4722)

(assert (=> b!402616 (= condMapEmpty!16818 (= (arr!11514 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4722)) mapDefault!16818)))))

(declare-fun res!232012 () Bool)

(assert (=> start!38720 (=> (not res!232012) (not e!242510))))

(assert (=> start!38720 (= res!232012 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11865 _keys!709))))))

(assert (=> start!38720 e!242510))

(assert (=> start!38720 tp_is_empty!10131))

(assert (=> start!38720 tp!32871))

(assert (=> start!38720 true))

(declare-fun array_inv!8414 (array!24135) Bool)

(assert (=> start!38720 (and (array_inv!8414 _values!549) e!242514)))

(declare-fun array_inv!8415 (array!24133) Bool)

(assert (=> start!38720 (array_inv!8415 _keys!709)))

(declare-fun b!402624 () Bool)

(declare-fun res!232016 () Bool)

(assert (=> b!402624 (=> (not res!232016) (not e!242510))))

(assert (=> b!402624 (= res!232016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28406 () Bool)

(assert (=> bm!28406 (= call!28409 (getCurrentListMapNoExtraKeys!1055 (ite c!54755 _keys!709 lt!187935) (ite c!54755 _values!549 (array!24136 (store (arr!11514 _values!549) i!563 (ValueCellFull!4722 v!412)) (size!11866 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402625 () Bool)

(declare-fun res!232011 () Bool)

(assert (=> b!402625 (=> (not res!232011) (not e!242510))))

(declare-fun arrayContainsKey!0 (array!24133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402625 (= res!232011 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402626 () Bool)

(assert (=> b!402626 (= e!242509 (= call!28409 call!28408))))

(declare-fun b!402627 () Bool)

(declare-fun res!232015 () Bool)

(assert (=> b!402627 (=> (not res!232015) (not e!242510))))

(assert (=> b!402627 (= res!232015 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11865 _keys!709))))))

(declare-fun b!402628 () Bool)

(assert (=> b!402628 (= e!242515 tp_is_empty!10131)))

(declare-fun mapNonEmpty!16818 () Bool)

(declare-fun tp!32870 () Bool)

(assert (=> mapNonEmpty!16818 (= mapRes!16818 (and tp!32870 e!242511))))

(declare-fun mapKey!16818 () (_ BitVec 32))

(declare-fun mapValue!16818 () ValueCell!4722)

(declare-fun mapRest!16818 () (Array (_ BitVec 32) ValueCell!4722))

(assert (=> mapNonEmpty!16818 (= (arr!11514 _values!549) (store mapRest!16818 mapKey!16818 mapValue!16818))))

(declare-fun b!402629 () Bool)

(declare-fun res!232019 () Bool)

(assert (=> b!402629 (=> (not res!232019) (not e!242510))))

(assert (=> b!402629 (= res!232019 (or (= (select (arr!11513 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11513 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38720 res!232012) b!402615))

(assert (= (and b!402615 res!232017) b!402614))

(assert (= (and b!402614 res!232020) b!402624))

(assert (= (and b!402624 res!232016) b!402613))

(assert (= (and b!402613 res!232013) b!402627))

(assert (= (and b!402627 res!232015) b!402619))

(assert (= (and b!402619 res!232009) b!402629))

(assert (= (and b!402629 res!232019) b!402625))

(assert (= (and b!402625 res!232011) b!402620))

(assert (= (and b!402620 res!232018) b!402622))

(assert (= (and b!402622 res!232010) b!402621))

(assert (= (and b!402621 res!232014) b!402618))

(assert (= (and b!402618 c!54755) b!402617))

(assert (= (and b!402618 (not c!54755)) b!402626))

(assert (= (or b!402617 b!402626) bm!28406))

(assert (= (or b!402617 b!402626) bm!28405))

(assert (= (and b!402616 condMapEmpty!16818) mapIsEmpty!16818))

(assert (= (and b!402616 (not condMapEmpty!16818)) mapNonEmpty!16818))

(get-info :version)

(assert (= (and mapNonEmpty!16818 ((_ is ValueCellFull!4722) mapValue!16818)) b!402623))

(assert (= (and b!402616 ((_ is ValueCellFull!4722) mapDefault!16818)) b!402628))

(assert (= start!38720 b!402616))

(declare-fun m!396055 () Bool)

(assert (=> b!402625 m!396055))

(declare-fun m!396057 () Bool)

(assert (=> b!402618 m!396057))

(declare-fun m!396059 () Bool)

(assert (=> bm!28406 m!396059))

(declare-fun m!396061 () Bool)

(assert (=> bm!28406 m!396061))

(declare-fun m!396063 () Bool)

(assert (=> mapNonEmpty!16818 m!396063))

(declare-fun m!396065 () Bool)

(assert (=> b!402620 m!396065))

(declare-fun m!396067 () Bool)

(assert (=> b!402620 m!396067))

(declare-fun m!396069 () Bool)

(assert (=> b!402613 m!396069))

(declare-fun m!396071 () Bool)

(assert (=> b!402619 m!396071))

(declare-fun m!396073 () Bool)

(assert (=> b!402629 m!396073))

(declare-fun m!396075 () Bool)

(assert (=> b!402622 m!396075))

(declare-fun m!396077 () Bool)

(assert (=> b!402617 m!396077))

(declare-fun m!396079 () Bool)

(assert (=> b!402624 m!396079))

(declare-fun m!396081 () Bool)

(assert (=> b!402615 m!396081))

(declare-fun m!396083 () Bool)

(assert (=> start!38720 m!396083))

(declare-fun m!396085 () Bool)

(assert (=> start!38720 m!396085))

(assert (=> bm!28405 m!396059))

(declare-fun m!396087 () Bool)

(assert (=> bm!28405 m!396087))

(check-sat (not b!402620) tp_is_empty!10131 (not b!402617) (not b!402624) (not b!402622) (not mapNonEmpty!16818) (not bm!28405) (not b!402619) (not b!402625) (not b!402615) (not b_next!9249) (not b!402613) (not bm!28406) (not b!402618) b_and!16653 (not start!38720))
(check-sat b_and!16653 (not b_next!9249))
