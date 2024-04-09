; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39450 () Bool)

(assert start!39450)

(declare-fun b_free!9709 () Bool)

(declare-fun b_next!9709 () Bool)

(assert (=> start!39450 (= b_free!9709 (not b_next!9709))))

(declare-fun tp!34656 () Bool)

(declare-fun b_and!17311 () Bool)

(assert (=> start!39450 (= tp!34656 b_and!17311)))

(declare-fun b!420008 () Bool)

(declare-fun e!250214 () Bool)

(declare-fun e!250218 () Bool)

(assert (=> b!420008 (= e!250214 e!250218)))

(declare-fun res!245030 () Bool)

(assert (=> b!420008 (=> (not res!245030) (not e!250218))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420008 (= res!245030 (= from!863 i!563))))

(declare-datatypes ((V!15587 0))(
  ( (V!15588 (val!5475 Int)) )
))
(declare-fun minValue!515 () V!15587)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25553 0))(
  ( (array!25554 (arr!12223 (Array (_ BitVec 32) (_ BitVec 64))) (size!12575 (_ BitVec 32))) )
))
(declare-fun lt!192739 () array!25553)

(declare-fun zeroValue!515 () V!15587)

(declare-datatypes ((ValueCell!5087 0))(
  ( (ValueCellFull!5087 (v!7718 V!15587)) (EmptyCell!5087) )
))
(declare-datatypes ((array!25555 0))(
  ( (array!25556 (arr!12224 (Array (_ BitVec 32) ValueCell!5087)) (size!12576 (_ BitVec 32))) )
))
(declare-fun lt!192742 () array!25555)

(declare-datatypes ((tuple2!7100 0))(
  ( (tuple2!7101 (_1!3560 (_ BitVec 64)) (_2!3560 V!15587)) )
))
(declare-datatypes ((List!7145 0))(
  ( (Nil!7142) (Cons!7141 (h!7997 tuple2!7100) (t!12527 List!7145)) )
))
(declare-datatypes ((ListLongMap!6027 0))(
  ( (ListLongMap!6028 (toList!3029 List!7145)) )
))
(declare-fun lt!192736 () ListLongMap!6027)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1230 (array!25553 array!25555 (_ BitVec 32) (_ BitVec 32) V!15587 V!15587 (_ BitVec 32) Int) ListLongMap!6027)

