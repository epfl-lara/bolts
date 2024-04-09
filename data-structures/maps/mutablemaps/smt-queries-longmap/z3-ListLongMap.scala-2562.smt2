; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39200 () Bool)

(assert start!39200)

(declare-fun b_free!9459 () Bool)

(declare-fun b_next!9459 () Bool)

(assert (=> start!39200 (= b_free!9459 (not b_next!9459))))

(declare-fun tp!33906 () Bool)

(declare-fun b_and!16863 () Bool)

(assert (=> start!39200 (= tp!33906 b_and!16863)))

(declare-fun b!412752 () Bool)

(declare-fun e!246911 () Bool)

(declare-fun tp_is_empty!10611 () Bool)

(assert (=> b!412752 (= e!246911 tp_is_empty!10611)))

(declare-fun b!412754 () Bool)

(declare-fun e!246912 () Bool)

(declare-fun e!246907 () Bool)

(declare-fun mapRes!17538 () Bool)

(assert (=> b!412754 (= e!246912 (and e!246907 mapRes!17538))))

(declare-fun condMapEmpty!17538 () Bool)

(declare-datatypes ((V!15253 0))(
  ( (V!15254 (val!5350 Int)) )
))
(declare-datatypes ((ValueCell!4962 0))(
  ( (ValueCellFull!4962 (v!7593 V!15253)) (EmptyCell!4962) )
))
(declare-datatypes ((array!25061 0))(
  ( (array!25062 (arr!11977 (Array (_ BitVec 32) ValueCell!4962)) (size!12329 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25061)

(declare-fun mapDefault!17538 () ValueCell!4962)

(assert (=> b!412754 (= condMapEmpty!17538 (= (arr!11977 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4962)) mapDefault!17538)))))

(declare-fun b!412755 () Bool)

(declare-fun res!239851 () Bool)

(declare-fun e!246909 () Bool)

(assert (=> b!412755 (=> (not res!239851) (not e!246909))))

(declare-datatypes ((array!25063 0))(
  ( (array!25064 (arr!11978 (Array (_ BitVec 32) (_ BitVec 64))) (size!12330 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25063)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25063 (_ BitVec 32)) Bool)

(assert (=> b!412755 (= res!239851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412756 () Bool)

(declare-fun res!239847 () Bool)

(declare-fun e!246906 () Bool)

(assert (=> b!412756 (=> (not res!239847) (not e!246906))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412756 (= res!239847 (bvsle from!863 i!563))))

(declare-fun b!412757 () Bool)

(declare-fun res!239846 () Bool)

(assert (=> b!412757 (=> (not res!239846) (not e!246909))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!412757 (= res!239846 (and (= (size!12329 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12330 _keys!709) (size!12329 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412758 () Bool)

(declare-fun res!239844 () Bool)

(assert (=> b!412758 (=> (not res!239844) (not e!246906))))

(declare-fun lt!189554 () array!25063)

(declare-datatypes ((List!6930 0))(
  ( (Nil!6927) (Cons!6926 (h!7782 (_ BitVec 64)) (t!12112 List!6930)) )
))
(declare-fun arrayNoDuplicates!0 (array!25063 (_ BitVec 32) List!6930) Bool)

(assert (=> b!412758 (= res!239844 (arrayNoDuplicates!0 lt!189554 #b00000000000000000000000000000000 Nil!6927))))

(declare-fun e!246910 () Bool)

(declare-fun b!412759 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!6868 0))(
  ( (tuple2!6869 (_1!3444 (_ BitVec 64)) (_2!3444 V!15253)) )
))
(declare-datatypes ((List!6931 0))(
  ( (Nil!6928) (Cons!6927 (h!7783 tuple2!6868) (t!12113 List!6931)) )
))
(declare-datatypes ((ListLongMap!5795 0))(
  ( (ListLongMap!5796 (toList!2913 List!6931)) )
))
(declare-fun call!28553 () ListLongMap!5795)

(declare-fun call!28552 () ListLongMap!5795)

(declare-fun v!412 () V!15253)

(declare-fun +!1136 (ListLongMap!5795 tuple2!6868) ListLongMap!5795)

(assert (=> b!412759 (= e!246910 (= call!28552 (+!1136 call!28553 (tuple2!6869 k0!794 v!412))))))

(declare-fun b!412760 () Bool)

(assert (=> b!412760 (= e!246909 e!246906)))

(declare-fun res!239856 () Bool)

(assert (=> b!412760 (=> (not res!239856) (not e!246906))))

(assert (=> b!412760 (= res!239856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189554 mask!1025))))

(assert (=> b!412760 (= lt!189554 (array!25064 (store (arr!11978 _keys!709) i!563 k0!794) (size!12330 _keys!709)))))

(declare-fun b!412761 () Bool)

(declare-fun res!239850 () Bool)

(assert (=> b!412761 (=> (not res!239850) (not e!246909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412761 (= res!239850 (validKeyInArray!0 k0!794))))

(declare-fun b!412762 () Bool)

(declare-fun e!246913 () Bool)

(assert (=> b!412762 (= e!246913 (not true))))

(assert (=> b!412762 e!246910))

(declare-fun c!54827 () Bool)

(assert (=> b!412762 (= c!54827 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15253)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15253)

(declare-datatypes ((Unit!12171 0))(
  ( (Unit!12172) )
))
(declare-fun lt!189552 () Unit!12171)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!348 (array!25063 array!25061 (_ BitVec 32) (_ BitVec 32) V!15253 V!15253 (_ BitVec 32) (_ BitVec 64) V!15253 (_ BitVec 32) Int) Unit!12171)

(assert (=> b!412762 (= lt!189552 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!348 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17538 () Bool)

(declare-fun tp!33905 () Bool)

(assert (=> mapNonEmpty!17538 (= mapRes!17538 (and tp!33905 e!246911))))

(declare-fun mapKey!17538 () (_ BitVec 32))

(declare-fun mapRest!17538 () (Array (_ BitVec 32) ValueCell!4962))

(declare-fun mapValue!17538 () ValueCell!4962)

(assert (=> mapNonEmpty!17538 (= (arr!11977 _values!549) (store mapRest!17538 mapKey!17538 mapValue!17538))))

(declare-fun lt!189551 () array!25061)

(declare-fun bm!28549 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1123 (array!25063 array!25061 (_ BitVec 32) (_ BitVec 32) V!15253 V!15253 (_ BitVec 32) Int) ListLongMap!5795)

(assert (=> bm!28549 (= call!28553 (getCurrentListMapNoExtraKeys!1123 (ite c!54827 _keys!709 lt!189554) (ite c!54827 _values!549 lt!189551) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412763 () Bool)

(declare-fun res!239853 () Bool)

(assert (=> b!412763 (=> (not res!239853) (not e!246909))))

(assert (=> b!412763 (= res!239853 (or (= (select (arr!11978 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11978 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!239845 () Bool)

(assert (=> start!39200 (=> (not res!239845) (not e!246909))))

(assert (=> start!39200 (= res!239845 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12330 _keys!709))))))

(assert (=> start!39200 e!246909))

(assert (=> start!39200 tp_is_empty!10611))

(assert (=> start!39200 tp!33906))

(assert (=> start!39200 true))

(declare-fun array_inv!8732 (array!25061) Bool)

(assert (=> start!39200 (and (array_inv!8732 _values!549) e!246912)))

(declare-fun array_inv!8733 (array!25063) Bool)

(assert (=> start!39200 (array_inv!8733 _keys!709)))

(declare-fun b!412753 () Bool)

(declare-fun res!239848 () Bool)

(assert (=> b!412753 (=> (not res!239848) (not e!246909))))

(assert (=> b!412753 (= res!239848 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6927))))

(declare-fun bm!28550 () Bool)

(assert (=> bm!28550 (= call!28552 (getCurrentListMapNoExtraKeys!1123 (ite c!54827 lt!189554 _keys!709) (ite c!54827 lt!189551 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412764 () Bool)

(declare-fun res!239849 () Bool)

(assert (=> b!412764 (=> (not res!239849) (not e!246909))))

(assert (=> b!412764 (= res!239849 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12330 _keys!709))))))

(declare-fun b!412765 () Bool)

(declare-fun res!239852 () Bool)

(assert (=> b!412765 (=> (not res!239852) (not e!246909))))

(declare-fun arrayContainsKey!0 (array!25063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412765 (= res!239852 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412766 () Bool)

(declare-fun res!239855 () Bool)

(assert (=> b!412766 (=> (not res!239855) (not e!246909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412766 (= res!239855 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17538 () Bool)

(assert (=> mapIsEmpty!17538 mapRes!17538))

(declare-fun b!412767 () Bool)

(assert (=> b!412767 (= e!246906 e!246913)))

(declare-fun res!239854 () Bool)

(assert (=> b!412767 (=> (not res!239854) (not e!246913))))

(assert (=> b!412767 (= res!239854 (= from!863 i!563))))

(declare-fun lt!189553 () ListLongMap!5795)

(assert (=> b!412767 (= lt!189553 (getCurrentListMapNoExtraKeys!1123 lt!189554 lt!189551 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!412767 (= lt!189551 (array!25062 (store (arr!11977 _values!549) i!563 (ValueCellFull!4962 v!412)) (size!12329 _values!549)))))

(declare-fun lt!189555 () ListLongMap!5795)

(assert (=> b!412767 (= lt!189555 (getCurrentListMapNoExtraKeys!1123 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412768 () Bool)

(assert (=> b!412768 (= e!246907 tp_is_empty!10611)))

(declare-fun b!412769 () Bool)

(assert (=> b!412769 (= e!246910 (= call!28553 call!28552))))

(assert (= (and start!39200 res!239845) b!412766))

(assert (= (and b!412766 res!239855) b!412757))

(assert (= (and b!412757 res!239846) b!412755))

(assert (= (and b!412755 res!239851) b!412753))

(assert (= (and b!412753 res!239848) b!412764))

(assert (= (and b!412764 res!239849) b!412761))

(assert (= (and b!412761 res!239850) b!412763))

(assert (= (and b!412763 res!239853) b!412765))

(assert (= (and b!412765 res!239852) b!412760))

(assert (= (and b!412760 res!239856) b!412758))

(assert (= (and b!412758 res!239844) b!412756))

(assert (= (and b!412756 res!239847) b!412767))

(assert (= (and b!412767 res!239854) b!412762))

(assert (= (and b!412762 c!54827) b!412759))

(assert (= (and b!412762 (not c!54827)) b!412769))

(assert (= (or b!412759 b!412769) bm!28550))

(assert (= (or b!412759 b!412769) bm!28549))

(assert (= (and b!412754 condMapEmpty!17538) mapIsEmpty!17538))

(assert (= (and b!412754 (not condMapEmpty!17538)) mapNonEmpty!17538))

(get-info :version)

(assert (= (and mapNonEmpty!17538 ((_ is ValueCellFull!4962) mapValue!17538)) b!412752))

(assert (= (and b!412754 ((_ is ValueCellFull!4962) mapDefault!17538)) b!412768))

(assert (= start!39200 b!412754))

(declare-fun m!402437 () Bool)

(assert (=> b!412758 m!402437))

(declare-fun m!402439 () Bool)

(assert (=> b!412763 m!402439))

(declare-fun m!402441 () Bool)

(assert (=> b!412762 m!402441))

(declare-fun m!402443 () Bool)

(assert (=> b!412759 m!402443))

(declare-fun m!402445 () Bool)

(assert (=> mapNonEmpty!17538 m!402445))

(declare-fun m!402447 () Bool)

(assert (=> b!412755 m!402447))

(declare-fun m!402449 () Bool)

(assert (=> b!412766 m!402449))

(declare-fun m!402451 () Bool)

(assert (=> b!412753 m!402451))

(declare-fun m!402453 () Bool)

(assert (=> bm!28550 m!402453))

(declare-fun m!402455 () Bool)

(assert (=> b!412760 m!402455))

(declare-fun m!402457 () Bool)

(assert (=> b!412760 m!402457))

(declare-fun m!402459 () Bool)

(assert (=> start!39200 m!402459))

(declare-fun m!402461 () Bool)

(assert (=> start!39200 m!402461))

(declare-fun m!402463 () Bool)

(assert (=> bm!28549 m!402463))

(declare-fun m!402465 () Bool)

(assert (=> b!412767 m!402465))

(declare-fun m!402467 () Bool)

(assert (=> b!412767 m!402467))

(declare-fun m!402469 () Bool)

(assert (=> b!412767 m!402469))

(declare-fun m!402471 () Bool)

(assert (=> b!412765 m!402471))

(declare-fun m!402473 () Bool)

(assert (=> b!412761 m!402473))

(check-sat (not b!412753) (not bm!28549) (not b!412761) (not b!412755) tp_is_empty!10611 (not b!412765) (not start!39200) (not b!412767) (not mapNonEmpty!17538) b_and!16863 (not b!412759) (not b!412758) (not b!412762) (not b!412760) (not b_next!9459) (not bm!28550) (not b!412766))
(check-sat b_and!16863 (not b_next!9459))
