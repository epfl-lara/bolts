; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40816 () Bool)

(assert start!40816)

(declare-fun b_free!10797 () Bool)

(declare-fun b_next!10797 () Bool)

(assert (=> start!40816 (= b_free!10797 (not b_next!10797))))

(declare-fun tp!38213 () Bool)

(declare-fun b_and!18899 () Bool)

(assert (=> start!40816 (= tp!38213 b_and!18899)))

(declare-fun b!452689 () Bool)

(declare-fun res!269761 () Bool)

(declare-fun e!265013 () Bool)

(assert (=> b!452689 (=> (not res!269761) (not e!265013))))

(declare-datatypes ((array!28037 0))(
  ( (array!28038 (arr!13460 (Array (_ BitVec 32) (_ BitVec 64))) (size!13812 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28037)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452689 (= res!269761 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19839 () Bool)

(declare-fun mapRes!19839 () Bool)

(declare-fun tp!38214 () Bool)

(declare-fun e!265011 () Bool)

(assert (=> mapNonEmpty!19839 (= mapRes!19839 (and tp!38214 e!265011))))

(declare-datatypes ((V!17285 0))(
  ( (V!17286 (val!6112 Int)) )
))
(declare-datatypes ((ValueCell!5724 0))(
  ( (ValueCellFull!5724 (v!8367 V!17285)) (EmptyCell!5724) )
))
(declare-fun mapValue!19839 () ValueCell!5724)

(declare-fun mapRest!19839 () (Array (_ BitVec 32) ValueCell!5724))

(declare-datatypes ((array!28039 0))(
  ( (array!28040 (arr!13461 (Array (_ BitVec 32) ValueCell!5724)) (size!13813 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28039)

(declare-fun mapKey!19839 () (_ BitVec 32))

(assert (=> mapNonEmpty!19839 (= (arr!13461 _values!549) (store mapRest!19839 mapKey!19839 mapValue!19839))))

(declare-fun res!269767 () Bool)

(assert (=> start!40816 (=> (not res!269767) (not e!265013))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40816 (= res!269767 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13812 _keys!709))))))

(assert (=> start!40816 e!265013))

(declare-fun tp_is_empty!12135 () Bool)

(assert (=> start!40816 tp_is_empty!12135))

(assert (=> start!40816 tp!38213))

(assert (=> start!40816 true))

(declare-fun e!265012 () Bool)

(declare-fun array_inv!9744 (array!28039) Bool)

(assert (=> start!40816 (and (array_inv!9744 _values!549) e!265012)))

(declare-fun array_inv!9745 (array!28037) Bool)

(assert (=> start!40816 (array_inv!9745 _keys!709)))

(declare-fun b!452690 () Bool)

(declare-fun res!269755 () Bool)

(assert (=> b!452690 (=> (not res!269755) (not e!265013))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452690 (= res!269755 (or (= (select (arr!13460 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13460 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun c!56069 () Bool)

(declare-fun minValue!515 () V!17285)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17285)

(declare-fun lt!205456 () array!28039)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7996 0))(
  ( (tuple2!7997 (_1!4008 (_ BitVec 64)) (_2!4008 V!17285)) )
))
(declare-datatypes ((List!8098 0))(
  ( (Nil!8095) (Cons!8094 (h!8950 tuple2!7996) (t!13926 List!8098)) )
))
(declare-datatypes ((ListLongMap!6923 0))(
  ( (ListLongMap!6924 (toList!3477 List!8098)) )
))
(declare-fun call!30001 () ListLongMap!6923)

(declare-fun lt!205453 () array!28037)

(declare-fun bm!29998 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1653 (array!28037 array!28039 (_ BitVec 32) (_ BitVec 32) V!17285 V!17285 (_ BitVec 32) Int) ListLongMap!6923)

(assert (=> bm!29998 (= call!30001 (getCurrentListMapNoExtraKeys!1653 (ite c!56069 _keys!709 lt!205453) (ite c!56069 _values!549 lt!205456) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!30002 () ListLongMap!6923)

(declare-fun e!265007 () Bool)

(declare-fun b!452691 () Bool)

(declare-fun v!412 () V!17285)

(declare-fun +!1542 (ListLongMap!6923 tuple2!7996) ListLongMap!6923)

(assert (=> b!452691 (= e!265007 (= call!30002 (+!1542 call!30001 (tuple2!7997 k0!794 v!412))))))

(declare-fun bm!29999 () Bool)

(assert (=> bm!29999 (= call!30002 (getCurrentListMapNoExtraKeys!1653 (ite c!56069 lt!205453 _keys!709) (ite c!56069 lt!205456 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452692 () Bool)

(declare-fun e!265014 () Bool)

(assert (=> b!452692 (= e!265013 e!265014)))

(declare-fun res!269757 () Bool)

(assert (=> b!452692 (=> (not res!269757) (not e!265014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28037 (_ BitVec 32)) Bool)

(assert (=> b!452692 (= res!269757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205453 mask!1025))))

(assert (=> b!452692 (= lt!205453 (array!28038 (store (arr!13460 _keys!709) i!563 k0!794) (size!13812 _keys!709)))))

(declare-fun b!452693 () Bool)

(declare-fun res!269765 () Bool)

(assert (=> b!452693 (=> (not res!269765) (not e!265013))))

(assert (=> b!452693 (= res!269765 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13812 _keys!709))))))

(declare-fun b!452694 () Bool)

(declare-fun e!265008 () Bool)

(assert (=> b!452694 (= e!265008 tp_is_empty!12135)))

(declare-fun b!452695 () Bool)

(assert (=> b!452695 (= e!265012 (and e!265008 mapRes!19839))))

(declare-fun condMapEmpty!19839 () Bool)

(declare-fun mapDefault!19839 () ValueCell!5724)

(assert (=> b!452695 (= condMapEmpty!19839 (= (arr!13461 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5724)) mapDefault!19839)))))

(declare-fun b!452696 () Bool)

(declare-fun res!269768 () Bool)

(assert (=> b!452696 (=> (not res!269768) (not e!265014))))

(assert (=> b!452696 (= res!269768 (bvsle from!863 i!563))))

(declare-fun b!452697 () Bool)

(declare-fun res!269760 () Bool)

(assert (=> b!452697 (=> (not res!269760) (not e!265013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452697 (= res!269760 (validKeyInArray!0 k0!794))))

(declare-fun b!452698 () Bool)

(declare-fun e!265010 () Bool)

(assert (=> b!452698 (= e!265010 true)))

(declare-fun lt!205448 () ListLongMap!6923)

(declare-fun lt!205451 () V!17285)

(declare-fun lt!205458 () tuple2!7996)

(assert (=> b!452698 (= (+!1542 lt!205448 lt!205458) (+!1542 (+!1542 lt!205448 (tuple2!7997 k0!794 lt!205451)) lt!205458))))

(declare-fun lt!205449 () V!17285)

(assert (=> b!452698 (= lt!205458 (tuple2!7997 k0!794 lt!205449))))

(declare-datatypes ((Unit!13185 0))(
  ( (Unit!13186) )
))
(declare-fun lt!205454 () Unit!13185)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!87 (ListLongMap!6923 (_ BitVec 64) V!17285 V!17285) Unit!13185)

(assert (=> b!452698 (= lt!205454 (addSameAsAddTwiceSameKeyDiffValues!87 lt!205448 k0!794 lt!205451 lt!205449))))

(declare-fun lt!205450 () V!17285)

(declare-fun get!6648 (ValueCell!5724 V!17285) V!17285)

(assert (=> b!452698 (= lt!205451 (get!6648 (select (arr!13461 _values!549) from!863) lt!205450))))

(declare-fun lt!205452 () ListLongMap!6923)

(assert (=> b!452698 (= lt!205452 (+!1542 lt!205448 (tuple2!7997 (select (arr!13460 lt!205453) from!863) lt!205449)))))

(assert (=> b!452698 (= lt!205449 (get!6648 (select (store (arr!13461 _values!549) i!563 (ValueCellFull!5724 v!412)) from!863) lt!205450))))

(declare-fun dynLambda!865 (Int (_ BitVec 64)) V!17285)

(assert (=> b!452698 (= lt!205450 (dynLambda!865 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452698 (= lt!205448 (getCurrentListMapNoExtraKeys!1653 lt!205453 lt!205456 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452699 () Bool)

(assert (=> b!452699 (= e!265011 tp_is_empty!12135)))

(declare-fun mapIsEmpty!19839 () Bool)

(assert (=> mapIsEmpty!19839 mapRes!19839))

(declare-fun b!452700 () Bool)

(assert (=> b!452700 (= e!265007 (= call!30001 call!30002))))

(declare-fun b!452701 () Bool)

(declare-fun res!269756 () Bool)

(assert (=> b!452701 (=> (not res!269756) (not e!265013))))

(assert (=> b!452701 (= res!269756 (and (= (size!13813 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13812 _keys!709) (size!13813 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452702 () Bool)

(declare-fun e!265006 () Bool)

(assert (=> b!452702 (= e!265006 (not e!265010))))

(declare-fun res!269759 () Bool)

(assert (=> b!452702 (=> res!269759 e!265010)))

(assert (=> b!452702 (= res!269759 (validKeyInArray!0 (select (arr!13460 _keys!709) from!863)))))

(assert (=> b!452702 e!265007))

(assert (=> b!452702 (= c!56069 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!205455 () Unit!13185)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!709 (array!28037 array!28039 (_ BitVec 32) (_ BitVec 32) V!17285 V!17285 (_ BitVec 32) (_ BitVec 64) V!17285 (_ BitVec 32) Int) Unit!13185)

(assert (=> b!452702 (= lt!205455 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!709 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452703 () Bool)

(assert (=> b!452703 (= e!265014 e!265006)))

(declare-fun res!269762 () Bool)

(assert (=> b!452703 (=> (not res!269762) (not e!265006))))

(assert (=> b!452703 (= res!269762 (= from!863 i!563))))

(assert (=> b!452703 (= lt!205452 (getCurrentListMapNoExtraKeys!1653 lt!205453 lt!205456 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452703 (= lt!205456 (array!28040 (store (arr!13461 _values!549) i!563 (ValueCellFull!5724 v!412)) (size!13813 _values!549)))))

(declare-fun lt!205457 () ListLongMap!6923)

(assert (=> b!452703 (= lt!205457 (getCurrentListMapNoExtraKeys!1653 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452704 () Bool)

(declare-fun res!269763 () Bool)

(assert (=> b!452704 (=> (not res!269763) (not e!265014))))

(declare-datatypes ((List!8099 0))(
  ( (Nil!8096) (Cons!8095 (h!8951 (_ BitVec 64)) (t!13927 List!8099)) )
))
(declare-fun arrayNoDuplicates!0 (array!28037 (_ BitVec 32) List!8099) Bool)

(assert (=> b!452704 (= res!269763 (arrayNoDuplicates!0 lt!205453 #b00000000000000000000000000000000 Nil!8096))))

(declare-fun b!452705 () Bool)

(declare-fun res!269758 () Bool)

(assert (=> b!452705 (=> (not res!269758) (not e!265013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452705 (= res!269758 (validMask!0 mask!1025))))

(declare-fun b!452706 () Bool)

(declare-fun res!269766 () Bool)

(assert (=> b!452706 (=> (not res!269766) (not e!265013))))

(assert (=> b!452706 (= res!269766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452707 () Bool)

(declare-fun res!269764 () Bool)

(assert (=> b!452707 (=> (not res!269764) (not e!265013))))

(assert (=> b!452707 (= res!269764 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8096))))

(assert (= (and start!40816 res!269767) b!452705))

(assert (= (and b!452705 res!269758) b!452701))

(assert (= (and b!452701 res!269756) b!452706))

(assert (= (and b!452706 res!269766) b!452707))

(assert (= (and b!452707 res!269764) b!452693))

(assert (= (and b!452693 res!269765) b!452697))

(assert (= (and b!452697 res!269760) b!452690))

(assert (= (and b!452690 res!269755) b!452689))

(assert (= (and b!452689 res!269761) b!452692))

(assert (= (and b!452692 res!269757) b!452704))

(assert (= (and b!452704 res!269763) b!452696))

(assert (= (and b!452696 res!269768) b!452703))

(assert (= (and b!452703 res!269762) b!452702))

(assert (= (and b!452702 c!56069) b!452691))

(assert (= (and b!452702 (not c!56069)) b!452700))

(assert (= (or b!452691 b!452700) bm!29999))

(assert (= (or b!452691 b!452700) bm!29998))

(assert (= (and b!452702 (not res!269759)) b!452698))

(assert (= (and b!452695 condMapEmpty!19839) mapIsEmpty!19839))

(assert (= (and b!452695 (not condMapEmpty!19839)) mapNonEmpty!19839))

(get-info :version)

(assert (= (and mapNonEmpty!19839 ((_ is ValueCellFull!5724) mapValue!19839)) b!452699))

(assert (= (and b!452695 ((_ is ValueCellFull!5724) mapDefault!19839)) b!452694))

(assert (= start!40816 b!452695))

(declare-fun b_lambda!9605 () Bool)

(assert (=> (not b_lambda!9605) (not b!452698)))

(declare-fun t!13925 () Bool)

(declare-fun tb!3785 () Bool)

(assert (=> (and start!40816 (= defaultEntry!557 defaultEntry!557) t!13925) tb!3785))

(declare-fun result!7099 () Bool)

(assert (=> tb!3785 (= result!7099 tp_is_empty!12135)))

(assert (=> b!452698 t!13925))

(declare-fun b_and!18901 () Bool)

(assert (= b_and!18899 (and (=> t!13925 result!7099) b_and!18901)))

(declare-fun m!436495 () Bool)

(assert (=> b!452706 m!436495))

(declare-fun m!436497 () Bool)

(assert (=> bm!29998 m!436497))

(declare-fun m!436499 () Bool)

(assert (=> b!452692 m!436499))

(declare-fun m!436501 () Bool)

(assert (=> b!452692 m!436501))

(declare-fun m!436503 () Bool)

(assert (=> b!452697 m!436503))

(declare-fun m!436505 () Bool)

(assert (=> mapNonEmpty!19839 m!436505))

(declare-fun m!436507 () Bool)

(assert (=> b!452702 m!436507))

(assert (=> b!452702 m!436507))

(declare-fun m!436509 () Bool)

(assert (=> b!452702 m!436509))

(declare-fun m!436511 () Bool)

(assert (=> b!452702 m!436511))

(declare-fun m!436513 () Bool)

(assert (=> b!452705 m!436513))

(declare-fun m!436515 () Bool)

(assert (=> b!452703 m!436515))

(declare-fun m!436517 () Bool)

(assert (=> b!452703 m!436517))

(declare-fun m!436519 () Bool)

(assert (=> b!452703 m!436519))

(declare-fun m!436521 () Bool)

(assert (=> b!452698 m!436521))

(declare-fun m!436523 () Bool)

(assert (=> b!452698 m!436523))

(declare-fun m!436525 () Bool)

(assert (=> b!452698 m!436525))

(declare-fun m!436527 () Bool)

(assert (=> b!452698 m!436527))

(assert (=> b!452698 m!436517))

(declare-fun m!436529 () Bool)

(assert (=> b!452698 m!436529))

(declare-fun m!436531 () Bool)

(assert (=> b!452698 m!436531))

(declare-fun m!436533 () Bool)

(assert (=> b!452698 m!436533))

(assert (=> b!452698 m!436521))

(declare-fun m!436535 () Bool)

(assert (=> b!452698 m!436535))

(declare-fun m!436537 () Bool)

(assert (=> b!452698 m!436537))

(declare-fun m!436539 () Bool)

(assert (=> b!452698 m!436539))

(declare-fun m!436541 () Bool)

(assert (=> b!452698 m!436541))

(assert (=> b!452698 m!436529))

(declare-fun m!436543 () Bool)

(assert (=> b!452698 m!436543))

(assert (=> b!452698 m!436525))

(declare-fun m!436545 () Bool)

(assert (=> b!452704 m!436545))

(declare-fun m!436547 () Bool)

(assert (=> b!452691 m!436547))

(declare-fun m!436549 () Bool)

(assert (=> b!452689 m!436549))

(declare-fun m!436551 () Bool)

(assert (=> bm!29999 m!436551))

(declare-fun m!436553 () Bool)

(assert (=> start!40816 m!436553))

(declare-fun m!436555 () Bool)

(assert (=> start!40816 m!436555))

(declare-fun m!436557 () Bool)

(assert (=> b!452707 m!436557))

(declare-fun m!436559 () Bool)

(assert (=> b!452690 m!436559))

(check-sat (not b!452697) (not b!452692) (not mapNonEmpty!19839) (not bm!29999) b_and!18901 tp_is_empty!12135 (not b!452706) (not b!452707) (not b_next!10797) (not b!452705) (not b!452698) (not bm!29998) (not b_lambda!9605) (not b!452702) (not start!40816) (not b!452704) (not b!452703) (not b!452689) (not b!452691))
(check-sat b_and!18901 (not b_next!10797))