(assert (=> b!420008 (= lt!192736 (getCurrentListMapNoExtraKeys!1230 lt!192739 lt!192742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25555)

(declare-fun v!412 () V!15587)

(assert (=> b!420008 (= lt!192742 (array!25556 (store (arr!12224 _values!549) i!563 (ValueCellFull!5087 v!412)) (size!12576 _values!549)))))

(declare-fun _keys!709 () array!25553)

(declare-fun lt!192737 () ListLongMap!6027)

(assert (=> b!420008 (= lt!192737 (getCurrentListMapNoExtraKeys!1230 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420009 () Bool)

(declare-fun res!245040 () Bool)

(declare-fun e!250217 () Bool)

(assert (=> b!420009 (=> (not res!245040) (not e!250217))))

(assert (=> b!420009 (= res!245040 (or (= (select (arr!12223 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12223 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420010 () Bool)

(declare-fun res!245039 () Bool)

(assert (=> b!420010 (=> (not res!245039) (not e!250217))))

(assert (=> b!420010 (= res!245039 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12575 _keys!709))))))

(declare-fun b!420011 () Bool)

(declare-fun e!250220 () Bool)

(assert (=> b!420011 (= e!250218 (not e!250220))))

(declare-fun res!245033 () Bool)

(assert (=> b!420011 (=> res!245033 e!250220)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420011 (= res!245033 (validKeyInArray!0 (select (arr!12223 _keys!709) from!863)))))

(declare-fun e!250219 () Bool)

(assert (=> b!420011 e!250219))

(declare-fun c!55202 () Bool)

(assert (=> b!420011 (= c!55202 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12367 0))(
  ( (Unit!12368) )
))
(declare-fun lt!192738 () Unit!12367)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!439 (array!25553 array!25555 (_ BitVec 32) (_ BitVec 32) V!15587 V!15587 (_ BitVec 32) (_ BitVec 64) V!15587 (_ BitVec 32) Int) Unit!12367)

(assert (=> b!420011 (= lt!192738 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!439 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420012 () Bool)

(declare-fun res!245037 () Bool)

(assert (=> b!420012 (=> (not res!245037) (not e!250217))))

(assert (=> b!420012 (= res!245037 (validKeyInArray!0 k!794))))

(declare-fun b!420013 () Bool)

(declare-fun res!245038 () Bool)

(assert (=> b!420013 (=> (not res!245038) (not e!250217))))

(declare-fun arrayContainsKey!0 (array!25553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420013 (= res!245038 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17913 () Bool)

(declare-fun mapRes!17913 () Bool)

(declare-fun tp!34655 () Bool)

(declare-fun e!250215 () Bool)

(assert (=> mapNonEmpty!17913 (= mapRes!17913 (and tp!34655 e!250215))))

(declare-fun mapValue!17913 () ValueCell!5087)

(declare-fun mapRest!17913 () (Array (_ BitVec 32) ValueCell!5087))

(declare-fun mapKey!17913 () (_ BitVec 32))

(assert (=> mapNonEmpty!17913 (= (arr!12224 _values!549) (store mapRest!17913 mapKey!17913 mapValue!17913))))

(declare-fun b!420015 () Bool)

(declare-fun res!245032 () Bool)

(assert (=> b!420015 (=> (not res!245032) (not e!250217))))

(declare-datatypes ((List!7146 0))(
  ( (Nil!7143) (Cons!7142 (h!7998 (_ BitVec 64)) (t!12528 List!7146)) )
))
(declare-fun arrayNoDuplicates!0 (array!25553 (_ BitVec 32) List!7146) Bool)

(assert (=> b!420015 (= res!245032 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7143))))

(declare-fun b!420016 () Bool)

(declare-fun tp_is_empty!10861 () Bool)

(assert (=> b!420016 (= e!250215 tp_is_empty!10861)))

(declare-fun b!420017 () Bool)

(declare-fun e!250216 () Bool)

(assert (=> b!420017 (= e!250216 tp_is_empty!10861)))

(declare-fun b!420018 () Bool)

(declare-fun res!245034 () Bool)

(assert (=> b!420018 (=> (not res!245034) (not e!250214))))

(assert (=> b!420018 (= res!245034 (bvsle from!863 i!563))))

(declare-fun b!420019 () Bool)

(declare-fun res!245029 () Bool)

(assert (=> b!420019 (=> (not res!245029) (not e!250217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25553 (_ BitVec 32)) Bool)

(assert (=> b!420019 (= res!245029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420020 () Bool)

(declare-fun call!29303 () ListLongMap!6027)

(declare-fun call!29302 () ListLongMap!6027)

(assert (=> b!420020 (= e!250219 (= call!29303 call!29302))))

(declare-fun b!420021 () Bool)

(declare-fun +!1234 (ListLongMap!6027 tuple2!7100) ListLongMap!6027)

(assert (=> b!420021 (= e!250219 (= call!29302 (+!1234 call!29303 (tuple2!7101 k!794 v!412))))))

(declare-fun b!420022 () Bool)

(declare-fun res!245028 () Bool)

(assert (=> b!420022 (=> (not res!245028) (not e!250214))))

(assert (=> b!420022 (= res!245028 (arrayNoDuplicates!0 lt!192739 #b00000000000000000000000000000000 Nil!7143))))

(declare-fun b!420023 () Bool)

(assert (=> b!420023 (= e!250220 true)))

(declare-fun lt!192743 () tuple2!7100)

(declare-fun lt!192735 () ListLongMap!6027)

(declare-fun lt!192744 () V!15587)

(assert (=> b!420023 (= (+!1234 lt!192735 lt!192743) (+!1234 (+!1234 lt!192735 (tuple2!7101 k!794 lt!192744)) lt!192743))))

(declare-fun lt!192741 () V!15587)

(assert (=> b!420023 (= lt!192743 (tuple2!7101 k!794 lt!192741))))

(declare-fun lt!192740 () Unit!12367)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!53 (ListLongMap!6027 (_ BitVec 64) V!15587 V!15587) Unit!12367)

(assert (=> b!420023 (= lt!192740 (addSameAsAddTwiceSameKeyDiffValues!53 lt!192735 k!794 lt!192744 lt!192741))))

(declare-fun lt!192734 () V!15587)

(declare-fun get!6072 (ValueCell!5087 V!15587) V!15587)

(assert (=> b!420023 (= lt!192744 (get!6072 (select (arr!12224 _values!549) from!863) lt!192734))))

(assert (=> b!420023 (= lt!192736 (+!1234 lt!192735 (tuple2!7101 (select (arr!12223 lt!192739) from!863) lt!192741)))))

(assert (=> b!420023 (= lt!192741 (get!6072 (select (store (arr!12224 _values!549) i!563 (ValueCellFull!5087 v!412)) from!863) lt!192734))))

(declare-fun dynLambda!715 (Int (_ BitVec 64)) V!15587)

(assert (=> b!420023 (= lt!192734 (dynLambda!715 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420023 (= lt!192735 (getCurrentListMapNoExtraKeys!1230 lt!192739 lt!192742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29299 () Bool)

(assert (=> bm!29299 (= call!29302 (getCurrentListMapNoExtraKeys!1230 (ite c!55202 lt!192739 _keys!709) (ite c!55202 lt!192742 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29300 () Bool)

(assert (=> bm!29300 (= call!29303 (getCurrentListMapNoExtraKeys!1230 (ite c!55202 _keys!709 lt!192739) (ite c!55202 _values!549 lt!192742) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420024 () Bool)

(assert (=> b!420024 (= e!250217 e!250214)))

(declare-fun res!245035 () Bool)

(assert (=> b!420024 (=> (not res!245035) (not e!250214))))

(assert (=> b!420024 (= res!245035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192739 mask!1025))))

(assert (=> b!420024 (= lt!192739 (array!25554 (store (arr!12223 _keys!709) i!563 k!794) (size!12575 _keys!709)))))

(declare-fun b!420025 () Bool)

(declare-fun res!245036 () Bool)

(assert (=> b!420025 (=> (not res!245036) (not e!250217))))

(assert (=> b!420025 (= res!245036 (and (= (size!12576 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12575 _keys!709) (size!12576 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420014 () Bool)

(declare-fun res!245027 () Bool)

(assert (=> b!420014 (=> (not res!245027) (not e!250217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420014 (= res!245027 (validMask!0 mask!1025))))

(declare-fun res!245031 () Bool)

(assert (=> start!39450 (=> (not res!245031) (not e!250217))))

(assert (=> start!39450 (= res!245031 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12575 _keys!709))))))

(assert (=> start!39450 e!250217))

(assert (=> start!39450 tp_is_empty!10861))

(assert (=> start!39450 tp!34656))

(assert (=> start!39450 true))

(declare-fun e!250221 () Bool)

(declare-fun array_inv!8906 (array!25555) Bool)

(assert (=> start!39450 (and (array_inv!8906 _values!549) e!250221)))

(declare-fun array_inv!8907 (array!25553) Bool)

(assert (=> start!39450 (array_inv!8907 _keys!709)))

(declare-fun mapIsEmpty!17913 () Bool)

(assert (=> mapIsEmpty!17913 mapRes!17913))

(declare-fun b!420026 () Bool)

(assert (=> b!420026 (= e!250221 (and e!250216 mapRes!17913))))

(declare-fun condMapEmpty!17913 () Bool)

(declare-fun mapDefault!17913 () ValueCell!5087)

