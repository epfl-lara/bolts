; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39436 () Bool)

(assert start!39436)

(declare-fun b_free!9695 () Bool)

(declare-fun b_next!9695 () Bool)

(assert (=> start!39436 (= b_free!9695 (not b_next!9695))))

(declare-fun tp!34613 () Bool)

(declare-fun b_and!17283 () Bool)

(assert (=> start!39436 (= tp!34613 b_and!17283)))

(declare-fun b!419595 () Bool)

(declare-fun res!244738 () Bool)

(declare-fun e!250025 () Bool)

(assert (=> b!419595 (=> (not res!244738) (not e!250025))))

(declare-datatypes ((array!25525 0))(
  ( (array!25526 (arr!12209 (Array (_ BitVec 32) (_ BitVec 64))) (size!12561 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25525)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25525 (_ BitVec 32)) Bool)

(assert (=> b!419595 (= res!244738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!244735 () Bool)

(assert (=> start!39436 (=> (not res!244735) (not e!250025))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39436 (= res!244735 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12561 _keys!709))))))

(assert (=> start!39436 e!250025))

(declare-fun tp_is_empty!10847 () Bool)

(assert (=> start!39436 tp_is_empty!10847))

(assert (=> start!39436 tp!34613))

(assert (=> start!39436 true))

(declare-datatypes ((V!15567 0))(
  ( (V!15568 (val!5468 Int)) )
))
(declare-datatypes ((ValueCell!5080 0))(
  ( (ValueCellFull!5080 (v!7711 V!15567)) (EmptyCell!5080) )
))
(declare-datatypes ((array!25527 0))(
  ( (array!25528 (arr!12210 (Array (_ BitVec 32) ValueCell!5080)) (size!12562 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25527)

(declare-fun e!250031 () Bool)

(declare-fun array_inv!8896 (array!25527) Bool)

(assert (=> start!39436 (and (array_inv!8896 _values!549) e!250031)))

(declare-fun array_inv!8897 (array!25525) Bool)

(assert (=> start!39436 (array_inv!8897 _keys!709)))

(declare-fun b!419596 () Bool)

(declare-fun e!250027 () Bool)

(declare-fun e!250032 () Bool)

(assert (=> b!419596 (= e!250027 e!250032)))

(declare-fun res!244737 () Bool)

(assert (=> b!419596 (=> (not res!244737) (not e!250032))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419596 (= res!244737 (= from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7090 0))(
  ( (tuple2!7091 (_1!3555 (_ BitVec 64)) (_2!3555 V!15567)) )
))
(declare-datatypes ((List!7134 0))(
  ( (Nil!7131) (Cons!7130 (h!7986 tuple2!7090) (t!12502 List!7134)) )
))
(declare-datatypes ((ListLongMap!6017 0))(
  ( (ListLongMap!6018 (toList!3024 List!7134)) )
))
(declare-fun lt!192505 () ListLongMap!6017)

(declare-fun zeroValue!515 () V!15567)

(declare-fun lt!192504 () array!25527)

(declare-fun lt!192510 () array!25525)

(declare-fun minValue!515 () V!15567)

(declare-fun getCurrentListMapNoExtraKeys!1225 (array!25525 array!25527 (_ BitVec 32) (_ BitVec 32) V!15567 V!15567 (_ BitVec 32) Int) ListLongMap!6017)

(assert (=> b!419596 (= lt!192505 (getCurrentListMapNoExtraKeys!1225 lt!192510 lt!192504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15567)

(assert (=> b!419596 (= lt!192504 (array!25528 (store (arr!12210 _values!549) i!563 (ValueCellFull!5080 v!412)) (size!12562 _values!549)))))

(declare-fun lt!192513 () ListLongMap!6017)

(assert (=> b!419596 (= lt!192513 (getCurrentListMapNoExtraKeys!1225 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!419597 () Bool)

(declare-fun e!250030 () Bool)

(assert (=> b!419597 (= e!250030 tp_is_empty!10847)))

(declare-fun b!419598 () Bool)

(declare-fun e!250028 () Bool)

(assert (=> b!419598 (= e!250028 tp_is_empty!10847)))

(declare-fun b!419599 () Bool)

(declare-fun res!244739 () Bool)

(assert (=> b!419599 (=> (not res!244739) (not e!250025))))

(declare-datatypes ((List!7135 0))(
  ( (Nil!7132) (Cons!7131 (h!7987 (_ BitVec 64)) (t!12503 List!7135)) )
))
(declare-fun arrayNoDuplicates!0 (array!25525 (_ BitVec 32) List!7135) Bool)

(assert (=> b!419599 (= res!244739 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7132))))

(declare-fun b!419600 () Bool)

(declare-fun call!29260 () ListLongMap!6017)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!250033 () Bool)

(declare-fun call!29261 () ListLongMap!6017)

(declare-fun +!1229 (ListLongMap!6017 tuple2!7090) ListLongMap!6017)

(assert (=> b!419600 (= e!250033 (= call!29260 (+!1229 call!29261 (tuple2!7091 k!794 v!412))))))

(declare-fun b!419601 () Bool)

(assert (=> b!419601 (= e!250033 (= call!29261 call!29260))))

(declare-fun b!419602 () Bool)

(declare-fun res!244733 () Bool)

(assert (=> b!419602 (=> (not res!244733) (not e!250025))))

(assert (=> b!419602 (= res!244733 (or (= (select (arr!12209 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12209 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419603 () Bool)

(declare-fun e!250026 () Bool)

(assert (=> b!419603 (= e!250026 true)))

(declare-fun lt!192508 () V!15567)

(declare-fun lt!192511 () ListLongMap!6017)

(declare-fun lt!192509 () tuple2!7090)

(assert (=> b!419603 (= (+!1229 lt!192511 lt!192509) (+!1229 (+!1229 lt!192511 (tuple2!7091 k!794 lt!192508)) lt!192509))))

(declare-fun lt!192506 () V!15567)

(assert (=> b!419603 (= lt!192509 (tuple2!7091 k!794 lt!192506))))

(declare-datatypes ((Unit!12357 0))(
  ( (Unit!12358) )
))
(declare-fun lt!192512 () Unit!12357)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!48 (ListLongMap!6017 (_ BitVec 64) V!15567 V!15567) Unit!12357)

(assert (=> b!419603 (= lt!192512 (addSameAsAddTwiceSameKeyDiffValues!48 lt!192511 k!794 lt!192508 lt!192506))))

(declare-fun lt!192503 () V!15567)

(declare-fun get!6061 (ValueCell!5080 V!15567) V!15567)

(assert (=> b!419603 (= lt!192508 (get!6061 (select (arr!12210 _values!549) from!863) lt!192503))))

(assert (=> b!419603 (= lt!192505 (+!1229 lt!192511 (tuple2!7091 (select (arr!12209 lt!192510) from!863) lt!192506)))))

(assert (=> b!419603 (= lt!192506 (get!6061 (select (store (arr!12210 _values!549) i!563 (ValueCellFull!5080 v!412)) from!863) lt!192503))))

(declare-fun dynLambda!710 (Int (_ BitVec 64)) V!15567)

(assert (=> b!419603 (= lt!192503 (dynLambda!710 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419603 (= lt!192511 (getCurrentListMapNoExtraKeys!1225 lt!192510 lt!192504 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419604 () Bool)

(declare-fun res!244745 () Bool)

(assert (=> b!419604 (=> (not res!244745) (not e!250027))))

(assert (=> b!419604 (= res!244745 (arrayNoDuplicates!0 lt!192510 #b00000000000000000000000000000000 Nil!7132))))

(declare-fun mapIsEmpty!17892 () Bool)

(declare-fun mapRes!17892 () Bool)

(assert (=> mapIsEmpty!17892 mapRes!17892))

(declare-fun b!419605 () Bool)

(assert (=> b!419605 (= e!250032 (not e!250026))))

(declare-fun res!244736 () Bool)

(assert (=> b!419605 (=> res!244736 e!250026)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419605 (= res!244736 (validKeyInArray!0 (select (arr!12209 _keys!709) from!863)))))

(assert (=> b!419605 e!250033))

(declare-fun c!55181 () Bool)

(assert (=> b!419605 (= c!55181 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192507 () Unit!12357)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!434 (array!25525 array!25527 (_ BitVec 32) (_ BitVec 32) V!15567 V!15567 (_ BitVec 32) (_ BitVec 64) V!15567 (_ BitVec 32) Int) Unit!12357)

(assert (=> b!419605 (= lt!192507 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!434 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419606 () Bool)

(declare-fun res!244742 () Bool)

(assert (=> b!419606 (=> (not res!244742) (not e!250025))))

(assert (=> b!419606 (= res!244742 (and (= (size!12562 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12561 _keys!709) (size!12562 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!29257 () Bool)

(assert (=> bm!29257 (= call!29260 (getCurrentListMapNoExtraKeys!1225 (ite c!55181 lt!192510 _keys!709) (ite c!55181 lt!192504 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419607 () Bool)

(declare-fun res!244734 () Bool)

(assert (=> b!419607 (=> (not res!244734) (not e!250025))))

(assert (=> b!419607 (= res!244734 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12561 _keys!709))))))

(declare-fun b!419608 () Bool)

(declare-fun res!244741 () Bool)

(assert (=> b!419608 (=> (not res!244741) (not e!250025))))

(assert (=> b!419608 (= res!244741 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!17892 () Bool)

(declare-fun tp!34614 () Bool)

(assert (=> mapNonEmpty!17892 (= mapRes!17892 (and tp!34614 e!250028))))

(declare-fun mapKey!17892 () (_ BitVec 32))

(declare-fun mapRest!17892 () (Array (_ BitVec 32) ValueCell!5080))

(declare-fun mapValue!17892 () ValueCell!5080)

(assert (=> mapNonEmpty!17892 (= (arr!12210 _values!549) (store mapRest!17892 mapKey!17892 mapValue!17892))))

(declare-fun b!419609 () Bool)

(declare-fun res!244744 () Bool)

(assert (=> b!419609 (=> (not res!244744) (not e!250027))))

(assert (=> b!419609 (= res!244744 (bvsle from!863 i!563))))

(declare-fun b!419610 () Bool)

(assert (=> b!419610 (= e!250031 (and e!250030 mapRes!17892))))

(declare-fun condMapEmpty!17892 () Bool)

(declare-fun mapDefault!17892 () ValueCell!5080)

