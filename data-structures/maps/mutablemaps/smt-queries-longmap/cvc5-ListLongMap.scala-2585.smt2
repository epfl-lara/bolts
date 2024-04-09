; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39336 () Bool)

(assert start!39336)

(declare-fun b_free!9595 () Bool)

(declare-fun b_next!9595 () Bool)

(assert (=> start!39336 (= b_free!9595 (not b_next!9595))))

(declare-fun tp!34314 () Bool)

(declare-fun b_and!17083 () Bool)

(assert (=> start!39336 (= tp!34314 b_and!17083)))

(declare-fun b!416645 () Bool)

(declare-fun res!242644 () Bool)

(declare-fun e!248683 () Bool)

(assert (=> b!416645 (=> (not res!242644) (not e!248683))))

(declare-datatypes ((array!25329 0))(
  ( (array!25330 (arr!12111 (Array (_ BitVec 32) (_ BitVec 64))) (size!12463 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25329)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416645 (= res!242644 (or (= (select (arr!12111 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12111 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416646 () Bool)

(declare-fun e!248679 () Bool)

(assert (=> b!416646 (= e!248679 true)))

(declare-datatypes ((V!15435 0))(
  ( (V!15436 (val!5418 Int)) )
))
(declare-datatypes ((tuple2!6996 0))(
  ( (tuple2!6997 (_1!3508 (_ BitVec 64)) (_2!3508 V!15435)) )
))
(declare-datatypes ((List!7049 0))(
  ( (Nil!7046) (Cons!7045 (h!7901 tuple2!6996) (t!12317 List!7049)) )
))
(declare-datatypes ((ListLongMap!5923 0))(
  ( (ListLongMap!5924 (toList!2977 List!7049)) )
))
(declare-fun lt!190856 () ListLongMap!5923)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!190860 () V!15435)

(declare-fun lt!190861 () tuple2!6996)

(declare-fun +!1188 (ListLongMap!5923 tuple2!6996) ListLongMap!5923)

(assert (=> b!416646 (= (+!1188 lt!190856 lt!190861) (+!1188 (+!1188 lt!190856 (tuple2!6997 k!794 lt!190860)) lt!190861))))

(declare-fun lt!190859 () V!15435)

(assert (=> b!416646 (= lt!190861 (tuple2!6997 k!794 lt!190859))))

(declare-datatypes ((Unit!12277 0))(
  ( (Unit!12278) )
))
(declare-fun lt!190863 () Unit!12277)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!11 (ListLongMap!5923 (_ BitVec 64) V!15435 V!15435) Unit!12277)

(assert (=> b!416646 (= lt!190863 (addSameAsAddTwiceSameKeyDiffValues!11 lt!190856 k!794 lt!190860 lt!190859))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5030 0))(
  ( (ValueCellFull!5030 (v!7661 V!15435)) (EmptyCell!5030) )
))
(declare-datatypes ((array!25331 0))(
  ( (array!25332 (arr!12112 (Array (_ BitVec 32) ValueCell!5030)) (size!12464 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25331)

(declare-fun lt!190862 () V!15435)

(declare-fun get!5992 (ValueCell!5030 V!15435) V!15435)

(assert (=> b!416646 (= lt!190860 (get!5992 (select (arr!12112 _values!549) from!863) lt!190862))))

(declare-fun lt!190854 () ListLongMap!5923)

(declare-fun lt!190858 () array!25329)

(assert (=> b!416646 (= lt!190854 (+!1188 lt!190856 (tuple2!6997 (select (arr!12111 lt!190858) from!863) lt!190859)))))

(declare-fun v!412 () V!15435)

(assert (=> b!416646 (= lt!190859 (get!5992 (select (store (arr!12112 _values!549) i!563 (ValueCellFull!5030 v!412)) from!863) lt!190862))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!673 (Int (_ BitVec 64)) V!15435)

(assert (=> b!416646 (= lt!190862 (dynLambda!673 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15435)

(declare-fun lt!190853 () array!25331)

(declare-fun zeroValue!515 () V!15435)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1180 (array!25329 array!25331 (_ BitVec 32) (_ BitVec 32) V!15435 V!15435 (_ BitVec 32) Int) ListLongMap!5923)

(assert (=> b!416646 (= lt!190856 (getCurrentListMapNoExtraKeys!1180 lt!190858 lt!190853 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun c!55031 () Bool)

(declare-fun call!28960 () ListLongMap!5923)

(declare-fun bm!28957 () Bool)

(assert (=> bm!28957 (= call!28960 (getCurrentListMapNoExtraKeys!1180 (ite c!55031 _keys!709 lt!190858) (ite c!55031 _values!549 lt!190853) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416647 () Bool)

(declare-fun e!248680 () Bool)

(declare-fun e!248677 () Bool)

(assert (=> b!416647 (= e!248680 e!248677)))

(declare-fun res!242642 () Bool)

(assert (=> b!416647 (=> (not res!242642) (not e!248677))))

(assert (=> b!416647 (= res!242642 (= from!863 i!563))))

(assert (=> b!416647 (= lt!190854 (getCurrentListMapNoExtraKeys!1180 lt!190858 lt!190853 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416647 (= lt!190853 (array!25332 (store (arr!12112 _values!549) i!563 (ValueCellFull!5030 v!412)) (size!12464 _values!549)))))

(declare-fun lt!190855 () ListLongMap!5923)

(assert (=> b!416647 (= lt!190855 (getCurrentListMapNoExtraKeys!1180 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416648 () Bool)

(declare-fun e!248682 () Bool)

(declare-fun tp_is_empty!10747 () Bool)

(assert (=> b!416648 (= e!248682 tp_is_empty!10747)))

(declare-fun mapNonEmpty!17742 () Bool)

(declare-fun mapRes!17742 () Bool)

(declare-fun tp!34313 () Bool)

(assert (=> mapNonEmpty!17742 (= mapRes!17742 (and tp!34313 e!248682))))

(declare-fun mapKey!17742 () (_ BitVec 32))

(declare-fun mapValue!17742 () ValueCell!5030)

(declare-fun mapRest!17742 () (Array (_ BitVec 32) ValueCell!5030))

(assert (=> mapNonEmpty!17742 (= (arr!12112 _values!549) (store mapRest!17742 mapKey!17742 mapValue!17742))))

(declare-fun b!416649 () Bool)

(declare-fun res!242635 () Bool)

(assert (=> b!416649 (=> (not res!242635) (not e!248683))))

(declare-fun arrayContainsKey!0 (array!25329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416649 (= res!242635 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!416650 () Bool)

(declare-fun e!248676 () Bool)

(assert (=> b!416650 (= e!248676 tp_is_empty!10747)))

(declare-fun bm!28958 () Bool)

(declare-fun call!28961 () ListLongMap!5923)

(assert (=> bm!28958 (= call!28961 (getCurrentListMapNoExtraKeys!1180 (ite c!55031 lt!190858 _keys!709) (ite c!55031 lt!190853 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416652 () Bool)

(assert (=> b!416652 (= e!248683 e!248680)))

(declare-fun res!242646 () Bool)

(assert (=> b!416652 (=> (not res!242646) (not e!248680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25329 (_ BitVec 32)) Bool)

(assert (=> b!416652 (= res!242646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190858 mask!1025))))

(assert (=> b!416652 (= lt!190858 (array!25330 (store (arr!12111 _keys!709) i!563 k!794) (size!12463 _keys!709)))))

(declare-fun b!416653 () Bool)

(declare-fun res!242645 () Bool)

(assert (=> b!416653 (=> (not res!242645) (not e!248683))))

(assert (=> b!416653 (= res!242645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!416654 () Bool)

(declare-fun e!248678 () Bool)

(assert (=> b!416654 (= e!248678 (= call!28960 call!28961))))

(declare-fun b!416655 () Bool)

(assert (=> b!416655 (= e!248678 (= call!28961 (+!1188 call!28960 (tuple2!6997 k!794 v!412))))))

(declare-fun b!416656 () Bool)

(declare-fun res!242634 () Bool)

(assert (=> b!416656 (=> (not res!242634) (not e!248680))))

(declare-datatypes ((List!7050 0))(
  ( (Nil!7047) (Cons!7046 (h!7902 (_ BitVec 64)) (t!12318 List!7050)) )
))
(declare-fun arrayNoDuplicates!0 (array!25329 (_ BitVec 32) List!7050) Bool)

(assert (=> b!416656 (= res!242634 (arrayNoDuplicates!0 lt!190858 #b00000000000000000000000000000000 Nil!7047))))

(declare-fun b!416657 () Bool)

(declare-fun res!242637 () Bool)

(assert (=> b!416657 (=> (not res!242637) (not e!248683))))

(assert (=> b!416657 (= res!242637 (and (= (size!12464 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12463 _keys!709) (size!12464 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416658 () Bool)

(assert (=> b!416658 (= e!248677 (not e!248679))))

(declare-fun res!242633 () Bool)

(assert (=> b!416658 (=> res!242633 e!248679)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416658 (= res!242633 (validKeyInArray!0 (select (arr!12111 _keys!709) from!863)))))

(assert (=> b!416658 e!248678))

(assert (=> b!416658 (= c!55031 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190857 () Unit!12277)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!400 (array!25329 array!25331 (_ BitVec 32) (_ BitVec 32) V!15435 V!15435 (_ BitVec 32) (_ BitVec 64) V!15435 (_ BitVec 32) Int) Unit!12277)

(assert (=> b!416658 (= lt!190857 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!400 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416659 () Bool)

(declare-fun e!248681 () Bool)

(assert (=> b!416659 (= e!248681 (and e!248676 mapRes!17742))))

(declare-fun condMapEmpty!17742 () Bool)

(declare-fun mapDefault!17742 () ValueCell!5030)

