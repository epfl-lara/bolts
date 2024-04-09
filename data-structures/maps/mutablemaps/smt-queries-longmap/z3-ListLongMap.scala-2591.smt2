; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39374 () Bool)

(assert start!39374)

(declare-fun b_free!9633 () Bool)

(declare-fun b_next!9633 () Bool)

(assert (=> start!39374 (= b_free!9633 (not b_next!9633))))

(declare-fun tp!34427 () Bool)

(declare-fun b_and!17159 () Bool)

(assert (=> start!39374 (= tp!34427 b_and!17159)))

(declare-fun b!417766 () Bool)

(declare-fun res!243435 () Bool)

(declare-fun e!249192 () Bool)

(assert (=> b!417766 (=> (not res!243435) (not e!249192))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417766 (= res!243435 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17799 () Bool)

(declare-fun mapRes!17799 () Bool)

(assert (=> mapIsEmpty!17799 mapRes!17799))

(declare-fun b!417767 () Bool)

(declare-fun res!243433 () Bool)

(assert (=> b!417767 (=> (not res!243433) (not e!249192))))

(declare-datatypes ((array!25405 0))(
  ( (array!25406 (arr!12149 (Array (_ BitVec 32) (_ BitVec 64))) (size!12501 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25405)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417767 (= res!243433 (or (= (select (arr!12149 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12149 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417768 () Bool)

(declare-fun e!249193 () Bool)

(assert (=> b!417768 (= e!249192 e!249193)))

(declare-fun res!243432 () Bool)

(assert (=> b!417768 (=> (not res!243432) (not e!249193))))

(declare-fun lt!191480 () array!25405)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25405 (_ BitVec 32)) Bool)

(assert (=> b!417768 (= res!243432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191480 mask!1025))))

(assert (=> b!417768 (= lt!191480 (array!25406 (store (arr!12149 _keys!709) i!563 k0!794) (size!12501 _keys!709)))))

(declare-fun b!417769 () Bool)

(declare-fun e!249190 () Bool)

(assert (=> b!417769 (= e!249190 true)))

(declare-datatypes ((V!15485 0))(
  ( (V!15486 (val!5437 Int)) )
))
(declare-datatypes ((tuple2!7032 0))(
  ( (tuple2!7033 (_1!3526 (_ BitVec 64)) (_2!3526 V!15485)) )
))
(declare-datatypes ((List!7084 0))(
  ( (Nil!7081) (Cons!7080 (h!7936 tuple2!7032) (t!12390 List!7084)) )
))
(declare-datatypes ((ListLongMap!5959 0))(
  ( (ListLongMap!5960 (toList!2995 List!7084)) )
))
(declare-fun lt!191486 () ListLongMap!5959)

(declare-fun lt!191483 () V!15485)

(declare-fun lt!191490 () tuple2!7032)

(declare-fun +!1204 (ListLongMap!5959 tuple2!7032) ListLongMap!5959)

(assert (=> b!417769 (= (+!1204 lt!191486 lt!191490) (+!1204 (+!1204 lt!191486 (tuple2!7033 k0!794 lt!191483)) lt!191490))))

(declare-fun lt!191487 () V!15485)

(assert (=> b!417769 (= lt!191490 (tuple2!7033 k0!794 lt!191487))))

(declare-datatypes ((Unit!12309 0))(
  ( (Unit!12310) )
))
(declare-fun lt!191481 () Unit!12309)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!27 (ListLongMap!5959 (_ BitVec 64) V!15485 V!15485) Unit!12309)

(assert (=> b!417769 (= lt!191481 (addSameAsAddTwiceSameKeyDiffValues!27 lt!191486 k0!794 lt!191483 lt!191487))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5049 0))(
  ( (ValueCellFull!5049 (v!7680 V!15485)) (EmptyCell!5049) )
))
(declare-datatypes ((array!25407 0))(
  ( (array!25408 (arr!12150 (Array (_ BitVec 32) ValueCell!5049)) (size!12502 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25407)

(declare-fun lt!191482 () V!15485)

(declare-fun get!6020 (ValueCell!5049 V!15485) V!15485)

(assert (=> b!417769 (= lt!191483 (get!6020 (select (arr!12150 _values!549) from!863) lt!191482))))

(declare-fun lt!191489 () ListLongMap!5959)

(assert (=> b!417769 (= lt!191489 (+!1204 lt!191486 (tuple2!7033 (select (arr!12149 lt!191480) from!863) lt!191487)))))

(declare-fun v!412 () V!15485)

(assert (=> b!417769 (= lt!191487 (get!6020 (select (store (arr!12150 _values!549) i!563 (ValueCellFull!5049 v!412)) from!863) lt!191482))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!689 (Int (_ BitVec 64)) V!15485)

(assert (=> b!417769 (= lt!191482 (dynLambda!689 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15485)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!191488 () array!25407)

(declare-fun zeroValue!515 () V!15485)

(declare-fun getCurrentListMapNoExtraKeys!1198 (array!25405 array!25407 (_ BitVec 32) (_ BitVec 32) V!15485 V!15485 (_ BitVec 32) Int) ListLongMap!5959)

(assert (=> b!417769 (= lt!191486 (getCurrentListMapNoExtraKeys!1198 lt!191480 lt!191488 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417770 () Bool)

(declare-fun res!243441 () Bool)

(assert (=> b!417770 (=> (not res!243441) (not e!249192))))

(assert (=> b!417770 (= res!243441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417771 () Bool)

(declare-fun res!243439 () Bool)

(assert (=> b!417771 (=> (not res!243439) (not e!249192))))

(assert (=> b!417771 (= res!243439 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12501 _keys!709))))))

(declare-fun b!417772 () Bool)

(declare-fun e!249189 () Bool)

(assert (=> b!417772 (= e!249189 (not e!249190))))

(declare-fun res!243437 () Bool)

(assert (=> b!417772 (=> res!243437 e!249190)))

(assert (=> b!417772 (= res!243437 (validKeyInArray!0 (select (arr!12149 _keys!709) from!863)))))

(declare-fun e!249196 () Bool)

(assert (=> b!417772 e!249196))

(declare-fun c!55088 () Bool)

(assert (=> b!417772 (= c!55088 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191484 () Unit!12309)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!413 (array!25405 array!25407 (_ BitVec 32) (_ BitVec 32) V!15485 V!15485 (_ BitVec 32) (_ BitVec 64) V!15485 (_ BitVec 32) Int) Unit!12309)

(assert (=> b!417772 (= lt!191484 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!413 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417773 () Bool)

(declare-fun e!249195 () Bool)

(declare-fun tp_is_empty!10785 () Bool)

(assert (=> b!417773 (= e!249195 tp_is_empty!10785)))

(declare-fun b!417774 () Bool)

(declare-fun res!243440 () Bool)

(assert (=> b!417774 (=> (not res!243440) (not e!249193))))

(declare-datatypes ((List!7085 0))(
  ( (Nil!7082) (Cons!7081 (h!7937 (_ BitVec 64)) (t!12391 List!7085)) )
))
(declare-fun arrayNoDuplicates!0 (array!25405 (_ BitVec 32) List!7085) Bool)

(assert (=> b!417774 (= res!243440 (arrayNoDuplicates!0 lt!191480 #b00000000000000000000000000000000 Nil!7082))))

(declare-fun b!417775 () Bool)

(declare-fun res!243443 () Bool)

(assert (=> b!417775 (=> (not res!243443) (not e!249193))))

(assert (=> b!417775 (= res!243443 (bvsle from!863 i!563))))

(declare-fun b!417776 () Bool)

(declare-fun e!249194 () Bool)

(declare-fun e!249188 () Bool)

(assert (=> b!417776 (= e!249194 (and e!249188 mapRes!17799))))

(declare-fun condMapEmpty!17799 () Bool)

(declare-fun mapDefault!17799 () ValueCell!5049)

(assert (=> b!417776 (= condMapEmpty!17799 (= (arr!12150 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5049)) mapDefault!17799)))))

(declare-fun mapNonEmpty!17799 () Bool)

(declare-fun tp!34428 () Bool)

(assert (=> mapNonEmpty!17799 (= mapRes!17799 (and tp!34428 e!249195))))

(declare-fun mapValue!17799 () ValueCell!5049)

(declare-fun mapKey!17799 () (_ BitVec 32))

(declare-fun mapRest!17799 () (Array (_ BitVec 32) ValueCell!5049))

(assert (=> mapNonEmpty!17799 (= (arr!12150 _values!549) (store mapRest!17799 mapKey!17799 mapValue!17799))))

(declare-fun b!417777 () Bool)

(assert (=> b!417777 (= e!249188 tp_is_empty!10785)))

(declare-fun b!417778 () Bool)

(declare-fun res!243438 () Bool)

(assert (=> b!417778 (=> (not res!243438) (not e!249192))))

(assert (=> b!417778 (= res!243438 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7082))))

(declare-fun b!417779 () Bool)

(declare-fun res!243431 () Bool)

(assert (=> b!417779 (=> (not res!243431) (not e!249192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417779 (= res!243431 (validMask!0 mask!1025))))

(declare-fun bm!29071 () Bool)

(declare-fun call!29075 () ListLongMap!5959)

(assert (=> bm!29071 (= call!29075 (getCurrentListMapNoExtraKeys!1198 (ite c!55088 _keys!709 lt!191480) (ite c!55088 _values!549 lt!191488) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417780 () Bool)

(declare-fun res!243444 () Bool)

(assert (=> b!417780 (=> (not res!243444) (not e!249192))))

(declare-fun arrayContainsKey!0 (array!25405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417780 (= res!243444 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun call!29074 () ListLongMap!5959)

(declare-fun bm!29072 () Bool)

(assert (=> bm!29072 (= call!29074 (getCurrentListMapNoExtraKeys!1198 (ite c!55088 lt!191480 _keys!709) (ite c!55088 lt!191488 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!243436 () Bool)

(assert (=> start!39374 (=> (not res!243436) (not e!249192))))

(assert (=> start!39374 (= res!243436 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12501 _keys!709))))))

(assert (=> start!39374 e!249192))

(assert (=> start!39374 tp_is_empty!10785))

(assert (=> start!39374 tp!34427))

(assert (=> start!39374 true))

(declare-fun array_inv!8858 (array!25407) Bool)

(assert (=> start!39374 (and (array_inv!8858 _values!549) e!249194)))

(declare-fun array_inv!8859 (array!25405) Bool)

(assert (=> start!39374 (array_inv!8859 _keys!709)))

(declare-fun b!417781 () Bool)

(assert (=> b!417781 (= e!249196 (= call!29075 call!29074))))

(declare-fun b!417782 () Bool)

(assert (=> b!417782 (= e!249193 e!249189)))

(declare-fun res!243434 () Bool)

(assert (=> b!417782 (=> (not res!243434) (not e!249189))))

(assert (=> b!417782 (= res!243434 (= from!863 i!563))))

(assert (=> b!417782 (= lt!191489 (getCurrentListMapNoExtraKeys!1198 lt!191480 lt!191488 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417782 (= lt!191488 (array!25408 (store (arr!12150 _values!549) i!563 (ValueCellFull!5049 v!412)) (size!12502 _values!549)))))

(declare-fun lt!191485 () ListLongMap!5959)

(assert (=> b!417782 (= lt!191485 (getCurrentListMapNoExtraKeys!1198 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417783 () Bool)

(declare-fun res!243442 () Bool)

(assert (=> b!417783 (=> (not res!243442) (not e!249192))))

(assert (=> b!417783 (= res!243442 (and (= (size!12502 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12501 _keys!709) (size!12502 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417784 () Bool)

(assert (=> b!417784 (= e!249196 (= call!29074 (+!1204 call!29075 (tuple2!7033 k0!794 v!412))))))

(assert (= (and start!39374 res!243436) b!417779))

(assert (= (and b!417779 res!243431) b!417783))

(assert (= (and b!417783 res!243442) b!417770))

(assert (= (and b!417770 res!243441) b!417778))

(assert (= (and b!417778 res!243438) b!417771))

(assert (= (and b!417771 res!243439) b!417766))

(assert (= (and b!417766 res!243435) b!417767))

(assert (= (and b!417767 res!243433) b!417780))

(assert (= (and b!417780 res!243444) b!417768))

(assert (= (and b!417768 res!243432) b!417774))

(assert (= (and b!417774 res!243440) b!417775))

(assert (= (and b!417775 res!243443) b!417782))

(assert (= (and b!417782 res!243434) b!417772))

(assert (= (and b!417772 c!55088) b!417784))

(assert (= (and b!417772 (not c!55088)) b!417781))

(assert (= (or b!417784 b!417781) bm!29072))

(assert (= (or b!417784 b!417781) bm!29071))

(assert (= (and b!417772 (not res!243437)) b!417769))

(assert (= (and b!417776 condMapEmpty!17799) mapIsEmpty!17799))

(assert (= (and b!417776 (not condMapEmpty!17799)) mapNonEmpty!17799))

(get-info :version)

(assert (= (and mapNonEmpty!17799 ((_ is ValueCellFull!5049) mapValue!17799)) b!417773))

(assert (= (and b!417776 ((_ is ValueCellFull!5049) mapDefault!17799)) b!417777))

(assert (= start!39374 b!417776))

(declare-fun b_lambda!8967 () Bool)

(assert (=> (not b_lambda!8967) (not b!417769)))

(declare-fun t!12389 () Bool)

(declare-fun tb!3263 () Bool)

(assert (=> (and start!39374 (= defaultEntry!557 defaultEntry!557) t!12389) tb!3263))

(declare-fun result!6045 () Bool)

(assert (=> tb!3263 (= result!6045 tp_is_empty!10785)))

(assert (=> b!417769 t!12389))

(declare-fun b_and!17161 () Bool)

(assert (= b_and!17159 (and (=> t!12389 result!6045) b_and!17161)))

(declare-fun m!407137 () Bool)

(assert (=> b!417782 m!407137))

(declare-fun m!407139 () Bool)

(assert (=> b!417782 m!407139))

(declare-fun m!407141 () Bool)

(assert (=> b!417782 m!407141))

(declare-fun m!407143 () Bool)

(assert (=> b!417780 m!407143))

(declare-fun m!407145 () Bool)

(assert (=> b!417774 m!407145))

(declare-fun m!407147 () Bool)

(assert (=> b!417766 m!407147))

(declare-fun m!407149 () Bool)

(assert (=> b!417784 m!407149))

(declare-fun m!407151 () Bool)

(assert (=> mapNonEmpty!17799 m!407151))

(declare-fun m!407153 () Bool)

(assert (=> bm!29071 m!407153))

(declare-fun m!407155 () Bool)

(assert (=> bm!29072 m!407155))

(declare-fun m!407157 () Bool)

(assert (=> b!417768 m!407157))

(declare-fun m!407159 () Bool)

(assert (=> b!417768 m!407159))

(declare-fun m!407161 () Bool)

(assert (=> b!417769 m!407161))

(declare-fun m!407163 () Bool)

(assert (=> b!417769 m!407163))

(assert (=> b!417769 m!407139))

(declare-fun m!407165 () Bool)

(assert (=> b!417769 m!407165))

(declare-fun m!407167 () Bool)

(assert (=> b!417769 m!407167))

(declare-fun m!407169 () Bool)

(assert (=> b!417769 m!407169))

(declare-fun m!407171 () Bool)

(assert (=> b!417769 m!407171))

(assert (=> b!417769 m!407161))

(declare-fun m!407173 () Bool)

(assert (=> b!417769 m!407173))

(declare-fun m!407175 () Bool)

(assert (=> b!417769 m!407175))

(declare-fun m!407177 () Bool)

(assert (=> b!417769 m!407177))

(declare-fun m!407179 () Bool)

(assert (=> b!417769 m!407179))

(declare-fun m!407181 () Bool)

(assert (=> b!417769 m!407181))

(assert (=> b!417769 m!407169))

(assert (=> b!417769 m!407167))

(declare-fun m!407183 () Bool)

(assert (=> b!417769 m!407183))

(declare-fun m!407185 () Bool)

(assert (=> start!39374 m!407185))

(declare-fun m!407187 () Bool)

(assert (=> start!39374 m!407187))

(declare-fun m!407189 () Bool)

(assert (=> b!417772 m!407189))

(assert (=> b!417772 m!407189))

(declare-fun m!407191 () Bool)

(assert (=> b!417772 m!407191))

(declare-fun m!407193 () Bool)

(assert (=> b!417772 m!407193))

(declare-fun m!407195 () Bool)

(assert (=> b!417779 m!407195))

(declare-fun m!407197 () Bool)

(assert (=> b!417770 m!407197))

(declare-fun m!407199 () Bool)

(assert (=> b!417778 m!407199))

(declare-fun m!407201 () Bool)

(assert (=> b!417767 m!407201))

(check-sat (not start!39374) (not bm!29072) (not b_next!9633) b_and!17161 (not b!417774) (not bm!29071) tp_is_empty!10785 (not b!417772) (not b!417770) (not b!417768) (not b_lambda!8967) (not b!417766) (not b!417780) (not b!417782) (not b!417779) (not b!417769) (not b!417778) (not b!417784) (not mapNonEmpty!17799))
(check-sat b_and!17161 (not b_next!9633))
