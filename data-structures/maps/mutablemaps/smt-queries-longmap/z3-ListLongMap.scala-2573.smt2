; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39266 () Bool)

(assert start!39266)

(declare-fun b_free!9525 () Bool)

(declare-fun b_next!9525 () Bool)

(assert (=> start!39266 (= b_free!9525 (not b_next!9525))))

(declare-fun tp!34104 () Bool)

(declare-fun b_and!16943 () Bool)

(assert (=> start!39266 (= tp!34104 b_and!16943)))

(declare-fun b!414580 () Bool)

(declare-fun res!241165 () Bool)

(declare-fun e!247738 () Bool)

(assert (=> b!414580 (=> (not res!241165) (not e!247738))))

(declare-datatypes ((array!25191 0))(
  ( (array!25192 (arr!12042 (Array (_ BitVec 32) (_ BitVec 64))) (size!12394 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25191)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!15341 0))(
  ( (V!15342 (val!5383 Int)) )
))
(declare-datatypes ((ValueCell!4995 0))(
  ( (ValueCellFull!4995 (v!7626 V!15341)) (EmptyCell!4995) )
))
(declare-datatypes ((array!25193 0))(
  ( (array!25194 (arr!12043 (Array (_ BitVec 32) ValueCell!4995)) (size!12395 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25193)

(assert (=> b!414580 (= res!241165 (and (= (size!12395 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12394 _keys!709) (size!12395 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414581 () Bool)

(declare-fun res!241172 () Bool)

(assert (=> b!414581 (=> (not res!241172) (not e!247738))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414581 (= res!241172 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12394 _keys!709))))))

(declare-fun minValue!515 () V!15341)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!190049 () array!25193)

(declare-fun lt!190046 () array!25191)

(declare-fun zeroValue!515 () V!15341)

(declare-fun bm!28747 () Bool)

(declare-fun c!54926 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6930 0))(
  ( (tuple2!6931 (_1!3475 (_ BitVec 64)) (_2!3475 V!15341)) )
))
(declare-datatypes ((List!6988 0))(
  ( (Nil!6985) (Cons!6984 (h!7840 tuple2!6930) (t!12186 List!6988)) )
))
(declare-datatypes ((ListLongMap!5857 0))(
  ( (ListLongMap!5858 (toList!2944 List!6988)) )
))
(declare-fun call!28750 () ListLongMap!5857)

(declare-fun getCurrentListMapNoExtraKeys!1151 (array!25191 array!25193 (_ BitVec 32) (_ BitVec 32) V!15341 V!15341 (_ BitVec 32) Int) ListLongMap!5857)

(assert (=> bm!28747 (= call!28750 (getCurrentListMapNoExtraKeys!1151 (ite c!54926 _keys!709 lt!190046) (ite c!54926 _values!549 lt!190049) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414582 () Bool)

(declare-fun e!247733 () Bool)

(declare-fun call!28751 () ListLongMap!5857)

(assert (=> b!414582 (= e!247733 (= call!28750 call!28751))))

(declare-fun b!414583 () Bool)

(declare-fun res!241174 () Bool)

(declare-fun e!247732 () Bool)

(assert (=> b!414583 (=> (not res!241174) (not e!247732))))

(declare-datatypes ((List!6989 0))(
  ( (Nil!6986) (Cons!6985 (h!7841 (_ BitVec 64)) (t!12187 List!6989)) )
))
(declare-fun arrayNoDuplicates!0 (array!25191 (_ BitVec 32) List!6989) Bool)

(assert (=> b!414583 (= res!241174 (arrayNoDuplicates!0 lt!190046 #b00000000000000000000000000000000 Nil!6986))))

(declare-fun b!414584 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15341)

(declare-fun +!1160 (ListLongMap!5857 tuple2!6930) ListLongMap!5857)

(assert (=> b!414584 (= e!247733 (= call!28751 (+!1160 call!28750 (tuple2!6931 k0!794 v!412))))))

(declare-fun b!414585 () Bool)

(declare-fun res!241171 () Bool)

(assert (=> b!414585 (=> (not res!241171) (not e!247738))))

(assert (=> b!414585 (= res!241171 (or (= (select (arr!12042 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12042 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17637 () Bool)

(declare-fun mapRes!17637 () Bool)

(assert (=> mapIsEmpty!17637 mapRes!17637))

(declare-fun b!414586 () Bool)

(declare-fun res!241166 () Bool)

(assert (=> b!414586 (=> (not res!241166) (not e!247732))))

(assert (=> b!414586 (= res!241166 (bvsle from!863 i!563))))

(declare-fun b!414588 () Bool)

(declare-fun e!247736 () Bool)

(declare-fun tp_is_empty!10677 () Bool)

(assert (=> b!414588 (= e!247736 tp_is_empty!10677)))

(declare-fun b!414589 () Bool)

(declare-fun e!247730 () Bool)

(assert (=> b!414589 (= e!247732 e!247730)))

(declare-fun res!241164 () Bool)

(assert (=> b!414589 (=> (not res!241164) (not e!247730))))

(assert (=> b!414589 (= res!241164 (= from!863 i!563))))

(declare-fun lt!190047 () ListLongMap!5857)

(assert (=> b!414589 (= lt!190047 (getCurrentListMapNoExtraKeys!1151 lt!190046 lt!190049 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!414589 (= lt!190049 (array!25194 (store (arr!12043 _values!549) i!563 (ValueCellFull!4995 v!412)) (size!12395 _values!549)))))

(declare-fun lt!190048 () ListLongMap!5857)

(assert (=> b!414589 (= lt!190048 (getCurrentListMapNoExtraKeys!1151 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414590 () Bool)

(declare-fun res!241170 () Bool)

(assert (=> b!414590 (=> (not res!241170) (not e!247738))))

(declare-fun arrayContainsKey!0 (array!25191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414590 (= res!241170 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!28748 () Bool)

(assert (=> bm!28748 (= call!28751 (getCurrentListMapNoExtraKeys!1151 (ite c!54926 lt!190046 _keys!709) (ite c!54926 lt!190049 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414591 () Bool)

(declare-fun e!247737 () Bool)

(declare-fun e!247731 () Bool)

(assert (=> b!414591 (= e!247737 (and e!247731 mapRes!17637))))

(declare-fun condMapEmpty!17637 () Bool)

(declare-fun mapDefault!17637 () ValueCell!4995)

(assert (=> b!414591 (= condMapEmpty!17637 (= (arr!12043 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4995)) mapDefault!17637)))))

(declare-fun b!414592 () Bool)

(assert (=> b!414592 (= e!247731 tp_is_empty!10677)))

(declare-fun mapNonEmpty!17637 () Bool)

(declare-fun tp!34103 () Bool)

(assert (=> mapNonEmpty!17637 (= mapRes!17637 (and tp!34103 e!247736))))

(declare-fun mapRest!17637 () (Array (_ BitVec 32) ValueCell!4995))

(declare-fun mapValue!17637 () ValueCell!4995)

(declare-fun mapKey!17637 () (_ BitVec 32))

(assert (=> mapNonEmpty!17637 (= (arr!12043 _values!549) (store mapRest!17637 mapKey!17637 mapValue!17637))))

(declare-fun b!414593 () Bool)

(declare-fun res!241173 () Bool)

(assert (=> b!414593 (=> (not res!241173) (not e!247738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25191 (_ BitVec 32)) Bool)

(assert (=> b!414593 (= res!241173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414594 () Bool)

(assert (=> b!414594 (= e!247738 e!247732)))

(declare-fun res!241169 () Bool)

(assert (=> b!414594 (=> (not res!241169) (not e!247732))))

(assert (=> b!414594 (= res!241169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190046 mask!1025))))

(assert (=> b!414594 (= lt!190046 (array!25192 (store (arr!12042 _keys!709) i!563 k0!794) (size!12394 _keys!709)))))

(declare-fun b!414595 () Bool)

(declare-fun res!241168 () Bool)

(assert (=> b!414595 (=> (not res!241168) (not e!247738))))

(assert (=> b!414595 (= res!241168 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6986))))

(declare-fun res!241167 () Bool)

(assert (=> start!39266 (=> (not res!241167) (not e!247738))))

(assert (=> start!39266 (= res!241167 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12394 _keys!709))))))

(assert (=> start!39266 e!247738))

(assert (=> start!39266 tp_is_empty!10677))

(assert (=> start!39266 tp!34104))

(assert (=> start!39266 true))

(declare-fun array_inv!8780 (array!25193) Bool)

(assert (=> start!39266 (and (array_inv!8780 _values!549) e!247737)))

(declare-fun array_inv!8781 (array!25191) Bool)

(assert (=> start!39266 (array_inv!8781 _keys!709)))

(declare-fun b!414587 () Bool)

(declare-fun e!247734 () Bool)

(assert (=> b!414587 (= e!247730 (not e!247734))))

(declare-fun res!241175 () Bool)

(assert (=> b!414587 (=> res!241175 e!247734)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414587 (= res!241175 (validKeyInArray!0 (select (arr!12042 _keys!709) from!863)))))

(assert (=> b!414587 e!247733))

(assert (=> b!414587 (= c!54926 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12223 0))(
  ( (Unit!12224) )
))
(declare-fun lt!190050 () Unit!12223)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!374 (array!25191 array!25193 (_ BitVec 32) (_ BitVec 32) V!15341 V!15341 (_ BitVec 32) (_ BitVec 64) V!15341 (_ BitVec 32) Int) Unit!12223)

(assert (=> b!414587 (= lt!190050 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!374 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414596 () Bool)

(declare-fun res!241176 () Bool)

(assert (=> b!414596 (=> (not res!241176) (not e!247738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414596 (= res!241176 (validMask!0 mask!1025))))

(declare-fun b!414597 () Bool)

(declare-fun res!241163 () Bool)

(assert (=> b!414597 (=> (not res!241163) (not e!247738))))

(assert (=> b!414597 (= res!241163 (validKeyInArray!0 k0!794))))

(declare-fun b!414598 () Bool)

(assert (=> b!414598 (= e!247734 true)))

(declare-fun get!5945 (ValueCell!4995 V!15341) V!15341)

(declare-fun dynLambda!650 (Int (_ BitVec 64)) V!15341)

(assert (=> b!414598 (= lt!190047 (+!1160 (getCurrentListMapNoExtraKeys!1151 lt!190046 lt!190049 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6931 (select (arr!12042 lt!190046) from!863) (get!5945 (select (arr!12043 lt!190049) from!863) (dynLambda!650 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!39266 res!241167) b!414596))

(assert (= (and b!414596 res!241176) b!414580))

(assert (= (and b!414580 res!241165) b!414593))

(assert (= (and b!414593 res!241173) b!414595))

(assert (= (and b!414595 res!241168) b!414581))

(assert (= (and b!414581 res!241172) b!414597))

(assert (= (and b!414597 res!241163) b!414585))

(assert (= (and b!414585 res!241171) b!414590))

(assert (= (and b!414590 res!241170) b!414594))

(assert (= (and b!414594 res!241169) b!414583))

(assert (= (and b!414583 res!241174) b!414586))

(assert (= (and b!414586 res!241166) b!414589))

(assert (= (and b!414589 res!241164) b!414587))

(assert (= (and b!414587 c!54926) b!414584))

(assert (= (and b!414587 (not c!54926)) b!414582))

(assert (= (or b!414584 b!414582) bm!28748))

(assert (= (or b!414584 b!414582) bm!28747))

(assert (= (and b!414587 (not res!241175)) b!414598))

(assert (= (and b!414591 condMapEmpty!17637) mapIsEmpty!17637))

(assert (= (and b!414591 (not condMapEmpty!17637)) mapNonEmpty!17637))

(get-info :version)

(assert (= (and mapNonEmpty!17637 ((_ is ValueCellFull!4995) mapValue!17637)) b!414588))

(assert (= (and b!414591 ((_ is ValueCellFull!4995) mapDefault!17637)) b!414592))

(assert (= start!39266 b!414591))

(declare-fun b_lambda!8859 () Bool)

(assert (=> (not b_lambda!8859) (not b!414598)))

(declare-fun t!12185 () Bool)

(declare-fun tb!3155 () Bool)

(assert (=> (and start!39266 (= defaultEntry!557 defaultEntry!557) t!12185) tb!3155))

(declare-fun result!5829 () Bool)

(assert (=> tb!3155 (= result!5829 tp_is_empty!10677)))

(assert (=> b!414598 t!12185))

(declare-fun b_and!16945 () Bool)

(assert (= b_and!16943 (and (=> t!12185 result!5829) b_and!16945)))

(declare-fun m!403815 () Bool)

(assert (=> b!414598 m!403815))

(declare-fun m!403817 () Bool)

(assert (=> b!414598 m!403817))

(assert (=> b!414598 m!403815))

(declare-fun m!403819 () Bool)

(assert (=> b!414598 m!403819))

(assert (=> b!414598 m!403817))

(declare-fun m!403821 () Bool)

(assert (=> b!414598 m!403821))

(declare-fun m!403823 () Bool)

(assert (=> b!414598 m!403823))

(assert (=> b!414598 m!403823))

(declare-fun m!403825 () Bool)

(assert (=> b!414598 m!403825))

(declare-fun m!403827 () Bool)

(assert (=> b!414595 m!403827))

(declare-fun m!403829 () Bool)

(assert (=> bm!28748 m!403829))

(declare-fun m!403831 () Bool)

(assert (=> b!414587 m!403831))

(assert (=> b!414587 m!403831))

(declare-fun m!403833 () Bool)

(assert (=> b!414587 m!403833))

(declare-fun m!403835 () Bool)

(assert (=> b!414587 m!403835))

(declare-fun m!403837 () Bool)

(assert (=> b!414584 m!403837))

(declare-fun m!403839 () Bool)

(assert (=> b!414590 m!403839))

(declare-fun m!403841 () Bool)

(assert (=> mapNonEmpty!17637 m!403841))

(declare-fun m!403843 () Bool)

(assert (=> b!414594 m!403843))

(declare-fun m!403845 () Bool)

(assert (=> b!414594 m!403845))

(declare-fun m!403847 () Bool)

(assert (=> b!414589 m!403847))

(declare-fun m!403849 () Bool)

(assert (=> b!414589 m!403849))

(declare-fun m!403851 () Bool)

(assert (=> b!414589 m!403851))

(declare-fun m!403853 () Bool)

(assert (=> bm!28747 m!403853))

(declare-fun m!403855 () Bool)

(assert (=> b!414593 m!403855))

(declare-fun m!403857 () Bool)

(assert (=> b!414583 m!403857))

(declare-fun m!403859 () Bool)

(assert (=> b!414585 m!403859))

(declare-fun m!403861 () Bool)

(assert (=> start!39266 m!403861))

(declare-fun m!403863 () Bool)

(assert (=> start!39266 m!403863))

(declare-fun m!403865 () Bool)

(assert (=> b!414597 m!403865))

(declare-fun m!403867 () Bool)

(assert (=> b!414596 m!403867))

(check-sat (not b!414583) (not b!414590) (not b!414596) (not b!414597) (not b!414594) (not bm!28748) (not b!414593) (not b_lambda!8859) (not start!39266) (not b_next!9525) (not b!414587) tp_is_empty!10677 (not b!414584) b_and!16945 (not bm!28747) (not b!414589) (not b!414595) (not mapNonEmpty!17637) (not b!414598))
(check-sat b_and!16945 (not b_next!9525))
