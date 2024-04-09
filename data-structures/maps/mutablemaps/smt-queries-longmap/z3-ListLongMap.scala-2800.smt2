; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40698 () Bool)

(assert start!40698)

(declare-fun b_free!10701 () Bool)

(declare-fun b_next!10701 () Bool)

(assert (=> start!40698 (= b_free!10701 (not b_next!10701))))

(declare-fun tp!37923 () Bool)

(declare-fun b_and!18727 () Bool)

(assert (=> start!40698 (= tp!37923 b_and!18727)))

(declare-fun res!267697 () Bool)

(declare-fun e!263631 () Bool)

(assert (=> start!40698 (=> (not res!267697) (not e!263631))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27845 0))(
  ( (array!27846 (arr!13365 (Array (_ BitVec 32) (_ BitVec 64))) (size!13717 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27845)

(assert (=> start!40698 (= res!267697 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13717 _keys!709))))))

(assert (=> start!40698 e!263631))

(declare-fun tp_is_empty!12039 () Bool)

(assert (=> start!40698 tp_is_empty!12039))

(assert (=> start!40698 tp!37923))

(assert (=> start!40698 true))

(declare-datatypes ((V!17157 0))(
  ( (V!17158 (val!6064 Int)) )
))
(declare-datatypes ((ValueCell!5676 0))(
  ( (ValueCellFull!5676 (v!8315 V!17157)) (EmptyCell!5676) )
))
(declare-datatypes ((array!27847 0))(
  ( (array!27848 (arr!13366 (Array (_ BitVec 32) ValueCell!5676)) (size!13718 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27847)

(declare-fun e!263633 () Bool)

(declare-fun array_inv!9674 (array!27847) Bool)

(assert (=> start!40698 (and (array_inv!9674 _values!549) e!263633)))

(declare-fun array_inv!9675 (array!27845) Bool)

(assert (=> start!40698 (array_inv!9675 _keys!709)))

(declare-fun b!449762 () Bool)

(declare-fun res!267700 () Bool)

(declare-fun e!263635 () Bool)

(assert (=> b!449762 (=> (not res!267700) (not e!263635))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449762 (= res!267700 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!19692 () Bool)

(declare-fun mapRes!19692 () Bool)

(assert (=> mapIsEmpty!19692 mapRes!19692))

(declare-fun b!449763 () Bool)

(declare-fun res!267699 () Bool)

(assert (=> b!449763 (=> (not res!267699) (not e!263631))))

(assert (=> b!449763 (= res!267699 (or (= (select (arr!13365 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13365 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449764 () Bool)

(declare-fun res!267705 () Bool)

(assert (=> b!449764 (=> (not res!267705) (not e!263631))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27845 (_ BitVec 32)) Bool)

(assert (=> b!449764 (= res!267705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449765 () Bool)

(declare-fun res!267702 () Bool)

(assert (=> b!449765 (=> (not res!267702) (not e!263631))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449765 (= res!267702 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun minValue!515 () V!17157)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7902 0))(
  ( (tuple2!7903 (_1!3961 (_ BitVec 64)) (_2!3961 V!17157)) )
))
(declare-datatypes ((List!8013 0))(
  ( (Nil!8010) (Cons!8009 (h!8865 tuple2!7902) (t!13783 List!8013)) )
))
(declare-datatypes ((ListLongMap!6829 0))(
  ( (ListLongMap!6830 (toList!3430 List!8013)) )
))
(declare-fun call!29693 () ListLongMap!6829)

(declare-fun bm!29689 () Bool)

(declare-fun zeroValue!515 () V!17157)

(declare-fun c!55883 () Bool)

(declare-fun lt!204438 () array!27847)

(declare-fun lt!204439 () array!27845)

(declare-fun getCurrentListMapNoExtraKeys!1610 (array!27845 array!27847 (_ BitVec 32) (_ BitVec 32) V!17157 V!17157 (_ BitVec 32) Int) ListLongMap!6829)

(assert (=> bm!29689 (= call!29693 (getCurrentListMapNoExtraKeys!1610 (ite c!55883 lt!204439 _keys!709) (ite c!55883 lt!204438 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449766 () Bool)

(declare-fun e!263636 () Bool)

(assert (=> b!449766 (= e!263633 (and e!263636 mapRes!19692))))

(declare-fun condMapEmpty!19692 () Bool)

(declare-fun mapDefault!19692 () ValueCell!5676)

(assert (=> b!449766 (= condMapEmpty!19692 (= (arr!13366 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5676)) mapDefault!19692)))))

(declare-fun b!449767 () Bool)

(declare-fun res!267707 () Bool)

(assert (=> b!449767 (=> (not res!267707) (not e!263631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449767 (= res!267707 (validKeyInArray!0 k0!794))))

(declare-fun b!449768 () Bool)

(declare-fun res!267701 () Bool)

(assert (=> b!449768 (=> (not res!267701) (not e!263635))))

(declare-datatypes ((List!8014 0))(
  ( (Nil!8011) (Cons!8010 (h!8866 (_ BitVec 64)) (t!13784 List!8014)) )
))
(declare-fun arrayNoDuplicates!0 (array!27845 (_ BitVec 32) List!8014) Bool)

(assert (=> b!449768 (= res!267701 (arrayNoDuplicates!0 lt!204439 #b00000000000000000000000000000000 Nil!8011))))

(declare-fun b!449769 () Bool)

(declare-fun e!263634 () Bool)

(assert (=> b!449769 (= e!263634 (not (bvslt from!863 (size!13717 _keys!709))))))

(declare-fun e!263637 () Bool)

(assert (=> b!449769 e!263637))

(assert (=> b!449769 (= c!55883 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun v!412 () V!17157)

(declare-datatypes ((Unit!13115 0))(
  ( (Unit!13116) )
))
(declare-fun lt!204442 () Unit!13115)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!676 (array!27845 array!27847 (_ BitVec 32) (_ BitVec 32) V!17157 V!17157 (_ BitVec 32) (_ BitVec 64) V!17157 (_ BitVec 32) Int) Unit!13115)

(assert (=> b!449769 (= lt!204442 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!676 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449770 () Bool)

(declare-fun res!267708 () Bool)

(assert (=> b!449770 (=> (not res!267708) (not e!263631))))

(assert (=> b!449770 (= res!267708 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8011))))

(declare-fun b!449771 () Bool)

(declare-fun res!267698 () Bool)

(assert (=> b!449771 (=> (not res!267698) (not e!263631))))

(assert (=> b!449771 (= res!267698 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13717 _keys!709))))))

(declare-fun b!449772 () Bool)

(declare-fun res!267704 () Bool)

(assert (=> b!449772 (=> (not res!267704) (not e!263631))))

(assert (=> b!449772 (= res!267704 (and (= (size!13718 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13717 _keys!709) (size!13718 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449773 () Bool)

(assert (=> b!449773 (= e!263636 tp_is_empty!12039)))

(declare-fun b!449774 () Bool)

(assert (=> b!449774 (= e!263635 e!263634)))

(declare-fun res!267696 () Bool)

(assert (=> b!449774 (=> (not res!267696) (not e!263634))))

(assert (=> b!449774 (= res!267696 (= from!863 i!563))))

(declare-fun lt!204440 () ListLongMap!6829)

(assert (=> b!449774 (= lt!204440 (getCurrentListMapNoExtraKeys!1610 lt!204439 lt!204438 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!449774 (= lt!204438 (array!27848 (store (arr!13366 _values!549) i!563 (ValueCellFull!5676 v!412)) (size!13718 _values!549)))))

(declare-fun lt!204441 () ListLongMap!6829)

(assert (=> b!449774 (= lt!204441 (getCurrentListMapNoExtraKeys!1610 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449775 () Bool)

(declare-fun res!267703 () Bool)

(assert (=> b!449775 (=> (not res!267703) (not e!263631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449775 (= res!267703 (validMask!0 mask!1025))))

(declare-fun b!449776 () Bool)

(assert (=> b!449776 (= e!263631 e!263635)))

(declare-fun res!267706 () Bool)

(assert (=> b!449776 (=> (not res!267706) (not e!263635))))

(assert (=> b!449776 (= res!267706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204439 mask!1025))))

(assert (=> b!449776 (= lt!204439 (array!27846 (store (arr!13365 _keys!709) i!563 k0!794) (size!13717 _keys!709)))))

(declare-fun b!449777 () Bool)

(declare-fun call!29692 () ListLongMap!6829)

(assert (=> b!449777 (= e!263637 (= call!29692 call!29693))))

(declare-fun b!449778 () Bool)

(declare-fun +!1503 (ListLongMap!6829 tuple2!7902) ListLongMap!6829)

(assert (=> b!449778 (= e!263637 (= call!29693 (+!1503 call!29692 (tuple2!7903 k0!794 v!412))))))

(declare-fun b!449779 () Bool)

(declare-fun e!263630 () Bool)

(assert (=> b!449779 (= e!263630 tp_is_empty!12039)))

(declare-fun mapNonEmpty!19692 () Bool)

(declare-fun tp!37922 () Bool)

(assert (=> mapNonEmpty!19692 (= mapRes!19692 (and tp!37922 e!263630))))

(declare-fun mapKey!19692 () (_ BitVec 32))

(declare-fun mapValue!19692 () ValueCell!5676)

(declare-fun mapRest!19692 () (Array (_ BitVec 32) ValueCell!5676))

(assert (=> mapNonEmpty!19692 (= (arr!13366 _values!549) (store mapRest!19692 mapKey!19692 mapValue!19692))))

(declare-fun bm!29690 () Bool)

(assert (=> bm!29690 (= call!29692 (getCurrentListMapNoExtraKeys!1610 (ite c!55883 _keys!709 lt!204439) (ite c!55883 _values!549 lt!204438) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!40698 res!267697) b!449775))

(assert (= (and b!449775 res!267703) b!449772))

(assert (= (and b!449772 res!267704) b!449764))

(assert (= (and b!449764 res!267705) b!449770))

(assert (= (and b!449770 res!267708) b!449771))

(assert (= (and b!449771 res!267698) b!449767))

(assert (= (and b!449767 res!267707) b!449763))

(assert (= (and b!449763 res!267699) b!449765))

(assert (= (and b!449765 res!267702) b!449776))

(assert (= (and b!449776 res!267706) b!449768))

(assert (= (and b!449768 res!267701) b!449762))

(assert (= (and b!449762 res!267700) b!449774))

(assert (= (and b!449774 res!267696) b!449769))

(assert (= (and b!449769 c!55883) b!449778))

(assert (= (and b!449769 (not c!55883)) b!449777))

(assert (= (or b!449778 b!449777) bm!29689))

(assert (= (or b!449778 b!449777) bm!29690))

(assert (= (and b!449766 condMapEmpty!19692) mapIsEmpty!19692))

(assert (= (and b!449766 (not condMapEmpty!19692)) mapNonEmpty!19692))

(get-info :version)

(assert (= (and mapNonEmpty!19692 ((_ is ValueCellFull!5676) mapValue!19692)) b!449779))

(assert (= (and b!449766 ((_ is ValueCellFull!5676) mapDefault!19692)) b!449773))

(assert (= start!40698 b!449766))

(declare-fun m!433843 () Bool)

(assert (=> bm!29689 m!433843))

(declare-fun m!433845 () Bool)

(assert (=> b!449768 m!433845))

(declare-fun m!433847 () Bool)

(assert (=> b!449770 m!433847))

(declare-fun m!433849 () Bool)

(assert (=> b!449764 m!433849))

(declare-fun m!433851 () Bool)

(assert (=> start!40698 m!433851))

(declare-fun m!433853 () Bool)

(assert (=> start!40698 m!433853))

(declare-fun m!433855 () Bool)

(assert (=> mapNonEmpty!19692 m!433855))

(declare-fun m!433857 () Bool)

(assert (=> b!449775 m!433857))

(declare-fun m!433859 () Bool)

(assert (=> bm!29690 m!433859))

(declare-fun m!433861 () Bool)

(assert (=> b!449769 m!433861))

(declare-fun m!433863 () Bool)

(assert (=> b!449767 m!433863))

(declare-fun m!433865 () Bool)

(assert (=> b!449776 m!433865))

(declare-fun m!433867 () Bool)

(assert (=> b!449776 m!433867))

(declare-fun m!433869 () Bool)

(assert (=> b!449763 m!433869))

(declare-fun m!433871 () Bool)

(assert (=> b!449778 m!433871))

(declare-fun m!433873 () Bool)

(assert (=> b!449765 m!433873))

(declare-fun m!433875 () Bool)

(assert (=> b!449774 m!433875))

(declare-fun m!433877 () Bool)

(assert (=> b!449774 m!433877))

(declare-fun m!433879 () Bool)

(assert (=> b!449774 m!433879))

(check-sat (not b!449776) (not b!449765) (not b!449778) (not b!449774) tp_is_empty!12039 (not start!40698) (not b!449768) (not bm!29689) b_and!18727 (not b!449775) (not b!449769) (not b!449767) (not mapNonEmpty!19692) (not bm!29690) (not b_next!10701) (not b!449764) (not b!449770))
(check-sat b_and!18727 (not b_next!10701))
